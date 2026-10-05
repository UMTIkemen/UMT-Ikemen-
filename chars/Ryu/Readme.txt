                            __________________________________________
===========================| Ryu by KarmaCharmeleon		      |===========================
                            ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯        [12.07.2025]

 - Contact:	karmacharmander@gmail.com
 - Website:	https://www.imdb.com/title/tt0367279/
 - Customized version of Capcom's Ryu character, for MUGEN 1.0



=====<Features>=====

 - All the essential stuff
 - Details and moves taken from his various video game appearances
 - Gameplay mixed from several games, including CvS2, KOF, SFA3 and SFIII
 - Special intros versus Kyo Kusanagi, Ken Masters, Violent Ken, Gouki, Gouken, Evil Ryu, Ryo Sakazaki and Sagat (Normal); Ryu, Gouki, Gouken, Violent Ken, and Orochi Iori (Evil); Ryu, Evil Ryu and Gouki (Shadow)



=====<Mode Overview>=====

This character has three different modes:

<Ryu>
- Regular Ryu
- Based primarly on his SF2, SF4 and CvS2 movesets

<Evil Ryu>
- An evil version of Ryu unleashed by succumbing to the Satsui no Hado
- Based primarly on his SF4 and CvS2 movesets

<Shadow Ryu>
- An sentient manifestation of Ryu's Satsui no Hado
- Based primarly on Kage's SFV moveset



=====<.DEF Overview>=====

This char has four  different .def files, here's what each one does:

<RYU.def>
The mode is selected via palette:

Palettes 1, 2, 3, 4, 5, 6	-> Normal Ryu mode
Palettes 7, 8, 9		-> Evil Ryu mode
Palettes 10, 11, 12		-> Shadow Ryu mode

To add him to your Mugen, add the following line to your select.def, under [Characters]:
Ryu,

<NORMALRYU.def>
Only Normal Ryu mode.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
Ryu/NormalRyu.def,

<EVILRYU.def>
Only Evil Ryu mode.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
Ryu/EvilRyu.def,

<SHADOWRYU.def>
Only Shadow Ryu mode.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
Ryu/ShadowRyu.def,

=====<Movelist>=====

 U - up          x - light punch        a - light kick
 D - down        y - medium punch       b - medium kick
 F - forward     z - heavy punch        c - heavy kick
 B - back        p - any punch          k - any kick
 s - start       2p- two punches        2k- two kicks

 (Air) - Move must be performed in the air.
 (EX)  - Move has an EX version, performed by pressing two punch/kick buttons.
 (MAX) - Use two punch/kick buttons when performing a Super move to power it up.


=====<Normal Mode>=====

<NORMAL>

.Sakotsu Wari						F + y
.Senpu Kyaku						F + b
.Kyubi Kudaki						F + z
.Seoi Nage	         				F/B + 2p		(near opponent)
.Tomoe Nage						F/B + 2k		(near opponent)
     
     
<SPECIAL>
     
.Hadoken (EX)						D, DF, F, p
.Shakunetsu Hadoken (EX)				B, DB, D, DF, F, p
.Shoryuken (EX)						F, D, DF, p
.Tatsumaki Senpukyaku (EX)				D, DB, B, k
.Airborne Tatsumaki Senpukyaku (EX)			D, DB, B, k		(Air)
.Jodan Sokuto Geri (EX)					B, DB, D, DF, F, k

     
<SUPER>
     
.Shinku Hadoken (MAX)					D, DF, F, D, DF, F, p
.Denjin Hadoken (MAX)					D, DB, B, D, DB, B, p
.Shinku Tatsumaki Senpukyaku (MAX)			D, DB, B, D, DB, B, k


<Lv3 SUPER>

.Shin Shoryuken       	 				D, DF, F, D, DF, F, 2k


<SYSTEM>

.Forward Dash:  		                	F, F
   .Run:                       					hold
.Backward Dash:                 			B, B
.Low Jump:                     				tap U
.High Jump:                     			tap D, U
.Long Low Jump:                 			tap D, tap U            
.Sidestep:                      			a + x
   .Sidestep Attack:            				p / k
