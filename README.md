# SBARDEF HUD MOD FOR WOOF!

The Nightdive port brought the possibility to edit the Doom statusbar and fullscreen HUD via <a href="https://doomwiki.org/wiki/SBARDEF" target= "_blank">SBARDEF</a>. Unfortunately, a proper editor for this purpose is still not completed. I couldn't wait for it and went ahead to create the HUDs I wanted, using nothing but Notepad.<br><br>
**If you want to use any (or all) of these HUDs in a mod of yours, feel free to do so. However, please be fair and credit me for my work. A lot of effort and time has been invested into this project.**<br><br>

**Intended ports:**
- <a href="https://github.com/fabiangreffrath/woof" target= "_blank">Woof!</a> (mod has been primarily developed for this port)<br>
- <a href="https://github.com/MrAlaux/Nugget-Doom" target= "_blank">Nugget Doom</a> (NUGHUD can only be toggled when the "PrBoom+ Balanced"-style HUD is selected)<br><br>

**How to use:**
- Unzip the archive into your Woof! installation directory. Files will be copied into the proper autoload subdirectories.<br>
- If you are using *extras.wad*, launch Woof! with command line parameter **-noextras**.<br>
- Keep pressing F5 ingame until you get to the HUD you want.<br>
- Note #1: For best visuals, be sure the "Wide Shift" slider ("Status Bar/HUD") in your Woof! menu is maxed out.<br>
- Note #2: Woof! does **not** support <a href="https://doomwiki.org/wiki/ID24HACKED" target= "_blank">ID24HACKED</a>, so no extra weapon slots and fifth ammo type with PWADs requiring *id24res.wad*.<br><br>

**Features:**
- **Vitals**: Health, armor, ammo and keys. For all HUDs.<br>
- **Mugshot**: Animated face. Featured in Status Bar Plus, Nightdive, Eternity I and DSDA II/III.<br>
- **Ammo overview**: Amount of ammo available for each weapon. Partial in Nightdive, Doom 64 II-IV, Eternity, Boom II and DSDA III (no max amounts), full in Status Bar Plus, Crispy and DSDA I+II.<br>
- **Arms**: Available weapons. 2-7 in Crispy, 1-7 in DSDA III, otherwise 1-9. Either arranged as a square (Status Bar Plus, Crispy, Nightdive I) or a single line (Nightdive II, Eternity, Boom, DSDA, PrBoom+). DSDA II splits the display into two slot-grouped panels (1-2-3-8-9 / 4-5-6-7). A switch between panels occurs whenever a weapon of a different panel is selected. DSDA III indicates Chainsaw through a lit "1" in slot 1 and possession of both shotguns with a fully lit "3".<br><br>

**Indicators:**
- **Armor type**: Level of damage absorption. Shown explicitly as percentage in Crispy and Nightdive. Doom 64 I/III utilizes brackets (no bracket: 33%, bracket: 50%). Otherwise, armor number is usually recolored (green: 33%, blue: 50%). Status Bar Plus adds a small frame around the mugshot for this purpose. In Eternity II and PrBoom+, the armor icon changes instead.<br>
- **Backpack**: Powerup which doubles ammo amount. Recolored ammo numbers (white to gold/green) and/or doubling max ammo (Status Bar Plus, Crispy, Nightdive II, Doom 64 II/IV, Eternity, DSDA I/II). In Doom 64 III, the "Ammo" label lights up.<br>
- **Chainsaw/Super Shotgun**: Not shown on the vanilla status bar, these weapons are listed in the Arms display in more modern ports, usually as "8" and "9".
- **Berserk mode**: Powerup which increases punching power with Fists. Usually shown as a fully lit "1" in the Arms display. The green cross icon in Eternity II turns red. In PrBoom+ I, the Medikit icon is replaced by a Berserk pack. In Eternity and DSDA, the symbol (infinity loop or "N/A") turns red if fists are selected.<br>
- **God mode**: Mugshot and/or recolored health/armor numbers (gold). "Health" label in Crispy/Doom 64 switches to "God". In Eternity II and PrBoom+ II, icons turn golden, too.<br>
- **Active ammo/weapon**: Currently selected weapon and fitting ammo. Orange numbers in the Arms/WEA/WPN panel and/or ammo overview.<br>
- **Powerup timers (SBARDEF v1.2.0 only)**: Shows bars for remaining time of Light Amplification Visor (LIT), Invisibility Sphere (VIS), Radiation Suit (RAD) and Invulnerability (GOD) in the top right corner.<br>
- **Kills/Secrets progress bars (SBARDEF v1.2.0 only)**: Alternate way of showing K/S stats instead of the K/I/S widget. Level stats widget must be set to "Off" or "Automap". Only available in Boom II.
<br><br>

