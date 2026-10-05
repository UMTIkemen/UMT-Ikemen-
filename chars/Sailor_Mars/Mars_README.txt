******************************************************************************************
		Sailor Mars v1.35(05/04/26)
		from Bishoujo Senshi Sailor Moon
******************************************************************************************
MUGEN ver: 1.0
Author: MillionMiles

CREDITS:
rgveda99, LuisChamat, TsukinoAi+ - sprites
Makron & Roket (spriters-resource.com) - sprite rips
PotS, Mr.Foobs, PlasmoidThunder, Cyanide - coding advice
Flavio-ruru (www.deviantart.com/flavio-ruru) - vector portrait

Naoko Takeuchi - original character
Michie Tomizawa - original voice
Banpresto - original sprites
Elecbyte - MUGEN engine

Testing and feedback:
PotS, Toni, Momotaro, RagingRowen, rgveda99

This character is a non-profit fan work, any commercial use is prohibited.


MOVESET:
==========================================================================================
		Basic Moves
==========================================================================================
 U - up
 D - down
 F - forward
 B - back

 x 		- light punch (LP)
 y 		- heavy punch (HP)
 z equals x+y
 
 a		- light kick (LK)
 b		- heavy kick (HK)
 c equals a+b

 s 		- taunt

 x,x,x,x,x	- autocombo

 tap U		- short jump

[cancel guard or any non-aerial normal attack that connects]
 F,F or z	- run forward
 B,B or B+z	- dash back
 D,U or c	- superjump

[when running forward]
 hold F		- keep running
 x or y		- running punch
 a or b		- running kick

[opponent is near]
 F+z	 	- normal throw
		>both players should mash buttons to increase/decrease damage.

[while jumping]
 U		- air jump
 F,F or z or c 	- air dash
 D+x/a		- jumpdown attack
 D+y/b		- cross-up attack
 x,x,x		- autocombo

[while falling]
 any 2 attack
 buttons	- fall recovery
 
[while getting up from knockdown]
 U+x+a
  or 		- getup attack
 U+y+b

==========================================================================================
		Special Moves
==========================================================================================
 D,DF,F, x/y		- FIRE SOUL [Projectile][EX Cancel]

 D,DB,B, x/y		- AKURYO TAISAN [Unblockable]

 D,DF,F, a/b		- RUNNING FIRE [Projectile][EX Cancel]

 D,DB,B, a/b		- FIRE HEEL DROP [Dodge][EX Cancel]

 D,DB,B, a/b		- PHOENIX ARROW [Air]

==========================================================================================
(1/6 energy)	EX Special Moves
==========================================================================================
 D,DF,F, z		- BURNING MANDALA [Projectile]

 D,DF,F, c		- MARS SNAKE FLARE [Projectile]

 D,DB,B, c		- FIERY SWEEP [Dodge]

==========================================================================================
(2/3 energy)	Super Moves 
==========================================================================================
 D,DF,F,D,DF,F, x/y 	- FIRE SOUL BIRD [Projectile]
	
 B,D,DB,B,DB,D, x/y  	- PHOBOS & DEIMOS

==========================================================================================
(1/3 energy)	Planet Power
==========================================================================================
 z+c		- ACTIVATE
		>faster movement
		>no projectile limit
		>unlimited normal attack chains and juggling
		>normal attacks deal chip damage
		>unique normal attacks during combo push character forward
		>reduces Super Moves energy cost by 25% (to 1/2 of energy)
		>cannot guard or gain energy
		>small invincibility window upon activation
		>duration is 180 frames (3 seconds)
Getting hit or using any energy consuming attack ends duration prematurely.
==========================================================================================
		Tags
==========================================================================================
[Air] - can only be used in air
[Air+] - can be used both on ground and in air
[Hold] - hold the attack button to charge

[Dodge] - can avoid some attacks or projectiles
[Armor] - can take some attacks without being interrupted
[Counter] - can reverse some incoming attacks

[Unblockable] - cannot be blocked by an opponent
[Projectile] - counts as an active projectile
 >only one projectile can be used at a time unless EX Special or Super

[EX Cancel] - can be chained into EX counterpart
 >after using special don't release the attack button and press the other one to do EX Cancel
	e.g. D,DF,F, hold x, y
 >EX Cancel also can be performed using the normal command for EX Special
==========================================================================================

CHANGELOG:
(v1.35)
-aerial cross-up attack command remapped to D+y/b
-throw command remapped to F+z
-now possible to disable double attack inputs for movement in config.txt file
-smoother combo into launching normal attack
-some AI adjustments


(v1.3)
-aerial cross-up attack reworked:
	B+y/b - cross-up attack
	>character will turn if hit connects
	>better adapted for starting combos
-short jump and aerial autocombo added: 
	>tap U to perform short jump instead of a normal one
	x,x,x - autocombo in air
-added seamless air-to-ground transitions during normal attack combos
-Akuryo Taisan now has a different version when performed during combo:
	>Mars throws a single ofuda with increased range and hitstun
-Running Fire no longer hits low, travel speed increased
-Snake Flare projectile behaviour altered
-Fire Heel Drop HK version now has a longer startup with projectile invincibility
-other small tweaks


(v1.2)
-HP Fire Soul projectile behaviour altered
-EX Snake Flare reworked
-EX specials are not affected by specials projectile limit anymore
-Planet Power reduces Super Moves energy cost by 25%
-some character compatibility updates
-visual updates & new sprites
-balance adjustments
-minor error fixes

(v1.1)
-Akuryo Taisan reworked
-Akuryo Taisan command remapped to [D,DB,B, x/y]
-Running Fire/Snake Flare recovery time reduced
-Fire Soul Bird chip damage reduced
-Phobos & Deimos movement/attack speed increased; getting hit ends duration prematurely
-minor sprite updates