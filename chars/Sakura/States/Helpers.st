; ________________________________
;| Sakura Kasugano by DeathScythe |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

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
;Hadouken Energy
[StateDef 1004]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1004 + (50 * (Root, StateNo = 1050 || Root, StateNo = 1080))
sprPriority = 4

[State 1004, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 1004, ChangeAnim]
type = ChangeAnim
trigger1 = Root, Anim = 1000 || Root, Anim = 1050
trigger1 = Root, AnimElem = 8
trigger2 = Root, Anim = 1030 || Root, Anim = 1080
trigger2 = Root, AnimElem = 4
value = Anim
elem = ifElse((Root, StateNo = 1000), 7 + (Root, var(44)), 7)

[State 1004, DestroySelf]
type = DestroySelf
trigger1 = Root, Anim = 1000 || Root, Anim = 1050
trigger1 = Root, AnimElem = 9
trigger2 = Root, Anim = 1030 || Root, Anim = 1080
trigger2 = Root, AnimElem = 5
trigger3 = Root, StateNo != 1000
trigger3 = Root, StateNo != 1030
trigger3 = Root, StateNo != 1050
trigger3 = Root, StateNo != 1080
trigger4 = !AnimTime

;---------------------------------------------------------------------------
;Hadouken
[StateDef 1005]
type = A
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 5

[State 1005, VarSet]
type = VarSet
trigger1 = !Time
var(1) = 1000

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !Root, var(40)
value = ifElse(!Root, var(44), 1005, ifElse(Root, var(44) = 1, 1015, 1025))

[State 1005, ChangeAnim Dark]
type = ChangeAnim
trigger1 = !Time && Root, var(40) = 1
value = 1015

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
trigger1 = Time && var(5) < 60
var(5) = 1

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, Charge Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(44) = Root, var(44)

[State 1005, VelSet]
type = VelSet
trigger1 = !Root, var(40)
x = ifElse(!var(44), 4.6875, ifElse(var(44) = 1, 3.64583, 2.34375))

[State 1005, VelSet Dark]
type = VelSet
trigger1 = Root, var(40) = 1
x = ifElse(!var(10), 3.35, ifElse(var(10) = 1, 4.46, 5.58))

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
trigger1 = !Root, var(40)
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 42 + (var(44) * 14) < 7, 7, fvar(11) * 42 + (var(44) * 14))), 7
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
ground.velocity = ifElse(var(44) = 2, -5.2, -7.933), ifElse(var(44) = 2, -5.37, 0)
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -4.31, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = var(44) = 2
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
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1005, HitDef Dark]
type = HitDef
trigger1 = Root, var(40) = 1
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 49 + (var(10) * 7) < 7, 7, fvar(11) * 49 + (var(10) * 7))), 7
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
ground.velocity = ifElse(var(5) < 10, -5.2, -7.933), ifElse(var(5) < 10, -5.37, 0)
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -4.31, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = var(5) < 10
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
palFX.sinAdd = -255,-255,-255,48
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
triggerAll = !Root, var(40)
trigger1 = MoveReversed
trigger2 = !var(44) && var(5) >= 40
trigger3 = var(44) = 1 && var(5) >= 30
trigger4 = var(44) = 2 && var(5) >= 20
value = 1007
ignoreHitPause = 1

[State 1005, ChangeState Dark]
type = ChangeState
triggerAll = Root, var(40) = 1
trigger1 = MoveReversed
trigger2 = !var(10) && var(5) >= 55
trigger3 = var(10) = 1 && var(5) >= 41
trigger4 = var(10) = 2 && var(5) >= 33
value = 1007
ignoreHitPause = 1

[State 1005, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1005, End]
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
HitCountPersist = 1
velset = 0, 0

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
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
helperType = Normal
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
trigger1 = (Root, StateNo = [1000,1080]) || (Root, StateNo = 1500)
var(18) = 1

[State 1006, AngleDraw Tengyou Hadouken]
type = AngleDraw
trigger1 = var(1) = 1080
value = 45
ignorehitpause = 1

[State 1006, End]
type = ChangeState
trigger1 = var(1) != 1080
trigger1 = Time >= 0
value = 1007

[State 1006, End]
type = ChangeState
triggerall = var(1) = 1080
trigger1 = Time >= 4 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1007, 1085)

;Disappear
[StateDef 1007]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 5
moveHitPersist = 1

[State 1007, ChangeAnim]
type = ChangeAnim
trigger1 = var(1) = 1000 || var(1) = 1050 || var(1) = 1080 || var(1) = 1500
trigger1 = !Time
value = ifElse(MoveContact, 1006, Anim + 2)