.Forward Roll:                  			F + a + x
.Backward Roll:                 			B + a + x
.Parry High:                    			tap F
.Parry Low:                     			tap D
.Air Parry:                     			tap F           	(Air)
.Power Charge:                  			hold b + y
.Zero Counter:                  			B, DB, D, p / k		(during standing or crouching guard)
.Custom Combo:                  			c + z           	(Air also)
.Fall Recovery:                 			2p / a + x      	(while falling and allowed)


=====<Evil Ryu Mode>=====

<NORMAL>

.Kikokuzuki						(close) y, z
.Zugaihasatsu						F + y
.Senpu Kyaku						F + b
.Seichu Nidan Tsuki					F + z
.Tenma Kujinkyaku					D + b			(Air, during the apex of the jump)
.Seoi Nage	         				F/B + 2p		(near opponent)
.Tomoe Nage						F/B + 2k		(near opponent)
     
     
<SPECIAL>
     
.Hadoken						D, DF, F, p
.Shakunetsu Hadoken					B, DB, D, DF, F, p
.Shoryuken						F, D, DF, p
.Tatsumaki Senpukyaku					D, DB, B, k
.Airborne Tatsumaki Senpukyaku				D, DB, B, k		(Air)
.Classic Airborne Tatsumaki Senpukyaku			F, DF, D, DB, B, k	(Air)
.Ryusokyaku						B, DB, D, DF, F, k
.Ashura Senku						F, D, DF, 2p/2k
.Ashura Senku						B, D, DB, 2p/2k

     
<SUPER>
     
.Shinku Hadoken (MAX)					D, DF, F, D, DF, F, p
.Messatsu Goshoryu (MAX)				D, DF, F, D, DF, F, k
.Shinku Tatsumaki Senpukyaku (MAX)			D, DB, B, D, DB, B, k


<Lv3 SUPER>

.Metsu Hadoken       	 				F, DF, D, DB, B, F, DF, D, DB, B, 2p
.Shun Goku Satsu	 				x, x, F, a, z


<SYSTEM>

.Forward Dash:  		                	F, F
   .Run:                       					hold
.Backward Dash:                 			B, B
.Low Jump:                     				tap U
.High Jump:                     			tap D, U
.Long Low Jump:                 			tap D, tap U            
.Sidestep:                      			a + x
   .Sidestep Attack:            				p / k
.Forward Roll:                  			F + a + x
.Backward Roll:                 			B + a + x
.Parry High:                    			tap F
.Parry Low:                     			tap D
.Air Parry:                     			tap F           	(Air)
.Power Charge:                  			hold b + y
.Zero Counter:                  			B, DB, D, p / k		(during standing or crouching guard)
.Custom Combo:                  			c + z           	(Air also)
.Fall Recovery:                 			2p / a + x      	(while falling and allowed)


=====<Shadow Ryu Mode>=====

<NORMAL>

.Zugaihasatsu						F + y
.Kikokuzuki						F + z
	.Kikokuretsuzan					c
.Senha Kassatsu						B + z
.Tenma Kujinkyaku					D + b			(Air, during the apex of the jump)
.Seoi Nage	         				F/B + 2p		(near opponent)
.Tomoe Nage						F/B + 2k		(near opponent)
     
     
<SPECIAL>
     
.Hadoken (EX)						D, DF, F, p
.Airborne Hadoken (EX)					D, DF, F, p		(Air)
.Sekia Goshoha (EX)					F, DF, D, DB, B, p
.Shoryuken (EX)						F, D, DF, p
.Kurekijin (EX)						D, DB, B, k
.Airborne Kurekijin (EX)				D, DB, B, k		(Air)
.Ryusokyaku (EX)					B, DB, D, DF, F, k
.Ashura Senku (EX)					F, 3p/3k		(Air also, during Teigyaku Mudo)
.Ashura Senku (EX)					B, 3p/3k		(Air also, during Teigyaku Mudo)

     
<SUPER>
     
.Rakuyo Hadoken (MAX)					D, DF, F, D, DF, F, p
.Messatsu Goshoryu (MAX)				D, DF, F, D, DF, F, k
.Messatsu Ryukosai (MAX)				B, DB, D, DF, F, B, DB, D, DF, F, k
.Taigyaku Mudo (MAX only)				D, D, D, 2p

<Lv3 SUPER>

