------------------------------------------------------------------------

Azrael (CPEX Style) by Deoxgigas

Mr. Tyrant is here to smack you in the face, and then eat it for dinner. Because that's what he does.

So with the success of Kagura Mutsuki, I laid plans for more Blazblue characters that I would look into after a nice long break. 

The one who would follow was Azrael, and just like Kagura, he's based on his CPEX version, has all the moves from the game, and is about as close to the source as I could get him.

It hasn't been easy. Even though I already had a solid foundation in Kagura to start with, it would still take hundreds of hours to build up this guy.
Azrael had the same problem as all other Blazblue characters: Most of his effect sprites are 3d textured and pretty damn hard to rip, and unlike Kagura, 
Azrael had almost no standard 2d sprites of his own to work with. Therefore, I've had to heavily improvise: Azrael uses more sprites from other games than Kagura, and is also using a bunch of the 2d sprites available from various other Blazblue characters. 
As a result, Azrael now has alot more claw and fire in his moves.

Well, I had my share of fun figuring out how to make him work, and learning how Dust and Vanishing (Banishing?) attacks work in Arcsys games, because Azrael has his own versions of both.

------------------------------------------------------------------------

Movelist:

Just in case: 4 is Back, 6 is Forward, 2 is Down, 8 is Up and 5 is Neutral.

Also, if you know your BB buttons: a is X, b is Y, c is Z and d is A.

------------

Normals:

5X
5Y
5YY
5Z
6X
6Y
6Z
2X
2Y
2Z
3Z
j.X
j.Y
j.Z
j.2Z

------------

Drives:

5A
2A
6A
3A
j.A
j.2A

Note: Spawns Weak Points and has additional effects and damage if they're already active.

------------

Specials:

Tiger Magnum
236Z

Cobra Strike
6Z during Tiger Magnum

Note: In Blazblue CPEX, Cobra Strike actually had the command "46Z", but it was changed to "6Z" in BBCF. 
I decided to run with the CF command because it's simpler, and easier to work with. 

Leopard Launcher
6Z during Cobra Strike


Hornet Bunker - 214A

Hornet Chaser
8 when hitting with Hornet Bunker while a Lower Weak Point is active.

Note: Hornet Bunker adds and uses Lower Weak Points like some of the Drive moves.


Valiant Crash - 236A

Valiant Charger
6 when hitting with Valiant Crash while a Upper Weak Point is active. 
Can be used again every time you hit with most moves during a certain time frame.

Note: Valiant Crash adds and uses Upper Weak Points like some of the Drive moves.


Gustaf Buster - 236X

Sentinel Dump Standard - 214Z

Sentinel Dump Downed - 22Z

Note: Standard Sentinel Dump can be used all the time. Downed Sentinel Dump can only be used while the opponent is on the ground, or be comboed into during 3Z.


Growler Field - 214Y

Phalanx Cannon - 236Y

Note: Growler Field absorbs projectile moves and adds a charge each time (up to 3). Phalanx Cannon can only be used while having atleast one of those charges.


------------

Supers:

Distortion: Scud Punishment
214214A

Distortion: Black Hawk Stinger
236236A

Note: Costs 50 Heat (500 meter) each. 

------------

Astral Heat: Patriot Apocalypse

632146Z

Note: Costs 100 Heat (Full meter) and can only be used when the opponent has less than 35% HP. 
Cannot be chained into during a combo that brings the opponent to less than 35% HP. 

In the source game, an Astral Heat finisher can only be used during the last round you need to win a match. However, since there's no real
way of checking whether the current round fulfills that in Mugen, you can use the Astral Heat during any and all rounds.
It will, however, only work once and cannot be used again during the same match if you've already won once using it.
Also, the AI will only attempt to use this after atleast 1 round has passed.

------------

Others:

Crush Trigger: 5B
Counter Assault: 6B (While in Guardstun)
Throw: 5C/6C
Backwards Throw: 4C
Barrier: 4B (Hold)
Burst: B+C (While in Hitstun)
Rapid Cancel: X+Y+Z 
Overdrive: B+C
Taunt: Start

