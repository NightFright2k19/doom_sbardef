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
- Note: For best visuals, be sure the "Wide Shift" slider ("Status Bar/HUD") in your Woof! menu is maxed out.<br><br>

**Features:**
- **Vitals**: Health, armor, ammo and keys. For all HUDs.<br>
- **Mugshot**: Animated face. Featured in Status Bar Plus, Nightdive, Eternity I and DSDA II/III.<br>
- **Ammo overview**: Amount of ammo available for each weapon. Partial in Nightdive and DSDA III (no max amounts), full in Status Bar Plus, Crispy, Eternity and DSDA I+II.<br>
- **Arms**: Available weapons. 2-7 in Crispy, 1-7 in DSDA III, otherwise 1-9. Either arranged as a square (Status Bar Plus, Crispy, Nightdive) or a single line (Eternity, Boom, DSDA, PrBoom+). DSDA II splits the display into two slot-grouped panels (1-2-3-8-9 / 4-5-6-7). A switch between panels occurs whenever a weapon of a different panel is selected. DSDA III indicates Chainsaw through a lit "1" in slot 1 and possession of both shotguns with a fully lit "3".<br><br>

**Indicators:**
- **Armor type**: Level of damage absorption. Shown explicitly as percentage in Crispy, Nightdive and Doom 64. Otherwise, armor number is usually recolored (green: 33%, blue: 50%). Status Bar Plus adds a small frame around the mugshot for this purpose. In Eternity II and PrBoom+, the armor icon changes instead.<br>
- **Backpack**: Powerup which doubles ammo amount. Recolored ammo numbers (white to gold/green) and/or doubling max ammo (Status Bar Plus, Crispy, Eternity, DSDA I/II).<br>
- **Chainsaw/Super Shotgun**: Not shown on the vanilla status bar, these weapons are listed in the Arms display in more modern ports, usually as "8" and "9".
- **Berserk mode**: Powerup which increases punching power with Fists. Usually shown as a fully lit "1" in the Arms display. The green cross icon in Eternity II turns red. In PrBoom+ I, the Medikit icon is replaced by a Berserk pack. In Eternity and DSDA, the symbol (infinity loop or "N/A") turns red if fists are selected.<br>
- **God mode**: Mugshot and/or recolored health/armor numbers (gold). In Eternity II and PrBoom+ II, icons turn golden, too.<br>
- **Active ammo/weapon**: Currently selected weapon and fitting ammo. Orange numbers in the Arms/WEA/WPN panel and/or ammo overview.<br><br>

**Comparison Features / Indicators:**<br>

| HUD style | Features | Indicators |  Score | Notes |
| ----------- | ----------- | ----------- | ----------- | ----------- |
| Nightdive<br>Eternity I<br>DSDA II/III | ++++ | ++++++ | 10/10 | All features/indicators included |
| Status Bar Plus | ++++ | +++++ | 9/10 | No active ammo/weapon |
| Eternity II<br>DSDA I | +++ | ++++++ | 9/10 | No mugshot |
| Boom<br>PrBoom+ | ++ | ++++++ | 8/10 | No mugshot; no ammo overview |
| Status Bar (Vanilla)| ++++ | ++ | 6/10 | All features; backpack and god mode only |
| Crispy | +++ | ++ | 5/10 | No mugshot; armor type and backpack only |
| Doom 64 | + | + | 2/10 | Vitals only; armor type only; always centered |
<br>
Available variants:<br><br>

**1) Status Bar Plus**<br>
Like the vanilla status bar, but with transparency (based on the *tran_filter_pct* setting in woof.cfg)! As a bonus, you'll find indicators for Chainsaw/Super Shotgun (ARMS: "8" and "9") and Berserker
mode (ARMS: "1"). There's also a small frame around the mugshot telling you which armor type is used (green: 33%, blue: 50%). Will also work with widescreen STBAR lumps!<br>
<img width="1917" height="328" alt="00_statusbar-plus" src="https://github.com/user-attachments/assets/cfc106e7-4680-4c1f-94b5-0983ce0d8ba2" />
<br><br>

