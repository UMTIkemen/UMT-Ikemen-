                             	
				 JEANNE D'ARC By R@CE AKIR@ 
___________________________________________________________ 4/30/2020
Contact:	bladex45@yahoo.com
Website:	http://infiniteff.forumotion.com
Customized version of SNK's Jeanne D'Arc character, for MUGEN 1.0


=====<Movelist>=====

 U - up          LP - light punch        LK - light kick
 D - down        MP - medium punch       MK - medium kick
 F - forward     HP - heavy punch        HK - heavy kick
 B - back        P - any punch           K - any kick
 s - start       2P- two punches         2K- two kicks
 
 (Air) - Move must be performed in the air.
 (In Air) - Move can also be performed in the air.
 (EX)  - Move has an EX version, performed by pressing two punch/kick buttons.
 (MAX) - Use two punch/kick buttons when performing a Super move to power it up.

-IF YOU DON'T WANT CHAIN COMBOS GO TO THE CONFIG AND CHANGE THE VALUE UNDER VAR 55
TO 0 AND SAVE.Turning off the chain combos will give the character more of a 
cvs-ish type damage for normal attacks. 

<NORMAL>

.Slap		                        F/B + 2P		(near opponent)
.Flying Mare	                        F/B + 2K		(near opponent)



<SPECIAL>
.Aura Bird (EX)	               (Charge) B, F+P (Default Config) = 0
.Aura Bird (EX)	                        D,DF,F+P (Custom Config) = 1
.Flash Sword (EX)              (Charge) B, F+K (Default Config) = 0
.Flash Sword (EX)                       D,DF,F+K (Default Config) = 1
.Justice Sword (EX)	       (Charge) D, U+K (Default Config) = 0
.Justice Sword (EX)	                F,D,DF+K (Custom Config) = 1
.Slash Whip (EX)                        D,DB,B+P
.Angel Arrow (EX) (Air Only)            D,DF,F+P






<SUPERS>

.Super Aura Bird               (Charge) B,F,B,F+P POWER>=1000 (Default Config) = 0
.Super Aura Bird                        D,DF,F,D,DF,F+P  POWER>=1000 (Custom Config) = 1
.Super Flash Sword             (Charge) B,F,B,F+K POWER>=1000 (Default Config) = 0
.Super Flash Sword                      D,DF,F,D,DF,F+K  POWER>=1000 (Custom Config) = 1
.Super Slash Whip	                D,DB,B,D,DB,B+P  POWER>=1000  
.Super Angel Arrow                      D,DF,F,D,DF,F+P  POWER>=1000 (Only in The Air) 	


 
.Max Super Aura Bird           (Charge) B,F,B,F+2P POWER>=2000 (Default Config) = 0
.Max Super Aura Bird                    D,DF,F,D,DF,F+2P  POWER>=2000  (Custom Config) = 1
.Max Super Flash Sword         (Charge) B,F,B,F+2K POWER>=2000 (Default Config) = 0
.Max Super Flash Sword                  D,DF,F,D,DF,F+2K  POWER>=2000 (Custom Config) = 1
.Max Super Slash Whip                   D,DB,B,D,DB,B+2P  POWER>=2000
.Max Super Angel Arrow                  D,DF,F,D,DF,F+2P  POWER>=2000 (Only in The Air) 	


.Omega Fire Bird	                D,DF,F,D,DF,F+PK  POWER>=3000
.Dark Manslayer		                D,DB,B,D,DF,F+PK  POWER>=3000



<SYSTEM>

.Run/Dash:          		        F, F
.Backward Dash:                 	B, B
.Low Jump:                      	tap U
.High Jump:                     	tap D, U
.Long Low Jump:                 	tap D, tap U            
.Sidestep:                      	LP + LK
   .Sidestep Attack:            	p / k
.Forward Roll:                  	F + LP + LK
.Backward Roll:                 	B + LP + LK
.Parry High:                    	tap F
.Parry Low:                     	tap D
.Air Parry:                     	tap F           	(Air)
.Power Charge:                  	hold MP + MK
.Zero Counter:                  	B, DB, D, P / K 	(during standing or crouching guard)
.Custom Combo:                  	HP + HK          	(Air also)
.Fall Recovery:                 	2P / 2K  	    	(while falling and allowed)

=====<Gameplay Notes>=====

COMBO SYSTEM:
 - Normal Attacks are able to chain into other normal attacks.
 - Normal attacks can be canceled into Command, Special and Super moves
 - Some Special moves can be canceled into Super moves
 - Some Lv1 Super moves can be canceled into MAX Super moves
 - Cancelling a Special, Super move or Custom Combo into a Super move resets the juggle points
   but also reduces its damage


CUSTOM COMBO:
 - Removes cancellable attack restrictions and gives you a lot of freedom to combo them
 - Juggle limit is lifted
 - You can only use EX Special or Super moves from the point the character starts flashing faster
   and brighter, and doing so ends Custom Combo
 - Gives you a short invulnerability window at the start

THANKS TO -

Data East/SNK-For creating the original character.

Elecbyte-For Making the MUGEN engine.

Virtualtek-For creating Fighter Factory.

P.O.T.S-For all your tutorials and open source coding. One of the best coders in mugen!

Dampir - For taking the time to convert Jeanne's sprites over into his CVS-ish like style and everything else he does for me.

Darkside Joe - For using the original Sff that was in his Jeanne D'Arc as a base to make my own Jeanne D'Arc, as well as using his Animation File and some of his original coding which I updated and changed around as well.

Hades - For making the small portraits

Raging Rowen - For making me Lvl3 portraits & palettes

RaZorbakk36 - For making me a crap load of palettes for Jeanne. And anything else I've asked of him.

Infinite- For teaching me some new coding and putting up with my crazy ass and being a good friend

Skeletor EX - For beta testing, extra custom sprite edits, normal portrait and ideas.

Ianb3000 & Enlightened Shadow- For motivation because of the CVS 3 Screenpack they made.

UltimateBiosparkJ - For beta testing, and palettes and motivation.

TrafalgarLawzz & BlackJudai - For using some of their coding from their Hiei as a base to make Jeanne's 2nd Lvl3 Super

NDSilva, K.H.77, Realra, & KOFHERO77 - For taking the time to make awesome palettes for Jeanne.


=====<Disclaimer>=====

 - Jeanne D'Arc is the property of SNK
 - World Heroes is the property of SNK
 - This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes