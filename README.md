# SBARDEF HUD MOD FOR WOOF!

The Nightdive port brought the possibility to edit the Doom statusbar and fullscreen HUD via <a href="https://doomwiki.org/wiki/SBARDEF" target= "_blank">SBARDEF</a>. Unfortunately, an editor which is supposed to make statusbar modding a lot easier is still not completed. I couldn't wait for it and went ahead to create the HUDs I wanted/needed. At first I was only after a better version of the Nightdive HUD, but quickly shifted to the Eternity variant and eventually ended up using DSDA Enhanced on a regular basis.<br><br>
**If you want to use any (or all) of these HUDs in a mod of yours, feel free to do so. However, please be fair and credit me for my work. A lot of effort and time has been invested into this project.**<br><br>

**Intended ports:**
- <a href="https://github.com/fabiangreffrath/woof" target= "_blank">Woof!</a> (mod has been primarily developed for this port)<br>
- <a href="https://github.com/MrAlaux/Nugget-Doom" target= "_blank">Nugget Doom</a> (NUGHUD can only be toggled when the "PrBoom+"-style HUD is selected)<br><br>

**How to use:**
- Unzip the archive into your Woof! installation directory. Files will be copied into the proper autoload subdirectories.<br>
- If you are using *extras.wad*, launch Woof! with command line parameter **-noextras**.<br>
- Keep pressing F5 ingame until you get to the HUD you want.<br><br>

**Features:**
- **Vitals**: Health, armor, ammo and keys. For all HUDs.<br>
- **Mugshot**: Featured in Nightdive, Eternity Enhanced and DSDA Enhanced/Condensed.<br>
- **Ammo overview**: Partial in Nightdive, Boom and PrBoom+ (no max amounts), full in Crispy, Eternity and DSDA.<br>
- **Arms**: Available weapons. 2-7 in Crispy, 1-7 in DSDA Condensed, otherwise 1-9. Either arranged as a square (Crispy, Nightdive) or a single line (Eternity, Boom, DSDA, PrBoom+). Chainsaw and Super Shotgun shown as "8" and "9" in the Arms panel ("9" not in Doom 1). DSDA Enhanced splits the display into three slot-grouped panels (1-2-8 / 3-4-9 / 5-6-7). A switch between panels occurs whenever a weapon of a different panel is selected. DSDA Condensed indicates Chainsaw through a lit "8" in slot 1 ("1" with Berserk) and possession of both shotguns with a fully lit "3".<br><br>

**Indicators:**
- **Armor type**: Level of damage absorption. Shown explicitly as percentage in Crispy, Nightdive and Doom 64. Otherwise, armor number is usually recolored (green: 33%, blue: 50%). In Eternity Boomity and PrBoom+, the armor icon changes instead.<br>
- **Backpack**: Recolored ammo numbers (white to gold/green) and/or doubling max ammo (Crispy, Eternity, DSDA Classic/Enhanced).<br>
- **Berserk mode**: Usually shown as a fully lit "1" in the Arms display. The green cross icon in Eternity Boomity turns red. In PrBoom+, the Medikit icon is replaced by a Berserk pack. In Eternity and DSDA, the symbol (infinity loop or "N/A") turns red if fists are selected.<br>
- **God mode**: Mugshot and/or recolored health/armor numbers (gold). Recolored numbers only work with powerups, not cheats. In Eternity Boomity, icons turn golden, too.<br>
- **Active ammo/weapon**: Orange numbers in the Arms/WEA/WPN panel and/or ammo overview.<br><br>

**Comparison Features / Indicators:**<br>

| HUD style | Features | Indicators | Notes |
| ----------- | ----------- | ----------- | ----------- |
| Nightdive<br>Eternity I<br>DSDA II/III | ++++ | +++++ | All features/indicators included |
| Boom<br>Eternity II<br>DSDA I<br>PrBoom+ | +++ | +++++ | No mugshot |
| Crispy | +++ | ++ | No mugshot; armor type and backpack only |
| Doom 64 | + | + | Vitals only; armor type only; always centered |
<br>
Available variants:<br><br>

