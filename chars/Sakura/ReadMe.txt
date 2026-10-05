 ________________________________
| Sakura Kasugano by DeathScythe |
 ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
		12/April/2023

 - crepa.neocities.org -

		----------

Customized version of Sakura Kasugano, for MUGEN 1.0.
Based on her Capcom VS SNK 2 appearance.
Customizable options, including alternate hitsparks and choosing between Custom
Combo or MAX Mode. Open "Config.txt" for info.
Two modes: Normal and Dark.
Many Hyper Portraits and Big Portraits.
Special intros:
	Special intro against Jmorphman's Shingo.
	Special intro against Yuri, Karin, Dan and Athena.
	Special intro against my Akuma (both Normal and Dark mode)
Special Winpose using Shun Goku Satsu.

		----------

COMMENTS:

Same thing as my other chars, I wasn't happy with the existing Sakuras and made my own. :)

This creation is opensource, you can take whatever you want from it, just give
me credit, and give credit to people who I took resources from, see "SPECIAL
THANKS" near the end of this document to know more.

		----------

MODES:

This character has two different modes:

Normal Sakura
- Based on her CvS2 appearance, with bits from SFIV and SFV
- Does normal damage
- Can perform EX moves
- Has normal defense

Dark Sakura
- Based on her versus series appearances (MSHxSF and MvC2)
- Moves faster and has different properties on special moves
- Does more damage than Normal Sakura
- Can not perform EX moves
- Has lower defense

Note: If controlled by the AI, defense levels have no effect. This means that
she has normal defense, much like in official Capcom games.


Sakura.def:
Both chars in one file. Hold start to choose Dark Sakura (palettes 7 ~ 12)

NormalSakura.def:
Only Normal Sakura

DarkSakura.def:
Only Dark Sakura

		----------

PALETTE CONFIGURATION:

To change palettes, you need to open the respective file and edit a few things:
Sakura (both modes): States/Sakura.st
Normal Sakura only : States/NormalSakura.st
Dark Sakura only   : States/DarkSakura.st

You will see a section with the title "Palette Configuration".
The var(0) controls what palette Sakura will be using. Inside the "Palettes"
folder there are previews for the palettes, with a number on their names. To
assign a palette to a button, simply put that number to the button you want.
For example, if you want palette 13 for the "b" button, go to
[State 5900, Palette 5 (b)] and change the line to "var(0) = 13".

Palettes are organized like this: 1~199: Normal Sakura || 200+ : Dark Sakura
If you make new palettes, be sure to add them in the correct number range!

		----------

MOVELIST:

U - Up           x - Light Punch       a - Light Kick
D - Down         y - Medium Punch      b - Medium Kick
F - Forward      z - Heavy Punch       c - Heavy Kick
B - Back         p - Any Punch         k - Any Kick
s - Start        2p - Two Punches      2k - Two Kicks

(Air) - Move must be performed in the air
(EX)  - Move has an EX version, performed by pressing 2 punch/kick buttons
(MAX) - Use 2 punch/kick buttons when performing a Super Move to power it up

(N) - Only Normal Sakura
(D) - Only Dark Sakura


NORMAL:

Sakura Shime:			B or F + 2p
Sailor Shoot:			B or F + 2k
Flower Kick:			F + b
Air Throw:				B or F + 2k (Air)

SPECIAL:

Hadoken (EX):				D, DF, F, p (hold p to change effetc)
Tengyo Hadoken (EX):		D, DB, B, p (hold p to change effetc)
Air Hadoken (D)				D, DF, F, p (Air)
Shououken (EX):				F, D, DF, p
Shunpu Kyaku (EX):			D, DB, B, k (Air also)
	Shunpu Renkyaku (N):	D, DB, B, k (during Shunpu Kyaku)
Ouka Kyaku (EX):			D, DF, F, k (Air)
Sakura Otoshi (EX):			F, D, DF, k
(After Sakura Otoshi):
	Punch:					p (up to 3x)
	Ouka Kyaku:				D + k
	Air Throw:				B or F + 2k
	Cancel:					k
Ashura Senku (D):			F, D, DF or B, D, DB + 2p or 2k

SUPER:

Shinku Hadoken (MAX):			D, DF, F, D, DF, F, p
Shinku Tengyo Hadoken (MAX):	D, DB, B, D, DB, B, p
Haru Ichiban (MAX) (N):			D, DB, B, D, DB, B, k
Haru Issen (MAX) (D):			D, DB, B, D, DB, B, k
Midare Zakura (MAX):			D, DF, F, D, DF, F, k
Transform:						B, D, DB, s (enable in "config.txt")

LV3 SUPER:

Haru Ranman (N):		D, DB, B, D, DB, B, 3k (normal command)
						D, DF, F, DF, D, DB, B, 2k (alternate command)
Shun Goku Satsu (D):	x, x, F, a, z
Midare Zakura (D):		D, DF, F, D, DF, F, 3k (normal command)
						D, DF, F, DF, D, DB, B, 2k (alternate command)


SYSTEM:

