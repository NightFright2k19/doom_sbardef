# SBARDEF HUD MOD FOR WOOF!

The Nightdive port brought the possibility to edit the Doom statusbar and fullscreen HUD via <a href="https://doomwiki.org/wiki/SBARDEF" target= "_blank">SBARDEF</a>. Unfortunately, an editor which is supposed to make statusbar modding a lot easier is still not completed. I couldn't wait for it and went ahead to create the HUDs I wanted/needed.

**<a href="https://github.com/fabiangreffrath/woof" target= "_blank">Woof!</a> is the intended port for this mod (as there are currently no other "non-Nightdive" ports which support SBARDEF).**<br><br>

How to use:
- Unzip the archive into your Woof! installation directory. Files will be copied into the proper autoload subdirectories.
- Launch Woof! and keep pressing F5 until you get to the HUD you want.<br><br>

Available variants:

**1) Nightdive-Like with Labels**<br>
Replaces the Nightdive fullscreen HUD. To allow max compatibility with other (P/I)WADs, armor and ammo icons have been removed since they often end up being badly aligned/too large/etc. There are a few more features that were missing before, mainly ammo overview and weapons display.<br><br>
   ![nightdive_doom](https://github.com/user-attachments/assets/afdae6b6-5975-42b1-a227-3ab43c0dc97e)
   ![nightdive_hacx](https://github.com/user-attachments/assets/7db04c46-b59d-4e66-80a9-e9c61da69b3d)
    [HacX comes with an extra font since the standard numbers look like absolute trash in fullscreen mode.]
   
   Indicators:
   - Armor type: Green 33% / blue 50% in "Armor" label
   - Berserker mode: "1" in ARMS panel turns golden
   - Chainsaw/SSG possession: "8" and "9" in ARMS panel lit
   - Backpack found: Numbers in ammo overview turn golden<br><br>

**2) ﻿Essentials Minimal/Compact/Distributed**<br>
K﻿eeps the mugshot, but focuses on the basic info provided by the original Nightdive fullscreen HUD to save more screen space. Numbers are taken from the <a href="https://github.com/team-eternity/eternity" target= "_blank">Eternity Engine</a>.<br><br>
   ![essentials_minimal](https://github.com/user-attachments/assets/53dd8467-1e21-49b7-a792-224274a9c19f)
   **Minimal:** All relevant info aligned on the left side of the screen, similar to Boom Compact.<br><br>
   ![essentials_compact](https://github.com/user-attachments/assets/debb7289-8f09-45eb-966a-c09e5fd5df07)
   **Compact:** For those who ﻿need all the info missing in Minimal, i.e. weapons + ammo overvi﻿ew.<br><br>
   ![essentials_distributed](https://github.com/user-attachments/assets/23b69c51-6c15-4d5c-a9ae-1c18df3f1e1d)
   **Distributed:** Like Compact, but with weapo﻿ns﻿ and ammo overview shifted to the right scr﻿een ﻿corner﻿.
   
   Indicators:
   - Armor type: Armor number green (33%) or blue (50%)
   - Berserker mode: Infinity symbol turns﻿ red when fists are selected
   - Chainsaw/SSG possession (Compact/Distributed only): "1" and "3" in ARMS line lit/golden (Doom 2: gray if only SG or SSG owned, golden if both owned)
   - Backpack found: Ammo number turns golden
   - Invulnerability (powerup only): Health + Armor numbers turn golden<br><br>
   
**3) Crispy with Labels**<br>
Crispy HUD with labels - and that's it. No other changes. I've de﻿cided to replace the labels for the ammo types with weapon slot numbers to provide maximum compatibility with mods which change ammo names. (HacX uses the enhanced font from the Nightdive-like﻿ HUD.)<br><br>
   ![crispy_labels](https://github.com/user-attachments/assets/642b3baf-b33e-4525-b78c-b95557d5f74b)<br><br>

**4) Boom-Like Compact/Distributed**<br>
Lovers of the old Boom HUD may know and appreciate this one. Not exactly imitating the original by 100%, but with a bonus feature: Properly aligned keys (regardless which custom offsets are used in a PWAD).<br><br>
   ![boom_compact](https://github.com/user-attachments/assets/50924c5e-878a-4646-ba29-ec36ff16349f)
   **Compact:** Everything aligned on the left side of the screen.<br><br>
   ![boom_distributed](https://github.com/user-attachments/assets/0901317c-39f3-4c44-9a49-657049b68160)
   **Distributed:** Ammo stats moved to the right side. Otherwise identica﻿l functions/features.
   
   Indicators:
   - Armor type: ARM number green (33%) or blue (50%)
   - Berserker mode: "1" in WEP turns green
   - Chainsaw/SSG possession: "8" and "9" in WEP lit
   - Backpack found: MUN numbers turn golden
   - Invulnerability (powerup only): Health + Armor numbers turn golden
   - Active ammo type: Ammo number highlighted in red


