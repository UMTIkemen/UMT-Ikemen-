
;
;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1
; Here add matching commands for any moves that must never be used randomly
; by the computer, such as suicide moves and super moves, and add the pairs
; to the XOR VarSet controller in State -3.

; If you're desperate to make sure that the AI always gets turned on as soon
; as possible, you can add more equivalents for your own commands here too,
; and add to the XOR VarSet controller's triggers accordingly.  You should
; use button-only commands before using any commands with directional
; components, as the latter apparently doesn't work in Linux Mugen 2002.04.14.

; And of course, if you've run out of unique command labels (Mugen allows
; 128), you can remove as many of these as you want.  You'll of course need
; to modify the XOR VarSet controller's triggers accordingly, but Mugen
; will let you know if you forget to do so. :)

;-| Super Motions |--------------------------------------------------------

[Command]
name = "shoot"
command = ~D,DF,F,D,DF,F, y
time = 20
[Command]
name = "shoot2"
command = ~D,DF,F,D,DF,F, b
time = 20

[Command]
name = "nightmare"
command = ~F,DF,D,DB,B,F, b
time = 20
[Command]
name = "nightmare"
command = ~F,D,B,F, b
time = 20

[Command]
name = "zangs"
command = ~D,DF,F, z
time = 20

[Command]
name = "banish"
command = ~F,D,DF, x
time = 20

[Command]
name = "stomp"
command = ~30$D,U, a
time = 15

[Command]
name = "reverse"
command = ~30$D,U, y
time = 15

[Command]
name = "saiko"
command = ~30$B,F, x
time = 15
[Command]
name = "saiko2"
command = ~30$B,F, y
time = 15

[Command]
name = "nee_press"
command = ~30$B,F, a
time = 15
[Command]
name = "nee_press2"
command = ~30$B,F, b
time = 15

[Command]
name = "DDDfb"
command = ~D, D, D, z
time = 20
[Command]
name = "DDD"
command = ~D, D, D, b
time = 20
[Command]
name = "DDD"
command = ~D, D, D, a
time = 20
[Command]
name = "DDD"
command = ~D, D, D, y
time = 20
[Command]
name = "DDD"
command = ~D, D, D, x
time = 20

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "burst"
command = z+a
time = 1

[Command]
name = "burst"
command = z+b
time = 1

[Command]
name = "burst"
command = z+x
time = 1

[Command]
name = "burst"
command = z+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

[Statedef -1]

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3100
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = power >= 1000
;triggerall = (Command = "knee_special1" || Command = "knee_special2" || Command = "knee_special3")
triggerall = statetype != A
triggerall = Command = "shoot" || command = "shoot2";Map(QCFx2) && Map(y) || Map(QCFx2) && Map(b)
trigger1 = ctrl
trigger2 = movecontact || movereversed
trigger2 = (stateno = [200,440]) 
trigger2 = stateno != 220 ||  stateno != 420

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = power >= 1000
;triggerall = (Command = "knee_special1" || Command = "knee_special2" || Command = "knee_special3")
triggerall = statetype != A
triggerall = command = "nightmare";Map(HCBF) && Map(b)
trigger1 = ctrl
trigger2 = movecontact || movereversed
trigger2 = (stateno = [200,440]) 
trigger2 = stateno != 220 ||  stateno != 420


;-----------------------------------------------------

[State -1, pagode russo]
type = ChangeState
value = 3025
triggerall = command = "zangs"
;triggerall = Map(z)
triggerall = power >= 500
triggerall = statetype != A
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = stateno != 100
triggerall = p2bodydist X = [-25,25]
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2stateno != 40
;triggerall = command = "fwd_b" || command = "back_b"
trigger1 = (ctrl) || (StateNo = 5120 && animtime = 0)
trigger2 = movecontact || movereversed
trigger2 = (stateno = [200,440]) 
trigger2 = stateno != 220 ||  stateno != 420


;-----------------------------------------------------
[State -1, FB tele]
type = ChangeState
value = 1510
triggerall = command = "DDDfb"
;triggerall = Map(z)
triggerall = power >= 500
;trigger1 = statetype = S
triggerall = statetype = S || Statetype = A
trigger1 = ctrl
trigger2 = movecontact || movereversed
trigger2 = (stateno = [200,440]) 
trigger2 = stateno != 220 ||  stateno != 420

[State -1, tele]
type = ChangeState
value = 1500
triggerall = command = "DDD"
;triggerall = Map(x) || Map(y) || Map(a) || Map(b)
;trigger1 = statetype = S
triggerall = statetype = S || Statetype = A
trigger1 = ctrl
trigger2 = movecontact || movereversed
trigger2 = (stateno = [200,440]) 
trigger2 = stateno != 220 ||  stateno != 420

