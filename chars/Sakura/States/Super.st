; ________________________________
;| Sakura Kasugano by DeathScythe |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

;---------------------------------------------------------------------------
;Shinkuu Hadouken
[StateDef 3000]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, 0, -1000)
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

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
trigger1 = Time = 3
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
trigger1 = Anim = 3000
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
pos = -16,-63
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3000 && Time >= 43
value = 3001

[State 3000, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 3000,0
channel = 0

[State 3000, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 3000,10
channel = 0

[State 3000, Energy]
type = Helper
trigger1 = Anim = 3000 && AnimElem = 2
helperType = Normal
stateNo = 3004
ID = 3004
name = "Shinkuu Hadouken Energy"
posType = P1
pos = 0, 0
superMoveTime = 255
size.xScale = .5 * const(size.xscale)
size.yScale = .5 * const(size.yscale)
ownPal = 1

[State 3000, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = Anim = 3001 && AnimElem = 2
value = 3000,1
channel = 0

[State 3000, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = Anim = 3001 && AnimElem = 2
value = 3000,11
channel = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3001 && AnimElem = 2
value = 1000, 1
channel = 2

[State 3000, Projectile]
type = Helper
trigger1 = Anim = 3001 && AnimElem = 2
helperType = Normal
stateNo = 3005
ID = 3005
name = "Shinkuu Hadouken"
posType = P1
pos = 65,-53
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 3000, End]
type = ChangeState
trigger1 = Anim = 3001 && !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;MAX Shinkuu Hadouken
[StateDef 3050]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, -1000, -2000)
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = Anim = 3000
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -16,-63
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3000 && Time >= 43
value = 3001

[State 3050, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 3000,0
channel = 0

[State 3050, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 3000,10
channel = 0

[State 3050, Energy]
type = Helper
trigger1 = Anim = 3000 && AnimElem = 2
helperType = Normal
stateNo = 3004
ID = 3004
name = "Shinkuu Hadouken Energy"
posType = P1
pos = 0, 0
superMoveTime = 255
size.xScale = .5 * const(size.xscale)
size.yScale = .5 * const(size.yscale)
ownPal = 1

[State 3050, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = Anim = 3001 && AnimElem = 2
value = 3000,1
channel = 0

[State 3050, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = Anim = 3001 && AnimElem = 2
value = 3000,11
channel = 0

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3001 && AnimElem = 2
value = 1000, 1
channel = 2

[State 3050, Projectile]
type = Helper
trigger1 = Anim = 3001 && AnimElem = 2
helperType = Normal
stateNo = 3055
ID = 3055
name = "Shinkuu Hadouken"
posType = P1
pos = 65,-53
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 3050, End]
type = ChangeState
trigger1 = Anim = 3001 && !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Midare Zakura
[StateDef 3100]
type = S
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, 0, -1000)
faceP2 = 1

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3100, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -14,-69
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 3100,0
channel = 0

[State 3100, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 3100,10
channel = 0

[State 3100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 16
value = 40,0
channel = 3

[State 3100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
trigger2 = AnimElem = 15
value = 1,2
channel = 1

[State 3100, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 14
value = 3100,1
channel = 0

[State 3100, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 14
value = 3100,11
channel = 0

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 13
x = 8.93

[State 3100, VelAdd]
type = VelAdd
triggerall = Vel X > 0
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(13) >= 1
x = -0.69

[State 3100, VelSet]
type = VelSet
triggerall = Vel X < 0
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(13) > 0
x = 0

[State 3100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 16
stateType = A
physics = N

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 16
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 16
y = -8.93

[State 3100, Gravity]
type = VelAdd
trigger1 = AnimElemTime(16) > 0
y = 0.58

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -93
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 15
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 16
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.46, -6.15
ground.cornerPush.velOff = 0
guard.velocity = -7.933
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -93
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0
movetype = I

[State 3100, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1101

;---------------------------------------------------------------------------
;MAX Midare Zakura
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, -1000, -2000)
faceP2 = 1

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -14,-69
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3150, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 3100,0
channel = 0

[State 3150, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 3100,10
channel = 0

[State 3150, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 24
value = 3100,1
channel = 0

[State 3150, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 24
value = 3100,11
channel = 0

[State 3150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 14
trigger4 = AnimElem = 26
value = 40,0
channel = 3

[State 3150, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 15
trigger3 = AnimElem = 25
value = 1,2
channel = 1

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 13
x = 8.93

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 23
x = 11.17

[State 3150, VelAdd]
type = VelAdd
triggerall = Vel X > 0
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(13) >= 0 && AnimElemTime(23) < 0
trigger3 = AnimElemTime(23) >= 1
x = -0.69

[State 3150, VelSet]
type = VelSet
triggerall = Vel X < 0
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(13) > 0 && AnimElemTime(23) < 0
trigger3 = AnimElemTime(23) > 0
x = 0

[State 3150, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 26
stateType = A
physics = N

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 26
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 26
y = -12.5

[State 3150, Gravity]
type = VelAdd
trigger1 = AnimElemTime(26) > 0
y = 0.58

[State 3150, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 2]
type = HitDef
triggerall = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 14
trigger2 = AnimElem = 24
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 - (21*(AnimElem = 24)) < 7, 7, fvar(11) * 35 - (21*(AnimElem = 24)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 3]
type = HitDef
triggerall = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 5
trigger2 = AnimElem = 15
trigger3 = AnimElem = 25
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 - (14*(AnimElem = 15)) - (28*(AnimElem = 25)) < 7, 7, fvar(11) * 42 - (14*(AnimElem = 15)) - (28*(AnimElem = 25)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 4]
type = HitDef
triggerall = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 6
trigger2 = AnimElem = 16
trigger3 = AnimElem = 26
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 - (7*(AnimElem = 16)) - (14*(AnimElem = 26)) < 7, 7, fvar(11) * 28 - (7*(AnimElem = 16)) - (14*(AnimElem = 26)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse((AnimElem = 26), -4.46, -4.689), ifElse((AnimElem = 26), -6.15, 0)
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = AnimElem = 26
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -93
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(27) >= 0
movetype = I

[State 3150, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1101


;---------------------------------------------------------------------------
;Haru Ichiban
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, 0, -1000)
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
trigger1 = Time = 3
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

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
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3200, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -16,-16
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3200, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 3200,0
channel = 0

[State 3200, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 3200,10
channel = 0

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 3.35

[State 3200, Skid Dust]
type = Explod
trigger1 = AnimElem = 3
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 3200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
statetype = C

[State 3200, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 11
trigger3 = AnimElem = 15
trigger4 = AnimElem = 19
trigger5 = AnimElem = 24
value = 1,5
channel = 1

[State 3200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 21
statetype = S

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(21) >= 0 && Vel X > 0
x = -0.349

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(21) > 0 && Vel X < 0
x = 0

[State 3200, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 22
value = 3200,1
channel = 0

[State 3200, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 22
value = 3100,11
channel = 0

[State 3200, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
attr = C, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 5
guard.pauseTime = 5, 5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -6.14, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -6
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, HitDef 2-3-4]
type = HitDef
triggerall = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 11
trigger2 = AnimElem = 15
trigger3 = AnimElem = 19
attr = C, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 5
guard.pauseTime = 5, 5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -6.14, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -6
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, HitDef 5]
type = HitDef
triggerall = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 24
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 5
guard.pauseTime = 5, 5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.46, -6.15
ground.cornerPush.velOff = 0
guard.velocity = -7.933
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 112), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(25) >= 0
movetype = I

[State 3200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;MAX Haru Ichiban
[StateDef 3250]
type = S
physics = N
moveType = A
anim = 3250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, -1000, -2000)
faceP2 = 1

[State 3250, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3250, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3250, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3250, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3250, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3250, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3250, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3250, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3250, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -16,-16
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3250, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3250, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 3200,0
channel = 0

[State 3250, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 3200,10
channel = 0

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 3.35

[State 3250, Skid Dust]
type = Explod
trigger1 = AnimElem = 3
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 3250, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
statetype = C

[State 3250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 11 || AnimElem = 15 || AnimElem = 19
trigger2 = AnimElem = 23 || AnimElem = 27 || AnimElem = 32
value = 1,5
channel = 1

[State 3250, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 29
statetype = S

[State 3250, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(29) >= 0 && Vel X > 0
x = -0.349

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElemTime(29) > 0 && Vel X < 0
x = 0

[State 3250, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 30
value = 3200,1
channel = 0

[State 3250, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 30
value = 3100,11
channel = 0

[State 3250, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
attr = C, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 5
guard.pauseTime = 5, 5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -6.14, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -6
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, HitDef 2-3-4-5-6]
type = HitDef
triggerall = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 11
trigger2 = AnimElem = 15
trigger3 = AnimElem = 19
trigger4 = AnimElem = 23
trigger5 = AnimElem = 27
attr = C, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 5
guard.pauseTime = 5, 5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -6.14, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -6
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, HitDef 7]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 32
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 5
guard.pauseTime = 5, 5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.46, -6.15
ground.cornerPush.velOff = 0
guard.velocity = -7.933
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 112), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(33) >= 0
movetype = I

[State 3250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Shinkuu Tengyou Hadouken
[StateDef 3300]
type = S
physics = S
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, 0, -1000)
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
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

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
trigger1 = Anim = 3300
time = 1
value = SCA

[State 3300, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -9,-59
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3300 && Time >= 43
value = 3301

[State 3300, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 3000,0
channel = 0

[State 3300, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 3000,10
channel = 0

[State 3300, Energy]
type = Helper
trigger1 = Anim = 3300 && AnimElem = 2
helperType = Normal
stateNo = 3004
ID = 3004
name = "Shinkuu Hadouken Energy"
posType = P1
pos = 0, 0
superMoveTime = 255
size.xScale = .5 * const(size.xscale)
size.yScale = .5 * const(size.yscale)
ownPal = 1

[State 3300, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = Anim = 3301 && AnimElem = 2
value = 3000,1
channel = 0

[State 3300, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = Anim = 3301 && AnimElem = 2
value = 3000,11
channel = 0

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3301 && AnimElem = 2
value = 1000, 1
channel = 2

[State 3300, Projectile]
type = Helper
trigger1 = Anim = 3301 && AnimElem = 2
helperType = Normal
stateNo = 3305
ID = 3305
name = "Shinkuu Tengyou Hadouken"
posType = P1
pos = ceil(50 * const(size.xscale)), ceil(-95 * const(size.yscale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 3300, End]
type = ChangeState
trigger1 = Anim = 3301 && !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;MAX Shinkuu Tengyou Hadouken
[StateDef 3350]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, -1000, -2000)
faceP2 = 1

[State 3350, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3350, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3350, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3350, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3350, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3350, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = Anim = 3300
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -9,-59
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3350, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3350, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3300 && Time >= 43
value = 3301

[State 3350, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 3000,0
channel = 0

[State 3350, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 3000,10
channel = 0

[State 3350, Energy]
type = Helper
trigger1 = Anim = 3300 && AnimElem = 2
helperType = Normal
stateNo = 3004
ID = 3004
name = "Shinkuu Hadouken Energy"
posType = P1
pos = 0, 0
superMoveTime = 255
size.xScale = .5 * const(size.xscale)
size.yScale = .5 * const(size.yscale)
ownPal = 1

[State 3350, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = Anim = 3301 && AnimElem = 2
value = 3000,1
channel = 0

[State 3350, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = Anim = 3301 && AnimElem = 2
value = 3000,11
channel = 0

[State 3350, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3301 && AnimElem = 2
value = 1000, 1
channel = 2

[State 3350, Projectile]
type = Helper
trigger1 = Anim = 3301 && AnimElem = 2
helperType = Normal
stateNo = 3355
ID = 3355
name = "Shinkuu Tengyou Hadouken"
posType = P1
pos = ceil(50 * const(size.xscale)), ceil(-95 * const(size.yscale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 3350, End]
type = ChangeState
trigger1 = Anim = 3301 && !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Haru Issen
[StateDef 3400]
type = S
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, 0, -1000)
faceP2 = 1

[State 3400, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3400, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3400, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3400, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3400, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3400, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3400, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3400, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3400, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -16,-16
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3400, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3400, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 3200,0
channel = 0

[State 3400, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 3200,10
channel = 0

[State 3400, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 4
value = 1200,0
channel = 0

[State 3400, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 4
value = 1200,10
channel = 0

[State 3400, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 3

[State 3400, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3400, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElem = 5
y = -4.125

; I tried something different here: holding right or left while Sakura goes UP
; will make her go in the respective direction, and while it works, sometimes
; Sakura misses some hits, I don't want to make the hitboxes bigger, so...
; maybe it's better without it. You can use if you want.

;[State 3400, VelAdd]
;type = VelAdd
;trigger1 = command = "holdfwd" || command = "holdback"
;trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(23) < 0
;trigger1 = Vel X = [-2,2]
;x = .1 * ifElse(command = "holdfwd", 1, -1)

[State 3400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 11
trigger2 = AnimElem = 15 || AnimElem = 19
value = 1,5
channel = 1

[State 3400, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 6.38, -5.49
ground.cornerPush.velOff = 0
guard.velocity = 6.38
guard.cornerPush.velOff = 0
air.velocity = 6.38, -5.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, HitDef Back Hits]
type = HitDef
triggerall = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 9 || AnimElem = 13
trigger2 = AnimElem = 17 || AnimElem = 21
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.38, -5.49
ground.cornerPush.velOff = 0
guard.velocity = -6.38
guard.cornerPush.velOff = 0
air.velocity = -6.38, -5.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 8), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, HitDef Front Hits]
type = HitDef
triggerall = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 11 || AnimElem = 15
trigger2 = AnimElem = 19
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 6.38, -5.49
ground.cornerPush.velOff = 0
guard.velocity = 6.38
guard.cornerPush.velOff = 0
air.velocity = 6.38, -5.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, ChangeState]
type = ChangeState
trigger1 = MoveHit && AnimElem = 23
value = 3401

[State 3400, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(23) >= 0
movetype = I

[State 3400, Gravity]
type = VelAdd
trigger1 = AnimElemTime(23) > 0
y = 0.58

[State 3400, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 3402
anim = 3403

;---------------------------------------------------------------------------
;Haru Issen Air Hits
[StateDef 3401]
type = A
physics = N
moveType = A
anim = 3401
hitCountPersist = 1

[State 3401, Vel]
type = VelMul
trigger1 = AnimElemTime(18) < 0
y = .9

[State 3401, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 4
trigger2 = AnimElem = 7 || AnimElem = 10
value = 1, 5 - (AnimElem = 7) * 3
channel = 1

[State 3401, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7
value = 4, ifElse((AnimElem = 1), 0, ifElse((AnimElem = 4), 1, 2))
channel = 0

[State 3401, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7
value = 4, ifElse((AnimElem = 1), 10, ifElse((AnimElem = 4), 11, 12))
channel = 0

[State 3401, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 10
value = ifElse(Random < 500, 1400, 3200), 1
channel = 0

[State 3401, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 10
value = 3100, 11
channel = 0

[State 3401, Gravity]
type = VelAdd
trigger1 = AnimElemTime(18) > 0
y = 0.48

; In the original games, the velocity for P2 during the air hits is a little
; weird in my opinion. I changed it, but you can change back if you want source
; accuracy.

[State 3401, HitDef 1 & 2]
type = HitDef
triggerall = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 2 || AnimElem = 5
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.775, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.775
guard.cornerPush.velOff = 0
air.velocity = 2.124 * (ifElse((AnimElem = 2), 1, -1)), -1.25 ; MSHvsSF uses "-2.775, 0" in both attacks
air.cornerPush.velOff = 0
yAccel = 0.48
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61 - (15*(AnimElem = 5 || AnimElem = 6))), var(36) := -86 + (42*(AnimElem = 5 || AnimElem = 6))
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3401, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 8
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 2.124, -6.528
ground.cornerPush.velOff = 0
guard.velocity = 2.124
guard.cornerPush.velOff = 0
air.velocity = 2.124, -6.528 ; Here the values are correct, no need to change.
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 71), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3401, HitDef Final]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 12
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -8.34, 5.83
ground.cornerPush.velOff = 0
guard.velocity = -8.34
guard.cornerPush.velOff = 0
air.velocity = -8.34, 5.83
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 54), var(36) := -59
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3401, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(15) >= 0
movetype = I

[State 3401, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 3402
anim = 3402

;Landing
[StateDef 3402]
type = S
physics = N
moveType = I
velSet = 0,0

[State 3402, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3402, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3402, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3402, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;MAX Haru Issen
[StateDef 3450]
type = S
physics = N
moveType = A
anim = 3450
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, -1000, -2000)
faceP2 = 1

[State 3450, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3450, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3450, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3450, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3450, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3450, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3450, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3450, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3450, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -16,-16
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3450, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3450, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 3200,0
channel = 0

[State 3450, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 3200,10
channel = 0

[State 3450, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 4
value = 1200,0
channel = 0

[State 3450, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 4
value = 1200,10
channel = 0

[State 3450, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 3

[State 3450, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3450, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElem = 5
y = -4.6875

;[State 3450, VelAdd]
;type = VelAdd
;trigger1 = command = "holdfwd" || command = "holdback"
;trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(32) < 0
;trigger1 = Vel X = [-2,2]
;x = .1 * ifElse(command = "holdfwd", 1, -1)

[State 3450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 11
trigger2 = AnimElem = 15 || AnimElem = 19
trigger3 = AnimElem = 23 || AnimElem = 27
trigger4 = AnimElem = 31
value = 1,5
channel = 1

[State 3450, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 6.38, -6.24
ground.cornerPush.velOff = 0
guard.velocity = 6.38
guard.cornerPush.velOff = 0
air.velocity = 6.38, -6.24
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, HitDef Back Hits]
type = HitDef
triggerall = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 9 || AnimElem = 13
trigger2 = AnimElem = 17 || AnimElem = 21
trigger3 = AnimElem = 25 || AnimElem = 29
trigger4 = AnimElem = 33
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.38, -6.24
ground.cornerPush.velOff = 0
guard.velocity = -6.38
guard.cornerPush.velOff = 0
air.velocity = -6.38, -6.24
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 8), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, HitDef Front Hits]
type = HitDef
triggerall = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 11 || AnimElem = 15
trigger2 = AnimElem = 19 || AnimElem = 23
trigger3 = AnimElem = 27 || AnimElem = 31
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 6.38, -6.24
ground.cornerPush.velOff = 0
guard.velocity = 6.38
guard.cornerPush.velOff = 0
air.velocity = 6.38, -6.24
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, ChangeState]
type = ChangeState
trigger1 = MoveHit && AnimElem = 34
value = 3451

[State 3450, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(34) >= 0
movetype = I

[State 3450, Gravity]
type = VelAdd
trigger1 = AnimElemTime(34) > 0
y = 0.58

[State 3450, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 3402
anim = 3403

;---------------------------------------------------------------------------
;MAX Haru Issen Air Hits
[StateDef 3451]
type = A
physics = N
moveType = A
anim = 3401
hitCountPersist = 1

[State 3451, Vel]
type = VelMul
trigger1 = AnimElemTime(18) < 0
y = .9

[State 3451, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 4
trigger2 = AnimElem = 7 || AnimElem = 10
value = 1, 5 - (AnimElem = 7) * 3
channel = 1

[State 3451, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7
value = 4, ifElse((AnimElem = 1), 0, ifElse((AnimElem = 4), 1, 2))
channel = 0

[State 3451, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7
value = 4, ifElse((AnimElem = 1), 10, ifElse((AnimElem = 4), 11, 12))
channel = 0

[State 3451, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 10
value = ifElse(Random < 500, 1400, 3200), 1
channel = 0

[State 3451, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 10
value = 3100,11
channel = 0

[State 3451, Gravity]
type = VelAdd
trigger1 = AnimElemTime(18) > 0
y = 0.48

[State 3451, HitDef 1 & 2]
type = HitDef
triggerall = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 2 || AnimElem = 5
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.775, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.775
guard.cornerPush.velOff = 0
air.velocity = 2.124 * (ifElse((AnimElem = 2), 1, -1)), -1.25 ; MSHvsSF uses "-2.775, 0" in both attacks
air.cornerPush.velOff = 0
yAccel = 0.48
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61 - (15*(AnimElem = 5 || AnimElem = 6))), var(36) := -86 + (42*(AnimElem = 5 || AnimElem = 6))
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3451, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 8
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 2.124, -6.528
ground.cornerPush.velOff = 0
guard.velocity = 2.124
guard.cornerPush.velOff = 0
air.velocity = 2.124, -6.528
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 71), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3451, HitDef Final]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 12
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -8.34, 5.83
ground.cornerPush.velOff = 0
guard.velocity = -8.34
guard.cornerPush.velOff = 0
air.velocity = -8.34, 5.83
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 54), var(36) := -59
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3451, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(15) >= 0
movetype = I

[State 3451, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 3402
anim = 3402

;---------------------------------------------------------------------------
;Shun Goku Satsu
[StateDef 3500]
type = S
physics = N
moveType = A
anim = 3500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, -1000, -3000)
faceP2 = 1

[State 3500, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1600,1602]) && var(7)) || var(20)

[State 3500, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3500, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3500, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3500, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 47

[State 3500, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3500, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3500, NotHitBy]
type = NotHitBy
trigger1 = Anim = 3500
time = 1
value = SCA

[State 3500, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 0,-85
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3500, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3501

;Casually Approach Child
[StateDef 3501]
type = S
physics = N
moveType = A
anim = 3501
ctrl = 0
velSet = 0,0
poweradd = 0
sprPriority = 1

[State 3501, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 1600,0
;channel = 2

[State 3501, VelSet]
type = VelSet
trigger1 = 1
x = 5.02

[State 3501, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = !var(38)
attr = S, HT
hitFlag = M-
priority = 4, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 3502

[State 3501, End]
type = ChangeState
trigger1 = Time >= 35
value = 0
ctrl = 1

;( ͡° ͜ʖ ͡°)
[StateDef 3502]
type = A
physics = N
moveType = A
anim = 3502
ctrl = 0
velSet = 0,0
poweradd = 0
sprPriority = 1

[State 3502, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3502, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3505

[State 3502, AllPalFX]
type = AllPalFX
trigger1 = AnimElemTime(2) = -16
time = 16
sinadd = -255, -255, -255, 64

;[State 3502, Pause]
;type = Pause
;trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(17) < 0
;time = 2
;movetime = 2

[State 3502, EnvColor]
type = EnvColor
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(17) < 0
value = 0, 0, 0
time = 1
ignorehitpause = 1

[State 3502, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(17) < 0
flag = nobardisplay
flag2 = noFG

[State 3502, Bind]
type = BindToTarget
trigger1 = AnimElemTime(17) < 0
pos = 0, 5, Head

[State 3502, HitAdd]
type = HitAdd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
value = 1

[State 3502, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15
value = floor(ifElse(fvar(11) * 28 < 7, -7, fvar(11) * -28))
kill = 0

[State 3502, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 17
value = floor(ifElse(fvar(11) * 98 < 7, -7, fvar(11) * -98))
kill = 1

[State 3502, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
value = 36

[State 3502, HitSnd]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15
value = 2,2
channel = 2

[State 3502, Last HitSnd]
type = PlaySnd
trigger1 = AnimElem = 16
value = 2,10
channel = 2

[State 3502, HitSpark]
type = Helper
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
helperType = Normal
stateNo = 8030
ID = 8000
name = "Spark"
posType = P2
pos = -25 + Random%50, -80 + Random%70
ownPal = 1
facing = ifElse(Random > 500, 1, -1)
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
sprpriority = 5

[State 3502, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
time = 6
freq = 120
ampl = -4

[State 3502, HitCount]
type = VarAdd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
var(13) = 1

[State 3502, TargetState]
type = TargetState
trigger1 = NumTarget && AnimElem = 17
value = 3506

[State 3502, Win]
type = ChangeState
trigger1 = AnimElemTime(17) >= 0 && WinKo
value = 187

[State 3502, PosSet]
type = PosSet
trigger1 = AnimElem = 17
y = 0

[State 3502, Petals]
type = Helper
trigger1 = AnimElemTime(17) = 4
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

[State 3502, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 17
statetype = S

[State 3502, PosAdd]
type = PosAdd
trigger1 = AnimElem = 18
x = -30

[State 3502, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 3502, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Target
[StateDef 3505]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 3505, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3505, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3505

[State 3505, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 3505, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
trigger1 = Time > 160
value = 5050

;Target End
[StateDef 3506]
type = L
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 3506, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3506, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3506

[State 3506, End]
type = SelfState
trigger1 = !AnimTime && Anim = 3506
value = IfElse(Alive,5120,5150)

;---------------------------------------------------------------------------
;Midare Zakura (Dark)
[StateDef 3600]
type = S
physics = N
moveType = A
anim = 3600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, -1000, -3000)
faceP2 = 1

[State 3600, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1600,1602]) && var(7)) || var(20)

[State 3600, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3600, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3600, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3600, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 47

[State 3600, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3600, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3600, NotHitBy]
type = NotHitBy
trigger1 = Anim = 3500
time = 1
value = SCA

[State 3600, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = -14,-69
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3600, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3600, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 3100,0
channel = 0

[State 3600, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 3100,10
channel = 0

[State 3600, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 6.51

[State 3600, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110,0

[State 3600, Step Sound 1]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 7
value = 100, ifElse((AnimElem = 4), 0, 1)

[State 3600, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = !Time
ID = 3600
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 10, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3600, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3600)
value = 3610

[State 3600, ChangeState]
type = ChangeState
trigger1 = NumTarget(3600)
trigger1 = MoveHit && Target, Alive
value = 3601

[State 3600, End]
type = ChangeState
trigger1 = !AnimTime
value = 3605

[State 3600, Guarded]
type = ChangeState
trigger1 = MoveGuarded
value = 3606

;Success
[StateDef 3601]
type = S
physics = N
moveType = A
anim = 3601
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3601, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3601, Juggle Reset]
type = VarSet
trigger1 = !Time
var(15) = 0
ignoreHitPause = 1

[State 3601, Width]
type = Width
trigger1 = AnimElemTime(20) < 0
player = 24,24

[State 3601, Voice CvS]
type = PlaySnd
triggerAll = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8
trigger2 = AnimElem = 10 || AnimElem = 12 || AnimElem = 14 || AnimElem = 16
trigger3 = AnimElem = 19
value = 4, ifElse(Random < 250, 0, 1)
channel = 0

[State 3601, Voice SFA]
type = PlaySnd
triggerAll = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8
trigger2 = AnimElem = 10 || AnimElem = 12 || AnimElem = 14 || AnimElem = 16
trigger3 = AnimElem = 19
value = 4, ifElse(Random < 250, 10, 11)
channel = 0

[State 3601, Woosh]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 3 || AnimElem = 5 || AnimElem = 7
trigger2 = AnimElem = 9 || AnimElem = 11 || AnimElem = 13 || AnimElem = 15
trigger3 = AnimElem = 18 || AnimElem = 20
value = 1, ifElse((AnimElem = 3 || AnimElem = 5 || AnimElem = 20), 2, 5)
channel = 1

[State 3601, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 21
value = 1100, 0
channel = 0

[State 3601, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 21
value = 1100, 10
channel = 0

[State 3601, VelSet]
type = VelSet
trigger1 = !Time
x = 3.35

[State 3601, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 26
value = 40,0
channel = 3

[State 3601, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 26
stateType = A
physics = N

[State 3601, Dust Helper]
type = Helper
trigger1 = AnimElem = 26
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 3601, VelSet]
type = VelSet
trigger1 = AnimElem = 21
x = 8.333

[State 3601, VelSet]
type = VelSet
trigger1 = AnimElem = 26
y = -12

[State 3601, Gravity]
type = VelAdd
trigger1 = AnimElemTime(26) > 0
y = .58

[State 3601, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(26) > 0 && Vel X > 0
x = -.325

[State 3601, VelSet]
type = VelSet
trigger1 = AnimElemTime(26) > 0 && Vel X < 0
x = 0

[State 3601, Sparks & Sounds]
type = Null
trigger1 = AnimElem = 2 || AnimElem = 10
trigger1 = var(35) := 65 || var(36) := -90 || var(31) := 5
trigger2 = AnimElem = 4
trigger2 = var(35) := 74 || var(36) := -68 || var(31) := 2
trigger3 = AnimElem = 6
trigger3 = var(35) := 58 || var(36) := -72 || var(31) := 2
trigger4 = AnimElem = 8 || AnimElem = 12
trigger4 = var(35) := 75 || var(36) := -37 || var(31) := 5
trigger5 = AnimElem = 14 || AnimElem = 16
trigger5 = var(35) := 80 || var(36) := -45 || var(31) := 5
trigger6 = AnimElem = 19
trigger6 = var(35) := 117 || var(36) := -70 || var(31) := 5
ignorehitpause = 1

[State 3601, HitDef Low]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 4 || AnimElem = 8 || AnimElem = 12 || AnimElem = 16 || AnimElem = 19
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 8, 8
guard.pauseTime = 8, 8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 0
fall.recover = 0
forceStand = 1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3601, HitDef High]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 2 || AnimElem = 6 || AnimElem = 10 || AnimElem = 14
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 8, 8
guard.pauseTime = 8, 8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 0
fall.recover = 0
forceStand = 1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3601, Shoryuken 1]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 21 || AnimElem = 22
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3601, Shoryuken 2]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 23 || AnimElem = 24
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.43, -6.15
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -4.43, -6.15
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -73
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3601, Shoryuken 3]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 25 || AnimElem = 26
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.43, ifElse((AnimElem = 25), -6.15, -9.56)
ground.cornerPush.velOff = 0
guard.velocity = ifElse((AnimElem = 25), -4.689, -11.05)
guard.cornerPush.velOff = 0
air.velocity = -4.43, ifElse((AnimElem = 25), -6.15, -9.56)
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 34), var(36) := -97
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = AnimElem = 26

[State 3601, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(27) >= 0
moveType = I

[State 3601, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 3602

;Landing
[StateDef 3602]
type = S
physics = N
moveType = I
velSet = 0,0
anim = 3602

[State 3602, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3602, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3602, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3602, Win]
type = ChangeState
trigger1 = AnimElemTime(2) >= 0 && WinKo
value = 184

[State 3602, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 3
value = 181, 0
channel = 0

[State 3602, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 3
value = 181, 10
channel = 0

[State 3602, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Miss
[StateDef 3605]
type = S
physics = N
moveType = I
anim = 3605

[State 3605, VelAdd]
type = VelAdd
trigger1 = Vel X > 0
x = -.325

[State 3605, VelSet]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 3605, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2
value = 800,1
channel = 0

[State 3605, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2
value = 192,11 + 10 * (Random < 500)
channel = 0

[State 3605, Stopping Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 101,0

[State 3605, Skid Dust]
type = Explod
trigger1 = AnimElem = 2
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 3605, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Guarded
[StateDef 3606]
type = A
physics = N
moveType = I
velSet = 0,0
anim = 3606

[State 3606, VelSet]
type = VelSet
trigger1 = !Time
x = -2.08
y = -5

[State 3606, Gravity]
type = VelAdd
trigger1 = Time > 0
y = .58

[State 3606, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 3607

;Landing
[StateDef 3607]
type = S
physics = N
moveType = I
velSet = 0,0
anim = 3607

[State 3607, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3607, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3607, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3607, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Target
[Statedef 3610]
type = S
movetype = H
physics = S
velset = 0,0

[State 3610, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3610, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0

[State 3610, SelfState]
type = SelfState
trigger1 = Time >= 0
value = 5000

;---------------------------------------------------------------------------
;Haru Ranman
[StateDef 3700]
type = S
physics = N
moveType = A
anim = 3700
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, -1000, -3000)
faceP2 = 1

[State 3700, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1600,1602]) && var(7)) || var(20)

[State 3700, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3700, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3700, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3700, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 47

[State 3700, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3700, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3700, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
time = 1
value = SCA

[State 3700, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = -16,-16
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3700, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3700, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = !Time
value = 3200,0
channel = 0

[State 3700, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = !Time
value = 3200,10
channel = 0

[State 3700, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 16
value = 4,2
channel = 0

[State 3700, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 16
value = 4,12
channel = 0

[State 3700, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 3.35

[State 3700, Skid Dust]
type = Explod
trigger1 = AnimElem = 3
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 3700, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
statetype = C

[State 3700, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 11
trigger3 = AnimElem = 16
value = 1,5
channel = 1

[State 3700, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 14
statetype = S

[State 3700, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(14) >= 0 && Vel X > 0
x = -0.349

[State 3700, VelSet]
type = VelSet
trigger1 = AnimElemTime(14) > 0 && Vel X < 0
x = 0

[State 3700, Width]
type = Width
trigger1 = AnimElemTime(17) >= 0 && AnimElemTime(20) < 0
player = 20,10
ignorehitpause = 1

[State 3700, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
attr = C, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 5
guard.pauseTime = 5, 5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -6.14, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -6
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3700, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 11
attr = C, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 5
guard.pauseTime = 5, 5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -6.14, -6.15
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -6
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3700, HitDef Kick]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 17
ID = 3700
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 18, 18
guard.pauseTime = 18, 18
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, -10.25
ground.cornerPush.velOff = 0
guard.velocity = -7.933
guard.cornerPush.velOff = 0
air.velocity = 0, -10.25
air.cornerPush.velOff = 0
yAccel = 0.38
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 112), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3700, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3700)
value = 3705
persistent = 0

[State 3700, ChangeState]
type = ChangeState
trigger1 = MoveHit && NumTarget(3700) && AnimElem = 18
value = 3701

[State 3700, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(18) >= 0 && !MoveHit
movetype = I

[State 3700, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Haru Ranman Jump
[StateDef 3701]
type = S
physics = N
moveType = A
anim = 3701
hitCountPersist = 1

[State 3701, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3701, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3701, Jump Sound]
type = PlaySnd
trigger1 = Anim = 3701 && AnimElem = 6
value = 40,0
channel = 3

[State 3701, Dust Helper]
type = Helper
trigger1 = Anim = 3701 && AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3701, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 3701 && AnimElem = 6
stateType = A
physics = N

[State 3701, VelSet]
type = VelSet
trigger1 = Anim = 3701 && AnimElem = 6
x = P2Dist X / 45
y = -11

[State 3701, Gravity]
type = VelAdd
triggerall = Vel Y < 0
trigger1 = Anim = 3701 && AnimElemTime(6) > 0
trigger2 = Anim = 3702 && AnimElemTime(15) < 0
y = .51

[State 3701, VelSet]
type = VelSet
triggerall = Vel Y > 0
trigger1 = Anim = 3701 && AnimElemTime(6) > 0
trigger2 = Anim = 3702 && AnimElemTime(15) < 0
y = 0

[State 3701, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3701 && AnimElemTime(2) > 0
trigger1 = (P2Dist Y = [-20,0])
value = 3702

[State 3701, Safety]
type = ChangeState
triggerAll = Anim = 3701 && AnimElemTime(2) > 0
trigger1 = AnimElemTime(2) > 60 || !NumTarget
value = 1403

[State 3701, VelSet]
type = VelSet
trigger1 = Anim = 3702 && AnimElem = 1
x = 0

[State 3701, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = Anim = 3702 && (AnimElem = 1 || AnimElem = 15)
value = ifElse((AnimElem = 1), 4, 3200), ifElse((AnimElem = 1), Random%3, 1)
channel = 0

[State 3701, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = Anim = 3702 && (AnimElem = 1 || AnimElem = 15)
value = ifElse((AnimElem = 1), 4, 3100), ifElse((AnimElem = 1), 10 + Random%3, 11)
channel = 0

[State 3701, Woosh Sound]
type = PlaySnd
trigger1 = Anim = 3702 && (AnimElem = 1 || AnimElem = 15)
value = 1, ifElse((AnimElem = 1), 2, 5)
channel = 1

[State 3701, HitDef Punch]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 = Anim = 3702 && AnimElem = 2
ID = 3701
chainID = 3700
attr = A, HA
hitFlag = MAF+
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 147 < 7, 7, fvar(11) * 147)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 18, 18
guard.pauseTime = 18, 18
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 7.5
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, 7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 54), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3701, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3701)
value = 3710
persistent = 0

[State 3701, HitDef Stomp]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 = Anim = 3702 && AnimElem = 16
ID = 3702
chainID = 3701
attr = A, HA
hitFlag = FD+
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 168 < 7, 7, fvar(11) * 168)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 24
guard.pauseTime = 0, 24
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 15), var(36) := -1
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3701, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3702)
value = 3716
persistent = 0

[State 3701, VelSet]
type = VelSet
trigger1 = Anim = 3702 && AnimElem = 15
x = ifElse(NumTarget(3702), (P2Dist X / 12), 1.5)
y = 7

[State 3701, Helper]
type = Helper
trigger1 = MoveHit && NumTarget(3702)
name = "Impact Dust"
ID = 8110
stateno = 8110
pos = 0,0
postype = p2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3701, Gravity]
type = VelAdd
trigger1 = Anim = 3702 && AnimElemTime(15) > 0
y = .51

[State 3701, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 3702

[State 3701, Scale Fix]
type = AngleDraw
trigger1 = Anim = 3702 && AnimElemTime(15) >= 0
scale = 1.1, 0.95

;---------------------------------------------------------------------------
;Landing Hit
[StateDef 3702]
type = S
physics = S
moveType = A
velSet = 0,0
anim = 3703

[State 3702, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3702, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3702, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3702, PosAdd]
type = PosAdd
trigger1 = !Time
x = 10

[State 3702, Back Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 105,0

[State 3702, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 7
stateType = A
physics = N

[State 3702, Dust Helper]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3702, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = -5
y = -4

[State 3702, Gravity]
type = VelAdd
trigger1 = AnimElemTime(7) > 0
y = 0.48

[State 3702, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 3702, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 3703

;Landing + End Pose
[StateDef 3703]
type = S
physics = S
moveType = I
velSet = 0,0
anim = 3704

[State 3703, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3703, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3703, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3703, Win]
type = ChangeState
trigger1 = AnimElemTime(2) >= 0 && WinKo
value = 184

[State 3703, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2
value = 181,0
channel = 0

[State 3703, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2
value = 181,10
channel = 0

[State 3703, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Target (shaking)
[Statedef 3705]
type    = S
movetype= H
physics = N
velset = 0,0

[State 3705, ChangeAnim] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 3705, ChangeAnim] ;Anim for HIT_UP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5051)
value = 5051

[State 3705, ChangeAnim] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 3705, StateTypeSet] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = A

[State 3705, FFB Hard]
type = ForceFeedback
trigger1 = Anim = 5030
trigger2 = Anim = 5051
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[State 3705, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 3706

;---------------------------------------------------------------------------
; Target (UP)
[Statedef 3706]
type    = A
movetype= H
physics = N
ctrl = 0

[State 3706, 1]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 3706, Gravity]
type = VelAdd
trigger1 = Time > 0
y = .38 ; GetHitVar(yaccel)

[State 3706, VelSet]
type = VelSet
trigger1 = !Time
y = -10.25

[State 3706, 5]
type = ChangeState
trigger1 = HitOver
trigger2 = Pos Y > -Vel Y
trigger3 = AnimTime = 0
value = 3707

;---------------------------------------------------------------------------
; Target (falling)
[Statedef 3707]
type    = A
movetype= H
physics = N

[State 3707, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = Time = 0     ;If no transition anim
trigger1 = Anim != 5051
value = 5050

[State 3707, 2] ;Coming down anim
type = ChangeAnim
trigger1 = Anim = 5051
trigger1 = Vel Y > 0
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 3707, 3] ;Gravity
type = VelAdd
trigger1 = Time > 0
y = .38 ; GetHitVar(yaccel)

[State 3707, 6]
type = SelfState
trigger1 = Pos Y > -Vel Y
value = 5100 ;Downed get-hit (hit ground from fall)

;---------------------------------------------------------------------------
; Target Air (shaking)
[Statedef 3710]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3710, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 3710, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 3710, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 3711

[State 3710, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Target Air (knocked away)
[Statedef 3711]
type    = A
movetype= H
physics = N
ctrl = 0

[State 3711, 1]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 3711, Gravity]
type = VelAdd
trigger1 = Time > 0
y = .58 ; GetHitVar(yaccel)

[State 3711, VelSet]
type = VelSet
trigger1 = !Time
y = 7.56

[State 3711, 5]
type = ChangeState
trigger1 = HitOver
trigger2 = Pos Y > -Vel Y
trigger3 = AnimTime = 0
value = 3712

;---------------------------------------------------------------------------
; Target Air (falling)
[Statedef 3712]
type    = A
movetype= H
physics = N

[State 3712, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = !Time
value = 5050

[State 3712, 3] ;Gravity
type = VelAdd
trigger1 = Time > 0
y = .58 ; GetHitVar(yaccel)

[State 3712, 6]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 3713 ;Downed get-hit (hit ground from fall)

;---------------------------------------------------------------------------
; Target (hit ground from fall)
[Statedef 3713]
type    = L
movetype= H
physics = N

[State 3713, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = 4
freq = 120

[State 3713, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(Vel Y)

[State 3713, 2] ;Hit ground anim (normal)
type = ChangeAnim
trigger1 = Time = 0
value = 5100

[State 3713, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3713, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3713, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 3713, 8]
type = Explod
trigger1 = Time = 1
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
facing = facing
sprpriority = ifElse (sysvar(1) <= Const720p(56), -10, 10)

[State 3713, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 3713, 11]
type = PosFreeze
trigger1 = 1

[State 3713, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 3714 ;Downed get-hit (bounce off ground)

[State 3713, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; Target (bounce off ground)
[Statedef 3714]
type    = L
movetype= H
physics = N

[State 3714, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
trigger1 = Time = 0
value = 5160

[State 3714, VelSet]
type = VelSet
trigger1 = !Time
y = -4.5

[State 3714, 4]
type = PosSet
trigger1 = Time = 0
y = Const(movement.down.bounce.offset.y)

[State 3714, 5]
type = PosAdd
trigger1 = Time = 0
x = Const(movement.down.bounce.offset.x)

[State 3714, Gravity] ;Acceleration
type = VelAdd
trigger1 = Time > 0
y = .48

[State 3714, 7] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
type = ChangeState
value = 3715

;---------------------------------------------------------------------------
; Target (lying down)
[Statedef 3715]
type    = L
movetype= H
physics = N

[State 3715, 2] ;Hit ground anim (normal)
type = ChangeAnim
trigger1 = time = 0
value = 5170

[State 3715, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3715, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(Vel Y)

[State 3715, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 3715, 7]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
facing = facing
sprpriority = ifElse (sysvar(1) <= Const720p(56), -10, 10)

[State 3715, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3715, 10] ;For normal
type = ChangeAnim
persistent = 0
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 3715, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 3715, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 3715, 14] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 3715, 15]
type = ForceFeedback
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 3715, End]
type = SelfState
trigger1 = Time > 90
value = IfElse(Alive,5120,5150)

;---------------------------------------------------------------------------
; Target Down (shaking)
[Statedef 3716]
type    = L
movetype= H
physics = N
velset = 0,0

[State 3716, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = 5080

[State 3716, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 3716, 4]
type = ChangeState
trigger1 = HitShakeOver
value = 3717 ;Downed get-hit (knocked back)

;---------------------------------------------------------------------------
; Target Down (knocked back)
[Statedef 3717]
type    = L
movetype= H
physics = C

[State 3717, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 3717, 3] ;Don't show hit ground frame
type = VarSet
trigger1 = Time = 0
sysvar(0) = 1

[State 3717, 4]
type = ChangeState
trigger1 = HitOver
value = 3715 ;Downed get-hit (lying down)

;---------------------------------------------------------------------------
;Transformation
[StateDef 4000]
type = S
physics = S
moveType = A
anim = 4000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, 0, -1000)
faceP2 = 1

[State 4000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 4000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 4000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 4000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 4000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 4000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 4000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 4000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 4000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 0,-68
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 4000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 4000, Change Mode]
type = VarSet
trigger1 = !Time
var(40) = ifElse(!var(40), 1, 0)

[State 4000, Secondary Palette Specific]
type = Null
;Normal
trigger1 = var(0) = 1 || var(0) = 13
trigger1 = var(1) := 200
trigger2 = var(0) = [30,34]
trigger2 = var(1) := var(0) + 177
trigger3 = var(0) = 35
trigger3 = var(1) := 212
;Dark
trigger4 = var(0) = 200
trigger4 = var(1) := 1
trigger5 = var(0) = [207,211]
trigger5 = var(1) := var(0) - 177
trigger6 = var(0) = 212
trigger6 = var(1) := 35

[State 4000, Secondary Palette Random]
type = Null
triggerAll = !var(1)
trigger1 = var(40)
trigger1 = var(1) := 200 + Random%23
trigger2 = !var(40)
trigger2 = var(1) := 1 + Random%80

[State 4000, RemapPal]
type = RemapPal
trigger1 = var(40) && AnimElem = 3
source = 1,1
dest = 1, ifElse(var(0) >= 200, var(0), var(1))

[State 4000, RemapPal]
type = RemapPal
trigger1 = !var(40) && AnimElem = 3
source = 1,1
dest = 1, ifElse(var(0) < 200, var(0), var(1))

[State 4000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1