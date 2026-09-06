#!/usr/bin/env bash

# Stricter shell handling
set -euo pipefail

# Setup functions
IDENT_LEVEL=0
DEBUG_REMOVE=false
DEBUG_COPY=true

function IndentFurther {
  IDENT_LEVEL=$((IDENT_LEVEL + 1))
}

function IndentBack {
  IDENT_LEVEL=$((IDENT_LEVEL - 1))
}

function Logger {
  printf "%$((IDENT_LEVEL * 2))s%s\n" "" "$1"
}

function Remove {
  TARGET_PATH="$1"

  TARGET_FILE="$(basename -- "${TARGET_PATH}")"
  PARENT_PATH="$(basename -- "$(dirname -- "$(realpath -- "${TARGET_PATH}")")")"
  FILE_AND_PARENT="${PARENT_PATH}/${TARGET_FILE}"

  if [[ -e "${TARGET_PATH}" ]]; then
    Logger "Removed ${FILE_AND_PARENT}"
    rm "${TARGET_PATH}"
  else
    [[ $DEBUG_REMOVE == false ]] || Logger "Target file ${FILE_AND_PARENT} does not exist - nothing to delete!"
  fi
}

function Copy {
  SRC_TARGET="$1"
  DEST_TARGET="$2"

  SRC_FILE="$(basename -- "${SRC_TARGET}")"
  SRC_PARENT="$(basename -- "$(dirname -- "$(realpath -- "${SRC_TARGET}")")")"
  SRC_AND_PARENT="${SRC_PARENT}/${SRC_FILE}"

  if [[ -e "${SRC_TARGET}" ]]; then
    Logger "Copying over ${SRC_AND_PARENT}"
    cp "${SRC_TARGET}" "${DEST_TARGET}"
  else
    [[ $DEBUG_COPY == false ]] || Logger "Source file ${SRC_AND_PARENT} does not exist - can't copy."
  fi
}

# Actual work
AUTOLOAD_DIR=""
AUTOLOAD_DIR_NAME=""
ADDON_ANY=false
ADDON_AMMO_NAMES=false
ADDON_GRADIENT_TEXT=false

while getopts ":d:gn" flag; do
  case "${flag}" in
  d) AUTOLOAD_DIR=${OPTARG} ;;
  g)
    ADDON_GRADIENT_TEXT=true
    ADDON_ANY=true
    ;;
  n)
    ADDON_AMMO_NAMES=true
    ADDON_ANY=true
    ;;
  *)
    Logger "Usage: ${0} -d <path to autoload directory> [-g] [-n]"
    Logger ""
    Logger "  Available options:"
    Logger "    -n Use 'Ammo Names' addon"
    Logger "    -g Use 'Gradient Text' addon"
    Logger ""
    Logger "  Pass both -n and -g to use ammo names with gradient text."
    Logger ""
    exit 1
    ;;
  esac
done

if ! [[ -d "${AUTOLOAD_DIR}" ]]; then
  Logger "The defined autoload directory does not exist."
  Logger "You passed: '${AUTOLOAD_DIR}'"
  Logger "Make sure the path exists, then run again."
  exit 1
fi

AUTOLOAD_DIR_NAME="$(basename -- "$(realpath -- "${AUTOLOAD_DIR}")")"

if [[ "${AUTOLOAD_DIR_NAME,,}" != "autoload" ]]; then
  Logger "Target autoload directory is not named 'autoload'."
  Logger "Directory's name is: '${AUTOLOAD_DIR_NAME}'."
  Logger "Exiting..."
  exit 1
fi

SRC=$(realpath "${PWD}/autoload/")
DEST=$(realpath "${AUTOLOAD_DIR}")

if [[ "${DEST}" == "${SRC}" ]]; then
  Logger "Target directory is the same as source directory."
  Logger "Exiting..."
  exit 1
fi

SRC_ADDONS="$(realpath "${PWD}/addons")"
SRC_ADDONS_GRADIENT="${SRC_ADDONS}/gradient"
SRC_ADDONS_GRADIENT_NAMES="${SRC_ADDONS}/gradient_names"
SRC_ADDONS_NAMES="${SRC_ADDONS}/names"

Logger "Starting setup."

if [[ $ADDON_ANY ]]; then
  Logger "Using add-ons:"
  IndentFurther

  if $ADDON_GRADIENT_TEXT; then
    Logger "* Gradient text: Solid 'Boom' font will be replaced with a gradient version"
  fi

  if $ADDON_AMMO_NAMES; then
    Logger "* Ammo names: Ammo displays now use the name of ammo instead of weapon slot"
  fi

  IndentBack
fi

# Badoop
SRC_ALL="${SRC}/all-all"
SRC_CQ3VE="${SRC}/chex3v.wad"
SRC_CQALL="${SRC}/chex-all"
SRC_FREEDOOM="${SRC}/freedoom-all"
SRC_HACX="${SRC}/hacx.wad"
SRC_HARM="${SRC}/harmonyc.wad"
SRC_LOR="${SRC}/id1.wad"
SRC_REKKR="${SRC}/rekkr-all"

