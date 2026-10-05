; ______________________
;| Akuma by DeathScythe |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

;---------------------------------------------------------------------------
;Messatsu Gou Hadou
[StateDef 3000]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, 0, -1000)
faceP2 = 1


[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

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
trigger2 = AnimElem = 3001 && AnimElemTime(5) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -22,-48
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

[State 3000, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3000 && Time >= 43
value = 3001

[State 3000, Aura]
type = Explod
trigger1 = !NumExplod(735)
trigger1 = Anim = 3000 && AnimElem = 3
anim = 735
ID = 735
pos = 0, 0
postype = P1
sprpriority = -1
ignorehitpause = 1
bindtime = -1
removetime = -1
ownpal = 1
removeongethit = 1
pausemovetime = 255
supermovetime = 255

[State 3000, RemoveExplod]
type = RemoveExplod
trigger1 = Anim = 3001
id = 735

[State 3000, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000,1
channel = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = Anim = 3001 && AnimElem = 5
value = 3000,0
channel = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3001 && AnimElem = 5
value = 1000, 0
channel = 2

[State 3000, Projectile]
type = Helper
trigger1 = Anim = 3001 && AnimElem = 5
stateNo = 3005
ID = 3005
name = "Messatsu Gou Hadou"
posType = P1
pos = 73,-67
size.xScale = ifelse(var(40)=1, .7, .5)
size.yScale = ifelse(var(40)=1, .7, .5)
ownPal = 1

[State 3000, End]
type = ChangeState
trigger1 = Anim = 3001 && !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;MAX Messatsu Gou Hadou
[StateDef 3050]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, -1000, -2000)
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

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
var(17) = 43

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
trigger2 = AnimElem = 3001 && AnimElemTime(5) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -22,-48
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0+1*var(59)
darken = 0

[State 3050, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3000 && Time >= 43
value = 3001

[State 3050, Aura]
type = Explod
trigger1 = !NumExplod(735)
trigger1 = Anim = 3000 && AnimElem = 3
anim = 735
ID = 735
pos = 0, 0
postype = P1
sprpriority = -1
ignorehitpause = 1
bindtime = -1
removetime = -1
ownpal = 1
removeongethit = 1
pausemovetime = 255
supermovetime = 255

[State 3050, RemoveExplod]
type = RemoveExplod
trigger1 = Anim = 3001
id = 735

[State 3050, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000,2
channel = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = Anim = 3001 && AnimElem = 5
value = 3000,0
channel = 0

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3001 && AnimElem = 5
value = 1000, 0
channel = 2

[State 3050, Projectile]
type = Helper
trigger1 = Anim = 3001 && AnimElem = 5
stateNo = 3055
ID = 3005
name = "Messatsu Gou Hadou"
posType = P1
pos = 73,-67
size.xScale = ifelse(var(40)=1, .7, .5)
size.yScale = ifelse(var(40)=1, .7, .5)
ownPal = 1

[State 3050, End]
type = ChangeState
trigger1 = Anim = 3001 && !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Messatsu Gou Shoryuu
[StateDef 3100]
type = S
physics = N
moveType = A
anim = 3100 ;+ var(40)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, 0, -1000)
faceP2 = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40)=1
value = 3101

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

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
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3100, SuperPause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 13,-56
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 53

[State 3100, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000,1
channel = 0

[State 3100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,0
channel = 0

[State 3100, Voice]
type = PlaySnd
trigger1 = AnimElem = 13
value = 4,2
channel = 0

[State 3100, Effect]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 12
value = 1,2
channel = 2

[State 3100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 14
value = 40,0
channel = 3

[State 3100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 14
stateType = A
physics = N

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 14
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 8.93854748603

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 11
x = 8.6

[State 3100, VelMul]
type = VelMul
trigger1 = StateType = S
x = .96

[State 3100, VelMul]
type = VelMul
trigger1 = AnimElemTime(14) > 1
trigger1 = vel x > 0
x = 0.8

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 14
x = 3.333
y = -10.667

[State 3100, Gravity]
type = VelAdd
trigger1 = AnimElemTime(14) > 1
y = .667

[State 3000, Fire Snd]
type = PlaySnd
trigger1 = AnimElem = 11 
value = 1000, 1
channel = 1

[State 1330, Flames FX 1]
type = Explod
trigger1 = !NumExplod(1140)
trigger1 = AnimElemTime(11)=0
anim = 1140
ID = 1140
sprPriority = 3
bindTime = 6
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1330, Flames FX 2]
type = Explod
trigger1 = !NumExplod(1141)
trigger1 = AnimElemTime(14)=0
anim = 1141
id = 1141
sprPriority = 3
bindTime = -1
removeTime = 13
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1330, Flames FX Fade]
type = Explod
trigger1 = !NumExplod(1142)
trigger1 = AnimElemTime(15)=-2
anim = 1142
id = 1142
sprPriority = 3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
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
ground.velocity = -0.5, 0
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 6 || var(20))
trigger1 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 55 < 7, 7, fvar(11) * 55)), 7
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
ground.velocity = -0.5, 0
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
trigger1 = AnimElem = 12
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -0.5, 0
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 8 || var(20))
trigger1 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 26 < 7, 7, fvar(11) * 26)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -0.5, 0
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 5]
type = HitDef
trigger1 = !var(16) && (var(15) < 9 || var(20))
trigger1 = AnimElem = 14
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 24 < 7, 7, fvar(11) * 24)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.5, -9
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -9
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1330, Flame Particles]
type = Helper
trigger1 = AnimElemTime(11)>0
trigger1 = !NumHelper(8151)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8151
ID = 8151
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3100, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(15) >= 0
movetype = I

[State 3100, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1101

;---------------------------------------------------------------------------
;MAX Messatsu Gou Shoryuu
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3150; + var(40)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, -1000, -2000)
faceP2 = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40)=1
value = 3151

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

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
var(17) = 43

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
trigger1 = AnimElemTime(6) < 6
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 13,-56
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0+1*var(59)
darken = 0

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 64

[State 3150, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000,2
channel = 0

[State 3150, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,0
channel = 0

[State 3150, Voice]
type = PlaySnd
trigger1 = AnimElem = 13
value = 4,1
channel = 0

[State 3150, Voice]
type = PlaySnd
trigger1 = AnimElem = 23
value = 4,2
channel = 0

[State 3150, Effect]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 12 || AnimElem = 22
value = 1,2
channel = 2

[State 3150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 24
value = 40,0
channel = 3

[State 3150, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 24
stateType = A
physics = N

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 24
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 8.93854748603

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 6
trigger2 = AnimElem = 11
x = 0

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 11
x = 8.6

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 21
x = 13.3

[State 3150, VelMul]
type = VelMul
trigger1 = StateType = S
x = .96

[State 3150, VelMul]
type = VelMul
trigger1 = AnimElemTime(24) > 1
trigger1 = vel x > 0
x = .8

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 24
x = 8
y = -13.3

[State 3150, Gravity]
type = VelAdd
trigger1 = AnimElemTime(24) > 1
y = .667

[State 3000, Fire Snd]
type = PlaySnd
trigger1 = AnimElem = 21 
value = 1000, 1
channel = 1

[State 1330, Flames FX 1]
type = Explod
trigger1 = !NumExplod(1140)
trigger1 = AnimElemTime(21)=0
anim = 1140
ID = 1140
sprPriority = 3
bindTime = 6
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1330, Flames FX 2]
type = Explod
trigger1 = !NumExplod(1141)
trigger1 = AnimElemTime(24)=0
anim = 1141
id = 1141
sprPriority = 3
bindTime = -1
removeTime = 13
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1330, Flames FX Fade]
type = Explod
trigger1 = !NumExplod(1142)
trigger1 = AnimElemTime(25)=-2
anim = 1142
id = 1142
sprPriority = 3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3150, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
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
ground.velocity = -0.5, 0
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 6 || var(20))
trigger1 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
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
ground.velocity = -0.5, 0
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
trigger1 = AnimElem = 12
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
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
ground.velocity = -0.5, 0
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 8 || var(20))
trigger1 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
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
ground.velocity = -0.5, 0
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 5]
type = HitDef
trigger1 = !var(16) && (var(15) < 9 || var(20))
trigger1 = AnimElem = 14
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 7
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
ground.velocity = -0.5, 0
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 6]
type = HitDef
trigger1 = !var(16) && (var(15) < 10 || var(20))
trigger1 = AnimElem = 22
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 18,18;12, 12
guard.pauseTime = 18,18;12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -0.5, 0
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 7]
type = HitDef
trigger1 = !var(16) && (var(15) < 11 || var(20))
trigger1 = AnimElem = 23
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 18,18;12, 12
guard.pauseTime = 18,18;12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -0.5, 0
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 8]
type = HitDef
trigger1 = !var(16) && (var(15) < 12 || var(20))
trigger1 = AnimElem = 24
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
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1330, Flame Particles]
type = Helper
trigger1 = AnimElemTime(21)>0
trigger1 = !NumHelper(8151)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8151
ID = 8151
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3150, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(25) >= 0
movetype = I

[State 3150, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1101

;---------------------------------------------------------------------------
;Tenma Gou Zankuu
[StateDef 3200]
type = A
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, 0, -1000)
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

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
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3200, SuperPause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 54,-57
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3200, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = -.5
y = -8

[State 3200, Gravity]
type = VelAdd
trigger1 = AnimElemTime(8) >= 0
y = .5

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200,0
channel = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3200,1
channel = 0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000, 0
channel = 2

[State 3200, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1
stateNo = 3205
ID = 3205
name = "Tenma Gou Zankuu"
posType = P1
pos = 71,-45
size.xScale = ifelse(var(40)=1, .7, .5)
size.yScale = ifelse(var(40)=1, .7, .5)
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 3200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 3200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1071

;---------------------------------------------------------------------------
;MAX Tenma Gou Zankuu
[StateDef 3250]
type = A
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, -1000, -2000)
faceP2 = 1

[State 3250, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

[State 3250, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

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
var(17) = 43

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
trigger1 = AnimElemTime(6) < 6
time = 1
value = SCA

[State 3250, Super Pause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 54,-57
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3250, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0+1*var(59)
darken = 0

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = -.5
y = -8

[State 3250, Gravity]
type = VelAdd
trigger1 = AnimElemTime(8) >= 0
y = .5

[State 3250, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200,0
channel = 0

[State 3250, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3200,1
channel = 0

[State 3250, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000, 0
channel = 2

[State 3250, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1
stateNo = 3255
ID = 3205
name = "Tenma Gou Zankuu"
posType = P1
pos = 71,-45
size.xScale = ifelse(var(40)=1, .7, .5)
size.yScale = ifelse(var(40)=1, .7, .5)
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 3250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 3250, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1071

;======================<Messatsu Gorasen>===================
[Statedef 3300]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3300
poweradd = ifelse(var(53) > 0, 0, -1000)
sprpriority = 2
facep2 = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = Anim = 3300
trigger2 = Anim = 3301 && AnimElemTime(2)<0
time = 1
value = SCA

[State 3300, No Corner Push]
type = VarSet
trigger1 = Anim=3300 && !Time
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = !Time && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

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

[State 3300, SuperPause FX]
type = Helper
trigger1 = Anim=3300 && AnimElem=2
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -32,-8
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = Anim=3300 && AnimElem=2
time = 48
moveTime = 48
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0
poweradd = 0

[State 3300, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3300, PosSet]
type = PosSet
trigger1 = !Time 
y = 0

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = Anim=3300 && !AnimTime
value = 3301

[State 3300, StateTypeSet: Air, No Phys]
type = StateTypeSet
trigger1 = Anim=3300 && AnimElemTime(8)>0
trigger2 = Anim=3301
StateType = A
physics = N

[State 3300, Voice]
type = PlaySnd
trigger1 = Anim=3300 && AnimElem=2
value = 3000, 1
channel = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = Anim=3300 && AnimElem=7
value = 800, 2
channel = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = Anim=3301 && AnimElem=55
value = 3000, 0
channel = 0

[State 3300, Dust Helper]
type = Helper
trigger1 = Anim=3300 && AnimElem = 8
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3300, Jump Snd]
type = PlaySnd
trigger1 = Anim=3300 && AnimElem = 8
value = 41,0
channel = 3

[State 3300, Swing Snd]
type = PlaySnd
triggerall= Anim=3301
trigger1= AnimElem=1 || AnimElem=7 || AnimElem=13 || AnimElem=19 || AnimElem=25
trigger2= AnimElem=31 || AnimElem=37 || AnimElem=43 || AnimElem=49 || AnimElem=55
value = 1,5
;channel = 1

[State 3300, Velocity]
type = VelSet
trigger1 = Anim=3300 && AnimElem=10
x = 0
y = -8

[State 3300, VelSet]
type = VelSet
trigger1 = Anim=3301 && AnimElemTime(58)<0 && vel y>0
y = 0

[State 3300, VelAdd]
type = VelAdd
trigger1 = Anim=3301 && AnimElemTime(58)<0 && vel y<0
y = 0.14

[State 3300, VelAdd Left/Right]
type = VelAdd
trigger1 = (Anim=3301 && AnimElemTime(58)<0) && (vel x=[-1.33,1.33]) && vel y<0
x = ifelse(command="holdfwd",0.12,ifelse(command="holdback",-0.12,0))

[State 3300, Gravity]
type = VelAdd
trigger1 = Anim=3301 && AnimElemTime(58) >= 0
y = 0.5

[State 3300, Hit 1st]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim=3300 && AnimElem = 8  
attr = S, HA
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 16,16
guard.pausetime = 12,12
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -67
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = ifelse(p2bodydist x>15,2,0),-6
air.velocity = ifelse(p2bodydist x>15,2,0),-5
guard.velocity = -10.5
;airguard.velocity = -6, -4
;airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120
kill = 0

[State 3300, Hits Fwd]
type = HitDef
triggerall = !var(16) && (var(15) < 10 || var(20))
triggerall = Anim=3301  
trigger1 = AnimElem=2 || AnimElem=8 || AnimElem=14 || AnimElem=20
trigger2 = AnimElem=26 || AnimElem=32 || AnimElem=38 || AnimElem=44 || AnimElem=50
attr = A, HA
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 4
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 2,2
guard.pausetime = 2,2
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -70
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = ifelse(p2bodydist x>15,1.5,0),-10
air.velocity = ifelse(p2bodydist x>15,1.5,0), (vel y - 1.5)
guard.velocity = -10.5
airguard.velocity = -8, -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120
kill = 0

[State 3300, Hits Back]
type = HitDef
triggerall = !var(16) && (var(15) < 10 || var(20))
triggerall = Anim=3301  
trigger1= AnimElem=5 || AnimElem=11 || AnimElem=17 || AnimElem=23
trigger2= AnimElem=29 || AnimElem=35 || AnimElem=41 || AnimElem=47
attr = A, HA
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 4
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 2,2
guard.pausetime = 2,2
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -50), var(36) := -70
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = ifelse(p2bodydist x>15,1.5,0),-10
air.velocity = ifelse(p2bodydist x>15,1.5,0), (vel y - 1.5)
guard.velocity = -10.5
airguard.velocity = -8, -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120

[State 3300, Hit Final]
type = HitDef
trigger1 = !var(16) && (var(15) < 11 || var(20))
trigger1 = Anim=3301 && AnimElem = 56  
attr = A, HA
damage = ceil(ifElse(fvar(11) * 46 < 7, 7, fvar(11) * 46)), 7
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 24,24
guard.pausetime = 12,12
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -69
air.animtype = DiagUp
fall.animtype = DiagUp
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -7,-2
air.velocity = -7,-2
guard.velocity = -10.5
airguard.velocity = -8, -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = Anim=3301 && AnimElemTime(58) >= 0
moveType = I

[State 3300, End]
type = ChangeState
trigger1 = Anim=3301
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3305

;Gorasen/Gousenpuu Landing
[Statedef 3305]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1201
velset = 0, 0

[State 3305, On Ground]
type = Posset
trigger1 = !Time
Y = 0

[State 3305, Land Snd]
type = PlaySnd
trigger1 = Time = 1
value = 52,0

[State 3305, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
pos = 5, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3305, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;======================<Messatsu Gousenpuu>===================
[Statedef 3310]
type    = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3310
poweradd = ifelse(var(53) > 0, 0, -1000)
sprpriority = 2
;facep2 = 1

[State 3310, NotHitBy]
type = NotHitBy
trigger1 = Anim = 3310
trigger2 = Anim = 3311 && AnimElemTime(2)<0
time = 1
value = SCA

[State 3310, No Corner Push]
type = VarSet
trigger1 = Anim=3310 && AnimElem=3
fvar(5) = 0

[State 3310, Unguardable]
type = VarSet
trigger1 = Time=3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

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

[State 3310, SuperPause FX]
type = Helper
trigger1 = Anim=3310 && AnimElem=3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -34,-63
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3310, SuperPause]
type = SuperPause
trigger1 = Anim=3310 && AnimElem=3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0
poweradd = 0

[State 3310, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3310, ChangeAnim]
type = ChangeAnim
trigger1 = Anim=3310 && !AnimTime
value = 3311

[State 3310, Voice]
type = PlaySnd
trigger1 = Anim=3310 && AnimElem=2
value = 3000, 1
channel = 0

[State 3310, Voice]
type = PlaySnd
trigger1 = Anim=3310 && AnimElem=4
value = 800, 2
channel = 0

[State 3310, Voice]
type = PlaySnd
trigger1 = Anim=3311 && AnimElem=61
value = 3000, 0
channel = 0

[State 3310, Swing Snd]
type = PlaySnd
triggerall= Anim=3311
trigger1= AnimElem=1 || AnimElem=7 || AnimElem=13 || AnimElem=19 || AnimElem=25
trigger2= AnimElem=31 || AnimElem=37 || AnimElem=43 || AnimElem=49 || AnimElem=55 || AnimElem=61
value = 1,5
;channel = 1

[State 3310, VelSet]
type = VelSet
trigger1 = Anim=3310
x = 0
y = 0

[State 3310, VelSet]
type = VelSet
trigger1 = Anim=3311 && AnimElemTime(15)<0 && pos y<-10
y = ifelse(AnimElemTime(9)<0,.33,.1)

[State 3310, VelSet]
type = VelSet
trigger1 = Anim=3311 && AnimElem=15
x = 0
y = -4

[State 3310, VelAdd]
type = VelAdd
trigger1 = Anim=3311 && (AnimElemTime(15)>=0 && AnimElemTime(64)<0) && vel y<0
y = 0.05

[State 3310, VelAdd Left/Right]
type = VelAdd
trigger1 = (Anim=3311 && AnimElemTime(64)<0) && (vel x=[-1.33,1.33]) && vel y<0
x = ifelse(command="holdfwd",0.12,ifelse(command="holdback",-0.12,0))

[State 3310, Gravity]
type = VelAdd
trigger1 = Anim=3311 && AnimElemTime(64) >= 0
y = 0.5

[State 3310, Hits Fwd]
type = HitDef
triggerall = !var(16) && (var(15) < 10 || var(20))
triggerall = Anim=3311  
trigger1 = AnimElem=2 || AnimElem=8 || AnimElem=14 || AnimElem=20 || AnimElem=26
trigger2 = AnimElem=32 || AnimElem=38 || AnimElem=44 || AnimElem=50 || AnimElem=56
attr = A, HA
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 4
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 2,2
guard.pausetime = 2,2
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -70
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = ifelse(p2bodydist x>15,1.5,0),-10
air.velocity = ifelse(p2bodydist x>15,1.5,0), (vel y - 1.55)
guard.velocity = -10.5
airguard.velocity = -8, -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120
kill = 0

[State 3310, Hits Back]
type = HitDef
triggerall = !var(16) && (var(15) < 10 || var(20))
triggerall = Anim=3311  
trigger1= AnimElem=5 || AnimElem=11 || AnimElem=17 || AnimElem=23
trigger2= AnimElem=29 || AnimElem=35 || AnimElem=41 || AnimElem=47 || AnimElem=53
attr = A, HA
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 4
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 2,2
guard.pausetime = 2,2
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -50), var(36) := -70
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = ifelse(p2bodydist x>15,1.5,0),-10
air.velocity = ifelse(p2bodydist x>15,1.5,0), (vel y - 1.55)
guard.velocity = -10.5
airguard.velocity = -8, -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120
kill = 0

[State 3310, Hit Final]
type = HitDef
trigger1 = !var(16) && (var(15) < 11 || var(20))
trigger1 = Anim=3311 && AnimElem = 62  
attr = A, HA
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 7
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 24,24
guard.pausetime = 12,12
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -69
air.animtype = DiagUp
fall.animtype = DiagUp
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -7,-2
air.velocity = -7,-2
guard.velocity = -10.5
airguard.velocity = -8, -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120

[State 3310, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = Anim=3311 && AnimElemTime(64) >= 0
moveType = I

[State 3310, End]
type = ChangeState
trigger1 = Anim=3311
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3305

;======================<Messatsu Gorasen>===================
[Statedef 3350]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3300
poweradd = ifelse(var(53) > 0, -1000, -2000)
sprpriority = 2
facep2 = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = Anim = 3300
trigger2 = Anim = 3351 && AnimElemTime(2)<0
time = 1
value = SCA

[State 3300, No Corner Push]
type = VarSet
trigger1 = Anim=3300 && !Time
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = !Time && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

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

[State 3300, SuperPause FX]
type = Helper
trigger1 = Anim=3300 && AnimElem=2
helperType = Normal
stateNo = 8510
ID = 8510
name = "Superpause FX"
posType = P1
pos = -32,-8
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = Anim=3300 && AnimElem=2
time = 48
moveTime = 48
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0+1*var(59)
darken = 0
poweradd = 0

[State 3300, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3300, PosSet]
type = PosSet
trigger1 = !Time 
y = 0

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = Anim=3300 && !AnimTime
value = 3351

[State 3300, StateTypeSet: Air, No Phys]
type = StateTypeSet
trigger1 = Anim=3300 && AnimElemTime(8)>0
trigger2 = Anim=3351
StateType = A
physics = N

[State 3300, Voice]
type = PlaySnd
trigger1 = Anim=3300 && AnimElem=2
value = 3000, 2
channel = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = Anim=3300 && AnimElem=7
value = 800, 2
channel = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = Anim=3351 && AnimElem=73
value = 3000, 0
channel = 0

[State 3300, Dust Helper]
type = Helper
trigger1 = Anim=3300 && AnimElem = 8
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3300, Jump Snd]
type = PlaySnd
trigger1 = Anim=3300 && AnimElem = 8
value = 41,0
channel = 3

[State 3300, Swing Snd]
type = PlaySnd
triggerall= Anim=3351
trigger1= AnimElem=1 || AnimElem=7 || AnimElem=13 || AnimElem=19 || AnimElem=25
trigger2= AnimElem=31 || AnimElem=37 || AnimElem=43 || AnimElem=49 || AnimElem=55
trigger3= AnimElem=61 || AnimElem=67 || AnimElem=73
value = 1,5
;channel = 1

[State 3300, Velocity]
type = VelSet
trigger1 = Anim=3300 && AnimElem=10
x = 0
y = -8

[State 3300, VelSet]
type = VelSet
trigger1 = Anim=3351 && AnimElemTime(76)<0 && vel y>0
y = 0

[State 3300, VelAdd]
type = VelAdd
trigger1 = Anim=3351 && AnimElemTime(76)<0 && vel y<0
y = 0.14

[State 3300, VelAdd Left/Right]
type = VelAdd
trigger1 = (Anim=3351 && AnimElemTime(76)<0) && (vel x=[-1.33,1.33]) && vel y<0
x = ifelse(command="holdfwd",0.12,ifelse(command="holdback",-0.12,0))

[State 3300, Gravity]
type = VelAdd
trigger1 = Anim=3351 && AnimElemTime(76) >= 0
y = 0.5

[State 3300, Hit 1st]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim=3300 && AnimElem = 8  
attr = S, HA
damage = ceil(ifElse(fvar(11) * 24 < 7, 7, fvar(11) * 24)), 7
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 16,16
guard.pausetime = 12,12
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -67
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = ifelse(p2bodydist x>15,2,0),-6
air.velocity = ifelse(p2bodydist x>15,2,0),-5
guard.velocity = -10.5
;airguard.velocity = -6, -4
;airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120
kill = 0

[State 3300, Hits Fwd]
type = HitDef
triggerall = !var(16) && (var(15) < 14 || var(20))
triggerall = Anim=3351  
trigger1 = AnimElem=2 || AnimElem=8 || AnimElem=14 || AnimElem=20
trigger2 = AnimElem=26 || AnimElem=32 || AnimElem=38 || AnimElem=44 || AnimElem=50
trigger3 = AnimElem=56 || AnimElem=62 || AnimElem=68 
attr = A, HA
damage = ceil(ifElse(fvar(11) * 16 < 7, 7, fvar(11) * 16)), 4
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 2,2
guard.pausetime = 2,2
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -70
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = ifelse(p2bodydist x>15,1.5,0),-10
air.velocity = ifelse(p2bodydist x>15,1.5,0), (vel y - 1.5)
guard.velocity = -10.5
airguard.velocity = -8, -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120
kill = 0

[State 3300, Hits Back]
type = HitDef
triggerall = !var(16) && (var(15) < 14 || var(20))
triggerall = Anim=3351  
trigger1= AnimElem=5 || AnimElem=11 || AnimElem=17 || AnimElem=23
trigger2= AnimElem=29 || AnimElem=35 || AnimElem=41 || AnimElem=47
trigger3= AnimElem=53 || AnimElem=59 || AnimElem=65 
attr = A, HA
damage = ceil(ifElse(fvar(11) * 16 < 7, 7, fvar(11) * 16)), 4
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 2,2
guard.pausetime = 2,2
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -50), var(36) := -70
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = ifelse(p2bodydist x>15,1.5,0),-10
air.velocity = ifelse(p2bodydist x>15,1.5,0), (vel y - 1.5)
guard.velocity = -10.5
airguard.velocity = -8, -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120

[State 3300, Hit Final]
type = HitDef
trigger1 = !var(16) && (var(15) < 15 || var(20))
trigger1 = Anim=3351 && AnimElem = 74 
attr = A, HA
damage = ceil(ifElse(fvar(11) * 47 < 7, 7, fvar(11) * 47)), 7
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 24,24
guard.pausetime = 12,12
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -69
air.animtype = DiagUp
fall.animtype = DiagUp
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -7,-2
air.velocity = -7,-2
guard.velocity = -10.5
airguard.velocity = -8, -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = Anim=3351 && AnimElemTime(76) >= 0
moveType = I

[State 3300, End]
type = ChangeState
trigger1 = Anim=3351
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3305

;======================<Messatsu Gousenpuu>===================
[Statedef 3360]
type    = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3310
poweradd = ifelse(var(53) > 0, -1000, -2000)
sprpriority = 2
;facep2 = 1

[State 3310, NotHitBy]
type = NotHitBy
trigger1 = Anim = 3310
trigger2 = Anim = 3361 && AnimElemTime(2)<0
time = 1
value = SCA

[State 3310, No Corner Push]
type = VarSet
trigger1 = Anim=3310 && AnimElem=3
fvar(5) = 0

[State 3310, Unguardable]
type = VarSet
trigger1 = Time=3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

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

[State 3310, SuperPause FX]
type = Helper
trigger1 = Anim=3310 && AnimElem=3
helperType = Normal
stateNo = 8510
ID = 8510
name = "Superpause FX"
posType = P1
pos = -34,-63
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3310, SuperPause]
type = SuperPause
trigger1 = Anim=3310 && AnimElem=3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0+1*var(59)
darken = 0
poweradd = 0

[State 3310, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3310, ChangeAnim]
type = ChangeAnim
trigger1 = Anim=3310 && !AnimTime
value = 3361

[State 3310, Voice]
type = PlaySnd
trigger1 = Anim=3310 && AnimElem=2
value = 3000, 2
channel = 0

[State 3310, Voice]
type = PlaySnd
trigger1 = Anim=3310 && AnimElem=4
value = 800, 2
channel = 0

[State 3310, Voice]
type = PlaySnd
trigger1 = Anim=3361 && AnimElem=78
value = 3000, 0
channel = 0

[State 3310, Swing Snd]
type = PlaySnd
triggerall= Anim=3361
trigger1= AnimElem=1 || AnimElem=7 || AnimElem=13 || AnimElem=19 || AnimElem=25
trigger2= AnimElem=31 || AnimElem=37 || AnimElem=43 || AnimElem=49 || AnimElem=55
trigger3= AnimElem=61 || AnimElem=67 || AnimElem=73
value = 1,5
;channel = 1

[State 3310, VelSet]
type = VelSet
trigger1 = Anim=3310
x = 0
y = 0

[State 3310, VelSet]
type = VelSet
trigger1 = Anim=3361 && AnimElemTime(15)<0 && pos y<-10
y = ifelse(AnimElemTime(9)<0,.33,.1)

[State 3310, VelSet]
type = VelSet
trigger1 = Anim=3361 && AnimElem=15
x = 0
y = -4

[State 3310, VelAdd]
type = VelAdd
trigger1 = Anim=3361 && (AnimElemTime(15)>=0 && AnimElemTime(82)<0) && vel y<0
y = 0.05

[State 3310, VelAdd Left/Right]
type = VelAdd
trigger1 = (Anim=3361 && AnimElemTime(82)<0) && (vel x=[-1.33,1.33]) && vel y<0
x = ifelse(command="holdfwd",0.12,ifelse(command="holdback",-0.12,0))

[State 3310, Gravity]
type = VelAdd
trigger1 = Anim=3361 && AnimElemTime(82) >= 0
y = 0.5

[State 3310, Hits Fwd]
type = HitDef
triggerall = !var(16) && (var(15) < 14 || var(20))
triggerall = Anim=3361  
trigger1 = AnimElem=2 || AnimElem=8 || AnimElem=14 || AnimElem=20
trigger2 = AnimElem=26 || AnimElem=32 || AnimElem=38 || AnimElem=44 || AnimElem=50
trigger3 = AnimElem=56 || AnimElem=62 || AnimElem=68 || AnimElem=74
attr = A, HA
damage = ceil(ifElse(fvar(11) * 16 < 7, 7, fvar(11) * 16)), 4
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 2,2
guard.pausetime = 2,2
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -70
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = ifelse(p2bodydist x>15,1.5,0),-10
air.velocity = ifelse(p2bodydist x>15,1.5,0), (vel y - 1.55)
guard.velocity = -10.5
airguard.velocity = -8, -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120
kill = 0

[State 3310, Hits Back]
type = HitDef
triggerall = !var(16) && (var(15) < 14 || var(20))
triggerall = Anim=3361  
trigger1= AnimElem=5 || AnimElem=11 || AnimElem=17 || AnimElem=23
trigger2= AnimElem=29 || AnimElem=35 || AnimElem=41 || AnimElem=47
trigger3= AnimElem=53 || AnimElem=59 || AnimElem=65 || AnimElem=71
attr = A, HA
damage = ceil(ifElse(fvar(11) * 16 < 7, 7, fvar(11) * 16)), 4
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 2,2
guard.pausetime = 2,2
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -50), var(36) := -70
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = ifelse(p2bodydist x>15,1.5,0),-10
air.velocity = ifelse(p2bodydist x>15,1.5,0), (vel y - 1.55)
guard.velocity = -10.5
airguard.velocity = -8, -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120
kill = 0

[State 3310, Hit Final]
type = HitDef
trigger1 = !var(16) && (var(15) < 15 || var(20))
trigger1 = Anim=3361 && AnimElem = 80  
attr = A, HA
damage = ceil(ifElse(fvar(11) * 52 < 7, 7, fvar(11) * 52)), 7
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
pausetime = 24,24
guard.pausetime = 12,12
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -69
air.animtype = DiagUp
fall.animtype = DiagUp
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -7,-2
air.velocity = -7,-2
guard.velocity = -10.5
airguard.velocity = -8, -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 18
envshake.ampl = 6
envShake.freq = 120

[State 3310, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = Anim=3361 && AnimElemTime(82) >= 0
moveType = I

[State 3310, End]
type = ChangeState
trigger1 = Anim=3361
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3305

;---------------------------------------------------------------------------
;Shun Goku Satsu
[StateDef 3500]
type = S
physics = N
moveType = A
anim = 3500 + (10*var(40))
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, -1000, -3000)
faceP2 = 1

[State 3500, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

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
var(17) = 43

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
trigger1 = var(40)!=2 && AnimElemTime(2) < 10
trigger2 = var(40)=2 && AnimElemTime(4) < 0
time = 1
value = SCA

 
[State 3500, Super Pause FX]
type = Helper
trigger1 = Time = 2
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 3,ifElse(var(40)=2, -50, -107)
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = var(40)!=2
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0+2*var(59)
darken = 0
[State 3500, Super Pause]
type = SuperPause
trigger1 = var(40)=2
trigger1 = !Time
time = 66
moveTime = 66
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0+2*var(59)
darken = 0

[State 3500, Voice]
type = PlaySnd
triggerall = !var(40)
trigger1 = !Time
value = 4,0
channel = 0

[State 3500, Voice]
type = PlaySnd
triggerall = var(40)=1
trigger1 = !Time
value = 3500,0
channel = 0

[State 3500, Voice]
type = PlaySnd
triggerall = var(40)=2
trigger1 = !Time
value = 180,3
channel = 0

[State 3500, PlaySnd]
type = PlaySnd
trigger1 = var(40)!=2 && AnimElem = 2
trigger2 = var(40)=2 && AnimElem = 23
value = 1400,var(40)
;channel = 2

[State 3500, VelSet]
type = VelSet
trigger1 = var(40)!=2 && AnimElem = 2
trigger2 = var(40)=2 && AnimElem = 23
x = ifelse(var(40)=1, 7, 5)

[State 3500, HitDef]
type = HitDef
trigger1 = AnimElemTime(2) >= 0
trigger1 = !var(38)
triggerall = P2bodydist X = [-const(size.ground.front),25]
attr = S, HT
hitFlag = M-
priority = 4, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = ifElse(var(40)=2, 3502, 3501)

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[Statedef 3501]
type = S
physics = N
moveType = A
anim = 3501; + var(40)=1
ctrl = 0
velSet = 0,0
poweradd = 0
sprPriority = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = !time
trigger1=var(40)=0
value=3501
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = !time
trigger1=var(40)=1
value=3502

[State 3501, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3501, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3505

[State 3501, Voice]
type = PlaySnd
trigger1 = !Time
value = 195,1
channel = 0

[State 3501, Pause]
type = Pause
trigger1 = !var(40) && AnimElemTime(2) >= 0 && AnimElemTime(17) < 0
trigger2 = var(40)=1 && AnimElemTime(2) >= 0 && AnimElemTime(35) < 0
time = 2
movetime = 2

[State 3501, AllPalFX]
type = AllPalFX
trigger1 = AnimElemTime(2) = -16
time = 16
sinadd = -255, -255, -255, 64

[State 3501, EnvColor]
type = EnvColor
trigger1 = !var(40) && AnimElemTime(2) >= 0 && AnimElemTime(17) < 0
trigger2 = var(40)=1 && AnimElemTime(2) >= 0 && AnimElemTime(35) < 0
value = 0, 0, 0
time = 2

[State 3501, AssertSpecial]
type = AssertSpecial
trigger1 = !var(40) && AnimElemTime(2) >= 0 && AnimElemTime(17) < 0
trigger2 = var(40)=1 && AnimElemTime(2) >= 0 && AnimElemTime(35) < 0
flag = nobardisplay
flag2 = noFG

[State 3501, TargetBind]
type = TargetBind
trigger1 = !var(40) && AnimElemTime(17) < 0
trigger2 = var(40)=1 && AnimElemTime(35) < 0
pos = 45, 0

[State 3501, HitAdd]
type = HitAdd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
value = 1

[State 3501, HitAdd (Shin)]
type = HitAdd
triggerall = var(40)=1
trigger1 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger2 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger3 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger5 = AnimElem = 33 || AnimElem = 34
value = 1

[State 3501, TargetLifeAdd]
type = TargetLifeAdd
triggerall = !var(40)
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15
value = floor(ifElse(fvar(11) * 30 < 7, -7, fvar(11) * -30))
kill = 0

[State 3501, TargetLifeAdd (Shin)]
type = TargetLifeAdd
triggerall = var(40)=1
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
trigger5 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger6 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger7 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger8 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger9 = AnimElem = 33
value = floor(ifElse(fvar(11) * 14 < 7, -7, fvar(11) * -14))
kill = 0

[State 3501, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = !var(40) && AnimElem = 16
value = floor(ifElse(fvar(11) * 100 < 7, -7, fvar(11) * -100))
kill = 1

[State 3501, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(40)=1 && AnimElem = 34
value = floor(ifElse(fvar(11) * 65 < 7, -7, fvar(11) * -65))
kill = 1

[State 3501, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
value = 36

[State 3501, TargetPowerAdd (Shin)]
type = TargetPowerAdd
triggerall = var(40)=1
trigger1 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger2 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger3 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger5 = AnimElem = 33 || AnimElem = 34
value = 36

[State 3501, VarAdd]
type = VarAdd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
var(13) = 1

[State 3501, VarAdd (Shin)]
type = VarAdd
triggerall = var(40)=1
trigger1 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger2 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger3 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger5 = AnimElem = 33 || AnimElem = 34
var(13) = 1

[State 3501, HitSnd]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15
value = 2,2
channel = 2

[State 3501, HitSnd (Shin)]
type = PlaySnd
triggerall = var(40)=1
trigger1 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger2 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger3 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger5 = AnimElem = 33 || AnimElem = 16
value = 2,2
channel = 2

[State 3501, Last HitSnd]
type = PlaySnd
trigger1 = !var(40) && AnimElem = 16
trigger2 = var(40)=1 && AnimElem = 34
value = 2,10
channel = 2

[State 3501, HitSpark]
type = Helper
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
stateNo = 8030
ID = 8000
name = "Spark"
posType = P2
pos = -25 + random%50, -90 + random%75
ownPal = 1
facing = ifelse(random > 500, 1, -1)
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
sprpriority = 5

[State 3501, HitSpark (Shin)]
type = Helper
triggerall = var(40)=1
trigger1 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger2 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger3 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger5 = AnimElem = 33 || AnimElem = 34
stateNo = 8030
ID = 8000
name = "Spark"
posType = P2
pos = -25 + random%50, -90 + random%75
ownPal = 1
facing = ifelse(random > 500, 1, -1)
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
sprpriority = 5

[State 3501, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
time = 6
freq = 120
ampl = -4

[State 3501, EnvShake (Shin)]
type = EnvShake
triggerall = var(40)=1
trigger1 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger2 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger3 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger5 = AnimElem = 33 || AnimElem = 34
time = 6
freq = 120
ampl = -4

[State 3501, Kanji]
type = Explod
triggerall = !NumExplod(196)
trigger1 = var(40)=0 && AnimElem = 17
trigger2 = var(40)=1 && AnimElem = 35
anim = ifElse(var(40)=1, 197, 196)
ID = 196
pos = 16,0
postype = p1
facing = ifelse(facing = 1, 1, -1)
removetime = -2
bindtime = -1
scale = .5,.5
sprpriority = 3
removeongethit = 1

[State 3501, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(196)
trigger1 = !var(40) && AnimElem = 18
trigger2 = var(40)=1 && AnimElem = 36
id = 196

[State 3501, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = !var(40) && AnimElem = 16
trigger2 = var(40)=1 && AnimElem = 34
value = 3506

[State 3501, Voice]
type = PlaySnd
trigger1 = !var(40) && AnimElem = 16
value = 180,0
channel = 0

[State 3501, Voice]
type = PlaySnd
trigger1 = var(40)=1 && AnimElem = 34
value = 180,2
channel = 0

[State 3501, Win]
type = ChangeState
trigger1 = !var(40) && AnimElemTime(16) >= 0 && WinKo
trigger2 = var(40)=1 && AnimElemTime(34) >= 0 && WinKo
value = 183

[State 3501, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Modern Success
[Statedef 3502]
type = S
physics = N
moveType = A
anim = 3503; + var(40)=1
ctrl = 0
velSet = 0,0
poweradd = 0
sprPriority = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 3501, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3501, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3505

[State 3501, Voice]
type = PlaySnd
trigger1 = AnimElem=3
value = 3502,0
channel = 0
[State 3501, Voice]
type = PlaySnd
trigger1 = AnimElem=7
value = 3502,1
channel = 0

[State 3501, Pause]
type = Pause
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(33) < 0
time = 2
movetime = 2

[State 3501, AllPalFX]
type = AllPalFX
trigger1 = AnimElemTime(2) = -16
time = 16
sinadd = -255, -255, -255, 64

[State 3501, EnvColor]
type = EnvColor
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(7) < 0
value = 0, 0, 0
under=1
time = 2
[State 3501, EnvColor]
type = EnvColor
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(33) < 0
value = 0, 0, 0
time = 2

[State 3501, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(33) < 0
flag = nobardisplay
flag2 = noFG

[State 3501, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(33) < 0
pos = 45, 0

[State 3501, HitAdd]
type = HitAdd
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14
trigger2 = AnimElem = 15 || AnimElem = 16 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20 || AnimElem = 21
trigger3 = AnimElem = 22 || AnimElem = 23 || AnimElem = 24 || AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || animelem = 28
trigger4 = AnimElem = 29|| AnimElem = 30 || AnimElem = 31 || AnimElem = 32 || AnimElem = 33
value = 1

[State 3501, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14
trigger2 = AnimElem = 15 || AnimElem = 16 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20 || AnimElem = 21
trigger3 = AnimElem = 22 || AnimElem = 23 || AnimElem = 24 || AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || animelem = 28
trigger4 = AnimElem = 29|| AnimElem = 30 || AnimElem = 31 || AnimElem = 32
value = floor(ifElse(fvar(11) * 14 < 7, -7, fvar(11) * -15))
kill = 0

[State 3501, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 33
value = floor(ifElse(fvar(11) * 131 < 7, -7, fvar(11) * -130))
kill = 1

[State 3501, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14
trigger2 = AnimElem = 15 || AnimElem = 16 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20 || AnimElem = 21
trigger3 = AnimElem = 22 || AnimElem = 23 || AnimElem = 24 || AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || animelem = 28
trigger4 = AnimElem = 29|| AnimElem = 30 || AnimElem = 31 || AnimElem = 32 || AnimElem = 33
value = 36

[State 3501, VarAdd]
type = VarAdd
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14
trigger2 = AnimElem = 15 || AnimElem = 16 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20 || AnimElem = 21
trigger3 = AnimElem = 22 || AnimElem = 23 || AnimElem = 24 || AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || animelem = 28
trigger4 = AnimElem = 29|| AnimElem = 30 || AnimElem = 31 || AnimElem = 32 || AnimElem = 33
var(13) = 1

[State 3501, HitSnd]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14
trigger2 = AnimElem = 15 || AnimElem = 16 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20 || AnimElem = 21
trigger3 = AnimElem = 22 || AnimElem = 23 || AnimElem = 24 || AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || animelem = 28
trigger4 = AnimElem = 29|| AnimElem = 30 || AnimElem = 31 || AnimElem = 32 || AnimElem = 33
value = 2,2
channel = 2

[State 3501, Last HitSnd]
type = PlaySnd
trigger1 = AnimElem = 33
value = 2,10
channel = 2

[State 3501, HitSpark]
type = Helper
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14
trigger2 = AnimElem = 15 || AnimElem = 16 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20 || AnimElem = 21
trigger3 = AnimElem = 22 || AnimElem = 23 || AnimElem = 24 || AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || animelem = 28
trigger4 = AnimElem = 29|| AnimElem = 30 || AnimElem = 31 || AnimElem = 32 || AnimElem = 33
stateNo = 8030
ID = 8000
name = "Spark"
posType = P2
pos = -25 + random%50, -90 + random%75
ownPal = 1
facing = ifelse(random > 500, 1, -1)
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
sprpriority = 5

[State 3501, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14
trigger2 = AnimElem = 15 || AnimElem = 16 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20 || AnimElem = 21
trigger3 = AnimElem = 22 || AnimElem = 23 || AnimElem = 24 || AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || animelem = 28
trigger4 = AnimElem = 29|| AnimElem = 30 || AnimElem = 31 || AnimElem = 32 || AnimElem = 33
time = 6
freq = 120
ampl = -4

[State 3501, Kanji]
type = PlaySnd
trigger1 = time = 31
trigger2 = time = 46
trigger3 = time = 61
trigger4 = time = 76
value = 3501, 2
channel = 2

[State 3500, SuperPause FX]
type = Helper
trigger1 = time = 25
helperType = Normal
stateNo = 4510
ID = 4510
name = "Kanji 1"
posType = P1
pos = 0,0
pauseMoveTime = 255
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1
[State 3500, SuperPause FX]
type = Helper
trigger1 = time = 40
helperType = Normal
stateNo = 4511
ID = 4511
name = "Kanji 2"
posType = P1
pos = 0,0
pauseMoveTime = 255
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1
[State 3500, SuperPause FX]
type = Helper
trigger1 = time = 55
helperType = Normal
stateNo = 4512
ID = 4512
name = "Kanji 3"
posType = P1
pos = 0,0
pauseMoveTime = 255
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1
[State 3500, SuperPause FX]
type = Helper
trigger1 = time = 70
helperType = Normal
stateNo = 4513
ID = 4513
name = "Kanji 4"
posType = P1
pos = 0,0
pauseMoveTime = 255
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3501, Kanji]
type = Explod
triggerall = !NumExplod(196)
trigger1 = AnimElem = 33
anim = 196
ID = 196
pos = 16,0
postype = p1
facing = ifelse(facing = 1, 1, -1)
removetime = -2
bindtime = -1
scale = .5,.5
sprpriority = 3
removeongethit = 1

[State 3501, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(196)
trigger1 = AnimElem = 36
id = 196

[State 3501, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = AnimElem = 33
value = 3506

[State 3501, Voice]
type = PlaySnd
trigger1 = AnimElem = 33
value = 3700,0
channel = 0

[State 3501, Win]
type = ChangeState
trigger1 = AnimElemTime(33) >= 0 && WinKo
value = 183

[State 3501, End]
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

[State 3505, ChangeState]
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

[State 3506, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3506

[State 3506, End]
type = SelfState
trigger1 = !AnimTime && Anim = 3506
value = IfElse(Alive,5120,5150)

;---------------------------------------------------------------------------
;Misogi
[StateDef 3600]
type = S
physics = N
moveType = A
anim = 3600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, -1000, -3000)
faceP2 = 1

[State 3600, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

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
var(17) = 43

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
trigger1 = AnimElemTime(23) < 0
time = 1
value = SCA

[State 3600, Super Pause FX]
type = Helper
trigger1 = Time = 2
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = -20,-50
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3600, Super Pause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0+2*var(59)
darken = 0

[State 3600, Voice]
type = PlaySnd
trigger1 = !Time
value = 3600,6
channel = 0

[State 3600, Voice]
type = PlaySnd
trigger1 = AnimElem = 25
value = 3600,1
channel = 0

[State 3600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 23
value = 3600,2

[State 3600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 25
value = 3600,3

[State 3600, Aura]
type = Explod
trigger1 = !NumExplod(735)
trigger1 = AnimElem = 2
anim = 735
ID = 735
pos = 0, 0
postype = P1
sprpriority = -1
ignorehitpause = 1
bindtime = -1
removetime = -1
ownpal = 1
removeongethit = 1
pausemovetime = 255
supermovetime = 255

[State 3600, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElemTime(23) >= 0
id = 735

[State 3600, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(23) >= 0
value = 0

[State 3600, PosAdd]
type = PosAdd
trigger1 = AnimElem = 23
x = (P2dist X) -20
y = -210

[State 3600, VelSet]
type = VelSet
trigger1 = AnimElem = 24
y = 15

[State 3600, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 23
statetype = A

[State 3600, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3600, Helper]
type = Helper
trigger1 = AnimElem = 22
ID = 3605
stateno = 3605
postype = p1
pos = 0,0
name = "Fade 1"

[State 3600, Helper]
type = Helper
trigger1 = AnimElem = 22
ID = 3606
stateno = 3605
postype = p1
pos = 0,0
name = "Fade 2"

[State 3600, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 5)
trigger1 = !Time
ID = 3600
attr = A, HA
hitFlag = MAF
guardFlag = H
priority = 4, Miss
damage = ceil(ifElse(fvar(11) * 504 < 7, 7, fvar(11) * 504)), 70
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 12, 12
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
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2, 10
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 14), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3600, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3600)
trigger1 = (Target(3600), StateNo = 5000) || (Target(3600), StateNo = 5010)
value = 3620
ID = 3600
ignorehitpause = 1

[State 3600, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3600)
trigger1 = (Target(3600), stateno = 5020)
value = 3621
ID = 3600
ignorehitpause = 1

[State 3600, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = ifelse(NumTarget(3600) && MoveHit, 3601, 3602)


;Landing (Success)
[StateDef 3601]
type = S
physics = S
moveType = I
velSet = 0,0
anim = 3601
sprpriority = -2

[State 3601, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(23) < 0
time = 1
value = SCA


[State 3601, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3601, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3601, Explod]
type = Explod
trigger1 = !Time
anim = 3610
id = 3610
sprpriority = 4
postype = P1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3601, Explod]
type = Explod
trigger1 = !Time
anim = 3613
id = 3613
sprpriority = 4
postype = P1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3601, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 3600,4

[State 3601, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 3600,5

[State 3601, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 5100,1

[State 3601, EnvShake]
type = EnvShake
trigger1 = !Time
time = 25
ampl = 8

[State 3501, Win]
type = ChangeState
trigger1 = !AnimTime && WinKo
value = 184

[State 3601, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Landing (Miss)
[StateDef 3602]
type = S
physics = S
moveType = I
velSet = 0,0
anim = 1606
sprpriority = -2

[State 3602, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3602, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3601, Explod]
type = Explod
trigger1 = !Time
anim = 3609
id = 3609
sprpriority = 4
postype = P1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3601, Explod]
type = Explod
trigger1 = !Time
anim = 3613
id = 3613
sprpriority = 4
postype = P1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3602, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 3600, 5

[State 3602, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 5100, 1

[State 3602, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20

[State 3602, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[Statedef 3620]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 3620, NHB]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3620, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5950)
value = 5950

[State 3620, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time && !SelfAnimExist(5950)
value = 3620

[State 3620, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3620, End]
type = SelfState
trigger1 = Time >= 150
value = ifelse(Alive, 5120, 5150)


;Target Air
[Statedef 3621]
type = A
physics = N
movetype = H
ctrl = 0
velset = GetHitVar(xvel), GetHitVar(yvel)
sprpriority = 1

[State 3621, NHB]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3621, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3621

[State 3621, Accel]
type = gravity
trigger1 = animelemtime(5) < 0

[State 3621, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 3621, VelSet]
type = VelSet
trigger1 = Pos Y >= 0
y = 0

[State 3621, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y >= 0
statetype = L
physics = C

[State 3621, ChangeAnim2]
type = ChangeAnim2
trigger1 = Pos Y >= 0
value = 3621
elem = 5
persistent = 0

[State 3621, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = f7, 2

[State 3621, End]
type = SelfState
trigger1 = AnimElemTime(7) >= 150
value = ifelse(alive, 5120, 5150)

;---------------------------------------------------------------------------
;Kongou Kokuretsuzan
[StateDef 3700]
type = S
physics = S
moveType = A
anim = 3700
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, -1000, -3000)
faceP2 = 1

[State 3700, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

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
var(17) = 43

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
trigger1 = AnimElemTime(17) < 0
time = 1
value = SCA

[State 3700, Super Pause FX]
type = Helper
trigger1 = Time = 2
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = -19,-123
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3700, Super Pause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0+2*var(59)
darken = 0

[State 3700, Voice]
type = PlaySnd
trigger1 = !Time
value = 730,2
channel = 0

[State 3700, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(17) < 0
value = 0
ignorehitpause = 1

[State 3700, Aura]
type = Explod
trigger1 = !NumExplod(3703)
trigger1 = AnimElem = 4
anim = 3703
ID = 3703
pos = 0, 0
postype = P1
sprpriority = 2
ignorehitpause = 1
bindtime = -1
removetime = -2
ownpal = 1
removeongethit = 1
pausemovetime = 255
supermovetime = 255

[State 3700, Helper]
type = Helper
trigger1 = AnimElem = 15
name = "Bolt"
ID = 3705
stateno = 3705
postype = p1
facing = 1
;keyctrl = 1
ownpal = 1
;ignorehitpause = 1
;persistent = 0

[State 3700, Helper]
type = Helper
trigger1 = AnimElemTime(15) = 12
name = "Energy 1"
ID = 3706
stateno = 3706
postype = p1
facing = 1
;keyctrl = 1
ownpal = 1
;ignorehitpause = 1
;persistent = 0

[State 3700, Helper]
type = Helper
trigger1 = AnimElemTime(15) = 12
name = "Energy 2"
ID = 3706
stateno = 3706
postype = p1
facing = -1
;keyctrl = 1
ownpal = 1
;ignorehitpause = 1
;persistent = 0

[State 3700, Explod]
type = Explod
trigger1 = AnimElemTime(15) = 12
anim = 3707
ID = 3707
postype = p1
facing = 1
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 0

[State 3700, Explod]
type = Explod
trigger1 = AnimElemTime(15) = 12
anim = 3707
ID = 3707
postype = p1
facing = -1
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 0

[State 3700, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(15) = 0
time = 25
ampl = 8

[State 3700, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(15) = 25
time = 25
ampl = 4

[State 3700, Voice]
type = PlaySnd
trigger1 = AnimElem = 14
value = 3700,0
channel = 0

[State 3700, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 15
value = 3700,1

[State 3700, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0
movetype = I

[State 3700, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Kongou Kokuretsuzan
[StateDef 3750]
type = S
physics = S
moveType = A
anim = 3700
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, -1000, -2000)
faceP2 = 1

[State 3700, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

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
var(17) = 43

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
trigger1 = AnimElemTime(17) < 0
time = 1
value = SCA

[State 3700, Super Pause FX]
type = Helper
trigger1 = Time = 2
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = p1
pos = -19,-123
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3700, Super Pause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0+1*var(59)
darken = 0

[State 3700, Voice]
type = PlaySnd
trigger1 = !Time
value = 730,1
channel = 0

[State 3700, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(17) < 0
value = 0
ignorehitpause = 1

[State 3700, Aura]
type = Explod
trigger1 = !NumExplod(3703)
trigger1 = AnimElem = 4
anim = 3703
ID = 3703
pos = 0, 0
postype = P1
sprpriority = 2
ignorehitpause = 1
bindtime = -1
removetime = -2
ownpal = 1
removeongethit = 1
pausemovetime = 255
supermovetime = 255

[State 3700, Helper]
type = Helper
trigger1 = AnimElem = 15
name = "Bolt"
ID = 3705
stateno = 3705
postype = p1
facing = 1
;keyctrl = 1
ownpal = 1
;ignorehitpause = 1
;persistent = 0

[State 3700, Helper]
type = Helper
trigger1 = AnimElemTime(15) = 12
name = "Energy 1"
ID = 3756
stateno = 3756
postype = p1
facing = 1
;keyctrl = 1
ownpal = 1
;ignorehitpause = 1
;persistent = 0

[State 3700, Helper]
type = Helper
trigger1 = AnimElemTime(15) = 12
name = "Energy 2"
ID = 3756
stateno = 3756
postype = p1
facing = -1
;keyctrl = 1
ownpal = 1
;ignorehitpause = 1
;persistent = 0

[State 3700, Explod]
type = Explod
trigger1 = AnimElemTime(15) = 12
anim = 3707
ID = 3707
postype = p1
facing = 1
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 0

[State 3700, Explod]
type = Explod
trigger1 = AnimElemTime(15) = 12
anim = 3707
ID = 3707
postype = p1
facing = -1
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 0

[State 3700, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(15) = 0
time = 25
ampl = 8

[State 3700, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(15) = 25
time = 25
ampl = 4

[State 3700, Voice]
type = PlaySnd
trigger1 = AnimElem = 14
value = 3700,0
channel = 0

[State 3700, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 15
value = 3700,1

[State 3700, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0
movetype = I

[State 3700, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Tenshou Kaireki Jin
[Statedef 3800]
type=S
physics=S
movetype=A
anim=3800
ctrl=0
velset=0,0
sprpriority=1
poweradd=-3000
facep2=1

[State 3200, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3200, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3200, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3200, Superpause FX]
type = helper
trigger1 = Time = 3
helpertype = normal
stateno = 8520
ID = 8520
name = "Superpause FX"
postype = p1
pos = -18, -64
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 3
time = 50
movetime = 50
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0+2*var(59)
darken = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = !Time
value = 3800,1
channel = 0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 1,5
channel = 1

[State 3300, Voice]
type = PlaySnd
trigger1 = animelem=10
value = 3000, 0
channel = 0

[State 40, Position]
type = PosAdd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
trigger3 = AnimElem = 9
x = 4

[State 220, Hit]
type=hitdef
trigger1= !var(16) && var(15)<1
trigger1= animelem=10
ID = 3800
attr = S,HA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*190<7, 7, fvar(11)*190)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 24,24
guard.pausetime = 24,24
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -7.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity =-7.16, -8.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8014)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=70), var(36):=-74
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 24
envshake.ampl = 6
envshake.freq = 120
kill=0

[State 3100, TargetState]
type = TargetState
trigger1 = NumTarget(3800)
trigger1 = MoveHit && Target, Alive
value = 3815
ID = 3800
ignoreHitPause = 1
persistent = 0

[State 3200, VarSet]
type = VarSet
triggerall = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit = 1 && NumTarget(3800)
var(10) = animelemno(0)
ignoreHitPause = 1

[State 3401, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3800) && MoveHit
value = 2,3200
channel = 3
ignoreHitPause = 1
persistent = 0

[State 3401, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3800) && MoveHit
trigger1 = AnimElemNo(0) = (var(10) + 1)
value = 3200,1
channel = 4
ignoreHitPause = 1
persistent = 0

[State 3100, ChangeState]
type = ChangeState
trigger1 = NumTarget(3800)
trigger1 = MoveHit && Target, Alive
value = 3810
[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

[Statedef 3810]
type=S
physics=S
movetype=A
anim=3810
ctrl=0
velset=0,0
sprpriority=1
poweradd=0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic


[State 8500, BGpalFX]
type = BGpalFX
trigger1 = AnimElemTime(9)>0
time = 1
color = 0
mul = 0,0,0

[State 3216, Push]
type = playerpush
trigger1 = 1
value = 0
[State 0, VelSet]
type = VelAdd
trigger1 = time > 60 && time < 90
x = -0.5
y = 0
[State 0, VelSet]
type = VelAdd
trigger1 = time > 90 && time < 180
x = -0.8
y = 0
[State 3216, Vel]
type = velset
trigger1 = time = 180
x = 28
y = -2

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 3800, 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10 || AnimElem = 14 || AnimElem = 17 || AnimElem = 20 || AnimElem = 23
trigger2 = AnimElem = 26 || AnimElem = 29
value = 1, 5
channel = 2

[State 3350, Tatsumaki]
type=Helper
trigger1=animelem=20
helperType=Normal
stateNo=3850
ID=3850
name="Shinku-Tatsumaki"
posType=P1
size.xScale=.3
size.yScale=.2
ownPal=1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 186
value = 3811
ctrl = 0


[Statedef 3811]
type    = A
movetype= A
physics = N
anim=3811
ctrl=0
velset=1,0
sprpriority=1
poweradd=0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(6)<0
flag = nomusic

[State 8500, BGpalFX]
type = BGpalFX
trigger1 = AnimElemTime(5)<0
time = 1
color = 0
mul = 0,0,0

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = AnimElemTime(5) > 0 && AnimElemTime(6) < 0
time = 1
add = 256 * (Time - 8), 256 * (Time - 8), 256 * (Time - 8)

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem=3
time = 24
freq = 120
ampl = 6

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(5) < 0&& !(time % 4)
time = 12
freq = 120
ampl = 2

[State 8610, Kanji]
type = explod
trigger1 = AnimElem=3
anim = 3820
ID = 3800
sprpriority = -5
postype = P2
facing = 1
pos =0, -50
scale = 0.5 * (1.3333333 * gameheight / gamewidth), 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = -1


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(5) < 0
scale = 0.5 + (0.0025 * Time), 0.5 + (0.0025 * Time)


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 5
id = 3800


[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(4) < 0
x = 0
y = 0
;ignorehitpause = 
;persistent = 
[State 0, VelSet]
type = VelSet
trigger1 = AnimElem=5
x = 7
y = -1
[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) >= 0
y = 0.15

[State 3216, Push]
type = playerpush
trigger1 = 1
value = 0

[State 820, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 3
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(62 * const(size.xScale)), ceil(-50 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3210, Power]
type = targetpoweradd
trigger1 = numtarget && animelem = 3
value = 36
[State 3210, Damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 5
value = floor(ifelse(320 * fvar(11) < 7, -7, -320 * fvar(11)))

[State 3210, Hit]
type = hitadd
trigger1 = numtarget && animelem = 3
value = 1
[State 3210, HitCount]
type = varadd
trigger1 = numtarget && animelem = 3
var(13) = 1
[State 3210, Juggle]
type = varset
trigger1 = numtarget && animelem = 3
var(15) = 0

[State 3210, Throw]
type = targetstate
trigger1 = numtarget && animelem = 3
value = 3817

[State 3200, Voice]
type = PlaySnd
trigger1 = animelemtime(4)=40
value = 3800,2
channel = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3812
ctrl = 0

;Gorasen/Gousenpuu Landing
[Statedef 3812]
type = S
movetype = I
physics = S
ctrl = 0
anim = 3812
velset = 0, 0

[State 3305, On Ground]
type = Posset
trigger1 = !Time
Y = 0

[State 3305, Land Snd]
type = PlaySnd
trigger1 = Time = 1
value = 52,0

[State 3305, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
pos = 5, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3305, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--- Target Thrown ---
[Statedef 3815]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 2

[State 3621, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3216, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 3216, Push
type = playerpush
trigger1 = 1
value = 0
[State 3216, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 3216, Anim]
type = changeanim
trigger1 = !time
value = 5070

[State 3216, Vel]
type = veladd
trigger1 = time
y = 0.14
[State 3216, Vel]
type = velset
trigger1 = time = 1
x = 0
y = -15

[State 3216, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;--- Target Hit ---
[Statedef 3817]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 3217, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3217, Push
type = playerpush
trigger1 = 1
value = 0
[State 3217, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 3217, Anim]
type = changeanim
trigger1 = 1
value = 5012

[State 3217, End]
type = changestate
trigger1 = enemy,animelemtime(5)>0
trigger2 = time>190
value = 3818


;--- Target Falling ---
[Statedef 3818]
type = A
movetype = H
physics = N
sprpriority = 0

[State 3218, Vel]
type = veladd
trigger1 = 1
y = 0.5
[State 3218, Vel]
type = velset
trigger1 = !time
x = 0
y = -20

[State 3218, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0
[State 3218, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3218, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 3218, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;========================<WotRD KANJI 1 >=============================
[Statedef 4510]
physics = N
velset = 0, 0
anim = 1

[State 7610, Kanji]
type = explod
trigger1 = !time
anim = 4510
ID = 4510
sprpriority = -5
postype = Left
pos = 270,50
removetime = -2
ownPal = 1
onTop = 1
pauseMoveTime = 300
superMoveTime = 300
persistent = 0

[State 7610, Shrink]
type = modifyexplod
trigger1 = time = [0,5]
ID = 4510
scale = 1-(time*.083),1-(time*.083)

[State 7610, Shrink]
type = modifyexplod
trigger1 = time >= 6
ID = 4510
scale = 0.25, 0.25

[State 7610, Kanji]
type = explod
trigger1 = !time
anim = 4514
ID = 4514
sprpriority = -6
postype = Left
pos = 270,50
Scale = 0.25,0.25
removetime = -2
ownPal = 1
onTop = 1
pauseMoveTime = 300
superMoveTime = 300
persistent = 0

[State 8010, Scale Center Explod]
type = ModifyExplod
triggerall = NumExplod(4514)
trigger1 = time >=2
ID = 4514
scale = 0.25 + (0.009375 * Time), 0.25 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =Root,Animelemtime(7)=0
id = 4510

[State 7610, End]
type = destroyself
trigger1 = Root,Animelemtime(7)=0

;========================<WotRD KANJI 2 >=============================
[Statedef 4511]
physics = N
velset = 0, 0
anim = 1

[State 7610, Kanji]
type = explod
trigger1 = !time
anim = 4511
ID = 4511
sprpriority = -5
postype = Left
pos = 270,160
removetime = -2
ownPal = 1
onTop = 1
pauseMoveTime = 300
superMoveTime = 300
persistent = 0

[State 7610, Shrink]
type = modifyexplod
trigger1 = time = [0,5]
ID = 4511
scale = 1-(time*.083),1-(time*.083)

[State 7610, Shrink]
type = modifyexplod
trigger1 = time >= 6
ID = 4511
scale = 0.25, 0.25

[State 7610, Kanji]
type = explod
trigger1 = !time
anim = 4515
ID = 4515
sprpriority = -6
postype = Left
pos = 270,160
Scale = 0.25,0.25
removetime = -2
ownPal = 1
onTop = 1
pauseMoveTime = 300
superMoveTime = 300
persistent = 0

[State 8010, Scale Center Explod]
type = ModifyExplod
triggerall = NumExplod(4515)
trigger1 = time >=2
ID = 4515
scale = 0.25 + (0.009375 * Time), 0.25 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =Root,Animelemtime(7)=0
id = 4511

[State 7610, End]
type = destroyself
trigger1 = Root,Animelemtime(7)=0

;========================<WotRD KANJI 3 >=============================
[Statedef 4512]
physics = N
velset = 0, 0
anim = 1

[State 7610, Kanji]
type = explod
trigger1 = !time
anim = 4512
ID = 4512
sprpriority = -5
postype = Left
pos = 50,60
removetime = -2
ownPal = 1
onTop = 1
pauseMoveTime = 300
superMoveTime = 300
persistent = 0

[State 7610, Shrink]
type = modifyexplod
trigger1 = time = [0,5]
ID = 4512
scale = 1-(time*.083),1-(time*.083)

[State 7610, Shrink]
type = modifyexplod
trigger1 = time >= 6
ID = 4512
scale = 0.25, 0.25

[State 7610, Kanji]
type = explod
trigger1 = !time
anim = 4516
ID = 4516
sprpriority = -6
postype = Left
pos = 50,60
Scale = 0.25,0.25
removetime = -2
ownPal = 1
onTop = 1
pauseMoveTime = 300
superMoveTime = 300
persistent = 0

[State 8010, Scale Center Explod]
type = ModifyExplod
triggerall = NumExplod(4516)
trigger1 = time >=2
ID = 4516
scale = 0.25 + (0.009375 * Time), 0.25 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =Root,Animelemtime(7)=0
id = 4512

[State 7610, End]
type = destroyself
trigger1 = Root,Animelemtime(7)=0

;========================<WotRD KANJI 4 >=============================
[Statedef 4513]
physics = N
velset = 0, 0
anim = 1

[State 7610, Kanji]
type = explod
trigger1 = !time
anim = 4513
ID = 4513
sprpriority = -5
postype = Left
pos = 50,160
removetime = -2
ownPal = 1
onTop = 1
pauseMoveTime = 300
superMoveTime = 300
persistent = 0

[State 7610, Shrink]
type = modifyexplod
trigger1 = time = [0,5]
ID = 4513
scale = 1-(time*.083),1-(time*.083)

[State 7610, Shrink]
type = modifyexplod
trigger1 = time >= 6
ID = 4513
scale = 0.25, 0.25

[State 7610, Kanji]
type = explod
trigger1 = !time
anim = 4517
ID = 4517
sprpriority = -6
postype = Left
pos = 50,160
Scale = 0.25,0.25
removetime = -2
ownPal = 1
onTop = 1
pauseMoveTime = 300
superMoveTime = 300
persistent = 0

[State 8010, Scale Center Explod]
type = ModifyExplod
triggerall = NumExplod(4517)
trigger1 = time >=2
ID = 4517
scale = 0.25 + (0.009375 * Time), 0.25 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =Root,Animelemtime(7)=0
id = 4513

[State 7610, End]
type = destroyself
trigger1 = Root,Animelemtime(7)=0