# SBARDEF HUD MOD FOR WOOF!

The Nightdive port brought the possibility to edit the Doom statusbar and fullscreen HUD via <a href="https://doomwiki.org/wiki/SBARDEF" target= "_blank">SBARDEF</a>. Unfortunately, an editor which is supposed to make statusbar modding a lot easier is still not completed. I couldn't wait for it and went ahead to create the HUDs I wanted/needed.<br><br>
**If you want to use any (or all) of these HUDs in a mod of yours, feel free to do so. However, please be fair and credit me for my work. A lot of effort and time has been invested into this project.**<br><br>

**Intended ports:**
- <a href="https://github.com/fabiangreffrath/woof" target= "_blank">Woof!</a> (mod has been primarily developed for this port)<br>
- <a href="https://github.com/MrAlaux/Nugget-Doom" target= "_blank">Nugget Doom</a> (NUGHUD can only be toggled when the "PrBoom+ Balanced"-style HUD is selected)<br><br>

**How to use:**
- Unzip the archive into your Woof! installation directory. Files will be copied into the proper autoload subdirectories.<br>
- If you are using *extras.wad*, launch Woof! with command line parameter **-noextras**.<br>
- Keep pressing F5 ingame until you get to the HUD you want.<br><br>

**Features:**
- **Vitals**: Health, armor, ammo and keys. For all HUDs.<br>
- **Mugshot**: Animated face. Featured in Nightdive, Eternity I and DSDA II/III.<br>
- **Ammo overview**: Amount of ammo available for each weapon. Partial in Nightdive and DSDA III (no max amounts), full in Crispy, Eternity and DSDA I+II.<br>
- **Arms**: Available weapons. 2-7 in Crispy, 1-7 in DSDA III, otherwise 1-9. Either arranged as a square (Crispy, Nightdive) or a single line (Eternity, Boom, DSDA, PrBoom+). Chainsaw and Super Shotgun shown as "8" and "9" in the Arms panel ("9" not in Doom 1). DSDA II splits the display into three slot-grouped panels (1-2-8 / 3-4-9 / 5-6-7). A switch between panels occurs whenever a weapon of a different panel is selected. DSDA III indicates Chainsaw through a lit "1" in slot 1 and possession of both shotguns with a fully lit "3".<br><br>

**Indicators:**
- **Armor type**: Level of damage absorption. Shown explicitly as percentage in Crispy, Nightdive and Doom 64. Otherwise, armor number is usually recolored (green: 33%, blue: 50%). In Eternity II and PrBoom+, the armor icon changes instead.<br>
- **Backpack**: Powerup which doubles ammo amount. Recolored ammo numbers (white to gold/green) and/or doubling max ammo (Crispy, Eternity, DSDA I/II).<br>
- **Berserk mode**: Powerup which increases punching power with Fists. Usually shown as a fully lit "1" in the Arms display. The green cross icon in Eternity II turns red. In PrBoom+ I, the Medikit icon is replaced by a Berserk pack. In Eternity and DSDA, the symbol (infinity loop or "N/A") turns red if fists are selected.<br>
- **God mode**: Mugshot and/or recolored health/armor numbers (gold). In Eternity II and PrBoom+ II, icons turn golden, too.<br>
- **Active ammo/weapon**: Currently selected weapon and fitting ammo. Orange numbers in the Arms/WEA/WPN panel and/or ammo overview.<br><br>

**Comparison Features / Indicators:**<br>

| HUD style | Features | Indicators | Notes |
| ----------- | ----------- | ----------- | ----------- |
| Nightdive<br>Eternity I<br>DSDA II/III | ++++ | +++++ | All features/indicators included |
| Eternity II<br>DSDA I | +++ | +++++ | No mugshot |
| Boom<br>PrBoom+ | ++ | +++++ | No mugshot; no ammo overview |
| Crispy | +++ | ++ | No mugshot; armor type and backpack only |
| Doom 64 | + | + | Vitals only; armor type only; always centered |
<br>
Available variants:<br><br>

**1) Crispy with Labels**<br>
<a href="https://github.com/fabiangreffrath/crispy-doom" target= "_blank">Crispy Doom</a> fullscreen HUD with labels. Features armor type indicator as a bonus. (By default, slot numbers are used in ammo overview. Addons for ammo names are available below, see "Bonus Content".)<br>
<img width="1917" height="328" alt="01_crispy" src="https://github.com/user-attachments/assets/ba56b38b-e02b-4f70-b6fa-2362a598b2f1" />
<br><br>

**2) Nightdive with Labels**<br>
Replaces the <a href="https://static.doomworld.com/pages_media/29_lor1.png" target= "_blank">Nightdive fullscreen HUD</a>. Armor and ammo icons have been removed since they often end up being badly aligned/too large. Ammo overview, arms display and armor type indicator have been added.<br>
<img width="1917" height="328" alt="02_nightdive" src="https://github.com/user-attachments/assets/b28e07b3-e1d8-4945-a754-6c528c4ec98c" />
<br><br>

**3) Doom 64**<br>
Imitates the fullscreen HUD from <a href="https://www.nintendoworldreport.com/media/51707/1/5.jpg" target= "_blank">Doom 64</a>. Basically nothing besides the three centered vital stats plus an indicator for armor protection level.<br>
<img width="1917" height="328" alt="03_doom64" src="https://github.com/user-attachments/assets/12446dc2-f1f5-4a8a-952d-c6a5a9cae056" />
*Note: Alignment of Health, Armor and keys will adjust depending on whether widescreen layout is used or not.*
<br><br>