.Metsu Shoryuken       	 				B, DB, D, DF, F, B, DB, D, DF, F, 2p
.Shun Goku Satsu	 				x, x, F, a, z


<SYSTEM>

.Forward Dash:  		                	F, F
   .Run:                       					hold
.Backward Dash:                 			B, B
.Low Jump:                     				tap U
.High Jump:                     			tap D, U
.Long Low Jump:                 			tap D, tap U            
.Sidestep:                      			a + x
   .Sidestep Attack:            				p / k
.Forward Roll:                  			F + a + x
.Backward Roll:                 			B + a + x
.Parry High:                    			tap F
.Parry Low:                     			tap D
.Air Parry:                     			tap F           	(Air)
.Power Charge:                  			hold b + y
.Zero Counter:                  			B, DB, D, p / k		(during standing or crouching guard)
.Custom Combo:                  			c + z           	(Air also)
.Fall Recovery:                 			2p / a + x      	(while falling and allowed)



=====<Move Details>=====

 - The first hit of Angled Jumping Medium Punch (Normal and Evil) launches for a juggle reset.
 - Jumpng Medium Punch (Shadow) launches for a juggle reset.
 - Kikokuzuki (Evil) causes soft knockdown.
 - Senpukyaku (Normal and Evil) goes over low attacks.
 - Sakotsu Wari (Normal) hits overhead.
 - Zugaihasatsu (Evil and Shadow) hits overhead.
 - Mizochi Kudaki (Normal), Seichu Nidan Tsuki (Evil) and Kikokuzuki (Shadow) can be super canceled.
 - Kikokuretsuzan (Shadow) causes soft knockdown.
 - Senha Kassatsu (Shadow) has autoguard.
 - Senha Kassatsu (Shadow) can be charged.
 - Senha Kassatsu (Shadow) causes soft knockdown on counterhit or when fully charged.
 - Senha Kassatsu (Shadow) can be dash canceled when fully charged.
 - Tenma Kujinkyaku (Evil and Shadow) hits overhead.
 - Hadoken (Normal and Evil) is a projectile.
 - Hadoken (Shadow) is a stationary projectile.
 - Airborne Hadoken (Shadow) dissipates over time.
 - EX Hadoken (Normal) hits twice.
 - EX Hadoken (Shadow) dissipates over time.
 - Shakunetsu Hadoken (Normal and Evil) causes soft knockdown up close.
 - EX Shakunetsu Hadoken (Normal) hits twice and causes soft knockdown.
 - Sekia Goshoha (Shadow) causes soft knockdown.
 - Shoryuken (Normal, Evil and Shadow) has full body invincibility on startup.
 - Shoryuken (Evil) has extra juggle potential.
 - EX Shoryuken (Normal) has extra juggle potential.
 - Tatsumaki Senpukyaku (Normal and Evil) goes over low attacks and causes soft knockdown.
 - Tatsumaki Senpukyaku (Evil) has extra juggle potential.
 - Airborne Tatsumaki Senpukyaku (Normal and Evil) carries momentum from jump.
 - Airborne Tatsumaki Senpukyaku (Evil) has extra juggle potential.
 - Kurekijin (Shadow) causes soft knockdown.
 - EX Kurekijin (Shadow) launches for a juggle reset.
 - EX Airborne Kurekijin (Shadow) wall bounces for a juggle reset.
 - EX Airborne Kurekijin (Shadow) can crossup.
 - Jodan Sokuto Geri (Normal) causes soft knockdown.
 - EX Jodan Sokuto Geri (Normal)  wall bounces for a juggle reset.
 - HP Ryusokyaku (Evil) and EX Ryusokyaku (Shadow) hit overhead and cause hard knockdown.
 - Ashura Senku (Evil and Shadow) has full body invincibility up until starts recovery.
 - Shinku Hadoken (Normal and Evil) causes hard knockdown.
 - Denjin Hadoken (Normal) can be charged to inflict more hits.
 - Denjin Hadoken (Normal) causes hard knockdown and guard crush.
 - Rakuyo Hadoken (Shadow) causes crumple.
 - Shinku Tatsumaki Senpukyaku (Normal and Evil) goes over low attacks and causes hard knockdown.
 - Messatsu Goshoryu (Evil and Shadow) has extra juggle potential.
 - Shin Shoryuken (Normal) has full body invincibility on startup and causes hard knockdown.
 - Metsu Hadoken (Evil) can be charged to inflict more hits.
 - Metsu Hadoken (Evil) causes dizzy.
 - Metsu Hadoken (Evil) becomes unblockable when fully charged.
 - Shun Goku Satsu (Evil and Shadow) is an unblockable command grab.
 - Shun Goku Satsu (Evil and Shadow) causes hard knockdown.