Forward Dash:			F, F
Run:					F, F (hold F)
Backward Dash:			B, B
Low Jump:				tap U
High Jump:				tap D, U
Long Low Jump:			tap D, tap U
Dodge:					a + x
Dodge Attack:			p or k during dodge
Forward Roll:			F + a + x
Backward Roll:			B + a + x
Parry:					tap F
Parry Low:				tap D
Air Parry:				tap F (Air)
Power Charge:			hold b + y
Zero Counter:			B, DB, D, p or k (during guard)
Custom Combo:			c + z (also in air)
MAX Mode:				c + z
Fall Recovery:			2p or a + x

		----------

MOVE DETAILS:

Flower Kick is an overhead
Hadoken will make the opponent fall if charged (N) or used in a short distance (D)
EX Ouka Kyaku can OTG (hit lying down opponents)

COMBO SYSTEM:

Some Normal attacks can be canceled into Special and Super moves
Some Special moves can be canceled into Super moves
Some Lv1 Super moves can be canceled into MAX Super moves
Cancelling a Special, Super move or Custom Combo into a Super move resets the
juggle points but also reduces its damage

CUSTOM COMBO:

Removes cancellable attack restrictions and gives you a lot of freedom to combo them
Juggle limit is lifted
You can only use EX Special or Super moves from the point the character starts
flashing faster and brighter, and doing so ends Custom Combo
Gives you a short invulnerability window at the start

MAX MODE:

Attack and Defense are increased while in MAX Mode
EX moves can be performed at no power cost, though take away from time sustained in MAX mode
All Lv1 supers can be performed at no power cost, though immediately uses up all time in MAX mode
All Lv2 and higher supers will cost 1 power bar, along with using up all time in MAX mode
Even without a power bar, as long as you have time left in MAX mode, you can perform Lv1 supers/EX moves
You can not Power Charge/gain power while in MAX mode
You can not perform a Zero Counter/Counter Movement while in MAX Mode

		----------

VERSION HISTORY:

12/April/2023
Fixed palette error during intro with Akuma
Fixed mispelling in the code that made Sakura able to cancel lv1 Shinkuu Hadouken into any lv1 super
Fixed Max Mode bar disappearing late in some lv3 supers
Fixed a few issues that were not noticiable (?) during transformation
Added cancel from specials to transformation

10/April/2023
Fixed medium spark scale
Fixed Hadoushou behavior
A few aesthetics tweaks here and there
Fixed Hadouken not playing sound when hitting another projectile
Fixed Sakura not keeping the mode (if changed) between rounds
Changed to 1.0 sprites and added RemapPal to transformations
Dark Sakura medium hadouken now have the same range as the other variants
Fixed not being able to super cancel from Tengyou Hadouken
Fixed EX Tengyou Hadouken angle during hitpause
Fixed projectile flag in Hadoushou
Added Cheap K.O. SFA voice
Fixed Custom Combo finish not appearing when using some projectiles
Extended Shinkuu Hadouken range for Dark Sakura
Added special intro (both modes) vs Akuma
Added more palettes
Added alternate commands for Lv3 Supers
Extended time for Sakura Shime to be more accurate to CvS2
Added Winpose for Haru Ranman and Midare Zakura (Lv3)

31/March/2023
Official release

11/August/2022
Alpha Released

		----------

WHAT IS MISSING:

Special intros (contact me if you want one!)
Maybe a third mode... :P

     ----------

KNOWN ISSUES:

None (that I'm aware)

     ----------

SPECIAL THANKS:

Everyone from MugenGuild and MFFA always helping and treating me super nice
PotS, for creating the style and helping with code
Jmorphman and JustNoPoint for the Explodsive Buffering System
Jmorphman and DivineWolf, for reference I used to make my template
Jmorphman and KarmaCharmeleon for teaching me how to use the CheatEngine tables
Jesuszilla for the CheatEngine tables
Insanius for CvS2 sprites with axis
AlexSin and Momotaro for custom sprites for Haru Ranman
RaZorbakk36 for helping color separating some sprites
Warusaki3 for reference on coding and some sounds that I borrowed
Drex for SFA3 sounds / The Sound Resources for MvC2 sounds
Many people (can't remember everyone, sorry), for the Color Separation
Cyanide, JustNoPoint, 2OS, and many other people for helping with code
Trololo, Foobs, Lurker for some sick pals
DauntlessMonk7 for recording footage from SF4 for me and for being a good friend
.JSON, Foobs, RagingRowen, ZolidSone and other people for testing and feedback
TheFightersGeneration for artworks I used for the portraits
streetfighter.fandom.com for artworks, victory quotes and many other useful stuff
Many artists for artwork I used for the Lv3 portraits:
	Kandoken (https://twitter.com/kandoken)
	Akisu (https://twitter.com/akisu_K)
	JC (https://www.pixiv.net/en/users/707480)
	Sangheon Nam (https://www.artstation.com/loped)
Everyone on MFG, for feedback, testing and suggestions
VirtuallTek, for creating Fighter Factory
Elecbyte, for creating MUGEN
Capcom, for creating Sakura
You, for downloading my char :D

		----------

DISCLAIMER:

Street Fighter, Capcom Fighting Evolution and Capcom VS SNK 2 are property of Capcom
This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes