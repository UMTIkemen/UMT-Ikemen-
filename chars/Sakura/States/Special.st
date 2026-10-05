; ________________________________
;| Sakura Kasugano by DeathScythe |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

;---------------------------------------------------------------------------
;Hadouken
[StateDef 1000]
type = S
physics = S
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, Timer Reset]
type = VarSet
trigger1 = !Time
var(44) = 0

[State 1000, Timer Count]
type = VarAdd
triggerAll = !var(40) && !AILevel
triggerAll = var(44) < 16
triggerAll = AnimElemTime(2) >= 0 && AnimElemTime(8) < 0
trigger1 = Command = "holdx" || Command = "holdy" || Command = "holdz"
var(44) = 1

[State 1000, Timer Count AI]
type = Null
triggerAll = !var(40) && AILevel
triggerAll = AnimElemTime(2) >= 0 && AnimElemTime(8) < 0
trigger1 = P2BodyDist X > 170 || P2BodyDist X < 100 && P2MoveType = A
trigger1 = var(44) := 0
trigger2 = P2BodyDist X = [100,170]
trigger2 = var(44) := 8
trigger3 = P2BodyDist X < 100 && !EnemyNear, Ctrl && P2MoveType != A
trigger3 = var(44) := 16

[State 1000, ChangeAnim]
type = ChangeAnim
triggerAll = !var(40)
trigger1 = var(44) < 8 && AnimElemTime(4) = 0
trigger2 = var(44) < 16 && AnimElemTime(6) = 0
value = 1000
elem = 8

[State 1000, ChangeAnim]
type = ChangeAnim
triggerAll = var(40) = 1
trigger1 = AnimElemTime(4) = 0
value = 1000
elem = 8

[State 1000, Set]
type = VarSet
triggerAll = !var(40)
trigger1 = AnimElem = 8
var(44) = ifElse(var(44) < 8, 0, ifElse(var(44) >= 8 && var(44) < 16, 1, 2))

[State 1000, Energy]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 1004
ID = 1004
name = "Hadouken Energy"
posType = P1
pos = 0, 0
size.xScale = .5 * const(size.xscale)
size.yScale = .5 * const(size.yscale)
ownPal = 1

