 _____________________________________________
| Akuma by DeathScythe, edited by RagingRowen |
 ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
         04/August/2019

 - deathscythemugen.neocities.org -
 - victor_crepa@hotmail.com -

     ----------

Customized version of Akuma, for MUGEN 1.0.
Based on his Capcom VS SNK 2 appearance.
Customizable options, including alternate hitsparks and choosing between Custom Combo or
MAX Mode. Open "custom.txt" for info.
Three modes: Normal, Shin and Modern.
24 Palettes.
Many Hyper Portraits, Big Portraits and Win Portraits already inserted for you to choose.
Many Special Intros (with Patches):
	- Special Intro against Ryu by PotS (including edits by Mwryly, varo_hades & Beterhans)
	- Special Intro against Vega by PotS
	- Special Intro against Vega by Froz
	- Special Intro against Evil Ryu by Victorys
	- Special Intro against Gen by Mwryly & varo_hades
	- Special Intro against Haohmaru
	- Special Intro against Gouken by Infinite
Special Winpose using Shun Goku Satsu and Misogi.

     ----------

COMMENTS:

Oh, nice, one more Akuma... like we don't have thousand Akumas for MUGEN out there?
Yeah yeah, I know, but I could not resist making my favorite character of all fighting games.
Also, I felt that other Akumas either lack something or had too much, so I went to a more
"balanced" gameplay, close to his CvS2 moveset but retaining the PotS style that we all love.
I've put a lot of work and effort in this char to make it play different from the already
existing Akumas and not feel like an edit or something, I hope you enjoy. ^_^
This creation is opensource, you can take whatever you want from it, just give me credit
and give credit to people who I took resources from, see "SPECIAL THANKS" near the end of this
document to know more.

     ----------

MODES:

This character has two different modes:

Normal Akuma
- Does decent damage
- Can perform EX moves
- Has low defense

Shin Akuma
- Moves faster and has less recovery time
- Does more damage than Normal Akuma
- Can not perform EX moves
- Has the lowest defense

Modern Akuma
- Normal Akuma, but with different moves or animation to resemble recent appearances (e.g. SF4 & SF5).
- Can perform EX moves
- Has low defense

Note: If controlled by the AI, defense levels have no effect. This means that he has normal
defense (and does a little more damage than normal), much like in most games that he appear as
a boss.

Akuma.def:
Both chars in one file. Hold start to choose Shin Akuma (palettes 7 ~ 12)

NormalAkuma.def:
Only Normal Akuma

ShinAkuma.def:
Only Shin Akuma

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

===== Normal Akuma =====

NORMAL:

Seoi Nage:			B or F + 2p
Tomoe Nage:			B or F + 2k
Zugai Hasatsu:			F + y
Tenma Kujin Kyaku:		D + b (Air)

SPECIAL:

Gohadouken (EX):		D, DF, F, p
Shakunetsu Hadouken (EX):	F, DF, D, DB, B, p
Zanku Hadouken (EX):		D, DF, F, p (Air)
Goshoryuken (EX):		F, D, DF, p
Tatsumaki Zankukyaku (EX):	D, DB, B, k (Air also)
Hyakkishu (EX):			F, D, DF, k
(After Hyakkishu):
	Hyakki Gouzan:			Do nothing
	Hyakki Goushou:			p
	Hyakki Goudan:			k
	Hyakki Gousai:			B or F + p (near opponent)
	Hyakki Goutsui:			B or F + k (near opponent)
Ashura Senku:			F, D, DF or B, D, DB, 3p or 3k
Zenpou Tenshin:			D, DB, B, p


SUPER:

Messatsu Gohadou (MAX):		D, DB, B, D, DB, B, p
Messatsu Goshoryu (MAX):	D, DF, F, D, DF, F, p
Tenma Gozanku (MAX):		D, DF, F, D, DF, F, p (Air)
Messatsu Gorasen (MAX):		D, DF, F, D, DF, F, k
Messatsu Gosenpuu (MAX):	D, DF, F, D, DF, F, k (Air)

LV3 SUPER:

Shun Goku Satsu:		x, x, F, a, z
Kongou Kokuretsuzan (N):	D, D, D, 2p
Misogi (S):			F, DF, D, DB, B, 2k

===== Shin Akuma =====

NORMAL:

Seoi Nage:			B or F + 2p
Tomoe Nage:			B or F + 2k
Zugai Hasatsu:			F + y
Tenma Kujin Kyaku:		D + b (Air)
Kikoku Tsuki:			(close) y, z

SPECIAL:

Gohadouken:			D, DF, F, p
Shakunetsu Hadouken:		F, DF, D, DB, B, p
Zanku Hadouken:			D, DF, F, p (Air)
Goshoryuken:			F, D, DF, p
Tatsumaki Zankukyaku:		D, DB, B, k (Air also)
Hyakkishu:			F, D, DF, k
(After Hyakkishu):
	Hyakki Gouzan:			Do nothing
	Hyakki Goushou:			p
	Hyakki Goudan:			k
	Hyakki Gousai:			B or F + p (near opponent)
	Hyakki Goutsui:			B or F + k (near opponent)
Ashura Senku:			F, D, DF or B, D, DB, 2p or 2k
Tenma Shurettou:		D, D, p or k


SUPER:

Messatsu Gohadou (MAX):		D, DB, B, D, DB, B, p
Messatsu Goshoryu (MAX):	D, DF, F, D, DF, F, p
Tenma Gozanku (MAX):		D, DF, F, D, DF, F, p (Air)
Messatsu Gorasen (MAX):		D, DF, F, D, DF, F, k
Messatsu Gosenpuu (MAX):	D, DF, F, D, DF, F, k (Air)

LV2 SUPER:

Kongou Kokuretsuzan:		D, D, D, 2p

LV3 SUPER:

Shun Goku Satsu:		x, x, F, a, z
Misogi:				F, DF, D, DB, B, 2k

===== Modern Akuma =====

NORMAL:

Seoi Nage:			B or F + 2p
Tomoe Nage:			B or F + 2k
Zugai Hasatsu:			F + y
Tenma Kujin Kyaku:		D + b (Air)

SPECIAL:

Gohadouken (EX):		D, DF, F, p
Shakunetsu Hadouken (EX):	F, DF, D, DB, B, p
Zanku Hadouken (EX):		D, DF, F, p (Air)
Goshoryuken (EX):		F, D, DF, p
Tatsumaki Zankukyaku (EX):	D, DB, B, k (Air also)
Hyakkishu (EX):			F, D, DF, k
(After Hyakkishu):
	Hyakki Gouzan:			Do nothing
	Hyakki Goushou:			p
	Hyakki Goujin:			k
	Hyakki Gousai:			B or F + p (near opponent)
	Hyakki Goutsui:			B or F + k (near opponent)
	Zanku Hadouken (EX only)	D, DF, F, 2p
Ashura Senku:			F, D, DF or B, D, DB, 3p or 3k


SUPER:

Messatsu Gohadou (MAX):		D, DB, B, D, DB, B, p
Messatsu Goshoryu (MAX):	D, DF, F, D, DF, F, p
Tenma Gozanku (MAX):		D, DF, F, D, DF, F, p (Air)
Messatsu Gorasen (MAX):		D, DF, F, D, DF, F, k
Messatsu Gosenpuu (MAX):	D, DF, F, D, DF, F, k (Air)

LV3 SUPER:

Shun Goku Satsu:		x, x, F, a, z
Tenshou Kaireki Jin:		U, U, 2k


SYSTEM:

Forward Dash:			F, F
Run:				F, F (hold F)
Backward Dash:			B, B
Low Jump:			tap U
High Jump:			tap D, U
Long Low Jump:			tap D, tap U
Dodge:				a + x
Dodge Attack:			p or k during dodge
Forward Roll:			F + a + x
Backward Roll:			B + a + x
Parry:				tap F
Parry Low:			tap D
Air Parry:			tap F (Air)
Power Charge:			hold b + y
Zero Counter:			B, DB, D, p or k (during guard)
Custom Combo:			c + z (also in air)
MAX Mode:			c + z
Fall Recovery:			2p or a + x

     ----------

