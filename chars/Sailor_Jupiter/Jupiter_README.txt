******************************************************************************************
		Sailor Jupiter v1.15(05/04/26)
		from Bishoujo Senshi Sailor Moon
******************************************************************************************
MUGEN ver: 1.0
Author: MillionMiles

CREDITS:
rgveda99, Dr. Amigo, TsukinoAi+ - sprites
Makron & Roket (spriters-resource.com) - sprite rips
PotS, Mr.Foobs, PlasmoidThunder, Cyanide - coding advice
Flavio-ruru (www.deviantart.com/flavio-ruru) - vector portrait

Naoko Takeuchi - original character
Emi Shinohara - original voice
Banpresto - original sprites
Elecbyte - MUGEN engine

Momotaro, rgveda99 - testing and feedback

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
 D,DF,F, x/y		- SUPREME THUNDER [Air+][Projectile][EX Cancel]

 F,D,DF, x/y		- FLOWER HURRICANE [EX Cancel]

 D,DB,B, x/y		- DOUBLE AXEL [Armor][EX Cancel]

 D,DF,F, a/b		- SPARKLING WIDE PRESSURE [Projectile][Hold]

 F,DF,D,DB,B x/y	- GIANT SWING [Unblockable]

==========================================================================================
(1/6 energy)	EX Special Moves
==========================================================================================
 D,DF,F, z		- COCONUT CYCLONE [Air+][Projectile]

 F,D,DF, z		- FLOWER HURRICANE BREAKER

 D,DB,B, z		- LIGHTNING STRIKE [Armor][Dodge]

==========================================================================================
(2/3 energy)	Super Moves 
==========================================================================================
 D,DF,F,D,DF,F, x/y 	- SUPREME THUNDER DRAGON [Air+][Projectile]
	
 D,DB,B,D,DB,B, a/b  	- JUPITER KICK REVERSAL [Dodge][Counter][Unblockable]

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
[Projectile] - counts an as active projectile
 >only one projectile can be used at a time unless EX Special or Super

[EX Cancel] - can be chained into EX counterpart
 >after using special don't release the attack button and press the other one to do EX Cancel
	e.g. D,DF,F, hold x, y
 >EX Cancel also can be performed using the normal command for EX Special
==========================================================================================


CHANGELOG:
(v1.15)
-aerial cross-up attack command remapped to D+y/b
-throw command remapped to F+z
-now possible to disable double attack inputs for movement in config.txt file
-smoother combo into launching normal attack
-some AI adjustments


(v1.1)
-aerial cross-up attack reworked:
	B+y/b - cross-up attack
	>character will turn if hit connects
	>better adapted for starting combos
-short jump and aerial autocombo added: 
	>tap U to perform short jump instead of a normal one
	x,x,x - autocombo in air
-added seamless air-to-ground transitions during normal attack combos
-neutral Supreme Thunder stun increased
-other small tweaks
