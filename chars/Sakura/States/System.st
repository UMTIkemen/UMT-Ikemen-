; ________________________________
;| Sakura Kasugano by DeathScythe |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

;---------------------------------------------------------------------------
;Standing
[StateDef 0]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 0, Remove Explods]
type = RemoveExplod
trigger1 = IsHelper

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

[State 0, ChangeAnim]
type = ChangeAnim
triggerAll = !var(40) || !var(57)
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerAll = var(40) && var(57)
trigger1 = Anim != 2 && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 2

[State 0, Dead]
type = ChangeState
trigger1 = !Alive
value = 5050

;---------------------------------------------------------------------------
;Stand to Crouch
[StateDef 10]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0

[State 10, Reversed Commands: change to jumping]
type = ChangeState
trigger1 = !Time
trigger1 = NumExplod(92828282) || NumExplod(92468246) && command = "holddown"
value = 40

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 12
value = 10
elem = 3 - AnimElemNo(0)

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10
value = 10

[State 10, End]
type = ChangeState
trigger1 = !AnimTime
value = 11

;---------------------------------------------------------------------------
;Crouching
[StateDef 11]
type = C
physics = C
moveType = I
anim = 11
velSet = 0,0
sprPriority = 0

[State 11, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 6 && !AnimTime
value = 11

;---------------------------------------------------------------------------
;Crouch to Stand
[StateDef 12]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 12, Reversed Commands: change to "fake" crouch state]
type = ChangeState
trigger1 = !Time
trigger1 = (NumExplod(92828282) || NumExplod(92468246)) && command = "holdup"
value = 13

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 10
value = 12
elem = 3 - AnimElemNo(0)

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 12
value = 12

[State 12, End]
type = ChangeState
trigger1 = command = "holddown" && command != "holdup"
value = 10

[State 12, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
;"Fake" crouch state (for reversed commands)
[StateDef 13]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0
ctrl = 1

[State 13, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10 && Anim != 11 && Anim != 141
value = 10

[State 13, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 10 && !AnimTime
trigger2 = Anim = 141 && !AnimTime
value = 11

;---------------------------------------------------------------------------
;Walking
[StateDef 20]
type = S
physics = S
moveType = I
sprPriority = 0

[State 20, VelSet]
type = VelSet
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdfwd"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command = "holdback"
x = const(velocity.walk.fwd.x) * ifElse(var(40) = 1, 1.1, 1)

[State 20, VelSet]
type = VelSet
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdback"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command = "holdfwd"
x = const(velocity.walk.back.x) * ifElse(var(40) = 1, 1.1, 1)

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1) >= 1
value = 20

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1) >= 1
value = 21

;---------------------------------------------------------------------------
;Jumping
[StateDef 40]
type = S
physics = S
moveType = I
anim = 40
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 40, Reversed Commands: change to "fake" crouch state]
type = ChangeState
trigger1 = !Time
trigger1 = (NumExplod(92828282) || NumExplod(92468246)) && command = "holdup"
value = 13

[State 40, Direction]
type = VarSet
trigger1 = !AILevel
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdfwd", 1, ifElse(command = "holdback", -1, sysvar(1))))

[State 40, Direction (Reversed Commands)]
type = VarSet
trigger1 = !AILevel
trigger1 = NumExplod(94646464) || NumExplod(92468246)
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdback", 1, ifElse(command = "holdfwd", -1, sysvar(1))))

[State 40, Direction (AI)]
type = VarSet
trigger1 = AILevel
sysvar(1) = ifElse((EnemyNear, MoveType != A || BackEdgeBodyDist <= 10), 1, ifElse((EnemyNear, MoveType = A), -1, 0))

[State 40, High Jump]
type = VarSet
trigger1 = !Time && !AILevel
;var(3) = ifElse(command = "highjump", 3, 0)
var(3) = ifElse(NumExplod(90000408), 3, 0)

[State 40, High Jump (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(3) = ifElse((P2BodyDist x >= 160 || Random < (125 * (AILevel ** 2 / 64.0))), 3, 0)

[State 40, High Jump]
type = VarSet
trigger1 = !Time && PrevStateNo = 100
var(3) = 3

[State 40, Low Jump]
type = VarSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && command != "holdup" && (var(3) != [1,2])
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && command != "holddown" && (var(3) != [1,2])
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Low Jump (AI)]
type = VarSet
trigger1 = AILevel && (var(3) != [1,2])
trigger1 = (EnemyNear, StateType = C) && Random < 500
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Jump Sound]
type = PlaySnd
trigger1 = !AnimTime
value = ifElse((var(3) = [2,3]), 41, 40), 0

[State 40, Dust Helper]
type = Helper
trigger1 = !AnimTime
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 40, Velocity: Normal Jump]
type = VelSet
trigger1 = !AnimTime
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = ifElse(!sysvar(1), const(velocity.jump.y), ifElse(sysvar(1) = 1, -8.59, -9.06))

[State 40, Velocity: Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 1
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = 0.75 * ifElse(!sysvar(1), const(velocity.jump.y), ifElse(sysvar(1) = 1, -8.59, -9.06))

[State 40, Velocity: Long Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 2
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = 0.75 * ifElse(!sysvar(1), const(velocity.jump.y), ifElse(sysvar(1) = 1, -8.59, -9.06))

[State 40, Velocity: Long Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), ifElse(sysvar(1) = 1, -8.59, -9.06))

[State 40, End]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;In Air
[StateDef 50]
type = A
physics = N
moveType = I
sprPriority = 1

[State 50, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(!vel x , 41, ifElse(vel x > 0, 42, 43)) + 10 * (var(3) = [1,2])
persistent = 0

[State 50, Assert: No Guard]
type = AssertSpecial
trigger1 = var(3) = [1,2]
flag = NoAirGuard
ignoreHitPause = 1

[State 50, Grounded Frame]
type = PosFreeze
trigger1 = Time < 1 && PrevStateNo = 40
value = 1

[State 50, Gravity]
type = Gravity
trigger1 = Time > 1 || PrevStateNo != 40

[State 50, VelAdd]
type = VelAdd
trigger1 = vel x
trigger1 = Time > 1 || PrevStateNo != 40
x = ifElse((var(3) = [2,3]), -0.04, -0.027) * ifElse(vel x < 0, -1, 1)

[State 50, Landing]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 52

;---------------------------------------------------------------------------
[StateDef 51]
type = A
physics = N
moveType = I
sprPriority = 1

[State 51, Gravity]
type = Gravity
trigger1 = Time > 0

[State 51, VelAdd]
type = VelAdd
trigger1 = vel x
trigger1 = Time >= 1 || PrevStateNo != 40
x = ifElse((var(3) = [2,3]), -0.04, -0.027) * ifElse(vel x < 0, -1, 1)

[State 51, Landing]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 52

;---------------------------------------------------------------------------
;Landing
[StateDef 52]
type = S
physics = S
moveType = I
anim = 47
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && (var(3) = 1 || var(3) = 2)
trigger1 = (PrevStateNo = [600,699])
value = 57

[State 52, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 52, CtrlSet]
type = CtrlSet
trigger1 = !Time && (PrevStateNo != [600,699])
trigger2 = Time = 1 && Anim != 57
value = 1

[State 52, ChangeState to Guarding]
type = ChangeState
;trigger1 = ctrl && command = "holdback"
trigger1 = ctrl && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command = "holdfwd", command = "holdback"), ifElse(P2dist x < 0, command = "holdback", command = "holdfwd")))
trigger1 = InGuardDist && (PrevStateNo != [600,699])
value = 120

[State 52, Assert: NoWalk]
type = AssertSpecial
trigger1 = Anim != 5
flag = NoWalk
ignoreHitPause = 1

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 52, ChangeAnim to Turning]
type = ChangeAnim
trigger1 = ctrl && P2Dist x < 0
trigger1 = Anim != 5
value = 5

[State 52, Turn]
type = Turn
trigger1 = Anim = 5 && AnimElem = 1

[State 52, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Run
[StateDef 100]
type = S
physics = N
moveType = I
anim = 100
ctrl = 0
sprPriority = 1

[State 100, VelSet]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x) * ifElse(var(40) = 1, 1.1, 1)

[State 100, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 2 || AnimElem = 5)
value = 100, ifElse((AnimElem = 2), 0, 1)

[State 100, Jump]
type = ChangeState
triggerAll = !AILevel
;trigger1 = command = "holdfwd" && command = "holdup"
trigger1 = !NumExplod(92828282) && !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdfwd" && command = "holdup"
trigger2 = NumExplod(92828282)
trigger2 = command = "holdfwd" && command = "holddown"
trigger3 = NumExplod(94646464)
trigger3 = command = "holdback" && command = "holdup"
trigger4 = NumExplod(92468246)
trigger4 = command = "holdback" && command = "holddown"
value = 40

[State 100, Jump (AI)]
type = ChangeState
trigger1 = AILevel && Random < 25
value = 40

[State 100, End]
type = ChangeState
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = !AILevel && command != "holdfwd"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = !AILevel && command != "holdback"
trigger3 = AILevel && P2BodyDist x <= 90
value = 101

;---------------------------------------------------------------------------
;Stop Running
[StateDef 101]
type = S
physics = S
moveType = I
anim = 101
ctrl = 0
sprPriority = 1

[State 101, Stopping Sound]
type = PlaySnd
trigger1 = !Time
value = 101,0

[State 101, Skid Dust]
type = Explod
trigger1 = !Time
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 101, Jump]
type = ChangeState
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && command = "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && command = "holddown"
value = 40

[State 101, End]
type = ChangeState
trigger1 = !AnimTime
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
value = ifElse(command = "holddown", 10, 0)
ctrl = 1

[State 101, End (Reversed Commands)]
type = ChangeState
trigger1 = !AnimTime
trigger1 = NumExplod(92828282) || NumExplod(92468246)
value = ifElse(command = "holdup", 10, 0)
ctrl = 1

;---------------------------------------------------------------------------
;Dash Forward
[StateDef 102]
type = S
physics = N
moveType = I
anim = 102
ctrl = 0
sprPriority = 1

[State 102, Dash Sound]
type = PlaySnd
trigger1 = !Time
value = 110,0

[State 102, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 102, VarSet -> Running]
type = VarSet
trigger1 = !Time
sysvar(1) = 1

[State 102, VarSet -> Not Running]
type = VarSet
triggerall = AnimElemTime(2) <= 0 && !AILevel
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command != "holdfwd"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command != "holdback"
sysvar(1) = 0

[State 102, ChangeState to Running]
type = ChangeState
trigger1 = AnimElemTime(2) = 0 && sysvar(1)
value = 100

[State 102, Type]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
statetype = A
physics = N

[State 102, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 6.14
y = -2.81

[State 102, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && Vel X > 0
x = -0.087

[State 102, Gravity]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.39

[State 102, End]
type = ChangeState
trigger1 = AnimElemTime(2) >= 0
trigger1 = Pos Y > -Vel Y
value = 103

;---------------------------------------------------------------------------
;Stop Dashing Forward
[StateDef 103]
type = S
physics = S
ctrl = 1
anim = 103
velSet = 0,0

[State 103, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 103, Dash End Sound]
type = PlaySnd
trigger1 = !Time
value = 100,0

[State 103, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 103, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Dashing Backwards
[StateDef 105]
type = A
physics = N
moveType = I
velSet = 0,0
anim = 105
ctrl = 0
sprPriority = 1

[State 105, Back Dash Sound]
type = PlaySnd
trigger1 = !Time
value = 105,0

[State 105, Dust Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 105, VelSet]
type = VelSet
trigger1 = !Time
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, VelAdd]
type = VelAdd
trigger1 = Time > 0 && Vel X < 0
x = 0.087

[State 105, Gravity]
type = VelAdd
trigger1 = Time > 0
y = 0.39

[State 105, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 106

;---------------------------------------------------------------------------
;Stop Dashing Backwards
[StateDef 106]
type = S
physics = S
ctrl = 0
anim = 106
velSet = 0,0

[State 106, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 106, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 100,1

[State 106, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 106, CtrlSet]
type = CtrlSet
trigger1 = Time >= 2
value = 1

[State 106, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Dodge
[StateDef 700]
type = S
physics = S
moveType = I
anim = 700
ctrl = 0
velSet = 0,0
sprPriority = -2

[State 700, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = 800,1
channel = 0

[State 700, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = 191,11
channel = 0

[State 700, Dodge Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,3
channel = 1

[State 700, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 700, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 700, Attack]
type = ChangeState
trigger1 = !AILevel && Time = [15,25]
;trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220) || NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
;value = ifElse((command = "x" || command = "y" || command = "z"), 220, 241)
value = ifElse((NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)), 221, 250)

[State 700, Attack (AI)]
type = ChangeState
trigger1 = AILevel && (Time = [15,25]) && NumEnemy
trigger1 = (EnemyNear, MoveType != A) && (P2BodyDist x = [-60,60]) && (P2Dist y >= -60)
value = ifElse(Random < 666, 221, 250)

[State 700, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Roll Forward
[StateDef 710]
type = S
physics = N
moveType = I
anim = 710
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 710, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 710, HitBy]
type = HitBy
trigger1 = AnimElemTime(8) < 0
value = SCA,AT
time = 1

[State 710, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = 800, ifElse(Random < 500, 1, 2)
channel = 0

[State 710, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = 191,ifElse(Random < 500, 11, 21)
channel = 0

[State 710, Roll Sound]
type = PlaySnd
trigger1 = Time = 1
value = 110,0
channel = 1

[State 710, Start Roll]
type = VelSet
trigger1 = AnimElem = 2
x = 4.5 * ifElse(var(40) = 1, 1.1, 1)

[State 710, End Roll]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 710, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Roll Backwards
[StateDef 715]
type = S
physics = N
moveType = I
anim = 715
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 715, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 715, HitBy]
type = HitBy
trigger1 = AnimElemTime(8) < 0
value = SCA,AT
time = 1

[State 715, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = 800, ifElse(Random < 500, 1, 2)
channel = 0

[State 715, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = 191,ifElse(Random < 500, 11, 21)
channel = 0

[State 715, Roll Sound]
type = PlaySnd
trigger1 = Time = 1
value = 110,0
channel = 1

[State 715, Start Roll]
type = VelSet
trigger1 = AnimElem = 2
x = -4.5 * ifElse(var(40) = 1, 1.1, 1)

[State 715, End Roll]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 715, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Power Charge
[StateDef 730]
type = S
physics = S
moveType = I
anim = 730
velSet = 0,0
ctrl = 0

[State 730, PowerAdd]
type = PowerAdd
triggerAll = Power < const(data.power) && Power < PowerMax
trigger1 = (command = "hold_b" && command = "hold_y")
value = 5 + ifElse(time < 60, 0, (time - 60) / 12)
[State 730, PowerAdd]
type = PowerAdd
triggerAll = Power < const(data.power) && Power < PowerMax
trigger1 = (command = "hold_b" && command = "hold_y")
value = 2 + ifElse(time < 60, 0, (time - 60) / 12)

[State 730, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 730,1
channel = 0

[State 730, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 730,11
channel = 0

[State 730, Character Flash]
type = PalFX
trigger1 = 1
time = 1
add = 75 + ceil(sin(Time / 6.0 * pi) * 75),25 + ceil(sin(Time / 6.0 * pi) * 25),0

[State 730, Power Charge Helper]
type = Helper
trigger1 = !NumHelper(8330)
helperType = Normal
stateNo = 8330
ID = 8330
name = "Power Charge"
posType = P1
pos = 0,0
pauseMoveTime = 65535
superMoveTime = 65535
ownPal = 1

[State 730, Particles]
type = Helper
trigger1 = !NumHelper(8331)
helperType = Normal
stateNo = 8331
ID = 8331
name = "Particles"
postype = P1
pauseMoveTime = 65535
superMoveTime = 65535
ownPal = 1

[State 730, End]
type = ChangeState
trigger1 = Power >= const(data.power) || Power >= PowerMax || RoundState != 2
trigger2 = !AILevel && (command != "holdb" || command != "holdy")
trigger3 = AILevel && (InGuardDist || P2BodyDist x <= 120)
value = 731
ctrl = 1

;---------------------------------------------------------------------------
;Power Charge End
[StateDef 731]
type = S
physics = S
moveType = I
anim = 731
velSet = 0,0
ctrl = 1

[State 731, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 731, Full Power Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time && Power >= const(data.power)
value = 181,0
channel = 0
persistent = 0

[State 731, Full Power Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time && Power >= const(data.power)
value = 181,10
channel = 0
persistent = 0

[State 731, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Zero Counter
[StateDef 750]
type = S
physics = S
moveType = I
anim = 750
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000
faceP2 = 1

[State 750, Button]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = (command = "412k")
var(10) = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
ignoreHitPause = 1

[State 750, Button (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2StateType = A), 0, ifElse((P2StateType = C), 1, ifElse(Random < 500, 0, 1)))
ignoreHitPause = 1

[State 750, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 750, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 750, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 4,0
channel = 0

[State 750, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 4,10
channel = 0

[State 750, Zero Counter FX Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8350
ID = 8350
name = "Zero Counter"
posType = P1
pos = 22, -65
superMoveTime = 255
ownPal = 1

[State 750, SuperPause]
type = SuperPause
trigger1 = !Time
time = 15
moveTime = 15
p2DefMul = 1
anim = -1
sound = s750,0
darken = 0

[State 750, End]
type = ChangeState
trigger1 = Time >= 15
value = ifElse(var(10) = 1, 2910, 2900)

;---------------------------------------------------------------------------
;Standing Parry
[StateDef 760]
type = S
physics = S
moveType = I
anim = 760
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 760, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 760, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 760, Stop]
type = PosFreeze
trigger1 = 1
value = 1

[State 760, No Walking]
type = VarSet
trigger1 = 1
var(26) = 7

[State 760, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1= !Time
value = 4,0
channel = 0

[State 760, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1= !Time
value = 4,10
channel = 0

[State 760, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0
channel = 1

[State 760, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15

[State 760, FX]
type = Explod
trigger1 = !Time
anim = 8360
sprPriority = 5
posType = P1
pos = 31, -72
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownPal = 1

[State 760, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 760, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Parry
[StateDef 761]
type = C
physics = C
moveType = I
anim = 761
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 761, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 761, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 761, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 761, No Walk]
type = VarSet
trigger1 = 1
var(26) = 7

[State 761, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1= !Time
value = 4,0
channel = 0

[State 761, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1= !Time
value = 4,10
channel = 0

[State 761, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0
channel = 1

[State 761, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 15

[State 761, Parry FX]
type = Explod
trigger1 = !Time
anim = 8360
sprpriority = 5
postype = P1
pos = 27, -24
pauseMovetime = -1
superMovetime = -1
scale = 0.5,0.5
ownpal = 1

[State 761, EnvShake]
type = EnvShake
trigger1 = !time
time = 0
ampl = 0

[State 761, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Jumping Parry
[StateDef 762]
type = A
physics = N
moveType = I
anim = 762
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 762, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 762, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 762, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 762, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1= !Time
value = 4,0
channel = 0

[State 762, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1= !Time
value = 4,10
channel = 0

[State 762, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0
channel = 1

[State 762, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15

[State 762, Parry FX]
type = Explod
trigger1 = !Time
anim = 8360
sprPriority = 5
posType = P1
pos = 42, -65
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownpal = 1

[State 762, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 762, End]
type = ChangeState
trigger1 = !AnimTime
value = 763
ctrl = 1

;---------------------------------------------------------------------------
;Falling
[StateDef 763]
type = A
physics = N
movetype = I
anim = 763
ctrl = 1

[State 763, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(vel x > 2, 2, ifElse(vel x < -2, -2, vel x))
y = ifElse(Vel Y < -2, Vel Y, -2)

[State 763, Gravity]
type = Gravity
trigger1 = Time > 0

[State 763, Landing]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 52

;---------------------------------------------------------------------------
;Max Mode
[Statedef 770]
type = S
movetype = I
physics = S
anim = 770
ctrl = 0
velset = 0,0

[State 770, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 3
value = 4, 2
channel = 0

[State 770, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 3
value = 4, 12
channel = 0

[State 770, MAX Snd]
type = PlaySnd
trigger1 = !Time
value = 770, 0

[State 770, Power Up! Text]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8291
ID = 8291
name = "Power Up FX"
posType = P1
pos = ceil(4 * const(size.xScale)), ceil(-62 * const(size.yScale))
facing = -1
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State 770, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 1
value = -1000

[State 770, PowerSet Var]
type = Varset
trigger1 = Animelem = 1
var(24) = Power

[State 770, MAX Mode Timer]
type = VarSet
trigger1 = AnimElem = 1
var(53) = 1000

[State 770, Max Meter V2]
type = Helper
trigger1 = Animelem = 1 && !NumHelper(780)
helperType = Normal
id = 780
pos = 0,0
postype = left
name = "Max Meter"
stateno = 780
ignorehitpause = 1
ownpal = 1

[State 770, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Max Mode Bar Helper
[Statedef 780]
type = S
movetype = I
physics = N
anim = 1
sprpriority = 0

[State 780, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0,-15

[State 780, Meter BG]
type = Explod
trigger1 = !Time
anim = 780
id = 780
pos = 2,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = -1
ontop = 1
ownpal = 1
removeongethit = 0

[State 780, Meter Fill]
type = Explod
trigger1 = Time = 2
anim = 781
id = 781
pos = 24,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 2
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 780, Meter Container]
type = Explod
trigger1 = Time = 2
anim = 782
id = 782
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 780, ModifyExplod]
type = ModifyExplod
trigger1 = root, Var(53) > 0
id = 781
scale = (5 + root, Var(53)) / 2000.0,.5
ignorehitpause = 1

[State 780, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(53) <= 0
id = 780
ignorehitpause = 1

[State 780, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(53) <= 0
id = 781
ignorehitpause = 1

[State 780, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(53) <= 0
id = 782
ignorehitpause = 1

[State 780, DestroySelf]
type = DestroySelf
trigger1 = root, Var(53) <= 0
ignorehitpause = 1

;---------------------------------------------------------------------------
;Custom Combo (Ground Version)
[StateDef 900]
type = S
physics = S
moveType = A
anim = 900
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 900, Corner Push]
type = VarSet
trigger1 = Time = 4
fvar(5) = 0

[State 900, Unguardable]
type = VarSet
trigger1 = Time = 4 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 30

[State 900, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA
time = 38

[State 900, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 900, Custom Combo Time]
type = VarSet
trigger1 = Time >= 4
var(20) = 180

[State 900, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = Time = 4
value = 4,2
channel = 0

[State 900, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = Time = 4
value = 4,12
channel = 0

[State 900, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo FX"
posType = P1
pos = -8,-60
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 900, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 30
moveTime = 30
anim = -1
sound = s900,0
p2DefMul = 1
darken = 0

[State 900, AfterImage]
type = AfterImage
trigger1 = !AnimTime
time = 2
timeGap = 1
frameGap = 4
length = 13
palBright = 0,0,0
palContrast = 64,128,192
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = add1

[State 900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Custom Combo (Air Version)
[Statedef 905]
type = A
physics = N
moveType = A
anim = 905
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 905, Corner Push]
type = VarSet
trigger1 = Time = 4
fvar(5) = 0

[State 905, Unguardable]
type = VarSet
trigger1 = Time = 4 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 30

[State 905, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 38

[State 905, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 905, Custom Combo Timer]
type = VarSet
trigger1 = Time >= 4
var(20) = 180

[State 905, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = Time = 4
value = 4,2
channel = 0

[State 905, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = Time = 4
value = 4,12
channel = 0

[State 905, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo Startup"
posType = P1
pos = 3,-81
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 905, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 30
moveTime = 30
anim = -1
sound = s900,0
p2DefMul = 1
darken = 0

[State 905, AfterImage]
type = AfterImage
trigger1 = !AnimTime
time = 2
timeGap = 1
frameGap = 4
length = 13
palBright = 0,0,0
palContrast = 64,128,192
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = add1

[State 905, End]
type = ChangeState
trigger1 = !AnimTime
value = 906
ctrl = 1

;---------------------------------------------------------------------------
;Air Finish
[StateDef 906]
type = A
physics = N
moveType = I
anim = 906
ctrl = 1

[State 906, Gravity]
type = Gravity
trigger1 = Time > 0

[State 906, Land]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 52

;---------------------------------------------------------------------------
;Target Safe Fall
[StateDef 5205]
type = A
physics = N
moveType = H

[State 5205, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
trigger1 = Anim = 5035
value = 5050

[State 5205, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5205, SelfState (Ground)]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 5205, SelfState (Air)]
type = SelfState
trigger1 = Time >= 60
value = 5210

;---------------------------------------------------------------------------
;Fall Recovery
[StateDef 5200]
type = A
moveType = H
physics = N

[State 5200, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5035 && !AnimTime
value = 5050

[State 5200, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5200, End]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 10
value = 5201

;Recovery
[StateDef 5201]
type = S
moveType = I
physics = N
anim = 5200
ctrl = 0
faceP2 = 1

[State 5201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5201, VelSet]
type = VelSet
trigger1 = !Time
x = -8
y = 0

[State 5201, VelMul]
type = VelMul
trigger1 = 1
x = 0.9

[State 5201, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 4,0
channel = 0

[State 5201, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 4,10
channel = 0

[State 5201, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 5200,0
channel = 1

[State 5201, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5201, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = 0, ceil(-18 * const(size.yScale))
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 5201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Air Recover
[StateDef 5210]
type = A
moveType = I
physics = N
anim = 5210
ctrl = 0

[State 5210, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.6

[State 5210, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
x = ifElse((command = "holdfwd" && command != "holdback"), 4, ifElse((command != "holdfwd" && command = "holdback"), -4, 0))
y = -7.55

[State 5210, VelSet (Reversed commands)]
type = VelSet
trigger1 = !Time
trigger1 = NumExplod(92828282) || NumExplod(92468246)
x = ifElse((command = "holdback" && command != "holdfwd"), 4, ifElse((command != "holdback" && command = "holdfwd"), -4, 0))
y = -7.55

[State 5210, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 4,1
channel = 0

[State 5210, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 4,11
channel = 0

[State 5210, Recover Sound]
type = PlaySnd
trigger1 = !Time
value  = 5200,0

[State 5210, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5210, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = 0, ceil(-66 * const(size.yScale))
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 5210, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
value = SCA
time = 1

[State 5210, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(8) >= 0
value = 1

[State 5210, Land]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y > -Vel Y
value = 52

;---------------------------------------------------------------------------
;Guard Start
[StateDef 120]
type = U
physics = U
anim = 120 + (StateType = C) + (StateType = A) * 2

[State 120, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 120, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 120, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 120, VelSet]
type = VelSet
trigger1 = !Time && StateType != A
x = 0
y = 0

[State 120, Stand to Crouching]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 120, Crouching to Stand]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 120, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 120, Change to Guard State]
type = ChangeState
trigger1 = !AnimTime || AILevel
value = 130 + (StateType = C) + (StateType = A) * 2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140


;Standing Guard
[StateDef 130]
type = S
physics = S

[State 130, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 130, Standing to Crouch]
type = ChangeState
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

[State 130, Landing Sound]
type = PlaySnd
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
value = 52,0

[State 130, Landing Dust Expod]
type = Explod
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
anim = 8102
sprpriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1


;Crouch Guarding
[StateDef 131]
type = C
physics = C

[State 131, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 131
value = 131

[State 131, Crouching to Standing]
type = ChangeState
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
value = 130

[State 131, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 131, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140


;Air Guard
[StateDef 132]
type = A
physics = N

[State 132, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 132
value = 132

[State 132, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = const(movement.yAccel)

[State 132, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (Pos Y >= 0 && Vel Y > 0)

[State 132, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 132, Jumping to Standing]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command = "holdfwd", command = "holdback"), ifElse(P2dist x < 0, command = "holdback", command = "holdfwd")))) || AILevel
value = 130

[State 132, Change to Falling]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140


;Guard End
[StateDef 140]
type = U
physics = U
ctrl = 1

[State 140, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 140 + (StateType = C) + (StateType = A) * 2

[State 140, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 140, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 140, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 140, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 140, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 140, End]
type = ChangeState
trigger1 = !AnimTime
value = (StateType = C) * 11 + (StateType = A) * 51


;Hit while Guarding (Standing)
[StateDef 150]
type = S
movetype = H
physics = N
velSet = 0,0

[State 150, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))) || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 150, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
stateType = C
physics = C

[State 150, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AIlevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S


;Knocked Back while Guarding (Standing)
[StateDef 151]
type = S
moveType = H
physics = S
anim = 150

[State 151, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 151, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 151, CtrlSet]
type = CtrlSet
trigger1 = time = GetHitVar(CtrlTime)
value = 1

[State 151, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 151, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 151, End]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1


;Hit while Guarding (Crouching)
[StateDef 152]
type = C
moveType = H
physics = N
velSet = 0,0

[State 152, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && ((!NumExplod(92828282) && !NumExplod(92468246) && command = "holddown") || ((NumExplod(92828282) || NumExplod(92468246)) && command = "holdup"))) || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 152, Standing to Crouching]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 152, Crouching to Standing]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S


;Knocked Back while Guarding (Crouching)
[StateDef 153]
type = C
moveType = H
physics = C
anim = 151

[State 153, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 153, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 153, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 153, Standing to Crouching]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 153, Crouching to Standing]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 153, End]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1


;Hit while Guarding (Jumping)
[StateDef 154]
type = A
moveType = H
physics = N
velSet = 0,0

[State 154, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, End]
type = ChangeState
trigger1 = HitShakeOver
value = 155


;Knocked Back while Guarding (Jumping)
[StateDef 155]
type = A
moveType = H
physics = N
anim = 152

[State 155, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 155, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = const(movement.yAccel)

[State 155, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 155, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (Pos Y >= 0 && Vel Y > 0)

[State 155, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, End]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))) || AILevel
value = 130

[State 155, End]
type = ChangeState
trigger1 = sysvar(0)
value = 52

;---------------------------------------------------------------------------
;Lose
[StateDef 170]
type = S
ctrl = 0
anim = 170
velSet = 0,0

[State 170, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

;---------------------------------------------------------------------------
;Draw Game
[StateDef 175]
type = S
ctrl = 0
velSet = 0,0

[State 175, ChangeState]
type = ChangeState
trigger1 = !Time
value = 170

;---------------------------------------------------------------------------
;Continue?
[StateDef 5500]
type = S
anim = 5300
velSet = 0,0
ctrl = 0

[State 5500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5500

;---------------------------------------------------------------------------
;Initialize (Part 2)
[StateDef 5901]
type = S

[State 5901, RemapPal]
type = RemapPal
trigger1 = !RoundsExisted
source = 1,1
dest = 1, var(0)

[State 5901, Intro vs Athena]
type = ChangeState
trigger1 = NumEnemy
trigger1 = RoundNo = 1 && (!(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Athena" || Enemy, Name = "Athena Asamiya" || Enemy, Name = "cvsathena"
value = 194

[State 5901, Intro vs Yuri]
type = ChangeState
trigger1 = NumEnemy
trigger1 = RoundNo = 1 && (!(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Yuri" || Enemy, Name = "Yuri Sakazaki" || Enemy, Name = "cvsyuri"
value = 196

[State 5901, Intro vs Karin / Dan]
type = ChangeState
triggerAll = NumEnemy
triggerAll = RoundNo = 1 && (!(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Karin" || Enemy, Name = "Karin Kanzuki" || Enemy, Name = "cvskarin"
trigger2 = Enemy, Name = "Dan" || Enemy, Name = "Dan Hibiki" || Enemy, Name = "cvsdan"
value = 197

[State 5901, Intro vs Shingo]
type = ChangeState
trigger1 = NumEnemy
trigger1 = RoundNo = 1 && (!(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Shingo Yabuki" && Enemy, AuthorName = "Jmorphman"
value = 198

[State 5901, Intro vs Akuma]
type = ChangeState
trigger1 = NumEnemy
trigger1 = RoundNo = 1 && (!(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Akuma" && Enemy, AuthorName = "DeathScythe"
value = ifElse(var(40), 301, 300)

[State 5901, Turns Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
value = 6900

[State 5901, Intro Decider]
type = ChangeState
trigger1 = RoundNo = 1 && !var(40)
value = 190 + (Random % 3)

[State 5901, Intro Decider (Dark)]
type = ChangeState
trigger1 = RoundNo = 1 && var(40)
value = 193

[State 5901, End]
type = ChangeState
trigger1 = 1
value = 0

;---------------------------------------------------------------------------
;Intro 1 - Pose
[StateDef 190]
type = S
physics = S
anim = 190

[State 190, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 190, 0
channel = 0

[State 190, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
;Intro 2 - Running
[StateDef 191]
type = S
physics = N
anim = 1

[State 191, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, Camera]
type = helper
trigger1 = !NumHelper(8999)
stateno = 8999
ID = 8999
name = "Camera"
postype = p1

[State 191, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 191, PosSet]
type = PosSet
trigger1 = !Time
x = 240 * facing
y = 0

[State 191, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 4
value = 191

[State 191, Step Sound]
type = PlaySnd
trigger1 = Anim = 191 && (AnimElem = 2 || AnimElem = 5)
value = 100, ifElse((AnimElem = 2), 0, 1)

[State 191, VelSet]
type = VelSet
trigger1 = Time = 4
x = -6

[State 191, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = Time = 1
value = 191, 0
channel = 0

[State 191, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = Time = 1 || Anim = 1910 && (AnimElem = 2 || AnimElem = 9)
value = 191, ifElse((AnimElem = 9), 12, ifElse((AnimElem = 2), 11, 10))
channel = 0

[State 191, ChangeAnim]
type = ChangeAnim
trigger1 = NumHelper(8999)
trigger1 = Anim = 191 && Abs(Helper(8999), RootDist X) <= 75
value = 19100

[State 191, Stopping Sound]
type = PlaySnd
trigger1 = Anim = 19100 && AnimElem = 2
value = 101,0

[State 191, Skid Dust]
type = Explod
trigger1 = Anim = 19100 && AnimElem = 2
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 191, VelAdd]
type = VelAdd
trigger1 = Anim = 19100 && AnimElemTime(0) >= 0 && AnimElemTime(7) < 0
trigger1 = Vel X < 0
x = .24

[State 191, VelSet]
type = VelSet
trigger1 = Vel X > 0
trigger2 = Anim = 19100 && AnimElem = 7
x = 0

[State 191, PosSet]
type = PosSet
trigger1 = Anim = 19100 && AnimElemTime(7) >= 0
x = Helper(8999), Pos X

[State 191, End]
type = ChangeState
trigger1 = Anim = 19100 && !AnimTime
value = 0

;---------------------------------------------------------------------------
;Intro 3 - Backpack
[StateDef 192]
type = S
physics = N
anim = 192

[State 192, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, Camera]
type = helper
trigger1 = !NumHelper(8999)
stateno = 8999
ID = 8999
name = "Camera"
postype = p1

[State 192, PosSet]
type = PosSet
trigger1 = Time = 1
x = 30 * facing

[State 192, Kei]
type = Helper
trigger1 = !NumHelper(6000)
trigger1 = Time = 1
helperType = Normal
stateNo = 6000
ID = 6000
name = "Kei"
posType = P1
pos = -23, 0
size.xScale = const(size.xscale)
size.yScale = const(size.yscale)
ownPal = 1

[State 192, Voice]
type = PlaySnd
trigger1 = Time = 10
value = 192, 0
channel = 0

[State 192, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 7 || AnimElem = 10)
value = 100, ifElse((AnimElem = 7), 0, 1)

[State 192, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = -6.15

[State 192, ChangeAnim]
type = ChangeAnim
trigger1 = NumHelper(8999)
trigger1 = AnimElemTime(12) >= 0 && Helper(8999), RootDist X > 60
value = 192
elem = 6

[State 192, ChangeAnim]
type = ChangeAnim
trigger1 = NumHelper(8999)
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(12) < 0 && Helper(8999), RootDist X <= 60
value = 192
elem = 12

[State 192, Stopping Sound]
type = PlaySnd
trigger1 = AnimElem = 13
value = 101,0

[State 192, Skid Dust]
type = Explod
trigger1 = AnimElem = 13
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 192, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(18) < 0
trigger1 = Vel X < 0
x = 0.325

[State 192, VelSet]
type = VelSet
trigger1 = Vel X > 0
trigger2 = AnimElem = 18
x = 0

[State 192, PosSet]
type = PosSet
trigger1 = AnimElemTime(18) >= 0
x = Ceil(Helper(8999), Pos X)

[State 192, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
;Intro 4 - Dark Teleport
[StateDef 193]
type = S
physics = N
anim = 0

[State 193, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, Camera]
type = helper
trigger1 = !NumHelper(8999)
stateno = 8999
ID = 8999
name = "Camera"
postype = p1

[State 193, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 193, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 193, PosSet]
type = PosSet
trigger1 = Time = 1
x = -240 * facing
y = 0

[State 193, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1
value = 1601

[State 193, VelSet]
type = VelSet
trigger1 = Time = 4
x = 8.8

[State 193, VelAdd]
type = VelAdd
trigger1 = Helper(8999), RootDist X > -180
trigger1 = Anim = 1601 && Time > 4
trigger1 = Vel X > 1
x = -.225

[State 193, Sound]
type = PlaySnd
trigger1 = Time = 4
value = 1600,0
;channel = 1

[State 193, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 1601
trigger1 = Helper(8999), RootDist X > 0
value = 193

[State 193, VelSet]
type = VelSet
trigger1 = Anim = 193
x = 0

[State 193, PosSet]
type = PosSet
trigger1 = Anim = 193
x = Ceil(Helper(8999), Pos X)

[State 193, End]
type = ChangeState
trigger1 = Anim = 193 && !AnimTime
value = 0

;---------------------------------------------------------------------------
;Intro vs Athena
[StateDef 194]
type = S
physics = S
anim = 194

[State 194, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
;Intro vs Yuri
[StateDef 196]
type = S
physics = S
anim = 196

[State 196, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 196, Voice]
type = PlaySnd
trigger1 = AnimElem = 22
value = 196, 0
channel = 0

[State 196, Voice]
type = PlaySnd
trigger1 = AnimElem = 27
value = 196, 1
channel = 0

[State 196, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
;Intro vs Karin / Dan
[StateDef 197]
type = S
physics = S
anim = 197

[State 197, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 197, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
;Intro vs Shingo
[Statedef 198]
type = S
physics = N
anim = 1
sprpriority = 1

[State 198, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 198, Camera]
type = helper
trigger1 = !NumHelper(8999)
stateno = 8999
ID = 8999
name = "Camera"
postype = p1

[State 198, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 198, PosSet]
type = PosSet
trigger1 = !Time
x = 450 * facing
y = 0

[State 198, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = Time = 54
value = 191, 0
channel = 0

[State 198, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = Time = 54
value = 191, 10
channel = 0

[State 198, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 54
value = 198

[State 198, Vel]
type = VelSet
trigger1 = Anim = 198
x = -1.25 * const(velocity.run.fwd.x)

[State 198, Step Sound]
type = PlaySnd
triggerAll = Anim = 198
trigger1 = (AnimElem = 2 || AnimElem = 5)
value = 100, ifElse((AnimElem = 2), 0, 1)

[State 198, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = Anim = 198 && Time
trigger1 = Abs(Pos X - Enemynear, Pos X) < 40
value = 5000, 1
channel = 0

[State 198, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = Anim = 198 && Time
trigger1 = Abs(Pos X - Enemynear, Pos X) < 40
value = 5000, 12
channel = 0

[State 198, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 198 && Time
trigger1 = Abs(Pos X - EnemyNear, Pos X) < 40
value = 19800

[State 198, Stopping Sound]
type = PlaySnd
trigger1 = Anim = 19800 && AnimElem = 2
value = 101,0

[State 198, Skid Dust]
type = Explod
trigger1 = Anim = 19800 && AnimElem = 2
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 198, PosFreeze]
type = PosFreeze
trigger1 = Anim = 19800 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0
value = 1

[State 198, EnvShake]
type = EnvShake
trigger1 = Anim = 19800 && AnimElem = 2
time = 16
ampl = 4
freq = 120

[State 198, HitSound]
type = PlaySnd
trigger1 = Anim = 19800 && AnimElem = 2
value = 2, 5

[State 198, HitSpark]
type = Helper
trigger1 = Anim = 19800 && AnimElem = 2
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = -15, -55
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 198, VelSet]
type = VelSet
trigger1 = Anim = 19800 && AnimElem = 6
x = (Helper(8999), RootDist X) / -21
y = -5.25

[State 198, VelAdd]
type = VelAdd
trigger1 = Anim = 19800 && AnimElemTime(6) > 0
y = 0.677

[State 198, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = Anim = 19800 && AnimElem = 6
stateType = A
physics = N

[State 198, End]
type = ChangeState
trigger1 = Pos Y - 10 > -Vel Y
value = 19801

;Landing
[Statedef 19801]
type = A
physics = N
movetype = I
anim = 19801
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 19801, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 19801, PosSet]
type = PosSet
trigger1 = !Time
trigger2 = Pos Y > -Vel Y && AnimElemTime(2) > 0
y = 0

[State 19801, VelSet]
type = VelSet
trigger1 = Pos Y > -Vel Y && AnimElemTime(2) > 0
x = 0
y = 0

[State 19801, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = (Helper(8999), RootDist X) / -6
y = -1.75

[State 19801, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(3) < 0
y = 0.677

[State 19801, Pos]
type = PosSet
trigger1 = AnimElem = 3
x = Ceil(Helper(8999), Pos X)

[State 19801, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 5100, 0

[State 19801, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 19801, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
;Intro Normal vs Akuma
[StateDef 300]
type = S
physics = S
anim = 300

[State 300, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 300, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 190, 0
channel = 0

[State 300, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 13
value = 5000, 0
channel = 0

[State 300, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 13
value = 5000, 10
channel = 0

[State 300, Palette Helper]
type = Helper
trigger1 = AnimElem = 13
helperType = Normal
stateNo = 6100
ID = 6100
name = "Palette Helper"
posType = P1
pos = 0,0
size.xScale = const(size.xscale)
size.yScale = const(size.yscale)
ownPal = 1
supermovetime = 255
pausemovetime = 255

[State 300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
;Intro Dark vs Akuma
[StateDef 301]
type = S
physics = S
anim = 301

[State 301, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 301, Palette Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 6110
ID = 6110
name = "Palette Helper"
posType = P1
pos = 0,0
size.xScale = const(size.xscale)
size.yScale = const(size.yscale)
ownPal = 1

[State 301, ChangeAnim]
type = ChangeAnim
trigger1 = P2BodyDist X < 100 && AnimElemTime(13) < 0
value = 301
elem = 13

[State 301, ChangeAnim]
type = ChangeAnim
trigger1 = Enemy, AnimElemTime(2) >= 65 && AnimElemTime(15) < 0
value = 301
elem = 15

[State 301, Lightning]
type = Helper
trigger1 = AnimElem = 19
helperType = Normal
stateNo = 6200
ID = 6200
name = "Lightning"
posType = P1
pos = 20, 0
superMoveTime = 255
ownPal = 1

[State 301, EnvShake]
type = EnvShake
trigger1 = AnimElem = 19
time = 14
ampl = 4
freq = 120

[State 301, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 15 || AnimElem = 19
value = ifElse((AnimElem = 15), 730, 3100), 1
channel = 0

[State 301, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 15 || AnimElem = 19
value = ifElse((AnimElem = 15), 730, 3100), 11
channel = 0

[State 301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
;Turns Intro
[StateDef 6900]
type = A
anim = 42
velSet = 0,0
ctrl = 0

[State 6900, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6900, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6900, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helperType = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6900, PosSet]
type = PosSet
trigger1 = !Time
x = (-320 + abs(pos x)) * Facing

[State 6900, VelSet]
type = VelSet
trigger1 = !Time
x = (Helper(8999), RootDist x) / -40.0
y = -10.25

[State 6900, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 6900, End]
type = ChangeState
trigger1 = Time
trigger1 = Pos Y > -Vel Y
value = 6901


;Landing
[StateDef 6901]
type = S
physics = S
anim = 6901
velSet = 0,0

[State 6901, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6901, PosSet]
type = PosSet
trigger1 = !Time && NumHelper(8999)
x = ceil(Helper(8999), pos x)

[State 6901, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 6901, Landing Dust Expod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 6901, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 190,0
channel = 0

[State 6901, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
;Win Pose Decider
[StateDef 180]
type = S

[State 180, Victory Quote]
type = VictoryQuote
trigger1 = 1
value = (Random % 46)

[State 180, Victory Quote vs. Abel]
type = VictoryQuote
trigger1 = Enemy, Name = "Abel"
value = 46

[State 180, Victory Quote vs. Adon]
type = VictoryQuote
trigger1 = Enemy, Name = "Adon" || Enemy, Name = "cvsadon"
value = 47

[State 180, Victory Quote vs. Akira]
type = VictoryQuote
trigger1 = Enemy, Name = "Akira" || Enemy, Name = "Akira Kazama"
value = 48

[State 180, Victory Quote vs. Akuma]
type = VictoryQuote
trigger1 = Enemy, Name = "Akuma" || Enemy, Name = "Gouki"
trigger2 = Enemy, Name = "cvsgouki" || Enemy, Name = "Pocket Shin Gouki"
trigger3 = Enemy, Name = "ShinAkuma" || Enemy, Name = "Shin Akuma"
trigger4 = Enemy, Name = "ShinGouki" || Enemy, Name = "Shin Gouki"
value = 49

[State 180, Victory Quote vs. Alex]
type = VictoryQuote
trigger1 = Enemy, Name = "Alex" || Enemy, Name = "cvsalex"
value = 50

[State 180, Victory Quote vs. Balrog]
type = VictoryQuote
trigger1 = Enemy, Name = "Balrog" || Enemy, Name = "cvsbison"
value = 51

[State 180, Victory Quote vs. Birdie]
type = VictoryQuote
trigger1 = Enemy, Name = "Birdie"
value = 52

[State 180, Victory Quote vs. Blanka]
type = VictoryQuote
trigger1 = Enemy, Name = "Blanka" || Enemy, Name = "cvsblanka"
value = 53

[State 180, Victory Quote vs. Cammy (Doll)]
type = VictoryQuote
trigger1 = Enemy, Name = "Cammy" && Enemy, AuthorName = "Phantom.of.the.Server"
trigger2 = Enemy, Name = "cvscammy"
value = 54

[State 180, Victory Quote vs. Cammy (Delta Red)]
type = VictoryQuote
trigger1 = Enemy, Name = "Cammy" || Enemy, Name = "Cammy White"
trigger2 = Enemy, Name = "SF2Cammy"
value = 55

[State 180, Victory Quote vs. Charlie]
type = VictoryQuote
trigger1 = Enemy, Name = "Charlie" || Enemy, Name = "Nash"
trigger2 = Enemy, Name = "Charlie Nash"
value = 56

[State 180, Victory Quote vs. Chun-Li]
type = VictoryQuote
trigger1 = Enemy, Name = "Chun-Li" || Enemy, Name = "cvschunli"
trigger2 = Enemy, Name = "Chun Li" || Enemy, Name = "ChunLi"
value = 57

[State 180, Victory Quote vs. Cody]
type = VictoryQuote
trigger1 = Enemy, Name = "Cody"
value = 58

[State 180, Victory Quote vs. C. Viper]
type = VictoryQuote
trigger1 = Enemy, Name = "C. Viper" || Enemy, Name = "Crimson Viper"
trigger2 = Enemy, Name = "C Viper"
value = 59

[State 180, Victory Quote vs. Dan]
type = VictoryQuote
trigger1 = Enemy, Name = "Dan" || Enemy, Name = "cvsdan"
trigger2 = Enemy, Name = "Dan Hibiki"
value = 60

[State 180, Victory Quote vs. Decapre]
type = VictoryQuote
trigger1 = Enemy, Name = "Decapre" || Enemy, Name = "cvsdecapre"
value = 61

[State 180, Victory Quote vs. Dee Jay]
type = VictoryQuote
trigger1 = Enemy, Name = "Dee Jay" || Enemy, Name = "DeeJay"
value = 62

[State 180, Victory Quote vs. Dhalsim]
type = VictoryQuote
trigger1 = Enemy, Name = "Dhalsim" || Enemy, Name = "cvsdhalsim"
trigger2 = Enemy, Name = "RajaaDhalsim"
value = 63

[State 180, Victory Quote vs. Dudley]
type = VictoryQuote
trigger1 = Enemy, Name = "Dudley"
value = 64

[State 180, Victory Quote vs. E. Honda]
type = VictoryQuote
trigger1 = Enemy, Name = "Honda" || Enemy, Name = "E. Honda"
trigger2 = Enemy, Name = "E Honda" || Enemy, Name = "E.Honda"
trigger3 = Enemy, Name = "cvshonda"
value = 65

[State 180, Victory Quote vs. Eagle]
type = VictoryQuote
trigger1 = Enemy, Name = "Eagle" || Enemy, Name = "cvseagle"
value = 66

[State 180, Victory Quote vs. Elena]
type = VictoryQuote
trigger1 = Enemy, Name = "Elena"
value = 67

[State 180, Victory Quote vs. Evil Ryu]
type = VictoryQuote
trigger1 = Enemy, Name = "Evil Ryu" || Enemy, Name = "E. Ryu"
trigger2 = Enemy, Name = "Evil Ryu" || (Enemy, Name = "cvsryu" && PalNo = [7,12]) || Enemy, Name = "cvsryu_ex"
trigger3 = Enemy, Name = "Ryu" && Enemy, AuthorName = "Phantom.of.the.Server" && Enemy, var(1) = 2
value = 68

[State 180, Victory Quote vs. Fei Long]
type = VictoryQuote
trigger1 = Enemy, Name = "Fei Long" || Enemy, Name = "Fei-Long"
trigger2 = Enemy, Name = "FeiLong" || Enemy, Name = "cvsfeilong"
value = 69

[State 180, Victory Quote vs. Gen]
type = VictoryQuote
trigger1 = Enemy, Name = "Gen"
value = 70

[State 180, Victory Quote vs. Gill]
type = VictoryQuote
trigger1 = Enemy, Name = "Gill"
value = 71

[State 180, Victory Quote vs. Gouken]
type = VictoryQuote
trigger1 = Enemy, Name = "Gouken"
value = 72

[State 180, Victory Quote vs. Guile]
type = VictoryQuote
trigger1 = Enemy, Name = "Guile" || Enemy, Name = "cvsguile"
value = 73

[State 180, Victory Quote vs. Guy]
type = VictoryQuote
trigger1 = Enemy, Name = "Guy" || Enemy, Name = "cvsguy"
value = 74

[State 180, Victory Quote vs. Hugo]
type = VictoryQuote
trigger1 = Enemy, Name = "Hugo"
value = 75

[State 180, Victory Quote vs. Ibuki]
type = VictoryQuote
trigger1 = Enemy, Name = "Ibuki"
value = 76

[State 180, Victory Quote vs. Ingrid]
type = VictoryQuote
trigger1 = Enemy, Name = "Ingrid" || Enemy, Name = "cvsingrid"
value = 77

[State 180, Victory Quote vs. Juri]
type = VictoryQuote
trigger1 = Enemy, Name = "Juri"
value = 78

[State 180, Victory Quote vs. Karin]
type = VictoryQuote
trigger1 = Enemy, Name = "Karin" || Enemy, Name = "Karin Kanzuki"
value = 79

[State 180, Victory Quote vs. Ken]
type = VictoryQuote
trigger1 = Enemy, Name = "Ken" || Enemy, Name = "cvsken"
trigger2 = Enemy, Name = "Ken Masters"
value = 80

[State 180, Victory Quote vs. M. Bison]
type = VictoryQuote
trigger1 = Enemy, Name = "M. Bison" || Enemy, Name = "cvsvega"
trigger2 = Enemy, Name = "cvsvega_normal" || Enemy, Name = "cvsvega_ex"
trigger3 = Enemy, Name = "Vega" && (Enemy, AuthorName = "Phantom.of.the.Server" || Enemy, AuthorName = "Froz")
trigger4 = Enemy, Name = "M.Bison" || Enemy, Name = "Bison"
value = 81

[State 180, Victory Quote vs. Maki]
type = VictoryQuote
trigger1 = Enemy, Name = "Maki" || Enemy, Name = "cvsmaki"
value = 82

[State 180, Victory Quote vs. Makoto]
type = VictoryQuote
trigger1 = Enemy, Name = "Makoto"
value = 83

[State 180, Victory Quote vs. Poison]
type = VictoryQuote
trigger1 = Enemy, Name = "Poison"
value = 84

[State 180, Victory Quote vs. R. Mika]
type = VictoryQuote
trigger1 = Enemy, Name = "R. Mika" || Enemy, Name = "R.Mika"
trigger2 = Enemy, Name = "Rainbow Mika" || Enemy, Name = "R Mika"
trigger3 = Enemy, Name = "cvsmika"
value = 85

[State 180, Victory Quote vs. Rolento]
type = VictoryQuote
trigger1 = Enemy, Name = "Rolento" || Enemy, Name = "cvsrolento"
value = 86

[State 180, Victory Quote vs. Rose]
type = VictoryQuote
trigger1 = Enemy, Name = "Rose"
value = 87

[State 180, Victory Quote vs. Ryu]
type = VictoryQuote
trigger1 = Enemy, Name = "Ryu" && !(Enemy, AuthorName = "Phantom.of.the.Server")
trigger2 = (Enemy, Name = "cvsryu" && PalNo = [1,6]) || Enemy, Name = "cvsryu_normal"
trigger3 = Enemy, Name = "Ryu" && Enemy, AuthorName = "Phantom.of.the.Server" && Enemy, var(1) != 2
trigger4 = Enemy, Name = "Ryu Hoshi"
value = 88 + (Random % 2)

[State 180, Victory Quote vs. Sagat]
type = VictoryQuote
trigger1 = Enemy, Name = "Sagat" || Enemy, Name = "cvssagat"
value = 90

[State 180, Victory Quote vs. Sakura]
type = VictoryQuote
trigger1 = Enemy, Name = "Sakura" || Enemy, Name = "cvssakura"
trigger2 = Enemy, Name = "Sakura Kasugano"
value = 91

[State 180, Victory Quote vs. Seth]
type = VictoryQuote
trigger1 = Enemy, Name = "Seth"
value = 92

[State 180, Victory Quote vs. Sodom]
type = VictoryQuote
trigger1 = Enemy, Name = "Sodom"
value = 93

[State 180, Victory Quote vs. T. Hawk]
type = VictoryQuote
trigger1 = Enemy, Name = "T. Hawk" || Enemy, Name = "T.Hawk"
trigger2 = Enemy, Name = "T Hawk"
value = 94

[State 180, Victory Quote vs. Urien]
type = VictoryQuote
trigger1 = Enemy, Name = "Urien"
value = 95

[State 180, Victory Quote vs. Vega]
type = VictoryQuote
triggerAll = Enemy, AuthorName != "Phantom.of.the.Server" && Enemy, AuthorName != "Froz"
trigger1 = Enemy, Name = "Vega" || Enemy, Name = "cvsbalrog"
value = 96

[State 180, Victory Quote vs. Yang]
type = VictoryQuote
trigger1 = Enemy, Name = "Yang"
value = 97

[State 180, Victory Quote vs. Yun]
type = VictoryQuote
trigger1 = Enemy, Name = "Yun" || Enemy, Name = "cvsyun"
value = 98

[State 180, Victory Quote vs. Zangief]
type = VictoryQuote
trigger1 = Enemy, Name = "Zangief" || Enemy, Name = "cvszangief"
value = 99

[State 180, Win by SGS / Haru Ranman / Midare Zakura]
type = ChangeState
trigger1 = PrevStateNo = 187
trigger2 = PrevStateNo = 184
value = PrevStateNo

[State 180, Win Decider]
type = ChangeState
trigger1 = 1
value = 181 + (Random % 5)

;---------------------------------------------------------------------------
;Win 1 - Rise Arm
[StateDef 181]
type = S
physics = S
anim = 181
ctrl = 0

[State 181, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 181, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 182, 0
channel = 0

[State 181, Petals]
type = Helper
trigger1 = !Time && Random < 500
trigger1 = !NumHelper(6090)
helperType = Normal
stateNo = 6090
ID = 6090
name = "Sakura Petals"
posType = P1
pos = 0, 0
size.xScale = 1
size.yScale = 1
ownPal = 1

;---------------------------------------------------------------------------
;Win 2 - Dance
[StateDef 182]
type = S
physics = S
ctrl = 0

[State 182, ChangeState] ;Change to Kei Falling
type = ChangeState
trigger1 = !Time && Random < 333
value = 186

[State 182, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 182, Kei] ;Kei may appear to dance with Sakura, or not.
type = Helper
trigger1 = !NumHelper(6000)
trigger1 = !Time && Random < 500
helperType = Normal
stateNo = 6000
ID = 6000
name = "Kei"
posType = Back
pos = -100
size.xScale = const(size.xscale)
size.yScale = const(size.yscale)
ownPal = 1

[State 182, ChangeAnim]
type = ChangeAnim
trigger1 = !NumHelper(6000) && !Time
trigger2 = NumHelper(6000)
trigger2 = FrontEdgeDist >= 75 && Helper(6000), RootDist X <= -60
trigger3 = NumHelper(6000)
trigger3 = FrontEdgeDist < 75 && Helper(6000), RootDist X <= 70
value = 182
persistent = 0

;---------------------------------------------------------------------------
;Win 3 - Shoe
[StateDef 183]
type = S
physics = S
anim = ifElse(Random < 500, 183, 18300)
ctrl = 0

[State 183, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 183, Voice CvS]
type = PlaySnd
triggerAll = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
trigger3 = AnimElem = 19
value = ifElse((AnimElem = 19), 3100, 4), ifElse((AnimElem = 2), 0, 1)
channel = 0

[State 183, Voice SFA]
type = PlaySnd
triggerAll = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
trigger3 = AnimElem = 19
value = ifElse((AnimElem = 19), 3100, 4), ifElse((AnimElem = 2), 10, 11)
channel = 0

[State 183, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 8
value = 1, ifElse((AnimElem = 2), 3, 5)
channel = 1

[State 183, Shoe]
type = Helper
trigger1 = Anim = 18300 && AnimElem = 10
helperType = Normal
stateNo = 6091
ID = 6091
name = "Shoe"
posType = P1
pos = ceil(72 * const(size.xscale)), ceil(-100 * const(size.yscale))
size.xScale = const(size.xscale)
size.yScale = const(size.yscale)
ownPal = 1

;---------------------------------------------------------------------------
;Win 4 - Hand on Mouth
[StateDef 184]
type = S
physics = S

[State 184, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim != 184
value = 184

[State 184, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 184, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 12
value = 181, 0
channel = 0

[State 184, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 12
value = 181, 10
channel = 0

[State 184, Win]
type = ChangeState
trigger1 = Time >= 120 && RoundState = 3
value = 180
ctrl = 1

;---------------------------------------------------------------------------
;Win 5 - Wind
[StateDef 185]
type = S
physics = S
anim = 185
ctrl = 0

[State 185, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

;---------------------------------------------------------------------------
;Win 6 - Kei Fall
[StateDef 186]
type = S
physics = S
anim = 186
ctrl = 0

[State 186, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 186, ChangeAnim]
type = ChangeAnim
trigger1 = NumHelper(6000)
trigger1 = Helper(6000), Anim = 6003 && Helper(6000), AnimElemTime(7) >= 0
value = 186
elem = 5
persistent = 0

[State 186, Kei]
type = Helper
trigger1 = !NumHelper(6000)
trigger1 = !Time
helperType = Normal
stateNo = 6000
ID = 6000
name = "Kei"
posType = Back
pos = -100
size.xScale = const(size.xscale)
size.yScale = const(size.yscale)
ownPal = 1

[State 186, Turn]
type = Turn
trigger1 = !Time
trigger2 = NumHelper(6000)
trigger2 = Helper(6000), RootDist X < 100 && AnimElem = 5

;---------------------------------------------------------------------------
;Win by Shun Goku Satsu
[StateDef 187]
type = S

[State 187, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1

[State 187, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && PrevStateno = 3502
value = 187

[State 187, Super Finish SGS]
type = helper
triggerall = !NumHelper(8610)
trigger1 = !Time && PrevStateNo = 3502
stateno = 8610
ID = 8610
postype = Left
ownpal = 1
persistent = 0

[State 187, Win]
type = ChangeState
trigger1 = Time >= 120 && RoundState = 3
value = 180
ctrl = 1

;---------------------------------------------------------------------------
;Taunt
[StateDef 195]
type = S
moveType = A
physics = S
anim = 195
velSet  = 0,0
sprPriority = 1
ctrl = 0

[State 195, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2
value = 195,0
channel = 0

[State 195, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2
value = 195,10
channel = 0

[State 195, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.09, -4.18), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.09, -4.18)
guard.cornerPush.velOff = 0
air.velocity = -5.58, -5.37
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 28), var(36):= -78
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48

[State 195, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
moveType = I

[State 195, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Cheap K.O
[StateDef 5950]
type = S
moveType = H
physics = S
anim = 5950
velSet = 0,0

[State 5950, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5950, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5950, Assert: NoKOsnd]
type = AssertSpecial
trigger1 = 1
flag = NoKOsnd

[State 5950, StopSnd]
type = StopSnd
trigger1 = !Time && !Alive
channel = 0

[State 5950, KO Sound CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2 && !Alive
value = 5950, 0

[State 5950, KO Sound SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2 && !Alive
value = 5950, 10

[State 5950, Hitting the Floor Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = F7,0

[State 5950, Hitting the Floor Explod]
type = Explod
trigger1 = AnimElem = 3
anim = F60
posType = P1
pos = 0,0
sprPriority = -3

[State 5950, End]
type = ChangeState
trigger1= !AnimTime
value = ifElse(Alive, 5110, 5150)

;---------------------------------------------------------------------------
;Air Hit Transition
[Statedef 5035]
type = A
movetype = H
physics = N

[State 5035, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5035)
trigger1 = Anim = [5000,5029]
value = 5035

[State 5035, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5035, Recover]
type = ChangeState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = Vel Y > 0 && Pos Y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5040

[State 5035, Fall]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = Vel Y > 0 && Pos Y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5050

;---------------------------------------------------------------------------
; -2 States
;---------------------------------------------------------------------------

[StateDef -2]

[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact = 1 && var(30) < 0
var(30) = HitPauseTime
ignoreHitPause = 1

[State -2, Hit Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && var(31) >= 0
value = 2, var(31)
channel = 2
ignoreHitPause = 1

[State -2, Guard Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveGuarded = 1 && var(32) >= 0
value = 3, var(32)
channel = 2
ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Counter FX]
type = Helper
trigger1 = MoveHit = 1 && var(30) = HitPauseTime
trigger1 = NumEnemy && var(9)
trigger1 = !(HitDefAttr = SCA, AT) && (EnemyNear, MoveReversed != 1)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -2, Counter Flag]
type = VarSet
trigger1 = NumEnemy
var(9) = (EnemyNear, MoveType = A)
ignoreHitPause = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = 1
var(30) = -1

[State -2, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 30
last = 36
value = -1
ignoreHitPause = 1

[State -2, P2 Facing]
type = TargetFacing
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver) && !(Target, HitFall) && (Target, Time <= 1)
value = ifElse(P2Dist x >= 0, -1, 1)
ignoreHitPause = 1

[State -2, P2 Safe Fall]
type = TargetState
trigger1 = NumTarget = 1
trigger1 = Target, command = "recovery"
trigger1 = Target, Pos Y >= -48 && Target, Vel Y > 0
trigger1 = Target, Alive && Target, HitFall && Target, GetHitVar(fall.recover)
trigger1 = Target, StateNo = 5030 || Target, StateNo = 5035 || Target, StateNo = 5050 || Target, StateNo = 5071
value = 5205
ignoreHitPause = 1

[State -2, Assert: UnGuardable]
type = AssertSpecial
trigger1 = var(17) > 0
trigger1 = var(17) := (var(17) - 1)
flag = UnGuardable
ignoreHitPause = 1

[State -2, Hit Count]
type = VarAdd
trigger1 = MoveHit = 1
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -2, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && var(13)
trigger1 = (EnemyNear, MoveType != H) && (EnemyNear, StateNo != 5300)
var(13) = 0
ignoreHitPause = 1

[State -2, Juggle Count]
type = VarAdd
trigger1 = MoveHit = 1
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State -2, Juggle Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(15)
trigger1 = (Enemy, StateType != A) && (Enemy, StateNo != [5100,5109]) && (Enemy, Time >= 1)
trigger2 = (Enemy, MoveType != H) || (Enemy, StateNo = [120,155]) || (Enemy, Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(15)
trigger1 = (EnemyNear(0), StateType != A) && (EnemyNear(0), Time >= 1)
trigger2 = (EnemyNear(0), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), StateType != A) && (EnemyNear(0), Time >= 1)
trigger4 = (EnemyNear(1), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Free Juggling]
type = VarSet
trigger1 = RoundState != 2
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Flag]
type = VarSet
trigger1 = NumEnemy && !var(16)
trigger1 = (EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl)
var(16) = 1
ignorehitpause = 1

[State -2, Juggle Flag Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(16)
trigger1 = (Enemy, MoveType != H) && (Enemy, StateNo != 5040)
trigger2 = !(Enemy, HitShakeOver) || (Enemy, StateType = L) || (Enemy, Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Juggle Flag Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(16)
trigger1 = (EnemyNear(0), MoveType != H) && (EnemyNear(0), StateNo != 5040)
trigger2 = !(EnemyNear(0), HitShakeOver) || (EnemyNear(0), StateType = L) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), MoveType != H) && (EnemyNear(1), StateNo != 5040)
trigger4 = !(EnemyNear(1), HitShakeOver) || (EnemyNear(1), StateType = L) || (EnemyNear(1), Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Custom Combo End]
type = VarSet
trigger1 = var(20) < 0
trigger2 = MoveType = H
trigger3 = RoundState != 2
trigger4 = (StateNo = [3000,4999])
var(20) = 0
ignoreHitPause=1

[State -2, Custom Combo Time]
type = VarAdd
trigger1 = var(20) > 0
var(20) = -1
ignoreHitPause = 1

[State -2, Custom Combo Asserts]
type = AssertSpecial
trigger1 = var(20) > 0
flag = NoStandGuard
flag2 = NoCrouchGuard
flag3 = NoAirGuard
ignoreHitPause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) > 60
time = 2
add = 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32)
ignoreHitPause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) = [1,60]
time = 2
add = 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64)
ignoreHitPause = 1

[State -2, Throws Allowed]
type = VarSet
trigger1 = EnemyNear, MoveType != H
trigger1 = EnemyNear, StateNo != 140
trigger1 = (EnemyNear, ctrl && EnemyNear, Time >= 1) || (EnemyNear, Time >= 8)
trigger2 = EnemyNear, MoveType = A
trigger3 = (EnemyNear, StateNo != [0,52]) && (EnemyNear, StateNo != [120,155]) && (EnemyNear, StateNo != [5000,5120])
trigger4 = var(20) || var(21) || var(22)
var(38) = 0

[State -2, Throws Disallowed]
type = VarSet
triggerAll = NumEnemy
trigger1 = EnemyNear, StateNo = [150,155]
trigger2 = (EnemyNear, StateNo = 51 || EnemyNear, StateNo = 140) && (EnemyNear, PrevStateNo = [150, 155])
trigger3 = EnemyNear, MoveType = H && EnemyNear, StateType != A && !var(20) && !var(21) && !var(22)
trigger4 = (EnemyNear, StateNo = [5020,5040]) && EnemyNear, HitFall = 0
trigger5 = EnemyNear, StateNo = 40 && EnemyNear, PrevStateNo != 52 && (EnemyNear, Anim != [0, 29])
var(38) = 1
ignoreHitPause = 1

[State -2, Dampener]
type = VarSet
trigger1 = 1
fvar(10) = ifElse(var(13) < 6, 24, ifElse(var(13) >= 23, 1, 29 - var(13))) / 24.0
ignoreHitPause = 1

[State -2, Dampener - Custom Combo]
type = VarSet
trigger1 = var(20)
fvar(10) = 0.72 * (10 - ifElse(var(13) >= 10, 10, var(13))) / 10.0
ignoreHitPause = 1

[State -2, Dampener - Custom Combo Limiter]
type = VarSet
trigger1 = var(20)
trigger1 = StateNo = 250
fvar(10) = ifElse(var(13), 0, 0.72)
ignoreHitPause = 1

[State -2, Dampener - Supers]
type = VarSet
trigger1 = (StateNo = [3000,4999])
fvar(10) = ifElse(var(22), 0.6, ifElse(var(21), 0.8, 1.0))
ignoreHitPause = 1

[State -2, Dampener - Supers (Wall Bounce)]
type = VarSet
trigger1 = (StateNo = [3000, 4999])
trigger1 = var(11)
fvar(10) = ifElse(var(22), 0.5, ifElse(var(21), 0.6, 0.7))
ignoreHitPause = 1

[State -2, Dampener - Shoryuken (Dark)]
type = VarSet
trigger1 = StateNo = 1150
trigger1 = var(15) > 2
fvar(10) = ifElse(var(13) > 16, 1, 16 - var(13)) / 16.0
ignoreHitPause = 1

[State -2, Dampener Limit]
type = VarSet
trigger1 = fvar(10) < 0
fvar(10) = 0
ignoreHitPause = 1

[State -2, Root Dampener]
type = VarSet
trigger1 = 1
fvar(11) = fvar(10) * ifElse(var(9), 1.2, 1)
ignoreHitPause = 1

[State -2, Defense Levels]
type = LifeAdd
triggerall = !AILevel
triggerall = var(40)
trigger1 = GetHitVar(HitCount) = 1 && GetHitVar(Damage)
trigger1 = StateNo != [760,762]
value = -ceil(0.1 * GetHitVar(Damage))
kill = 0
ignoreHitPause = 1

[State -2, Defense Levels]
type = DefenceMulSet
triggerall = !AILevel
trigger1 = var(40)
value = 1.1 * (const(data.fall.defence_mul) ** GetHitVar(FallCount))
ignoreHitPause = 1

[State -2, Max Mode End]
type = VarSet
trigger1 = var(53) < 0
trigger2 = RoundState != 2
trigger3 = !Alive
trigger4 = (StateNo = [3000,4999])
var(53) = 0
ignoreHitPause = 1

[State -2, Max Mode Time]
type = VarAdd
trigger1 = var(53) > 0
ignorehitpause = 1
var(53) = -1

[State -2, Max Mode PowerSet]
type = PowerSet
trigger1 = var(53) > 0
ignorehitpause = 1
value = var(24)

[State -2, Max Mode PalFX]
type = PalFX
triggerall = var(53) > 0
trigger1 = !(GameTime % 2)
time = 1
add = 60,60,60
ignorehitpause = 1

[State -2, Max Mode Atk Up]
type = AttackMulSet
trigger1 = var(53) > 0
value = 1.10

[State -2, Max Mode Atk Reset]
type = AttackMulSet
trigger1 = var(53) <= 0
value = 1

[State -2, Max Mode Def Up (New)] ;Special thanks to Jesuszilla
type = LifeAdd
triggerall = Alive && MoveType = H
triggerall = var(53) ;Max Mode 
trigger1 = (FVar(8)-life)>0
value = ifElse((FVar(8)-life)<life,floor((FVar(8)-life)*0.125),0)

[State -2, Life Holder] ;Special thanks to Jesuszilla
type = VarSet
trigger1 = 1
fvar(8) = Life
ignorehitpause = 1

[State -2, Voice Position]
type = SndPan
trigger1 = 1
channel = 0
pan = 0
ignoreHitPause = 1

[State -2, KO Sound Variable]
type = VarSet
triggerAll = StateNo != 5950
trigger1 = Alive && var(41) > 0
trigger2 = !Alive && var(41) < 2
var(41) = ifElse(Alive, 0, var(41) + 1)
ignoreHitPause = 1

[State -2, KO Sound CvS]
type = PlaySnd
triggerAll = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
triggerAll = PrevStateNo != 5950
trigger1 = !Alive && var(41) = 1
trigger1 = var(41) := 2
value = 11, 1
;channel = 0

[State -2, KO Sound SFA]
type = PlaySnd
triggerAll = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
triggerAll = PrevStateNo != 5950
trigger1 = !Alive && var(41) = 1
trigger1 = var(41) := 2
value = 11, 11
;channel = 0

[State -2, Wall Bounce Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(11) = 0
ignoreHitPause = 1

[State -2, EXPLODsive Buffering Helper]
type = Helper
trigger1 = !NumHelper(90000005)
helpertype = Normal
stateNo = 90000005
ID = 90000005
name = "EXPLODsive Buffering helper"
posType = P1
facing = ifElse(Facing = 1, 1, -1)
keyCtrl = 1
ignoreHitPause = 1

[State -2, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "AI = %d Attack = %f Hits = %d Juggle = %d"
params = AILevel, fvar(11), var(13), var(15)
ignoreHitPause = 1

[State -2, Debug]
type = AppendToClipboard
trigger1 = 1
text = "\nSakura Kasugano by DeathScythe"
ignoreHitPause = 1

;---------------------------------------------------------------------------
; -3 States
;---------------------------------------------------------------------------

[StateDef -3]

[State -3, Pal Fix for Intro]
type = RemapPal
trigger1 = NumHelper(6100)
trigger2 = NumHelper(6110)
source = 1,1
dest = 1, var(0)

[State -3, GameTime]
type = VarSet
trigger1 = 1
var(58) = GameTime
ignoreHitPause = 1

[State -3, ProjContact Reset]
type = VarSet
triggerAll = var(18)
trigger1 = StateNo != 1000 && StateNo != 1030
trigger1 = StateNo != 1050 && StateNo != 1080
trigger1 = StateNo != 1500
trigger1 = StateNo != 3000 && StateNo != 3050
trigger1 = StateNo != 3300 && StateNo != 3350
trigger2 = StateNo = 1000 && AnimElemTime(9) < 0
trigger3 = StateNo = 1030 && AnimElemTime(5) < 0
trigger4 = StateNo = 1050 && AnimElemTime(9) < 0
trigger5 = StateNo = 1080 && AnimElemTime(5) < 0
trigger6 = StateNo = 1500 && AnimElemTime(3) < 0
trigger7 = StateNo = 3000 || StateNo = 3050
trigger7 = Anim = 3001 && AnimElemTime(2) < 0
trigger8 = StateNo = 3300 || StateNo = 3350
trigger8 = Anim = 3301 && AnimElemTime(2) < 0
var(18) = 0

[State -3, Projectile Flag Off]
type = VarSet
trigger1 = 1
var(39) = 0
ignoreHitPause = 1

[State -3, Projectile Flag On]
type = VarSet
triggerAll = var(20) <= 0
trigger1 = NumHelper(1005)
trigger1 = Helper(1005), StateNo = 1005
trigger2 = NumHelper(1035)
trigger2 = Helper(1035), StateNo = 1035
trigger3 = NumHelper(1055)
trigger3 = Helper(1055), StateNo = 1055
trigger4 = NumHelper(1085)
trigger4 = Helper(1085), StateNo = 1085
trigger5 = NumHelper(1505)
trigger5 = Helper(1505), StateNo = 1505
trigger6 = NumHelper(3005)
trigger6 = Helper(3005), StateNo = 3005
trigger7 = NumHelper(3055)
trigger7 = Helper(3055), StateNo = 3055
trigger8 = NumHelper(3305)
trigger8 = Helper(3305), StateNo = 3305
trigger9 = NumHelper(3355)
trigger9 = Helper(3355), StateNo = 3355
var(39) = 1
ignoreHitPause = 1

[State -3, Chain Combo Reset]
type = VarSet
trigger1 = 1
var(4) = 0
ignoreHitPause = 1

[State -3, Chain Combo Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200,699]) && MoveContact
trigger2 = var(20) && (StateNo = [1000,2999]) && StateType != A && (MoveContact || var(18))
var(4) = 1
ignoreHitPause = 1

[State -3, Command Cancel Reset]
type = VarSet
trigger1 = 1
var(5) = 0
ignoreHitPause = 1

[State -3, Cancel Reset]
type = VarSet
trigger1 = 1
var(6) = 0
ignoreHitPause = 1

[State -3, Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200,699])
trigger2 = var(20) && (StateNo = [1000,2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200,699]) && Time <= 2
trigger4 = StateNo = 200 && MoveContact
trigger5 = StateNo = 211 && MoveContact && AnimElemTime(4) < 0
trigger6 = StateNo = 221 && MoveContact && AnimElemTime(4) < 0
trigger7 = StateNo = 230 && MoveContact
trigger8 = StateNo = 240 && MoveContact && AnimElemTime(5) < 0
trigger9 = StateNo = 251 && MoveContact && AnimElemTime(4) < 0
trigger10 = StateNo = 400 && MoveContact
trigger11 = StateNo = 410 && MoveContact && AnimElemTime(5) < 0
trigger12 = StateNo = 420 && MoveContact && AnimElemTime(3) < 0
trigger13 = StateNo = 430 && MoveContact
trigger14 = StateNo = 440 && MoveContact && AnimElemTime(3) < 0
trigger15 = StateNo = 450 && MoveContact && AnimElemTime(4) < 0
var(6) = 1
ignoreHitPause = 1

[State -3, Super Cancel Reset]
type = VarSet
trigger1 = 1
var(7) = 0
ignoreHitPause = 1

[State -3, Super Cancel Flag Reset]
type = VarSet
trigger1 = var(21)
trigger1 = (StateNo != [3000,4999]) || MoveType = H
var(21) = 0
ignoreHitPause = 1

[State -3, Super Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200,699])
trigger2 = var(20) && (StateNo = [1000,2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200,699]) && Time <= 2
trigger4 = StateNo = 200
trigger5 = StateNo = 210 && (AnimElemTime(4) < 0 || (MoveContact = [1,8]))
trigger6 = StateNo = 211 && (AnimElemTime(4) < 0 || (MoveContact = [1,8]))
trigger7 = StateNo = 220 && (AnimElemTime(6) < 0 || (MoveContact = [1,8]))
trigger8 = StateNo = 221 && (AnimElemTime(6) < 0 || (MoveContact = [1,8]))
trigger9 = StateNo = 230
trigger10 = StateNo = 240 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger11 = StateNo = 250 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger12 = StateNo = 251 && (AnimElemTime(4) < 0 || (MoveContact = [1,8]))
trigger13 = StateNo = 400
trigger14 = StateNo = 410 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger15 = StateNo = 420 && (AnimElemTime(6) < 0 || (MoveContact = [1,8]))
trigger16 = StateNo = 430
trigger17 = StateNo = 440 && (AnimElemTime(3) < 0 || (MoveContact = [1,8]))
trigger18 = StateNo = 450 && (AnimElemTime(4) < 0 || (MoveContact = [1,8]))
trigger19 = StateNo = 1000 && ((AnimElemTime(9) = [1,8]) || var(18))
trigger20 = StateNo = 1030 && ((AnimElemTime(5) = [1,8]) || var(18))
trigger21 = StateNo = 1050 && ((AnimElemTime(9) = [1,8]) || var(18))
trigger22 = StateNo = 1080 && ((AnimElemTime(5) = [1,8]) || var(18))
trigger23 = StateNo = 1100 && AnimElemTime(6) < 0 && MoveContact
trigger24 = StateNo = 1100 && var(10) = 2 && AnimElemTime(8) < 0 && MoveContact
trigger25 = StateNo = 1130 && AnimElemTime(16) < 0 && MoveContact
trigger26 = StateNo = 1150 && AnimElemTime(13 + (var(10)*2)) < 0 && MoveContact
trigger27 = (StateNo = [1200,1299]) && MoveContact
trigger28 = StateNo = 1300 && (MoveContact = [1,8])
trigger29 = StateNo = 1601
var(7) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = 1
var(8) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = StateNo = 3000 && var(18)
trigger2 = StateNo = 3100 && AnimElemTime(4) >= 0 && AnimElemTime(16) < 0 && MoveContact
trigger3 = StateNo = 3200 && AnimElemTime(7) >= 0 && MoveContact
trigger4 = StateNo = 3300 && var(18)
trigger5 = StateNo = 4000 && AnimElemTime(4) >= 0
var(8) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Flag Reset]
type = VarSet
trigger1 = var(22)
trigger1 = (StateNo != [3000,4999]) || MoveType = H
var(22) = 0
ignoreHitPause = 1

[State -3, Parry Detection]
type = Helper
triggerAll = RoundState = 2 && !NumHelper(765) && !var(20)
triggerAll = (MoveType = I && ctrl) || (StateNo = [760, 762]) || StateNo = 5120
triggerAll = (command != "rlsfwd" && command != "rlsback" && command != "rlsup" && command != "rlsdown") || AILevel
trigger1 = !AILevel && (StateType = S || StateType = C || StateNo = 5120)
;Standing/crouch, no reversed commands
trigger1 = !NumExplod(92828282) && !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = ifElse(P2dist x >= 0, command = "fwd", command = "back") || command = "down"
;Air, no reversed commands
trigger2 = !AILevel && StateType = A && (var(3) != 1 && var(3) != 2)
trigger2 = !NumExplod(94646464) && !NumExplod(92468246)
trigger2 = ifElse(P2dist x >= 0, command = "fwd", command = "back")
;Standing/crouch, left/right or all directions reverse
trigger3 = !AILevel && (StateType = S || StateType = C || StateNo = 5120)
trigger3 = NumExplod(94646464) || NumExplod(92468246)
trigger3 = ifElse(P2dist x >= 0, command = "back", command = "fwd") || ifElse(NumExplod(92468246), command = "up", command = "down")
;Standing/crouch, up/down reverse only
trigger4 = !AILevel && (StateType = S || StateType = C || StateNo = 5120)
trigger4 = NumExplod(92828282) && !NumExplod(94646464) && !NumExplod(92468246)
trigger4 = ifElse(P2dist x >= 0, command = "fwd", command = "back") || command = "up"
;Air, reversed commands
trigger5 = !AILevel && StateType = A && (var(3) != 1 && var(3) != 2)
trigger5 = NumExplod(94646464) || NumExplod(92468246)
trigger5 = ifElse(P2dist x >= 0, command = "back", command = "fwd")
trigger6 = AILevel && (StateNo != [760,762]) && InGuardDist && Random < 50
trigger7 = AILevel && (StateNo = [760,762]) && Time = 14 && Random < 667
helperType = Normal
stateNo = 765
ID = 765
name = "Parry Detection"
posType = P1
pauseMoveTime = 65535
superMoveTime = 65535

[State -3, Parry Attacks]
type = ChangeState
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = Helper(765), StateNo = 766
value = ifElse((Helper(765), Anim = 767), 762, ifElse((Helper(765), Anim = 766), 761, 760))
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 765)
attr = SA, AP
stateNo = 760
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 766)
attr = C, AP
stateNo = 761
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 767)
attr = SCA, AP
stateNo = 762
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Assert: NoWalk after Parry]
type = AssertSpecial
trigger1 = var(26) > 0
trigger1 = var(26) := (var(26)-1)
flag = NoWalk
ignoreHitPause = 1

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = NumTarget
trigger1 = Target, HitOver || (Target, GetHitVar(HitShakeTime) > 0 && Target, Time <= 0)
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
triggerAll = MoveType != H
trigger1 = MoveContact = 1 && NumTarget
fvar(5) = Target, GetHitVar(xVel)
ignoreHitPause = 1

[State -3, Corner Push]
type = PosAdd
triggerAll = fvar(5)
triggerAll = (StateType = S || StateType = C || StateNo = 1200 || StateNo = 1230 || StateNo = 1250 || StateNo = 1230) && NumTarget
triggerAll = !HitPauseTime && Target, GetHitVar(HitShakeTime) <= 0
triggerAll = (Target, StateType = S || Target, StateType = C) && !(Target, GetHitVar(yvel)) && !(Target, HitFall)
trigger1 = Target, FrontEdgeBodyDist <= abs(Target, vel x)
trigger1 = (Target, GetHitVar(xvel) * Target, Facing) > 0
trigger2 = Target, BackEdgeBodyDist <= abs(target, vel x)
trigger2 = (Target, GetHitVar(xvel) * Target, Facing) < 0
x = ifElse(Target, FrontEdgeBodyDist <= 0, -1, 1) * (Target, Facing) * fvar(5)

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
trigger1 = NumTarget
trigger1 = Target, GetHitVar(HitShakeTime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, EX FX Decrement]
type = VarAdd
trigger1 = var(25) > 0
var(25) = -1

[State -3, EX FX Reset]
type = VarSet
trigger1 = (StateNo != [1000,2999]) || MoveType = H
var(25) = 0

[State -3, EX Flash]
type = PalFX
trigger1 = !(GameTime % 2) && var(25)
time = 1
color = 0
mul = 256, 224, 0
add = 128, 128, 128
ignoreHitPause = 1

[State -3, Movement AfterImage]
type = AfterImage
triggerAll = Time = 1 && !var(20)
trigger1 = StateNo = 50 && (var(3) = 2 || var(3) = 3)
trigger2 = (StateNo = [700,715])
trigger3 = StateNo = [1600,1601]
trigger4 = StateNo = 193
time = 2
timeGap = 1
frameGap = 4
length = 9
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1

[State -3, Level 1 Super AfterImage]
type = AfterImage
trigger1 = StateNo = 3000 && Time = 43
trigger2 = StateNo = 3100 && Time = 43
trigger3 = StateNo = 3200 && Time = 43
trigger4 = StateNo = 3300 && Time = 43
trigger5 = StateNo = 3400 && Time = 43
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 2 Super AfterImage]
type = AfterImage
trigger1 = StateNo = 3050 && Time = 43
trigger2 = StateNo = 3150 && Time = 43
trigger3 = StateNo = 3250 && Time = 43
trigger4 = StateNo = 3350 && Time = 43
trigger5 = StateNo = 3450 && Time = 43
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 32,32,160
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 3 Super AfterImage]
type = AfterImage
trigger1 = StateNo = 3500 && Time = 43
trigger2 = StateNo = 3600 && Time = 43
trigger3 = StateNo = 3700 && Time = 43
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 160,32,32
palPostBright = 0,0,0
palAdd = 0,0,0
palMul= 0.75,0.75,0.75
trans = Add1

[State -3, AfterImage Persist]
type = AfterImageTime
trigger1 = StateNo = 50 || (StateNo = [600,699])
trigger1 = (var(3) = 2 || var(3) = 3) && Vel Y < -1
trigger2 = var(20)
trigger3 = StateNo = [700,715]
trigger4 = StateNo = [1600,1601]
trigger5 = StateNo = [3000,4999]
trigger6 = StateNo = 193 && Anim = 1601
time = 2
ignorehitpause = 1

[State -3, Underground Juggle Prevention]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget && NumEnemy
trigger1 = (Target, Time = 0) && (Target, ID = EnemyNear, ID)
trigger1 = !(Target, HitShakeOver) && (Target, Pos Y > 0)
pos = ceil(P2Dist x), ceil(-Pos Y)
ignoreHitPause = 1

[State -3, Prevent Crossup]
type = Width
trigger1 = MoveType != H
edge = 8, 0
ignoreHitPause = 1

[State -3, Variable Height]
type = PlayerPush
triggerAll = StateType = A && MoveType != H && NumEnemy
triggerAll = P2BodyDist x = [-(EnemyNear, const(size.ground.back) + EnemyNear, const(size.ground.front)), 0]
trigger1 = P2StateType = S
trigger1 = P2Dist y >= (EnemyNear, const(size.height) - 12)
trigger2 = P2StateType = C
trigger2 = P2Dist y >= (EnemyNear, const(size.height) - 28)
trigger3 = P2StateType = L
trigger3 = P2Dist y >= 12
value = 0
ignoreHitPause = 1

[State -3, Get Hit Sound CvS]
type = PlaySnd
triggerAll = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
triggerAll = Alive && Time = 1
triggerAll = StateNo = 5000 || StateNo = 5010
trigger1 = GetHitVar(AnimType) >= 2 && Random < 500
trigger2 = GetHitVar(AnimType) = 1 && Random < 375
trigger3 = GetHitVar(AnimType) = 0 && Random < (250 * (AILevel ** 2 / 64.0))
value = 5000,(Random % 3)
channel = 0
ignoreHitPause = 1

[State -3, Get Hit Sound SFA]
type = PlaySnd
triggerAll = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
triggerAll = Alive && Time = 1
triggerAll = StateNo = 5000 || StateNo = 5010
trigger1 = GetHitVar(AnimType) >= 2 && Random < 500
trigger2 = GetHitVar(AnimType) = 1 && Random < 375
trigger3 = GetHitVar(AnimType) = 0 && Random < (250 * (AILevel ** 2 / 64.0))
value = 5000,10 + (Random % 3)
channel = 0
ignoreHitPause = 1

[State -3, Get Hit Sound CvS]
type = PlaySnd
triggerAll = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
triggerAll = Alive && Time = 1
trigger1 = (StateNo = 5000 || StateNo = 5010) && NumEnemy
trigger1 = GetHitVar(fall) || (EnemyNear, HitDefAttr = SCA,SA,HA)
trigger2 = (StateNo = 5020 || StateNo = 5070 || StateNo = 5080)
trigger3 = (StateNo = 5050 || StateNo = 5100) && (PrevStateNo != [5000,5199])
value = 5000,(Random % 3)
channel = 0
ignoreHitPause = 1

[State -3, Get Hit Sound SFA]
type = PlaySnd
triggerAll = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
triggerAll = Alive && Time = 1
trigger1 = (StateNo = 5000 || StateNo = 5010) && NumEnemy
trigger1 = GetHitVar(fall) || (EnemyNear, HitDefAttr = SCA,SA,HA)
trigger2 = (StateNo = 5020 || StateNo = 5070 || StateNo = 5080)
trigger3 = (StateNo = 5050 || StateNo = 5100) && (PrevStateNo != [5000,5199])
value = 5000,10 + (Random % 3)
channel = 0
ignoreHitPause = 1

[State -3, Cheap KO]
type = ChangeState
trigger1 = !Alive && (StateNo = [5000,5010])
trigger1 = (PrevStateNo = [130,131]) || (PrevStateNo = [140,141]) || (PrevStateNo = [150,153])
value = 5950
ignoreHitPause = 1

[State -3, Assert: NoKOsnd (Cheap KO)]
type = AssertSpecial
trigger1 = (StateNo = [5000,5010])
trigger1 = (PrevStateNo = [130,131]) || (PrevStateNo = [140,141]) || (PrevStateNo=[150,153])
flag = NoKOsnd
ignoreHitPause = 1

[State -3, Custom Combo Finish]
type = Helper
triggerAll = WinKO && var(20)
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = [1,4]
trigger2 = StateNo = 810 && Anim = 811 && (AnimElemTime(2) = [0, 1])
trigger3 = StateNo = 811 && (AnimElemTime(4) = [0, 1])
trigger4 = StateNo = 820 && (AnimElemTime(5) = [0, 1])
trigger5 = StateNo = 860 && (AnimElemTime(5) = [0, 1])
trigger6 = NumHelper(1005)
trigger6 = (Helper(1005), StateNo = [1005,1007]) && (Helper(1005), var(18))
trigger7 = NumHelper(1055)
trigger7 = Helper(1055), StateNo = 1055 || (Helper(1055), StateNo = [1006,1007])
trigger7 = Helper(1055), var(18)
helperType = Normal
stateNo = 8600
ID = 8600 + 0 * (var(23) := 900)
name = "Super Finish"
posType = left
pos = 160, -120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -3, Super Finish]
type = Helper
triggerAll = WinKO
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = 1 && (StateNo = [3000,4999])
trigger1 = var(23) := StateNo
trigger2 = NumHelper(3005)
trigger2 = Helper(3005), var(18)
trigger2 = var(23) := 3000
trigger3 = NumHelper(3055)
trigger3 = Helper(3055), var(18)
trigger3 = var(23) := 3000
trigger4 = (StateNo = [3100,3199])
trigger4 = var(23) := 3100
trigger5 = (StateNo = [3200,3299])
trigger5 = var(23) := 3200
trigger6 = NumHelper(3305)
trigger6 = Helper(3305), var(18)
trigger6 = var(23) := 3300
trigger7 = NumHelper(3355)
trigger7 = Helper(3355), var(18)
trigger7 = var(23) := 3300
trigger8 = (StateNo = [3400,3499])
trigger8 = var(23) := 3400
trigger9 = (StateNo = [3600,3699])
trigger9 = var(23) := 3600
trigger10 = (StateNo = [3700,3799])
trigger10 = var(23) := 3700
helperType = Normal
stateNo = 8600
ID = 8600
name = "Super Finish"
posType = left
pos = 160,-120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1