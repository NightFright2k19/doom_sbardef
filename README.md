# SBARDEF HUD MOD FOR WOOF!

The Nightdive port brought the possibility to edit the Doom statusbar and fullscreen HUD via <a href="https://doomwiki.org/wiki/SBARDEF" target= "_blank">SBARDEF</a>. Unfortunately, an editor which is supposed to make statusbar modding a lot easier is still not completed. I couldn't wait for it and went ahead to create the HUDs I wanted/needed. At first I was only after a better version of the Nightdive HUD, but quickly shifted to the Eternity variant and eventually ended up using DSDA Enhanced on a regular basis.<br><br>
**If you want to use any (or all) of these HUDs in a mod of yours, feel free to do so. However, please be fair and credit me for my work. A lot of effort and time has been invested into this project.**<br><br>

**Intended ports:**
- <a href="https://github.com/fabiangreffrath/woof" target= "_blank">Woof!</a> (mod has been primarily developed for this port)<br>
- <a href="https://github.com/MrAlaux/Nugget-Doom" target= "_blank">Nugget Doom</a> (NUGHUD can only be toggled when the "PrBoom+ Hybrid"-style HUD is selected)<br><br>

**How to use:**
- Unzip the archive into your Woof! installation directory. Files will be copied into the proper autoload subdirectories.<br>
- If you are using *extras.wad*, launch Woof! with command line parameter **-noextras**.<br>
- Keep pressing F5 ingame until you get to the HUD you want.<br><br>

**Features:**
- **Vitals**: Health, armor, ammo and keys. For all HUDs.<br>
- **Mugshot**: Featured in Nightdive, Eternity, DSDA Enhanced and PrBoom+ Hybrid.<br>
- **Ammo overview**: Partial in Nightdive, Boom and PrBoom+ (no max amounts), full in Crispy, Eternity and DSDA.<br>
- **Arms**: Available weapons. 2-7 in Crispy, 1-7 in DSDA Enhanced/PrBoom+ Hybrid, otherwise 1-9. Either arranged as a square (Crispy, Nightdive) or a single line (Eternity, Boom, DSDA, PrBoom+). Chainsaw and Super Shotgun shown as "8" and "9" in the Arms panel ("9" not in Doom 1). DSDA Enhanced and PrBoom+ Hybrid work differently: No gray numbers, "8" and "9" are missing, "1" indicates Chainsaw, "3" is for Shotgun and Super Shotgun.<br><br>

**Indicators:**
- **Armor type**: Level of damage absorption. Shown explicitly as percentage in Crispy, Nightdive and Doom 64. Otherwise, armor number is usually recolored (green: 33%, blue: 50%). In PrBoom+ Classic, the armor icon changes instead.<br>
- **Backpack**: Recolored ammo numbers (white to gold/green) and/or doubling max ammo (Crispy, Eternity, DSDA).<br>
- **Berserk mode**: Usually shown as a fully lit "1" in the Arms display (not in DSDA Enhanced/PrBoom+ Hybrid). In PrBoom+ Classic, the Medikit icon is replaced by a Berserk pack. In Eternity, DSDA and PrBoom+ Hybrid, the infinity symbol turns red if fists are selected.<br>
- **God mode**: Mugshot and/or recolored health/armor numbers (gold). Recolored numbers only work with powerups, not cheats.<br>
- **Active ammo/weapon**: Orange numbers in the Arms/WEA/WPN panel and/or ammo overview.<br><br>

**Comparison Features / Indicators:**<br>

| HUD style | Features | Indicators | Notes |
| ----------- | ----------- | ----------- | ----------- |
| Nightdive / Eternity / DSDA Enhanced / PrBoom+ Hybrid  | ++++ | +++++ | All features/indicators included |
| Boom / DSDA Classic | +++ | +++++ | No mugshot |
| PrBoom+ Classic | +++ | ++++ | No mugshot; no god mode |
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

**4) ﻿Eternity Enhanced**<br>
Mimicks the fullscreen HUD from the <a href="https://github.com/team-eternity/eternity" target= "_blank">Eternity Engine</a>, but with mugshot and ammo overview.<br>
![04_eternity](https://github.com/user-attachments/assets/fcdf10b8-b35c-4163-a107-d9ba2d7718ad)
<br><br>

**5) Boom Compact/Distributed**<br>
The original <a href="https://doomwiki.org/w/images/thumb/5/53/NDCP-map23-end.png/800px-NDCP-map23-end.png" target= "_blank">Boom HUD</a> with properly aligned keys (ignores custom offsets).<br>
![05_boomcomp](https://github.com/user-attachments/assets/27d68636-3368-43c0-8d05-6325ded3afdf)
   **Compact:** Everything aligned on the left side of the screen.<br><br>
![06_boomdist](https://github.com/user-attachments/assets/42aa780a-df12-4fc9-adb2-20351023436c)
   **Distributed:** Ammo stats moved to the right side, otherwise identica﻿l.
<br><br>

**6) DSDA Classic/Enhanced**<br>
A Boom variant from the <a href="https://github.com/kraflab/dsda-doom" target= "_blank">DSDA-Doom</a> port. All the vital info is grouped on the left side while ammo overview and keys are to the right. (By default, slot numbers are used in ammo overview. Addons for ammo names are available below, see "Bonus Content".) <br>
![08_dsda-classic](https://github.com/user-attachments/assets/126c5710-80f4-424f-8aec-0a02ee366899)
   **Classic:** Close reproduction of the original HUD.<br><br>
![09_dsda-enhanced](https://github.com/user-attachments/assets/a71b94e2-7092-4db6-b838-05baa22c6a77)
   **Enhanced:** With mugshot, reorganized vital stats and compressed WPN line ("1" indicates Chainsaw, "3" only turns green in Doom II if both shotguns are owned).
<br><br>

**7) PrBoom+ Classic/Hybrid**<br>
Taken from the <a href="https://github.com/coelckers/prboom-plus/issues" target= "_blank">PrBoom+</a> port, this Boom variant has weapon info and keys on the left while health and armor move to the right, more emphasized by the Doom menu font. The icons change depending on whether you found the Berserk Pack or the Blue Armor. Ammo overview has been added.<br>
![10_prboom](https://github.com/user-attachments/assets/8158a51f-a86c-464d-ad57-6ac913feb8ba)
   **Classic:** Close reproduction of the original HUD.<br>
<em>Note: Some mods use different sprite sizes. In such cases, manual adjustments to related HUD coordinates/graphics are required.</em><br><br>
![11_prboom-hybrid](https://github.com/user-attachments/assets/b43ad058-fc34-47c2-972f-9600618547d4)
   **Hybrid:** Mix of DSDA Enhanced, PrBoom+ and some custom elements.
<br><br>

**BONUS CONTENT**<br><br>
I. Addons (load externally, i.e. NOT via autoload - **currently not functional**):
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/ammo_names.pk3" target= "_blank">Ammo Names</a> (Names instead of slot numbers for ammo labels in Crispy and DSDA)
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/gradient.pk3" target= "_blank">Boom Font with Gradient Colors</a> (Check for a <a href="https://i.imgur.com/qdEqwTA.png" target= "_blank">preview here</a>)
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/gradient_names.pk3" target= "_blank">Boom Font with Gradient Colors + Ammo Names</a> (Combines both addons)
<br>
II. Developer Kit (commented code for all HUDs):<br>
<a href="https://github.com/NightFright2k19/doom_sbardef/tree/main/docs/sbardef" target= "_blank">Github subpage</a> (Useful for anybody who wants to start with SBARDEF coding on their own)
