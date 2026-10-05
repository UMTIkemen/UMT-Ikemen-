-------------------------------------
Suika Ibuki (Suika_RP)
(Touhou: Gensokyo Reloaded version)
-------------------------------------
Author: RicePigeon

------------------
Contents
------------------

1. Contents (You're reading this)
2. Version Changes
3. Movelist
  3a. Command Moves
  3b. Specials
  3c. Spellcards
4. Credits

------------------
Version Changes
------------------

=====================================
12/19/20 - Version 2020.12.19
=====================================

- [System] Fixed bug where Suika was vulnerable to grabs during pre-jump frames.
- [System] Fixed graphical bug involving dash effects during superpauses.
- [System] Fixed an issue where getup invulnerability would end prematurely if an attack was performed on the same frame control was regained.
- [System] Fixed oversight where counterhit indicator would erroneously activate during throws.
- [System] Added workaround that would resolve a bug in Stupa's Training character.
- [System] Corrected button strength priority in commands; higher strength buttons now take priority over lower strength buttons.
- 2y: Guard velocity increased.
- 2z: Guard velocity increased.
- j.5y: Fixed bug involving proration not applying on the last possible active frames of the attack.
- j.5z: Fixed graphical bug on effect, effect sound no longer persists if effect disappears.
- Throw: Fixed bug where Stupa's Training character could not tech the throw.
- Throw: Fixed timing where Throw proration flag was set prematurely.
- Kidnapping Oni: Fixed issue where vaccuum effect would persist during superpauses.
- Kidnapping Oni: Fixed issue with command input during turning animations.
- "Throwing Mt. Tokagushi": Startup invulnerability now lasts until end of grab active frames.
- "Throwing Mt. Tokagushi": Adjusted timing of superpause; grab active frames now occur immediately following superpause.
- "3-Step Destruction": Fixed bug involving proration not applying on the last possible active frames of the attack.
- "Missing Purple Power": Fixed bug where initial hit was not gaining bonus damage on counterhit.
- "Missing Purple Power": Fixed proration bug that occurred if Suika hit on the last active frame of the attack.
- "Missing Purple Power": Corrected counterhit hitstun bonuses on MP & HP Attacks.
- "Giant Oni of Earth's Axis": Fixed bug where initial hit was not gaining bonus damage on counterhit.
- "Giant Oni of Earth's Axis": Now flags recovery frames properly, 

=====================================
09/27/20 - Version 2020.09.27
=====================================

- [System] Tech recovery command changed to hold x/y/z before hitting ground. Can now tech left or right.
- [System] Proration no longer utilizes AttackMulSet.
- [System] All combos now apply a one-time 75% prorate for the second attack onward.
- [System] Implemented flag that prevents multi-hit moves from applying forced 75% proration to its remaining hits.
- 2z: Hit velocity on block increased.
- j5y: Fixed Counterhit stun bonuses.
- Throw: tech window increased (7f->15f).
- Throw: Fixed Ikemen-exclusive bugs.
- Kidnapping Oni: Fixed Ikemen-exclusive bugs.
- Foot Bellows: Proration increased (70%->80%).
- "Throwing Mt. Togagushi": Fixed Ikemen-exclusive bugs with throw portion.
- "Massacre on Mt. Ooe": Fixed Ikemen-exclusive bugs.
- 5x (MPP): Proration increased (50%->65%).
- j5x (MPP): Proration increased (50%->65%).

=====================================
05/06/20 - Version 2020.05.06
=====================================

- j5y: Increased edge width during the attack's active frames.
- Gnome -Dense-: Attack is now governed by a single juggle flag.
- Gnome -Dense-: Landing hit now snaps Suika's y-position to ground level. 

=====================================
10/10/19 - Version 2019.10.10
=====================================

- [System] Juggle system now functions independently of M.U.G.E.N's default juggle system.
- [System] Fixed an issue where the tech recovery wasn't using all two-punch button combinations.
- [System] Miscellaneous common state fixes and adjustments.
- [System] Fixed various timing issues pertaining to Spellcard effects.
- [System] Opponents will now always go into the air recovery anim at the same time as the reset state.
- [System] Reset landing now grants opponents increased full invulnerability (2f->3f) and 6f extra grab invulnerability.
- [System] Added numerous state numbers that were missing from the tick fix code.
- [System] Fixed an issue where custom stated opponents were getting up a frame too early.
- [System] Backward Dash can no longer be jump cancelled, startup decreased (8f->6f).
- "Throwing Mt. Tokagushi": Now freezes the timer if the grab successfully connects.
- "Massacre on Mt. Ooe": Now freezes the timer if the grab successfully connects.
- "Missing Purple Power": Spellcard timer now starts with the gauge visibly full.

=====================================
05/24/19 - Version 2019.05.24
=====================================

- [System] Air dashes now have a height restriction when ascending.
- [System] Corrected time in which the forward dash can be jump cancelled.
- [System] Corrected regular jump landing time.
- [System] Corrected forward dash startup time.
- [System] Corrected Forward dash skid animation time.
- [System] Corrected back hop/air dash landing times.
- [System] Adjusted how the character handles landing sounds in certain basic states.
- [System] Fixed visual issue where the tech recovery explod was being affected by palfx.
- [System] Fixed IKEMEN exclusive visual issue where certain helpers would incorrectly generate a shadow.
- [System] Fixed timing issues with groundbounce angledraw and offset.
- [System] Groundbounces & Wallbounces no longer allow opponents to quick getup upon landing.
- [System] Minor adjustments to hurtboxes in some gethit states.
- [System] Minor adjustments to some common state animations.
- Guard Cancel: No longer gains counterhit bonuses.
- 2x: now carries momentum over from a dash.
- 6y: No longer loses overhead property on chaining.

=====================================
02/05/19 - Version 2019.02.05
=====================================

- "Missing Purple Power": Fixed bug that would cause Suika to loop into superpause.

=====================================
01/28/19 - Version 2019.01.28
=====================================

- "Missing Purple Power": Fixed issue where opponent could recover prematurely.

=====================================
12/02/18 - Version 2018.12.02
=====================================

- [System] Fixed bug involving OTGs.

=====================================
10/18/18 - Version 2018.10.18
=====================================

- Fixed forward dash behaviors.
- Corrected paletting issue in intro.

=====================================
09/20/18 - Version 2018.09.20
=====================================

- Fixed a minor issue with reset.

=====================================
06/04/18 - Version 2018.06.04
=====================================

- 2y: Now causes an untechable knockdown.
- Kidnapping Oni: All versions are now a command grab. Damage increased (100/140/190->140/170/200).

=====================================
05/27/18 - Version 2018.05.27
=====================================

- Fixed counterhit related bugs.
- Fixed bugs related to knockdown behaviors in Spellcards.

=====================================
05/19/18 - Version 2018.05.19
=====================================

- Fixed additional bugs in reset system.

=====================================
03/25/18 - Version 2018.03.25
=====================================

- Minor adjustments to dash behavior.
- Adjustments to guarding behavior regarding crossups.
- Adjustments to Guard Cancel invulnerability.
- Adjustments to reset behavior.
- 5y: Damage increased (55->70).
- 6y: Damage increased (75->80).
- 5z: Damage increased (80->90), proration decreased (85%->80%).
- 2y: Damage increased (60->80).
- 2z: Damage increased (90->100).
- j5y: Damage increased (30*38->35*43).
- j5z: Damage increased (90->100).
- Spectre -Dense-: Damage increased (70/85/100 -> 80/100/120).
- Kidnapping Oni: Damage increased (90/125/160 -> 100/140/190).
- "Throwing Mt. Tokagushi": Throw portion can no longer be jumped out of post-super pause.
- "Massacre on Mt. Ooe": Can no longer be jumped out of post-super pause.
- "Massacre on Mt. Ooe": Fixed bug where final hit would not cause a KO.
- "Missing Purple Power": Damage on initial hit decreased (180->140), proration decreased (85%->75%).
- "Missing Purple Power": Duration decreased (10 sec -> 8 sec).
- "Missing Purple Power" 5x: Damage decreased (90->80).
- "Missing Purple Power" 5y: Damage decreased (110->100).
- "Missing Purple Power" 5z: Damage decreased (130->120).
- "Missing Purple Power" j5x: Damage decreased (100->90).
- "Missing Purple Power" j5y: Damage decreased (120->105).
- "Missing Purple Power" j5z: Damage decreased (140->125).
- "Giant Oni of Earth's Axis": Damage decreased (220->200).

=====================================
12/25/17 - Version 2017.12.25
=====================================

- First release


------------------
Movelist
------------------
 
X - Light Attack
Y - Medium Attack
Z - Heavy Attack
A - Dash Shortcut 
B - Shortcut for y+z
C - Shortcut for x+y+z
Start - Taunt

------------------
Command Moves
------------------

Note: Each move indicates if it can be done on the ground only [G], in the air only [A], or both [GA]

* F,F or F+a (66 or 6a) - Forward Dash [GA] 
- The ground version can be jump cancelled or cancelled into ground moves, while the aerial version can be cancelled
  into aerials.

* B,B or B+a (44 or 4a) - Backward Dash [GA]
- The ground version can be cancelled into ground moves, while the aerial version can be cancelled into aerials.

* y+z (5yz) - Forward Throw [G]
- Can be teched out of by pressing any button while holding back or forward; opponent cannot tech if grabbed in the
  middle of an attack.

* B+y+z (4yz) - Backward Throw [G]
- Can be teched out of by pressing any button while holding back or forward; opponent cannot tech if grabbed in the
  middle of an attack.

* F+y (6y) - Oni Hammer [G]
- Suika does an overhead slam with both fists.

------------------
Specials
------------------

* B,DB,D + x/y/z (412x, 412y, or 412z) - Guard Cancel [G]
- Requires 1000 Power, can only be done during blockstun. Suika counterattacks using the x version of Gnome -Dense-

* D,DF,F + x/y/z (236x, 236y, or 236z) - Spectre -Dense- [G]
- Suika does am explosive punch with her fists. The y version hits above Suika, while the z version causes a knockdown,
  but with longer startup.

* F,D,DF + x/y/z (623x, 623y, or 623z) - Gnome -Dense- [GA]
- Suika does a leaping dive that ends with a crystal erupting from the ground. The z version of the grounded version is
  unblockable on the first hit, but can only hit airborne opponents. If done from the air, the button press determines
  the angle Suika launches herself

* F,DF,D,DB,B + x/y/z (63214x, 63214y, or 63214z) - Kidnapping Oni [G]
- Command Grab. Suika sucks the opponent toward her, grabbing and slamming them into the ground. Button press determines
  both the strength of the suction and damage, with the z version having no suction, but the highest damage.

* Charge D,U + x/y/z ([2]8x, [2]8y, or [2]8z) - Foot Bellows [G]
- Suika does a leaping stomp that hits low and OTG. Button press determines the distance Suika leaps before performing
  the stomp.

------------------
Spellcards
------------------

=============================
Level 1 Spellcards
=============================

* D,DF,F,D,DF,F + x/y/z (236236x, 236236y, or 236236z) - Secret of Kings "Three Step Destruction" [G]
- Suika does a series of punches, growing larger with each punch. As Suika grows larger, so does the hitbox and damage
  of each punch. Does not cause a knockdown until the final hit.

* F,DF,D,DB,B,F,DF,D,DB,B + x/y/z (6321463214x, 6321463214y, or 6321463214z) - Gather Sign "Throwing Mt. Tokagushi" [G]
- Suika leaps up and forward slightly, hurling a boulder in her hands before throwing it downwards at an angle. If the
  opponent is next to Suika as she performs the leap, Suika will perform a command grab instead, building the boulder
  around the opponent before throwing it and dealing more damage.

=============================
Level 3 Spellcards
=============================

* F,DF,D,DB,B,F,DF,D,DB,B + x+y+z (6321463214xyz) - "Massacre on Mt. Ooe" [G]
- Command Grab. Suika does a triple suplex, slamming the opponent into the ground with an explosion on the final hit.
  Can be used as a reversal due to startup invincibility.

* D,DB,B,D,DB,B + x+y+z (214214xyz) - "Missing Purple Power" [G]
- Suika transforms into Giant Suika for a limited time, causing all of her Normal attacks to gain new properties. The
  initial activation also launches the opponent on hit. Suika is completely immune to throws and has armor while Giant,
  causing her to take reduced damage. 

* D,DF,F,D,DF,F + x+y+z (236236xyz) - "Giant Oni of Earth's Axis" [G]
- Only usable if Suika is transformed in her giant state. Suika leaps to the air and slams down on her opponent's
  position. Only the shockwave deals damage, and hits OTG, but immediately ends the effects of "Missing Purple Power".


------------------
Credits
------------------

Elecbyte 		- For making MUGEN.
ZUN             	- For creating the Touhou project.
Daniel9999999		- Recycled code portions, beta testing, and a good friend in general
Flawless		- Original X-Costume Selector code
DoomBowser		- Additional fixes

Palette Contributors: 
- GarchompMatt
- DoomBowser
- _Data_Drain_
- RoySquadRocks

Beta Testers:
- DoomBowser
- Rodknee