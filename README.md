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
- **Mugshot**: Featured in Nightdive, Eternity and Essentials.<br>
- **Ammo overview**: Partial in Nightdive, Boom and PrBoom+ (no max amounts), full in Crispy, Eternity and DSDA.<br>
- **Arms**: Available weapons. 2-7 in Crispy, otherwise 1-9. Either arranged as a square (Crispy, Nightdive) or a single line (Eternity, Boom, DSDA, PrBoom+). Chaingun and Super Shotgun shown as "8" and "9" in the Arms panel ("9" not in Doom 1).<br><br>

**Indicators:**
- **Armor type**: Level of damage absorption. Shown explicitly as percentage in Crispy, Nightdive and Doom 64. Otherwise, armor number is usually recolored (green: 33%, blue: 50%). In PrBoom+, the armor icon changes instead.<br>
- **Backpack**: Recolored ammo numbers (usually gold) and/or doubling max ammo.<br>
- **Berserk mode**: Usually shown as a fully lit "1" in the Arms display. In PrBoom+, the Medikit icon is replaced by a Berserk pack. In Eternity and Essentials, the infinity symbol turns red if fists are selected.<br>
- **God mode**: Mugshot and/or recolored health/armor numbers (gold). Recolored numbers only work with powerups, not cheats.<br>
- **Active ammo/weapon**: Red numbers in the Arms panel and/or ammo overview.<br><br>

**Comparison Features / Indicators:**<br>

| HUD style | Features | Indicators | Notes |
| ----------- | ----------- | ----------- | ----------- |
| Nightdive / Eternity  | ++++ | +++++ | All features/indicators included |
| Boom / DSDA | +++ | +++++ | No mugshot |
| PrBoom+ | +++ | ++++ | No mugshot; no god mode |
| Essentials | ++ | ++++ | No arms or ammo overview; no active ammo/weapon |
| Crispy | +++ | ++ | No mugshot; armor type and backpack only |
| Doom 64 | + | + | Vitals only; armor type only; always centered |

<br>
Available variants:<br><br>

**1) Crispy with Labels**<br>
Crispy HUD with labels. Features armor type indicator as a bonus. I've de﻿cided to replace the labels for the ammo types with weapon slot numbers to provide maximum compatibility with mods which change ammo names.<br>
![01_crispy](https://github.com/user-attachments/assets/2f9fcffb-7085-495b-be1f-c8e53d6466d2)
<br>

**2) Nightdive-Like with Labels**<br>
Replaces the Nightdive fullscreen HUD. To allow max compatibility with other (P/I)WADs, armor and ammo icons have been removed since they often end up being badly aligned/too large/etc. A few features were added, mainly ammo overview and weapons display.<br>
![02_nightdive](https://github.com/user-attachments/assets/41659919-d3a6-4e76-9470-b27232f91713)
<br>

**3) Doom 64-Like**<br>
Imitates the fullscreen HUD from <a href="https://www.nintendoworldreport.com/media/51707/1/5.jpg" target= "_blank">Doom 64</a>. Basically nothing besides the three centered vital stats plus an indicator for Armor protection level.<br>
![03_doom64](https://github.com/user-attachments/assets/76d53143-b76f-442a-9c0d-38317e0929ad)
<br>

**4) ﻿Eternity Enhanced**<br>
Mimicks the fullscreen HUD from the <a href="https://github.com/team-eternity/eternity" target= "_blank">Eternity Engine</a>, but with mugshot and ammo overview.<br>
![04_eternity](https://github.com/user-attachments/assets/ea65df93-3f0e-4bd0-ad0f-9b1c8a8ce350)
<br>

**5) ﻿Essentials**<br>
Focuses on the basic info provided by the original Nightdive fullscreen HUD (plus a few extras) to save more screen space.<br>
![05_essentials](https://github.com/user-attachments/assets/19c4ace6-f706-4f76-9165-c3e70d97c832)
<br>

**6) Boom-Like Compact/Distributed**<br>
While not imitating the original Boom HUD 100% faithfully, this one comes with a bonus feature: Properly aligned keys (regardless which custom offsets are used in a PWAD).<br>
![06_boom-compact](https://github.com/user-attachments/assets/bc0a7360-a7b6-42a8-850c-afb3e775797a)
   **Compact:** Everything aligned on the left side of the screen.<br><br>
![07_boom-distributed](https://github.com/user-attachments/assets/f9b48c0b-3603-4863-aab5-1cc4a5b1f72c)
   **Distributed:** Ammo stats moved to the right side, otherwise identica﻿l.
<br>

**7) DSDA-Like**<br>
A Boom variant from the <a href="https://github.com/kraflab/dsda-doom" target= "_blank">DSDA-Doom</a> port. All the vital info is grouped on the left side while ammo overview and keys are to the right.<br>
![08_dsda](https://github.com/user-attachments/assets/d4e873f5-00f1-4afb-b5e3-7ed0c63ad066)
<br>

**8) PrBoomPlus-Like**<br>
Taken from the <a href="https://github.com/coelckers/prboom-plus/issues" target= "_blank">PrBoom+</a> port, this Boom variant has weapon info and keys on the left while Health and Armor move to the right, getting more emphasized through the original Doom font. The icons change depending on whether you found the Berserk Pack or the Blue Armor. Ammo overview has been added to provide more info.<br>
![09_prboom+](https://github.com/user-attachments/assets/375899ce-c7dc-4406-b94c-9d391b95bad5)

