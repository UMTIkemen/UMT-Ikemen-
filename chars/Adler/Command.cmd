
;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1

;====================<SINGLE BUTTON>====================

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

;==================<HOLD DIRECTION>==================

[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "Ein"
command = /$DF,x
time = 10

;====================<HOLD BUTTON>====================

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

[Command]
name = "holdp"
command = /x
time = 1

[Command]
name = "holdp"
command = /y
time = 1

[Command]
name = "holdp"
command = /z
time = 1

;====================<DIRECTION>====================

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;====================<RELEASE DIR>====================

[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;====================<RELEASE BUTTON>====================

[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1

;====================<SUPER MOTIONS>===================
;----------------
;----------------Blitzgeist
[Command]
name = "Blitzgeist"
command = ~D, DF, F, D, DB, B, x+y
time = 32

[Command]
name = "Blitzgeist"
command = ~D, DF, F, D, DB, B, y+z
time = 32

[Command]
name = "Blitzgeist"
command = ~D, DF, F, D, DB, B, x+z
time = 32
;=====Größer Blitzbombe=====
[Command]
name = "GrößerBlitzbombe"
command = ~D, D, D, x+y
time = 32
[Command]
name = "GrößerBlitzbombe"
command = ~D, D, D, y+z
time = 32
[Command]
name = "GrößerBlitzbombe"
command = ~D, D, D, z+x
time = 32
;----------------Größer Flak Tritt
[Command]
name = "GrößerTritt"
command = ~D, DB, B, D, DB, B, a
time = 32

[Command]
name = "GrößerTritt"
command = ~D, DB, B, D, DB, B, b
time = 32

[Command]
name = "GrößerTritt"
command = ~D, DB, B, D, DB, B, c
time = 32

[Command]
name = "GrößerTritt"
command = ~D, DB, B, D, DB, B, ~a
time = 32

[Command]
name = "GrößerTritt"
command = ~D, DB, B, D, DB, B, ~b
time = 32

[Command]
name = "GrößerTritt"
command = ~D, DB, B, D, DB, B, ~c
time = 32
;----------------MAX Größer Flak Tritt
[Command]
name = "MAXGrößerTritt"
command = ~D, DB, B, D, DB, B, a+b
time = 32

[Command]
name = "MAXGrößerTritt"
command = ~D, DB, B, D, DB, B, b+c
time = 32

[Command]
name = "MAXGrößerTritt"
command = ~D, DB, B, D, DB, B, a+c
time = 32
;----------------Größer Blitz
[Command]
name = "GrößerBlitz"
command = ~D, DF, F, D, DF, F, x
time = 30
[Command]
name = "GrößerBlitz"
command = ~D, DF, F, D, DF, F, y
time = 30
[Command]
name = "GrößerBlitz"
command = ~D, DF, F, D, DF, F, z
time = 30
[Command]
name = "GrößerBlitz"
command = ~D, DF, F, D, DF, F, ~x
time = 30
[Command]
name = "GrößerBlitz"
command = ~D, DF, F, D, DF, F, ~y
time = 30
[Command]
name = "GrößerBlitz"
command = ~D, DF, F, D, DF, F, ~z
time = 30
;----------------MAX Größer Blitz
[Command]
name = "MAXGrößerBlitz"
command = ~D, DF, F, D, DF, F, x+y
time = 30
[Command]
name = "MAXGrößerBlitz"
command = ~D, DF, F, D, DF, F, y+z
time = 30
[Command]
name = "MAXGrößerBlitz"
command = ~D, DF, F, D, DF, F, x+z
time = 30
;---------------- Super Move Name

;====================<SPECIAL MOTIONS>====================

;=====Blitzbombe=====
[Command]
name = "EXBlitzbombe"
command = ~D, D, x+y

[Command]
name = "EXBlitzbombe"
command = ~D, D, y+z

[Command]
name = "EXBlitzbombe"
command = ~D, D, z+x

[Command]
name = "Blitzbombe"
command = ~D, D, x

[Command]
name = "Blitzbombe"
command = ~D, D, y

[Command]
name = "Blitzbombe"
command = ~D, D, z
;=====Blitzkugel=====
[Command]
name = "Blitzkugel"
command = ~D, DF, F, x
time = 16
[Command]
name = "Blitzkugel"
command = ~D, DF, F, y
time = 16
[Command]
name = "Blitzkugel"
command = ~D, DF, F, z
time = 16

[Command]
name = "EXBlitzkugel"
command = ~D, DF, F, x+y
time = 16
[Command]
name = "EXBlitzkugel"
command = ~D, DF, F, x+z
time = 16
[Command]
name = "EXBlitzkugel"
command = ~D, DF, F, y+z
time = 16
;=====Flak Tritt=====
[Command]
name = "FlakTritt"
command = ~D, DB, B, a
time = 16

[Command]
name = "FlakTritt"
command = ~D, DB, B, b
time = 16

[Command]
name = "FlakTritt"
command = ~D, DB, B, c
time = 16

[Command]
name = "FlakTritt"
command = ~D, DB, B, ~a
time = 16

[Command]
name = "FlakTritt"
command = ~D, DB, B, ~b
time = 16

[Command]
name = "FlakTritt"
command = ~D, DB, B, ~c
time = 16

;=====EX Flak Tritt=====
[Command]
name = "EXFlakTritt"
command = ~D, DB, B, a+b
time = 16

[Command]
name = "EXFlakTritt"
command = ~D, DB, B, b+c
time = 16

[Command]
name = "EXFlakTritt"
command = ~D, DB, B, a+c
time = 16
;----------------

[Command]
name = "412p"
command = ~B, DB, D, x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 16

[Command]
name = "412k"
command = ~B, DB, D, a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k"
command = ~B, DB, D, c
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~c
time = 16

;====================<OTHER>====================

[Command]
name = "highjump"
command = $D, $U
time = 15

;====================<DOUBLE TAP>====================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;====================<2/3 BUTTON COMBINATION>====================

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1

[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1

[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1

;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime && Anim != 251 
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, CtrlSet For Helpers]
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers]
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers]
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Blitzgeist]
type = ChangeState
value = 3300
triggerAll = !AILevel
triggerAll = command = "Blitzgeist" && command != "GrößerBlitzbombe"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Größer Blitzbombe]
type = ChangeState
value = 3200
triggerAll = !AILevel
triggerAll = command = "GrößerBlitzbombe" && (command != "GrößerBlitz" || command != "MAXGrößerBlitz")
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)
trigger3 = (StateNo = 1101 && AnimElemTime(3) >= 0) && P2MoveType = H
trigger4 = (StateNo = 871 && AnimElemTime(1) >= 5) && P2MoveType = H

[State -1, Aerial MAX Größer Blitz]
type = changestate
value = 3180
triggerall = !AIlevel
triggerall = command = "MAXGrößerBlitz"
triggerAll = RoundState = 2 && StateType = A
triggerAll = power >= 2000 && !var(20)
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Aerial Größer Blitz]
type = changestate
value = 3150
triggerall = !AIlevel
triggerall = command = "GrößerBlitz"
triggerAll = RoundState = 2 && StateType = A
triggerAll = power >= 1000 && !var(20)
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Größer Blitz]
type = changestate
value = 3130
triggerall = !AIlevel
triggerall = command = "MAXGrößerBlitz" && command != "GrößerBlitzbombe"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Größer Blitz]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = command = "GrößerBlitz" && command != "GrößerBlitzbombe"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && !var(20)
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Größer Flak Tritt]
type = ChangeState
value = 3030
triggerAll = !AILevel
triggerAll = command = "MAXGrößerTritt" && command != "GrößerBlitzbombe"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Größer Flak Tritt]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerAll = command = "GrößerTritt" && command != "GrößerBlitzbombe"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

;[State -1, MAX Super 1]
;type = ChangeState
;value = 3050
;triggerAll = !AILevel
;triggerAll = command = "MAXSUPER1"
;triggerAll = RoundState = 2 && StateType != A
;triggerAll = power >= 2000 && var(20) <= 60
;trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
;trigger2 = var(7)

;[State -1, Super 1]
;type = ChangeState
;value = 3000
;triggerAll = !AILevel
;triggerAll = command = "SUPER1"
;triggerAll = RoundState = 2 && StateType != A
;triggerAll = power >= 1000 && var(20) <= 60
;trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
;trigger2 = var(7)

[State -1, EX Blitzbombe]
type = ChangeState
value = 1230
triggerAll = !AILevel
triggerAll = command = "EXBlitzbombe"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Blitzbombe]
type = ChangeState
value = 1200
triggerAll = !AILevel
triggerAll = command = "Blitzbombe"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Flak Tritt]
type = ChangeState
value = 1130
triggerAll = !AILevel
triggerAll = command = "EXFlakTritt"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Flak Tritt]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerAll = command = "FlakTritt"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
;trigger3 = StateNo = 1101 && AnimElemTime(4) >= 0

[State -1, EX Aerial Blitzkugel]
type = ChangeState
value = 1080
triggerAll = !AILevel
triggerAll = command = "EXBlitzkugel"
triggerAll = RoundState = 2 && StateType = A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Aerial Blitzkugel]
type = ChangeState
value = 1050
triggerAll = !AILevel
triggerAll = command = "Blitzkugel"
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Blitzkugel]
type = ChangeState
value = 1030
triggerAll = !AILevel
triggerAll = command = "EXBlitzkugel"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Blitzkugel]
type = ChangeState
value = 1000
triggerAll = !AILevel
triggerAll = command = "Blitzkugel"
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Normal Attack Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Special Move Zero Counter]
type = ChangeState
value = 751
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "b+y" && command = "holdfwd"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
triggerAll = command = "c+z"
triggerAll = RoundState = 2
triggerAll = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger2 = ((stateno = [200,699]) && movehit = [1,6]) && var(53) = 1

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dash Forward/Run]
type = ChangeState
value = 102
triggerAll = !AILevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
trigger1 = command = "BB"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Grab]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Air Throw]
type = ChangeState
value = 850
triggerAll = !AILevel
triggerAll = RoundState = 2 && StateType = A
triggerAll = ctrl
trigger1 = (command = "holdfwd" || command = "holdback") && command = "pp"
trigger2 = (command = "holdfwd" || command = "holdback") && command = "kk"

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 17) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Hubschrauber]
type = ChangeState
value = 245
triggerAll = !AILevel
triggerAll = command != "holddown" && (command = "holdfwd") && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = 210 || stateno = 240 || stateno = 410 || stateno = 440) && MoveContact = [1,6]
trigger3 = var(4)

[State -1, Standing Medium Kick]
type = ChangeState
value = 240 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 210 && MoveHit = [1,8]
trigger3 = var(4)

[State -1, Standing Light Punch]
type = ChangeState
value = 200 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400) && Time >= 4
trigger3 = StateNo = 230 && Time >= 8
trigger4 = StateNo = 430 && Time >= 9
trigger5 = var(4)

[State -1, Standing Light Kick]
type = ChangeState
value = 230 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400) && Time >= 4
trigger3 = StateNo = 230 && Time >= 8
trigger4 = StateNo = 430 && Time >= 9
trigger5 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400) && Time >= 4
trigger3 = StateNo = 230 && Time >= 8
trigger4 = StateNo = 430 && Time >= 9
trigger5 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400) && Time >= 4
trigger3 = StateNo = 230 && Time >= 8
trigger4 = StateNo = 430 && Time >= 9
trigger5 = var(4)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = !AILevel
triggerAll = command = "b"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
triggerAll = command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = !AILevel
triggerAll = command = "a"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = !AILevel
triggerAll = command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(6)

