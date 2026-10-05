-------------------------------------
Mamizou Futatsuiwa (Mamizou_RP)
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

- [System] Fixed issue where cancel proration was being applied twice on some spellcards.
- 6z: Fixed issue where second hit would whiff in a juggle.
- 6z: Fixed issue where Mamizou would not lose a leaf if she had exactly 1 leaf remaining.
- j2z: Hitbox placement adjusted, now has a larger frontal hitbox & smaller back hitbox.
- j2z: Fixed issue where Groundbounce could be done more than once per combo. Now causes a Hard Knockdown on airborne targets on non-counterhit.
- Utsusemi Jizo Transformation: Fixed issue where move would not cause a hard knockdown if only second part of attack hits.
- Youkai Amikiri Transformation: Fixed issue where Mamizou would not lose a leaf if she had exactly 1 leaf remaining.
- "Youkai World Gate of 100 Demons": Can now be used in midair.
- "Youkai World Gate of 100 Demons": Fixed issue where move could not be used out of an airdash.
- "Youkai World Gate of 100 Demons": Added additional youkai transformations that were initially missing.
- "Prosperity of Infinite Tanuki": Command changed to D,D,D+x/y/z, now costs only 1000 Power, no longer selectable as a Last Word.
- "Prosperity of Infinite Tanuki": Damage buff decreased (25%->20%), duration decreased (270f~720f -> 240f~480f).
- "Prosperity of Infinite Tanuki": Fixed issue where timer would begin decreasing before Mamizou could act.
- "Prosperity of Infinite Tanuki": Now has 20f pre-superpause startup.
- New Selectable Last Word: "Full Moon Pompokolin" (D,DB,B,D,DB,B+x+y+z).

=====================================
01/16/21 - Version 2021.01.16
=====================================

- [System] Fixed bug where Mamizou was vulnerable to grabs during pre-jump frames.
- [System] Fixed graphical bug involving dash effects during superpauses.
- [System] Fixed an issue where getup invulnerability would end prematurely if an attack was performed on the same frame control was regained.
- [System] Leaf Counter no longer recharges during superpause.
- [System] Added workaround that would resolve a bug in Stupa's Training character.
- [System] Corrected button strength priority in commands; higher strength buttons now take priority over lower strength buttons.
- 6z: Guard velocity on 2nd hit increased, fixed how proration is handled.
- Throw: Fixed bug where Stupa's Training character could not tech the throw.
- Throw: Fixed timing where Throw proration flag was set prematurely.
- Animal Lute Priest: Removed coding oversight that accidentially gave projectile counterhit bonuses.
- Youkai Tsurube Transformation: Removed coding oversight that accidentially gave projectile counterhit bonuses.
- Youkai Karakasa Transformation: Removed coding oversight that accidentially gave projectile counterhit bonuses.
- Youkai Karakasa Transformation: Fixed how proration is handled.
- "Youkai World Gate of 100 Demons": Removed coding oversight that accidentially gave projectile counterhit bonuses.
- "Band of 808 Tanuki": Now gains damage bonus on counterhit.

=====================================
11/01/20 - Version 2020.11.01
=====================================

- 5z: Hitbox vertical range increased, startup decreased by 3f, recovery increased by 2f.
- 6z: Now gains damage bonuses from "Prosperity of Infinite Tanuki".
- 2z: Hitbox horizontal range increased.
- j5x: Hitbox now extends behind Mamizou.
- j5y: Hitbox vertical range increased.
- j5z: Hitbox horizontal range increased.
- j2z: Damage decreased (85->80), now causes a groundbounce on counterhit, hitbox horizontal range slightly increased.
- j2z: Hitbox priority increased (will now trade in some instances where it would have previously been beaten out by another attack).
- j2z: Now gains damage bonuses from "Prosperity of Infinite Tanuki".
- Animal Lute Priest: Now gains damage bonuses from "Prosperity of Infinite Tanuki".
- Youkai Tsurube Transformation: Projectile no longer affected by melee attacks. Now loses a leaf when Mamizou herself is hit.
- Youkai Karakasa Transformation: Projectile now hits twice, with second hit causing knockdown, velocities & hit velocities adjusted.
- Youkai Karakasa Transformation: Damage adjusted (70x1->35,40), proration adjusted (0.85x1->0.92x2), Active frames adjusted (12f->9f,(4f),2f).
- Youkai Karakasa Transformation: Recovery frames increased by 8f.
- "Bunbuku Hot Soup Bathtub": Revised sound effects.
- "Youkai World Gate of 100 Demons": Corrected oversight where missing sound effect was not playing.
- "Prosperity of Infinite Tanuki": Damage bonus increased (20%->25%).