TAIGYAKU MUDO:
 - Lasts 7.5 seconds.
 - Enhances Senha Kassatsu (can be command canceled into, crumples when fully charged).
 - Grants access to Ashura Senku (can be super canceled into).
 - You can't build meter while the buff is active.



=====<Gameplay Notes>=====

COMBO SYSTEM:
 - Some Normal attacks can be canceled into Command, Special and Super moves
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



=====<Version History>=====

<v.12/07/2025>
 - Adjusted Damage Dampener for combos on stunned and crumpled opponents.

<v.07/07/2025>
- Added 13 palettes by ElNamPrime and 10 palettes by Z-One.

<v.30/06/2025>
- Fixed a bug that caused Ryu's super projectiles to scale incorrectly all the time.
- Added 10 palettes by PROJECT.13.

<v.30/05/2025>
- Adjusted Guard AI.
- Adjusted Throw frame data.
- Adjusted hurtbox on Shadow Ryu's Taigyaku Mudo activation.

<v.24/04/2025>
- Fixed a bug that caused Ryu's AI to get stuck running when defeating an opponent on specific circumstances.
- Adjusted the range at which Close Normals trigger.
- Standing Light Kick can now be chain canceled into (but not out of).
- Added Trip Custom State to prevent unwanted scaling on attacks that sweep the opponent off the ground.
- Fixed an issue that projectiles supers not to scale correctly on very specific circumstances.

<v.05/02/2025>
- Fixed an issue that caused Metsu Shoryuken Super Finish Text not to pop up during the non-cinematic version of the super.
- Fixed an issue that let Shadow Mode use Normal Win Poses.
- Fixed an issue that caused Ryu to get stuck walking forwards.

<v.16/01/2025>
- Fixed debug flood on Shadow's EX Ryusokyaku.
- Corrected a typo of the ReadMe.

<v.10/01/2025>
- Added Shadow Ryu mode.
- Updated head.pos and mid.pos values to match 5000, 0.
- Adjusted Throw Disabler.
- Adjusted hit velocities in Normal Attacks.

<v.08/09/2024>
- Adjusted wake up invincibility.

<v.13/08/2024>
- Changed sprites on the Special Intro vs Gouki to improved ones by AlexSin.

<v.10/08/2024>
- Added Special Intro compatibility with Evil Ryu by Victorys.
- Target Combos are now easier to execute.
- Fixed a bug that caused throws to grant Power during Custom Combo.
- Fixed a bug that caused Ryu to move after winning with Shun Goku Satsu.

<v.15/07/2024>
- Fixed a bug that caused Custom Combo Finish Text not to pop while killing with Projectiles.

<v.07/07/2024>
- Fixed a bug that caused Evil Ryu's Intro vs Gouki to load incorrectly.
- Fixed a bug that caused Wall Bounce to interact incorrectly against certain characters.
- Fixed a bug that caused Denjin Hadoken Visual Effects to not align with Ryu.

<v.30/06/2024>
- Fixed a bug that caused EX Tatsumaki Senpukyaku not to be affected by pushblock.
- Adjusted EX Tatsumaki Senpukyaku so it hits crouching opponents.
- Adjusted damage on Evil's Air Tatsumaki Senpukyaku.
- Adjusted the EnvShake on the final hit of EX Tatsumaki Senpukyaku.
- Fixed a bug that caused the Shun Goku Satsu Special WinQuote not to trigger.
- Added Special Intro vs Gouki by KarmaCharmeleon.
- Added 6 palettes by JtheSaltyy and 4 palettes by MCX.