;-----------------------------------------------------
[State -1, banish]
type = ChangeState
value = 1250
triggerall = command = "banish"
;triggerall = Map(x)
;trigger1 = statetype = S
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact || movereversed
trigger2 = (stateno = [200,440]) 
trigger2 = stateno != 220 ||  stateno != 420

;---------------------------------------------------------------------------

[State -1, head press1]
type = ChangeState
value = 1200
triggerall = command = "stomp"
;triggerall = Map(a)
;trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = movecontact || movereversed
trigger3 = (stateno = [200,440]) 
trigger3 = stateno != 220 ||  stateno != 420

;---------------------------------------------------------------------------

[State -1, devil reverse]
type = ChangeState
value = 1100
triggerall = command = "reverse"
;triggerall = Map(y)
;trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = movecontact || movereversed
trigger3 = (stateno = [200,440]) 
trigger3 = stateno != 220 ||  stateno != 420

;===========================================================================
[State -1, Psycho]
type = changestate
value = ifelse(command = "saiko2",1020,1000)
triggerall = command = "saiko" || command = "saiko2"
;triggerall = Map(x) || Map(y)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact || movereversed
trigger2 = (stateno = [600,640]) 
trigger3 = stateno = 1201 && animelemtime(7) >= 0 || stateno = 1202 && (animelemtime(4) >= 0 || movecontact || movereversed)

;Psycho
[State -1, Psycho]
type = ChangeState
value = 1000
triggerall = command = "saiko"
;triggerall = Map(x)
trigger1 =  statetype !=A
trigger1 = movecontact || movereversed
trigger1 = (stateno = [200,440]) 
trigger1 = stateno != 220 ||  stateno != 420
[State -1, Psycho]
type = ChangeState
value = 1000
triggerall = command = "saiko"
;triggerall = Map(x)
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Psycho3]
type = ChangeState
value = 1020
triggerall = command = "saiko2"
;triggerall = Map(y)
trigger1 =  statetype !=A
trigger1 = movecontact || movereversed
trigger1 = (stateno = [200,440]) 
trigger1 = stateno != 220 ||  stateno != 420
[State -1, Psycho3]
type = ChangeState
value = 1020
triggerall = command = "saiko2"
;triggerall = Map(y)
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
[State -1, nee_press]
type = changestate
value = ifelse(command = "nee_press2",1055,1050)
triggerall = command = "nee_press" || command = "nee_press2"
;triggerall = Map(a) || Map(b)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact || movereversed
trigger2 = (stateno = [600,640]) 
trigger3 = stateno = 1201 && animelemtime(7) >= 0 || stateno = 1202 && (animelemtime(4) >= 0 || movecontact || movereversed)

[State -1, nee_press]
type = ChangeState
value = 1050
triggerall = command = "nee_press"
;triggerall = Map(a)
trigger1 =  statetype !=A
trigger1 = movecontact || movereversed
trigger1 = (stateno = [200,440]) 
trigger1 = stateno != 220 ||  stateno != 420
[State -1, nee_press]
type = ChangeState
value = 1050
triggerall = command = "nee_press"
;triggerall = Map(a)
trigger1 = statetype !=A
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, nee_press2]
type = ChangeState
value = 1055
triggerall = command = "nee_press2"
;triggerall = Map(b)
trigger1 =  statetype !=A
trigger1 = movecontact || movereversed
trigger1 = (stateno = [200,440]) 
trigger1 = stateno != 220 ||  stateno != 420
[State -1, nee_press2]
type = ChangeState
value = 1055
triggerall = command = "nee_press2"
;triggerall = Map(b)
trigger1 =  statetype !=A
trigger1 = ctrl
;ignorehitpause = 0

;---------------------------------------------------------------------------
[State -1, nee_press3]
type = null
value = 1057
triggerall = Map(BF)
triggerall = Map(z)
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================

[State 220, 4]
type = ChangeState
;triggerall = var(22)
triggerall = stateno != [241,242]
triggerall = movetype != H
triggerall = statetype = S || statetype = C
triggerall = command = "holdup" && var(59) <= 0 || var(59)>0 || fvar(39)
triggerall = (p2stateno = [246,248]) && p2movetype = H
trigger1 = stateno = 200 && (movecontact||movereversed||fvar(28))
trigger2 = stateno = 210 && (movecontact||movereversed||fvar(28))
trigger3 = stateno = 220 && (movecontact||movereversed||fvar(28))
trigger4 = stateno = 225 && (movecontact||movereversed||fvar(28))
trigger5 = stateno = 230 && (movecontact||movereversed||fvar(28))
trigger6 = stateno = 420 && (movecontact||movereversed||fvar(28))

trigger7 = stateno = 400 && (movecontact||movereversed||fvar(28)) && var(58)!=2

trigger8 = stateno = 240 && movehit
trigger9 = ctrl


trigger10 = numhelper(780+id)
trigger10 = helper(780+id),sysvar(0)
trigger10 = (stateno = [200,236]) && (movecontact||movereversed||fvar(28))

trigger11 = numhelper(780+id)
trigger11 = helper(780+id),sysvar(0)
trigger11 = (stateno = [400,450]) && (movecontact||movereversed||fvar(28))


value = 241
ctrl = 0


[State -2]
type = ChangeState
value = 750
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = fvar(33) >= 1.5
triggerall = command = "burst"
triggerall = alive && roundstate = 2
trigger1 = (ctrl||fvar(28))
trigger2 = time <= 1
trigger2 = movetype = A
trigger2 = stateno = [200,640]
trigger2 = prevstateno != [200,640]


;---------------------------------------------------------------------------
[State �Q�i�W�����v]
type = ChangeState
value = 99
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) != 1
triggerall = var(12) = 0
triggerall = var(13) = 2
trigger1 = ctrl
trigger1 = stateno != [120,155]
;trigger2 = var(13) = 2
trigger2 = stateno = 610 && (movecontact||movereversed||fvar(28))

;trigger3 = var(13) = 2
trigger3 =  stateno = 620; && (var(6)||fvar(28))
trigger3 = animelemtime(5) >= 0

;trigger4 = var(13) = 2
trigger4 = (stateno = 600 || stateno = 640) && (movecontact||movereversed||fvar(28))

;trigger5 = numhelper(780+id)
;trigger5 = helper(780+id),sysvar(0)
;trigger5 = var(13) = 2
;trigger5 = (stateno = [600,629]) && ((movecontact||movereversed||fvar(28)) || var(6))


;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 40
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = stateno = 200 && (movecontact||movereversed)
trigger2 = stateno = 210 && (movecontact||movereversed)
trigger3 = stateno = 240 && (movecontact||movereversed)
trigger4 = stateno = 215 && (movecontact||movereversed)
trigger5 = stateno = 230 && (movecontact||movereversed)
trigger6 = stateno = 440 && (movecontact||movereversed)

trigger7 = stateno = 400 && (movecontact||movereversed)

;---------------------------------------------------------------------------
[State �󒆃_�b�V��]
type = ChangeState
value = 110
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = var(11) = 0
triggerall = statetype = A
triggerall = command = "FF"; || ((helper(780+id),fvar(8) = [1,10]) && (command = "fwd"||(command!="holdup"&&command!="holddown"&&command="holdfwd"&&(prevstateno=[40,41])&&helper(780+id),sysvar(0))))
triggerall = pos y <= ifelse(vel y < 0,-30,-10); || helper(780+id),sysvar(0)
trigger1 = ((stateno = [50,59])||(stateno = [120,140])) && ctrl
trigger1 = var(13) < 2
trigger2 = ((stateno = [5200,5210]) || stateno = 5040) && ctrl
trigger3 = stateno = [241,242]
trigger3 = var(13) < 2
trigger4 = stateno = 650 && ctrl
trigger4 = var(13) < 2

;---------------------------------------------------------------------------
[State �󒆃_�b�V��]
type = ChangeState
value = 115
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = var(11) = 0
triggerall = statetype = A
triggerall = command = "BB"
triggerall = pos y <= ifelse(vel y < 0,-30,-10)
trigger1 = ((stateno = [50,59])||(stateno = [120,140])) && ctrl
trigger1 = var(13) < 2
trigger2 = ((stateno = [5200,5210]) || stateno = 5040) && ctrl
trigger3 = stateno = [241,242]
trigger3 = var(13) < 2
trigger4 = stateno = 650 && ctrl
trigger4 = var(13) < 2

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State �󒆓���]
type = ChangeState
value = 950
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = statetype = A
triggerall = (ctrl)
triggerall = p2bodydist X < 40
triggerall = p2bodydist Y > -80
triggerall = p2bodydist Y < 20
triggerall = p2statetype = A
triggerall = p2movetype != H
;triggerall = !helper(780+id),var(8)
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 900
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X = [-25,25]
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2stateno != 40
triggerall = command = "fwd_b" || command = "back_b"
trigger1 = (ctrl) || (StateNo = 5120 && animtime = 0)
trigger2 = stateno = [195, 197]
trigger2 = time > ifelse(anim = 196,18,64)
trigger3 = stateno = 52; || var(58)=1&&stateno=100

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = null
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
;triggerall = var(59) <= 0
triggerall = !ishelper
triggerall =command = "x";Map(x)
triggerall = command != "holddown"
triggerall = (movecontact||movereversed)
;triggerall = var(3) = 0
trigger1 = stateno = 200||stateno = 400

; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = command = "x";Map(x)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl;||fvar(28))
;trigger2 = stateno = [195, 197]
;trigger2 = time > ifelse(anim = 196,18,64)
trigger2 = stateno = 12||stateno = 52 || stateno=100

trigger3 = stateno = 200
trigger3 = time >= 11
trigger4 = stateno = 400
trigger4 = time >= 9

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 215
triggerall = command = "y";Map(y)
triggerall = command != "holddown"
triggerall = p2bodydist X=[-42,44]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210])
trigger2 = (movecontact||movereversed)
trigger3 = (stateno = [400,410]) 
trigger3 = (movecontact||movereversed)

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y";Map(y)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z";Map(z)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a";Map(a)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1]
type = ChangeState
value = 240
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = command = "b";Map(b)
;triggerall = var(3) = 0
trigger1 =stateno = 230
trigger1 = (movecontact||movereversed)
;trigger1 = var(58)=0

[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b";Map(b)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = command = "x";Map(x)
triggerall = command = "holddown"
;triggerall = var(3) = 0
trigger1 = stateno = 200; && var(58)!=2
trigger1 = (movecontact||movereversed)
trigger2 = stateno = 400; && var(58)!=2
trigger2 = (movecontact||movereversed)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x";Map(x)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 12||stateno = 52 || stateno=100
trigger3 = stateno = 200
trigger3 = time >= 11
trigger4 = stateno = 400
trigger4 = time >= 9

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y";Map(y)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1]
type = ChangeState
value = 420
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = command = "z";Map(z)
triggerall = command = "holddown"
trigger1 = (movecontact||movereversed)
trigger1 = stateno = 200||stateno = 210||stateno = 215||stateno = 230||stateno = 240||(stateno = [400,440])
trigger1 = stateno != 420

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall =command = "z";Map(z)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = command = "a";Map(a)
triggerall = command = "holddown"
;triggerall = var(3) = 0
trigger1 =stateno = 400
trigger1 = (movecontact||movereversed)
;trigger1 = var(58)=0

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a";Map(a)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = command = "b";Map(b)
triggerall = command = "holddown"
;triggerall = var(3) = 0
trigger1 =stateno = [400,430]
trigger1 = stateno!=420
trigger1 = (movecontact||movereversed)
;trigger1 = var(58)=0

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b";Map(b)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = !ishelper
triggerall = command = "x";Map(x)
trigger1 = statetype = A
trigger1 = ctrl;||fvar(28))
trigger2 = (stateno = [600,610]) || stateno = 630
trigger2 = (movecontact||movereversed); && var(3) = 0
trigger3 = (stateno = 110 && time >= 8) || (stateno = 115 && time >= 5)
trigger4 = stateno = 600 && time >= 11
trigger5 = (stateno = [600,640]); && var(58)=2
trigger5 = animtime = 0
;trigger4 = stateno = 99 && prevstateno = 610 && var(58)!=2



;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y";Map(y)
triggerall = statetype = A
trigger1 = stateno = 600 || stateno = 630
trigger1 = (movecontact||movereversed)
trigger2 = (stateno = 110 && time >= 8) || (stateno = 115 && time >= 5)

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y";Map(y)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640]); && var(58)=2
trigger2 = animtime = 0

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1]
type = ChangeState
value = 620
triggerall = command = "z";Map(z)
triggerall = statetype = A
trigger1 = stateno = 600 || stateno = 630 || stateno = 620
trigger1 = (movecontact||movereversed)
trigger2 = (stateno = 110 && time >= 8) || (stateno = 115 && time >= 5)

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z";Map(z)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640]); && var(58)=2
trigger2 = animtime = 0

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a";Map(a)
triggerall = statetype = A
trigger1 = stateno = 610
trigger1 = (movecontact||movereversed)
trigger2 = (stateno = 110 && time >= 8) || (stateno = 115 && time >= 5)

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a";Map(a)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640]); && var(58)=2
trigger2 = animtime = 0

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b";Map(b)
triggerall = statetype = A
trigger1 = stateno = 600 || stateno = 630
trigger1 = (movecontact||movereversed)
trigger2 = (stateno = 110 && time >= 8) || (stateno = 115 && time >= 5)

[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b";Map(b)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640])
trigger2 = animtime = 0

;---------------------------------------------------------------------------