**1) Crispy with Labels**<br>
<a href="https://github.com/fabiangreffrath/crispy-doom" target= "_blank">Crispy Doom</a> fullscreen HUD with labels. Features armor type indicator as a bonus. (By default, slot numbers are used in ammo overview. Addons for ammo names are available below, see "Bonus Content".)<br>
![01_crispy](https://github.com/user-attachments/assets/211ea2c6-09a0-40d1-b141-076b6f176029)
<br><br>

**2) Nightdive with Labels**<br>
Replaces the <a href="https://static.doomworld.com/pages_media/29_lor1.png" target= "_blank">Nightdive fullscreen HUD</a>. Armor and ammo icons have been removed since they often end up being badly aligned/too large. Ammo overview, arms display and armor type indicator have been added.<br>
![02_nightdive](https://github.com/user-attachments/assets/b9d18324-8a8b-444a-a1f6-f10aa261e4bc)
<br><br>

**3) Doom 64**<br>
Imitates the fullscreen HUD from <a href="https://www.nintendoworldreport.com/media/51707/1/5.jpg" target= "_blank">Doom 64</a>. Basically nothing besides the three centered vital stats plus an indicator for armor protection level.<br>
![03_doom64](https://github.com/user-attachments/assets/f5cfbeff-0e87-498f-bdd2-c342de9346ae)
*Note: Alignment of Health, Armor and keys will adjust depending on whether the stats widget is shown or not.*
<br><br>

**4) ﻿Eternity**<br>
Mimicks the fullscreen HUD from the <a href="https://github.com/team-eternity/eternity" target= "_blank">Eternity Engine</a>.<br>
![04_eternity](https://github.com/user-attachments/assets/fcdf10b8-b35c-4163-a107-d9ba2d7718ad)
   **I. Enhanced**: Uses original font with different sizes and mugshot. No labels.<br><br>
![05_boomity](https://github.com/user-attachments/assets/4ffa2d8d-c6ea-47a6-9f12-02c67cef1d12)
   **II. Boomity**: Uses Boom font instead, one size only, no mugshot. Health/Armor icons indicate Berserk/God modes and MegaArmor (colors depend on selected game), taken from the statusbar of <a href="https://doomwiki.org/wiki/Jenesis" target= "_blank">"Jenesis" by Jimmy</a> (with modifications by me).
<br><br>

**5) Boom**<br>
The original <a href="https://doomwiki.org/w/images/thumb/5/53/NDCP-map23-end.png/800px-NDCP-map23-end.png" target= "_blank">Boom HUD</a> with properly aligned keys (ignores custom offsets).<br>
![05_boomcomp](https://github.com/user-attachments/assets/27d68636-3368-43c0-8d05-6325ded3afdf)
   **I. Compact**: Everything grouped on the left side of the screen.<br><br>
![07_boomdist](https://github.com/user-attachments/assets/b6042ffe-b44b-498d-936c-0402deef7aba)
   **II. Distributed**: Weapon and ammo-related info move to the right side, otherwise the same.
<br><br>

**6) DSDA**<br>
A Boom variant from the <a href="https://github.com/kraflab/dsda-doom" target= "_blank">DSDA-Doom</a> port. All the vital info is grouped on the left side while ammo overview and keys are to the right. (By default, slot numbers are used in ammo overview. Addons for ammo names are available below, see "Bonus Content".) <br>
![08_dsda-classic](https://github.com/user-attachments/assets/126c5710-80f4-424f-8aec-0a02ee366899)
   **I. Classic**: Imitates the original HUD as closely as possible.<br><br>
![09_dsda-enhanced](https://github.com/user-attachments/assets/a66538ae-9e3a-4d80-9fd9-88f0f48015c4)
   **II. Enhanced**: Adds mugshot and reorganizes ARM/HEL/AMM/WPN widgets on the left side.<br><br>
![09_dsda-condensed](https://github.com/user-attachments/assets/4bf8e504-c130-4902-a230-e837e3f94434)
   **III. Condensed**: Widgets on the left are all aligned in a single line. Ammo overview is minimized and mugshot moves to the right side.<br><br>

**7) PrBoom+**<br>
Taken from the <a href="https://github.com/coelckers/prboom-plus/issues" target= "_blank">PrBoom+</a> port, this Boom variant has weapon info and keys on the left while health and armor move to the right, more emphasized by the Doom menu font. The icons change depending on whether you found the Berserk Pack or the Blue Armor. Ammo overview and God Mode indicator (temporary mugshot) have been added.<br>
![10_prboom](https://github.com/user-attachments/assets/8158a51f-a86c-464d-ad57-6ac913feb8ba)
<em>Note: Some mods use different sprite sizes. In such cases, manual adjustments to related HUD coordinates/graphics are required.</em>
<br><br>

**BONUS CONTENT**<br><br>
I. Addons (load externally, i.e. NOT via autoload - **currently not functional**):
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/ammo_names.pk3" target= "_blank">Ammo Names</a> (Names instead of slot numbers for ammo labels in Crispy and DSDA)
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/gradient.pk3" target= "_blank">Boom Font with Gradient Colors</a> (Check for a <a href="https://i.imgur.com/qdEqwTA.png" target= "_blank">preview here</a>)
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/gradient_names.pk3" target= "_blank">Boom Font with Gradient Colors + Ammo Names</a> (Combines both addons)
<br>
II. Developer Kit (commented code for all HUDs):<br>
<a href="https://github.com/NightFright2k19/doom_sbardef/tree/main/docs/sbardef" target= "_blank">Github subpage</a> (Useful for anybody who wants to start with SBARDEF coding on their own)