DEST_ALL="${DEST}/all-all"
DEST_CQ3VE="${DEST}/chex3v.wad"
DEST_CQALL="${DEST}/chex-all"
DEST_FREEDOOM="${DEST}/freedoom-all"
DEST_HACX="${DEST}/hacx.wad"
DEST_HARMONY="${DEST}/harmonyc.wad"
DEST_LOR="${DEST}/id1.wad"
DEST_REKKR="${DEST}/rekkr-all"

SRC_ADDONS_GRADIENT_ALL="${SRC_ADDONS_GRADIENT}/all-all"

SRC_ADDONS_GRADIENT_NAMES_ALL="${SRC_ADDONS_GRADIENT_NAMES}/all-all"
SRC_ADDONS_GRADIENT_NAMES_CQALL="${SRC_ADDONS_GRADIENT_NAMES}/chex-all"
SRC_ADDONS_GRADIENT_NAMES_FREEDOOM="${SRC_ADDONS_GRADIENT_NAMES}/freedoom-all"
SRC_ADDONS_GRADIENT_NAMES_HACX="${SRC_ADDONS_GRADIENT_NAMES}/hacx.wad"
SRC_ADDONS_GRADIENT_NAMES_HARMONY="${SRC_ADDONS_GRADIENT_NAMES}/harmonyc.wad"
SRC_ADDONS_GRADIENT_NAMES_LOR="${SRC_ADDONS_GRADIENT_NAMES}/id1.wad"
SRC_ADDONS_GRADIENT_NAMES_REKKR="${SRC_ADDONS_GRADIENT_NAMES}/rekkr-all"

SRC_ADDONS_NAMES_ALL="${SRC_ADDONS_NAMES}/all-all"
SRC_ADDONS_NAMES_CQALL="${SRC_ADDONS_NAMES}/chex-all"
SRC_ADDONS_NAMES_FREEDOOM="${SRC_ADDONS_NAMES}/freedoom-all"
SRC_ADDONS_NAMES_HACX="${SRC_ADDONS_NAMES}/hacx.wad"
SRC_ADDONS_NAMES_HARMONY="${SRC_ADDONS_NAMES}/harmonyc.wad"
SRC_ADDONS_NAMES_LOR="${SRC_ADDONS_NAMES}/id1.wad"
SRC_ADDONS_NAMES_REKKR="${SRC_ADDONS_NAMES}/rekkr-all"

# Start cleanup
Logger "Removing mod base and add-ons..."
IndentFurther

# Generic base for everything
Remove "${DEST_ALL}/sbardef.lmp"
Remove "${DEST_ALL}/sbardef_gfx.wad"
Remove "${DEST_ALL}/sbardef_gfx_gradient.wad"
Remove "${DEST_ALL}/sbardef_gfx_gradient_names.wad"
Remove "${DEST_ALL}/sbardef_gfx_names.wad"

# 'Chex Quest' uses Chex cereal themed items, must give its own graphics.
Remove "${DEST_CQALL}/sbardef.lmp"
Remove "${DEST_CQALL}/sbardef_gfx.wad"
Remove "${DEST_CQ3VE}/sbardef.lmp"
# Replaces all Doom ammo with 'Zorch'-themed ammo.
#   i.e. Mini, Large, Propulsor and Phasing.
Remove "${DEST_CQALL}/sbardef_gfx_gradient_names.wad"
Remove "${DEST_CQALL}/sbardef_gfx_names.wad"

# 'Freedoom' uses a red plate armor for the 50% armor class icon.
Remove "${DEST_FREEDOOM}/sbardef.lmp"
Remove "${DEST_FREEDOOM}/sbardef_gfx.wad"
# 'Rockets' and 'Cells' are replaced with 'Missiles' and 'Energy'.
Remove "${DEST_FREEDOOM}/sbardef_gfx_gradient_names.wad"
Remove "${DEST_FREEDOOM}/sbardef_gfx_names.wad"

# 'Hacx' has a black and a white plate armor for both 33% and 50% armor class icons.
# Status Bar / HUD font is green, needs some duplication, there.
# Uses 'Boom digits' for ARMS in Crispy+.
Remove "${DEST_HACX}/sbardef.lmp"
Remove "${DEST_HACX}/sbardef_gfx.wad"
# Replaces all Doom ammo with new ammo types.
#   i.e. Rounds, Cartridges, Torpedos and Batteries.
Remove "${DEST_HACX}/sbardef_gfx_gradient_names.wad"
Remove "${DEST_HACX}/sbardef_gfx_names.wad"

# 'Harmony' (Harmony Compatible) uses a red and a blue plate armor for both the
# 33% and 50% armor class icons.
Remove "${DEST_HARMONY}/sbardef.lmp"
Remove "${DEST_HARMONY}/sbardef_gfx.wad"
# 'Rockets' and 'Cells' are replaced with 'Gems' and 'Chaos'.
Remove "${DEST_HARMONY}/sbardef_gfx_gradient_names.wad"
Remove "${DEST_HARMONY}/sbardef_gfx_names.wad"

