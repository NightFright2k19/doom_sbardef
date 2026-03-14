# SBARDEF HUD MOD FOR WOOF!

The Nightdive port brought the possibility to edit the Doom statusbar and fullscreen HUD via <a href="https://doomwiki.org/wiki/SBARDEF" target= "_blank">SBARDEF</a>. I couldn't wait for the availability of a proper editor and went ahead to create the HUDs I wanted, using nothing but Notepad.<br><br>
**If you want to use any (or all) of these HUDs in a mod of yours, feel free to do so. However, please be fair and credit me for my work. A lot of effort and time has been invested into this project.**<br><br>

**Intended ports:**
- <a href="https://github.com/fabiangreffrath/woof" target= "_blank">Woof!</a> (mod has been primarily developed for this port)<br>
- <a href="https://github.com/MrAlaux/Nugget-Doom" target= "_blank">Nugget Doom</a> (NUGHUD can only be toggled when the "PrBoom+ Balanced"-style HUD is selected)<br><br>

**How to use:**
- Unzip the archive into your Woof! installation directory. Files will be copied into the proper autoload subdirectories.<br>
- If you are using *extras.wad*, launch Woof! with command line parameter **-noextras**.<br>
- Keep pressing F5 ingame until you get to the HUD you want.<br>
- Note: Woof! does **not** support <a href="https://doomwiki.org/wiki/ID24HACKED" target= "_blank">ID24HACKED</a>, so no extra weapon slots and fifth ammo type with PWADs requiring *id24res.wad*.<br><br>

**CORE Features (provided by original HUD):**
<ul>
  <li><b>Vitals</b>: Health, armor, ammo and keys.<br>- HUDs: All</li>
  <li><b>Mugshot</b>: Animated face.<br>- HUDs: Classic Plus, Nightdive I/III-V, Eternity I, DSDA II/III</li>
  <li><b>Ammo overview</b>: Amount of ammo available for each weapon.<br>- Current/total: Classic Plus, Crispy Plus, DSDA I+II<br>- Current: Nightdive II-V, Doom 64 II, Trinity, Eternity, Boom II-IV, DSDA III<br>- Bars: Nightdive I</li>
  <li><b>Arms</b>: Available weapons.<br>- 1-7: DSDA III (8/9 if selected)<br>- 1-9: Classic Plus, Crispy Plus, Nightdive II-IV, Eternity, Boom, DSDA I+II, PrBoom+</li>
  <li><b>Backpack</b>: Powerup which doubles ammo amount.<br>- Doubled totals: Classic Plus, Crispy Plus, Eternity, Boom, DSDA I+II, PrBoom+<br>- Color: Nightdive II-V, Doom 64 II, Trinity, Eternity, Boom, DSDA, PrBoom+<br>- Bars: Nightdive I</li>
  <li><b>God mode</b>: Shows if player is invincible, either through powerup or cheat.<br>- Mugshot: Classic Plus, Nightdive I/III-V, Eternity I, DSDA II+III<br>- Icon: Eternity II, PrBoom+ II<br>- Label: Crispy Plus, Nightdive II-V, Doom 64, Trinity, Boom, DSDA, PrBoom+ I<br>- Color: Nightdive IV+V, Doom 64 II, Trinity II, Eternity, Boom, DSDA</li>
</ul>

