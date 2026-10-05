                            __________________________________________
===========================| Kyo Kusanagi by Jmorphman                |===========================
                            ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯             [2024.03.03]

 - Contact: Jmorphman@gmail.com
 - Website: http://network.mugenguild.com/jmorphman/
 - Customized version of SNK's Kyo character, for MUGEN 1.0



=====<Features>=====

 - All the essential stuff
 - Details and moves taken from his various video game appearances
 - Gameplay mixed from several games, including CvS2, KOF, SFA3 and SFIII
 - Special intros versus Iori Yagami, Ryu, Ash Crimson, Benimaru Nikaido, and Shingo Yabuki (normal and EX modes); Kyo Kusanagi, Iori Yagami,
   K', K9999, Shingo Yabuki and fighters who use weapons (Kusanagi mode)



=====<Mode Overview>=====

This character has three different modes:

<Kyo>
- Regular Kyo Kusanagi
- Based primarily on his KOF '98 moveset

<Kusanagi>
- An evil version of Kyo created by the Yata mirror
- Uses Kyo's pre-KOF '96 moveset, along with several moves and ideas from Kyo-1, a clone of Kyo from KOF '99

<EX Kyo>
- An alternate version of Kyo, representing the more experienced version of the character as seen in the later KOF games
- Originally based on his KOF XI moveset, but has since evolved into a weird mishmash of all of his movesets from KOF 2003 to XIII.



=====<.DEF Overview>=====

This char has three different .def files, here's what each one does:

<KYO.def>
The mode is selected via palette:

Palettes 1, 2, 3, 4, 5, 6        -> Kyo mode
Palettes 7, 8, 9                 -> Kusanagi mode
Palette  10, 11, 12              -> EX Kyo

To add him to your Mugen, add the following line to your select.def, under [Characters]:
Kyo,

<NORMALKYO.def>
Only Normal Kyo mode.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
Kyo/NormalKyo.def,

<KUSANAGI.def>
Only Kusanagi mode.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
Kyo/Kusanagi.def,

<EXKYO.def>
Only EX mode.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
Kyo/EXKyo.def,



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

.Horin:                                      F + z
.Geshiki: Goufu Yo:                          F + b
.88 Shiki:                                   DF + c
.Geshiki: Naraku Otoshi:                     D + z                                       (Air)
.Hatsugane:                                  F/B + 2p                                    (near opponent)
.Issetsu Seoi Nage:                          F/B + 2k                                    (near opponent)


<SPECIAL>

.114 Shiki: Aragami:                         D, DF, F, x / y
    .128 Shiki: Konokizu:                    D, DF, F, p
        .127 Shiki: Yanosabi:                p
        .125 Shiki: Nanase:                  k
    .127 Shiki: Yanosabi:                    F, DF, D, DB, B, p
        .Geshiki: Migiri Ugachi:             p
        .125 Shiki: Nanase:                  k
.115 Shiki: Dokugami:                        D, DF, F, z
    .401 Shiki: Tsumi Yomi:                  F, DF, D, DB, B, p
        .402 Shiki: Batsu Yomi:              F + p
            .100 Shiki: Oniyaki:             F, D, DF, p
.115 Shiki: Dokugami Kai (EX only):          D, DF, F, 2p
    .114 Shiki: Aragami:                     D, DF, F, p
        .128 Shiki: Konokizu:                D, DF, F, p
            .125 Shiki: Nanase Kai:          D, DF, F, k
                .412 Shiki: Hikigane:        F, DF, D, DB, B, k
.100 Shiki: Oniyaki (EX):                    F, D, DF, p
.75 Shiki: Kai (EX):                         D, DF, F, k, k
.R.E.D. KicK (EX):                           B, D, DB, k
.212 Shiki: Kototsuki Yo (EX):               F, DF, D, DB, B, k
.910 Shiki: Nue Tsumi (EX):                  D, DB, B, p


<SUPER>

.Ura 108 Shiki: Orochinagi (MAX):            D, DB, B, DB, D, DF, F, p                   (hold to delay)
.Saishu Kessen Ougi "Mu-shiki" (MAX):        D, DF, F, D, DF, F, p


<Lv3 SUPER>

.524 Shiki: Kamukura:                        F, DF, D, DB, B, F, DF, D, DB, B, 2p        (near opponent)


<SYSTEM>

.Forward Dash:                               F, F
    .Run:                                    hold
.Backward Dash:                              B, B
.Low Jump:                                   tap U
.High Jump:                                  tap D, U
.Long Low Jump:                              tap D, tap U
.Sidestep:                                   a + x
    .Sidestep Attack:                        p / k
.Forward Roll:                               F + a + x
.Backward Roll:                              B + a + x
.Parry High:                                 tap F
.Parry Low:                                  tap D
.Air Parry:                                  tap F                                       (Air)
.Power Charge:                               hold b + y
.Zero Counter:                               B, DB, D, p / k                             (during standing or crouching guard)
.Custom Combo:                               c + z                                       (Air also)
.Fall Recovery:                              2p / a + x                                  (while falling and allowed)



=====<Kusanagi Mode>=====

<NORMAL>

.Kurogami:                                   F + y
.Honofuri:                                   F + z
.Migiri Ugachi:                              DF + z
.Geshiki: Naraku Otoshi:                     D + z                                       (Air)
.Hatsugane:                                  F/B + 2p                                    (near opponent)
.Issetsu Seoi Nage:                          F/B + 2k                                    (near opponent)
     
     
<SPECIAL>
     
.108 Shiki: Yami Barai (EX):                 D, DF, F, p
.100 Shiki: Oniyaki (EX):                    F, D, DF, p
.75 Shiki: Kai (EX):                         D, DF, F, k, k
.101 Shiki: Oboro Guruma (EX):               B, D, DB, k
.212 Shiki: Kototsuki Yo (EX):               F, DF, D, DB, B, k
.Aoki (EX):                                  D, DB, B, p


<SUPER>

.Ura 108 Shiki: Orochinagi (MAX):            D, DB, B, DB, D, DF, F, p                   (hold to delay)
.1999 Shiki: Kiri Homura (MAX):              D, DF, F, D, DF, F, k


<Lv3 SUPER>

.Saishu Kessen Ougi "Zero Shiki":            D, DF, F, D, DF, F, 2p


<SYSTEM>

.Forward Dash:                               F, F
    .Run:                                    hold
.Backward Dash:                              B, B
.Low Jump:                                   tap U
.High Jump:                                  tap D, U
.Long Low Jump:                              tap D, tap U
.Sidestep:                                   a + x
    .Sidestep Attack:                        p / k
.Forward Roll:                               F + a + x
.Backward Roll:                              B + a + x
.Parry High:                                 tap F
.Parry Low:                                  tap D
.Air Parry:                                  tap F                                       (Air)
.Power Charge:                               hold b + y
.Zero Counter:                               B, DB, D, p / k                             (during standing or crouching guard)
.Custom Combo:                               c + z                                       (Air also)
.Fall Recovery:                              2p / a + x                                  (while falling and allowed)



=====<EX Kyo Mode>=====

<NORMAL>

.Horin:                                      F + z
.Geshiki: Goufu Yo:                          F + b
.88 Shiki:                                   DF + c
.Geshiki: Naraku Otoshi:                     D + z                                       (Air)
.Hatsugane:                                  F/B + 2p                                    (near opponent)
.Issetsu Seoi Nage:                          F/B + 2k                                    (near opponent)


<SPECIAL>

.114 Shiki: Aragami:                         D, DF, F, x / y
    .128 Shiki: Konokizu:                    D, DF, F, p
        .127 Shiki: Yanosabi:                p
        .125 Shiki: Nanase:                  k
    .127 Shiki: Yanosabi:                    F, DF, D, DB, B, p
        .Geshiki: Migiri Ugachi:             p
        .125 Shiki: Nanase:                  k
        .212 Shiki: Kototsuki Yo:            F, DF, D, DB, B, k
.115 Shiki: Dokugami:                        D, DF, F, z
    .401 Shiki: Tsumi Yomi:                  F, DF, D, DB, B, p
        .402 Shiki: Batsu Yomi:              F + p
            .100 Shiki: Oniyaki:             F, D, DF, p
.115 Shiki: Dokugami Kai (EX only):          D, DF, F, 2p
    .114 Shiki: Aragami:                     D, DF, F, p
        .128 Shiki: Konokizu:                D, DF, F, p
            .125 Shiki: Nanase Kai:          D, DF, F, k
                .123 Shiki: Shaku En:        F, DF, D, DB, B, k