# 'Legacy of Rust' includes its own SBARDEF lump, for some reason,
# it is not really different from the base definitions, so we dupe it.
Remove "${DEST_LOR}/sbardef.lmp"
# 'Cell' is replaced with 'Fuel'.
Remove "${DEST_LOR}/sbardef_gfx_gradient_names.wad"
Remove "${DEST_LOR}/sbardef_gfx_names.wad"

# 'Rekkr' uses a brown and a white plate armor for both the 33% and 50% armor
# class icons.
Remove "${DEST_REKKR}/sbardef.lmp"
Remove "${DEST_REKKR}/sbardef_gfx.wad"
# All Doom ammo is replace with new ammo types.
#   i.e. Soul, Steel shots, Runes and Mana.
Remove "${DEST_REKKR}/sbardef_gfx_gradient_names.wad"
Remove "${DEST_REKKR}/sbardef_gfx_names.wad"

IndentBack

# Install everything
Logger "Installing mod base..."

IndentFurther

Copy "${SRC_ALL}/sbardef.lmp" "${DEST_ALL}"
Copy "${SRC_ALL}/sbardef_gfx.wad" "${DEST_ALL}"
Copy "${SRC_CQ3VE}/sbardef.lmp" "${DEST_CQ3VE}"
Copy "${SRC_CQALL}/sbardef.lmp" "${DEST_CQALL}"
Copy "${SRC_CQALL}/sbardef_gfx.wad" "${DEST_CQALL}"
Copy "${SRC_FREEDOOM}/sbardef.lmp" "${DEST_FREEDOOM}"
Copy "${SRC_FREEDOOM}/sbardef_gfx.wad" "${DEST_FREEDOOM}"
Copy "${SRC_HACX}/sbardef.lmp" "${DEST_HACX}"
Copy "${SRC_HACX}/sbardef_gfx.wad" "${DEST_HACX}"
Copy "${SRC_HARM}/sbardef.lmp" "${DEST_HARMONY}"
Copy "${SRC_HARM}/sbardef_gfx.wad" "${DEST_HARMONY}"
Copy "${SRC_LOR}/sbardef.lmp" "${DEST_LOR}"
Copy "${SRC_REKKR}/sbardef.lmp" "${DEST_REKKR}"
Copy "${SRC_REKKR}/sbardef_gfx.wad" "${DEST_REKKR}"

IndentBack

if $ADDON_ANY; then
  Logger "Installing mod add-ons..."

  IndentFurther

  # Gradient-only, no names
  if [[ $ADDON_GRADIENT_TEXT == true && $ADDON_AMMO_NAMES == false ]]; then
    Copy "${SRC_ADDONS_GRADIENT_ALL}/sbardef_gfx_gradient.wad" "${DEST_ALL}"
  fi

  # Gradient and names
  if [[ $ADDON_GRADIENT_TEXT == true && $ADDON_AMMO_NAMES == true ]]; then
    Copy "${SRC_ADDONS_GRADIENT_NAMES_ALL}/sbardef_gfx_gradient_names.wad" "${DEST_ALL}"
    Copy "${SRC_ADDONS_GRADIENT_NAMES_CQALL}/sbardef_gfx_gradient_names.wad" "${DEST_CQALL}"
    Copy "${SRC_ADDONS_GRADIENT_NAMES_FREEDOOM}/sbardef_gfx_gradient_names.wad" "${DEST_FREEDOOM}"
    Copy "${SRC_ADDONS_GRADIENT_NAMES_HACX}/sbardef_gfx_gradient_names.wad" "${DEST_HACX}"
    Copy "${SRC_ADDONS_GRADIENT_NAMES_HARMONY}/sbardef_gfx_gradient_names.wad" "${DEST_HARMONY}"
    Copy "${SRC_ADDONS_GRADIENT_NAMES_LOR}/sbardef_gfx_gradient_names.wad" "${DEST_LOR}"
    Copy "${SRC_ADDONS_GRADIENT_NAMES_REKKR}/sbardef_gfx_gradient_names.wad" "${DEST_REKKR}"
  fi

  # Names-only, no gradient
  if [[ $ADDON_AMMO_NAMES == true && $ADDON_GRADIENT_TEXT == false ]]; then
    Copy "${SRC_ADDONS_NAMES_ALL}/sbardef_gfx_names.wad" "${DEST_ALL}"
    Copy "${SRC_ADDONS_NAMES_CQALL}/sbardef_gfx_names.wad" "${DEST_CQALL}"
    Copy "${SRC_ADDONS_NAMES_FREEDOOM}/sbardef_gfx_names.wad" "${DEST_FREEDOOM}"
    Copy "${SRC_ADDONS_NAMES_HACX}/sbardef_gfx_names.wad" "${DEST_HACX}"
    Copy "${SRC_ADDONS_NAMES_HARMONY}/sbardef_gfx_names.wad" "${DEST_HARMONY}"
    Copy "${SRC_ADDONS_NAMES_LOR}/sbardef_gfx_names.wad" "${DEST_LOR}"
    Copy "${SRC_ADDONS_NAMES_REKKR}/sbardef_gfx_names.wad" "${DEST_REKKR}"
  fi

  IndentBack
fi

Logger "Finished installing mod!"