[State 1000, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 9
value = 1000,0
channel = 0

[State 1000, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 9
value = 1000,10
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1000, 1
channel = 2

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 1005
ID = 1005
name = "Hadouken"
posType = P1
pos = ceil(75 * const(size.xscale)), ceil(-54 * const(size.yscale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Hadoushou
[StateDef 1030]
type = S
physics = S
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, 0, -500)
faceP2 = 1

[State 1030, Max Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 70

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
;channel = 1

[State 1030, Energy]
type = Helper
trigger1 = Anim = 1030
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 1004
ID = 1004
name = "Hadouken Energy"
posType = P1
pos = 0, 0
size.xScale = .5 * const(size.xscale)
size.yScale = .5 * const(size.yscale)
ownPal = 1

[State 1030, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = Anim = 1030
trigger1 = AnimElem = 5
value = 4,2
channel = 0

[State 1030, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = Anim = 1030
trigger1 = AnimElem = 5
value = 4,12
channel = 0

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = Anim = 1030
trigger1 = AnimElem = 5
value = 1000, 1
channel = 2

[State 1030, Projectile]
type = Helper
trigger1 = Anim = 1030
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1035
ID = 1035
name = "Hadoushou Burst"
posType = P1
pos = ceil(90 * const(size.xscale)), ceil(-54 * const(size.yscale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 1030 && AnimElemTime(6) >= 0
trigger1 = !NumHelper(1035)
trigger2 = NumHelper(1035) && (Helper(1035), AnimElemTime(17) >= 0)
value = 1031

[State 1030, End]
type = ChangeState
trigger1 = Anim = 1031 && !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Tengyou Hadouken
[StateDef 1050]
type = S
physics = S
moveType = A
anim = 1050
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1050, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1050, Timer Reset]
type = VarSet
trigger1 = !Time
var(44) = 0

[State 1050, Timer Count]
type = VarAdd
triggerAll = !var(40) && !AILevel
triggerAll = var(44) < 16
triggerAll = AnimElemTime(2) >= 0 && AnimElemTime(8) < 0
trigger1 = Command = "holdx" || Command = "holdy" || Command = "holdz"
var(44) = 1

[State 1050, Timer Count AI]
type = VarSet
triggerAll = !var(40) && AILevel
trigger1 = AnimElemTime(2) = 0
var(44) = ifElse(Random < 500, 0, ifElse(Random < 500, 8, 16))

[State 1050, ChangeAnim]
type = ChangeAnim
triggerAll = !var(40)
trigger1 = var(44) < 8 && AnimElemTime(4) = 0
trigger2 = var(44) < 16 && AnimElemTime(6) = 0
value = 1050
elem = 8

[State 1050, ChangeAnim]
type = ChangeAnim
triggerAll = var(40) = 1
trigger1 = AnimElemTime(4) = 0
value = 1050
elem = 8

[State 1050, Set]
type = VarSet
triggerAll = !var(40)
trigger1 = AnimElem = 8
var(44) = ifElse(var(44) < 8, 0, ifElse(var(44) >= 8 && var(44) < 16, 1, 2))

[State 1050, Energy]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 1004
ID = 1004
name = "Hadouken Energy"
posType = P1
pos = 0, 0
size.xScale = .5 * const(size.xscale)
size.yScale = .5 * const(size.yscale)
ownPal = 1

[State 1050, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 9
value = 1000,0
channel = 0

[State 1050, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 9
value = 1000,10
channel = 0

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1000, 1
channel = 2

[State 1050, Projectile]
type = Helper
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 1055
ID = 1055
name = "Hadouken"
posType = P1
pos = ceil(50 * const(size.xscale)), ceil(-95 * const(size.yscale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Tengyou Hadouken
[StateDef 1080]
type = S
physics = N
moveType = A
anim = 1080
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, 0, -500)
faceP2 = 1

[State 1080, Max Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1080, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1080, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1080, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1080, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 42

[State 1080, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1080, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
;channel = 1

[State 1080, Energy]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 1004
ID = 1004
name = "Hadouken Energy"
posType = P1
pos = 0, 0
size.xScale = .5 * const(size.xscale)
size.yScale = .5 * const(size.yscale)
ownPal = 1

[State 1080, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 5
value = 1000,0
channel = 0

[State 1080, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 5
value = 1000,10
channel = 0

[State 1080, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000, 1
channel = 2

[State 1080, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1085
ID = 1085
name = "Hadouken"
posType = P1
pos = ceil(50 * const(size.xscale)), ceil(-95 * const(size.yscale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1080, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Shououken
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(PrevStateNo = 750, 0, 72 * !var(20))
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H || Random < 333 || var(20), 2, ifElse(Random < 500, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(!var(10), 1100, ifElse(var(10) = 1, 1110, 1120))

[State 1100, VelSet]
type = VelSet
trigger1 = !Time
x = 6.7

[State 1100, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = 1100,0
channel = 0

[State 1100, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = 1100,10
channel = 0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2
channel = 1

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = var(10) != 2 && AnimElem = 6
trigger2 = var(10) = 2 && AnimElem = 8
value = 40,0
channel = 3

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = var(10) != 2 && AnimElem = 6
trigger2 = var(10) = 2 && AnimElem = 8
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = var(10) != 2 && AnimElem = 6
trigger2 = var(10) = 2 && AnimElem = 8
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shououken Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) != 2 && AnimElem = 6
trigger2 = var(10) = 2 && AnimElem = 8
x = 1.675
y = ifElse(var(10) = 2, -9.375, ifElse(var(10) = 1, -7.5, -6.25))

[State 1100, Gravity]
type = VelAdd
trigger1 = var(10) != 2 && AnimElemTime(6) >= 0
trigger2 = var(10) = 2 && AnimElemTime(8) >= 0
;CvS2 uses .58
y = .58 ;.51

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = var(10) != 2 && AnimElemTime(7) >= 0
trigger2 = var(10) = 2 && AnimElemTime(9) >= 0
moveType = I

[State 1100, HitDef LP]
type = HitDef
trigger1 = !var(10)
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 + (var(10) * 7) < 7, 7, fvar(11) * 77 + (var(10) * 7))), ifElse(var(20), 2, 7)
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23, -9.56
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -2.23, -9.56
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -73
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef MP1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = var(10) = 1 && AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), ifElse(var(20), 2, 7)
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
guard.pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.23
guard.cornerPush.velOff = 0
air.velocity = -2.23, -9.56
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef MP2 HP34]
type = HitDef
triggerall = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = var(10) = 1 && AnimElem = 5
trigger2 = var(10) = 2 && AnimElem = 6
trigger3 = var(10) = 2 && AnimElem = 7
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), ifElse(var(20), 2, 7)
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
guard.pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.23
guard.cornerPush.velOff = 0
air.velocity = -2.23, -9.56
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -73
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef MP3 HP5]
type = HitDef
triggerall = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = var(10) = 1 && AnimElem = 6
trigger2 = var(10) = 2 && AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), ifElse(var(20), 2, 7)
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
guard.pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23, -9.56
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -2.23, -9.56
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 34), var(36) := -97
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef HP1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = var(10) = 2
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), ifElse(var(20), 2, 7)
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
guard.pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.23
guard.cornerPush.velOff = 0
air.velocity = -2.23, -9.56
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef HP2]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = var(10) = 2
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), ifElse(var(20), 2, 7)
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
guard.pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.23
guard.cornerPush.velOff = 0
air.velocity = -2.23, -9.56
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1101


;Landing
[StateDef 1101]
type = S
physics = N
moveType = I
velSet = 0,0
anim = 1101

[State 1101, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1101, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1101, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Shououken
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1130
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, 0, -500)
faceP2 = 1

[State 1130, Max Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1130, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 58

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
;channel = 1

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1

[State 1130, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 14
value = 1,2
channel = 1

[State 1130, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = 1100,0
channel = 0

[State 1130, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = 1100,10
channel = 0

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 13
x = 8.93

[State 1130, VelAdd]
type = VelAdd
triggerall = Vel X > 0
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(13) >= 1
x = -0.55

[State 1130, VelSet]
type = VelSet
triggerall = Vel X < 0
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(13) > 0
x = 0

[State 1130, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 16
stateType = A
physics = N

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 16
value = 40,0
channel = 3

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 16
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shououken Dust"
posType = P1
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 16
y = -8.93

[State 1130, Gravity]
type = VelAdd
trigger1 = AnimElemTime(16) > 0
y = 0.58

[State 1130, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4 || AnimElem = 14
attr = S, SA
hitFlag = MAF
guardFlag = M
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
ground.velocity = -3.35, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.35
guard.cornerPush.velOff = 0
air.velocity = -3.35, -8.75
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 2]
type = HitDef
triggerall = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 5 || AnimElem = 15
attr = S, SA
hitFlag = MAF
guardFlag = M
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
ground.velocity = -3.35, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.35
guard.cornerPush.velOff = 0
air.velocity = -3.35, -8.75
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -73
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 3]
type = HitDef
triggerall = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
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
ground.velocity = -3.35, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.35
guard.cornerPush.velOff = 0
air.velocity = -3.35, -8.75
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -93
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 4]
type = HitDef
triggerall = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 16 || AnimElem = 17
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.35, -8.75
ground.cornerPush.velOff = 0
guard.velocity = -3.35
guard.cornerPush.velOff = 0
air.velocity = -3.35, -8.75
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 34), var(36) := -97
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(18) >= 0
movetype = I

[State 1130, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1101

;---------------------------------------------------------------------------
;Shououken (Dark)
[StateDef 1150]
type = S
physics = N
moveType = A
anim = 1150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1150, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1150, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(var(20), 0, ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0)))

[State 1150, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(!var(10), 1150, ifElse(var(10) = 1, 1160, 1170))

[State 1150, Dust Helper]
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

[State 1150, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 5.58

[State 1150, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2
value = 1100,0
channel = 0

[State 1150, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2
value = 1100,10
channel = 0

[State 1150, Step Sound 1]
type = PlaySnd
trigger1 = Anim = 1150 && (AnimElem = 3 || AnimElem = 6)
trigger2 = Anim = 1160 && (AnimElem = 3 || AnimElem = 6 || AnimElem = 9)
trigger3 = Anim = 1170 && (AnimElem = 3 || AnimElem = 6 || AnimElem = 9 || AnimElem = 12)
value = 100, ifElse((AnimElem = 3 || AnimElem = 9), 0, 1)

[State 1150, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110,0

[State 1150, Woosh Sound]
type = PlaySnd
trigger1 = Anim = 1150 && AnimElem = 6
trigger2 = Anim = 1160 && AnimElem = 9
trigger3 = Anim = 1170 && AnimElem = 12
value = 1,2
channel = 1

[State 1150, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 1150 && AnimElemTime(6) < 0 && MoveHit
trigger2 = Anim = 1160 && AnimElemTime(9) < 0 && MoveHit
trigger3 = Anim = 1170 && AnimElemTime(12) < 0 && MoveHit
value = Anim
elem = ifElse(Anim = 1150, 6, ifElse(Anim = 1160, 9, 12))
ignorehitpause = 1

[State 1150, Jump Sound]
type = PlaySnd
trigger1 = !var(10) && AnimElem = 12
trigger2 = var(10) = 1 && AnimElem = 15
trigger3 = var(10) = 2 && AnimElem = 18
value = 40,0
channel = 3

[State 1150, StateTypeSet]
type = StateTypeSet
trigger1 = !var(10) && AnimElem = 12
trigger2 = var(10) = 1 && AnimElem = 15
trigger3 = var(10) = 2 && AnimElem = 18
stateType = A
physics = N

[State 1150, Dust Helper]
type = Helper
trigger1 = !var(10) && AnimElem = 12
trigger2 = var(10) = 1 && AnimElem = 15
trigger3 = var(10) = 2 && AnimElem = 18
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shououken Dust"
posType = P1
ownPal = 1

[State 1150, VelSet]
type = VelSet
trigger1 = !var(10) && AnimElem = 12
trigger2 = var(10) = 1 && AnimElem = 15
trigger3 = var(10) = 2 && AnimElem = 18
x = 4.46
y = -7.5 - (var(10) * 1.25)

[State 1150, Gravity]
type = VelAdd
trigger1 = !var(10) && AnimElemTime(12) > 0
trigger2 = var(10) = 1 && AnimElemTime(15) > 0
trigger3 = var(10) = 2 && AnimElemTime(18) > 0
y = .51

[State 1150, VelAdd]
type = VelAdd
triggerAll = Vel X > 0
trigger1 = !var(10) && AnimElemTime(12) >= 0
trigger2 = var(10) = 1 && AnimElemTime(15) >= 0
trigger3 = var(10) = 2 && AnimElemTime(18) >= 0
x = -.325

[State 1150, VelSet]
type = VelSet
triggerall = Vel X < 0
trigger1 = !var(10) && AnimElemTime(12) > 0
trigger2 = var(10) = 1 && AnimElemTime(15) > 0
trigger3 = var(10) = 2 && AnimElemTime(18) > 0
x = 0

[State 1150, HitDef Running]
type = HitDef
triggerAll = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = var(10) >= 1 && (AnimElem = 6 || AnimElem = 7 || AnimElem = 8)
trigger3 = var(10) = 2 && (AnimElem = 9 || AnimElem = 10 || AnimElem = 11)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 8, 8
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -2.23, -9.56
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, HitDef 2]
type = HitDef
triggerAll = !var(16) && (var(15) < (4 + HitCount) || var(20))
trigger1 = !var(10) && (AnimElem = 6 || AnimElem = 7)
trigger2 = var(10) = 1 && (AnimElem = 9 || AnimElem = 10)
trigger3 = var(10) = 2 && (AnimElem = 12 || AnimElem = 13)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 + (var(10)*7) < 7, 7, fvar(11) * 14 + (var(10)*7))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -2.23, -9.56
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, HitDef 3]
type = HitDef
triggerAll = !var(16) && (var(15) < (4 + HitCount) || var(20))
trigger1 = !var(10) && (AnimElem = 8 || AnimElem = 9)
trigger2 = var(10) = 1 && (AnimElem = 11 || AnimElem = 12)
trigger3 = var(10) = 2 && (AnimElem = 14 || AnimElem = 15)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -2.23, -9.56
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -73
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 4]
type = HitDef
triggerAll = !var(16) && (var(15) < (4 + HitCount) || var(20))
trigger1 = !var(10) && (AnimElem = 10 || AnimElem = 11)
trigger2 = var(10) = 1 && (AnimElem = 13 || AnimElem = 14)
trigger3 = var(10) = 2 && (AnimElem = 16 || AnimElem = 17)
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23, -9.56
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -2.23, -9.56
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 34), var(36) := -97
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = !var(10) && AnimElemTime(12) >= 0
moveType = I

[State 1150, Guarded]
type = ChangeState
trigger1 = !var(10) && AnimElemTime(6) < 0 && MoveGuarded
trigger2 = var(10) = 1 && AnimElemTime(9) < 0 && MoveGuarded
trigger3 = var(10) = 2 && AnimElemTime(12) < 0 && MoveGuarded
value = 1152

[State 1150, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1151

;Landing
[StateDef 1151]
type = S
physics = N
moveType = I
velSet = 0,0
anim = ifElse(PrevStateNo = 1152, 1153, 1151 + (var(10) * 10))

[State 1151, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1151, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1151, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1151, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Shououken (Dark) Guarded
[StateDef 1152]
type = A
physics = N
moveType = I
velSet = 0,0
anim = 1152

[State 1152, VelSet]
type = VelSet
trigger1 = !Time
x = -2.08
y = -8.333

[State 1152, Jump Sound]
type = PlaySnd
trigger1 = !Time
value = 40,0
channel = 3

[State 1152, Dust Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shououken Dust"
posType = P1
ownPal = 1

[State 1152, Gravity]
type = VelAdd
trigger1 = Time > 0
y = .51

[State 1152, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1151

;---------------------------------------------------------------------------
;Shunpuu Kyaku
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1210, 1220))

[State 1200, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = 1200,0
channel = 0

[State 1200, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = 1200,10
channel = 0

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 3

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shunpuu Kyaku Dust"
posType = P1
ownPal = 1

[State 1200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1200, VelSet]
type = VelSet
trigger1 = !var(40)
trigger1 = AnimElemTime(5) = 0
x = 3.91061452514
y = ifElse(var(10) = 0, -3.75, ifElse(var(10) = 1, -5.625, -7.5))

[State 1200, VelSet]
type = VelSet
trigger1 = var(40) = 1
trigger1 = AnimElemTime(5) = 0
x = 4.46
y = -4 - (var(10)*2.25)

[State 1200, Gravity]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
;CvS2 uses .58, however... try yourself and see what happens :P
y = 0.5859375

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = var(10) && AnimElem = 11
trigger3 = var(10) = 2 && AnimElem = 15
value = 1, 5

[State 1200, HitDef 1]
type = HitDef
trigger1 = !var(40)
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(!var(10), 49, ifElse(var(10) = 1, 28, 21)) < 7, 7, fvar(11) * ifElse(var(10) = 0, 49, ifElse(var(10) = 1, 28, 21)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -6.7, -4.58
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef 2]
type = HitDef
trigger1 = !var(40)
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = var(10) && AnimElem = 12
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 1, 35, 21) < 7, 7, fvar(11) * ifElse(var(10) = 1, 35, 21))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -6.7, -4.58
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef 3]
type = HitDef
trigger1 = !var(40)
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = var(10) = 2 && AnimElem = 16
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -6.7, -4.58
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef Dark]
type = HitDef
triggerAll = var(40) = 1
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 8
trigger2 = var(10) && AnimElem = 12
trigger3 = var(10) = 2 && AnimElem = 16
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(!var(10), 49, ifElse(var(10) = 1, 28, 21)) + (var(10)*7) < 7, 7, fvar(11) * ifElse(!var(10), 49, ifElse(var(10) = 1, 28, 21)) + (var(10)*7))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.79, -6.25
ground.cornerPush.velOff = 0
guard.velocity = -2.79
guard.cornerPush.velOff = 0
air.velocity = -2.79, ifElse((AnimElem = 12 && var(10) = 2), -3.5, -6.25)
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, Shunpuu Renkyaku Reset]
type = VarSet
trigger1 = !Time
var(14) = 0
ignorehitpause = 1

[State 1200, Shunpuu Renkyaku Detect]
type = VarSet
triggerall = !var(14) && Time >= 10 && !var(40)
trigger1 = !AILevel
;command = "QCB"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel
trigger2 = MoveContact && Random < 333 || P2MoveType = H
var(14) = 1
ignorehitpause = 1

[State 1200, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = ifElse(var(14), 1202, 1201)

;Landing
[StateDef 1201]
type = S
physics = S
moveType = I
velSet = 0,0
anim = ifElse(var(40), 1203, 1201)

[State 1201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1201, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1201, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Shunpuu Renkyaku
[StateDef 1202]
type = S
physics = S
moveType = A
velSet = 0,0
anim = 1202
hitCountPersist = 1

[State 1202, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1202, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1202, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 1202, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 4
value = 800,4
channel = 0

[State 1202, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 4
value = 4,12
channel = 0

[State 1202, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = !Time
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58, -5.37
ground.cornerPush.velOff = 0
guard.velocity = -5.58
guard.cornerPush.velOff = 0
air.velocity = -5.58, -5.37
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1202, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1202, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Shunpuu Kyaku
[StateDef 1230]
type = S
physics = N
moveType = A
anim = 1230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, 0, -500)
faceP2 = 1

[State 1230, Max Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1230, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1230, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1230, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 55

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
;channel = 1

[State 1230, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = 1200,0
channel = 0

[State 1230, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = 1200,10
channel = 0

[State 1230, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 3

[State 1230, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shunpuu Kyaku Dust"
posType = P1
ownPal = 1

[State 1230, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 3.91
y = -7.25

[State 1230, Gravity]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = .51

[State 1230, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 11 || AnimElem = 15 || AnimElem = 19
value = 1, 5

[State 1230, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20)) && !var(11)
trigger1 = AnimElem = 8 || AnimElem = 12 || AnimElem = 16 || AnimElem = 20
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 8, 12
guard.pauseTime = 8, 12
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.7, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.7
guard.cornerPush.velOff = 0
air.velocity = -6.7, -4.58
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1231

;---------------------------------------------------------------------------
;EX Shunpuu Renkyaku
[StateDef 1231]
type = S
physics = S
moveType = A
velSet = 0,0
anim = 1231
hitCountPersist = 1

[State 1231, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1231, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1231, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1231, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 1231, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 4
value = 800,4
channel = 0

[State 1231, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 4
value = 4,12
channel = 0

[State 1231, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20)) && !var(11)
trigger1 = !Time
ID = 1230
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -12, -6
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -12, -6
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1231, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(11) && NumTarget(1230)
var(15) = 0

[State 1231, Wall Bounce Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1230)
var(11) = 1
persistent = 0

[State 1231, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1230) > 1
ID = 1230
keepOne = 1
excludeID = 1230
ignoreHitPause = 1

[State 1231, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1230)
trigger1 = !(Target(1230), Time)
value = 1235
ID = 1230
ignoreHitPause = 1

[State 1231, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1231, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Being Launched
[StateDef 1235]
type = A
moveType = H
physics = N
velSet = 0,0

[State 1235, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1235, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1236


;Heading Towards Wall
[StateDef 1236]
type = A
moveType = H
physics = N

[State 1236, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1236, Gravity]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 1236, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 1236, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1236, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5900)
value = 5900

[State 1236, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5900)
value = 5030

[State 1236, Bounce Off Wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10 || FrontEdgeBodyDist <= 10
value = 1237

[State 1236, End]
type = SelfState
trigger1 = Pos y > -Vel y
value = 5100


;Impacting Wall
[StateDef 1237]
type = A
moveType = H
physics = N

[State 1237, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1237, PosSet]
type = PosSet
trigger1 = 1
x = -160 * Facing

[State 1237, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1237, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 1237, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignoreHitPause = 1

[State 1237, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5901)
value = 5901

[State 1237, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5901)
value = 5000

[State 1237, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,0

[State 1237, Hitting the Wall FX]
type = Explod
trigger1 = !Time
anim = F72
pos = 0, floor(ScreenPos y) - 50
posType = Back
sprPriority = 3

[State 1237, End]
type = ChangeState
trigger1 = Time >= 4
value = 1238


;Bouncing Off Wall
[Statedef 1238]
type = A
moveType = H
physics = N

[State 1238, Turn]
type = Turn
trigger1 = !Time && !SelfAnimExist(5902)

[State 1238, Gravity]
type = VelAdd
trigger1 = Time > 0
y = 0.5

[State 1238, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(SelfAnimExist(5902), 2.5, -2.5)
y = -9

[State 1238, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5902)
value = 5902

[State 1238, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5902)
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1238, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1238, ChangeAnim]
type = ChangeAnim
trigger1 = Vel Y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1238, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1238, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1238, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = Vel Y > 0 && Pos Y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1238, End]
type = SelfState
trigger1 = Pos y > -Vel y
value = 5100

;---------------------------------------------------------------------------
;Air Shunpuu Kyaku
[StateDef 1250]
type = A
physics = N
moveType = A
anim = 1250
ctrl = 0
sprPriority = 1
powerAdd = 72 * !var(20)
;faceP2 = 1

[State 1250, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1250, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1250, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = 4,2
channel = 0

[State 1250, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = 4,12
channel = 0

[State 1250, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 7
value = 1, 5
;channel = 2

[State 1250, VelAdd]
type = VelAdd
trigger1 = !Time
x = ifElse(Vel X >= 0, .83 + (.56 * var(10)), -.83 - (.56 * var(10)))

[State 1250, Gravity]
type = VelAdd
trigger1 = Time >= 1
y = ifElse(Vel Y > 0 || AnimElemTime(11) > 0, .48, .19)

[State 1250, HitDef]
type = HitDef
triggerall = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.7, -4.58
ground.cornerPush.velOff = 0
guard.velocity = -6.7
guard.cornerPush.velOff = 0
air.velocity = -6.7, -4.58
airguard.velocity = -6.7, -1
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1250, End]
type = ChangeState
trigger1 = Pos y > -Vel y
value = 1251

;Landing
[StateDef 1251]
type = S
physics = S
moveType = I
velSet = 0,0
anim = 1251

[State 1251, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1251, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1251, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Air Shunpuu Kyaku
[StateDef 1280]
type = A
physics = N
moveType = A
anim = 1280
ctrl = 0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, 0, -500)
faceP2 = 1

[State 1280, Max Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1280, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1280, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1280, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1280, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 25

[State 1280, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1280, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
;channel = 1

[State 1280, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = 4,2
channel = 0

[State 1280, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = 4,12
channel = 0

[State 1280, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 5 || AnimElem = 7 || AnimElem = 9 || AnimElem = 11
value = 1, 5
;channel = 2

[State 1280, VelMul]
type = VelMul
trigger1 = AnimElemTime(15) < 0
x = .9
y = .9

[State 1280, VelSet]
type = VelSet
trigger1 = AnimElemTime(15) < 0 && pos Y >= -10
y = 0

[State 1280, Gravity]
type = VelAdd
trigger1 = AnimElemTime(15) > 0
y = .5

[State 1280, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(15) < 0 
value = 0
ignorehitpause = 1

[State 1280, HitDef Front]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4 || AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 0
guard.pauseTime = 5, 0
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(P2Dist X > 30, 8, 7), -2
ground.cornerPush.velOff = 0
guard.velocity = 10
guard.cornerPush.velOff = 0
air.velocity = ifElse((P2Dist X != [-30,30]), 8, 7), ifElse(P2Dist Y > 0, -3, -1)
airguard.velocity = 6.7, -1
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1280, HitDef Back]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 6 || AnimElem = 10
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 0
guard.pauseTime = 5, 0
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(P2Dist x > 30, -8, -7), -2
ground.cornerPush.velOff = 0
guard.velocity = 10
guard.cornerPush.velOff = 0
air.velocity = ifElse((P2Dist x != [-30,30]), -8, -7), ifElse(P2Dist Y > 0, -3, -1)
airguard.velocity = 6.7, -1
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -45), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1280, HitDef Final]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 12
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 0
guard.pauseTime = 5, 0
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.7, -4.58
ground.cornerPush.velOff = 0
guard.velocity = -6.7
guard.cornerPush.velOff = 0
air.velocity = -6.7, -4.58
airguard.velocity = -6.7, -1
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1280, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(13) >= 0
moveType = I

[State 1280, End]
type = ChangeState
trigger1 = Pos y > -Vel y
value = 1251

;---------------------------------------------------------------------------
;Ouka Kyaku
[StateDef 1300]
type = A
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * (PrevStateNo != 1400)

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1300, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2
value = 4,1
channel = 0

[State 1300, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2
value = 4,11
channel = 0

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElse(!var(10), 3.63, ifElse(var(10) = 1, 4.6, 5.58))
y = 3.75

[State 1300, Gravity]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = .58

[State 1300, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
airguard.velocity = -4.46, -1
air.cornerPush.velOff = 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -15
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, End]
type = ChangeState
trigger1 = Pos y > -Vel y
value = 1301

;Landing
[StateDef 1301]
type = S
physics = S
moveType = I
velSet = 0,0
anim = 1301

[State 1301, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1301, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1301, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1301, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Ouka Kyaku
[StateDef 1330]
type = A
physics = N
moveType = A
anim = 1330
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse((var(53) > 0 || PrevStateNo = 1430), 0, -500)
faceP2 = 1

[State 1330, Max Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1330, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1330, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1330, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1330, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 25

[State 1330, EX FX]
type = Explod
trigger1 = PrevStateNo != 1430
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = PrevStateNo != 1430
trigger1 = !Time
value = 0,1000
;channel = 1

[State 1330, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2
value = 4,1
channel = 0

[State 1330, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2
value = 4,11
channel = 0

[State 1330, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 6.7
y = 3.75

[State 1330, Gravity]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = .58

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
attr = A, SA
hitFlag = MAFD
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.689, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.689
guard.cornerPush.velOff = 0
air.velocity = -4.46, -6.15
airguard.velocity = -4.46, -1
air.cornerPush.velOff = 0
down.velocity = 0, 0
yAccel = 0.51
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -15
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, End]
type = ChangeState
trigger1 = Pos y > -Vel y
value = 1301

;---------------------------------------------------------------------------
;Sakura Otoshi
[StateDef 1400]
type = S
physics = N
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1400, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2BodyDist X < 40, 0, ifElse(P2BodyDist X < 70, 1, 2))

[State 1400, Reset]
type = VarSet
trigger1 = !Time
var(14) = 0
ignorehitpause = 1

[State 1400, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = 1400,0
channel = 0

[State 1400, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = 3200,10
channel = 0

[State 1400, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1400, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Sakura Otoshi Dust"
posType = P1
ownPal = 1

[State 1400, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 1.67 + (var(10)*0.56)
y = -7.5 - (var(10)*1.25)

[State 1400, Gravity]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
;CvS2 uses .58
y = .58 ;.53

[State 1400, Punch]
type = ChangeState
triggerall = AnimElemTime(4) >= 10
trigger1 = !AILevel
;trigger1 = Command = "x" || Command = "y" || Command = "z"
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
value = 1401

[State 1400, Ouka Kyaku]
type = ChangeState
triggerall = AnimElemTime(4) >= 10
trigger1 = !AILevel
;trigger1 = command = "holddown"
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)
;trigger1 = Command = "a" || Command = "b" || Command = "c"
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
trigger2 = AILevel && (Vel Y = [-4,4]) && Random < ifElse(P2StateType = C, 100, 25)
trigger2 = (P2BodyDist X = [0,75]) && (P2Dist Y = [30,100])
value = 1300

[State 1400, Air Throw]
type = ChangeState
triggerall = AnimElemTime(4) >= 10
trigger1 = !AILevel
;command = "holdfwd" || command = "holdback"
trigger1 = NumExplod(90000006) || NumExplod(90000004)
trigger1 = command = "kk"
value = 1404

[State 1400, AI Decide]
type = ChangeState
trigger1 = AnimElemTime(4) >= 10
trigger1 = AILevel
trigger1 = (P2BodyDist X = [-32,32]) && (P2Dist Y = [-50,50])
value = ifElse((P2StateNo = [120,155]) && Random < 500, 1404, 1401)

[State 1400, Cancel]
type = ChangeState
triggerall = AnimElemTime(4) >= 10
trigger1 = !AILevel
;trigger1 = Command = "a" || Command = "b" || Command = "c"
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
trigger2 = AILevel && Random < 25
trigger2 = (P2MoveType = A && P2StateType = A) || ((EnemyNear, Vel X < -3) && P2BodyDist X > 75)
trigger3 = AILevel && Vel Y > 1 && Pos Y > -30 && P2BodyDist X > 75
value = 1403

[State 1400, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1410

;Sakura Otoshi Punch
[StateDef 1401]
type = A
physics = N
moveType = A
anim = 1401
ctrl = 0
sprPriority = 1
powerAdd = 0
hitCountPersist = 1

[State 1401, Gravity]
type = VelAdd
trigger1 = Time > 0
y = .58

[State 1401, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = ifElse(var(14) = 2, 1400, 4), ifElse(!var(14), 0, ifElse(var(14) = 1, 2, 1))
channel = 0

[State 1401, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = ifElse(var(14) = 2, 1400, 4), ifElse(!var(14), 10, ifElse(var(14) = 1, 12, 11))
channel = 0

[State 1401, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2
channel = 1

[State 1401, HitDef]
type = HitDef
triggerall = !var(16) && (var(15) < (1 + HitCount) || var(20))
triggerall = var(10) != 3
trigger1 = !Time
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23, -7.61
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -2.23, -7.61
airguard.velocity = -4.689, 0
air.cornerPush.velOff = 0
yAccel = 0.43
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1401, HitDef EX]
type = HitDef
triggerall = !var(16) && (var(15) < (1 + HitCount) || var(20))
triggerall = var(10) = 3
trigger1 = !Time
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23, -7.61
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -2.23, -7.61
airguard.velocity = -4.689, 0
air.cornerPush.velOff = 0
yAccel = 0.43
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1401, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) <= 0
trigger1 = HitPauseTime >= 2
value = 1401
elem = 2
ignoreHitPause = 1

[State 1401, Punch Contact]
type = ChangeState
trigger1 = var(14) < 3
trigger1 = MoveContact && HitShakeOver
value = 1402

[State 1401, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1411


;Sakura Otoshi Contact
[StateDef 1402]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 0
hitCountPersist = 1

[State 1402, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(14) < 2
value = 1402

[State 1402, Gravity]
type = VelAdd
trigger1 = Time > 0
y = .48

[State 1402, Punch Contact]
type = VarAdd
trigger1 = !Time
var(14) = 1
ignorehitpause = 1

[State 1402, VelSet]
type = VelSet
trigger1 = !Time
x = 1.67 + (var(10)*0.56)
y = -6.48

[State 1402, Punch]
type = ChangeState
triggerall = var(14) < 3
triggerall = Time >= 10
trigger1 = !AILevel
;trigger1 = Command = "x" || Command = "y" || Command = "z"
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
trigger2 = AILevel && (Random < 900 || P2MoveType = H)
trigger2 = (P2BodyDist X = [-32,32]) && (P2Dist Y = [-50,50])
value = 1401

[State 1402, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1411


;Sakura Otoshi Cancel
[StateDef 1403]
type = A
physics = N
moveType = I
anim = 1403
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 1403, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = 800,1
channel = 0

[State 1403, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = 191,11 + 10 * (Random < 500)
channel = 0

[State 1403, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = .78

[State 1403, Gravity]
type = VelAdd
trigger1 = Time > 0
y = 0.48

[State 1403, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1411

;---------------------------------------------------------------------------
;Sakura Otoshi Throw Attempt
[StateDef 1404]
type = A
physics = N
moveType = A
anim = 850
ctrl = 0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1404, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 1404, HitDef: Throw]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2 && !var(11)
trigger1 = !var(38)
attr = A, ST
hitFlag = MAF
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = 1405

[State 1404, Voice (Missed) CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 4
value = 800,0
channel = 0

[State 1404, Voice (Missed) SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 4
value = 800,10
channel = 0

[State 1404, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 1

[State 1404, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 1404, Gravity]
type = Gravity
trigger1 = Time > 0

[State 1404, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 52

;---------------------------------------------------------------------------
;Throw Success
[Statedef 1405]
type = A
physics = N
moveType = A
anim = 820
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1405, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = ifElse(Pos Y < 0, 51, 0)
ctrl = 1

[State 1405, Turn]
type = Turn
triggerAll = !Time
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdback"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command = "holdfwd"

[State 1405, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = ifElse(P2StateType = A, 1407, 1406)

[State 1405, Width]
type = Width
trigger1 = AnimElemTime(6) < 0
edge = -32,32

[State 1405, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1405, TargetFacing]
type = TargetFacing
trigger1 = !Time
value = -1

[State 1405, Bind 1]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
pos = ceil(30 * const(size.xscale)), ceil(40 * const(size.yscale)), Mid

[State 1405, Bind 5]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(40 * const(size.xscale)), ceil(30 * const(size.yscale)), Mid

[State 1405, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 6
value = floor(ifElse(126 + (14 * (var(10) = 3)) * fvar(11) < 7, -7, -126 - (14 * (var(10) = 3)) * fvar(11)))

[State 1405, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 6
value = 36

[State 1405, Power]
type = PowerAdd
trigger1 = var(10) != 3
trigger1 = NumTarget && AnimElem = 6 && !var(20)
value = 72

[State 1405, HitSound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 6
value = 2, 5
channel = 3
ignorehitPause = 1

[State 1405, HitSpark]
type = Helper
trigger1 = NumTarget && AnimElem = 6
helperType = Normal
stateNo = 8013
ID = 8000
name = "Spark"
posType = P1
pos = 44, -49
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1405, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 6
value = 1

[State 1405, VarAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 6
var(13) = 1

[State 1405, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 6
var(15) = 1
ignoreHitPause = 1

[State 1405, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 6
var(16) = 1
ignoreHitPause = 1

[State 1405, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 6
value = 826

[State 1405, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 6
value = 800,1
channel = 0

[State 1405, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 6
value = 191,11 + 10 * (Random < 500)
channel = 0

[State 1405, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = -3.77
y = -5

[State 1405, Gravity]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
y = .58

[State 1405, Landing]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 821

;Target Stand
[StateDef 1406]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 1406, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 825

[State 1406, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

;Target Air
[StateDef 1407]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 1407, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 865

[State 1407, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

;Landing 1
[StateDef 1410]
type = S
physics = N
moveType = I
velSet = 0,0
anim = 1410

[State 1410, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1410, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1410, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1410, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1410, Stopping Sound]
type = PlaySnd
trigger1 = !Time
value = 101,0

[State 1410, Skid Dust]
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

[State 1410, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2
value = 800,0
channel = 0

[State 1410, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2
value = 800,10
channel = 0

[State 1410, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 2.23

[State 1410, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0 && Vel X > 0
x = -0.174

[State 1410, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) > 0 && Vel X < 0
x = 0

[State 1410, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Landing 2 and 3
[StateDef 1411]
type = S
physics = S
moveType = I
velSet = 0,0
anim = ifElse(PrevStateNo = 1403, 1412, 1411)

[State 1411, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1411, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1411, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1411, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1411, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Sakura Otoshi
[StateDef 1430]
type = S
physics = N
moveType = A
anim = 1430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(var(53) > 0, 0, -500)
faceP2 = 1

[State 1430, Max Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1430, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1430, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1430, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1430, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 150

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
;channel = 1

[State 1430, Reset]
type = VarSet
trigger1 = !Time
var(14) = 0
ignorehitpause = 1

[State 1430, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = 1400,0
channel = 0

[State 1430, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = 3200,10
channel = 0

[State 1430, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1430, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Sakura Otoshi Dust"
posType = P1
ownPal = 1

[State 1430, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1430, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = P2Dist X / 38
y = -10.5

[State 1430, VelSet]
type = VelSet
trigger1 = Vel X > 8
x = 8

[State 1430, Gravity]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = .58

[State 1430, Punch]
type = ChangeState
triggerall = AnimElemTime(4) >= 10
trigger1 = !AILevel
;trigger1 = Command = "x" || Command = "y" || Command = "z"
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
value = 1401

[State 1430, Ouka Kyaku]
type = ChangeState
triggerall = AnimElemTime(4) >= 10
trigger1 = !AILevel
;trigger1 = command = "holddown"
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)
;trigger1 = Command = "a" || Command = "b" || Command = "c"
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
trigger2 = AILevel && (Vel Y = [-4,4]) && (Random < ifElse(P2StateType = C, 100, 25) || P2StateType = L)
trigger2 = (P2BodyDist X = [0,75]) && (P2Dist Y = [30,100])
value = 1330

[State 1430, Air Throw]
type = ChangeState
triggerall = AnimElemTime(4) >= 10
trigger1 = !AILevel
;command = "holdfwd" || command = "holdback"
trigger1 = NumExplod(90000006) || NumExplod(90000004)
trigger1 = command = "kk"
value = 1404

[State 1430, AI Decide]
type = ChangeState
trigger1 = AnimElemTime(4) >= 10
trigger1 = AILevel
trigger1 = (P2BodyDist X = [-32,32]) && (P2Dist Y = [-50,50])
value = ifElse((P2StateNo = [120,155]) && Random < 500, 1404, 1401)

[State 1430, Cancel]
type = ChangeState
triggerall = AnimElemTime(4) >= 10
trigger1 = !AILevel
;trigger1 = Command = "a" || Command = "b" || Command = "c"
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
trigger2 = AILevel && Random < 25
trigger2 = (P2MoveType = A && P2StateType = A) || ((EnemyNear, Vel X < -3) && P2BodyDist X > 75)
trigger3 = AILevel && Vel Y > 1 && Pos Y > -30 && P2BodyDist X > 75
value = 1403

[State 1430, End]
type = ChangeState
trigger1 = Pos y > -Vel y
value = 1410

;---------------------------------------------------------------------------
;Air Hadouken
[StateDef 1500]
type = A
physics = N
moveType = A
anim = 1500
ctrl = 0
sprPriority = 1
powerAdd = 72 * !var(20)
;faceP2 = 1

[State 1500, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1500, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1500, Vel]
type = VelMul
trigger1 = AnimElemTime(9) < 0
x = .93
y = .93

[State 1500, Gravity]
type = VelAdd
trigger1 = AnimElemTime(9) > 0
y = .51

[State 1500, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2
value = 1000,0
channel = 0

[State 1500, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2
value = 1000,10
channel = 0

[State 1500, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 1
channel = 2

[State 1500, Projectile]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 1505
ID = 1505
name = "Air Hadouken"
posType = P1
pos = ceil(48 * const(size.xscale)), ceil(-42 * const(size.yscale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1500, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1501


;Landing
[StateDef 1501]
type = S
physics = N
moveType = I
velSet = 0,0
anim = 1501

[State 1501, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1501, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1501, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1501, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Ashura Senkuu
[StateDef 1600]
type = S
physics = N
moveType = I
anim = 1600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)

[State 1600, Button Detect]
type = Null
triggerall = !Time && !AILevel
;command = "F, D, DF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && (NumExplod(90010203) || NumExplod(90010253))) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && (NumExplod(90010301) || NumExplod(90010351)))
;x + y / x + z / y + z
trigger1 = (ifElse(NumExplod(90000200), 1, 0) + ifElse(NumExplod(90000210), 1, 0) + ifElse(NumExplod(90000220), 1, 0) >= 2) || (ifElse(NumExplod(90000205), 1, 0) + ifElse(NumExplod(90000215), 1, 0) + ifElse(NumExplod(90000225), 1, 0) >= 2)
trigger1 = var(10) := 0
;command = "B, D, DB"
trigger2 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && (NumExplod(90010301) || NumExplod(90010351))) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && (NumExplod(90010203) || NumExplod(90010253)))
;x + y / x + z / y + z
trigger2 = (ifElse(NumExplod(90000200), 1, 0) + ifElse(NumExplod(90000210), 1, 0) + ifElse(NumExplod(90000220), 1, 0) >= 2) || (ifElse(NumExplod(90000205), 1, 0) + ifElse(NumExplod(90000215), 1, 0) + ifElse(NumExplod(90000225), 1, 0) >= 2)
trigger2 = var(10) := 1
;command = "F, D, DF"
trigger3 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && (NumExplod(90010203) || NumExplod(90010253))) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && (NumExplod(90010301) || NumExplod(90010351)))
;a + b / a + c / b + c
trigger3 = (ifElse(NumExplod(90000230), 1, 0) + ifElse(NumExplod(90000240), 1, 0) + ifElse(NumExplod(90000250), 1, 0) >= 2) || (ifElse(NumExplod(90000235), 1, 0) + ifElse(NumExplod(90000245), 1, 0) + ifElse(NumExplod(90000255), 1, 0) >= 2)
trigger3 = var(10) := 2
;command = "B, D, DB"
trigger4 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && (NumExplod(90010301) || NumExplod(90010351))) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && (NumExplod(90010203) || NumExplod(90010253)))
;a + b / a + c / b + c
trigger4 = (ifElse(NumExplod(90000230), 1, 0) + ifElse(NumExplod(90000240), 1, 0) + ifElse(NumExplod(90000250), 1, 0) >= 2) || (ifElse(NumExplod(90000235), 1, 0) + ifElse(NumExplod(90000245), 1, 0) + ifElse(NumExplod(90000255), 1, 0) >= 2)
trigger4 = var(10) := 3

[State 1600, Button Detect AI]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2BodyDist X >= 120, ifElse(Random < 500, 0, 2), ifElse(Random < 500, 1, 3))

[State 1600, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1600, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1600, VelSet]
type = VelSet
trigger1 = !Time || Time = 8
x = ifElse(!Time, 3.5, -3.5)

[State 1600, VelMul]
type = VelMul
trigger1 = 1
x = .95

[State 1600, ChangeState]
type = ChangeState
trigger1 = Time >= 16
value = 1601

;Teleport
[StateDef 1601]
type = S
physics = N
moveType = I
anim = 1601
ctrl = 0

[State 1601, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1601, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1601, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(!var(10), 12.84, ifElse(var(10) = 1, -12.84, ifElse(var(10) = 2, 8.93, -8.93)))

[State 1601, VelAdd]
type = VelAdd
trigger1 = Time > 0
x = ifElse(Vel X > 0, -.26, .26)

[State 1601, Sound]
type = PlaySnd
trigger1 = !Time
value = 1600,0
channel = 1

[State 1601, Turn]
type = Turn
trigger1 = P2Dist X < -5

[State 1601, End]
type = ChangeState
trigger1 = (var(10) = [0,1]) && Time >= 36
trigger2 = (var(10) = [2,3]) && Time >= 24
Trigger3 = Vel X > 0 && FrontEdgeDist <= 10 && AnimElemTime(1) > 0
Trigger4 = Vel X < 0 && BackEdgeDist <= 10 && AnimElemTime(1) > 0
value = 1602

;End
[Statedef 1602]
type = S
movetype = I
physics = N
anim = 1602
velset = 0,0
ctrl = 0

[State 1602, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1602, End]
type = ChangeState
Trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Punch Zero Counter
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1
value = 1100,0
channel = 0

[State 2900, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1
value = 1100,10
channel = 0

[State 2900, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,2
channel = 1

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 40,0
channel = 3

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 1.675
y = -9.375

[State 2900, Gravity]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
y = .51

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = !Time
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, -7
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -4, -7
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = S2,2
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 2900, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1101

;---------------------------------------------------------------------------
;Kick Zero Counter
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2
value = 4, 0
channel = 0

[State 2910, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2
value = 4, 11
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = !Time
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = 0,0
givepower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -11.05
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 95), var(36) := -8
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(5) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1