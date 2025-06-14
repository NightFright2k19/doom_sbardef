# SBARDEF HUD MOD FOR WOOF!

The Nightdive port brought the possibility to edit the Doom statusbar and fullscreen HUD via <a href="https://doomwiki.org/wiki/SBARDEF" target= "_blank">SBARDEF</a>. Unfortunately, an editor which is supposed to make statusbar modding a lot easier is still not completed. I couldn't wait for it and went ahead to create the HUDs I wanted/needed.

**Intended ports:**
- <a href="https://github.com/fabiangreffrath/woof" target= "_blank">Woof!</a> (mod has been primarily developed for this port)<br>
- <a href="https://github.com/MrAlaux/Nugget-Doom" target= "_blank">Nugget Doom</a> (note that NUGHUD can only be toggled when the "PrBoom+"-style HUD is selected)
<br><br>

**How to use:**
- Unzip the archive into your Woof! installation directory. Files will be copied into the proper autoload subdirectories.<br>
- If you are using *extras.wad*, launch Woof! with command line parameter **-noextras**. Otherwise without it.<br>
- Keep pressing F5 ingame until you get to the HUD you want.
<br>

**Features:**
- **Vitals**: Health, armor, ammo and keys. For all HUDs.<br>
- **Mugshot**: Featured in Nightdive, Eternity, Essentials and DSDA Enhanced.<br>
- **Ammo overview**: Partial in Nightdive, Boom and PrBoom+ (no max amounts), full in Crispy, Eternity and DSDA.<br>
- **Arms**: Available weapons. 2-7 in Crispy, 1-7 in DSDA Enhanced, otherwise 1-9. Either arranged as a square (Crispy, Nightdive) or a single line (Eternity, Boom, DSDA, PrBoom+). Chainsaw and Super Shotgun shown as "8" and "9" in the Arms panel ("9" not in Doom 1). DSDA Enhanced works differently: No gray numbers, "8" and "9" are missing, "1" indicates Chainsaw, "3" is for Shotgun and Super Shotgun.<br><br>

**Indicators:**
- **Armor type**: Level of damage absorption. Shown explicitly as percentage in Crispy, Nightdive and Doom 64. Otherwise, armor number is usually recolored (green: 33%, blue: 50%). In PrBoom+, the armor icon changes instead.<br>
- **Backpack**: Recolored ammo numbers (gold in Nightdive/Eternity, otherwise green) and/or doubling max ammo.<br>
- **Berserk mode**: Usually shown as a fully lit "1" in the Arms display (not in DSDA Enhanced). In PrBoom+, the Medikit icon is replaced by a Berserk pack. In Eternity, Essentials and DSDA, the infinity symbol turns red if fists are selected.<br>
- **God mode**: Mugshot and/or recolored health/armor numbers (gold). Recolored numbers only work with powerups, not cheats.<br>
- **Active ammo/weapon**: Red numbers in the Arms panel and/or ammo overview.<br><br>

**Comparison Features / Indicators:**<br>

| HUD style | Features | Indicators | Notes |
| ----------- | ----------- | ----------- | ----------- |
| Nightdive / Eternity / DSDA Enhanced  | ++++ | +++++ | All features/indicators included |
| Boom / DSDA Classic | +++ | +++++ | No mugshot |
| PrBoom+ | +++ | ++++ | No mugshot; no god mode |
| Essentials | ++ | ++++ | No arms or ammo overview; no active ammo/weapon |
| Crispy | +++ | ++ | No mugshot; armor type and backpack only |
| Doom 64 | + | + | Vitals only; armor type only; always centered |

<br>
Available variants:<br><br>