.100 Shiki: Oniyaki (EX):                    F, D, DF, p
.75 Shiki: Kai (EX):                         D, DF, F, k, k
.R.E.D. KicK (EX):                           B, D, DB, k
.108 Shiki: Yami Barai (EX):                 D, DB, B, p
.101 Shiki: Oboro Guruma (EX):               F, D, DF, k
.412 Shiki: Hikigane (EX):                   F, DF, D, DB, B, k


<SUPER>

.Ura 108 Shiki: Orochinagi (MAX):            D, DB, B, DB, D, DF, F, p                   (hold to delay)
.182 Shiki (MAX):                            D, DF, F, D, DF, F, p                       (hold to delay)


<Lv3 SUPER>

.524 Shiki: Kamukura:                        F, DF, D, DB, B, F, DF, D, DB, B, 2p        (near opponent)


<SYSTEM>

.Forward Dash:                               F, F
    .Run:                                    hold
.Backward Dash:                              B, B
.Low Jump:                                   tap U
.High Jump:                                  tap D, U
.Long Low Jump:                              tap D, tap U
.Sidestep:                                   a + x
    .Sidestep Attack:                        p / k
.Forward Roll:                               F + a + x
.Backward Roll:                              B + a + x
.Parry High:                                 tap F
.Parry Low:                                  tap D
.Air Parry:                                  tap F                                       (Air)
.Power Charge:                               hold b + y
.Zero Counter:                               B, DB, D, p / k                             (during standing or crouching guard)
.Custom Combo:                               c + z                                       (Air also)
.Fall Recovery:                              2p / a + x                                  (while falling and allowed)



=====<Move Details>=====

 - 88 Shiki must be blocked low.
 - Geshiki: Goufu Yo and Honofuri are overheads (except when canceled into); 127 Shiki: Yanosabi and EX R.E.D. KicK are also overheads.
 - Geshiki: Naraku Otoshi knocks down opponents in the air.
 - 114 Shiki: Aragami, 115 Shiki: Dokugami, 100 Shiki: Oniyaki, normal Kyo's EX 212 Shiki: Kototsuki Yo, and 1999 Shiki: Kiri Homura
   have autoguard.
 - 114 Shiki: Aragami and 115 Shiki: Dokugami can destroy (non-super) projectiles, if the firey punch makes contact with a projectile
 - Migiri Ugachi and Geshiki: Migiri Ugachi must be blocked low.
 - If the second hit of 75 Shiki: Kai hits an opponent, it can juggled afterwards with any attack; however, this can only be done
   once per combo. This also applies only the medium, heavy, and EX variants.
 - 910 Shiki: Nue Tsumi reverses low physical attacks during the early portion of its startup, then switches to reverse high physical
   attacks in the latter portion, just before the active frames. Successfully reversing a low attack will result in Geshiki: Tora Fuse;
   reversing a high attack will result in Geshiki: Ryu Iri. The EX version has enhanced followups: EX Tora Fuse will cause the opponent
   to bounce off the floor, which also resets the juggle counter. EX Ryu Iri causes the opponent to crumple to the floor, and can be
   followed up with any attack before they hit the floor.
 - Kusanagi's EX 212 Shiki: Kototsuki Yo is an unblockable throw.
 - EX Aoki can be juggled afterwards with any attack; however, this can only be done once per combo.
 - The light, medium, and EX versions of 412 Shiki: Hikigane can be juggled afterwards with any attack; however, this can only be done
   once per combo. The light and medium version additionally avoid low attacks during startup, while the EX version is completely
   invincible during startup.
 - The heavy version of 412 Shiki: Hikigane avoids high attacks during startup.
 - Ura 108 Shiki: Orochinagi can avoid either high or low attacks while the move is being delayed, depending on which button is used
   to activate it. Using either light or medium punch will avoid low attacks, while using heavy punch will avoid high attacks.
 - The fire aura surrounding Kyo when he performs MAX Ura 108 Shiki: Orochinagi can hit opponents up to three times, and can destroy
   projectiles.
 - The pillar of fire that appears during Saishu Kessen Ougi "Mu-shiki" and Saishu Kessen Ougi "Zero Shiki" can destroy projectiles.
 - 182 Shiki, when fully charged, is unblockable.
 - 524 Shiki: Kamukura is an unblockable throw.



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