=====================================
08/17/20 - Version 2020.08.17
=====================================

- Throw: Removed fall parameter glitch.
- Fixed incorrect Counterhit stun bonuses on air Normals.

=====================================
08/01/20 - Version 2020.08.01
=====================================

- [System] Proration system no longer uses Attackmulset.
- [System] Implemented flag that prevents multi-hit moves from applying forced 75% proration to its remaining hits.
- Throw: Fixed Ikemen-exclusive bug.
- 6z: Damage changes from Version 2020.07.25 reverted.
- "Bunbuku Hot Soup Bathtub": Damage changes from Version 2020.07.25 reverted.
- "Youkai World Gate of 100 Demons": Damage & proration changes from Version 2020.07.25 reverted.


=====================================
07/25/20 - Version 2020.07.25
=====================================

- [System] All combos now apply a one-time 75% prorate for the second hit onward.
- [System] Throw tech window increased (7f->15f).
- [System] Tech recovery command changed to hold x/y/z before hitting ground. Can now tech left or right.
- Air Dash speeds increased. Now has approximately the same speeds as her grounded dashes.
- Guard Cancel: Changed to Youkai Amikiri Transformation.
- 6z: Damage increased (40,45->45,50).
- 2z: Hit velocity on block increased.
- Youkai Amikiri Transformation: No longer loses any leaves when used as a Guard Cancel.
- "Bunbuku Hot Soup Bathtub": Damage increased (50,22xN -> 80,25xN).
- "Youkai World Gate of 100 Demons": Damage increased (30xN->37xN), proration increased (0.95xN->0.96xN).

=====================================
12/08/19 - Version 2019.12.08
=====================================

- Youkai Amikiri Transformation: Corrected turning command input.

=====================================
12/02/19 - Version 2019.12.02
=====================================

- [System] Juggle system now functions independently of M.U.G.E.N's default juggle system.
- "Bunbuku Hot Soup Bathtub": Now freezes the timer if the move successfully hits.
- "Band of 808 Tanuki": Now freezes the timer if the move successfully hits.

=====================================
09/02/19 - Version 2019.09.02
=====================================

- [System] Additional miscellaneous common state fixes.

=====================================
08/25/19 - Version 2019.08.25
=====================================

- [System] Fixed an issue where the tech recovery wasn't using all two-punch button combinations.
- [System] Miscellaneous common state fixes and adjustments.
- [System] Fixed various timing issues pertaining to Spellcard effects.
- [System] Opponents will now always go into the air recovery anim at the same time as the reset state.
- [System] Reset landing now grants opponents increased full invulnerability (2f->3f) and 6f extra grab invulnerability.
- [System] Added numerous state numbers that were missing from the tick fix code.
- [System] Fixed an issue where custom stated opponents were getting up a frame too early.

=====================================
08/03/19 - Version 2019.08.03
=====================================

- [System] Corrected ground tech behavior.

=====================================
07/23/19 - Version 2019.07.23
=====================================

- [System] Walk & Dash speeds decreased.
- 6z: Now requires 1 leaf to use.
- j2z: Now requires 1 leaf to use.

=====================================
06/07/19 - Version 2019.06.07
=====================================

- Utsusemi Jizo Transformation: Fixed inability to counterhit under certain circumstances.

=====================================
05/26/19 - Version 2019.05.26
=====================================

- [System] Minor adjustments to hurtboxes in some gethit states.
- [System] Minor adjustments to some common state animations.
- [System] Updated Recovery frame flags to current standards.
- [System] Updated Hitdef triggers to current standards.
- [System] Groundbounces & Wallbounces no longer allow opponents to quick getup upon landing.
- [System] Fixed timing issues with groundbounce angledraw and offset.
- [System] Forward dash startup increased by 2f.
- [System] Corrected jump cancel timings on forward dash.
- [System] Air dashes now have a height restriction when ascending.
- [System] Corrected certain debug errors if p2 is not present.
- [System] Added missing hit ground from fall sounds.
- [System] Fixed visual issue where the tech recovery explod was being affected by palfx.
- [System] Fixed IKEMEN exclusive visual issue where certain helpers would incorrectly generate a shadow.
- 2x: Now carries momentum from a dash.
- 6y: No longer loses overhead properties when cancelled into.
- Animal Lute Priest: Recovery time increased by 2f. Now disappears if Mamizou is hit.
- Animal Lute Priest: Projectile hitbox size decreased.
- Youkai Karakasa Transformation: Fixed a scaling error that would occur upon colliding with another projectile.
- Youkai Tsurube Transformation: Damage decreased (100->90), recovery time on all versions increased by 4f.
- Youkai Tsurube Transformation: Projectile hitbox size decreased, projectile hurtbox size increased.
- Utsusemi Jizo Transformation: Landing recovery increased by 3f, landing damage increased (80->90).

=====================================
01/27/19 - Version 2019.01.27
=====================================

- [System] Fixed issue with landing sounds.
- "Youkai World Gate of 100 Demons": Fixed issue where opponent could recover prematurely.

=====================================
12/02/18 - Version 2018.12.02
=====================================

- [System] Fixed bug involving OTGs.

=====================================
09/21/18 - Version 2018.09.21
=====================================

- Fixed a minor issue with reset.

=====================================
05/27/18 - Version 2018.05.27
=====================================

- Fixed counterhit related bugs.

=====================================
05/17/18 - Version 2018.05.17
=====================================

- Fixed additional bugs to reset system.

=====================================
05/12/18 - Version 2018.05.12
=====================================

- j2z: Now causes an untechable knockdown.
- New Command Normal: 6z.
- Youkai Tsurube Transformation: Can no longer cancel into Spellcards before bucket swings in front of Mamizou.
- Utsusemi Jizo Transformation: Fixed bug where proration was being applied twice.
- Youkai Karakasa Transformation: No longer loses a leaf if hit by melee attacks.
- "Bubuku Hot Soup Bathtub": Corrected bug where attack would always whiff if cancelled from Utsusemi Jizo Transformation.

=====================================
03/24/18 - Version 2018.03.24
=====================================

- Minor adjustments to dash behavior.
- Adjustments to guarding behavior regarding crossups.
- Adjustments to Guard Cancel invulnerability.
- Adjustments to reset behavior.

=====================================
03/07/18 - Version 2018.03.07
=====================================

- Movement velocities increased.
- 5x: Hitbox size increased.
- 5y: Startup decreased by 1f, hitbox size increased, damage increased (45->50).
- 6y: Startup decreased by 1f, damage increased (65->70).
- 5z: Startup decreased by 2f, damage increased (60->70).
- 2x: Startup decreased by 1f, hitbox size increased.
- 2y: Startup decreased by 1f, hitbox size increased, damage increased (50->55).
- 2z: Damage increased (70->75).
- j5x: Damage increased (40->45).
- j5y: Startup decreased by 1f, damage increased (50->55).
- j5z: Startup decreased by 2f, hitbox size increased, damage increased (70->75).
- j2z: Startup decreased by 3f.
- Animal Lute Priest: Recovery decreased by 6f, damage increased (55->60).
- Youkai Tsurube Transformation: Startup decreased by 1f.
- Utsusemi Jizo Transformation: Startup decreased by 1f.
- Youkai Amikiri Transformation: Damage increased (80/100/120->90/110/130).
- Youkai Karakasa Transformation: Startup decreased by 2f.
- "Bunbuku Hot Soup Bathtub": Startup decreased by 1f, hitbox sizes increased.

=====================================
02/02/18 - Version 2018.02.02
=====================================

- Utsusemi Jizo Transformation: Can no longer expend more than 1 leaf per use. Now only has 1 hit of armor.

=====================================
12/11/17 - Version 2017.12.11
=====================================

- 2z: Hitbox size increased, effects added.
- j2z: No longer causes knockdown against standing opponents.
- j2z: Landing recovery decreased by 4f, hitstun increased by 3f.
- Youkai Tsurube Transformation: Now swings in a wider arc.

=====================================
11/25/17 - Version 2017.11.25
=====================================

- Fixed bug where incorrect sounds play when Mamizou is knocked down.
- Throw: Fixed bug where Hard Knockdowns were not being applied correctly.

=====================================
10/31/17 - Version 2017.10.31
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
- Both the ground and aerial versions can be cancelled into aerials.

* y+z (5yz) - Forward Throw [G]
- Can be teched out of by pressing any button while holding back or forward; opponent cannot tech if grabbed in the
  middle of an attack.

* B+y+z (4yz) - Backward Throw [G]
- Can be teched out of by pressing any button while holding back or forward; opponent cannot tech if grabbed in the
  middle of an attack.

* F+y (6y) - Lunging Punch [G]
- Mamizou does an overhead punch that lunges her forward.

* F+z (6z) - Karakasa Thrust [G]
- Mamizou pulls out an umbrella youkai and lunges forward. Hits twice, second hit causes a knockdown. Requires at
  least 1 leaf to use.

* j.D+z (j.2z) - Nurikabe Transformation [A]
- Mamizou rides a nurikabe until she hits the ground. Hard Knockdown. Hits OTG, and causes a groundbounce on counterhit.
  Requires at least 1 leaf to use.

------------------
Specials
------------------

NOTE: All of Mamizou's Specials, with the exceptions of Guard Cancel and Animal Lute Priest, require at least 1 leaf to use.

* B,DB,D + x/y/z (412x, 412y, or 412z) - Guard Cancel [G]
- Requires 1000 Power, can only be done during blockstun. Mamizou counterattacks using the X version of Youkai Amikiri Transformation.

* D,DF,F + x/y/z (236x, 236y, or 236z) - Animal Lute Priest [G]
- Projectile. Mamizou blows a leaf that transforms into a frog-shape, hopping across the screen. Button press determines the arc of
  the frog hops.

* F,D,DF + x/y/z (623x, 623y, or 623z) - Youkai Tsurube Transformation [G]
- Projectile. Mamizou causes a bucket to swing into the stage, causing a wallbounce if it hits. Hitting the bucket with a projectile
  or hitting Mamizou will expend a leaf.

* D,DB,B + x/y/z (214x, 214y, or 214z) - Youkai Karakasa Transformation [G]
- Projectile. Mamizou summons an umbrella youkai to jump from the ground some distance away from her. Hitting the umbrella with a 
  projectile will expend a leaf. Hits twice, with the second hit popping up the opponent.

* B,D,DB + x/y/z (421x, 421y, or 421z) - Utsusemi Jizo Transformation [GA]
- Mamizou transforms into a statue, reappearing above her position and dropping down. Mamizou has complete armor while dropping, but
  being hit will expend a leaf and Mamizou will become vulnerable if she expends her last leaf. Can hit the opponent with a shockwave
  if the drop whiffs, but will cause significantly lower damage. Button press determines Mamizou's drop position.

* F,DF,D,DB,B + x/y/z (63214x, 63214y, or 63214z) - Youkai Amikiri Transformation [GA]
- Mamizou rides a netcutter youkai in an arc. Has projectile invincibility during the entire ride. Hitting Mamizou during the ride
  will expend a leaf.

------------------
Spellcards
------------------

=============================
Level 1 Spellcards
=============================

* D,DF,F,D,DF,F + x/y/z (236236x, 236236y, or 236236z) - Transformation "Youkai World Gate of 100 Demons" [GA]
- OTG Projectile. Mamizou hops on top of a tori gate as several youkai-disguised tanuki rampage through, trampling the opponent. Hits
  OTG, but the tori gate counts as part of Mamizou's hitbox.

* D,DB,B,D,DB,B + x/y/z (214214x, 214214y, or 214214z) - Transformation "Bunbuku Hot Soup Bathtub" [G]
- Reversal. Mamizou transforms in a puff of smoke to launch the opponent upward into a column of steam released by her bathing pot. Has
  startup invincibility, but will not complete the entire transformation if the initial hit is blocked or whiffs.

* D,D,D + x/y/z (222x, 222y, or 222z) - "Prosperity of Infinite Tanuki" [G]
- Mamizou calls upon her band of Tanuki, which perform a bellydrumming before vanishing, granting Mamizou infinite use of her leaves
  for a short time. Specials that require leaves will also gain a 20% damage boost during this time. Requires at least 1 leaf upon use,
  and the duration of this effect is dependent on how many leaves Mamizou has at the time of activation.

=============================
Level 3 Spellcards
=============================

* D,DF,F,D,DF,F + x+y+z (236236xyz) - "Band of 808 Tanuki" [G]
- Mamizou dashes forward. Upon hitting the opponent, Mamizou proceeds to gang up on the opponent with several tanuki disguised as
  herself, before launching a bomb at the ensuing chaos. Has complete projectile invincibility during the dashing portion.

* D,DB,B,D,DB,B + x+y+z (214214xyz) - "Full Moon Pompokolin" [G]
- Mamizou summons a fake moon and throws it at the opponent, which then explodes into frogs upon contact. The frogs will last for a 
  bit before disappearing. The amount of frogs spawned is determined by how many leaves Mamizou has when the move is performed.


------------------
Credits
------------------

Elecbyte 		- For making MUGEN.
ZUN             	- For creating the Touhou project.
Daniel9999999		- Recycled code portions, beta testing, and a good friend in general
Flawless		- Original X-Costume Selector code
Etoile			- Sprites
DoomBowser		- Additional fixes

Palette Contributors: 
- GarchompMatt
- L.E.O.N.
- Data_Drain
- Shimmering Brony

Beta Testers:
- Rodknee
- Doombowser