**1) Crispy with Labels**<br>
<a href="https://github.com/fabiangreffrath/crispy-doom" target= "_blank">Crispy Doom</a> fullscreen HUD with labels. Features armor type indicator as a bonus. I've de﻿cided to replace the labels for the ammo types with weapon slot numbers to provide maximum compatibility with mods which change ammo names.<br>
![01_crispy](https://github.com/user-attachments/assets/211ea2c6-09a0-40d1-b141-076b6f176029)
<em>Note: Slot numbers are used by default. You may additionally load <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/ammo_names.pk3" target= "_blank">this small patch (1 KB)</a> to restore standard ammo names for Doom.</em>
<br>

**2) Nightdive-Like with Labels**<br>
Replaces the <a href="https://static.doomworld.com/pages_media/29_lor1.png" target= "_blank">Nightdive fullscreen HUD</a>. Armor and ammo icons have been removed since they often end up being badly aligned/too large. Ammo overview, arms display and armor type indicator have been added.<br>
![02_nightdive](https://github.com/user-attachments/assets/48b605b7-bf8f-400f-a5c8-c3bb8630985a)
<br>

**3) Doom 64-Like**<br>
Imitates the fullscreen HUD from <a href="https://www.nintendoworldreport.com/media/51707/1/5.jpg" target= "_blank">Doom 64</a>. Basically nothing besides the three centered vital stats plus an indicator for armor protection level.<br>
![03_doom64](https://github.com/user-attachments/assets/2e61bed1-1f2e-4314-a952-35cfeb7fab4c)
<br>

**4) ﻿Eternity Enhanced**<br>
Mimicks the fullscreen HUD from the <a href="https://github.com/team-eternity/eternity" target= "_blank">Eternity Engine</a>, but with mugshot and ammo overview.<br>
![04_eternity](https://github.com/user-attachments/assets/fcdf10b8-b35c-4163-a107-d9ba2d7718ad)
<br>

**5) ﻿Essentials**<br>
Sort of a minimized version of the following Boom variants, with focus on saving more screen space.<br>
![05_essentials](https://github.com/user-attachments/assets/73276722-09db-4758-a5af-db850e597561)
<br>

**6) Boom-Like Compact/Distributed**<br>
The original <a href="https://doomwiki.org/w/images/thumb/5/53/NDCP-map23-end.png/800px-NDCP-map23-end.png" target= "_blank">Boom HUD</a> returns! And this time even with properly aligned keys (regardless which custom offsets are used in a PWAD)...<br>
![06_boomcomp](https://github.com/user-attachments/assets/c4d98a78-952b-4048-ab13-f6f17bc68544)
   **Compact:** Everything aligned on the left side of the screen.<br><br>
![07_boomdist](https://github.com/user-attachments/assets/492e0490-cd6c-49af-adee-60fc469d3892)
   **Distributed:** Ammo stats moved to the right side, otherwise identica﻿l.
<br>

**7) DSDA Classic/Enhanced**<br>
A Boom variant from the <a href="https://github.com/kraflab/dsda-doom" target= "_blank">DSDA-Doom</a> port. All the vital info is grouped on the left side while ammo overview and keys are to the right.<br>
![08_dsda-classic](https://github.com/user-attachments/assets/5c8cbfdb-8a51-402f-8053-541d5295713d)
   **Classic:** Close reproduction of the original HUD.<br><br>
![09_dsda-enhanced](https://github.com/user-attachments/assets/f7f91b38-1cd6-4b4a-b85e-de11457a3cb8)
   **Enhanced:** Adds mugshot, reorganized vital stats and compressed WPN line ("1" indicates Chainsaw, "3" only turns green in Doom II if both shotguns are owned).<br><br>
<em>Note: Slot numbers are used by default. You may additionally load <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/ammo_names.pk3" target= "_blank">this small patch (1 KB)</a> to restore standard ammo names for Doom.</em>
<br>

**8) PrBoomPlus-Like**<br>
Taken from the <a href="https://github.com/coelckers/prboom-plus/issues" target= "_blank">PrBoom+</a> port, this Boom variant has weapon info and keys on the left while health and armor move to the right, more emphasized by the Doom menu font. The icons change depending on whether you found the Berserk Pack or the Blue Armor. Ammo overview has been added.<br>
![10_prboom](https://github.com/user-attachments/assets/e49f82a7-6867-413f-8b03-416079c37c9f)
<em>Note: Some mods use different sprite sizes. In such cases, manual adjustments to related HUD coordinates/graphics are required.</em>