**EXTRA Features (not provided by original HUD):**
<ul>
  <li><b>Armor type</b>: Level of damage absorption.<br>- Mugshot frame: Classic Plus<br>- Icon: Nightdive I+II, Eternity II, PrBoom+<br>- Percentage: Crispy Plus, Nightdive III<br>- Bracket: Doom 64 I, Trinity I<br>- Color: Nightdive IV+V, Doom 64 II, Trinity II, Eternity, Boom, DSDA</li>
  <li><b>Berserk</b>: Powerup which increases punching power with Fists.<br>- Icon: Nightdive I/II/V, Eternity II, PrBoom+<br>- Lit "1": Classic Plus, Crispy Plus, Nightdive II-IV, Eternity, Boom, DSDA I+II, PrBoom+<br>- Red "N/A" Label: Eternity II, DSDA</li>
  <li><b>Chainsaw/Super Shotgun</b>: Whether secondary weapons for slots 1 or 3 are owned.<br>- 8/9: Classic Plus, Crispy Plus, Nightdive II-IV, Eternity, Boom, DSDA I+II, PrBoom+<br>- Lit "1"/Fully lit "3": DSDA III</li>
  <li><b>Active ammo/weapon</b>: Currently selected weapon and fitting ammo.<br>- Full: Nightdive I-IV, Eternity, Boom IV, DSDA<br>- Ammo only: Nightdive V, Doom 64 II, Trinity II, Boom III<br>- Weapons only: Boom I, PrBoom+</li>
</ul>

**SBARDEF v1.2.0 only:**
<ul>
  <li><b>Powerup timers</b>: Shows bars for remaining time of Light Amplification Visor (LIT), Invisibility Sphere (VIS), Radiation Suit (RAD) and Invulnerability (GOD) in the top right corner. For all HUDs (except for vanilla status bar).</li>
  <li><b>Kills/Secrets progress bars</b>: Alternate way of showing K/S stats instead of the K/I/S widget. Level stats widget must be set to "Off" or "Automap". Only available in Boom II.</li>
</ul><br>

**Comparison Features / Indicators:**<br>

| HUD | Core | Extras |  Score | Details 
| ----------- | ----------- | ----------- | ----------- | ----------- |
| Nightdive III/IV<br>Eternity I<br>DSDA II/III | ++++++ | ++++ | 10 / 10 | Core: All<br>Extras: All |
| Classic Plus | ++++++ | +++ | 9 / 10 | Core: All<br>Extras: No active Ammo/Weapon |
| Nightdive II<br>Eternity II<br>Boom III+IV<br>DSDA I | +++++ | ++++ | 9 / 10 | Core: No Mugshot<br>Extras: All |
| Crispy Plus<br>Boom II | +++++ | +++ | 8 / 10 | Core: No Mugshot<br>Extras: No active Ammo/Weapon |
| Boom I<br>PrBoom+ | ++++ | ++++ | 8 / 10 | Core: Vitals, Arms, Backpack, God mode<br>Extras: All |
| Nightdive I/V | +++++ | +++ | 8 / 10 | Core: No Arms<br>Extras: No Chainsaw/SSG |
| Doom 64 II<br>Trinity II | ++++ | ++ | 6 / 10 | Core: Vitals, Ammo overview, Backpack, God mode<br>Extras: Armor type, active ammo |
| Trinity I | ++++ | + | 5 / 10 | Core: Vitals, Ammo overview, Backpack, God mode<br>Extras: Armor type |
| Doom 64 I | ++ | + | 3 / 10 | Core: Vitals, God mode<br>Extras: Armor type |
<br>
Available variants:<br><br>

**1) Classic Plus**<br>
Like the vanilla status bar, but with transparency. There are also indicators for Chainsaw/Super Shotgun (ARMS: "8" and "9") and Berserk (ARMS: "1"). There's also a small frame around the mugshot telling you which armor type is used (green: 33%, blue: 50%). Widescreen STBAR lumps are supported.<br>
![Screenshot](screenshots/01_classic-plus.png)
<br><br>

**2) Crispy Plus**<br>
<a href="https://github.com/fabiangreffrath/crispy-doom" target= "_blank">Crispy Doom</a> fullscreen HUD with labels. With additional indicators for Berserk, Chainsaw/Super Shotgun, god mode and armor type. Dynamic ammo label with the "Ammo Names" addon. (By default, slot numbers are used in ammo overview. Addons for ammo names are available below, see "Bonus Content".)<br>
![Screenshot](screenshots/02_crispy-plus.png)
<br><br>

