; _________________________________________
;| Adler by Saikou Shiva                   |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER MOVES>========================================
;==============================================================================================

;---------------------------------------------------------------
; Größer Flak Tritt
[StateDef 3000]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 2
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 1
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-20 * const(size.xScale)), ceil(-9 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(17) <= 0
value = 20,0

[State 3000, Width]
type = Width
trigger1 = animelemtime(20) >= 0
trigger2 = FrontEdgeDist <= 5
edge = 35,0
player = 15,0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12
value = 4,2
channel = 0

[State 3000, Slash Sound]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 13
value = 1100,1
channel = 1

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElemTime(19) = 2
value = 4,1
channel = 0

[State 3000, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3000, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3000, Flak Tritt FX 1]
type = Explod
trigger1 = AnimElem = 5
anim = ifElse(var(55)=7,30050, 3005)
ID = 3005
pos = 20, -77
postype = p1
facing = 1
scale = .5,.5
removetime = -2
sprpriority = 1
bindtime = 9999
ignorehitpause = 0

[State 3000, Flak Tritt FX 2]
type = Explod
trigger1 = AnimElemTime(3) = 1
trigger2 = AnimElemTime(11) = 1
anim = ifElse(var(55)=7,11050, 1105)
ID = 1115
pos = 29, -65
postype = p1
facing = 1
scale = .44, .48
removetime = -2
sprpriority = 5
bindtime = 9999
ignorehitpause = 0

[State 3000, Divekick FX]
type = Explod
trigger1 = AnimElem = 20
anim = ifElse(var(55)=7,11350, 1135)
ID = 1145
pos = 28, -20
postype = p1
facing = 1
scale = .5,.5
removetime = -2
sprpriority = 3
bindtime = 9999
ignorehitpause = 0

[State 3000, Velocity]
type = VelSet
trigger1 = time = 43
x = 3

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 5.25
y = -3

[State 3000, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
y = 0.01

[State 3000, Wall Velocity]
type = VelSet
trigger1 = AnimElemTime(20) >= 0
trigger1 = FrontEdgeDist <= 35
x = 0

[State 3000, Divekick Velocity]
type = VelSet
trigger1 = AnimElemTime(20) = 0
x = 7
y = 4

[State 3000, Gravity]
type = VelAdd
trigger1 = AnimElemTime(20) >= 0
y = 0.45

[State 3000, HitDef 1,4]
type = HitDef
triggerAll = !var(16) && var(15) < 8 || (var(55) = [21,22]) && var(54) = 1
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.16, -5.81
ground.cornerPush.velOff = 0
guard.velocity = -6.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, -4.81
air.cornerPush.velOff = 0
yAccel = 0.54
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -42
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef 2,5]
type = HitDef
triggerAll = !var(16) && var(15) < (8 + HitCount)
trigger1 =  AnimElem = 5
trigger2 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.16, -4.81
ground.cornerPush.velOff = 0
guard.velocity = -6.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, -3.81
air.cornerPush.velOff = 0
yAccel = 0.61
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef 3,6]
type = HitDef
triggerAll = !var(16) && var(15) < (9 + HitCount)
trigger1 =  AnimElem = 7
trigger2 = AnimElem = 15
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.16, -2.81
ground.cornerPush.velOff = 0
guard.velocity = -6.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, -2.81
air.cornerPush.velOff = 0
yAccel = 0.68
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef 7]
type = HitDef
trigger1 = !var(16) && var(15) < (10 + HitCount)
trigger1 = AnimElem = 20
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -3.06, 3
ground.cornerPush.velOff = 0
guard.velocity = -6.16
guard.cornerPush.velOff = 0
air.velocity = -3.06, 3
air.cornerPush.velOff = 0
yAccel = 0.75
fall = 1
fall.recover = 0
down.bounce = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -13
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3000, ChangeState]
type = ChangeState
trigger1 = (Vel y > -1) && (Pos y >= -1)
trigger1 = time >= 88
value = 3005

;---------------------------------------------------------------
;Landing
[StateDef 3005]
type = S
anim = 1121
physics = N
moveType = I
velSet = 0,0

[State 3005, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = 1121

[State 3005, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3005, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3005, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3005, End]
type = ChangeState
trigger1 = AnimElemTime(4) >= 0 && command = "holddown"
value = 11
ctrl = 1

[State 3005, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------
; MAX Größer Flak Tritt
[StateDef 3030]
type = S
physics = S
moveType = A
anim = 3030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3030, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3030, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3030, Corner Push]
type = VarSet
trigger1 = Time = 2
fvar(5) = 0

[State 3030, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3030, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3030, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3030, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 1
time = 1
value = SCA

[State 3030, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-20 * const(size.xScale)), ceil(-9 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3030, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3030, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(25) <= 0
value = 20,0

[State 3030, Width]
type = Width
trigger1 = animelemtime(28) >= 0
trigger2 = FrontEdgeDist <= 5
edge = 35,0
player = 15,0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12
trigger3 = AnimElem = 20
value = 4,2
channel = 0

[State 3000, Slash Sound]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 13
trigger3 = AnimElem = 21
value = 1100,1
channel = 1

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElemTime(27) = 2
value = 4,1
channel = 0

[State 3030, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3030, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3030, Flak Tritt FX 1]
type = Explod
trigger1 = AnimElem = 5
anim = ifElse(var(55)=7,30350, 3035)
ID = 3035
pos = 20, -77
postype = p1
facing = 1
scale = .5,.5
removetime = -2
sprpriority = 1
bindtime = 9999
ignorehitpause = 0

[State 3030, Flak Tritt FX 2]
type = Explod
trigger1 = AnimElemTime(3) = 1
trigger2 = AnimElemTime(11) = 1
trigger3 = AnimElemTime(19) = 1
anim = ifElse(var(55)=7,11050, 1105)
ID = 1125
pos = 29, -65
postype = p1
facing = 1
scale = .44, .48
removetime = -2
sprpriority = 5
bindtime = 9999
ignorehitpause = 0

[State 3030, Divekick FX]
type = Explod
trigger1 = AnimElem = 28
anim = ifElse(var(55)=7,30010, 3001)
ID = 3001
pos = 0, -58
postype = p1
facing = 1
scale = .5,.5
removetime = -2
sprpriority = 3
bindtime = 9999
ignorehitpause = 0

[State 3030, Velocity]
type = VelSet
trigger1 = time = 43
x = 3

[State 3030, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 5.25
y = -3

[State 3030, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
y = 0.01

[State 3030, Wall Velocity]
type = VelSet
trigger1 = AnimElemTime(28) >= 0
trigger1 = FrontEdgeDist <= 35
x = 0

[State 3030, Divekick Velocity]
type = VelSet
trigger1 = AnimElemTime(28) = 0
x = 7
y = 4

[State 3030, Gravity]
type = VelAdd
trigger1 = AnimElemTime(28) >= 0
y = 0.45

[State 3030, HitDef 1,4,7]
type = HitDef
triggerAll = !var(16) && var(15) < 10
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
trigger3 = AnimElem = 19
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.16, -5.81
ground.cornerPush.velOff = 0
guard.velocity = -6.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, -4.81
air.cornerPush.velOff = 0
yAccel = 0.54
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -42
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3030, HitDef 2,5,8]
type = HitDef
triggerAll = !var(16) && var(15) < (10 + HitCount)
trigger1 =  AnimElem = 5
trigger2 = AnimElem = 13
trigger3 = AnimElem = 21
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.16, -4.81
ground.cornerPush.velOff = 0
guard.velocity = -6.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, -4.81
air.cornerPush.velOff = 0
yAccel = 0.57
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3030, HitDef 3,6,9]
type = HitDef
triggerAll = !var(16) && var(15) < (11 + HitCount)
trigger1 =  AnimElem = 7
trigger2 = AnimElem = 15
trigger3 = AnimElem = 23
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.16, -2.91
ground.cornerPush.velOff = 0
guard.velocity = -6.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, -2.91
air.cornerPush.velOff = 0
yAccel = 0.68
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3030, HitDef 10]
type = HitDef
trigger1 = !var(16) && var(15) < (12 + HitCount)
trigger1 = AnimElem = 28
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 6
air.hitTime = 120
ground.velocity = -3.06, 3
ground.cornerPush.velOff = 0
guard.velocity = -6.16
guard.cornerPush.velOff = 0
air.velocity = -3.06, 3
air.cornerPush.velOff = 0
yAccel = 0.75
fall = 1
fall.recover = 0
down.bounce = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -13
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3030, ChangeState]
type = ChangeState
trigger1 = (Vel y > -1) && (Pos y >= -1)
trigger1 = time >= 105
value = 3005

;--------------------------------------------------------------
; Größer Blitzkugel
[Statedef 3100]
type = S
physics = S
movetype = A
anim = 3100
ctrl = 0
velset = 0, 0
poweradd = -1000
sprpriority = 1
facep2 = 0

[State 3100, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3100, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = (prevstateno = [1000,2999]) || var(20)

[State 3100, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000,4999])

[State 3100, EX reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Voice]
type = playsnd
trigger1 = animelem = 3
value = ifElse(var(55)=7,5, 4), ifElse(var(55)=7,2, 3)
channel = 0

[State 3100, Snd]
type = playsnd
trigger1 = animelemtime(2) = 40
value = 1000, 2

[State 3100, Super Pause FX]
type = helper
trigger1 = time = 2
helpertype = normal
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 28, -77
ownpal = 1
persistent = 0
supermovetime = 9999

[State 3100, SuperPause]
type = SuperPause
trigger1 = time = 2
time = 44
movetime = 44
anim = -1
sound = s8500,0
p2defmul = 1
darken = 0

[State 3100, Corner Push]
type = varset
trigger1 = animelem = 1
fvar(5) = 0

[State 3100, NotHitBy]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA

[State 3100, Blitzkugel FX]
type = Explod
trigger1 = AnimElemTime(2) = 6
anim = ifElse(var(55)=7,31010, 3101)
ID = 3101
pos = ceil(56 * const(size.xScale)), ceil(-158 * const(size.xScale))
postype = p1
bindtime = 1
removetime = -2
scale = .45,.45
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
supermovetime = 50

[State 3100, Electric Charge FX]
type = Explod
trigger1 = AnimElem = 2
anim = ifElse(var(55)=7,31080, 3108)
ID = 3108
pos = -10, -56
postype = p1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
supermovetime = 60

[State 3100, Grosse Kugel Proj]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 3105
ID = 3105
name = "Kugel Projectile"
postype = p1
pos = 30, -77
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3100, Dust]
type = explod
trigger1 = animelem = 3
vel = 0, 0
anim = 8106
ID = 8106
sprpriority = 3
postype = p1
pos = 30, 0
ownpal = 1
scale = 0.75, 0.75
pausemovetime = -1
supermovetime = -1

[State 3100, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;--------------------------------------------------------------
; MAX Größer Blitzkugel
[Statedef 3130]
type = S
physics = S
movetype = A
anim = 3130
ctrl = 0
velset = 0, 0
poweradd = -2000
sprpriority = 1
facep2 = 0

[State 3130, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3130, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = (prevstateno = [1000,2999]) || var(20)

[State 3130, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000,4999])

[State 3130, EX reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3130, Voice]
type = playsnd
trigger1 = animelem = 3
value = ifElse(var(55)=7,5, 4), ifElse(var(55)=7,2, 3)
channel = 0

[State 3130, Snd]
type = playsnd
trigger1 = animelemtime(2) = 40
value = 1000, 2

[State 3130, Super Pause FX]
type = helper
trigger1 = time = 2
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = 28, -77
ownpal = 1
persistent = 0
supermovetime = 9999

[State 3130, SuperPause]
type = SuperPause
trigger1 = time = 2
time = 44
movetime = 44
anim = -1
sound = s8500,1
p2defmul = 1
darken = 0

[State 3130, Corner Push]
type = varset
trigger1 = animelem = 1
fvar(5) = 0

[State 3130, NotHitBy]
type = nothitby
trigger1 = animelemtime(3) < 3
time = 1
value = SCA

[State 3130, Blitzkugel FX]
type = Explod
trigger1 = AnimElemTime(2) = 6
anim = ifElse(var(55)=7,31010, 3101)
ID = 3101
pos = ceil(56 * const(size.xScale)), ceil(-158 * const(size.xScale))
postype = p1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
supermovetime = 50

[State 3130, Electric Charge FX]
type = Explod
trigger1 = AnimElem = 2
anim = ifElse(var(55)=7,31080, 3108)
ID = 3138
pos = -10, -56
postype = p1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
supermovetime = 60

[State 3130, Grosse Kugel Proj]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 3135
ID = 3105
name = "Kugel Projectile"
postype = p1
pos = 30, -77
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3130, Dust]
type = explod
trigger1 = animelem = 3
vel = 0, 0
anim = 8106
ID = 8106
sprpriority = 3
postype = p1
pos = 30, 0
ownpal = 1
scale = 0.75, 0.75
pausemovetime = -1
supermovetime = -1

[State 3130, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;--------------------------------------------------------------
; Air - Größer Blitzkugel
[Statedef 3150]
type = A
physics = N
movetype = A
anim = 3150
ctrl = 0
velset = 0, 0
poweradd = -1000
sprpriority = 1
facep2 = 1

[State 3150, PosSet]
type = PosSet
trigger1 = AnimElemTime(2) <= 0
trigger1 = pos y > -vel y
y = -1

[State 3150, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3150, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = (prevstateno = [1000,2999]) || var(20)

[State 3150, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000,4999])

[State 3150, EX reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Voice]
type = playsnd
trigger1 = animelem = 3
value = ifElse(var(55)=7,5, 4), ifElse(var(55)=7,2, 3)
channel = 0

[State 3150, Snd]
type = playsnd
trigger1 = animelemtime(2) = 40
value = 1000, 2

[State 3150, Super Pause FX]
type = helper
trigger1 = time = 2
helpertype = normal
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 32, -81
ownpal = 1
persistent = 0
supermovetime = 9999

[State 3150, SuperPause]
type = SuperPause
trigger1 = time = 2
time = 44
movetime = 44
anim = -1
sound = s8500,0
p2defmul = 1
darken = 0

[State 3150, Corner Push]
type = varset
trigger1 = animelem = 1
fvar(5) = 0

[State 3150, NotHitBy]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA

[State 3150, Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = -2.2
y = -4.35

[State 3150, Air Freeze]
type = PosFreeze
trigger1 = AnimELemTime(2) >= 1
trigger1 = AnimElemTime(3) <= 0
value = 1

[State 3150, Forward Momentum]
type = Veladd
trigger1 = AnimElemTime(7) >= 0
x = .1

[State 3150, Gravity]
type = VelAdd
trigger1 = AnimElemTime(3)<=0
y = .07

[State 3150, Gravity]
type = VelAdd
trigger1 = AnimElemTime(3)>=0
y = .51

[State 3150, Blitzkugel FX]
type = Explod
trigger1 = AnimElemTime(2) = 6
anim = ifElse(var(55)=7,31010, 3101)
ID = 3101
pos = ceil(63 * const(size.xScale)), ceil(-164 * const(size.xScale))
postype = p1
bindtime = 1
removetime = -2
scale = .45,.45
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
supermovetime = 50

[State 3150, Electric Charge FX]
type = Explod
trigger1 = AnimElem = 2
anim = ifElse(var(55)=7,31080, 3108)
ID = 3158
pos = -5, -58
postype = p1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
supermovetime = 60

[State 3150, Grosse Kugel Proj]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 3105
ID = 3105
name = "Kugel Projectile"
postype = p1
pos = 34, -81
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3150, Dust]
type = explod
trigger1 = animelem = 3
vel = 0, 0
anim = 8106
ID = 8106
sprpriority = 3
postype = p1
pos = 30, 0
ownpal = 1
scale = 0.75, 0.75
pausemovetime = -1
supermovetime = -1

[State 3150, End]
type = ChangeState
trigger1 = AnimElemTime(3) >= 0
trigger1 = pos y > -vel y
value = 3155

;---------------------------------------------------------------
;Landing
[StateDef 3155]
type = S
anim = 1055
physics = N
moveType = I
velSet = 0,0

[State 3155, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = 3155

[State 3155, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3155, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3155, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3155, End]
type = ChangeState
trigger1 = AnimElemTime(3) >= 0 && command = "holddown"
value = 11
ctrl = 1

[State 3155, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------
; MAX Air - G.Blitzkugel
[Statedef 3180]
type = A
physics = N
movetype = A
anim = 3150
ctrl = 0
velset = 0, 0
poweradd = -2000
sprpriority = 1
facep2 = 1

[State 3180, PosSet]
type = PosSet
trigger1 = AnimElemTime(2) <= 0
trigger1 = pos y > -vel y
y = -1

[State 3180, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3180, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = (prevstateno = [1000,2999]) || var(20)

[State 3180, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000,4999])

[State 3180, EX reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3180, Voice]
type = playsnd
trigger1 = animelem = 3
value = ifElse(var(55)=7,5, 4), ifElse(var(55)=7,2, 3)
channel = 0

[State 3180, Snd]
type = playsnd
trigger1 = animelemtime(2) = 40
value = 1000, 2

[State 3180, Super Pause FX]
type = helper
trigger1 = time = 2
helpertype = normal
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = 32, -81
ownpal = 1
persistent = 0
supermovetime = 9999

[State 3180, SuperPause]
type = SuperPause
trigger1 = time = 2
time = 44
movetime = 44
anim = -1
sound = s8500,1
p2defmul = 1
darken = 0

[State 3180, Corner Push]
type = varset
trigger1 = animelem = 1
fvar(5) = 0

[State 3180, NotHitBy]
type = nothitby
trigger1 = animelemtime(3) < 1
time = 1
value = SCA

[State 3180, Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = -2.2
y = -4.35

[State 3180, Air Freeze]
type = PosFreeze
trigger1 = AnimELemTime(2) >= 1
trigger1 = AnimElemTime(3) <= 0
value = 1

[State 3180, Forward Momentum]
type = Veladd
trigger1 = AnimElemTime(7) >= 0
x = .1

[State 3180, Gravity]
type = VelAdd
trigger1 = AnimElemTime(3)<=0
y = .07

[State 3180, Gravity]
type = VelAdd
trigger1 = AnimElemTime(3)>=0
y = .51

[State 3180, Blitzkugel FX]
type = Explod
trigger1 = AnimElemTime(2) = 6
anim = ifElse(var(55)=7,31010, 3101)
ID = 3101
pos = ceil(63 * const(size.xScale)), ceil(-164 * const(size.xScale))
postype = p1
bindtime = 1
removetime = -2
scale = .45,.45
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
supermovetime = 50

[State 3180, Electric Charge FX]
type = Explod
trigger1 = AnimElem = 2
anim = ifElse(var(55)=7,31080, 3108)
ID = 3188
pos = -5, -58
postype = p1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
supermovetime = 60

[State 3180, Grosse Kugel Proj]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 3135
ID = 3135
name = "Kugel Projectile"
postype = p1
pos = 34, -81
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3180, Dust]
type = explod
trigger1 = animelem = 3
vel = 0, 0
anim = 8106
ID = 8106
sprpriority = 3
postype = p1
pos = 30, 0
ownpal = 1
scale = 0.75, 0.75
pausemovetime = -1
supermovetime = -1

[State 3180, End]
type = ChangeState
trigger1 = AnimElemTime(3) >= 0
trigger1 = pos y > -vel y
value = 3155

;-------------------------------------------------------------
;Größer Blitzbombe
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1

[State 3200, NotHitBy (Projectiles)]
type= NotHitBy
trigger1 = AnimElemTime(6) > 1
trigger1 = AnimElemTime(39) < 0
value = , AP
time = 1

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = p1
pos = 0, -78
facing = facing
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000, ifElse(var(55)=7,1, 0)
channel = 1

[State 3200, Elctrcty Snd]
type = PlaySnd
trigger1 = Animelem = 6 || Animelem = 10 || Animelem = 14
trigger2 = Animelem = 18 || Animelem = 22 || Animelem = 26
trigger3 = Animelem = 30 || Animelem = 34 || Animelem = 38
value = 1000, 2
channel = 1

[State 3200, Hitting Floor]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 3000, 2

[State 3200, Shock FX]
type = Explod
trigger1 = AnimElem = 6
anim = ifElse(var(55)=7,32010, 3201)
ID = 3201;3310
sprPriority = 2
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 2
scale = 0.8, 0.8
removeOnGetHit = 1
ignoreHitPause = 0
supermovetime = 12
ownPal = 1

[State 3200, Electricity FX 1]
type = Explod
trigger1 = AnimElem = 5
anim = ifElse(var(55)=7,32020, 3202)
ID = 3202;3315
sprPriority = 1
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 1.25, 1.5
removeOnGetHit = 1
ignoreHitPause = 0
supermovetime = 12
ownPal = 1

[State 3200, Electricity FX 2]
type = Explod
trigger1 = AnimElem = 5
anim = ifElse(var(55)=7,320020, 32002)
ID = 32002;3315
sprPriority = 1
bindtime = -1
removeTime = -1
posType = P1
pos = 26, 0
scale = 1.25, 1.5
removeOnGetHit = 1
ignoreHitPause = 0
supermovetime = 12
ownPal = 1

[State 3200, Electricity FX 3]
type = Explod
trigger1 = AnimElem = 5
anim = ifElse(var(55)=7,320020, 32002)
ID = 32002;3315
sprPriority = 1
bindtime = -1
removeTime = -1
posType = P1
pos = -26, 0
scale = 1.25, 1.5
removeOnGetHit = 1
ignoreHitPause = 0
supermovetime = 12
ownPal = 1

[State 3200, B.Bombe Skull FX]
type = Explod
trigger1 = AnimElemTime(4) = 36
anim = ifElse(var(55)=7,32030, 3203)
ID = 3203;3315
sprPriority = 2
bindtime = -1
removeTime = -1
posType = P1
pos = 0, -90
scale = 1, 1
removeOnGetHit = 1
ignoreHitPause = 0
supermovetime = 12
ownPal = 1

[State 3200, RemoveExplod Shock]
type = RemoveExplod
trigger1 = AnimElemTime(42) = 0
ID = 3201

[State 3200, RemoveExplod Electricity 1]
type = RemoveExplod
trigger1 = AnimElemTime(40) = 1
ID = 3202

[State 3200, RemoveExplod Electricity 2 & 3]
type = RemoveExplod
trigger1 = AnimElemTime(40) = 1
ID = 32002

[State 3200, RemoveExplod Skull]
type = RemoveExplod
trigger1 = AnimElemTime(40) = 1
ID = 3203

[State 3200, HitDef 1 - 8]
type = HitDef
triggerAll = !var(16) && (var(15) < 36 || var(20))
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
trigger3 = AnimElem = 14
trigger4 = AnimElem = 18
trigger5 = AnimElem = 22
trigger6 = AnimElem = 26
trigger7 = AnimElem = 30
trigger8 = AnimElem = 34
attr = S, SA
hitFlag = MAFD
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 8
guard.pauseTime = 0, 8
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 20
ground.slideTime = 20
guard.hitTime = 20
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -0.32
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.61
fall = 1
air.fall = 1
fall.recover = 0
kill = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ceil(P2Dist x - 10)), var(36) := ceil(P2Dist y - 65)
palfx.time = 16
palfx.sinadd = 120,120,120,12
palfx.add = ifElse(var(55)=7,-100,70),ifElse(var(55)=7,-20,-120),10
palfx.color = 0
palfx.invertall = 1
envShake.time = 46
envShake.ampl = 6
envShake.freq = 120

[State 3200, HitDef 9]
type = HitDef
triggerAll = !var(16) && var(15) < (36 + HitCount)
trigger1 = AnimElem = 38
attr = S, SA
hitFlag = MAFD
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 8
guard.pauseTime = 0, 8
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 20
ground.slideTime = 20
guard.hitTime = 8
air.hitTime = 120
ground.velocity = -4.32, -6
ground.cornerPush.velOff = 0
guard.velocity = -4.32
guard.cornerPush.velOff = 0
air.velocity = -4.32, -6
air.cornerPush.velOff = 0
yAccel = 0.69
fall = 1
air.fall = 1
fall.recover = 0
kill = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ceil(P2Dist x - 10)), var(36) := ceil(P2Dist y - 65)
palfx.time = 42
palfx.sinadd = 120,120,120,12
palfx.add = ifElse(var(55)=7,-100,70),ifElse(var(55)=7,-20,-120),10
palfx.color = 0
palfx.invertall = 1
envShake.time = 46
envShake.ampl = 6
envShake.freq = 120

[State 3200, Shock Particles]
type = Helper
trigger1 = !NumHelper(8155)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(39) >= 0
moveType = I

[State 3200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------
; Blitzgeist
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3300, Blitzgeist Orb Time]
type = VarSet
trigger1 = Time >= 13
var(24) = 430

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 47

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(11) < 0
value = SCA
time = 1

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 0, -78
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 50
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,2
darken = 0

[State 3300, Blitzgeist Charge FX]
type = Explod
trigger1 = AnimElem = 6
anim = ifElse(var(55)=7,33070, 3307)
ID = 3307
pos = -52, -94
postype = p1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
supermovetime = 50

[State 3300, Blitzgeist Orb]
type = helper
trigger1 = AnimElemTime(7) = 20;6
helpertype = normal
stateno = 3315
ID = 3315
name = "Blitzgeist Orb"
postype = p1
pos = -2, -62;30, -77
size.xscale = 0.5
size.yscale = 0.5
supermovetime=60
ownpal = 1

[State 3300, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3300, ifElse(var(55)=7,1, 0)
channel = 1

;[State 3300, Elctrcty Snd]
;type = PlaySnd
;trigger1 = Animelem = 6 || Animelem = 9 || Animelem = 12 || Animelem = 15
;trigger2 = Animelem = 18 || Animelem = 21 || Animelem = 24
;trigger3 = Animelem = 27 || Animelem = 30 || Animelem = 33
;value = 1000, 1

[State 3300, Shock FX]
type = Explod
trigger1 = AnimElem = 5
anim = 3310
ID = 3310
sprPriority = 2
bindtime = -1
removeTime = -1
posType = P1
pos = -6, 0
scale = 0.75, 0.5
removeOnGetHit = 1
ignoreHitPause = 0
supermovetime = 12
ownPal = 1

[State 3300, Electricity FX]
type = Explod
trigger1 = AnimElem = 5
anim = 3315
ID = 3315
sprPriority = 1
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 1.25, 1.5
removeOnGetHit = 1
ignoreHitPause = 0
supermovetime = 12
ownPal = 1

[State 3300, RemoveExplod Shock]
type = RemoveExplod
trigger1 = AnimElemTime(35) = 3
ID = 3310

[State 3300, RemoveExplod Electricity]
type = RemoveExplod
trigger1 = AnimElemTime(35) = 3
ID = 3315

[State 3300, Shock Particles]
type = Helper
trigger1 = !NumHelper(8155)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(34) >= 0
moveType = I

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1