;===============================================================================
;===========================<ADLER A.I SYSTEM MOVEMENTS>========================
;===============================================================================

[State -1, Stance]
type = ChangeState
value = 0
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 40 && Random < (300 * (AILevel ** 2 / 64.0))
ctrl = 1

[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 || StateNo = 5052 || StateNo = 5071 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jump]
type = ChangeState
value = 40
TriggerAll = AILevel && NumEnemy
TriggerAll = RoundState = 2 && StateType != A
TriggerAll = stateno != 40
Trigger1 = ctrl || stateno = 21 || stateno = 100
trigger1 = p2bodydist X = [0,80]
Trigger1 = p2MoveType = A
trigger1 = enemynear,HitDefAttr = SC, AT
trigger1 = random <= 100

[State -1, Roll Forward]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Dodge]
type = ChangeState
value = 700
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = !var(26) || P2BodyDist x >= 40
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Adler Taunt]
type = ChangeState
value = 195
triggerAll = AILevel && NumEnemy
triggerAll = StateType != A && Life >= 0.5 * LifeMax
triggerAll = (EnemyNear, Life) <= 0.5 * (EnemyNear, LifeMax)
trigger1 = ctrl
trigger1 = P2Dist x >= 160 && !(EnemyNear, ctrl)
trigger1 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Normal Attack Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Special Move Zero Counter]
type = ChangeState
value = 751
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
triggerAll = NumHelper(3305) = 0
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20)
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,35]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Air Throw]
type = ChangeState
value = 850
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = A
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = ctrl
trigger1 = P2StateType = A && Random < (200 * (AILevel ** 2 / 64.0))
trigger1 = (P2Dist x = [-20,33]) && (P2Dist y = [-100,50])

[State -1, Dash]
type = ChangeState
value = 102
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100, 106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (125 * (AILevel ** 2 / 64.0))

[State -1, Run]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100, 106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (125 * (AILevel ** 2 / 64.0))

