#!/usr/bin/env python3
"""
SBARDEF-Optimierer fuer Woof! (basiert auf der Parser-Logik von st_sbardef.c)

Entfernt NUR Werte, die Woof beim Einlesen ohnehin als Default behandelt:
  - tranmap/translation/fillflat = null          -> Feld fehlt (JS_GetStringValue -> NULL)
  - conditions/children = []                     -> Feld fehlt (yyjson-Iterator ist NULL-sicher)
  - translucency = false                         -> Feld fehlt
  - condition.param / param2 = 0                 -> JS_GetIntegerValue Default 0
  - list.spacing = 0, list.horizontal = false    -> Default
  - component.vertical = false                   -> Default
  - crop mit lauter 0/false                      -> no_crop = {0}
Bewusst NICHT angefasst: number/percent.param/type/maxlength (Woof verlangt sie),
x/y/alignment (Pflicht), height/fullscreenrender (Pflicht), Fonts, Reihenfolge.

Benutzung:
  optimize_sbardef.py <eingabe.lmp> <ausgabe.lmp> [--minify]
  optimize_sbardef.py --check <original.lmp> <optimiert.lmp>   # nur verifizieren
"""
import json, sys

ELEMENT_TYPES = ("canvas", "graphic", "animation", "face", "facebackground",
                 "number", "percent", "component", "carousel", "list",
                 "string", "minimap")


def prune_crop(body):
    crop = body.get("crop")
    if isinstance(crop, dict):
        for k in ("top", "left", "width", "height"):
            if crop.get(k) == 0:
                del crop[k]
        if crop.get("center") is False:
            del crop["center"]
        if not crop:
            del body["crop"]


def prune_elem(elem):
    """elem = {"graphic": {...}} usw."""
    for tname in ELEMENT_TYPES:
        body = elem.get(tname)
        if not isinstance(body, dict):
            continue
        for k in ("tranmap", "translation"):
            if k in body and body[k] is None:
                del body[k]
        if body.get("translucency") is False:
            del body["translucency"]
        for k in ("children", "conditions"):
            if k in body and body[k] == []:
                del body[k]
        for cond in body.get("conditions", []):
            for k in ("param", "param2"):
                if cond.get(k) == 0:
                    del cond[k]
        if tname == "list":
            if body.get("spacing") == 0:
                del body["spacing"]
            if body.get("horizontal") is False:
                del body["horizontal"]
        if tname == "component" and body.get("vertical") is False:
            del body["vertical"]
        if tname in ("graphic", "face", "facebackground"):
            prune_crop(body)
        for child in body.get("children", []):
            prune_elem(child)
        break  # genau ein Typ pro Element (Woof nimmt den ersten Treffer)


def optimize(data):
    for sb in data["data"]["statusbars"]:
        if sb.get("fillflat") is None:
            sb.pop("fillflat", None)
        if sb.get("children") == []:
            del sb["children"]
        for elem in sb.get("children", []):
            prune_elem(elem)
    return data


# ---------------------------------------------------------------------------
# Verifizierer: bildet Woofs Parsing nach (Defaults inklusive) und vergleicht
# ---------------------------------------------------------------------------
def num(o, k, default=0):
    v = o.get(k)
    return v if isinstance(v, (int, float)) and not isinstance(v, bool) else default


def parse_crop(b):
    c = b.get("crop")
    if not isinstance(c, dict):
        return (0, 0, False, 0, 0)
    return (num(c, "top"), num(c, "left"), c.get("center") is True,
            num(c, "width"), num(c, "height"))


def parse_elem(e):
    for tname in ELEMENT_TYPES:
        b = e.get(tname)
        if not isinstance(b, dict):
            continue
        out = {"type": tname, "x": b["x"], "y": b["y"], "alignment": b["alignment"],
               "tranmap": b.get("tranmap") if isinstance(b.get("tranmap"), str) else
               (True if b.get("translucency") is True else None),
               "cr": b.get("translation") if isinstance(b.get("translation"), str) else None,
               "conds": [(c["condition"], num(c, "param"), num(c, "param2"),
                          c.get("param_string"))
                         for c in (b.get("conditions") or []) if "condition" in c],
               "children": [parse_elem(c) for c in (b.get("children") or [])]}
        if tname == "list":
            out["sub"] = (b.get("horizontal") is True, num(b, "spacing"))
        elif tname == "graphic":
            out["sub"] = (b.get("patch"), parse_crop(b))
        elif tname in ("face", "facebackground"):
            out["sub"] = parse_crop(b)
        elif tname == "animation":
            out["sub"] = [(f["lump"], f["duration"]) for f in (b.get("frames") or [])]
        elif tname in ("number", "percent"):
            out["sub"] = (b["font"], b["type"], b["param"], b["maxlength"])
        elif tname == "component":
            out["sub"] = (b["font"], b["type"], b.get("vertical") is True,
                          num(b, "duration"))
        elif tname == "string":
            out["sub"] = (b["font"], num(b, "type"), b.get("data"))
        elif tname == "minimap":
            out["sub"] = (num(b, "width"), num(b, "height"),
                          num(b, "scale") or 1.0, num(b, "background"))
        else:
            out["sub"] = None
        return out
    return None


def parse_all(d):
    return {
        "numberfonts": d["data"]["numberfonts"],
        "hudfonts": d["data"]["hudfonts"],
        "statusbars": [(sb["height"], sb["fullscreenrender"],
                        sb.get("fillflat") if isinstance(sb.get("fillflat"), str) else None,
                        sb.get("name"),
                        [parse_elem(c) for c in (sb.get("children") or [])])
                       for sb in d["data"]["statusbars"]],
    }


def verify(orig, opt):
    return parse_all(orig) == parse_all(opt)


def main(argv):
    if argv and argv[0] == "--check":
        a, b = (json.load(open(p)) for p in argv[1:3])
        ok = verify(a, b)
        print("IDENTISCH (nach Woof-Parser-Semantik)" if ok else "UNTERSCHIEDLICH!")
        return 0 if ok else 1
    src, dst = argv[0], argv[1]
    minify = "--minify" in argv
    orig = json.load(open(src))
    opt = optimize(json.load(open(src)))
    if not verify(orig, opt):
        print("FEHLER: Verifikation fehlgeschlagen, nichts geschrieben.")
        return 1
    with open(dst, "w") as f:
        if minify:
            json.dump(opt, f, separators=(",", ":"))
        else:
            json.dump(opt, f, indent=2)
            f.write("\n")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