[State 1007, ChangeAnim]
type = ChangeAnim
trigger1 = var(1) = 3000 || var(1) = 3050 || var(1) = 3300 || var(1) = 3350
trigger1 = !Time
value = ifElse(MoveContact, 3006, 3007)

[State 1007, AngleDraw Tengyou Hadouken]
type = AngleDraw
trigger1 = var(1) = 1050 || var(1) = 1080 || var(1) = 3300 || var(1) = 3350
value = 45
ignorehitpause = 1

[State 1007, AngleDraw Air Hadouken]
type = AngleDraw
trigger1 = var(1) = 1500
value = -45
ignorehitpause = 1

[State 1007, Scale]
type = AngleDraw
trigger1 = PrevStateNo = 1006 && var(1) != 1080 && !Root, var(40)
scale = .8 + (var(44)*.1), .8 + (var(44)*.1)
ignorehitpause = 1

[State 1007, Scale EX Tengyou Hadouken / Dark Hadouken]
type = AngleDraw
trigger1 = PrevStateNo = 1006 && var(1) = 1080
trigger2 = PrevStateNo = 1006 && var(1) = 1000 && Root, var(40) = 1
trigger3 = PrevStateNo = 1006 && var(1) = 1500
scale = .9, .9
ignorehitpause = 1

[State 1007, Scale Shinkuu Hadouken]
type = AngleDraw
trigger1 = var(1) = 3000 || var(1) = 3050 || var(1) = 3300 || var(1) = 3350
trigger1 = var(18)
scale = .8, .8
ignorehitpause = 1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time && (Anim = 1006 || Anim = 3006)
value = 2,6
channel = 2
volume = -128
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
;Hadoushou
[StateDef 1035]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 5
HitCountPersist = 1

[State 1035, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1035
value = 1035

[State 1035, VarSet]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(1) = 1030

[State 1035, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = 3

[State 1035, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 0
persistent = 0

[State 1035, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1035
ignoreHitPause = 1

[State 1035, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1035, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1035, BindToRoot]
type = BindToRoot
trigger1 = 1 
pos = ceil(90*Root,const(size.xscale)),ceil(-54*Root,const(size.yscale))

[State 1035, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1035, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1035, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1035, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1035, HitDef 1]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) = 3
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 10, 12
guard.pauseTime = 10, 12
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
ground.velocity = -5.2, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -4.31, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1035, HitDef 2]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) = 2
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 10, 12
guard.pauseTime = 10, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.2, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -4.31, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1035, HitDef 3]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) = 1
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 10, 12
guard.pauseTime = 10, 12
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
ground.velocity = -5.2, -5.37
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -4.31, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1035, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 1035, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ceil(P2Dist X), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1035, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
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

[State 1035, HitCount]
type = ParentVarAdd
trigger1 = MoveContact && NumTarget
var(13) = 1
ignoreHitPause = 1

[State 1035, Juggle Points]
type = ParentVarAdd
trigger1 = MoveContact && NumTarget
var(15) = 1
ignoreHitPause = 1

[State 1035, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
ignoreHitPause = 1

[State 1035, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 1030
var(18) = 1
ignoreHitPause = 1

[State 1035, ChangeState]
type = ChangeState
trigger1 = MoveReversed
trigger2 = MoveContact
value = 1035
ignoreHitPause = 1

[State 1035, End]
type = DestroySelf
trigger1 = !AnimTime

;---------------------------------------------------------------------------
;Tengyou Hadouken
[StateDef 1055]
type = A
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 5

[State 1055, VarSet]
type = VarSet
trigger1 = !Time
var(1) = 1050

[State 1055, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !Root, var(40)
value = ifElse(!Root, var(44), 1005, ifElse(Root, var(44) = 1, 1015, 1025))

[State 1055, ChangeAnim Dark]
type = ChangeAnim
trigger1 = !Time && Root, var(40) = 1
value = 1015

[State 1055, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 45
ignorehitpause = 1

[State 1055, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1055, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1055, Timer Var]
type = VarAdd
trigger1 = Time && var(5) < 60
var(5) = 1

[State 1055, Button Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1055, Charge Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(44) = Root, var(44)

[State 1055, VelSet]
type = VelSet
trigger1 = !Root, var(40)
x = ifElse(!var(44), 3, ifElse(var(44) = 1, 2.33, 1.5))
y = ifElse(!var(44), -3, ifElse(var(44) = 1, -2.33, -1.5))

[State 1055, VelSet Dark]
type = VelSet
trigger1 = Root, var(40) = 1
x = 2.23 + (var(10) * 0.72)
y = -2.23 - (var(10) * 0.72)

[State 1055, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1055, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1055, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1055, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1055, HitDef]
type = HitDef
trigger1 = !Root, var(40)
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 42 + (var(44) * 14) < 7, 7, fvar(11) * 42 + (var(44) * 14))), 7
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
ground.velocity = ifElse(var(44) = 2, -5.2, -7.933), ifElse(var(44) = 2, -5.37, 0)
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -4.31, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = var(44) = 2
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
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1055, HitDef Dark]
type = HitDef
trigger1 = Root, var(40) = 1
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 49 + (var(10) * 7) < 7, 7, fvar(11) * 49 + (var(10) * 7))), 7
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
ground.velocity = ifElse(var(5) < 10, -5.2, -7.933), ifElse(var(5) < 10, -5.37, 0)
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -4.31, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = var(5) < 10
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
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1055, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1055, ChangeState]
type = ChangeState
triggerAll = !Root, var(40)
trigger1 = MoveReversed
trigger2 = !var(44) && var(5) >= 40
trigger3 = var(44) = 1 && var(5) >= 30
trigger4 = var(44) = 2 && var(5) >= 20
value = 1007
ignoreHitPause = 1