<v.13/04/2024>
- Added Special Intro vs Gouken by KarmaCharmeleon.
- Small Portrait now uses the correct palette.
- Changed the Slam Custom State on Ryusokyaku.
- Various Super Moves now use the correct attr values.
- Fixed a bug that caused Specific WinQuotes not to trigger against my Ryu.
- Fixed a bug that caused Evil Ryu not to trigger his Special Intro vs Violent Ken without reloading the match.
- Evil Ryu's Classic Air Tatsumaki Senpukyaku now recovers into standing position instead of crouching position.

<v.09/04/2024>
- Added Evil Ryu mode.
- Changed command file extension from .cmd to .st.
- Changed the extension of each mode state file (the ones containing state 5900) from .st to .cns.
- Crouch friction changed to 0.85.
- Throw techs now preserve the original facing, even when done very late and the throwing character is switching sides.
- Replaced EX activation sound with the one from SFIII (previously, it was Demitri's fireball startup).
- Fixed error in projectile flag increment/decrement when projectile(s) are reflected.
- Fixed error in super projectiles that caused incorrect dampener interactions.
- Guard damage is now based on the damage the hit would do if not guarded, instead of dealing 7 damage in all situations.
- Fixed a bug that caused MAX Shinku Tatsumaki Senpukyaku to be unblockable under specific circumstances.
- Fixed a bug that jailed opponents into getting thrown.
- Added 14 palettes by JtheSaltyy, Kamui, and ProjectLykaon.

<v.20/02/2024>
 - Fixed the position on the Big Portrait.
 - Added Apple for You compatibility for B. B. Hood by Jmorphman.
 - Added Hammer Throw compatibility for Blizzard by The_None.
 - Added 15 palettes by Lurker and ProjectLykaon.

<v.16/02/2024>
 - Implemented MT7's Color Separation.
 - Inverted Big Portrait.
 - Fixed issues with fireball clashes.
 - Tweaked visuals on Shinku Tatsumaki Senpukyaku.
 - Reworked Denjin Hadoken.
 - Fixed typos on the ReadMe.

<v.31/11/2023>
 - First release.



=====<Special Thanks>=====
 - aokmaniac13 for sprite rips, MT7 for Color Separation.
 - Ahuron and Victorys for Shin Messatsu Goshoryu animation.
 - AlexSin, armentis and troy99 for Intro vs Gouki animation.
 - Armentis and HadeS for Midnight Bliss animations.
 - Buckus for Air Hadoken animation.
 - FeLo_Llop for Standing Heavy Punch (Shadow), Standing Light Kick (Shadow), Standing Medium Kick (Shadow), Ryusokyaku and Kurekijin animations.
 - Lurker and SilentRipper for Zugaihasatsu animation.
 - P.o.t.S. for Simul Intro vs Ken, Zero Counter, Seichuu Nidan Tsuki, alternate Ashura Senku, Denjin Hadoken, burned gethit and shocked gethit animations.
 - P.o.t.S. and TMasta for Intro vs Violent Ken and Jodan Sokuto Geri animations.
 - sabockee for Stance (Shadow) and Senha Kassatsu animations.
 - TMasta for Intro (Alpha) animation.
 - VioFitz for Intro vs Ken (Alpha), Win vs Ken, Lose vs Ken, and Misogi animations.
 - vyn for Jumping Medium Kick (Shadow) animation.
 - yahyadraws(Hatter) for fixed Diagonal Up gethit animation.
 - Any spriter that contributed to the .sff without my knowledge (hit me up and I'll add your credit here).
 - P.o.t.S for Normal Small Portrait.
 - AlexSin for Evil Small Portrait.
 - HungryClicker for Evil Big Portrait.
 - Setsu for Shadow Big Portrait.
 - RayDash30 for Shadow Win Portrait.
 - P.o.t.S. and Jmorphman for code, effects, hitsparks, formatting style.
 - RaZorBakk36, Lurker and troy99 for voice rips.
 - ElNamPrime, JtheSaltyy, Kamui, Lurker, MT7, PROJECT.13, ProjectLykaon and Z-One for palettes.
 - Everybody at the MFG Discord Server for feedback.
 - Not The MUGEN Fighters Guild for providing hosting, for sure.



=====<Disclaimer>=====

 - The Ryu character is property of Capcom
 - Capcom vs SNK is property of Capcom
 - This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes