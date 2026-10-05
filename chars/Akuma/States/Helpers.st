; ______________________
;| Akuma by DeathScythe |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

;---------------------------------------------------------------------------
;Parry Helper
[StateDef 765]
type = A
physics = N
moveType = I
anim = ifElse(Root, StateType = C, 766, ifElse(Root, StateType = A, 767, 765))
velSet = 0,0
ctrl = 0

[State 765, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 765, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1

[State 765, Change to Crouching]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && ifElse(Root, NumExplod(92828282) || Root, NumExplod(92468246), Root, command = "up", Root, command = "down")
trigger2 = Root, AILevel && (Root, StateType != A) && P2StateType = C
value = 766

[State 765, Change to Standing / Jumping]
type = ChangeAnim
triggerAll = !Time
trigger1 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = !(Root, AILevel) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")
trigger2 = Root, NumExplod(94646464) || Root, NumExplod(92468246)
trigger2 = !(Root, AILevel) && ifElse(Root, P2dist x >= 0, Root, command = "back", Root, command = "fwd")
trigger3 = Root, AILevel && Anim != 766
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Change to Standing / Jumping]
type = ChangeAnim
trigger1 = Anim = 765 || Anim = 767
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Disable]
type = VarSet
trigger1 = Time >= ifElse((Root, StateType = A), 7, 8)
trigger2 = Facing != (Root, Facing)
trigger3 = !(Root, ctrl)
trigger3 = (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
var(0) = 1

[State 765, Disable]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = !Root, NumExplod(92828282) && !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") + Root, command = "holddown") > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") || Root, command = "holddown")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")) || (Anim = 766 && Root, command = "down"))
var(0) = 1

[State 765, Disable (Reverse Commands)]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = Root, NumExplod(94646464) || Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd") + ifElse(Root, NumExplod(92468246), Root, command = "holdup", Root, command = "holddown")) > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd") || ifElse(Root, NumExplod(92468246), Root, command = "holdup", Root, command = "holddown"))
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "back", Root, command = "fwd")) || (Anim = 766 && ifElse(Root, NumExplod(92468246), Root, command = "up", Root, command = "down")))
var(0) = 1

[State 765, Disable (Reverse Up/Down only)]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = Root, NumExplod(92828282) && !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") + Root, command = "holdup") > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") || Root, command = "holdup")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")) || (Anim = 766 && Root, command = "up"))
var(0) = 1

[State 765, Disable]
type = ChangeAnim
trigger1 = var(0) = 1
value = 1

[State 765, Standing/Air]
type = ReversalDef
trigger1 = !var(0) && (Anim = 765 || Anim = 767)
trigger1 = (Root, StateNo != 5120) || !(Root, AnimTime)
reversal.attr = SCA,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Crouching]
type = ReversalDef
trigger1 = !var(0) && Anim = 766
reversal.attr = SC,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Disable]
type = ReversalDef
trigger1 = var(0) = 1
reversal.attr =
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, End]
type = DestroySelf
trigger1 = Time >= 18
trigger2 = (Root, MoveType != I)
trigger3 = !(Root, ctrl) && (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
trigger4 = (Root, StateNo = [760,762]) && (Root, Time <= 1)


;Success
[StateDef 766]
moveType = I
ctrl = 0

[State 766, Disable]
type = VarSet
trigger1 = 1
var(0) = 1

[State 766, End]
type = DestroySelf
trigger1 = Root, StateNo = [760,762]
trigger2 = Time >= 2

;---------------------------------------------------------------------------
;Gou Hadouken
[StateDef 1005]
type = S
physics = N
moveType = A
ctrl = 0
anim = ifelse((root,var(40)=1), 1008, 1005)
sprPriority = 5

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, Timer Var]
type = VarAdd
trigger1 = Time && var(5) < 15
var(5) = 1

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = 3.375 + (var(10) * 1.7)

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1= !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 49 + (var(10)*7) + ((root,var(40)=1)*14) < 7, 7, fvar(11) * 49 + (var(10)*7) + ((root,var(40)=1)*14))), ifElse(var(10) >= 2, 8, 7)
getPower = ifElse(Root, var(10) = 3, 0, ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20))), ifElse(Root, var(10) = 3, 0, 36 * !(Root, var(20)))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifelse(var(5) < 8, -3.5, -10.52), ifelse(var(5) < 8, -7.36, 0)
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = ifelse(var(5) < 8, 1, 0)
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1605, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1605, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1006]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 5
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = ifElse(var(12) < 2 && var(10) = 3, 1055, 1007)


;Disappear
[StateDef 1007]
type = A
physics = N
moveType = A
anim = ifelse((root,var(40)=1), 1009, 1006)
ctrl = 0
velSet = 0,0
sprPriority = 5
moveHitPersist = 1

[State 1007, AngleDraw]
type = AngleDraw
trigger1 = PrevStateNo = 3205
trigger2 = PrevStateNo = 3255
value = -45
ignorehitpause = 1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
lowPriority = 1

[State 1007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008


;Wait
[StateDef 1008]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 1008, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target,HitShakeOver)

;---------------------------------------------------------------------------
;EX Gou Hadouken
[StateDef 1015]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 5

[State 1015, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 2, 1015, 1007)
ignoreHitPause = 1

[State 1015, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1015, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005 && !PrevStateNo
value = 1005

[State 1015, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 1

[State 1015, VelSet]
type = VelSet
trigger1 = 1
x = ifElse((Time < 2 && var(2) > 1), 1, 6.75)

[State 1015, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = moveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1015, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1015, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1015, Hit 1]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = var(2) < 2
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1015, Hit 2]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = var(2) = 2
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.40, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1015, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 1015, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1015, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1015, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0

[State 1015, Juggle Points]
type = ParentVarAdd
trigger1 = MoveContact = 1 && NumTarget
var(15) = 1
persistent = 0
ignorehitpause = 1

[State 1015, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
persistent = 0

[State 1015, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1
persistent = 0

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(2) < 2, 1015, 1007)
ignoreHitPause = 1

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1605, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1605, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100

;---------------------------------------------------------------------------
;Shakunetsu Hadouken
[StateDef 1025]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1025
sprPriority = 5

[State 1025, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 3, 1025, 1027)
ignoreHitPause = 1

[State 1025, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1025, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1025 && !PrevStateNo
value = 1025

[State 1025, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1025, VarAdd]
type = VarAdd
trigger1 = !Time
;var(2) = 1
var(2) = ifelse(!var(10), 3, ifelse(var(10) = 1, 2, 1))

[State 1025, VelSet]
type = VelSet
trigger1 = 1
x = 3.375 + (var(10) * 1.7)

[State 1025, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = moveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1025, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1025, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1025, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1025, Hit 1]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = var(2) < 3
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * ifelse(var(10) = 3, 14, 7) < 7, 7, fvar(11) * ifelse(var(10) = 3, 14, 7))), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 2 * (var(2) < 3), ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 4 * (var(2) < 3), ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -4.5, -6
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -4.5, -6
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palfx.time = 32
palfx.add = 64,0,0
palfx.mul = 172,96,32
palfx.color = 192
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1025, Hit 2]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = var(2) >= 3
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * ifelse(var(10) = 3, 81, 67) + ((root,var(40)=1)*14) < 7, 7, fvar(11) * ifelse(var(10) = 3, 81, 67) + ((root,var(40)=1)*14))), 8
getPower = ifElse(Root, var(10) = 3, 0, ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20))), ifElse(Root, var(10) = 3, 0, 36 * !(Root, var(20)))
givePower = 36, 36
pauseTime = 4 * (var(2) < 3), ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 4 * (var(2) < 3), ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 30
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -4.5, -6
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -4.5, -6
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palfx.time = 32
palfx.add = 64,0,0
palfx.mul = 172,96,32
palfx.color = 192
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1025, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 1025, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1025, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1025, Flames]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1025, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0

[State 1025, Juggle Points]
type = ParentVarAdd
trigger1 = MoveContact = 1 && NumTarget && var(2) > 2
var(15) = 1
persistent = 0
ignorehitpause = 1

[State 1025, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
persistent = 0

[State 1025, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1
persistent = 0

[State 1025, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(2) < 3, 1025, 1027)
ignoreHitPause = 1

[State 1025, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1027
ignoreHitPause = 1

[State 1025, End]
type = DestroySelf
trigger1 = pos x != [-240,240]


;Hit Pause
[StateDef 1026]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 5
moveHitPersist = 1

[State 1026, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1026, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1026, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1026, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1026, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1026, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1026, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1026, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1

[State 1026, End]
type = ChangeState
trigger1 = Time >= 0
value = ifelse(!var(10), 1027, ifelse(var(2) < 2, 1025, 1027))


;Disappear
[StateDef 1027]
type = A
physics = N
moveType = A
anim = 1026
ctrl = 0
velSet = 0,0
sprPriority = 5
moveHitPersist = 1

[State 1027, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
lowPriority = 1

[State 1027, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1027, End]
type = ChangeState
trigger1 = !AnimTime
value = 1028


;Wait
[StateDef 1028]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 1028, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target,HitShakeOver)

;---------------------------------------------------------------------------
;Zankuu Hadouken
[StateDef 1075]
type = A
physics = N
moveType = A
ctrl = 0
anim = ifelse((root,var(40)=1), 1078, 1075)
sprPriority = 5

[State 1075, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1077
ignoreHitPause = 1

[State 1075, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1075, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 7509, spin]
type=angledraw
trigger1 = (Root, var(40)=2)
trigger1 = var(10)!= 3
value= ifelse(var(10) = 2, 10, ifelse(var(10) = 1, -8, -14))

[State 1055, Vel]
type = velset
trigger1 = (Root, var(40)=2)
x = ifelse(var(10) = 2,  4.73, ifelse(var(10) = 1, 3.52, 2.29))
y = ifelse(var(10) = 2,  2.75, ifelse(var(10) = 1, 2.875, 3))

[State 1075, VelSet]
type = VelSet
trigger1 = (Root, var(40)!=2)
x = 2.25 + (var(10) * 0.5)
y = 3 + (var(10) * 0.5)
[State 1075, VelSet]
type = VelSet
trigger1 = (Root, var(40)=2) && var(10)=3
x = 3.75
y = 4.5

[State 1075, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1075, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1075, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1075, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1075, HitDef Normal]
type = HitDef
triggerall = !(Root, var(40)=1) && var(10) != 3
trigger1= !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
attr = A,SP
hitFlag = MAF
guardFlag = MA;HA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 49 + (var(10)*7) < 7, 7, fvar(11) * 49 + (var(10)*7))), ifElse(var(10) >= 2, 8, 7)
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -8.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, 0
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1075, HitDef EX]
type = HitDef
triggerall = !(Root, var(40)=1) && var(10) = 3
trigger1= !(Root, var(16)) && ((Root, var(15) < 1) && (Root, var(13) < 8) || Root, var(20))
attr = A,SP
hitFlag = MAF
guardFlag = MA;HA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 42 - ((Root, var(13)) * 7) < 7, 7, fvar(11) * 42 - ((Root, var(13) * 7)))), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -8.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, 0
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1075, HitDef Shin]
type = HitDef
triggerall = (Root, var(40)=1)
trigger1= !(Root, var(16)) && ((Root, var(15) < 1) && (Root, var(13) < 8) || Root, var(20))
attr = A,SP
hitFlag = MAF
guardFlag = MA;HA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 35 + (var(10)*7) - ((Root, var(13)) * 7) < 7, 7, fvar(11) * 35 + (var(10)*7) - ((Root, var(13)) * 7))), 8
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -8.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, 0
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1075, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1076
ignoreHitPause = 1

[State 1075, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1077
ignoreHitPause = 1

[State 1075, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1079

[State 1075, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
trigger2 = Anim = 1076 && !AnimTime

;Hit Pause
[StateDef 1076]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 5
moveHitPersist = 1

[State 1076, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1076, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1076, HitSound]
type = PlaySnd
trigger1 = !Time
trigger1 = Pos Y >= 0
value = 1050, 0
channel = 3
ignorehitPause = 1

[State 1076, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1076, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1076, HitCount]
type = Null;ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1076, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1076, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1076, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1

[State 1076, End]
type = ChangeState
trigger1 = Time >= 0
value = 1077


;Disappear
[StateDef 1077]
type = A
physics = N
moveType = A
anim = ifelse((root,var(40)=1), 1079, 1076)
ctrl = 0
velSet = 0,0
sprPriority = 5
moveHitPersist = 1

[State 1077, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
lowPriority = 1

[State 1077, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1077, End]
type = ChangeState
trigger1 = !AnimTime
value = 1078


;Wait
[StateDef 1078]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 1078, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target,HitShakeOver)


;Ground
[Statedef 1079]
type = A
physics = N
movetype = A
anim = ifelse((root,var(40)=1), 1079, 1076)
ctrl = 0
velset = 0,0
sprpriority = 5
movehitpersist = 1

[State 1079, Snd FX]
type= PlaySnd
trigger1 = !Time
value = 1050,0
lowpriority = 1

[State 1079, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 1079, Dust FX]
type = Explod
trigger1 = AnimElem=1 && pos y >=0
anim = 8102
sprpriority = -3
postype = p1
scale = .5,.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1079, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 1079, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 1079, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1079, End]
type = DestroySelf
trigger1 = !AnimTime

;---------------------------------------------------------------------------
;Messatsu Gou Hadou
[StateDef 3005]
type = S
physics = N
moveType = A
ctrl = 0
anim = 3005
sprPriority = 5

[State 3005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 5, 3005, 1007)
ignoreHitPause = 1

[State 3005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3005 && !PrevStateNo
value = 3005

[State 3005, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 1

[State 3005, VelSet]
type = VelSet
trigger1 = 1
x = ifElse((Time < 2 && var(2) > 1), 1, 7)

[State 3005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = moveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 3005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 5 || Root, var(20))
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 40 + ((root,var(50)=1)*7*(var(2)>3)) < 7, 7, fvar(11) * 40 + ((root,var(50)=1)*7*(var(2)>3)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 5), 12
guard.pauseTime = 4 * (var(2) < 5), 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -8, -6.5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -8, -5.5
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3005, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 3005, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3005, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3005, HitCount]
type = Null;ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0
ignorehitpause = 1

[State 3005, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1
persistent = 0
ignorehitpause = 1

[State 3005, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
ignorehitpause = 1

[State 3005, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [3000,3099]
var(18) = 1
ignorehitpause = 1

[State 3005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(2) < 5, 3005, 1007)
ignoreHitPause = 1

[State 3005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1605, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1605, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100

;---------------------------------------------------------------------------
;MAX Messatsu Gou Hadou
[StateDef 3055]
type = S
physics = N
moveType = A
ctrl = 0
anim = 3005
sprPriority = 5

[State 3055, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 8, 3005, 1007)
ignoreHitPause = 1

[State 3055, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3055, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3005 && !PrevStateNo
value = 3005

[State 3055, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 1

[State 3055, VelSet]
type = VelSet
trigger1 = 1
x = ifElse((Time < 2 && var(2) > 1), 1, 9.5)

[State 3055, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = moveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3055, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3055, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3055, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 3055, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 8 || Root, var(20))
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 33 + ((root,var(40)=1)*7*(var(2)>6)) < 7, 7, fvar(11) * 33 + ((root,var(40)=1)*7*(var(2)>6)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 8), 12
guard.pauseTime = 4 * (var(2) < 8), 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -8, -5.5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -8, -5.5
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3055, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 3005, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3055, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3055, HitCount]
type = Null;ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0
ignorehitpause = 1

[State 3055, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1
persistent = 0
ignorehitpause = 1

[State 3055, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
ignorehitpause = 1

[State 3055, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [3000,3099]
var(18) = 1
ignorehitpause = 1

[State 3055, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(2) < 8, 3055, 1007)
ignoreHitPause = 1

[State 3055, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1605, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1605, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100

;---------------------------------------------------------------------------
;Tenma Gou Zankuu
[StateDef 3205]
type = A
physics = N
moveType = A
ctrl = 0
anim = 3205
sprPriority = 5

[State 3205, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -45
ignorehitpause = 1

[State 3205, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 4, 3205, 1007)
ignoreHitPause = 1

[State 3205, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3205, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3205 && !PrevStateNo
value = 3205

[State 3205, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 1

[State 3205, VelSet]
type = VelSet
trigger1 = 1
x = ifElse((Time < 2 && var(2) > 1), 1, 4.5)
y = ifElse((Time < 2 && var(2) > 1), 1, 4)

[State 3205, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = moveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3205, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3205, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3205, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 3205, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 4 || Root, var(20))
attr = S, HP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 42 + ((root,var(40)=1)*7*(var(2)>2)) < 7, 7, fvar(11) * 42 + ((root,var(40)=1)*7*(var(2)>2)))), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 4), 12
guard.pauseTime = 4 * (var(2) < 4), 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -4.5, -2.5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.5, -2.5
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3205, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 3205, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3205, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3205, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
ignorehitpause = 1

[State 3205, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [3200,3299]
var(18) = 1
ignorehitpause = 1

[State 3205, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(2) < 4, 3205, 1007)
ignoreHitPause = 1

[State 3205, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 3205, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1079
ignoreHitPause = 1

[State 3205, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100

;---------------------------------------------------------------------------
;MAX Tenma Gou Zankuu
[StateDef 3255]
type = A
physics = N
moveType = A
ctrl = 0
anim = 3205
sprPriority = 5

[State 3255, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -45
ignorehitpause = 1

[State 3255, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 8, 3255, 1007)
ignoreHitPause = 1

[State 3255, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3255, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3205 && !PrevStateNo
value = 3205

[State 3255, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 1

[State 3255, VelSet]
type = VelSet
trigger1 = 1
x = ifElse((Time < 2 && var(2) > 1), 1, 7)
y = ifElse((Time < 2 && var(2) > 1), 1, 4.5)
a
[State 3255, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = moveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3255, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3255, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3255, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 3255, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 8 || Root, var(20))
attr = S, HP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 40 + ((root,var(40)=1)*7*(var(2)>6)) < 7, 7, fvar(11) * 40 + ((root,var(40)=1)*7*(var(2)>6)))), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 7), 12
guard.pauseTime = 4 * (var(2) < 7), 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -4.5, -2.5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.5, -2.5
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3255, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 3255, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3255, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3255, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
ignorehitpause = 1

[State 3255, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [3200,3299]
var(18) = 1
ignorehitpause = 1

[State 3255, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(2) < 7, 3255, 1007)
ignoreHitPause = 1

[State 3255, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 3255, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1079
ignoreHitPause = 1

[State 3255, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100

;---------------------------------------------------------------------------
;Misogi Helper
[Statedef 3605]
ctrl = 0
anim = 3605
sprpriority = 5
velset = 0,0

[State 3605, VelSet]
type = VelSet
trigger1 = !Time
x = -IsHelper(3605)+IsHelper(3606)

[State 3605, VelAdd]
type = VelAdd
trigger1 = 1
x = .03*(-IsHelper(3405)+IsHelper(3406))

[State 3605, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3605, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-(time*10),time*10

[State 3605, End]
type = DestroySelf
trigger1 = Time = 25

;---------------------------------------------------------------------------
;KKZ Bolt
[StateDef 3705]
type = S
physics = N
moveType = A
velSet = 0,0
sprPriority = 3
anim = 3705

[State 3705, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3705
value = 3705

[State 3705, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 3705
time = -1
ignorehitpause = 1

[State 3705, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3705, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[State 3705, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 3705, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3705, Damage Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3705, HitDef]
type = HitDef
trigger1 = !(Root, var(16))
trigger1 = !Time
attr = S, HP
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 54 < 7, 7, fvar(11) * 54)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -2, -6
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
down.velocity = -2, -6
yAccel = 0.51
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3705, Flames]
type = Helper
trigger1 = !NumHelper(8151)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
stateNo = 8151
ID = 8151
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3705, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 3705, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ceil(P2Dist X), ceil(P2Dist Y - 64)
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3705, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3705, Juggle Points]
type = ParentVarAdd
trigger1 = MoveContact = 1 && NumTarget
var(15) = 1
ignorehitpause = 1

[State 3705, ChangeState]
type = ChangeState
trigger1 = MoveHit && !AnimTime
value = 1008

[State 3705, End]
type = DestroySelf
trigger1 = !AnimTime
;trigger2 = Root, MoveType = H
;trigger3 = Root, StateNo != 3700

;---------------------------------------------------------------------------
;KKZ Energy
[StateDef 3706]
type = S
physics = N
moveType = A
velSet = 0,0
sprPriority = 3
anim = 3706

[State 3706, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3706
value = 3706

[State 3706, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 3706
time = -1
ignorehitpause = 1

[State 3706, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3706, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[State 3706, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 3706, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3706, Damage Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3706, HitDef]
type = HitDef
triggerall = !(Root, var(16)); && (Root, var(15) < 15)
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
attr = S, HP
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
sprpriority = 4
damage = ceil(ifElse(fvar(11) * 52 < 7, 7, fvar(11) * 52)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 2
guard.pauseTime = 0, 2
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -2.5, ifelse((AnimElem = 9), -14, -7)
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, ifelse((AnimElem = 9), -14, -7)
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
down.velocity = -2.5, ifelse((AnimElem = 9), -14, -7)
yAccel = 0.51
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3705, Flames]
type = Helper
trigger1 = !NumHelper(8151)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
stateNo = 8151
ID = 8151
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3706, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
;persistent = 0
ignorehitPause = 1

[State 3706, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ceil(P2Dist X), ceil(P2Dist Y - 64)
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
;persistent = 0
ignoreHitPause = 1

[State 3706, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3706, Juggle Points]
type = ParentVarAdd
trigger1 = MoveContact = 1 && NumTarget
var(15) = 1
ignorehitpause = 1

[State 3706, ChangeState]
type = ChangeState
trigger1 = MoveHit && !AnimTime
value = 1008

[State 3706, End]
type = DestroySelf
trigger1 = !AnimTime
;trigger2 = Root, MoveType = H
;trigger3 = Root, StateNo != 3700

;---------------------------------------------------------------------------
;KKZ Energy
[StateDef 3756]
type = S
physics = N
moveType = A
velSet = 0,0
sprPriority = 3
anim = 3706

[State 3706, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3706
value = 3706

[State 3706, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 3706
time = -1
ignorehitpause = 1

[State 3706, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3706, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[State 3706, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 3706, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3706, Damage Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3706, HitDef]
type = HitDef
triggerall = !(Root, var(16)); && (Root, var(15) < 15)
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
attr = S, HP
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
sprpriority = 4
damage = ceil(ifElse(fvar(11) * 32 < 7, 7, fvar(11) * 32)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 2
guard.pauseTime = 0, 2
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -2.5, ifelse((AnimElem = 9), -14, -7)
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, ifelse((AnimElem = 9), -14, -7)
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
down.velocity = -2.5, ifelse((AnimElem = 9), -14, -7)
yAccel = 0.51
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3705, Flames]
type = Helper
trigger1 = !NumHelper(8151)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
stateNo = 8151
ID = 8151
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3706, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
;persistent = 0
ignorehitPause = 1

[State 3706, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ceil(P2Dist X), ceil(P2Dist Y - 64)
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
;persistent = 0
ignoreHitPause = 1

[State 3706, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3706, Juggle Points]
type = ParentVarAdd
trigger1 = MoveContact = 1 && NumTarget
var(15) = 1
ignorehitpause = 1

[State 3706, ChangeState]
type = ChangeState
trigger1 = MoveHit && !AnimTime
value = 1008

[State 3706, End]
type = DestroySelf
trigger1 = !AnimTime
;trigger2 = Root, MoveType = H
;trigger3 = Root, StateNo != 3700

;Tenshou Fx
[Statedef 3850]
physics=N
anim=3850
ctrl=0
velset=0, 0
sprpriority=5

[State 3360, Bind]
type = BindToRoot
trigger1 = 1
pos = ceil(10*const(size.xscale)),-35
ignorehitpause =1

[State 3360, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 3360, Assert]
type=trans
trigger1=1
trans=addalpha
alpha=256, 256
ignorehitpause=1

[State 3360, End]
type=destroyself
trigger1=root,stateno!=3810
trigger3=root,movetype=H

;========================< RED PARTICLES >=============================
[Statedef 6021]
physics = N
anim = 19302
sprpriority = 4
[State 6021, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
[State 6021, Assert]
type = assertspecial
trigger1 = !time
flag = invisible
[State 6021, Fade]
type = palfx
trigger1 = !time
add = -255, -255, -255
sinadd = 255, 255, 255, 40
time = 10
[State 6021, Vel]
type = velset
trigger1 = !time
x = (rootdist x + 16) / 36.0
y = (rootdist y -79) / 36.0
[State 6021, End]
type = destroyself
trigger1 = !animtime

;---------------------------------------------------------------------------
;Intro Effect
[Statedef 19000]
ctrl = 0
anim = Root, Anim
sprpriority = 2

[State 19000, VarAdd]
type = VarAdd
trigger1 = 1
var(0) = 1

[State 19000, VarAdd]
type = VarAdd
trigger1 = Time >= 80
var(1) = 5

[State 19000, VarAdd]
type = VarAdd
trigger1 = Time >= 80
var(2) = 3

[State 19000, VelSet]
type = VelSet
trigger1 = 1
x = .12*cos(var(0)*0.075)
y = .12*sin(var(0)*0.075)

[State 19000, Trans]
type = Trans
trigger1 = Time < 80
trans = add1
alpha = 128,226

[State 19000, Trans]
type = Trans
trigger1 = Time >= 80
trans = add1
alpha = 128 - var(1), 226 + var(2)

[State 19000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 19000, DestroySelf]
type = DestroySelf
trigger1 = (Root, StateNo != 190)

;---------------------------------------------------------------------------
;Win Effect
[Statedef 19002]
ctrl = 0
anim = ifelse(Root,StateNo = 182, 183, 18100)
sprpriority = 2

[State 19002, VarAdd]
type = VarAdd
trigger1 = 1
var(0) = 1

[State 19002, VarAdd]
type = VarAdd
trigger1 = var(1) < 128
var(1) = 5

[State 19002, VarAdd]
type = VarAdd
trigger1 = var(2) < 30
var(2) = 3

[State 19002, VelSet]
type = VelSet
trigger1 = 1
x = .12*cos(var(0)*0.075)
y = .12*sin(var(0)*0.075)

[State 19002, Trans]
type = Trans
trigger1 = 1
trans = add1
alpha = var(1), 256 - var(2)

[State 19002, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 19002, DestroySelf]
type = DestroySelf
trigger1 = (Root, StateNo != 182)
trigger1 = (Root, StateNo != 181)

;---------------------------------------------------------------------------
;Bison Intro SGS
[Statedef 19100]
physics = N
velset = 0, 0
anim = 19100
sprpriority = -4

[State 19100, Voice]
type = PlaySnd
trigger1 = Time = 5
value = 19100, random < 500
channel = 0

[State 19100, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElemTime(9) < 0 && ((Root, Anim = 191) && (Root, AnimElemTime(2) = 0))
value = 19100
elem = 9

[State 19100, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElemTime(10) < 0 && ((Root, Anim = 191) && (Root, AnimElemTime(3) = 0))
value = 19100
elem = 10

[State 19100, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 19100, 3
channel = 0

[State 19100, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
;trigger1 = !(Root,StateNo = 191)

;---------------------------------------------------------------------------
;Bison Intro Misogi
[Statedef 19200]
physics = N
velset = 0, 0
anim = 19200
sprpriority = 1

[State 19200, Voice]
type = PlaySnd
trigger1 = Time = 5
value = 19100, random < 500
channel = 0

[State 19200, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElemTime(9) < 0 && ((Root, Anim = 192) && (Root, AnimElemTime(5) = 0))
value = 19200
elem = 9

[State 19200, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 19100, 2
channel = 0

[State 19200, Effect]
type = Explod
trigger1 = AnimElem = 9
anim = 19201
sprpriority = 2
postype = P1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 19200, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
;trigger1 = !(Root,StateNo = 191)

;---------------------------------------------------------------------------
;Ryu Dialogue
[Statedef 30200]
ctrl = 0
anim = 1
sprpriority = 5

[State 30200, Explod]
type = Explod
trigger1 = Time = 50
anim = 30200
ID = 30200
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 40)
postype = left
facing = 1
removetime = 600
sprpriority = 2
ownpal = 1
trans = sub

[State 30200, Explod]
type = Explod
trigger1 = Time = 50
anim = 30200
ID = 30210
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 200)
postype = left
facing = 1
removetime = 600
sprpriority = 2
ownpal = 1
trans = sub

[State 30200, Explod]
type = Explod
trigger1 = Time = 50
anim = 30201
ID = 30201
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 40)
postype = left
facing = 1
removetime = 600
sprpriority = 3
ownpal = 1

[State 30200, Explod]
type = Explod
trigger1 = Time = 50
anim = 30202
ID = 30202
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 200)
postype = left
facing = 1
removetime = 600
sprpriority = 3
ownpal = 1

[State 30200, Explod]
type = Explod
trigger1 = Time = 50
anim = 30203
ID = 30203
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 40)
postype = left
facing = 1
removetime = 600
sprpriority = 3
ownpal = 1

[State 30200, Explod]
type = Explod
trigger1 = Time = 50
anim = 30204
ID = 30204
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 200)
postype = left
facing = 1
removetime = 600
sprpriority = 3
ownpal = 1

[State 30200, DestroySelf]
type = DestroySelf
trigger1 = Time >= 650

;---------------------------------------------------------------------------
;Guard Spark (Normal)
[StateDef 8000]
type = A
physics = N
moveType = I
anim = 8000
velset = 0,0
sprPriority = 5

[State 8000, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8000, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8000, End]
type = DestroySelf
trigger1 = Time >= 8


;Guard Spark (Special)
[StateDef 8001]
type = A
physics = N
moveType = I
anim = 8001
velSet = 0,0
sprPriority = 5

[State 8001, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8001, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8001, Impact Explod]
type = Explod
trigger1 = ((Root, StateNo = 301) || (Root, StateNo = 303))
trigger1 = !Time
anim = 8001
ID = 1
posType = P2
facing = 1
sprPriority = 5
pos = 0, -70
random = 60, 60
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1
onTop = 1

[State 8001, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.5 - (0.0625 * Time), 0.5 - (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8001, Remove Explods]
type = RemoveExplod
trigger1 = !(Root, StateNo = 301)
trigger1 = Time >= 8

[State 8001, End]
type = DestroySelf
trigger1 = Time >= 8


;Weak Hit Spark
[StateDef 8010]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8010, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8010, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.3 - (Time * 0.03), 0.3 - (Time * 0.03)
ignoreHitPause = 1

[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8010, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8010, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.3 - (0.0375 * Time), 0.3 - (0.0375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8010, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16


;Medium Hit Spark
[StateDef 8011]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8011, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8011, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8011, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.35 - (Time * 0.035), 0.35 - (Time * 0.035)
ignoreHitPause = 1

[State 8011, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8011, Center]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removetime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.35 - (0.04375 * Time), 0.35 - (0.04375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8011, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8011, End]
type = DestroySelf
trigger1 = Time >= 16


;Strong Hit Spark
[StateDef 8012]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8012, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8012, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8012, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.4 - (Time * 0.04), 0.4 - (Time * 0.04)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8012, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.4 - (0.05 * Time), 0.4 - (0.05 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8012, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8012, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Hit Spark
[StateDef 8013]
type = A
physics = N
moveType = I
anim = 8010 + root,var(55)*10
velSet = 0,0
sprPriority = 5

[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8013, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8013, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8013, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.45 - (Time * 0.045), 0.45 - (Time * 0.045)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8013, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011 + root,var(55)*10
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012 + root,var(55)*10
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013 + root,var(55)*10
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod]
type = ModifyExplod
trigger1= NumExplod(3)
ID = 3
scale = 0.4, 0.4
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(random < 500, -1, 1)
vFacing = ifElse(random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.45 - (0.05625 * Time), 0.45 - (0.05625 * Time)
trans = AddAlpha
alpha = 192 - (24 * Time), 256

[State 8013, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8013, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Hit Spark
[StateDef 8014]
type = A
physics = N
moveType = I
anim = 8010 + root,var(55)*20
velSet = 0,0
sprPriority = 5

[State 8014, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8014, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8014, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.5 - (Time * 0.05), 0.5 - (Time * 0.05)
ignoreHitPause = 1

[State 8014, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8014, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011 + root,var(55)*20
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012 + root,var(55)*20
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013 + root,var(55)*20
ID = 3
posType = P1
facing = ifElse((Parent, StateNo = [3000,3999]), -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.5,0.5
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.5 - (0.0625 * Time), 0.5 - (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16


;Reversal Spark
[StateDef 8020]
type = A
physics = N
moveType = I
anim = 8040
velSet = 0,0
sprPriority = 5

[State 8020, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8020, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.12 + (0.09375 * Time), 0.12 + (0.09375 * Time)
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8020, End]
type = DestroySelf
trigger1 = Time >= 8


;Shun Goku Satsu Spark
[StateDef 8030]
type = A
physics = N
moveType = I
anim = 8010 + root,var(55)*20
velSet = 0,0
sprPriority = 5

[State 8030, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8030, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8030, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8030, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.5 - (Time * 0.05), 0.5 - (Time * 0.05)
ignoreHitPause = 1

[State 8030, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8030, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8030, Center Spark]
type = Explod
trigger1 = !Time
anim = 8010 + root,var(55)*20
ID = 10
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1
ontop = 1

[State 8030, Scale Center Spark]
type = ModifyExplod
trigger1 = NumExplod(10)
trigger1 = Time < 10
ID = 10
scale = (0.5 - (Time * 0.05)) * 0.8, (0.5 - (Time * 0.05)) * 0.8
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8030, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011 + root,var(55)*20
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1
ontop = 1

[State 8030, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8030, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012 + root,var(55)*20
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1
ontop = 1

[State 8030, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8030, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013 + root,var(55)*20
ID = 3
posType = P1
facing = ifElse((Parent, StateNo = [3000,3999]), -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1
ontop = 1

[State 8030, Scale P2 Back Explod]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.5,0.5
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8030, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1
ontop = 1

[State 8030, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.5 - (0.0625 * Time), 0.5 - (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8030, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8030, End]
type = DestroySelf
trigger1 = Time >= 16

;---------------------------------------------------------------------------
;Jump Dust
[StateDef 8100]
type = S
anim = 1
velSet = 0,0

[State 8100, Bind]
type = BindToRoot
trigger1 = Time

[State 8100, Floor Dust]
type = Explod
trigger1 = !Time
anim = 8100
sprPriority = 3
posType = P1
pos = 0, ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, Player Dust]
type = Explod
trigger1 = !Time || Time = 2 || Time = 6
anim = 8101
sprPriority = 3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, End]
type = DestroySelf
trigger1 = Time >= 7

;---------------------------------------------------------------------------
;Dash Dust
[StateDef 8103]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8103, posSet]
type = PosSet
trigger1 = !Time = 0
y = 0

[State 8103, Dash Dust]
type = Explod
trigger1 = Time = 0 || Time = 3 || Time = 6
anim = 8103
ID = ifElse((Time = 6), 3, ifElse((Time = 3), 2, 1))
posType = P1
pos = 0,-4
random = 8,8
vel = -3 - (Random / 1000.0), -2 - (Random / 2000.0)
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 16
sprPriority = 3
pauseMoveTime = -1
superMoveTime = -1

[State 8103, Scale Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.1 + (0.025 * Time), 0.1 + (0.025 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8103, Scale Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.1 + (0.025 * (Time - 3)), 0.1 + (0.025 * (Time - 3))
trans = AddAlpha
alpha = 256 - (16 * (Time - 3)), 256

[State 8103, Scale Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.1 + (0.025 * (Time - 6)), 0.1 + (0.025 * (Time - 6))
trans = AddAlpha
alpha = 256 - (16 * (Time - 6)), 256

[State 8103, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 22

[State 8103, End]
type = DestroySelf
trigger1 = !NumExplod

;---------------------------------------------------------------------------
;Impact Dust
[StateDef 8110]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8110, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8110
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8120
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8110, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8110, End]
type = DestroySelf
trigger1 = !NumExplod

;---------------------------------------------------------------------------
;Wall Impact Dust
[StateDef 8111]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8111, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8111
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8121
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8111, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8111, End]
type = DestroySelf
trigger1 = !NumExplod

;---------------------------------------------------------------------------
;Flames
[StateDef 8150]
type = A
velSet = 0,0
anim = 1

[State 8150, Player]
type = VarSet
trigger1 = !Time
var(0) = Parent, var(43)

[State 8150, PosSet]
type = PosSet
trigger1 = PlayerIDexist(var(0))
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8150, PosSet (Laying Down)]
type = PosSet
trigger1 = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) - 20

[State 8150, Facing]
type = Turn
trigger1 = PlayerIDexist(var(0))
trigger1 = Facing != (PlayerID(var(0)), Facing)

[State 8150, Flame Explod 1]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150
sprPriority = 3
posType = P1
random = 40,40
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8150, Flames Explod 2]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150
sprPriority = 3
posType = P1
random = 60,60
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8150, End]
type = DestroySelf
trigger1 = Time >= 600
trigger2 = !PlayerIDexist(var(0))

[State 8150, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), Movetype != H || PlayerID(var(0)), StateNo = 5300
trigger3 = PlayerID(var(0)), StateType = L && (PlayerID(var(0)), StateNo != [5080,5081])

;---------------------------------------------------------------------------
;Flames 2
[StateDef 8151]
type = A
velSet = 0,0
anim = 1

[State 8151, Player]
type = VarSet
trigger1 = !Time
var(0) = Parent, var(43)

[State 8151, PosSet]
type = PosSet
trigger1 = PlayerIDexist(var(0))
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8151, PosSet (Laying Down)]
type = PosSet
trigger1 = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) - 20

[State 8151, Facing]
type = Turn
trigger1 = PlayerIDexist(var(0))
trigger1 = Facing != (PlayerID(var(0)), Facing)

[State 8151, Flame Explod 1]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8151
sprPriority = 3
posType = P1
random = 40,40
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8151, Flames Explod 2]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8151
sprPriority = 3
posType = P1
random = 60,60
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8151, End]
type = DestroySelf
trigger1 = Time >= 600
trigger2 = !PlayerIDexist(var(0))

[State 8151, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), Movetype != H || PlayerID(var(0)), StateNo = 5300
trigger3 = PlayerID(var(0)), StateType = L && (PlayerID(var(0)), StateNo != [5080,5081])

;---------------------------------------------------------------------------
;Recover FX
[StateDef 8200]
type = A
velSet = 0,0
anim = 8200
sprPriority = 5

[State 8200, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8200, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.017 * Time), 0.25 + (0.017 * Time)
ignoreHitPause = 1

[State 8200, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = ceil(256 - 17.1 * Time), 256
ignoreHitPause = 1

[State 8200, End]
type = DestroySelf
trigger1 = Time >= 15

;---------------------------------------------------------------------------
;Counter FX
[StateDef 8290]
type = A
physics = N
velSet = 0,0
anim = 1

[State 8290, "Counter!" Text Explod]
type = Explod
trigger1 = !NumExplod(8290)
anim = 8290
ID = 8290
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8290
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8290
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8290, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8290, End]
type = DestroySelf
trigger1 = Time >= 16

;---------------------------------------------------------------------------
;Max Mode Text FX
[StateDef 8291]
type = A
physics = N
velSet = 0,0
anim = 1

[State 8291, "Power Up!" Text Explod]
type = Explod
trigger1 = !NumExplod(8291)
anim = 8291
ID = 8291
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8291, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8291
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8291, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8291
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8291, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8291, End]
type = DestroySelf
trigger1 = Time >= 16

;---------------------------------------------------------------------------
;Power Charge FX
;Aura and Dust
[StateDef 8330]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velset = 0,0

[State 8330, BindToRoot]
type = BindToRoot
trigger1 = (Root, StateNo = 730)
pos = -7,0

[State 8330, Charging Sound]
type = PlaySnd
trigger1 = !Time
value = 730,0
channel = 0

[State 8330, Power Charge Aura]
type = Explod
trigger1 = !NumExplod(8330)
ID = 8330
anim = 8330
sprPriority = 3
posType = P1
bindTime = -1
removeTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Power Charge Dust]
type = Explod
trigger1 = !(Time % 6)
anim = 8105
sprPriority = -3
posType = P1
pos = 0, -ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Modify Aura 1]
type = ModifyExplod
trigger1 = Numexplod(8330) && Root, Power < 3000
ID = 8330
scale = 0.5, 0.1 + 0.4 * (Root, Power / 3000.0)

[State 8330, Modify Aura 2]
type = ModifyExplod
trigger1 = NumExplod(8330) && Root, Power >= 3000
ID = 8330
scale = 0.5, 0.5

[State 8330, StopSnd]
type = StopSnd
trigger1 = Root, StateNo != 730
channel = 0

[State 8330, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8330, End]
type = DestroySelf
trigger1 = Root, StateNo != 730


;Particles
[StateDef 8331]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8331, BindToRoot]
type = BindToRoot
trigger1 = !(Time % 8)
pos = ceil(-151 + (Random / 3.125)), ceil(98 - (Random / 3.125))

[State 8331, Particle]
type = Explod
trigger1 = (Time % 8) = 1
anim = 8331
sprPriority = ifElse(Random < 750, 5, -1)
posType = P1
vel = ((RootDist x - 12) / 32.0), ((RootDist y - 58) / 32.0)
scale = ifElse(Random < 500, 0.5, -0.5), ifElse(Random < 500, 0.5, -0.5)
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8331, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8331, End]
type = DestroySelf
trigger1 = Root, StateNo != 730

;---------------------------------------------------------------------------
;Zero Counter FX
[StateDef 8350]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8350, bgPalFX]
type = bgPalFX
trigger1 = 1
time = 1
color = 16 * Time
mul = 16 * Time, 16 * Time, 16 * Time

[State 8350, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8350
ID = 1
sprPriority = 3
posType = P1
removeTime = 16
superMoveTime = -1
ownPal = 1

[State 8350, Scale]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.0625 * Time), (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8350, Lightning Explod]
type = Explod
trigger1 = !Time
anim = 8351
ID = 2
sprPriority = -2
posType = P1
pos = 0, -ceil(pos y)
superMoveTime = -1
ownPal = 1

[State 8350, End]
type = DestroySelf
trigger1 = Time >= 16

;---------------------------------------------------------------------------
;Custom Combo
[StateDef 8400]
type = A
physics = N
moveType = I
anim = 8400
ctrl = 0
velSet = 0,0
sprPriority = 5

[State 8400, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8400, BGpalFX]
type = BGpalFX
trigger1 = Time < 25
time = 1
mul = 128,128,128

[State 8400, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8400, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8400, Scale]
type = AngleDraw
trigger1 = Time < 8
scale = (0.0625 * Time), (0.0625 * Time)
ignoreHitPause = 1

[State 8400, Scale]
type = AngleDraw
trigger1 = Time >= 8
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time < 16
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time >= 16
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256
ignoreHitPause = 1

[State 8400, Lines Explod]
type = Explod
trigger1 = !Time
anim = 8401
ID = 1
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8400, Scale Lines Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 2 - (0.125 * Time), 2 - (0.125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8400, Circle Explod]
type = Explod
trigger1 = Time = 16
anim = 8402
ID = 2
sprPriority = 5
posType = P1
removeTime = 32
superMoveTime = -1

[State 8400, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.1 * (Time - 16)), (0.1 * (Time - 16))
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256

[State 8400, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 26

[State 8400, End]
type = DestroySelf
trigger1 = Time >= 26

;---------------------------------------------------------------------------
;Super Pause FX

;Level 1 Super FX
[StateDef 8500]
type = A
velSet = 0,0
anim = 8500
sprPriority = 5

[State 8500, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8500, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 0,0,256

[State 8500, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8500, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8500, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8500, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5,0.5
ignoreHitPause = 1

[State 8500, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8500, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8501
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8500, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8500, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8502
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8500, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8500, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 2 Super FX
[StateDef 8510]
type = A
velSet = 0,0
anim = 8510
sprPriority = 5

[State 8510, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8510, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 192,0,256

[State 8510, Rotate]
type = AngleSet
trigger1 = !Time
value =6 * (Random % 60)

[State 8510, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8510, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8510, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8510, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8510, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8511
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8510, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8510, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8510, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8510, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 -(0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8510, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8512
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 32
superMoveTime = -1

[State 8510, Scale]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24)<4, 64 * (Time - 24), 256), 256

[State 8510, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8510, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 3 Super FX
[StateDef 8520]
type = A
velset = 0,0
anim = 8520
sprPriority = 5

[State 8520, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8520, Assert: NoBarDisplay, NoBG, NoFG]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBarDisplay
flag2 = NoBG
flag3 = NoFG

[State 8520, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8520, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8520, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8520, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8520, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8520, Portrait 1]
type = Explod
trigger1 = !Time
anim = 8525 + root,var(40)
ID = 20
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Portrait 2]
type = Explod
trigger1 = !Time
anim = 8525 + root,var(40)
ID = 21
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Scale Portrait 1a]
type = ModifyExplod
trigger1 = NumExplod(20) && Time < 16
ID = 20
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 2a]
type = ModifyExplod
trigger1 = NumExplod(21) && Time < 16
ID = 21
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 1b]
type = ModifyExplod
trigger1 = NumExplod(20) && (Time = [16,32])
ID = 20
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 256, 256

[State 8520, Scale Portrait 2b]
type = ModifyExplod
trigger1 = NumExplod(21) && (Time = [16,32])
ID = 21
scale = 0,0

[State 8520, Scale Portrait 1c]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
posType = Back
pos = 160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = 160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8521
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8520, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8520, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1-(0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8520, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8520, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8522
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1 ,1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8520, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8520, End]
type = DestroySelf
trigger1 = Time >= 40

;---------------------------------------------------------------------------
;Super Finish
[StateDef 8600]
type = A
velSet = 0,0
anim = 1

[State 8600, Super Finish Sound]
type = PlaySnd
trigger1 = !Time
value = 8600,0
channel = 0

[State 8600, SndPan]
type = SndPan
trigger1 = Time <= 80
channel = 1
absPan = ceil(sin(GameTime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time = [16,24)
time = 1
mul = 32 * (Time - 16), 32 * (Time - 16), 32 * (Time - 16)

[State 8600, Move Name: Custom Combo]
type = VarSet
trigger1= !Time && Root, var(23) = 900
var(0) = 1

[State 8600, Move Name: Messatsu Gou Hadou]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000,3099])
var(0) = 2

[State 8600, Move Name: Messatsu Gou Shoryu]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100,3199])
var(0) = 3

[State 8600, Move Name: Tenma Gou Zankuu]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3200,3299])
var(0) = 4

[State 8600, Move Name: Shun Goku Satsu]
type = VarSet
trigger1= !Time && (Root, var(23) = [3500,3599])
var(0) = 5

[State 8600, Move Name: Misogi]
type = VarSet
trigger1= !Time && Root, var(23) = [3600,3699]
var(0) = 6

[State 8600, Move Name: Kongou Kokuretsu Zan]
type = VarSet
trigger1= !Time && Root, var(23) = [3700,3799]
var(0) = 7

[State 8600, Move Name: Messatsu Gorasen Text]
type = VarSet
trigger1 = !Time && Root,var(23)=3300
trigger2 = !Time && Root,var(23)=3350
var(0) = 8

[State 8600, Move Name: Messatsu Gousenpuu Text]
type = VarSet
trigger1 = !Time && Root,var(23)=3310
trigger2 = !Time && Root,var(23)=3360
var(0) = 9

[State 8600, Move Name: TKJ Text]
type = VarSet
trigger1 = !Time && Root,var(23)=3800
var(0) = 10

[State 8600, Super Finish Explod]
type = Explod
trigger1 = !Time
anim = 8600
ID = 8600
ontop = 1
postype = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Super Finish Explod Fade]
type = ModifyExplod
trigger1 = NumExplod(8600)
ID = 8600
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), 256

[State 8600, Text 1]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 10
onTop = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 2]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 11
onTop = 1
posType = left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 1 Fade]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), ifElse(Time < 16, 0, 32 * (Time - 16))

[State 8600, Text 2 Fade]
type = ModifyExplod
trigger1 = NumExplod(11)
ID = 11
scale = 0.5 + (0.0625 * Time), 0.5 + (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 32 * Time

[State 8600, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8601
ID = 8601
under = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
bindTime = -1
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Circle Fade]
type = ModifyExplod
trigger1 = NumExplod(8601)
ID = 8601
scale = (0.25 * Time) * (1.3333333 * GameHeight / GameWidth), (0.25 * Time) * (1.3333333 * GameHeight / GameWidth)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8600, Assert: NoFG]
type = AssertSpecial
trigger1 = Time < 16
flag = NoFG

[State 8600, Assert: NoBarDisplay]
type = AssertSpecial
trigger1 = Time < 24
flag = NoBarDisplay

[State 8600, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 24
trigger2 = RoundState < 3

[State 8600, End]
type = DestroySelf
trigger1 = RoundState < 3

; KANJI
[Statedef 8610]
physics = N
velset = 0, 0
anim = 1

[State 8610, ParentVarSet]
type = ParentVarSet
trigger1 = !Time
var(23) = 3500
ignorehitpause = 1

[State 8610, Assert]
type = AssertSpecial
trigger1 = Time < 60
flag = nomusic

[State 8610, Snd]
type = playsnd
trigger1 = !Time
value = 3500, 1

[State 8610, black]
type = bgpalfx
trigger1 = Time < 60
time = 2
add = -255, -255, -255

[State 8610, black]
type = bgpalfx
trigger1 = time = 60
time = 60
add = -255, -255, -255
sinadd = 255, 255, 255, 240

[State 8610, Fade]
type = palfx
trigger1 = time = 60
time = 60
sinadd = -255, -255, -255, 240

[State 8610, Kanji]
type = explod
trigger1 = !Time
anim = 8605 + (root,var(40)=1)
ID = 8610
sprpriority = -5
postype = left
pos = 160, 120
scale = 0.5 * (1.3333333 * gameheight / gamewidth), 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = -1

[State 8610, Text 1]
type = Explod
trigger1 = !Time
anim = 8615
ID = 10
onTop = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8610, Text 2]
type = Explod
trigger1 = !Time
anim = 8615
ID = 11
onTop = 1
posType = left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8610, Text 1 Fade]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), ifElse(Time < 16, 0, 32 * (Time - 16))

[State 8610, Text 2 Fade]
type = ModifyExplod
trigger1 = NumExplod(11)
ID = 11
scale = 0.5 + (0.0625 * Time), 0.5 + (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 32 * Time

[State 8610, Assert]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = nobardisplay
ignorehitpause = 1

[State 8610, Assert]
type = assertspecial
trigger1 = time < 60
flag = noFG
ignorehitpause = 1

[State 8610, Safety]
type = removeexplod
trigger1 = time >= 120

[State 8610, End]
type = destroyself
trigger1 = time >= 120

;---------------------------------------------------------------------------
;Camera Control
[StateDef 8999]
type = S
velSet = 0,0
anim = 1

[State 8999, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 8999, End]
type = DestroySelf
trigger1 = RoundState = 2

;---------------------------------------------------------------------------
;EXPLODSIVE BUFFERING HELPER
[StateDef 90000005]
type = A
physics = N
moveType = I
anim = 1
velSet = 0,0
ctrl = 0

[State 90000005, Turn]
type = Turn
trigger1 = (Root, NumExplod(94646464) || Root, NumExplod(92468246)) && !var(0)
trigger2 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246) && var(0)
ignoreHitPause = 1

[State 90000005, Reverse Left/Right]
type = VarSet
trigger1 = (Root, NumExplod(94646464) || Root, NumExplod(92468246)) && !var(0)
var(0) = 1
ignoreHitPause = 1

[State 90000005, Reset Turn Variable]
type = VarSet
trigger1 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246) && var(0)
var(0) = 0
ignoreHitPause = 1
 
[State 90000005, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "by JustMorphPointman"
ignoreHitPause = 1