<v.2024/03/03>
 - Added in-game movelists (accessible in IKEMEN only)
 - Added an HTML movelist to the directory for cleaner, easier-to-read movelist viewing
 - Changed command file extension from .cmd to .st
 - Change the extension of each mode state file (the ones containing state 5900) from .st to .cns
 - Crouch friction changed to 0.85
 - Removed bug where gravity would kick in one tick early for jumping normals done at the first possible moment
 - Tweaked how hard the damage dampener kicks in when connecting a super off a juggle reset
 - The hit velocities of all normals are now based (mostly) on CvS2
 - Guard damage is now based on the damage the hit would do if not guarded, instead of dealing 7 damage in all situations
 - Throw techs now preserve the original facing, even when done very late and the throwing character is switching sides
 - Removed bug where throws would whiff against opponents who remain in state 140
 - Replaced EX activation sound with the one from SFIII (previously, it was Demitri's fireball startup)
 - Most projectiles now use HitPause, HitTime, and vels identical to the ones used in medium normal attacks; however, the frame data is
   actually slightly improved by this change.
 - Fixed error in projectile flag increment/decrement when projectile(s) are reflected
 - Throw whiff animation has a longer recovery period
 - All aerial get hit animations now use the same hitbox
 - Simplified the timer system that determines how long to apply flame particles to opponents
 - Added a Kusanagi vs Shingo intro
 - Fixed infinite loop bug in intro states that occured when EX Kyo faced KarmaCharmeleon's Orochi Iori
 - Added intro/winquote compatability with KarmaCharmeleon's Ryu
 - 88 Shiki must now be blocked low
 - Hatsugane now uses a different post-throw animation for opponents with a bounce animation with no y-offset (it looked bad otherwise)
 - Issetsu Seoi Nage now displays a hitspark for the second hit
 - 125 Shiki: Nanase now uses an air StateType while Kyo is advancing forward
 - Renamed R.E.D. Kick to R.E.D. KicK, with a capital K at the end, the offical spelling for the move (this is not a joke, look it up)
 - Fixed bug in EX R.E.D. KicK where the velocity calculation did not account for the move's PosAdds, causing Kyo to move too far forward
 - Added 910 Shiki: Nue Tsumi and assorted followups for normal Kyo; Kusanagi's crouch HP now uses the Nue Tsumi animation
 - Replaced 1999 Shiki: Kiri Homura startup sprites with redone ones by Troy; also replaced voice sample with a higher quality rip
 - Added custom hit states for the upward launching punch in 1999 Shiki: Kiri Homura; this should help all the final hit connect, even
   against opponents who erroneously apply a VelAdd twice on a single tick multiple times as they are falling.

<2023/05/31>
 - Added 2 intros (EX Kyo vs Iori, [EX] Kyo vs Claw Iori) for KarmaCharmeleon's Iori

<2022/12/31>
 - As a result of a resolution miscalculation, certain hitboxes, velocities, and PosAdds that were taken from CvS2 were incorrect; data
   has thus been rerecorded and fixed. Hit vels have also (in most cases) been standardized to replicate CvS2 behavior.
 - Using a juggle reset move twice no longer turns on the "juggle flag" (var(16)); it is now possible to combo off that second juggle
   reset move by activating Custom Combo, but otherwise, continuing the combo from that second move remains impossible (in most cases).
 - State 5110 is now overriden to prevent hardcoded MUGEN behavior of early wakeup if buttons are mashed.
 - More consistent handling of whether moves do hard or soft knockdown (in general: specials except for command throws do soft
   knockdown, command throws and supers do hard knockdown)
 - Run stop no longer uses S physics and instead a more accurate VelAdd
 - Added intro vs. Shingo
 - Kurogami now uses the same hitstun values as other heavy attacks (bringing it in line with Geshiki: Goufu Yo)
 - Issetsu Seoi Nage impact dust switched around (effect used for the first impact in the previous version now is now used second, vice
   versa)
 - Added ability to destroy projectiles with the active frames of Aragami and Dokugami
 - Fixed error where the HP version of Oniyaki had less active frames than the LP and MP versions
 - HP Oniyaki now has startup invincibilty, and EX Oniyaki now has startup autoguard (like the non-EX versions).
 - The LK and MK versions of Hikigane now cause Kyo to move slightly more forward at the very end to better match his animation.

<2021/11/29>
 - Fixed a minor guard input bug
 - removed "Tick Fix"
 - fixed bug where certain System.st states had gravity applied twice
 - Added Hikigane as a fully fledged move (for EX Kyo mode) using brand new sprites by MotorRoach; the old version of Hikigane, used
   only as the Dokugami Kai finisher (and which consisted only of the heavy variant animation), has been completely replaced.
 - Shaku En has been added as the finisher for EX Kyo's Dokugami Kai chain (replacing the heavy version of Hikigane); normal Kyo now
   uses the light version of Hikigane as his Dokugami Kai chain finisher.
 - Added slightly more pushback to Kurogami
 - Made further Aragami tweaks: it is now impossible to juggle aerial opponent with Aragami -> Yanosabi -> Migiri Ugachi unless the
   opponent is in the corner.
 - During Kototsuki Yo and Kamukura, when Kyo creates firery explosions, EnvShake now plays.
 - Adjusted Custom Combo cancelling rules for Kototsuki Yo so that the initial hit cannot be cancelled out of; the full grab must first
   be allowed to play out before cancelling out of the move is allowed, right when the explosion happens. The explosions for all
   versions of Kototsuki Yo are also no longer bound to Kyo, so they no longer follow him if he cancels out of the move during Custom
   Combo.
 - Removed an odd quirk involving Shiki: Kai, where Shiki: Kai's juggle reset feature�-normally limited to happening only once per
   combo--could be bypassed by careful timing during Custom Combo, allowing for multiple juggle resets in a single combo (the first
   Shiki: Kai hit+reset occuring before Custom Combo is activated, the second occuring just as Custom Combo is ending). Now, Shiki: Kai
   will always reset the juggle counter only once, no matter what. Shiki: Kai can still juggle indefinitely during Custom Combo,
   however; they will just add on their hits to the juggle counter (every other move does this without issue, as the juggle limit is
   ignored for the duration of Custom Combo), instead of resetting the juggle counter (as they used to do).
 - Slightly extended the hitbox for the final hit of Kiri Homura to the right, so that it'll no longer whiff on certain opponents.
 - MAX Kimi Homura hitvels adjusted to allow full juggle in the corner, since this is already possible for the level 1 version.

<2019/12/31>
 - Made it harder to accidentally super cancel out of rekkas. Now the entire QCFx2 motion must be input to get the super (so Aragami ->
   Mu-shiki requires QCF + p -> QCFx2 + p; Mu-shiki will never result from QCF + p -> QCF + p, no matter how fast it is performed
 - Slight adjustments to Aragami hitvels; it's not really possible to juggle aerial opponents with the full chain anymore
 - Slightly adjusted RED KicK velocities to ensure the first possible, more damaging hit will not connect on standing opponents; it's
   now actually accurate to KOF instead of only vaguely being so.
 - Super invincibility fixed/updated

<2018/12/08>
 - Fixed bug that made Aoki impossible to super cancel out of
 - Removed error that prevented MAX 182 Shiki from being charged up if activated by LP and HP
 - Slightly extended the opponent's lie down time during Issetsu Seoi Nage
 - minor fixes to the EXPLODsive Buffering system

<2018/11/30>
 - Total revamp/recode. Added a more extensive color separation. Overhauled sprites, damage levels, animations, hitboxes, and coding.
   Now (mostly) uses frame data/velocities/timings from CvS2.
 - Hit sparks reduced 65% in size
 - Added EXPLODsive Buffering system, projectile reflection, and compatibility with the Reigi no Ishizue super from Vans's Chizuru.
 - Many, many moves are now based directly on KOF, using slightly modified animation timing/velocities from those games.
 - Changed normal mode's default pallete to use CvS2 colors.
 - EX Kyo mode added.
 - XIII taunt added for normal and EX modes.
 - Added the KOF98 intro vs. Benimaru to normal and EX modes.
 - Added a winpose vs. Iori.
 - Forward/backward roll made more accurate to CvS2
 - Kusanagi mode can no longer perform Horin; Honofuri is now performed with heavy punch, Kurogami with medium punch. Crouching heavy
   kick is now a sweep variant of 88 Shiki, ala KOF94 Kyo.
 - If command canceled into, Geshiki: Goufu Yo will only combo after heavy attacks
 - Can no longer juggle off of Horin.
 - Pushback on Geshiki: Naraku Otoshi increased.
 - The 114 Shiki: Aragami and 115 Shiki: Dokugami rekka chains can now juggle off themselves.
 - 115 Shiki: Dokugami now has autoguard; 115 Shiki: Dokugami Kai now has a greatly extended autoguard period.
 - The total damage of the entire 115 Shiki: Dokugami Kai chain has been decreased.
 - EX 100 Shiki: Oniyaki modified to resemble KOFXIII more, though with many less hits.
 - 212 Shiki: Kototsuki Yo can now be canceled out of during Custom Combo.
 - EX 212 Shiki: Kototsuki Yo is based on the EX version of KOFXIII EX Kyo (a blockable, short-range attack with autoguard). Kusanagi's
   EX variant is a command throw, like the EX version of KOFXIII normal Kyo.
 - EX Aoki can now be juggled from.
 - The HitPauseTime on the last hit of the first portion MAX Mu-shiki was decreased.
 - Max 182 Shiki now has Kyo set himself on fire, ala Mu-Shiki, MAX Orochinagi, et. al.
 - HitPauseTime for the final attack in Zero Shiki was increased.
 - Flames that appear on opponent when they are hit now disappear after a firm, set amount of time, exactly matching the PalFX applied
   to them. (They used to disappear if opponent regained control, or hit the floor if they were knocked down). This helps with stuff
   like 114 Shiki: Aragami -> 125 Shiki: Nanase, where a oppponent is hit by a fire-based attack, and then a physical attack, so that
   the fire will eventually disappear instead of remaining on the opponent until they hit the floor, as previous versions behaved.

<2011/09/05>
 - Fixed Yami Barai fire trail not pausing during superpause
 - EX Kototsuki Yo no longer gives back power
 - Throw damage changed
 - Changed around some canceling rules
 - HP Oniyaki now does all 2 hits when the opponent is in the air
 
<2011/08/26>
 - Increased hittimes for first hit of Aoki and third hit of Kiri Homura
 - Opponents hit by Horin in the air can no longer recover
 - Minor Mu-shiki position bug fixed
 - Removed glitch that gave Zero Shiki full invicibility throughout the entire move
 - Added 182 Shiki

<2011/01/16>
 - Damage output adjusted
 - Bug where Custom Combo damage wasn't dampened fixed
 - Increased hitvels in canceled Horin, removing some overpowered combos
 - Increased hittime of Naraku Otoshi
 - New small portraits by Jesuszilla
 - Only the final hit of Issetsu Seoi Nage and Kamukura will kill an opponent
 - Dokugami Kai hittime increased
 - Fixed bug where the landing sound in far standing heavy kick cut off the hitsound
 - Fixed error that prevented Yami Barai from being supercanceled out of
 - Made canceling out of Aoki more lenient

<2011/01/05>
 - AI fixes
 - Some sounds redone
 - Fixed a Kamukura bug
 - Made level 1 Kiri Homura canceling more strict
 - LP and MP Oniyaki damage values fixed
 - Kototsuki Yo damage was reduced

<2011/01/02>
 - First release



=====<Special Thanks>=====
 - aokmaniac13 for sprite rips
 - P.o.t.S. for code, effects, hitsparks, formatting style
 - MotorRoach for the Hikigane and Shaku En sprites
 - SeanAltly for the Nanase Kai sprites
 - Byakko for the 182 Shiki sprites (with edits to startup by Izumo)
 - Troy for the Nue Tsumi sprites (with edits by MotorRoach), the intro vs Shingo sprites, and Kiri Homura intro sprites
 - VioFitz for the Kiri Homura sprites (with edits by Izumo and TMasta), Kamukura, intro startup sprites, win 3 sprites, intro vs. Ash
   Crimson sprites, and Kusanagi intro sprites
 - Lurker for the close heavy punch sprite edits
 - Speedster for the KOF XIII taunt sprite edits
 - CrazyKoopa for the fire effects
 - Anjel for some misc fire effects
 - KoopaKoot and Vans for data reference
 - Vans for ripping the Kusanagi voices
 - Jesuszilla for translating a few things, for making Kusanagi's KO voice, and for the small portraits
 - walt for small edits to the Kusanagi small portrait by Jesuszilla
 - darkgirl for the Kamukura voice rips
 - .Hades., CrazyKoopa, C.V.S.N.B., and Seph for the super portraits
 - .Hades., Anthem, Chosis, Cyan Paul, Dishamonpow, Drex, Hero, KawaiiDesu, Kirishima, LurkerSupreme,       
   MalaDingDong, MC2, Mikel, ShoShingo, Teros, and Zero-Sennin for palettes
 - Everybody at the MUGEN Fighters Guild for feedback.
 - The MUGEN Fighters Guild for providing hosting.



=====<Disclaimer>=====

 - The Kyo character is property of SNK
 - Capcom vs SNK is property of Capcom
 - This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes
 