**3) Nightdive**<br>
Replaces the default <a href="https://static.doomworld.com/pages_media/29_lor1.png" target= "_blank">Nightdive fullscreen HUD</a>. Ammo overview, arms display and armor type indicator were added (where possible).<br>
![Screenshot](screenshots/03_nightdive-plus.png)
   **I. Plus**: Icons and STTNUM numbers in a single row. Bonus features: Ammo overview meters (four white bars in the bottom right corner) with backpack indicator, Berserk indicator (Berserk pack icon shown in ammo area if fists are selected), Armor icon hidden unless some armor is owned.<br><br>
![Screenshot](screenshots/04_nightdive-stacked.png)
   **II. Stacked**: Focuses on icons instead of labels. Berserker mode indicated by switching health icon. A small label is shown inside the health icon in God mode. Ammo overview hides number for selected weapon.<br>
<em>Note: Some mods use sprites with different sizes. In such cases, alignment of icons may be off.</em><br><br>
![Screenshot](screenshots/05_nightdive-labels.png)
   **III. Labels**: Vitals use the STTNUM font. ARMS display arranged as a square, ammo overview minimized. Dynamic ammo label with the "Ammo Names" addon.<br><br>
![Screenshot](screenshots/06_nightdive-meters.png)
   **IV. Meters**: Ammo overview taken from the DSDA HUD group (with ammo type meters); ARMS widget is a single line.<br><br>
![Screenshot](screenshots/07_nightdive-invictus.png)
   **V. Invictus**: 'Meters' variant with key bar replacing the ARMS widget and big ammo number. Dynamic ammo label with the "Ammo Names" addon.
<br><br>

**4) Doom 64**<br>
Imitates the fullscreen HUD from <a href="https://www.nintendoworldreport.com/media/51707/1/5.jpg" target= "_blank">Doom 64</a>. Alignment of elements will adjust depending on "Hud Anchoring" setting.<br>
![Screenshot](screenshots/08_doom64.png)
  **I. Original**: Three centered vital stats plus indicators for armor type and god mode. <br><br>
![Screenshot](screenshots/09_boom64.png)
  **II. Boom 64**: Like 'Original', but uses Boom font and its colorization. With ammo overview, active ammo and backpack indicator.
<br><br>

**5) Trinity**<br>
Doom 64 variant with STTNUM vitals arranged on the left side, keeping weapon view unobstructed.<br>
![Screenshot](screenshots/10_trinity_mono.png)
  **I. Mono**: Colorization is avoided (only white, gray and black), making this HUD extremely robust if combined with any custom palettes from PWADs. Alignment of elements will adjust depending on "Hud Anchoring" setting. Dynamic ammo label with the "Ammo Names" addon.<br><br>
![Screenshot](screenshots/11_trinity_color.png)
  **II. Color**: Like 'Mono', but with Boom numbers and colorization (same as Boom 64).
  <br><br>

**6) ﻿Eternity**<br>
Mimicks the fullscreen HUD from the <a href="https://github.com/team-eternity/eternity" target= "_blank">Eternity Engine</a>.<br>
![Screenshot](screenshots/12_eternity_enhanced.png)
   **I. Enhanced**: Uses original font with different sizes and mugshot. No labels (besides ammo overview).<br><br>
![Screenshot](screenshots/13_eternity_boomified.png)
   **II. Boomified**: Uses Boom font instead, one size only, no mugshot. Health/Armor icons indicate Berserk/God modes and MegaArmor (colors depend on selected game), taken from the status bar of <a href="https://doomwiki.org/wiki/Jenesis" target= "_blank">"Jenesis" by Jimmy</a>.
<br><br>

**7) Boom**<br>
The original <a href="https://doomwiki.org/w/images/thumb/5/53/NDCP-map23-end.png/800px-NDCP-map23-end.png" target= "_blank">Boom HUD</a> with properly aligned keys (ignores custom offsets).<br>
![Screenshot](screenshots/14_boom-comp.png)
   **I. Compact**: Everything grouped on the left side of the screen.<br><br>