Notes: Crush Trigger costs 25 Heat, Counter Assault and Rapid Cancel costs 50 Heat

------------

A few other notes:

- The AI is maxed out to fight at its best as always, regardless of AILevel.
- In BB, you have Staggers and Throw states that can be broken out of if you push a button in time. 
Here in Mugen, those are Custom states, which means that the entire deal lies on Azrael's side. Now this is all fine VS other players, 
but against AI, it's a different matter. I've made it so that escaping any of these is based on the AIlevel of the opponent with the following values:
Stagger: 10% * AILevel, Max AILevel will always escape. Low AILevel will escape at the latest point, highest at the earliest.
Throw: 15% + 5% * AILevel, Max AILevel is 70%. (Throws cannot be broken if they Counter Hit.)

-You can change the frequency of Azrael's voice clips being played by changing var(56) at the very bottom of the first CNS file. (azrael.cns)
3 is default, 0 is no voices and 10 is 100% voices at all times.
-You can also change his localcoord in his .def file to fit him better into some of the Mugen 1.1 stages.

Palettes:
1-9: Normal
10: Somewhat Serious Mode.
11: Enchant Dragunov Level 4 
12: Enchant Dragunov Level 9 

10p greatly strengthens Azrael in all kinds of aspects, such as breaking several rules (Meter resets every round, lack of iframes during certain recoveries, 
throws can be rejected, etc.), as well as giving him more iframes (mostly against grabs) during alot of his moves. Also, the AI gets a few extra cheat options.
For full details, check the bottom of the readme file.
11p adds metergain, immunity to throws and projectiles, and triple attack power, as well as every advantage gained in 10p. 
12p adds constant full meter, immunity to almost all attacks, 10x attack power and constant life gain, as well as every advantage gained in 10p. Also, Phalanx Cannon can be fired all the time regardless of charges.

Check out http://www.dustloop.com/wiki/index.php/BBCPE/Azrael if you want more information about the character, his moves or what the specific mechanics do. 

------------------------------------------------------------------------

10p Serious Mode Changes:

------------

Foundational Changes:

- Meter will no longer reset after every round.
- All forms of recovery now have 100% iframes from start to finish.
- Bursts now have 100% iframes from start to finish.
- The base recover rate of the Burst meter is doubled, and amount recovered when taking damage is increased by 50%.
- Bursts can now be used while getting hit in a custom state.
- Astral Finish moves can now be used at 40% or less HP, up from 35%.
- Azrael is now immune to grabs for a few frames after getting up, getting hit or guarding a hit.
- Air Dashes now have 100% iframes until Azrael returns to his regular air state
- Both Front and Back Dashes now have 100% iframes from start to finish.
- Azrael now regains control during his forward dash 4 frames before the end of recovery, and will turn around during the dash if the opponent is behind him.
- Azrael now regains control during his backwards dash 6 frames before the end of recovery.
- Increased the meter gained from Instant Blocks by 50%
- The standard recovery rate of staggers is now 50% regardless of enemy AI Level.
- Throws can no longer be rejected.

------------

Move Changes:

- 5A, j.A, j.2A and j.2Z now has iframes against grab type moves.
- 6Z and 3Z now has iframes against all crouch-state and grab type moves.
- 6A and 3A now has iframes against grab type moves and projectiles.
- Hornet Bunker and Valiant Crash are now practically invincible during the charge animation, and has iframes against grab type moves and projectiles during the attack.
- Tiger Magnum and Cobra Strike now has iframes against grab type moves till the end of their active frames.
- Leopard Launcher and Gustaf Buster now has 100% iframes from start till the end of their active frames.
- Throws are now muuuuch faster. (1f grabs)
- Crush Trigger now has iframes against grab type moves during the attack part of the move.
- Counter Assault now has 100% iframes from start to finish, and costs 25 heat instead of 50.
- All distortion drives now have 100% iframes from start to finish.

------------

AI Advantages:

- The AI can now use Azrael's Dash moves on the ground when guarding.
- The AI can now cancel 5Y into a guard if attacked within the first 10 frames.