[State 1055, ChangeState Dark]
type = ChangeState
triggerAll = Root, var(40) = 1
trigger1 = MoveReversed
trigger2 = !var(10) && var(5) >= 50
trigger3 = var(10) = 1 && var(5) >= 40
trigger4 = var(10) = 2 && var(5) >= 30
value = 1007
ignoreHitPause = 1

[State 1055, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1055, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100

;---------------------------------------------------------------------------
;EX Tengyou Hadouken
[StateDef 1085]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 5
hitCountPersist = 1

[State 1085, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1085
value = 1085

[State 1085, VarSet]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(1) = 1080

[State 1085, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 45
ignorehitpause = 1

[State 1085, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = 2

[State 1085, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1085, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1085, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1085, Timer Var]
type = VarAdd
trigger1 = Time && var(5) < 50
var(5) = 1

[State 1085, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1085, VelSet]
type = VelSet
trigger1 = 1
x = 3.5
y = -3.5

[State 1085, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1085, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1085, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1085, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1085, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) > 0
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
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
ground.velocity = -5.2, -5.37
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -4.31, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1085, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1006, 1085)
ignoreHitPause = 1

[State 1085, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1085, 1007)
ignoreHitPause = 1

[State 1085, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
trigger2 = var(5) >= 50
value = 1007
ignoreHitPause = 1

[State 1085, End]
type = DestroySelf
trigger1 = pos x != [-240,240]

;---------------------------------------------------------------------------
;Air Hadouken
[StateDef 1505]
type = A
physics = N
moveType = A
ctrl = 0
anim = 1015
sprPriority = 5

[State 1505, VarSet]
type = VarSet
trigger1 = !Time
var(1) = 1500

[State 1505, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -45
ignorehitpause = 1

[State 1505, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1505, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1505, Timer Var]
type = VarAdd
trigger1 = Time && var(5) < 60
var(5) = 1

[State 1505, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1505, VelSet Dark]
type = VelSet
trigger1 = 1
x = 2.23 + (var(10) * 0.72)
y = 2.23 + (var(10) * 0.72)

[State 1505, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1505, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1505, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1505, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1505, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 42 + (var(10) * 7) < 7, 7, fvar(11) * 42 + (var(10) * 7))), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -7.933, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -4.31, -1
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
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1505, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1505, ChangeState]
type = ChangeState
trigger1 = MoveReversed
trigger2 = !var(10) && var(5) >= 45
trigger3 = var(10) = 1 && var(5) >= 35
trigger4 = var(10) = 2 && var(5) >= 25
trigger5 = Pos Y >= 0
value = 1007
ignoreHitPause = 1

[State 1505, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1505, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100

;---------------------------------------------------------------------------
;Shinkuu Hadouken Energy
[StateDef 3004]
type = S
physics = N
moveType = A
ctrl = 0
anim = 3003 + (300 * (Root, StateNo = 3300 || Root, StateNo = 3350))
sprPriority = 4

[State 3004, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 3004, ChangeAnim]
type = ChangeAnim
trigger1 = Root, Anim = 3001 || Root, Anim = 3301
trigger1 = Root, AnimElem = 1
value = Anim + 1

[State 3004, DestroySelf]
type = DestroySelf
trigger1 = Root, Anim = 3001 || Root, Anim = 3301
trigger1 = Root, AnimElem = 2
trigger2 = Root, StateNo != 3000 && Root, StateNo != 3050
trigger2 = Root, StateNo != 3300 && Root, StateNo != 3350
trigger3 = Anim = 3004 || Anim = 3304
trigger3 = !AnimTime

;---------------------------------------------------------------------------
;Shinkuu Hadouken
[StateDef 3005]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 5
HitCountPersist = 1

[State 3005, VarSet]
type = VarSet
trigger1 = !Time
var(1) = 3000

[State 3005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 3, 3005, 1007)
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
x = ifElse((Time < 2 && var(2) > 1), 1, 3.35 + (1.11 * Root, var(40)))

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
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 42 + (7*(var(2) = 1)) < 7, 7, fvar(11) * 42 + (7*(var(2) = 1)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 3), 12
guard.pauseTime = 4 * (var(2) < 3), 12
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
ground.velocity = -4.46, -6.15
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
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
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3005, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1; && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
persistent = 0
ignorehitPause = 1

[State 3005, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
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
helperType = Normal
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
value = ifElse(var(2) < 3, 3005, 1007)
ignoreHitPause = 1

[State 3005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
trigger2 = !AnimTime
value = 1007
ignoreHitPause = 1

;---------------------------------------------------------------------------
;MAX Shinkuu Hadouken
[StateDef 3055]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 5
HitCountPersist = 1

[State 3055, VarSet]
type = VarSet
trigger1 = !Time
var(1) = 3050

[State 3055, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 5, 3055, 1007)
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
x = ifElse((Time < 2 && var(2) > 1), 1, 4.46 + (1.11 * Root, var(40))) ;3.35
; Most games (including CvS2) uses the same velocity in all versions.
; I wanted to make it faster here as I think it disappears too soon in source. :P

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
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 35 + (7*(var(2) <= 3)) < 7, 7, fvar(11) * 35 + (7*(var(2) <= 3)))), 7
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
ground.velocity = -4.46, -6.15
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
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
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3055, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
persistent = 0
ignorehitPause = 1

[State 3055, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
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
helperType = Normal
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
value = ifElse(var(2) < 5, 3055, 1007)
ignoreHitPause = 1

[State 3055, ChangeState]
type = ChangeState
trigger1 = MoveReversed
trigger2 = !AnimTime
value = 1007
ignoreHitPause = 1

;---------------------------------------------------------------------------
;Shinkuu Tengyou Hadouken
[StateDef 3305]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 5
HitCountPersist = 1

[State 3305, VarSet]
type = VarSet
trigger1 = !Time
var(1) = 3300

[State 3305, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 45
ignorehitpause = 1

[State 3305, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 3, 3305, 1007)
ignoreHitPause = 1

[State 3305, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3305, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3005 && !PrevStateNo
value = 3005

[State 3305, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 1

[State 3305, VelSet]
type = VelSet
trigger1 = 1
x = ifElse((Time < 2 && var(2) > 1), .75, 2.23)
y = ifElse((Time < 2 && var(2) > 1), -.75, -2.23)

[State 3305, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = moveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3305, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3305, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3305, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 3305, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 42 + (7*(var(2) = 1)) < 7, 7, fvar(11) * 42 + (7*(var(2) = 1)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 3), 12
guard.pauseTime = 4 * (var(2) < 3), 12
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
ground.velocity = -4.46, -6.15
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
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
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3305, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
persistent = 0
ignorehitPause = 1

[State 3305, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
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

[State 3305, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
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

[State 3305, HitCount]
type = Null;ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0
ignorehitpause = 1

[State 3305, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1
persistent = 0
ignorehitpause = 1

[State 3305, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
ignorehitpause = 1

[State 3305, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [3300,3399]
var(18) = 1
ignorehitpause = 1

[State 3305, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(2) < 3, 3305, 1007)
ignoreHitPause = 1

[State 3305, ChangeState]
type = ChangeState
trigger1 = MoveReversed
trigger2 = !AnimTime
value = 1007
ignoreHitPause = 1

;---------------------------------------------------------------------------
;MAX Shinkuu Tengyou Hadouken
[StateDef 3355]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 5
HitCountPersist = 1

[State 3355, VarSet]
type = VarSet
trigger1 = !Time
var(1) = 3350

[State 3305, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 45
ignorehitpause = 1

[State 3355, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 5, 3355, 1007)
ignoreHitPause = 1

[State 3355, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3355, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3005 && !PrevStateNo
value = 3005

[State 3355, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 1

[State 3355, VelSet]
type = VelSet
trigger1 = 1
x = ifElse((Time < 2 && var(2) > 1), .75, 2.97)
y = ifElse((Time < 2 && var(2) > 1), -.75, -2.97)

[State 3355, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = moveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3355, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3355, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3355, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 3355, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
sprpriority = 5
damage = ceil(ifElse(fvar(11) * 35 + (7*(var(2) <= 3)) < 7, 7, fvar(11) * 35 + (7*(var(2) <= 3)))), 7
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
ground.velocity = -4.46, -6.15
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
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
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3355, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
persistent = 0
ignorehitPause = 1

[State 3355, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
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

[State 3355, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
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

[State 3355, HitCount]
type = Null;ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0
ignorehitpause = 1

[State 3355, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1
persistent = 0
ignorehitpause = 1

[State 3355, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
ignorehitpause = 1

[State 3355, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [3300,3399]
var(18) = 1
ignorehitpause = 1

[State 3355, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(2) < 5, 3355, 1007)
ignoreHitPause = 1

[State 3355, ChangeState]
type = ChangeState
trigger1 = MoveReversed
trigger2 = !AnimTime
value = 1007
ignoreHitPause = 1

;---------------------------------------------------------------------------
;Kei
[StateDef 6000]
type = S
physics = N
moveType = I
anim = 1
velset = 0,0
sprPriority = 0

; Intro Backpack

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = Root, StateNo = 192
trigger1 = !Time
value = 6000

[State 6000, Voice]
type = PlaySnd
trigger1 = Anim = 6000 && AnimElem = 2
value = 6000, 0
channel = 0

[State 6000, Voice]
type = PlaySnd
trigger1 = Anim = 6000 && AnimElem = 17
value = 6000, 1
channel = 0

[State 6000, Voice]
type = PlaySnd
trigger1 = Anim = 6000 && AnimElem = 25
value = 6000, 2
channel = 0

[State 6000, VelSet]
type = VelSet
trigger1 = Anim = 6000 && AnimElem = 25
x = -6

[State 6000, Step Sound]
type = PlaySnd
trigger1 = Anim = 6000
trigger1 = (AnimElem = 26 || AnimElem = 29)
value = 100, ifElse((AnimElem = 26), 0, 1)

; Win Dancing

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = Root, StateNo = 182
trigger1 = !Time
value = 6004

[State 6000, ChangeAnim]
type = ChangeAnim
triggerAll = Root, StateNo = 182
triggerAll = AnimElemTime(7) >= 0
trigger1 = Root, FrontEdgeDist >= 75 && RootDist X > -60
trigger2 = Root, FrontEdgeDist < 75 && RootDist X > 70
value = 6004
elem = 1

[State 6000, ChangeAnim]
type = ChangeAnim
triggerAll = Root, StateNo = 182
triggerAll = AnimElemTime(7) < 0
trigger1 = Root, FrontEdgeDist >= 75 && RootDist X <= -60
trigger2 = Root, FrontEdgeDist < 75 && RootDist X <= 70
value = 6004
elem = Root, AnimElemNo(0) + 6

[State 6000, VelSet]
type = VelSet
trigger1 = Root, StateNo = 182
trigger1 = !Time
x = 6

[State 6000, VelSet]
type = VelSet
trigger1 = Root, StateNo = 182
trigger1 = AnimElemTime(7) >= 0 && Vel X != 0
x = 0

[State 6000, Step Sound]
type = PlaySnd
trigger1 = Anim = 6004
trigger1 = (AnimElem = 2 || AnimElem = 5)
value = 100, ifElse((AnimElem = 2), 0, 1)

; Win Fall

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = Root, StateNo = 186
trigger1 = !Time
value = 6003

[State 6000, SprPriority]
type = SprPriority
trigger1 = Anim = 6003
value = 4

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = Root, StateNo = 186
trigger1 = AnimElemTime(7) >= 0
trigger1 = BackEdgeDist < 20
value = 6003
elem = 1

[State 6000, Step Sound]
type = PlaySnd
trigger1 = Anim = 6003
trigger1 = (AnimElem = 2 || AnimElem = 5)
value = 100, ifElse((AnimElem = 2), 0, 1)

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = Root, StateNo = 186
trigger1 = BackEdgeDist >= 20
value = 6003
elem = 7
persistent = 0

[State 6000, EnvShake]
type = EnvShake
trigger1 = Anim = 6003 && AnimElem = 9
time = 14
ampl = 4
freq = 120

[State 6000, Skid Dust]
type = Explod
trigger1 = Anim = 6003 && AnimElem = 9
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = Anim = 6003 && AnimElem = 9
value = 5100, 0

[State 6000, VelSet]
type = VelSet
trigger1 = Root, StateNo = 186
trigger1 = !Time
x = 6

[State 6000, VelAdd]
type = VelAdd
trigger1 = Anim = 6003 && AnimElemTime(9) >= 0 && Vel X > 0
x = -.325

[State 6000, VelSet]
type = VelSet
trigger1 = Anim = 6003 && Vel X < 0
x = 0

; End

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = Anim = 6000 && Pos X != [-240,240]
trigger2 = Anim = 6004 && Root, StateNo != 182
trigger3 = Anim = 6003 && Root, StateNo != 186

;---------------------------------------------------------------------------
;Sakura Petals
[StateDef 6090]
type = A
physics = N
moveType = I
anim = 1
velset = 0,0
sprPriority = 5

[State 6090, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 6090, Explod]
type = Explod
triggerAll = NumExplod(6090) <= 10
trigger1 = Time%8 = 1
anim = 6090
ID = 6090
pos = 25,-110
postype = p1
facing = ifElse(Random < 500, 1, -1)
vfacing = ifElse(Random < 500, 1, -1)
vel = -.2 - (Random%10 * .1), .7 + (Random%10 * .1)
random = 100,20
removetime = 80
scale = .5,.5
sprpriority = 5
ownpal = 1

[State 6090, DestroySelf]
type = DestroySelf
trigger1 = Root, StateNo != 181
trigger1 = Root, StateNo != 3502

;---------------------------------------------------------------------------
;Win Shoe
[StateDef 6091]
type = A
physics = N
moveType = I
anim = 6091
velset = 0,0
sprPriority = 5

[State 6091, VelSet]
type = VelSet
trigger1 = !Time
x = -1.25 * Root, const(size.xscale)
y = -2.25 * Root, const(size.yscale)

[State 6091, VelAdd]
type = VelAdd
trigger1 = Root, AnimElemTime(21) < 14
trigger2 = Root, AnimElemTime(22) >= 0
y = .08 * Root, const(size.yscale)

[State 6091, VelSet]
type = VelSet
trigger1 = Root, AnimElemTime(21) = 14
x = 0
y = 0

[State 6091, VelSet]
type = VelSet
trigger1 = Root, AnimElem = 22
x = -1 * Root, const(size.xscale)
y = -1 * Root, const(size.yscale)

[State 6091, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 6092

;Win Shoe
[StateDef 6092]
type = S
physics = S
moveType = I
anim = 6092
velset = 0,0

[State 6092, PosSet]
type = PosSet
trigger1 = 1
y = 0

;---------------------------------------------------------------------------
;Palette Helper 1
[StateDef 6100]
type = A
anim = 1
sprpriority = 2

[State 6100, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Root, Anim
elem = Root, AnimElemNo(0)

[State 6100, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6100, RemapPal]
type = RemapPal
trigger1 = !Time
source = 1,1
dest = 1,200

[State 6100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 6100, BindToRoot]
type = BindToRoot
trigger1 = 1

[State 6100, Turn]
type = Turn
trigger1 = Root, facing != facing

[State 6100, Null]
type = Null
trigger1 = !Time
trigger1 = var(0) := 0 || var(1) := 256
trigger2 = var(0) <= 0
trigger2 = var(10) := 0
trigger3 = var(0) >= 256
trigger3 = var(10) := 1

[State 6100, VarAdd]
type = VarAdd
trigger1 = var(0) < 256 && !var(10)
var(0) = 6

[State 6100, VarAdd]
type = VarAdd
trigger1 = var(0) > 0 && var(10)
var(0) = -6

[State 6100, VarAdd]
type = VarAdd
trigger1 = var(1) > 0 && !var(10)
var(1) = -6

[State 6100, VarAdd]
type = VarAdd
trigger1 = var(1) < 256 && var(10)
var(1) = 6

[State 6100, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(0), var(1)

;[State 6100, BGPalFX]
;type = BGPalFX
;trigger1 = !Time
;time = 85
;sinadd = 0,-64,-64,168

[State 6100, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(0) = %d,   var(1) = %d,   var(10) = %d,   var(2) = %d"
params = var(0), var(1), var(10), var(2)

[State 6100, VarSet]
type = VarSet
trigger1 = var(2) && !var(10)
var(2) = 0

[State 6100, VarAdd]
type = VarAdd
trigger1 = var(10)
var(2) = 1

[State 6100, Explod]
type = Explod
trigger1 = !NumExplod(0) && var(0) = 258
anim = 5300
ID = 0
posType = P1
pos = 0,0
scale = (Root, const(size.xscale)), (Root, const(size.yscale))
bindTime = -1
removeTime = 32
ownpal = 0
sprpriority = 5

[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(0)
ID = 0
scale = (Root, const(size.xscale)) + (0.01 * var(2)), (Root, const(size.yscale)) + (0.01 * var(2))
trans = AddAlpha
alpha = 256 - var(2) * 8, var(2) * 8

[State 6100, EnvShake]
type = EnvShake
trigger1 = var(0) = 258
time = 8
ampl = 4
freq = 120

[State 6100, DestroySelf]
type = DestroySelf
trigger1 = Time >= 85

;---------------------------------------------------------------------------
;Palette Helper 2
[StateDef 6110]
type = A
anim = 1
sprpriority = 1

[State 6110, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Root, Anim
elem = Root, AnimElemNo(0)

[State 6110, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6110, RemapPal]
type = RemapPal
trigger1 = !Time
source = 1,1
dest = 1,1

[State 6110, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 6110, BindToRoot]
type = BindToRoot
trigger1 = 1

[State 6110, Turn]
type = Turn
trigger1 = Root, facing != facing

[State 6110, DestroySelf]
type = DestroySelf
trigger1 = Root, Anim = 301 && Root, AnimElem = 19
trigger2 = Root, StateNo != 301

;---------------------------------------------------------------------------
;Lightning FX
[StateDef 6200]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 6200, BGPalFX]
type = BGPalFX
trigger1 = Time >= 1
time = 1
color = 256
mul = 32 + 14 * Time, 32 + 14 * Time, 128 + 8 * Time

[State 6200, Lightning Explod]
type = Explod
trigger1 = !Time
anim = 8351
ID = 2
sprPriority = 2
posType = P1
pos = 0, -Ceil(Pos Y)
superMoveTime = -1
ownPal = 1

[State 6200, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 750, 0

[State 6200, End]
type = DestroySelf
trigger1 = Time >= 16

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
scale = (0.3 - (Time * 0.03)) * ifElse(Root,var(56), 0.65, 1), (0.3 - (Time * 0.03)) * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.15 + (0.009375 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.15 + (0.009375 * Time)) * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.15 + (0.009375 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.15 + (0.009375 * Time)) * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.3 - (0.0375 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.3 - (0.0375 * Time)) * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.35 - (Time * 0.035)) * ifElse(Root,var(56), 0.65, 1), (0.35 - (Time * 0.035)) * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.175 + (0.0109375 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.175 + (0.0109375 * Time)) * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.175 + (0.0109375 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.175 + (0.0109375 * Time)) * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.35 - (0.04375 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.35 - (0.04375 * Time))  * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.4 - (Time * 0.04)) * ifElse(Root,var(56), 0.65, 1), (0.4 - (Time * 0.04)) * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.2 + (0.0125 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.2 + (0.0125 * Time)) * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.2 + (0.0125 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.2 + (0.0125 * Time)) * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.4 - (0.05 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.4 - (0.05 * Time)) * ifElse(Root,var(56), 0.65, 1)
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
anim = 8010 + Root,var(55)*10
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
scale = (0.45 - (Time * 0.045)) * ifElse(Root,var(56), 0.65, 1), (0.45 - (Time * 0.045)) * ifElse(Root,var(56), 0.65, 1)
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
anim = 8011 + Root,var(55)*10
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
scale = (0.225 + (0.0140625 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.225 + (0.0140625 * Time)) * ifElse(Root,var(56), 0.65, 1)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012 + Root,var(55)*10
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
scale = (0.225 + (0.0140625 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.225 + (0.0140625 * Time)) * ifElse(Root,var(56), 0.65, 1)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013 + Root,var(55)*10
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
scale = (0.4) * ifElse(Root,var(56), 0.65, 1), (0.4) * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.45 - (0.05625 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.45 - (0.05625 * Time)) * ifElse(Root,var(56), 0.65, 1)
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
anim = 8010 + Root,var(55)*20
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
scale = (0.5 - (Time * 0.05)) * ifElse(Root,var(56), 0.65, 1), (0.5 - (Time * 0.05)) * ifElse(Root,var(56), 0.65, 1)
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
anim = 8011 + Root,var(55)*20
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
scale = (0.25 + (0.015625 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.25 + (0.015625 * Time)) * ifElse(Root,var(56), 0.65, 1)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012 + Root,var(55)*20
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
scale = (0.25 + (0.015625 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.25 + (0.015625 * Time)) * ifElse(Root,var(56), 0.65, 1)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013 + Root,var(55)*20
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
scale = (0.5) * ifElse(Root,var(56), 0.65, 1), (0.5) * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.5 - (0.0625 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.5 - (0.0625 * Time)) * ifElse(Root,var(56), 0.65, 1)
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
;scale = 0.12 + (0.09375 * Time), 0.12 + (0.09375 * Time)
scale = (0.25 + (0.09375 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.25 + (0.09375 * Time)) * ifElse(Root,var(56), 0.65, 1)
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


;Shun Goku Satsu Hit Spark
[StateDef 8030]
type = A
physics = N
moveType = I
anim = 8010 + Root,var(55)*20
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
scale = (0.5 - (Time * 0.05)) * ifElse(Root,var(56), 0.65, 1), (0.5 - (Time * 0.05)) * ifElse(Root,var(56), 0.65, 1)
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
anim = 8010 + Root,var(55)*20
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
scale = (0.5 - (Time * 0.05)) * ifElse(Root,var(56), 0.65, 1), (0.5 - (Time * 0.05)) * ifElse(Root,var(56), 0.65, 1)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8030, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011 + Root,var(55)*20
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
scale = (0.25 + (0.015625 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.25 + (0.015625 * Time)) * ifElse(Root,var(56), 0.65, 1)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8030, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012 + Root,var(55)*20
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
scale = (0.25 + (0.015625 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.25 + (0.015625 * Time)) * ifElse(Root,var(56), 0.65, 1)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8030, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013 + Root,var(55)*20
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
scale = (0.5) * ifElse(Root,var(56), 0.65, 1), (0.5) * ifElse(Root,var(56), 0.65, 1)
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
scale = (0.5 - (0.0625 * Time)) * ifElse(Root,var(56), 0.65, 1), (0.5 - (0.0625 * Time)) * ifElse(Root,var(56), 0.65, 1)
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
pos = 0, ceil(Pos Y)
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
y = ceil(PlayerID(var(0)), Pos Y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8150, PosSet (Laying Down)]
type = PosSet
trigger1 = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), Pos Y) - 20

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
y = ceil(PlayerID(var(0)), Pos Y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8151, PosSet (Laying Down)]
type = PosSet
trigger1 = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), Pos Y) - 20

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
pos = 0, -ceil(Pos Y)
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
pos = 0, -ceil(Pos Y)
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
anim = 8525 + (Root,var(40))
ID = 20
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Portrait 2]
type = Explod
trigger1 = !Time
anim = 8525 + (Root,var(40))
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
trigger1 = !Time && Root, var(23) = 900
var(0) = 1

[State 8600, Move Name: Shinkuu Hadouken]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000,3099])
var(0) = 2

[State 8600, Move Name: Midare Zakura]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100,3199])
trigger2 = !Time && (Root, var(23) = [3600,3699])
var(0) = 3

[State 8600, Move Name: Haru Ichiban]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3200,3299])
var(0) = 4

[State 8600, Move Name: Shinkuu Tengyou Hadouken]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3300,3399])
var(0) = 5

[State 8600, Move Name: Haru Issen]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3400,3499])
var(0) = 6

[State 8600, Move Name: Shun Goku Satsu]
type = VarSet
trigger1= !Time && (Root, var(23) = [3500,3599])
var(0) = 7

[State 8600, Move Name: Haru Ranman]
type = VarSet
trigger1= !Time && (Root, var(23) = [3700,3799])
var(0) = 8

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

;---------------------------------------------------------------------------
; SGS Finish
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
type = PlaySnd
trigger1 = !Time
value = 3500, 1

[State 8610, Black]
type = BGPalFX
trigger1 = Time < 60
time = 2
add = -255, -255, -255

[State 8610, Black]
type = BGPalFX
trigger1 = time = 60
time = 60
add = -255, -255, -255
sinadd = 255, 255, 255, 240

[State 8610, Fade]
type = PalFX
trigger1 = time = 60
time = 60
sinadd = -255, -255, -255, 240

[State 8610, Kanji]
type = Explod
trigger1 = !Time
anim = 8605
ID = 8610
sprpriority = -5
postype = Left
pos = 160, 120
scale = 0.5 * (1.3333333 * gameheight / gamewidth), 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = -1

[State 8600, Petals]
type = Explod
trigger1 = !Time
anim = 8604
ID = 8604
ontop = 1
postype = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = -1
trans = add

[State 8610, Text 1]
type = Explod
trigger1 = !Time
anim = 8617
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
anim = 8617
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
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = nobardisplay
ignorehitpause = 1

[State 8610, Assert]
type = AssertSpecial
trigger1 = time < 60
flag = noFG
ignorehitpause = 1

[State 8610, Safety]
type = RemoveExplod
trigger1 = time >= 120

[State 8610, End]
type = DestroySelf
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
 
[State 90000005, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "by JustMorphPointman"
ignoreHitPause = 1