**2) Crispy with Labels**<br>
<a href="https://github.com/fabiangreffrath/crispy-doom" target= "_blank">Crispy Doom</a> fullscreen HUD with labels. Features armor type indicator as a bonus. (By default, slot numbers are used in ammo overview. Addons for ammo names are available below, see "Bonus Content".)<br>
<img width="1917" height="328" alt="01_crispy" src="https://github.com/user-attachments/assets/ba56b38b-e02b-4f70-b6fa-2362a598b2f1" />
<br><br>

**3) Nightdive with Labels**<br>
Replaces the <a href="https://static.doomworld.com/pages_media/29_lor1.png" target= "_blank">Nightdive fullscreen HUD</a>. Armor and ammo icons have been removed. In return, ammo overview, arms display and armor type indicator were added.<br>
<img width="1917" height="328" alt="02_nightdive" src="https://github.com/user-attachments/assets/b28e07b3-e1d8-4945-a754-6c528c4ec98c" />
<br><br>

**4) Doom 64**<br>
Imitates the fullscreen HUD from <a href="https://www.nintendoworldreport.com/media/51707/1/5.jpg" target= "_blank">Doom 64</a>. Basically nothing besides the three centered vital stats plus an indicator for armor protection level.<br>
<img width="1917" height="328" alt="03_doom64" src="https://github.com/user-attachments/assets/12446dc2-f1f5-4a8a-952d-c6a5a9cae056" />
*Note: Alignment of Health, Armor and keys will adjust depending on layout type. Transparency effect can be adjusted in woof.cfg (**tran_filter_pct**).*
<br><br>

**5) ﻿Eternity**<br>
Mimicks the fullscreen HUD from the <a href="https://github.com/team-eternity/eternity" target= "_blank">Eternity Engine</a>.<br>
<img width="1917" height="328" alt="04_eternity_enhanced" src="https://github.com/user-attachments/assets/b7c6638d-00b6-416f-8df5-798dd1755581" />
   **I. Enhanced**: Uses original font with different sizes and mugshot. No labels.<br><br>
<img width="1917" height="328" alt="05_eternity_boomified" src="https://github.com/user-attachments/assets/3cec8d62-bb93-49e9-a435-99d94a7eca50" />
   **II. Boomified**: Uses Boom font instead, one size only, no mugshot. Health/Armor icons indicate Berserk/God modes and MegaArmor (colors depend on selected game), taken from the statusbar of <a href="https://doomwiki.org/wiki/Jenesis" target= "_blank">"Jenesis" by Jimmy</a> (with modifications by me).
<br><br>

**6) Boom**<br>
The original <a href="https://doomwiki.org/w/images/thumb/5/53/NDCP-map23-end.png/800px-NDCP-map23-end.png" target= "_blank">Boom HUD</a> with properly aligned keys (ignores custom offsets).<br>
<img width="1917" height="328" alt="06_boomcomp" src="https://github.com/user-attachments/assets/4414f426-05f8-450f-b582-90ea912eeb77" />
   **I. Compact**: Everything grouped on the left side of the screen.<br><br>
<img width="1917" height="328" alt="07_boomdist" src="https://github.com/user-attachments/assets/af056fbb-14a6-476f-b8e2-b03b58d86d9e" />
   **II. Distributed**: Weapon and ammo-related info move to the right side, otherwise the same.
<br><br>

**7) DSDA**<br>
A Boom variant from the <a href="https://github.com/kraflab/dsda-doom" target= "_blank">DSDA-Doom</a> port. All the vital info is grouped on the left side while ammo overview and keys are to the right. (By default, slot numbers are used in ammo overview. Addons for ammo names are available below, see "Bonus Content".) <br>
<img width="1917" height="328" alt="08_dsda-classic" src="https://github.com/user-attachments/assets/363946cf-f1f5-497a-8d99-db8f2b4cbc4f" />
   **I. Classic**: Imitates the original HUD as closely as possible.<br><br>
<img width="1917" height="328" alt="09_dsda-enhanced" src="https://github.com/user-attachments/assets/512a5fd9-b1a6-408b-b402-04e05b7cb0ca" />
   **II. Enhanced**: Adds mugshot and reorganizes ARM/HEL/AMM/WPN widgets on the left side.<br><br>
<img width="1917" height="328" alt="10_dsda-condensed" src="https://github.com/user-attachments/assets/1a179ad2-6f3b-4c47-bd99-03d823a881c9" />
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