MOVE DETAILS:

Zugai Hasatsu is an overhead
Gohadouken will make the opponent fall if used in a short distance
EX Hyakki Goudan and Kongou Kokuretsu Zan can hit lying down opponents
Ashura Senku and Zenpou Tenshin can be canceled into a Super without reducing damage
You can cancel some close normal attacks into Zugai Hasatsu

COMBO SYSTEM:

Some Normal attacks can be canceled into Special and Super moves
Some Special moves can be canceled into Super moves
Some Lv1 Super moves can be canceled into MAX Super moves
Cancelling a Special, Super move or Custom Combo into a Super move resets the juggle points
but also reduces its damage

CUSTOM COMBO:

Removes cancellable attack restrictions and gives you a lot of freedom to combo them
Juggle limite is lifted
You can only use EX Special or Super moves from the point the character starts flashing
faster and brighter, and doing so ends Custom Combo
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

RagingRowen's Updates:

2022 Update:
- New Modern mode added.
	Key Differences from Normal Mode:
	- Idle Stance changed.
	- Some Normal Animations changed (e.g. Kikoku Renzan becoming Far HK).
	- Distance required for Close HP increased.
	- Zankuu Hadouken: 
	A. Now locks Akuma in place before firing the projectile.
	B. Projectiles fire at a different angle depending on the button strength (EX excluded).
	- EX Zankuu Hadouken now usable from Hyakkishu.
	- Tatsumaki Zankukyaku hits decreased.
	- EX Tatsumaki Zankukyaku now launches but does less damage and has less juggle potential on its own.
	- Hyakki Goujin replaces Hyakki Goudan.
	- Shun Goku Satsu now resembles Wrath of the Raging Demon/Shin Shun Goku Satsu.
	- Tenshou Kaireki Jin becomes his 2nd Level 3.
- Extended CS from DivineWolf's upadates added (Thanks KH77).
- Palettes changed due to the New CS and Pals available.
- Health and Defense difference between modes redone.
- Some proper CvS2 movement velocities added.
- Maximum time for Gou Hadoukens to knockdown increased.
- EX Goshoryuken horizontal range increased.
- MAX Cancels from Messatsu Gorasen now have to be done before the final hit.

To Do:
- Attend to Feedback.
- Stuff I forgot.
- More Special Intros?

June 22th 2021:
- Explodsive Buffering updated.
- Shakunetsu Hadouken Super Cancelling now possible.
- Normal Kongou Kokuretsuzan damage decreased slightly.

Original:
- Change small port to that of HadeS' (2 variants in the sff file).
- 1 New Normal Big Port and 2 New Shin Big Ports (All in the sff file).
- Added a few extra Winquotes.
- Added Intro against Infinite's Gouken (See Special Intro Patches folder).
- Shin Akuma's exclusive intro modified to act closer to PotS' (Mwyrly's edit to be exact).
- Infinite's Extra Super Pause sounds (Can be disabled in the Config file).
- Added Messatsu Gorasen/Gosenpuu.
- Added Kikoku Renzan (SF4 Far HK).
- Added Flame FX for the EX and Shin HP Goshoryuken, and both Messatsu Goshoryus.
- Projectile DestroySelf code updated.
- Shin Akuma can do Hyakkishu and Kongou Kokuretsuzan (As a Level 2).
- Shin Akuma's Goshoryukens have more horizontal range.
- Tenma Shurettou now 1p/k.
- MAX Tenma Gozanku nerfed ever so slightly.
- Shun Goku Satsu hit timings changed, with the final voice clip (Non-KO) swapped depending on the mode.
- Misc Tweaks.



04/August/2019
Added envshake to Hyakkishu variants
Reduced damage for EX Zanku hadouken and Shin Zanku hadouken
Fixed Zanku hadouken landing
Added reversal spark + guard sound for Tenma Shurettou
Added optional afterimage on EX moves
Fixed juggle problem on some projectiles that could cause an infinite

24/July/2019
Added Explodsive Buffering System by Just No Point & Jmorphman
Added Kikoku Tsuki
Added Kongou KokuretsuZan
Added intro vs Haohmaru
Added intro vs Beterhans' Ryu (he updated his Ryu with the intro, go to his site to get it :D)
Fixed Hyper Finish not triggering on the last hit of Messatsu Gohadou and Tenma Gozanku
Fixed additional hit and damage on Tenma Gozanku
Fixed timing on throws
Changed target velocity when hit by EX Tatsumaki so now you almost always connect all 5 hits
Changed juggles and dampener for some moves to make it more balanced
Added AfterImage on second winpose (stomp)
Added Max Mode for AI
Changed AI behavior in Custom Combo
Fixed AI using Custom Combo even if you select to use Max Mode
Fixed AI using EX Moves during Custom Combo
EX Moves consumes 1/3 of the bar in Max Mode, like DW updated chars
Fixed using Zero Counter during Max Mode, which should not be possible
Fixed hitpauses
Fixed pushbacks and corner push
Changed velocities here and there
Added Palettes
Added Palette Guide
Fixed wrong changestate on Misogi
Fixed missaligned hitsparks on Tatsumaki Zankukyaku
Fixed both intros with Bison (Normal (SGS) and Shin (Misogi))
Fixed Kikoku Tsuki
Changed dampening for when canceling a special into Misogi

10/June/2019
Bug fixes
Added character specific winquotes \o/

09/June/2019
Centered Kanji (Shun Goku Satsu finishing)
Removed unused sprites (I always forget :rage:)
Fixed issue with Ashura Senku near edges
Some tweaks in the AI
Some tweaks on velocities and juggles for better combos
Fixed wrong statetype on MAX Tenma Gozanku
Projectiles now appear in front of the players when hit, not behind like before
Fixed some weird stuff happening on MUGEN 1.0
Added command with 2p or 2k for Ashura Senku in Shin Mode
Some minor aesthetic changes

08/June/2019
First Beta Released

     ----------

KNOWN ISSUES:

- Debug Flood on Tenshou Jinrkei Jin.

     ----------

SPECIAL THANKS:

DeathScythe:
Everyone from MugenGuild and MFFA always helping and treating me super nice
PotS, for custom sprites and style
Jmorphman and DivineWolf, for reference I used to make my template.
Jmorphman (again) and Just No Point for the Explodsive Buffering System
Warusaki3 for reference on coding and some sounds that I borrowed
Froz for the Color Separation
Beterhans for adding the intro for Ryu
Sabockee for some sick pals
PeXXeR, SolidZone26 and Trololo, for testings and suggestions
gui007 for promoting my (and other creators) chars
Mysticus, Sabockee, and some others, for palettes
Everyone on MFG, for feedback and suggestions
VirtuallTek, for creating Fighter Factory
Elecbyte, for creating MUGEN
Capcom, for creating Akuma
You, for downloading my char :D

RagingRowen:
 - PotS for code from his Geese. (Welcome back dood!)
 - DivineWolf for thingys such as the Shoryuken Flames (Add Jmorphman here too maybe) and Gorasen/Gosenpuu.
 - Mwyrly for the hit timings on the SGS, Shin Intro reference and some anim references for Modern mode.
 - Jesuszilla for the CvS2 Data Tool.
 - KarmaCharmeleon for CvS2 data and velocity stuff.
 - Jmorphman for code, references and help with calculating Shin Akuma's defense difference.
 - HadeS for the new small port/s.
 - ReddBrink for the Modern SGS reference.
 - KarmaCharmeleon (?) and 2OS for the TKJ Kanji.
 - 2OS, PeXXeR, DauntlessMonk7, JustNoPoint and Foobs for feedback on Tenshou Jinrkei Jin.


     ----------

DISCLAIMER:

Street Fighter, Capcom Fighting Evolution and Capcom VS SNK 2 are property of Capcom
This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes