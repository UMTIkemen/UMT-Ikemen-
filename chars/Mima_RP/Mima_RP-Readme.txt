-------------------------------------
Mima (Mima_RP)
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
11/25/21 - Version 2021.11.25
=====================================

- [System] Fixed issue with flight & recovery landing that rendered certain combo routes invalid when used against Mima.
- [System] Fixed issue with certain attacks during Flight Mode causing Mima to erroneously turn if opponent was directly underneath her.
- 6z: Fixed issue where effects would persist after Mima lands.
- 3z: Fixed oversight where move could be jump cancelled on block, guard hitvelocity decreased.
- "Orreries Sun": Initial activation animation now has 20f of pre-superpause startup, Spellcard name now persists during entire duration of the move until release.
- "Flare Star": Changes from Version 2021.01.16 reverted.

=====================================
01/16/21 - Version 2021.01.16
=====================================

- [System] Fixed bug where Mima was vulnerable to grabs during pre-jump frames.
- [System] Fixed graphical bug involving dash effects during superpauses.
- [System] Fixed an issue where getup invulnerability would end prematurely if an attack was performed on the same frame control was regained.
- [System] Fixed an oversight where Mima would erroneously turn midair while "Orreries Sun" is active, instead of while Flight Mode is active.
- [System] Added workaround that would resolve a bug in Stupa's Training character.
- [System] Corrected button strength priority in commands; higher strength buttons now take priority over lower strength buttons.
- 3z: Guard velocity increased.
- Throw/Air Throw: Fixed bug where Stupa's Training character could not tech the throw.
- Throw/Air Throw: Fixed timing where Throw proration flag was set prematurely.
- Air Throw: Opponent no longer affects camera movement.
- "Orreries Sun": Fixed bug where Orreries animation would persist during pauses.
- "Flare Star": Can now be used while airborne.
- "Flare Star": Damage increased (50xN,150->60xN,180; Damage range effectively increased from 300~500->360~600).

=====================================
09/17/20 - Version 2020.09.17
=====================================

- [System] Tech recovery command changed to hold x/y/z before hitting ground. Can now tech left or right.
- [System] All combos now apply a one-time 75% prorate for the second attack onward.
- [System] Implemented flag that prevents multi-hit moves from applying forced 75% proration to its remaining hits.
- 2z: Hit velocity on block increased.
- Throw: tech window increased (7f->15f).
- Throw: Fixed Ikemen-exclusive bugs.
- Air Throw: Fixed p2's inability to tech throw.
- Meteor Strike: Proration increased (0.7->0.8).
- "Orreries Sun": Now disables the use of Throw & Air Throw while active.

=====================================
05/24/20 - Version 2020.05.24
=====================================

- Meteor Strike: Can no longer be used if "Orreries Sun" is active.
- Meteor Strike [Z ver]: Now teleports Mima behind the opponent. No longer has any active frames or projectile invulnerability.
- "Twilight Spark": Fixed an issue where the move wasn't gaining a counterhit damage bonus.

=====================================
05/08/20 - Version 2020.05.08
=====================================

- 3z: No longer forces opponent to autorecover.

=====================================
12/08/19 - Version 2019.12.08
=====================================

- Fixed a tick fix issue that would allow Mima to erroneously cancel Flight Mode startup into certain moves.

=====================================
10/10/19 - Version 2019.10.10
=====================================

- [System] Juggle system now functions independently of M.U.G.E.N's default juggle system.

=====================================
09/26/19 - Version 2019.09.26
=====================================

- [System] Fixed an issue where the tech recovery wasn't using all two-punch button combinations.
- [System] Miscellaneous common state fixes and adjustments.
- [System] Fixed various timing issues pertaining to Spellcard effects.
- [System] Opponents will now always go into the air recovery anim at the same time as the reset state.
- [System] Reset landing now grants opponents increased full invulnerability (2f->3f) and 6f extra grab invulnerability.
- [System] Added numerous state numbers that were missing from the tick fix code.
- [System] Fixed an issue where custom stated opponents were getting up a frame too early.

=====================================
05/15/19 - Version 2019.05.15
=====================================

- [System] Minor adjustments to some common state hurtboxes and animations.
- [System] Updated Recovery frame flags to current standards.
- [System] Updated Hitdef triggers to current standards.
- [System] Groundbounces & Wallbounces no longer allow opponents to quick getup upon landing.
- [System] Fixed timing issues with groundbounce angledraw and offset.
- [System] Corrected regular jump landing time (5f -> 4f).
- [System] Corrected forward dash startup time (4f -> 5f).
- [System] Corrected time in which the forward dash can be jump cancelled.
- [System] Adjusted how the character handles landing sounds in certain basic states.
- [System] Air dashes now have a height restriction when ascending.
- Fixed visual issue where the tech recovery explod was being affected by palfx.
- Fixed IKEMEN exclusive visual issue where the Dash/Guard Cancel Counter/Spellcard effect helpers would incorrectly generate a shadow.
- 5x: Damage increased (20->25).
- 5y: Damage decreased (49->45).
- 6y: No longer loses overhead properties when chained into.
- 2x: Corrected inability to conserve forward dash momentum into the attack.
- j.5z: Damage increased (65->70).
- Throw: Now applies 90% normal proration.
- Guard Cancel Counter: No longer gains counterhit bonuses.
- Green Spread: Fixed Hitdef trigger issue which prevented the move hitting an opponent if its hitbox also overlapped with a projectile.
- Meteor Strike: Adjusted hitboxes of X and Y versions, Z version is now a projectile counter.
- Meteor Strike (counterattack): Fixed a bug where the move could cancel into Spellcards before the counterattack had hit.
- Meteor Strike (counterattack): Horizontal range increased.
- Meteor Strike (counterattack): Startup slightly reduced (12F->11F). 
- "Orreries Sun" (Rings): Hitbox is no longer active while Mima is in hitstun.

=====================================
02/01/19 - Version 2019.02.01
=====================================

- 3z: Hit acceleration adjusted, now easier to follow up after launch.
- "Orerries Sun": Fixed issue where opponent could recover prematurely.

=====================================
12/31/18 - Version 2018.12.31
=====================================

- Fixed bug with launcher states.

=====================================
12/02/18 - Version 2018.12.02
=====================================

- [System] Fixed bug involving OTGs.

=====================================
09/20/18 - Version 2018.09.20
=====================================

- Fixed a minor issue with reset.

=====================================
08/12/18 - Version 2018.08.12
=====================================

- "Orreries Sun": Duration decreased (10 sec -> 8 sec).

=====================================
05/27/18 - Version 2018.05.27
=====================================

- Fixed counterhit related bugs.

=====================================
05/19/18 - Version 2018.05.19
=====================================

- Fixed additional bugs in reset system.

=====================================
03/20/18 - Version 2018.03.20
=====================================

- Adjustments to reset behavior.
- Fixed Guarding behavior regarding crossups.
- Fixed Invulnerability times on Guard Cancel Counter.

=====================================
02/04/18 - Version 2018.02.04
=====================================

- Fixed several bugs involving Flight Mode dashing near the ground.
- "Orreries Sun" (Rings): Now hits during hitstun & blockstun. No longer hits while Mima is knocked down. 

=====================================
01/30/18 - Version 2018.01.30
=====================================

- Fixed bug where Mima could stay on ground if Flight Mode is cancelled too early.
- 5x/5y/5z: Now have separate juggle flags when used in Flight Mode.
- 5z: Hitbox size increased, forward movement increased.
- 2z: Hitbox size increased.
- j5x: Hitbox size increased.
- j5y: Hitbox size increased.
- j5z: Now causes a Soft Knockdown against airborne opponents.
- Sweep Away: Can no longer hit opponents out of a reset.
- "Orreries Sun" (Rings): Fixed issues where move would not hit when used in air.
- "Orreries Sun" (Rings): No longer hits while Mima is suffering from hit or blockstun.
- "Escape Velocity": Can no longer hit opponents out of a reset.

=====================================
12/20/17 - Version 2017.12.20
=====================================

- Voice added kudos to GarchompMatt's EO5 rips.
- Can now activate Flight Mode in midair.
- Can now taunt during Flight Mode.
- Can now cancel into Flight Mode from Normals if Mima is not already in Flight Mode.
- 3z: Hitbox size increased.
- Meteor Strike: Fixed bug where Mima could enter permanent Flight Mode.
- Meteor Strike: Startup powergain increased (15->45), now only gives startup power gains if counter is successful.
- "Orreries Sun" (Rings): Now ends if opponent is KOed, flag now properly resets between rounds.
- "Orreries Sun" (Shoot): Fixed bug where Mima would fire orbs backwards.

=====================================
11/27/17 - Version 2017.11.27
=====================================

- 3z: Fixed bug involving launcher state.

=====================================
11/25/17 - Version 2017.11.25
=====================================

- Fixed bug where incorrect sounds would play if Mima is knocked down.
- Fixed missing dust effects of ground tech recovery.
- "Orreries Sun": Fixed various bugs related to Mima being KOed while orbs are still active.

=====================================
10/20/17 - Version 2017.10.20
=====================================

- "Escape Velocity": Chip damage increased (16->49).

=====================================
10/15/17 - Version 2017.10.15
=====================================

- Velocities during Flight Mode slightly increased.
- Mima can no longer block attacks during Flight Mode.
- New mechanic added: Guard Cancel Counter (412x/y/z during blockstun).
- Throw: Added safeguard in event opponent is lost.

=====================================
08/31/17 - Version 2017.08.31
=====================================

- Sweep Away [MP ver]: Fixed discrepancy where aerial version dealt more damage.
- Stellar Missile [Aerial]: Recovery increased by 2f.
- "Escape Velocity": Fixed discrepancy where aerial version dealt more damage.

=====================================
08/11/17 - Version 2017.08.11
=====================================

- Various minor fixes on sprites.
- Fixed bug where attacking immediately after manually cancelling flight mode returned Mima to flight mode.
- Fixed missing dust effects on ground recovery tech.

=====================================
07/29/17 - Version 2017.07.29
=====================================

- First release.


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
- The ground version can be jump cancelled or cancelled into ground moves, while the aerial and Flight Mode versions
  can be cancelled into aerials.

* B,B or B+a (44 or 4a) - Backward Dash [GA]
- The ground, aerial, and Flight Mode versions can all be cancelled into aerials.

* y+z (5yz) - Forward Throw [GA]
- Ground version can be teched out of by pressing any button while holding back or forward; opponent cannot tech if
  grabbed in the middle of an attack. The aerial version causes groundbounce.

* B+y+z (4yz) - Backward Throw [GA]
- Ground version can be teched out of by pressing any button while holding back or forward; opponent cannot tech if
  grabbed in the middle of an attack. The aerial version causes groundbounce.

* F+y (6y) - Overhead [G]
- Mima whips her tail for an overhead attack.

* DF+z (3z) - Launcher [G]
- Mima swipes her staff upward, launching the opponent. Can be cancelled into Flight Mode or jump cancelled.

* x+y+z (xyz) - Flight Mode [G]
- Mima performs a jump, going into a flight mode. Flight lasts for 10 seconds, or until cancelled with
  x+y+z. Blocking is disabled while flying.

------------------
Specials
------------------

* B,DB,D + x/y/z (412x, 412y, or 412z) - Guard Cancel [G]
- Requires 1000 Power, can only be done during blockstun. Mima counterattacks using Meteor Strike.

* D,DF,F + x/y/z (236x, 236y, or 236z) - Green Spread [GA]
- Mima fires a spread shot that converges to a single point. Projectiles have no hitbox until they converge. Button
  press determines the projectile's distance.

* F,D,DF + x/y/z (623x, 623y, or 623z) - Sweep Away [GA]
- Mima rushes forward, swiping her staff and causing a wallbounce.

* D,DB,B + x/y/z (214x, 214y, or 214z) - Stellar Missile [GA]
- Anti-air projectile. Mima fires a projectile that travels a short distance before exploding, causing a knockdown.
  Button press determines the projectile's angle, with aerial versions firing downward.

* B,D,DB + x/y/z (421x, 421y, or 421z) - Meteor Strike [GA]
- Counter. Mima strikes a pose that will initiate an unblockable counterattack with her staff if she is struck, causing
  a wallbounce. For the x and y versions, the move is a melee counter where the hitbox position will depend on which
  button is pressed; for the z version, the move is instead a projectile counter that will teleport Mima to the
  opponent's position. Cannot be used if "Orreries Sun" is active.

------------------
Spellcards
------------------

=============================
Level 1 Spellcards
=============================

* D,DB,B,D,DB,B + x/y/z (214214x, 214214y, or 214214z) - Ritual Sign "Orreries Sun" [GA]
- Mima launches a ring of 6 orbs that revolve around her for about 8 seconds. The orbs will inflict melee damage when
  close to an opponent. If the Spellcard is performed again while the orbs are still active, Mima will launch them as a
  projectile instead. Disables the use of Throw & Air Throw while active.

* D,DF,F,D,DF,F + x/y/z (236236x, 236236y, or 236236z) - Star Sign "Escape Velocity" [GA]
- Reversal; Mima lunges forward with a punch, which launches the opponent with an uppercut for the final hit. If Mima is
  not already in Flight Mode before this Spellcard is used, Mima will enter Flight Mode on successful hit. This Spellcard
  cannot be used to extend Flight Mode's timer if Mima is already in Flight Mode.

=============================
Level 3 Spellcards
=============================

* D,DF,F,D,DF,F + x+y+z (236236xyz) - "Twilight Spark" [GA]
- Mima lunges forward with her staff. If the hit is successful, Mima will proceed to fire a giant beam of energy gathered
  from absorbing the darkness. Hits overhead if done in midair, and is air unblockable if performed on the ground.

* D,DB,B,D,DB,B + x+y+z (214214xyz) - "Flare Star" [G Only]
- Mima launches a ring of 6 energy orbs that revolve around the opponent, tracking their position and then colliding into
  a giant explosion. If the buttons are held, Mima can delay the explosion, causing the move to deal more hits and more
  damage.


------------------
Credits
------------------

Elecbyte 		- For making MUGEN.
ZUN             	- For creating the Touhou project.
Daniel9999999		- Recycled code portions, beta testing, and a good friend in general
Flawless		- Original X-Costume Selector code
Barai & Harudi		- Sprites
DoomBowser		- Additional fixes

Palette Contributors: 
- GarchompMatt
- DoomBowser
- elementhedge
- _Data_Drain_
- Gudine
- Alther Primus

Beta Testers:
- Rodknee
- DoomBowser