**4) ﻿Eternity**<br>
Mimicks the fullscreen HUD from the <a href="https://github.com/team-eternity/eternity" target= "_blank">Eternity Engine</a>.<br>
<img width="1917" height="328" alt="04_eternity_enhanced" src="https://github.com/user-attachments/assets/b7c6638d-00b6-416f-8df5-798dd1755581" />
   **I. Enhanced**: Uses original font with different sizes and mugshot. No labels.<br><br>
<img width="1917" height="328" alt="05_eternity_boomified" src="https://github.com/user-attachments/assets/3cec8d62-bb93-49e9-a435-99d94a7eca50" />
   **II. Boomified**: Uses Boom font instead, one size only, no mugshot. Health/Armor icons indicate Berserk/God modes and MegaArmor (colors depend on selected game), taken from the statusbar of <a href="https://doomwiki.org/wiki/Jenesis" target= "_blank">"Jenesis" by Jimmy</a> (with modifications by me).
<br><br>

**5) Boom**<br>
The original <a href="https://doomwiki.org/w/images/thumb/5/53/NDCP-map23-end.png/800px-NDCP-map23-end.png" target= "_blank">Boom HUD</a> with properly aligned keys (ignores custom offsets).<br>
<img width="1917" height="328" alt="06_boomcomp" src="https://github.com/user-attachments/assets/4414f426-05f8-450f-b582-90ea912eeb77" />
   **I. Compact**: Everything grouped on the left side of the screen.<br><br>
<img width="1917" height="328" alt="07_boomdist" src="https://github.com/user-attachments/assets/af056fbb-14a6-476f-b8e2-b03b58d86d9e" />
   **II. Distributed**: Weapon and ammo-related info move to the right side, otherwise the same.
<br><br>

**6) DSDA**<br>
A Boom variant from the <a href="https://github.com/kraflab/dsda-doom" target= "_blank">DSDA-Doom</a> port. All the vital info is grouped on the left side while ammo overview and keys are to the right. (By default, slot numbers are used in ammo overview. Addons for ammo names are available below, see "Bonus Content".) <br>
<img width="1917" height="328" alt="08_dsda-classic" src="https://github.com/user-attachments/assets/363946cf-f1f5-497a-8d99-db8f2b4cbc4f" />
   **I. Classic**: Imitates the original HUD as closely as possible.<br><br>
<img width="1917" height="328" alt="09_dsda-enhanced" src="https://github.com/user-attachments/assets/14bc01d2-bfea-4fd9-b933-d7ae10cdaea6" />
   **II. Enhanced**: Adds mugshot and reorganizes ARM/HEL/AMM/WPN widgets on the left side.<br><br>
<img width="1917" height="328" alt="10_dsda-condensed" src="https://github.com/user-attachments/assets/1a179ad2-6f3b-4c47-bd99-03d823a881c9" />
   **III. Condensed**: Widgets on the left are all aligned in a single line. Ammo overview is minimized and mugshot moves to the right side.<br><br>

**7) PrBoom+**<br>
Taken from the <a href="https://github.com/coelckers/prboom-plus/issues" target= "_blank">PrBoom+</a> port, this Boom variant has weapon info and keys on the left while health and armor move to the right, more emphasized by the Doom menu font. The icons change depending on whether you found the Berserk Pack or the Blue Armor. Ammo overview and God Mode indicator (temporary mugshot) have been added.<br>
<img width="1917" height="328" alt="11_prboom-classic" src="https://github.com/user-attachments/assets/d57ec38a-77b4-4e1a-9f71-8f11213dc503" />
   **I. Classic**: Imitates the original HUD as closely as possible: Boom Compact with Health and Armor isolated on the right side.<br>
<em>Note: Some mods use different sprite sizes. In such cases, manual adjustments to related HUD coordinates/graphics are required.</em>
<br><br>
<img width="1917" height="328" alt="12_prboom-balanced" src="https://github.com/user-attachments/assets/9e7ed4ec-21b8-421e-a681-13166d1103c1" />
   **II. Balanced**: Uses more neutral/universal icons (from Eternity Boomified) and splits them to both sides of the screens, using the double-sized Boom font. Ammo overview is missing. No colorization here (only in the WEA widget for selected weapon).<br><br>

**BONUS CONTENT**<br><br>
I. Addons (load externally, i.e. NOT via autoload - **currently not all are functional**):
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/ammo_names.pk3" target= "_blank">Ammo Names</a> (Names instead of slot numbers for ammo labels in Crispy and DSDA)
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/gradient.pk3" target= "_blank">Boom Font with Gradient Colors</a> (Check for a <a href="https://i.imgur.com/qdEqwTA.png" target= "_blank">preview here</a>)
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/gradient_names.pk3" target= "_blank">Boom Font with Gradient Colors + Ammo Names</a> (Combines both addons)
<br>
II. Developer Kit (commented code for all HUDs):<br>
<a href="https://github.com/NightFright2k19/doom_sbardef/tree/main/docs/sbardef" target= "_blank">Github subpage</a> (Useful for anybody who wants to start with SBARDEF coding on their own)