**Comparison Features / Indicators:**<br>

| HUD | Features | Indicators |  Score | Details 
| ----------- | ----------- | ----------- | ----------- | ----------- |
| Nightdive<br>Eternity I<br>DSDA II/III | ++++ | ++++++ | 10 / 10 | Features: All<br>Indicators: All |
| Status Bar Plus | ++++ | +++++ | 9 / 10 | Features: All<br>Indicators: No active Ammo/Weapon |
| Eternity II<br>Boom II<br>DSDA I | +++ | ++++++ | 9 / 10 | Features: No Mugshot<br>Indicators: All |
| Crispy Plus | +++ | +++++ | 8 / 10 | Features: No Mugshot<br>Indicators: No active Ammo/Weapon |
| Boom I/III<br>PrBoom+ | ++ | ++++++ | 8 / 10 | Features: Vitals, Arms<br>Indicators: All |
| Status Bar (Vanilla)| ++++ | ++ | 6 / 10 | Features: All<br>Indicators: Backpack, God Mode |
| Doom 64 II/IV | ++ | ++++ | 6 / 10 | Features: Vitals, Ammo overview<br>Indicators: Armor type, Backpack, God mode, active ammo |
| Doom 64 III | ++ | +++ | 5 / 10 | Features: Vitals, Ammo overview<br>Indicators: Armor type, Backpack, God mode |
| Doom 64 I | + | ++ | 3 / 10 | Features: Vitals<br>Indicators: Armor type, God mode |
<br>
Available variants:<br><br>

**1) Status Bar Plus**<br>
Like the vanilla status bar, but with Transparency. As a bonus, you'll find indicators for Chainsaw/Super Shotgun (ARMS: "8" and "9") and Berserker
mode (ARMS: "1"). There's also a small frame around the mugshot telling you which armor type is used (green: 33%, blue: 50%). Widescreen STBAR lumps are supported.<br>
<img width="1917" height="328" alt="00_statusbar-plus" src="https://github.com/user-attachments/assets/2d7785e1-643f-40ad-8b29-dc4c7e0b9d69" />
<br><br>

**2) Crispy Plus**<br>
<a href="https://github.com/fabiangreffrath/crispy-doom" target= "_blank">Crispy Doom</a> fullscreen HUD with labels. With additional indicators for Berserk, Chainsaw/Super Shotgun, god mode and armor type. (By default, slot numbers are used in ammo overview. Addons for ammo names are available below, see "Bonus Content".)<br>
<img width="1917" height="328" alt="01_crispy-plus" src="https://github.com/user-attachments/assets/825a2cf9-d2c4-4c9d-aeb3-3a07aafc55ba" />
<br><br>

**3) Nightdive**<br>
Replaces the <a href="https://static.doomworld.com/pages_media/29_lor1.png" target= "_blank">Nightdive fullscreen HUD</a>. Armor and ammo icons have been removed. In return, ammo overview, arms display and armor type indicator were added.<br>
<img width="1917" height="328" alt="02_nightdive-labels" src="https://github.com/user-attachments/assets/52afaa63-4b2a-4ef0-a4f6-93321d98248c" />
   **I. Labels**: Vitals use the STTNUM font. ARMS display arranged as a square, ammo overview minimized.<br><br>