;===============================================================================
;===========================<ADLER A.I NORMAL ATTACKS>==========================
;===============================================================================

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 17) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,58]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
triggerAll = (P2StateNo != [5020,5050]) || P2StateNo != 952
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250 
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,82]) && (P2Dist y = [-64,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
triggerAll = (P2StateNo != [5020,5050]) || P2StateNo != 952
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,33]) && (P2Dist y = [-120,-40]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,75]) && (P2Dist y = [-25,0]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,51]) && (P2Dist y = [-70,10]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Neutral Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = AILevel && NumEnemy && !vel x
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,48]) && (P2Dist y = [-75,0]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Standing Far Medium Punch]
type = ChangeState
value = 210
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,43]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
triggerAll = (P2StateNo != [5020,5050]) || P2StateNo != 952
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far Medium Kick]
type = ChangeState
value = 240
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,45]) && (P2Dist y = [-104,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -70) || (EnemyNear, StateType = A)
triggerAll = (P2StateNo != [5020,5050]) || P2StateNo != 952
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = stateno = 210 && MoveHit
trigger3 = (P2BodyDist x = [0,40])
trigger3 = Random < (325 * (AILevel ** 2 / 64.0))

[State -1, Hubschrauber]
type = ChangeState
value = 245
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,92]) && (P2Dist y = [-95,0]) && P2StateType != L && P2MoveType != I
triggerAll = (EnemyNear, const(size.head.pos.y) <= -70) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (75 * (AILevel ** 2 / 64.0))
trigger3 = stateno = 240 && MoveHit
trigger3 = (P2BodyDist x = [0,81])
trigger3 = Random < (325 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,34]) && (P2Dist y = [-40,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,71]) && (P2Dist y = [-38,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,51]) && (P2Dist y = [-75,75]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [10,60]) && (P2Dist y = [-74,40]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Punch]
type = ChangeState
value = 200 
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,46]) && (P2Dist y = [-80,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
triggerAll = (P2StateNo != [5020,5050]) || P2StateNo != 952
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (85 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [10,62]) && (P2Dist y = [-70,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
triggerAll = (P2StateNo != [5020,5050]) || P2StateNo != 952
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerall = P2StateType != L
trigger1 = ctrl || stateno = 21 || stateno = 100
trigger1 = p2bodydist X = [-5,42]
trigger1 = p2MoveType = I
trigger1 = p2statetype != A
trigger1 = Random < (325 * (AILevel ** 2 / 64.0))
trigger2 = ctrl || stateno = 21 || stateno = 100
trigger2 = p2bodydist X = [-5,24]
trigger2 = p2MoveType = H
trigger2 = p2statetype != A
trigger2 = Random < (525 * (AILevel ** 2 / 64.0))
trigger3 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (525 * (AILevel ** 2 / 64.0))
trigger3 = stateno = 400 && (animelem=2,>0 && animelem=4,<0)
trigger3 = p2bodydist X = [-5,31]
trigger3 = p2MoveType = H
trigger3 = p2statetype != A

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,52]) && (P2Dist y = [-30,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = ((stateno = 400) && movehit && !animtime)
trigger3 = (enemy, statetype = S && (enemy, movetype = A || !enemy, ctrl) && random < (125 * (AIlevel ** 2 / 64.0)))

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,35]) && (P2Dist y = [-45,40]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [-25,25]) && (P2Dist y = [-60,57]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))

;===============================================================================
;===========================<ADLER A.I SPECIAL MOVES>===========================
;===============================================================================

;------------------------------------------------------------------------------


[State -1, Flak Tritt]
type = ChangeState
value = ifElse(Power >= 500 && (Random < 133 && (P2BodyDist x = [15,57])), 1130, 1100)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-100,35])
triggerAll = ((P2BodyDist x = [5,70]) && P2StateType != A) && P2MoveType != I || ((P2BodyDist x = [0,80]) && P2StateType = A) || ((P2BodyDist x = [0,100]) && P2StateType != A) && P2MoveType = H
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))
trigger4 = StateNo = 240 && MoveHit
trigger4 = (P2BodyDist x = [0, 42])
trigger4 = Random < (550 * (AILevel ** 2 / 64.0))
trigger5 = PrevStateNo = 1101 && (P2MoveType = H || P2StateType = A)
trigger5 = (P2BodyDist x = [0,64]) && (P2Dist y = [-60,-40])
trigger5 = Random < 500 * (AILevel ** 2 / 64.0)

[State -1, Aerial Blitz Kugel]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100 && var(20) <= 60, 1080, 1050)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A && pos y <= -30
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x <= 70
triggerAll = EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])) && Random < (225 * (AILevel ** 2 / 64.0))
trigger2 = StateNo = 50 && Time <= 6
trigger2 = Random < (350 * (AILevel ** 2 / 64.0))

[State -1, Blitzkugel]
type = ChangeState
value = ifElse(Power >= 500 && Random < 150, 1030, 1000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x <= 170 && P2Dist y >= -90 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (75 * (AILevel ** 2 / 64.0))
trigger3 = (P2StateType != L || P2StateNo = 5120)
trigger3 = (P2BodyDist x = [-15, 20]) && (P2Dist y = [-75, 0]) 
trigger3 = P2StateNo = 5120 
trigger3 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < 300 * (AILevel ** 2 / 64.0)

;===============================================================================
;===========================<ADLER A.I SUPER MOVES>=============================
;===============================================================================

[State -1, Größer Blitzbombe]
type = ChangeState
value = 3200
triggerall = AILevel && numenemy && RoundState=2 && StateType != A &&var(20)<=60&& random < (575 * (AIlevel ** 2 / 64.0))
triggerall = (p2stateno != [120, 155]) && (enemynear,stateno!=[5070,5220]) && p2bodydist x >=-20 && p2bodydist x <=45 &&(p2dist y=[-200,20]) && (enemynear, statetype != C)
triggerAll = Power >= 2000 && var(20) <= 60
trigger1 = ctrl || (StateNo=[100,101])|| (StateNo=[110,111])
trigger2 = (P2BodyDist x = [0, 30]) || ((EnemyNear, BackEdgeBodyDist < 15) && P2StateType = A)
trigger2 = var(7) && MoveHit && Random < (175 * (AILevel ** 2 / 64.0))
trigger3 = (StateNo = 1101 && AnimElemTime(3) >= 0) && P2MoveType = H
trigger3 = Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = (StateNo = 871 && AnimElemTime(1) >= 5) && P2MoveType = H
trigger4 = Random < (500 * (AILevel ** 2 / 64.0))

[State -1, MAX Aerial Größer Blitz Kugel]
type = ChangeState
value = 3180
TriggerAll = AILevel && NumEnemy
TriggerAll = RoundState = 2 && StateType = A
TriggerAll = Power >= 2000 && var(20) <= 60
TriggerAll = random < (300 * (AIlevel ** 2 / 64.0))
TriggerAll = Movehit
trigger1 = p2bodydist X = [0,50]
trigger1 = Stateno = 1100
trigger1 = AnimElemTime(9) >= 0 || AnimElem = 8

[State -1, Aerial Größer Blitz Kugel]
type = ChangeState
value = 3150
TriggerAll = AILevel && NumEnemy
TriggerAll = RoundState = 2 && StateType = A
TriggerAll = Power >= 1000 && var(20) <= 60
TriggerAll = random < (600 * (AIlevel ** 2 / 64.0))
;TriggerAll = movehit
trigger1 = MoveGuarded
trigger1 = p2bodydist X = [0,50]
trigger1 = Stateno = 1100
trigger1 = animelem = 4
trigger2 = MoveGuarded
trigger2 = p2bodydist X = [0,50]
trigger2 = Stateno = 1100
trigger2 = AnimElemTime(9) >= 0

[State -1, MAX Größer Blitz Kugel]
type = ChangeState
value = 3130
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = EnemyNear, StateType = A
triggerAll = (P2BodyDist x = [0,41]) && (P2Dist y = [-70,0])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveContact && Random < (75 * (AIlevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))
trigger4 = (P2StateType != L || P2StateNo = 5120)
trigger4 = (P2BodyDist x = [-15, 30]) && (P2Dist y = [-75, 0]) 
trigger4 = P2StateNo = 5120 
trigger4 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < 185 * (AILevel ** 2 / 64.0)
trigger5 = (StateNo = 1101 && AnimElemTime(3) >= 0) && P2MoveType = H
trigger5 = (P2BodyDist x = [-10,30]) && (P2Dist y = [-100,0])
trigger5 = Random < 275 * (AILevel ** 2 / 64.0)
trigger6 = StateNo = 871 && AnimElemTime(1) >= 5
trigger6 = Random < 500 * (AILevel ** 2 / 64.0)

[State -1, Größer Blitz Kugel]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = EnemyNear, StateType = A
triggerAll = EnemyNear, StateType != L
triggerAll = (P2BodyDist x = [20,141]) && (P2Dist y = [-58,0])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (170 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveContact && Random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, MAX Größer Flak Tritt]
type = ChangeState
value = 3030
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-15,60]) && (P2Dist y = [-60,20])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))
trigger4 = stateno = 3110
trigger4 = animelem = 16
trigger4 = Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = (P2BodyDist x = [0, 50])

[State -1, Größer Flak Tritt]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-10,80]) && (P2Dist y = [-100,30])
triggerAll = P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (185 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (150 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (150 * (AILevel ** 2 / 64.0))
trigger4 = Ctrl && ((P2BodyDist x = [-10,60]) && (P2Dist y = [-70,30])) && P2MoveType = A
trigger4 = Random < (300 * (AILevel ** 2 / 64.0))

;===============================================================================
;===========================<ADLER A.I END>=====================================
;===============================================================================