![Screenshot](screenshots/15_boom-supply.png)
   **II. Supply**: 'Compact' variant with more emphasis on ammo info. The SUP widget shows ammo of all weapons (color-coded, depending on amount in 25% steps: red/orange/gold/green) while the WEA widget won't show active weapons any more, but rather indicate through color how much ammo you still have for each weapon (like SUP). Keys are stacked vertically in the bottom right corner.<br><br>
![Screenshot](screenshots/16a_boom-remix.png)
![Screenshot](screenshots/16b_boom-remix2.png)
   **III. Remix**: Merges 'Compact' features with ammo overview from Nightdive IV/V. Alternate display mode (second screen): Arms widget (WEA) is replaced with two progress bars for secrets and kills (level stats widget must be set to "Off" or "Automap").<br><br>
![Screenshot](screenshots/17_boom-split.png)
   **IV. Split**: Weapon and ammo-related info move to the right side. Ammo overview taken from 'Supply', otherwise the same as 'Compact'.
<br><br>

**8) DSDA**<br>
Boom variant from the <a href="https://github.com/kraflab/dsda-doom" target= "_blank">DSDA-Doom</a> port. All the vital info is grouped on the left side while ammo overview and keys are to the right. (By default, slot numbers are used in ammo overview. Addons for ammo names are available below, see "Bonus Content".) <br>
![Screenshot](screenshots/18_dsda-standard.png)
   **I. Standard**: Imitates the original HUD as closely as possible.<br><br>
![Screenshot](screenshots/19_dsda-enhanced.png)
   **II. Enhanced**: Adds mugshot and reorganizes vitals/WPN widgets on the left side.<br><br>
![Screenshot](screenshots/20_dsda-condensed.png)
   **III. Condensed**: Widgets on the left are all aligned in a single line. Ammo overview is minimized and mugshot moves to the right side.<br><br>

**9) PrBoom+**<br>
Taken from the <a href="https://github.com/coelckers/prboom-plus/issues" target= "_blank">PrBoom+</a> port, this Boom variant has weapon info and keys on the left while health and armor move to the right, more emphasized by the Doom menu font. The icons change depending on whether you found the Berserk Pack or the Blue Armor. God Mode indicator (label on top of health icon) has been added.<br>
![Screenshot](screenshots/21_prboom-standard.png)
   **I. Standard**: Imitates the original HUD as closely as possible: 'Boom Compact' with Health and Armor isolated on the right side.<br>
<em>Note: Some mods use sprites with different sizes. In such cases, alignment of icons may be off.</em>
<br><br>
![Screenshot](screenshots/22_prboom-balanced.png)
   **II. Balanced**: Uses more neutral/universal icons (from 'Eternity Boomified') and splits them, using a double-sized Boom font. No colorization here (only in the WEA widget for selected weapon).<br><br>

**BONUS CONTENT**<br><br>
I. Addons (load externally, i.e. NOT via autoload - **currently not all are functional**):
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/ammo_names.pk3" target= "_blank">Ammo Names</a> (Names instead of slot numbers for ammo labels in Crispy and DSDA)
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/gradient.pk3" target= "_blank">Boom Font with Gradient Colors</a> (Check for a <a href="https://i.imgur.com/qdEqwTA.png" target= "_blank">preview here</a>)
- <a href="https://github.com/NightFright2k19/doom_sbardef/blob/main/extras/gradient_names.pk3" target= "_blank">Boom Font with Gradient Colors + Ammo Names</a> (Combines both addons)
<br>
II. Developer Kit (commented code for all HUDs):<br>
<a href="https://github.com/NightFright2k19/doom_sbardef/tree/main/docs/sbardef" target= "_blank">Github subpage</a> (Useful for anybody who wants to start with SBARDEF coding on their own)