<img width="1917" height="328" alt="03_nightdive-remix" src="https://github.com/user-attachments/assets/fdda6089-4d28-49d7-9266-766feb60b965" />
   **II. Remix**: Ammo overview taken from the DSDA HUD group (with ammo type meters); ARMS widget is a single line. (By default, slot numbers are used in ammo overview. Addons for ammo names are available below, see "Bonus Content".)
<br><br>

**4) Doom 64**<br>
Imitates the fullscreen HUD from <a href="https://www.nintendoworldreport.com/media/51707/1/5.jpg" target= "_blank">Doom 64</a>. Alignment of elements will adjust depending on "Hud Anchoring" setting.<br>
<img width="1917" height="328" alt="04_doom64" src="https://github.com/user-attachments/assets/a52c1d6f-b80e-4f46-a348-47547db289d4" />
  **I. Default**: Nothing besides the three centered vital stats plus indicators for armor type and god mode. <br><br>
<img width="1917" height="328" alt="05_boom64" src="https://github.com/user-attachments/assets/2d3ad03a-b2bc-4820-99b3-9cd8f1ce52e9" />
  **II. Boom 64**: Like Default, but uses Boom font and its colorization. With ammo overview, active ammo and backpack indicator.<br><br>
<img width="1917" height="328" alt="05_doom64_wide" src="https://github.com/user-attachments/assets/08a69569-c88e-4cc7-ad4b-cacf4af56d69" />
  **III. Default Wide**: Vitals grouped on the left side, keeping weapon view unobstructed. Keys shift to the right, enhanced by a backpack indicator (lit "AMMO" label) and a simplified ammo overview. Since colorization is avoided (only white, gray and black), this variant should be extremely robust if combined with any custom palettes from PWADs.<br><br>
<img width="1917" height="328" alt="07_boom64_wide" src="https://github.com/user-attachments/assets/5ab044b6-995f-4727-90f7-b8378d929ba8" />
  **IV. Boom64 Wide**: Like Default Wide, but with Boom numbers and colorization.
<br><br>

**5) ﻿Eternity**<br>
Mimicks the fullscreen HUD from the <a href="https://github.com/team-eternity/eternity" target= "_blank">Eternity Engine</a>.<br>
<img width="1917" height="328" alt="05_eternity_enhanced" src="https://github.com/user-attachments/assets/aac81320-9209-472a-935d-3d9c5ecbd71a" />
   **I. Enhanced**: Uses original font with different sizes and mugshot. No labels (besides ammo overview).<br><br>
<img width="1917" height="328" alt="06_eternity_boomified" src="https://github.com/user-attachments/assets/65fa423e-452f-4759-a002-86e351fb97ea" />
   **II. Boomified**: Uses Boom font instead, one size only, no mugshot. Health/Armor icons indicate Berserk/God modes and MegaArmor (colors depend on selected game), taken from the statusbar of <a href="https://doomwiki.org/wiki/Jenesis" target= "_blank">"Jenesis" by Jimmy</a>.
<br><br>

**6) Boom**<br>
The original <a href="https://doomwiki.org/w/images/thumb/5/53/NDCP-map23-end.png/800px-NDCP-map23-end.png" target= "_blank">Boom HUD</a> with properly aligned keys (ignores custom offsets).<br>
<img width="1917" height="328" alt="07_boom-comp" src="https://github.com/user-attachments/assets/7481954f-1df3-482e-9722-d3c92fcc2e26" />
   **I. Compact**: Everything grouped on the left side of the screen.<br><br>
