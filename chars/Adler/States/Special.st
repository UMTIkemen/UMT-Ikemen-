; _________________________________________
;| Adler by Saikou Shiva                   |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
; Blitzkugel
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
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2BodyDist x <= 40 && P2StateNo = 5120 || P2BodyDist x <= 111 && Random < 700, 2, ifElse((P2BodyDist x = [112,142]) && Random < 550, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1020, ifElse(var(10) = 1, 1010, 1000))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElemTime(2) = ifElse(var(10)=2,20, ifElse(var(10)=1,12, 4))
value = ifElse(var(55)=7,5, 1000), ifElse(var(55)=7,2, 0)
channel = 0

[State 1000, Sound FX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,2
channel = 1

;[State 1000, Lightning FX]
;type = PalFX
;trigger1 = Animelem = 3, >= 0
;time = 3
;add = 100,100,200
;sinadd = 100,150,250,60
;invertall = 0
;IgnoreHitPause = 1
;Persistent = 4

[State 1000, Blitzkugel FX]
type = Explod
trigger1 = AnimElem = 2
;anim = ifElse(var(10)=2,1021, ifElse(var(10)=1,1011, 1001))
anim = ifElse(var(10)=2,ifElse(var(55) = 7,10210, 1021), ifElse(var(10)=1,ifElse(var(55) = 7,10110, 1011), ifElse(var(55) = 7,10010, 1001)))
ID = 1001
pos = ceil(56 * const(size.xScale)), ceil(-158 * const(size.xScale))
postype = p1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, Electric Charge FX]
type = Explod
trigger1 = AnimElem = 2
anim = ifElse(var(10)=2,ifElse(var(55) = 7,100830, 10083), ifElse(var(10)=1,ifElse(var(55) = 7,100820, 10082), ifElse(var(55) = 7,100810, 10081)))
ID = 1008
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

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = ifElse(var(10)=2,1025, ifElse(var(10)=1,1015, 1005))
ID = 1005
name = "Blitz Projectile"
posType = P1
pos = ceil(56 * const(size.xScale)), ceil(-158 * const(size.xScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(7) <= 0
value = 15,0

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------
; EX Blitzkugel
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

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
var(25) = 24

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(55 * const(size.xScale)), ceil(-156 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = ifElse(var(55)=7,5, 1000), ifElse(var(55)=7,2, 0)
channel = 0

[State 1030, Sound FX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,2
channel = 3

;[State 1030, Lightning FX]
;type = PalFX
;trigger1 = Animelem = 2, >= 0
;trigger1 = AnimElem = 6, <= 0
;time = 2
;add = 100,100,200
;sinadd = 100,150,250,60
;invertall = 0
;IgnoreHitPause = 1
;Persistent = 4

[State 1030, Aura FX 1]
type = Explod
trigger1 = AnimElem = 3
anim = 1002
pos = ceil(56 * const(size.xScale)), ceil(-158 * const(size.xScale))
sprPriority = 2
posType = P1
vel = -4,0
accel = -0.1, 0
scale = .5, .5
ownPal = 1
ignoreHitPause = 1

[State 1030, Aura FX 2]
type = Explod
trigger1 = AnimElem = 3
anim = 1003
pos = ceil(56 * const(size.xScale)), ceil(-158 * const(size.xScale))
sprPriority = 1
posType = P1
vel = -4,0
accel = -0.1, 0
scale = .5, .5
ownPal = 1
ignoreHitPause = 1

[State 1030, Blitzkugel FX]
type = Explod
trigger1 = AnimElem = 2
anim = ifElse(var(55)=7,10010, 1001)
ID = 1031
pos = ceil(56 * const(size.xScale)), ceil(-158 * const(size.xScale))
postype = p1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1030, Electric Charge FX]
type = Explod
trigger1 = AnimElem = 2
anim = ifElse(var(55)=7,100810, 10081)
ID = 1038
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

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 1035
ID = 1005
name = "EX Blitz Projectile"
posType = P1
pos = ceil(56 * const(size.xScale)), ceil(-158 * const(size.xScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(7) <= 0
value = 15,0

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Air Blitzkugel
[StateDef 1050]
type = A
physics = N
moveType = A
anim = 1050
ctrl = 0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 0

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1050, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1050, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1070, ifElse(var(10) = 1, 1060, 1050))

[State 1050, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(8) <= 0
value = 10,0

[State 1050, Voice]
type = PlaySnd
trigger1 = AnimElemTime(2) = ifElse(var(10)=2,20, ifElse(var(10)=1,12, 4))
value = ifElse(var(55)=7,5, 1000), ifElse(var(55)=7,2, 0)
channel = 0

[State 1050, Sound FX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,2
channel = 1

[State 1050, Velocity]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = 0
y = ifElse(var(10)=2,-.45, ifElse(var(10)=1,-.5, -3))

[State 1050, Gravity]
type = VelAdd
triggerall = var(10)=0
trigger1 = 1
y = ifelse(AnimElemTime(7)>=0,0.7,0.55)

[State 1050, Gravity]
type = VelAdd
triggerall = var(10)!=0
trigger1 = AnimElemTime(3) >= 0
y = ifelse(AnimElemTime(7)>=0,0.7,0.55)

[State 1050, Velocity]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = -1.35
y = -5

;[State 1000, Lightning FX]
;type = PalFX
;trigger1 = Animelem = 3, >= 0
;time = 3
;add = 100,100,200
;sinadd = 100,150,250,60
;invertall = 0
;IgnoreHitPause = 1
;Persistent = 4

[State 1050, Blitzkugel FX]
type = Explod
trigger1 = AnimElem = 2
;anim = ifElse(var(10)=2,1021, ifElse(var(10)=1,1011, 1001))
anim = ifElse(var(10)=2,ifElse(var(55) = 7,10210, 1021), ifElse(var(10)=1,ifElse(var(55) = 7,10110, 1011), ifElse(var(55) = 7,10010, 1001)))
ID = 1051
pos = ceil(56 * const(size.xScale)), ceil(-158 * const(size.xScale))
postype = p1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1050, Electric Charge FX]
type = Explod
trigger1 = AnimElem = 2
anim = ifElse(var(10)=2,ifElse(var(55) = 7,100830, 10083), ifElse(var(10)=1,ifElse(var(55) = 7,100820, 10082), ifElse(var(55) = 7,100810, 10081)))
ID = 1058
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

[State 1050, Projectile]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = ifElse(var(10)=2,1025, ifElse(var(10)=1,1015, 1005))
ID = 1005
name = "Blitz Projectile"
posType = P1
pos = ceil(56 * const(size.xScale)), ceil(-158 * const(size.xScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1050, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1055

;---------------------------------------------------------------
;Landing
[StateDef 1055]
type = S
anim = 1055
physics = N
moveType = I
velSet = 0,0

[State 1055, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1055, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse(!var(10), 1075, ifelse(var(10) = 1, 1065, 1055))

[State 1055, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1055, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1055, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1055, End]
type = ChangeState
trigger1 = AnimElemTime(3) >= 0 && command = "holddown"
value = 11
ctrl = 1

[State 1055, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; EX Air Blitzkugel
[StateDef 1080]
type = A
physics = N
moveType = A
anim = 1080
velset = 0,-1.55
ctrl = 0
sprPriority = 1
powerAdd = -500
faceP2 = 0

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
var(25) = 24

[State 1080, EX FX]
type = Explod
trigger1 = Time = 2;!Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(56 * const(size.xScale)), ceil(-130 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1080, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1080, Voice]
type = PlaySnd
trigger1 = AnimElemTime(2) = 4
value = ifElse(var(55)=7,5, 1000), ifElse(var(55)=7,2, 0)
channel = 0

[State 1080, Sound FX]
type = PlaySnd
trigger1 = AnimElemTime(2) = 4
value = 1000,2
channel = 1

[State 1080, Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = -2.15
y = -4.35

[State 1080, Forward Momentum]
type = Veladd
trigger1 = AnimElemTime(7) >= 0
x = .1

[State 1080, Gravity]
type = VelAdd
trigger1 = AnimElemTime(3)<=0
y = .07

[State 1080, Gravity]
type = VelAdd
trigger1 = AnimElemTime(3)>=0
y = .51

;[State 1000, Lightning FX]
;type = PalFX
;trigger1 = Animelem = 3, >= 0
;time = 3
;add = 100,100,200
;sinadd = 100,150,250,60
;invertall = 0
;IgnoreHitPause = 1
;Persistent = 4

[State 1080, Blitzkugel FX]
type = Explod
trigger1 = AnimElem = 2
anim = ifElse(var(55)=7,10010, 1001)
ID = 1051
pos = ceil(56 * const(size.xScale)), ceil(-130 * const(size.xScale))
postype = p1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1080, Electric Charge FX]
type = Explod
trigger1 = AnimElem = 2
anim = ifElse(var(55)=7,100810, 10081)
ID = 1088
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

[State 1080, Projectile]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 1085
ID = 1085
name = "EX Blitz Projectile"
posType = P1
pos = ceil(56 * const(size.xScale)), ceil(-130 * const(size.xScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1080, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1055

;---------------------------------------------------------------
; Flak Tritt
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2StateNo = 952 || (P2BodyDist x >= 71)), 2, ifElse((P2BodyDist x = [58,70]), 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100))

[State 1100, Voice 1]
type = PlaySnd
trigger1 = AnimElemTime(1) = 2
value = ifElse(var(55)=7,5, 1100), 0
channel = 0

[State 1100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = ifElse(var(55)=7,5, 1100), ifElse(var(55)=7,3, 2)
channel = 0

[State 1100, Slash Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 2
value = 1100,1
channel = 1

[State 1100, Width]
type = Width
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(5) <= 0
edge = 25,0
player = 25,0

[State 1100, Width]
type = Width
trigger1 = animelemtime(8) >= 0
trigger2 = FrontEdgeDist <= 5
edge = 35,0
player = 8,0

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1100, Flak Tritt 1]
type = Explod
trigger1 = AnimElem = 3
anim = ifElse(var(55)=7,11070, 1107)
ID = 1107
pos = 20, -77
postype = p1
facing = 1
scale = .5,.5
removetime = -2
sprpriority = 1
bindtime = 9999
ignorehitpause = 0

[State 1100, Flak Tritt FX 2]
type = Explod
trigger1 = AnimElemTime(2) = 1
anim = ifElse(var(55)=7,11050, 1105)
ID = 1105
pos = 29, -65
postype = p1
facing = 1
scale = .44, .48
removetime = -2
sprpriority = 5
bindtime = 9999
ignorehitpause = 0

[State 1100, Rising Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = ifElse(var(10)=2,10, ifElse(var(10)=1,5.25, 0))
y = ifElse(var(10)=2,-3, ifElse(var(10)=1,-5, -9))

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(3) > 0
y = 0.11

[State 1100, Wall Velocity]
type = VelSet
trigger1 = AnimElemTime(8) >= 0
trigger1 = FrontEdgeDist <= 35
x = 0

[State 1100, Divekick Velocity]
type = VelSet
trigger1 = AnimElemTime(8) = 0
x = ifElse(var(10)=2,8.5, 7.5)
y = 4

[State 1115, Gravity]
type = VelAdd
trigger1 = AnimElemTime(8) >= 0
y = 0.45

[State 1100, Tritt Juggle Variable]
type = VarAdd
triggerall = AnimElemTime(8) >= 0 && movehit = 1
trigger1 = var(10) = 0
var(11)= 1

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = var(10)=0 && AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3, -6.5
ground.cornerPush.velOff = 0
guard.velocity = -6
guard.cornerPush.velOff = 0
air.velocity = -3.16, -6.81
air.cornerPush.velOff = 0
yAccel = 0.54
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -73
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = var(10)!=0 && AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -4.61, -5.47
ground.cornerPush.velOff = 0
guard.velocity = -6.13
guard.cornerPush.velOff = 0
air.velocity = -5.49, -4.91
air.cornerPush.velOff = 0
yAccel = 0.59
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2 - Strong]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = var(10)=2 && AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifelse(var(10)=2, 63, ifelse(var(10)=1, 56, 49)) < 7, 7, fvar(11) * ifelse(var(10)=2, 63, ifelse(var(10)=1, 56, 49)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 17
air.hitTime = 120
ground.velocity = -3.06, 3
ground.cornerPush.velOff = 0
guard.velocity = -6.16
guard.cornerPush.velOff = 0
air.velocity = -3.06, 3
air.cornerPush.velOff = 0
yAccel = 0.49
fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -43
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2 - Mid]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = var(10)=1 && AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifelse(var(10)=2, 63, ifelse(var(10)=1, 56, 49)) < 7, 7, fvar(11) * ifelse(var(10)=2, 63, ifelse(var(10)=1, 56, 49)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
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
yAccel = 0.49
fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -35
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2 - Light]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = var(10)=0 && AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifelse(var(10)=2, 63, ifelse(var(10)=1, 56, 49)) < 7, 7, fvar(11) * ifelse(var(10)=2, 63, ifelse(var(10)=1, 56, 49)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
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
yAccel = 0.49
fall = 1
fall.recover = 0
down.bounce = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -23
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Set P2 State]
type = TargetState
triggerall = AnimElemTime(8) >= 0 && movehit = 1
triggerall = Var(11) = 1
trigger1 = var(10) = 0
value = 950

[State 1100, ChangeState]
type = ChangeState
trigger1 = (Vel y > -1) && (Pos y >= -1)
trigger1 = time >= ifElse(var(10)=2,29, ifElse(var(10)=1,30, 29))
value = 1101

;---------------------------------------------------------------
; EX Flak Tritt
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1130
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

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
var(25) = 20

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(30 * const(size.xScale)), ceil(-140 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, PosSet]
type = PosSet
trigger1 = AnimElemTime(1) = 0
y = 0

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 1
value = SCA
time = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1130, Voice 1]
type = PlaySnd
trigger1 = AnimElemTime(1) = 2
value = ifElse(var(55)=7,5, 1100), 0
channel = 0

[State 1130, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = ifElse(var(55)=7,5, 1100), ifElse(var(55)=7,3, 2)
channel = 0

[State 1130, Tritt FX]
type = PlaySnd
trigger1 = AnimElemTime(3) = 2
value = 1100,1
channel = 3

[State 1130, Width]
type = Width
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(7) <= 0
edge = 12,0
player = 12,0

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1130, Flak Tritt 1]
type = Explod
trigger1 = AnimElem = 3
anim = ifElse(var(55)=7,11070, 1107)
ID = 1107
pos = 20, -77
postype = p1
facing = 1
scale = .5,.5
removetime = -2
sprpriority = 1
bindtime = 9999
ownpal = 1
ignorehitpause = 0

[State 1130, Flak Tritt FX 2]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = ifElse(var(55)=7,11050, 1105)
ID = 1105
pos = 29, -65
postype = p1
facing = 1
scale = .44, .48
removetime = -2
sprpriority = 5
bindtime = 9999
ownpal = 1
ignorehitpause = 0

[State 1130, Divekick FX]
type = Explod
trigger1 = AnimElem = 8
anim = ifElse(var(55)=7,11350, 1135)
ID = 1135
pos = 28, -20
postype = p1
facing = 1
scale = .5,.5
removetime = -2
sprpriority = 3
bindtime = 9999
ignorehitpause = 0

[State 1130, Fwd Momentum]
type = VelSet
trigger1 = AnimElem = 1
x = 2.5

[State 1130, Rising Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = 3.75
y = -12

[State 1130, Gravity]
type = Veladd
trigger1 = AnimElemtime(3) >= 0
y = 0.6

[State 1130, Wall Velocity]
type = VelSet
trigger1 = FrontEdgeDist <= 5
x = 0

[State 1130, Divekick Velocity]
type = VelSet
trigger1 = AnimElemTime(8) = 0
x = 8
y = 4

[State 1130, Gravity]
type = VelAdd
trigger1 = AnimElemTime(8) >= 0
y = 0.47

[State 1130, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3, -6.5
ground.cornerPush.velOff = 0
guard.velocity = -6.53
guard.cornerPush.velOff = 0
air.velocity = -3.16, -6.81
air.cornerPush.velOff = 0
yAccel = 0.54
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -42
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.16, -6.81
ground.cornerPush.velOff = 0
guard.velocity = -8.72
guard.cornerPush.velOff = 0
air.velocity = -3.16, -6.81
air.cornerPush.velOff = 0
yAccel = 0.59
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.16, -7.81
ground.cornerPush.velOff = 0
guard.velocity = -11.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, -7.81
air.cornerPush.velOff = 0
yAccel = 0.61
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 6 || var(20))
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 13
ground.slideTime = 13
guard.hitTime = 13
air.hitTime = 120
ground.velocity = -4.16, 6.81
ground.cornerPush.velOff = 0
guard.velocity = -6.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, 7.81
air.cornerPush.velOff = 0
yAccel = 0.61
fall = 1
fall.recover = 0
down.bounce = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -14
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, ChangeState]
type = ChangeState
trigger1 = (Vel y > -1) && (Pos y >= -1)
trigger1 = time >= 35
value = 1101

;---------------------------------------------------------------
;Landing
[StateDef 1101]
type = S
anim = 1101
physics = N
moveType = I
velSet = 0,0

[State 1101, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1101, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse(var(10)=3, 1111, ifelse(var(10)=2, 1121, ifelse(var(10) = 1, 1111, 1101)))

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
trigger1 = AnimElemTime(4) >= 0 && command = "holddown"
value = 11
ctrl = 1

[State 1101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------
;Blitzbombe
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
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1220, ifElse(var(10) = 1, 1210, 1200))

[State 1200, Electric Thunder (FX)]
type = Explod
trigger1 = ifElse(var(10)!=0,AnimElemTime(2)=1, AnimElemTime(1) = 2)
anim = ifElse(var(55)=7,12010, 1201)
ID = 1201
sprPriority = 2
bindtime = -1
removeTime = -1
posType = P1
pos = -6, 2
scale = .55,.55
removeOnGetHit = 1
ignoreHitPause = 0
ownPal = 1

[State 1200, RemoveExplod Shock]
type = RemoveExplod
trigger1 = var(10)=0 && AnimElemTime(7) = 0
trigger2 = var(10)=1 && AnimElemTime(9) = 0
trigger3 = var(10)=2 && AnimElemTime(11) = 0
trigger4 = Anim!=[1200,1220]
ID = 1201

[State 1200, Voice]
type = PlaySnd
trigger1 = var(55) = 7
trigger1 = AnimElemTime(2) = 0
value = 5, 0
channel = 0

[State 1200, Electricity]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = var(10)!=0 && AnimElem = 7
trigger4 = var(10)=2 && AnimElem = 9
value = 1000, 2
channel = 15

[State 1200, HitDef 1]
type = HitDef
triggerAll = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 60, 24) * !var(20), 12 * !var(20)
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
palfx.time = 26
palfx.sinadd = 120,120,120,12
palfx.add = ifElse(var(55)=7,-100,70),ifElse(var(55)=7,-20,-120),10
palfx.color = 0
palfx.invertall = 1
envShake.time = 22
envShake.ampl = 6
envShake.freq = 120

[State 1200, HitDef 2]
type = HitDef
triggerAll = !var(16) && (var(15) < (4 + HitCount) || var(20))
triggerAll = var(10) = 0
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = ifElse(!var(13), 60, 24) * !var(20), 12 * !var(20)
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
guard.hitTime = 9
air.hitTime = 120
ground.velocity = -1, -3
ground.cornerPush.velOff = 0
guard.velocity = -4.32
guard.cornerPush.velOff = 0
air.velocity = -1, -3
air.cornerPush.velOff = 0
down.velocity = -5,0
yaccel = 0.45
fall = 1
air.fall = 1
fall.recover = 0
kill = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ceil(P2Dist x - 10)), var(36) := ceil(P2Dist y - 65)
palfx.time = 26
palfx.sinadd = 120,120,120,12
palfx.add = ifElse(var(55)=7,-100,70),ifElse(var(55)=7,-20,-120),10
palfx.color = 0
palfx.invertall = 1
envShake.time = 22
envShake.ampl = 6
envShake.freq = 120

[State 1200, HitDef 2]
type = HitDef
triggerAll = !var(16) && (var(15) < (4 + HitCount) || var(20))
triggerAll = var(10) != 0
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 60, 24) * !var(20), 12 * !var(20)
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
palfx.time = 26
palfx.sinadd = 120,120,120,12
palfx.add = ifElse(var(55)=7,-100,70),ifElse(var(55)=7,-20,-120),10
palfx.color = 0
palfx.invertall = 1
envShake.time = 22
envShake.ampl = 6
envShake.freq = 120

[State 1200, HitDef 3]
type = HitDef
triggerAll = !var(16) && (var(15) < (5 + HitCount) || var(20))
triggerAll = var(10) = 1
trigger1 = AnimElem = 7
attr = S, SA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 60, 24) * !var(20), 12 * !var(20)
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
guard.hitTime = 9
air.hitTime = 120
ground.velocity = -1, -3
ground.cornerPush.velOff = 0
guard.velocity = -4.32
guard.cornerPush.velOff = 0
air.velocity = -1, -5
air.cornerPush.velOff = 0
down.velocity = -5,0
yaccel = 0.49
fall = 1
air.fall = 1
fall.recover = 0
kill = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ceil(P2Dist x - 10)), var(36) := ceil(P2Dist y - 65)
palfx.time = 26
palfx.sinadd = 120,120,120,12
palfx.add = ifElse(var(55)=7,-100,70),ifElse(var(55)=7,-20,-120),10
palfx.color = 0
palfx.invertall = 1
envShake.time = 22
envShake.ampl = 6
envShake.freq = 120

[State 1200, HitDef 3]
type = HitDef
triggerAll = !var(16) && (var(15) < (5 + HitCount) || var(20))
triggerAll = var(10) != 1
trigger1 = AnimElem = 7
attr = S, SA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 60, 24) * !var(20), 12 * !var(20)
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
palfx.time = 26
palfx.sinadd = 120,120,120,12
palfx.add = ifElse(var(55)=7,-100,70),ifElse(var(55)=7,-20,-120),10
palfx.color = 0
palfx.invertall = 1
envShake.time = 22
envShake.ampl = 6
envShake.freq = 120

[State 1200, HitDef 4]
type = HitDef
triggerAll = !var(16) && (var(15) < (6 + HitCount) || var(20))
trigger1 = AnimElem = 9
attr = S, SA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 60, 24) * !var(20), 12 * !var(20)
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
guard.hitTime = 9
air.hitTime = 120
ground.velocity = -1, -3
ground.cornerPush.velOff = 0
guard.velocity = -4.32
guard.cornerPush.velOff = 0
air.velocity = -1, -7
air.cornerPush.velOff = 0
down.velocity = -5,0
yaccel = 0.53
fall = 1
air.fall = 1
fall.recover = 0
kill = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ceil(P2Dist x - 10)), var(36) := ceil(P2Dist y - 65)
palfx.time = 26
palfx.sinadd = 120,120,120,12
palfx.add = ifElse(var(55)=7,-100,70),ifElse(var(55)=7,-20,-120),10
palfx.color = 0
palfx.invertall = 1
envShake.time = 22
envShake.ampl = 6
envShake.freq = 120

[State 1200, Shock Particles]
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

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = ifElse(var(10)=2,AnimElemTime(10) >= 0, ifElse(var(10)=1,AnimElemTime(8) >= 0, AnimElemTime(6) >= 0))
moveType = I

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------
;EX Blitzbombe
[StateDef 1230]
type = S
physics = N
moveType = A
anim = 1230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

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
var(25) = 13

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -80
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1230, Electric Thunder (FX)]
type = Explod
trigger1 = AnimElem = 2
anim = ifElse(var(55)=7,12010, 1201)
ID = 1201
sprPriority = 2
bindtime = -1
removeTime = -1
posType = P1
pos = -6, 2
scale = .6,.6
removeOnGetHit = 1
ignoreHitPause = 0
ownPal = 1

[State 1230, RemoveExplod Shock]
type = RemoveExplod
trigger1 = AnimElem = 9
ID = 1201

[State 1230, Voice]
type = PlaySnd
trigger1 = var(55) = 7
trigger1 = AnimElemTime(2) = 0
value = 5, 1
channel = 0

[State 1230, Electricity]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
value = 1000, 2
channel = 15

[State 1230, HitDef 1]
type = HitDef
triggerAll = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
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
palfx.time = 34
palfx.sinadd = 120,120,120,12
palfx.add = ifElse(var(55)=7,-100,70),ifElse(var(55)=7,-20,-120),10
palfx.color = 0
palfx.invertall = 1
envShake.time = 22
envShake.ampl = 6
envShake.freq = 120

[State 1230, HitDef 2]
type = HitDef
triggerAll = !var(16) && (var(15) < (4 + HitCount) || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
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
palfx.time = 34
palfx.sinadd = 120,120,120,12
palfx.add = ifElse(var(55)=7,-100,70),ifElse(var(55)=7,-20,-120),10
palfx.color = 0
palfx.invertall = 1
envShake.time = 22
envShake.ampl = 6
envShake.freq = 120

[State 1230, HitDef 3]
type = HitDef
triggerAll = !var(16) && (var(15) < (5 + HitCount) || var(20))
trigger1 = AnimElem = 7
attr = S, SA
hitFlag = MAFD
guardFlag = M
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
guard.hitTime = 9
air.hitTime = 120
ground.velocity = -3, -3
ground.cornerPush.velOff = 0
guard.velocity = -4.32
guard.cornerPush.velOff = 0
air.velocity = -3, -3
air.cornerPush.velOff = 0
down.velocity = -5,0
yaccel = 0.45
fall = 1
air.fall = 1
fall.recover = 0
kill = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ceil(P2Dist x - 10)), var(36) := ceil(P2Dist y - 65)
palfx.time = 34
palfx.sinadd = 120,120,120,12
palfx.add = ifElse(var(55)=7,-100,70),ifElse(var(55)=7,-20,-120),10
palfx.color = 0
palfx.invertall = 1
envShake.time = 22
envShake.ampl = 6
envShake.freq = 120

[State 1230, Shock Particles]
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

[State 1230, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1230, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------
;PUNCH ZERO COUNTER
[STATEDEF 2900]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
faceP2 = 1

[STATE 2900,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2900,ANIM]
type=changeanim
trigger1=!time
value=2900

[STATE 2900,DUST]
type = helper
trigger1 = Animelem=3
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[STATE 2900,WIDTH]
type = Width
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(5) <= 0
Value = 20,0

[STATE 2900,NOT HIT BY]
type = NotHitBy
trigger1 = AnimElemTime(4) <= 0
value = SCA
time = 1

[STATE 2900,HIT]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !Time
ID = 2900
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getpower = 0
givepower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animtype = Heavy
air.animtype = Heavy
fall.animtype = Diagup
ground.type = hIGH
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 9 - var(10)
air.hittime = 120
ground.velocity = -6,-3.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -6,-3
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=77), var(36):=-55
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[STATE 2900,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[STATE 2900,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
 
;---------------------------------------------------------------
;KICK ZERO COUNTER
[STATEDEF 2910]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0

[STATE 2910,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2910, WIDTH]
type = Width
trigger1 = AnimElemTime(1) >= 2
trigger1 = AnimElemTime(5) <= 0
Value = 25,0

[STATE 2910,ANIM]
type=changeanim
trigger1=!time
value=2910

[STATE 2910,NOT HIT BY]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[STATE 2910,HIT]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
ID = 2910
attr = S, SA
hitFlag = MAF
guardFlag = M
damage =ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getPower = 0, 0
givePower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animType = Back
air.animType = Back
fall.animType = Diagup
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6,-5.5
ground.cornerPush.velOff = 0
guard.velocity = -6
guard.cornerPush.velOff = 0
air.velocity = -6.46, -4.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=67), var(36):=-31
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[STATE 2910,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[STATE 2910,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------
; TRITT ZERO COUNTER
[StateDef 2920]
type = S
physics = N
moveType = A
anim = 1110
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[STATE 2920,NOT HIT BY]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2920, Voice 1]
type = PlaySnd
trigger1 = AnimElemTime(1) = 2
value = 1100,0
channel = 0

[State 2920, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1100,2
channel = 0

[State 2920, Slash Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 2
value = 1100,1
channel = 1

[State 2920, Width]
type = Width
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(5) <= 0
edge = 25,0
player = 25,0

[State 2920, Width]
type = Width
trigger1 = animelemtime(8) >= 0
trigger2 = FrontEdgeDist <= 5
edge = 35,0
player = 8,0

[State 2920, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 2920, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 2920, Flak Tritt 1]
type = Explod
trigger1 = AnimElem = 3
anim = ifElse(var(55)=7,11070, 1107)
ID = 2920
pos = 20, -77
postype = p1
facing = 1
scale = .5,.5
removetime = -2
sprpriority = 1
bindtime = 9999
supermovetime = 50
ignorehitpause = 0

[State 2920, Flak Tritt FX 2]
type = Explod
trigger1 = AnimElemTime(2) = 1
anim = ifElse(var(55)=7,11050, 1105)
ID = 2925
pos = 29, -65
postype = p1
facing = 1
scale = .44, .48
removetime = -2
sprpriority = 5
bindtime = 9999
supermovetime = 50
ignorehitpause = 0

[State 2920, Rising Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = 5.25
y = -5

[State 2920, Gravity]
type = Veladd
trigger1 = AnimElemTime(3) > 0
y = 0.11

[State 2920, Wall Velocity]
type = VelSet
trigger1 = AnimElemTime(8) >= 0
trigger1 = FrontEdgeDist <= 35
x = 0

[State 2920, Divekick Velocity]
type = VelSet
trigger1 = AnimElemTime(8) = 0
x = 7.5
y = 4

[State 2920, Gravity]
type = VelAdd
trigger1 = AnimElemTime(8) >= 0
y = 0.45

[State 2920, Tritt Juggle Variable]
type = VarAdd
triggerall = AnimElemTime(8) >= 0 && movehit = 1
trigger1 = var(10) = 0
var(11)= 1

[State 2920, Ground Hit 1]
type = HitDef
triggerall = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -4.61, -5.47
ground.cornerPush.velOff = 0
guard.velocity = -6.13
guard.cornerPush.velOff = 0
air.velocity = -5.49, -4.91
air.cornerPush.velOff = 0
yAccel = 0.59
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2920, Air Hit 1]
type = HitDef
triggerall = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
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
yAccel = 0.49
fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -35
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2920, ChangeState]
type = ChangeState
trigger1 = (Vel y > -1) && (Pos y >= -1)
trigger1 = time >= 30
value = 1101