<img width="1917" height="328" alt="08_boom-remix" src="https://github.com/user-attachments/assets/f00fa7d8-2ea7-4800-96a4-97d61c133494" />
<img width="1917" height="328" alt="08_boom-remix2" src="https://github.com/user-attachments/assets/4503a8a0-1368-45ec-a52c-f059a347d49f" />
   **II. Remix**: Merges Compact features with ammo overview from Nightdive Remix. Alternate display mode (second screen): Arms widget (WEA) is replaced with two progress bars for secrets and kills (level stats widget must be set to "Off" or "Automap").<br><br>
<img width="1917" height="328" alt="09_boom-dist" src="https://github.com/user-attachments/assets/f986e76f-55b7-4ced-bc3a-baa0da67db5d" />
   **III. Distributed**: Weapon and ammo-related info move to the right side, otherwise the same as Compact.
<br><br>

**7) DSDA**<br>
A Boom variant from the <a href="https://github.com/kraflab/dsda-doom" target= "_blank">DSDA-Doom</a> port. All the vital info is grouped on the left side while ammo overview and keys are to the right. (By default, slot numbers are used in ammo overview. Addons for ammo names are available below, see "Bonus Content".) <br>
<img width="1917" height="328" alt="08_dsda-classic" src="https://github.com/user-attachments/assets/363946cf-f1f5-497a-8d99-db8f2b4cbc4f" />
   **I. Classic**: Imitates the original HUD as closely as possible.<br><br>
<img width="1917" height="328" alt="09_dsda-enhanced" src="https://github.com/user-attachments/assets/512a5fd9-b1a6-408b-b402-04e05b7cb0ca" />
   **II. Enhanced**: Adds mugshot and reorganizes vitals/WPN widgets on the left side.<br><br>
<img width="1917" height="328" alt="12_dsda-condensed" src="https://github.com/user-attachments/assets/6e360db4-2ddf-487e-b134-725d19db5403" />
   **III. Condensed**: Widgets on the left are all aligned in a single line. Ammo overview is minimized and mugshot moves to the right side.<br><br>

**8) PrBoom+**<br>
Taken from the <a href="https://github.com/coelckers/prboom-plus/issues" target= "_blank">PrBoom+</a> port, this Boom variant has weapon info and keys on the left while health and armor move to the right, more emphasized by the Doom menu font. The icons change depending on whether you found the Berserk Pack or the Blue Armor. God Mode indicator (temporary mugshot) has been added.<br>
<img width="1917" height="328" alt="11_prboom-classic" src="https://github.com/user-attachments/assets/ceabb10f-838d-4c2c-9f5a-8f2e841d6ff8" />
   **I. Classic**: Imitates the original HUD as closely as possible: Boom Compact with Health and Armor isolated on the right side.<br>
<em>Note: Some mods use sprites with different sizes. In such cases, manual adjustments to related HUD coordinates/graphics are required.</em>
<br><br>
<img width="1917" height="328" alt="12_prboom-balanced" src="https://github.com/user-attachments/assets/9e7ed4ec-21b8-421e-a681-13166d1103c1" />
   **II. Balanced**: Uses more neutral/universal icons (from Eternity Boomified) and splits them, using a double-sized Boom font. No colorization here (only in the WEA widget for selected weapon).<br><br>

**BONUS CONTENT**<br><br>
I. Addons (load externally, i.e. NOT via autoload - **currently not all are functional**):
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/ammo_names.pk3" target= "_blank">Ammo Names</a> (Names instead of slot numbers for ammo labels in Crispy and DSDA)
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/gradient.pk3" target= "_blank">Boom Font with Gradient Colors</a> (Check for a <a href="https://i.imgur.com/qdEqwTA.png" target= "_blank">preview here</a>)
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/gradient_names.pk3" target= "_blank">Boom Font with Gradient Colors + Ammo Names</a> (Combines both addons)
<br>
II. Developer Kit (commented code for all HUDs):<br>
<a href="https://github.com/NightFright2k19/doom_sbardef/tree/main/docs/sbardef" target= "_blank">Github subpage</a> (Useful for anybody who wants to start with SBARDEF coding on their own)
