; ______________________
;| Akuma by DeathScythe |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

;---------------------------------------------------------------------------
;Gou Hadouken
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

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !var(40)
trigger1 = !Time
value = ifElse(var(10) = 0, 1002, ifElse(var(10) = 1, 1003, 1004))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = var(40)=1
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1001, 1002))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,5
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000, 0
channel = 2

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 5
stateNo = 1005
ID = 1005
name = "Gou Hadouken"
posType = P1
pos = 73,-67
size.xScale = ifelse(var(40)=1, .7, .5)
size.yScale = ifelse(var(40)=1, .7, .5)
ownPal = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 30,0

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Gou Hadouken
[StateDef 1010]
type = S
physics = S
moveType = A
anim = 1010
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, 0, -500)
faceP2 = 1

[State 1010, Max Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1010, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1010, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1010, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1010, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 35

[State 1010, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 4, -73
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1010, Ex AfterImage]
type = AfterImage
triggerall = var(57)
trigger1 = !Time
time = 2
timegap = 1
framegap = 1
length = 8
palcontrast = 128, 112, 0
palmul = 0.65, 0.65, 0.65
trans = add

[State 1010, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000, 0
channel = 2

[State 1010, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,5
channel = 0

[State 1010, Projectile]
type = Helper
trigger1 = AnimElem = 5
stateNo = 1015
ID = 1005
name = "EX Gou Hadouken"
posType = P1
pos = 73,-67
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1010, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 30,0

[State 1010, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Shakunetsu Hadouken
[StateDef 1020]
type = S
physics = S
moveType = A
anim = 1020
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1020, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1020, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1020, ChangeAnim]
type = ChangeAnim
trigger1 = var(40)!=1
trigger1 = !Time
value = ifElse(var(10) = 0, 1022, ifElse(var(10) = 1, 1023, 1024))

[State 1020, ChangeAnim]
type = ChangeAnim
trigger1 = var(40)=1
trigger1 = !Time
value = ifElse(var(10) = 0, 1020, ifElse(var(10) = 1, 1021, 1022))

[State 1020, Voice]
type = PlaySnd
trigger1 = Anim = 1020 && AnimElem = 8
trigger2 = (Anim = [1021,1022]) && AnimElem = 9
trigger3 = (Anim = [1023,1024]) && AnimElem = 10
value = 4,5
channel = 0

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = Anim = 1020 && AnimElem = 8
trigger2 = (Anim = [1021,1022]) && AnimElem = 9
trigger3 = (Anim = [1023,1024]) && AnimElem = 10
value = 1000, 0
channel = 2

[State 1020, Aura]
type = Explod
trigger1 = !NumExplod(735)
trigger1 = !Time
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

[State 1020, RemoveExplod]
type = RemoveExplod
trigger1 = Anim = 1020 && AnimElem = 4
trigger2 = (Anim = [1021,1022]) && AnimElem = 5
trigger3 = (Anim = [1023,1024]) && AnimElem = 6
ID = 735

[State 1020, Projectile]
type = Helper
trigger1 = Anim = 1020 && AnimElem = 8
trigger2 = (Anim = [1021,1022]) && AnimElem = 9
trigger3 = (Anim = [1023,1024]) && AnimElem = 10
stateNo = 1025
ID = 1025
name = "Shakunetsu Hadouken"
posType = P1
pos = 73,-67
size.xScale = ifelse(var(40)=1, 1, .7)
size.yScale = ifelse(var(40)=1, 1, .7)
ownPal = 1

[State 1020, Width]
type = Width
trigger1 = AnimElemTime(8) = 0
value = 30,0

[State 1020, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Shakunetsu Hadouken
[StateDef 1030]
type = S
physics = S
moveType = A
anim = 1020
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, 0, -500)
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
var(25) = 53

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -3, -57
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, Ex AfterImage]
type = AfterImage
triggerall = var(57)
trigger1 = !Time
time = 2
timegap = 1
framegap = 1
length = 8
palcontrast = 128, 112, 0
palmul = 0.65, 0.65, 0.65
trans = add

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1000, 0
channel = 2

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800,2
channel = 0

[State 1030, Aura]
type = Explod
trigger1 = !NumExplod(735)
trigger1 = !Time
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

[State 1030, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 4
ID = 735

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 8
stateNo = 1025
ID = 1025
name = "EX Gou Hadouken"
posType = P1
pos = 73,-67
size.xScale = 0.75
size.yScale = 0.75
ownPal = 1

[State 1030, Width]
type = Width
trigger1 = AnimElemTime(8) = 0
value = 30,0

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Zankuu Hadouken
[StateDef 1070]
type = A
physics = N
moveType = A
anim = 1070
ctrl = 0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1070, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1070, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(Random < 333, 2, ifElse(Random < 500, 1, 0))

[State 1070, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = var(40)=1
trigger2 = AnimElem = 2
value = 4,0
channel = 0

[State 1070, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = var(40)=1
trigger2 = AnimElem = 2
value = 1000, 0
channel = 2

[State 1070, Width]
type = Width
trigger1 = AnimElem = 5
trigger2 = var(40)=1
trigger2 = AnimElem = 2
player = 15,0

[State 1070, Width]
type = Width
trigger1 = 1
player = 10,0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = var(40)=2
trigger1 = AnimElemTime(1) > 0 && AnimElemTime(5) < 0
value = 1

[State 1070, Gravity]
type = VelAdd
trigger1 = 1
trigger1 = var(40)!=2
trigger2 = AnimElemTime(5) >= 1
trigger2 = var(40)=2
y = .5

[State 1070, Projectile]
type = Helper
trigger1 = AnimElem = 5
stateNo = 1075
ID = 1075
name = "Zankuu Hadouken"
posType = P1
pos = 53,-57
size.xScale = ifelse(var(40)=1, .7, .5)
size.yScale = ifelse(var(40)=1, .7, .5)
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1070, Projectile]
type = Helper
trigger1 = var(40)=1
trigger1 = AnimElem = 2
stateNo = 1075
ID = 1075
name = "Zankuu Hadouken"
posType = P1
pos = 53,-57
size.xScale = .7
size.yScale = .7
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1070, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1070, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1071


;Landing
[Statedef 1071]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1071; + var(40)
velset = 0, 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40)=1
value = 1072

[State 1071, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1071, Land Snd]
type = PlaySnd
trigger1 = Time = 1
value = 52,0

[State 1071, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1071, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Zankuu Hadouken
[StateDef 1080]
type = A
physics = N
moveType = A
anim = 1070
ctrl = 0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, 0, -500)
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
var(25) = 36

[State 1080, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -70
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1080, Ex AfterImage]
type = AfterImage
triggerall = var(57)
trigger1 = !Time
time = 2
timegap = 1
framegap = 1
length = 8
palcontrast = 128, 112, 0
palmul = 0.65, 0.65, 0.65
trans = add

[State 1080, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1080, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 5
value = 4,0
channel = 0

[State 1080, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 5
value = 1000, 0
channel = 2

[State 1080, Width]
type = Width
trigger1 = 1
player = 10,0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = var(40)=2
trigger1 = AnimElemTime(1) > 0 && AnimElemTime(5) < 0
value = 1

[State 1070, Gravity]
type = VelAdd
trigger1 = 1
trigger1 = var(40)!=2
trigger2 = AnimElemTime(5) >= 1
trigger2 = var(40)=2
y = .5

[State 1080, Projectile]
type = Helper
trigger1 = AnimElem = 2
stateNo = 1075
ID = 1075
name = "Zankuu Hadouken"
posType = P1
pos = 53,-57
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1080, Projectile]
type = Helper
trigger1 = AnimElem = 5
stateNo = 1075
ID = 1075
name = "Zankuu Hadouken"
posType = P1
pos = 53,-57
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1080, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1080, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1071

;---------------------------------------------------------------------------
;Gou Shoryuken
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
var(10) = ifElse(var(20) > 30, 0, ifelse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0)))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100))

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0 && !var(10)
trigger2 = AnimElemTime(4) < 6 && var(10) = 1
trigger3 = AnimElemTime(4) < 6 && var(10) = 2
value = SCA
time = 1

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifelse(var(40)=1, 4, 1)
channel = 0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2
channel = 1

[State 1330, Swing Snd]
type = PlaySnd
trigger1 = var(40)=1 && var(10) = 2
trigger1 = Animelem = 3
value = 1000, 1
channel = 2

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = var(40)!=1
trigger1 = AnimElem = 4
x = 4 + var(10) * 2.5
y = -8 - var(10) * 1.5

[State 1100, VelSet]
type = VelSet
trigger1 = var(40)=1
trigger1 = AnimElem = 4
x = 5 + var(10) * 3.5
y = -8 - var(10) * 1.5

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.6

[State 1100, Velocity]
type = VelMul
trigger1 = AnimElemTime(4) >= 0
trigger1 = Vel X > 0
x = 0.85
persistent = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1330, Flames FX 1]
type = Explod
trigger1 = var(40)=1 && var(10) = 2
trigger1 = !NumExplod(1140)
trigger1 = !Time
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
trigger1 = var(40)=1 && var(10) = 2
trigger1 = !NumExplod(1141)
trigger1 = AnimElem = 4
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
trigger1 = var(40)=1 && var(10) = 2
trigger1 = !NumExplod(1142)
trigger1 = AnimElemTime(6) = -2
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


[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 + (var(10) * 7) < 7, 7, fvar(11) * 56 + (var(10) * 7))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.3, -8
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -1.3, -8
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.3, -8
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -1.3, -8
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 + (var(10) * 7) < 7, 7, fvar(11) * 21 + (var(10) * 7))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.6, -8 - var(10)
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.6, -8 - var(10)
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Flame Particles]
type = Helper
trigger1 = var(40)=1 && var(10) = 2
trigger1 = AnimElemTime(2) > 0
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

[State 1100, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101


;Landing
[StateDef 1101]
type = S
physics = N
moveType = I
velSet = 0,0
anim = 1101

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40)=1
value = 1102

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
;EX Gou Shoryuken
[StateDef 1110]
type = S
physics = N
moveType = A
anim = 1130
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, 0, -500)
faceP2 = 1

[State 1110, Max Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1110, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1110, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1110, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1110, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 37

[State 1110, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 14, -55
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1110, Ex AfterImage]
type = AfterImage
triggerall = var(57)
trigger1 = !Time
time = 2
timegap = 1
framegap = 1
length = 8
palcontrast = 128, 112, 0
palmul = 0.65, 0.65, 0.65
trans = add

[State 1110, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1110, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 6
value = SCA
time = 1

[State 1110, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,2
channel = 0

[State 1110, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2
;channel = 1
[State 1330, Swing Snd]
type = PlaySnd
trigger1 = Animelem = 3
value = 1000, 1
channel = 2

[State 1110, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1110, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1110, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 12
y = -12

[State 1110, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.6

[State 1110, Velocity]
type = VelMul
trigger1 = AnimElemTime(4) >= 0
trigger1 = Vel X > 0
x = 0.85
persistent = 1

[State 1110, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 1110, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1330, Flames FX 1]
type = Explod
trigger1 = !NumExplod(1140)
trigger1 = !Time
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
trigger1 = AnimElem = 4
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
trigger1 = AnimElemTime(6) = -2
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

[State 1110, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 + (var(10) * 7) < 7, 7, fvar(11) * 56 + (var(10) * 7))), 7
getPower = 0,0
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
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.3, -10
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -1.3, -10
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -57
palFX.time = 12 * var(9)
palfx.mul = 128,128,128
palfx.sinadd = 96,96,96,4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1110, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
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
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.3, -10
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -1.3, -10
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -84
palFX.time = 12 * var(9)
palfx.mul = 128,128,128
palfx.sinadd = 96,96,96,4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1110, HitDef 3]
type = HitDef
triggerall = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 4
;trigger2 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
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
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.8, -10
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.8, -10
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -135
palFX.time = 12 * var(9)
palfx.mul = 128,128,128
palfx.sinadd = 96,96,96,4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, Flame Particles]
type = Helper
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

[State 1110, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101

---------------------------------------------------------------------------
;Tatsumaki Zankuukyaku
[StateDef 1200]
type = A
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

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,2
channel = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9
trigger2 = var(10) && (AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21)
trigger3 = var(10) = 2 && (AnimElem = 24 || AnimElem = 27)
value = 1, 5
;channel = 2

[State 1200, PosAdd]
type = PosAdd
trigger1 = !Time && var(13) >= 2
x = -16
ignorehitpause = 1

[State 1200, Width]
type = Width
trigger1 = 1
edge = 15,0
player = 5,10

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = ifelse(!var(10), 2.7, ifelse(var(10)=1, 3, 3.6))
y = -5

[State 1200, VelMul]
type = VelMul
trigger1 = !var(10) && AnimElemTime(13) >= 0
trigger2 = var(10) = 1 && AnimElemTime(25) >= 0
trigger3 = var(10) = 2 && AnimElemTime(31) >= 0
x = .96

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 6
y = 0

[State 1200, Gravity]
type = VelAdd
trigger1 = AnimElemTime(5) < 0
trigger2 = !var(10) && AnimElemTime(13) >= 0
trigger3 = var(10) = 1 && AnimElemTime(25) >= 0
trigger4 = var(10) = 2 && var(40)!=2 && AnimElemTime(31) >= 0
y = .51
[State 1200, Gravity]
type = VelAdd
trigger1 = var(10) = 2 && var(40)=2 && AnimElemTime(33) >= 0
y = .4


[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
stateNo = 8100
ID = 8100
name = "Tatsumaki Dust"
posType = P1
ownPal = 1

[State 1200, HitDef 1]
type = HitDef
triggerall = !var(16) && (var(15) < 1 || var(20))
trigger1 = var(40)!=2&&AnimElem = 2
attr = A, SA
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
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, -7.5
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -4, -7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef 2]
type = HitDef
triggerall = var(40)!=2
triggerall = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 8
trigger2 = AnimElem = 11
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
trigger7 = AnimElem = 26
trigger8 = AnimElem = 29
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
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -1.5 * ifElse(P2Dist X > 0 ,1 ,-1), -7.5
ground.cornerPush.velOff = 0
guard.velocity = -8 * ifElse(P2Dist X > 0 ,1 ,-1)
guard.cornerPush.velOff = 0
air.velocity = -1.5 * ifElse(P2Dist X > 0 ,1 ,-1), -7.5
airguard.velocity = -6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.49
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
[State 1200, HitDef 2 (Modern LK)]
type = HitDef
triggerall = var(40)=2 && var(10)=0
triggerall = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 8
trigger2 = AnimElem = 11
attr = A, SA
hitFlag = MAF
guardFlag = MA
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
ground.velocity = -1.5 * ifElse(P2Dist X > 0 ,1 ,-1), -7.5
ground.cornerPush.velOff = 0
guard.velocity = -8 * ifElse(P2Dist X > 0 ,1 ,-1)
guard.cornerPush.velOff = 0
air.velocity = -1.5 * ifElse(P2Dist X > 0 ,1 ,-1), -7.5
airguard.velocity = -6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.49
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
[State 1200, HitDef 2 (Modern MK)]
type = HitDef
triggerall = var(40)=2 && var(10)=1
triggerall = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 8
trigger2 = AnimElem = 11
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
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
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -1.5 * ifElse(P2Dist X > 0 ,1 ,-1), -7.5
ground.cornerPush.velOff = 0
guard.velocity = -8 * ifElse(P2Dist X > 0 ,1 ,-1)
guard.cornerPush.velOff = 0
air.velocity = -1.5 * ifElse(P2Dist X > 0 ,1 ,-1), -6.5
airguard.velocity = -6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.49
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
[State 1200, HitDef 2 (Modern HK)]
type = HitDef
triggerall = var(40)=2 && var(10)=2
triggerall = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 8
trigger2 = AnimElem = 11
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
trigger7 = AnimElem = 26
trigger8 = AnimElem = 29
attr = A, SA
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
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 13
air.hitTime = 120
ground.velocity = -1.5 * ifElse(P2Dist X > 0 ,1 ,-1), -6.5
ground.cornerPush.velOff = 0
guard.velocity = -8 * ifElse(P2Dist X > 0 ,1 ,-1)
guard.cornerPush.velOff = 0
air.velocity = -1.5 * ifElse(P2Dist X > 0 ,1 ,-1), -6.5
airguard.velocity = -6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

;[State 1200, PlayerPush]
;type = PlayerPush
;trigger1 = abs(P2bodydist Y) > 45
;value = 0

[State 1200, NHB]
type = NotHitBy
triggerall = var(40)=1
trigger1 = AnimElemTime(3) < 0
value = SCA
ignorehitpause = 1

[State 1200, Idle]
type = StateTypeSet
trigger1 = !var(10) && AnimElemTime(12) > 0
trigger2 = var(10) = 1 && AnimElemTime(24) > 0
trigger3 = var(10) = 2 && AnimElemTime(30) > 0
movetype = I

[State 1200, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1201


;Landing
[StateDef 1201]
type = S
physics = S
moveType = I
velSet = 0,0
anim = 1201

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40)=1
value = 1202

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
;EX Tatsumaki Zankuukyaku
[StateDef 1210]
type = A
physics = N
moveType = A
anim = 1230
ctrl = 0
sprPriority = 2
powerAdd = ifelse(var(53) > 0, 0, -500)
faceP2 = 1

[State 1210, Max Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1210, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1210, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1210, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1210, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 36

[State 1210, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -90
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1210, Ex AfterImage]
type = AfterImage
triggerall = var(57)
trigger1 = !Time
time = 2
timegap = 1
framegap = 1
length = 8
palcontrast = 128, 112, 0
palmul = 0.65, 0.65, 0.65
trans = add

[State 1210, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1210, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800, 2
channel = 0

[State 1210, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5 || AnimElem = 9 || AnimElem = 12
trigger2 = AnimElem = 15 || AnimElem = 18 || AnimElem = 21
value = 1, 5
;channel = 2

[State 1210, Width]
type = Width
trigger1 = MoveHit
edge = 50,35

[State 1210, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(28) < 0 
value = 0
ignorehitpause = 1

[State 1210, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 1.5
y = -4

[State 1210, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0
y = 0

[State 1210, Gravity]
type = VelAdd
trigger1 = AnimElemTime(24) >= 0
y = .48

[State 1210, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
stateNo = 8100
ID = 8100
name = "Tatsumaki Dust"
posType = P1
ownPal = 1

[State 1210, Dust]
type = Explod
trigger1 = AnimElem = 6 || AnimElem = 12 || AnimElem = 18
anim = 8105
ID = 8105
pos = 0, ceil(-pos Y)
postype = p1
scale = .5, .5
sprpriority = -2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

;---- Normal Mode ----

[State 1210, HitDef 1]
type = HitDef
triggerall = var(40)!=2
triggerall = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 0
guard.pauseTime = 5, 0
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(P2Dist x > 30, 12, 11), 0
ground.cornerPush.velOff = 0
guard.velocity = 10
guard.cornerPush.velOff = 0
air.velocity = ifelse(P2Dist x > 30, 8, 6), -3
airguard.velocity = 6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.52
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
p2facing = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
[State 1210, HitDef 2]
type = HitDef
triggerall = var(40)!=2
triggerall = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 10
trigger2 = AnimElem = 16
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 0
guard.pauseTime = 5, 0
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(P2Dist x > 30, -12, -11), 0
ground.cornerPush.velOff = 0
guard.velocity = -10
guard.cornerPush.velOff = 0
air.velocity = ifelse((P2Dist x != [-30,30]), -8, -6), -3
airguard.velocity = -6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.52
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
p2facing = -1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -33), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
[State 1210, HitDef 3]
type = HitDef
triggerall = var(40)!=2
triggerall = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 19
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 0
guard.pauseTime = 5, 5
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -7, -8
ground.cornerPush.velOff = 0
guard.velocity = 10
guard.cornerPush.velOff = 0
air.velocity = -7, -5
airguard.velocity = 6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.52
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

;---- Modern Mode ----

[State 1210, HitDef 1]
type = HitDef
triggerall = var(40)=2
triggerall = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 0
guard.pauseTime = 5, 0
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(P2Dist x > 30, 12, 11), 0
ground.cornerPush.velOff = 0
guard.velocity = 10
guard.cornerPush.velOff = 0
air.velocity = ifelse(P2Dist x > 30, 8, 6), -3
airguard.velocity = 6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.52
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
p2facing = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
[State 1210, HitDef 2]
type = HitDef
triggerall = var(40)=2
triggerall = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 10
trigger2 = AnimElem = 16
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 0
guard.pauseTime = 5, 0
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(P2Dist x > 30, -12, -11), 0
ground.cornerPush.velOff = 0
guard.velocity = -10
guard.cornerPush.velOff = 0
air.velocity = ifelse((P2Dist x != [-30,30]), -8, -6), -3
airguard.velocity = -6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.52
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
p2facing = -1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -33), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
[State 1210, HitDef 3]
type = HitDef
triggerall = var(40)=2
triggerall = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 19
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 0
guard.pauseTime = 5, 5
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -7, -8
ground.cornerPush.velOff = 0
guard.velocity = 10
guard.cornerPush.velOff = 0
air.velocity = -7, -8
airguard.velocity = 6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1210, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(20) > 0
movetype = I

[State 1210, End]
type = ChangeState
trigger1 = Pos y > -Vel y
value = 1201

;---------------------------------------------------------------------------
;Air Tatsumaki Zankuukyaku
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

[State 1250, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,2
channel = 0

[State 1250, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 6 || AnimElem = 9 || AnimElem = 12
value = 1, 5
;channel = 2

[State 1250, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 1250, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
x = ifelse(Vel X >= 0, 1.5, -1.5)
y = ifelse(Vel Y <= 0, (-5-var(10))*.4, (5+var(10))*.2)

[State 1250, Gravity]
type = VelAdd
trigger1 = Time >= 0
y = .4

[State 1250, HitDef 2]
type = HitDef
triggerall = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
trigger4 = AnimElem = 14
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
ground.velocity = -1.5 * ifElse(p2dist X > 0 ,1 ,-1), -7.5
ground.cornerPush.velOff = 0
guard.velocity = -8 * ifElse(p2dist X > 0 ,1 ,-1)
guard.cornerPush.velOff = 0
air.velocity = -1.5 * ifElse(p2dist X > 0 ,1 ,-1), -7
airguard.velocity = -6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

;[State 1250, PlayerPush]
;type = PlayerPush
;trigger1 = abs(P2bodydist Y) > 45
;value = 0

[State 1250, End]
type = ChangeState
trigger1 = Pos y > -Vel y
value = 1201

;---------------------------------------------------------------------------
;EX Air Tatsumaki Zankuukyaku
[StateDef 1260]
type = A
physics = N
moveType = A
anim = 1260
ctrl = 0
;velSet = 0,0
sprPriority = 2
powerAdd = ifelse(var(53) > 0, 0, -500)

[State 1260, Max Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1260, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1260, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1260, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1260, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 36

[State 1260, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -90
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1260, Ex AfterImage]
type = AfterImage
triggerall = var(57)
trigger1 = !Time
time = 2
timegap = 1
framegap = 1
length = 8
palcontrast = 128, 112, 0
palmul = 0.65, 0.65, 0.65
trans = add

[State 1260, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1260, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800, 2
channel = 0

[State 1260, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 6 || AnimElem = 9
trigger2 = AnimElem = 12 || AnimElem = 15
value = 1, 5
;channel = 2

[State 1260, Width]
type = Width
trigger1 = MoveHit
edge = 50,35

[State 1260, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(26) < 0 
value = 0
ignorehitpause = 1

[State 1260, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = vel X * .25
y = vel Y * .25

[State 1260, VelSet]
type = VelSet
trigger1 = AnimElemTime(14) < 0 && pos Y >= -10
x = 0
y = 0

[State 1260, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(22) >= 0
y = .5

[State 1260, HitDef 1]
type = HitDef
triggerall = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 0
guard.pauseTime = 5, 0
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(P2Dist x > 30, 12, 11), 0
ground.cornerPush.velOff = 0
guard.velocity = 10
guard.cornerPush.velOff = 0
air.velocity = ifelse((P2Dist x != [-30,30]), 8, 6), -3
airguard.velocity = 6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.52
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
p2facing = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1260, HitDef 2]
type = HitDef
triggerall = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 8
trigger2 = AnimElem = 14
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 0
guard.pauseTime = 5, 0
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(P2Dist x > 30, -12, -11), 0
ground.cornerPush.velOff = 0
guard.velocity = -10
guard.cornerPush.velOff = 0
air.velocity = ifelse((P2Dist x != [-30,30]), -8, -6), -3
airguard.velocity = -6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.52
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
p2facing = -1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -33), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1260, HitDef 3]
type = HitDef
triggerall = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 17
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 5, 0
guard.pauseTime = 5, 5
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -7, -5
ground.cornerPush.velOff = 0
guard.velocity = 10
guard.cornerPush.velOff = 0
air.velocity = -7, -5
airguard.velocity = 6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.52
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1260, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(19) >= 0
movetype = I

[State 1260, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1201

;---------------------------------------------------------------------------
;Hyakkishu
[StateDef 1300]
type = S
physics = S
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist X > 160, 2, ifElse(P2Dist X > 100, 1, 0))

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,0
channel = 0

[State 1300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 3

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 2 + var(10) * 1.75 ;1.5
y = -9

[State 1300, Gravity]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = 0.5

[State 1300, ChangeState]
type = ChangeState
trigger1 = !AILevel && var(40)=2
trigger1 = Time > 15
trigger1 = ifelse(var(53) <= 0, power >= 500 && var(20) <= 60, 1)
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
trigger1 = (ifElse(NumExplod(90000200), 1, 0) + ifElse(NumExplod(90000210), 1, 0) + ifElse(NumExplod(90000220), 1, 0) >= 2) || (ifElse(NumExplod(90000205), 1, 0) + ifElse(NumExplod(90000215), 1, 0) + ifElse(NumExplod(90000225), 1, 0) >= 2)
value = 1080

[State 1300, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = Time > 15
;trigger1 = Command = "x" || Command = "y" || Command = "z"
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
value = 1310

[State 1300, ChangeState]
type = ChangeState
trigger1 = !AILevel && var(40)!=2
trigger1 = Time > 15
;trigger1 = Command = "a" || Command = "b" || Command = "c"
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
value = 1315
[State 1300, ChangeState]
type = ChangeState
trigger1 = !AILevel && var(40)=2
trigger1 = Time > 15
;trigger1 = Command = "a" || Command = "b" || Command = "c"
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
value = 1330

[State 1350, ChangeState]
type = ChangeState
triggerall = AILevel && var(40)!=2
triggerall = Time > 15
trigger1 = (P2Dist X = [-40,40]) && random < 500
value = ifelse(random < 500, 1310, 1315)
[State 1350, ChangeState]
type = ChangeState
triggerall = AILevel && var(40)=2
triggerall = Time > 15
trigger1 = (P2Dist X = [-40,40]) && random < 500
value = ifelse(random < 500, 1310, 1330)

[State 1300, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
trigger1 = AnimElemTime(2) > 0
value = 1305

;---------------------------------------------------------------------------
;Hyakki Gouzan
[StateDef 1305]
type = C
physics = N
moveType = A
anim = 1305

[State 1305, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1305, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 1305, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1305, VelMul]
type = VelMul
trigger1 = Vel X > 0
x = .92

[State 1305, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1305, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0;5100,1

[State 1305, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 1305, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,2
channel = 0

[State 1305, HitDef]
type = HitDef
triggerall = var(10) != 3
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
attr = C, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
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
ground.velocity = -2.5, -5.5
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -6
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1305, HitDef EX]
type = HitDef
triggerall = var(10) = 3
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
attr = C, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 7
getPower = 0,0
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
ground.velocity = -3, -6
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -3, -6
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -6
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1305, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I

[State 1305, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Hyakki Goushou
[StateDef 1310]
type = A
physics = N
moveType = A
anim = 1310
ctrl = 0
powerAdd = 0

[State 1310, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value= 195, 0
channel = 0

[State 1310, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 1310, Gravity]
type = VelAdd
trigger1 = 1
y = 0.5

[State 1310, HitDef]
type = HitDef
triggerall = AnimElem = 1
triggerall = !var(38)
;trigger1 = !AIlevel && (command = "holdfwd" || command = "holdback")
trigger1 = !AIlevel && (NumExplod(90000006) || NumExplod(90000004))
trigger2 = AIlevel && ((P2StateNo = [120,155]) || random < 500) 
attr = A, ST
hitFlag = MA-
priority = 4, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 1320

[State 1310, HitDef]
type = HitDef
triggerall = var(10) != 3
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag =HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 7
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animtype = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -1.5, ifElse(var(20), 0, 10)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4, -8)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -1.5, -5), ifElse(var(20), -2, 10)
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1310, HitDef EX]
type = HitDef
triggerall = var(10) = 3
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animtype = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -3, -6
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4, -8)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -1.5, -5), ifElse(var(20), -2, 10)
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1310, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 7
movetype = I

[State 1310, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1311


;Landing
[StateDef 1311]
type = S
physics = S
moveType = I
velSet = 0,0
anim = 1311

[State 1311, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1311, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1311, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1311, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Hyakki Goudan
[StateDef 1315]
type = A
physics = N
moveType = A
anim = 1315
ctrl = 0
powerAdd = 0

[State 1315, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value= 4, 2
channel = 0

[State 1315, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 1315, Gravity]
type = VelAdd
trigger1 = 1
y = 0.5

[State 1315, HitDef]
type = HitDef
triggerall = AnimElem = 1
triggerall = !var(38)
;trigger1 = !AIlevel && (command = "holdfwd" || command = "holdback")
trigger1 = !AIlevel && (NumExplod(90000006) || NumExplod(90000004))
trigger2 = AIlevel && ((P2StateNo = [120,155]) || random < 500)
attr = A, ST
hitFlag = MA-
priority = 4, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 1325

[State 1315, HitDef]
type = HitDef
triggerall = var(10) != 3
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animtype = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -1.5, ifElse(var(20), 0, 10)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4, -8)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -1.5, -5), ifElse(var(20), -2, 10)
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1315, HitDef EX]
type = HitDef
triggerall = var(10) = 3
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,6
guard.pauseTime = 12,12
animtype = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -1.5, 10
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -5, 10
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
down.bounce = 0
fall.yvelocity = 0
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1315, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = ifelse(var(10) = 3, 1317, 1316)


;Landing
[StateDef 1316]
type = S
physics = S
moveType = I
velSet = 0,0
anim = 1316

[State 1316, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1316, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1316, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 5100,0;52,0

[State 1316, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Landing EX
[StateDef 1317]
type = S
physics = N
moveType = A
velSet = 0,0
anim = 1317

[State 1317, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1317, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1317, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 5100,0;52,0

[State 1317, HitDef EX]
type = HitDef
triggerall = var(10) = 3
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = !Time
attr = S, SA
hitFlag = FD
;guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animtype = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2, 0
ground.cornerPush.velOff = 0
guard.velocity = -4
guard.cornerPush.velOff = 0
air.velocity = -2, 0
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := 0
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1317, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Hyakki Gousai
[StateDef 1320]
type = A
physics = N
moveType = A
anim = 1320
ctrl = 0
velset = 0,0
powerAdd = 0

[State 1320, Width]
type = Width
trigger1 = 1
edge = 25,0

[State 1320, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = !Time
value = 1322

[State 1320, Voice]
type = PlaySnd
trigger1 = !Time
value = 195,1
channel = 0

[State 1320, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 1.5
y = ifelse(var(10) = 3, -8, -4.5)

[State 1320, Gravity]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = .55

[State 1320, BindToTarget]
type = BindToTarget
trigger1 = !Time
pos = -10, 25, Head
time = -1

[State 1320, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = -24, -58

[State 1320, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = -19, -86

[State 1320, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 20, -86

[State 1320, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0
pos = 25, -78

[State 1320, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1321


;Landing
[StateDef 1321]
type = C
physics = N
moveType = A
velSet = 0,0
anim = 1321

[State 1321, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1321, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = !Time
value = 1323

[State 1321, TargetBind]
type = TargetBind
trigger1 = !Time
pos = 30,0
time = 20

[State 1321, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1321, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1321, Helper]
type = Helper
trigger1 = !Time
name = "Impact Dust"
ID = 8110
stateno = 8110
pos = 0,0
postype = p1
ownpal = 1

[State 1321, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = 5100,1

[State 1321, Damage]
type = TargetLifeAdd
triggerall = var(10) != 3
trigger1 = NumTarget && !Time
value = floor(ifElse(77 * fvar(11) < 7, -7, -77 * fvar(11)))

[State 1321, Damage]
type = TargetLifeAdd
triggerall = var(10) = 3
trigger1 = NumTarget && !Time
value = floor(ifElse(98 * fvar(11) < 7, -7, -98 * fvar(11)))

[State 1321, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && !Time
value = 36


[State 1321, Power]
type = PowerAdd
triggerall = var(10) != 3
trigger1 = NumTarget && !Time && !var(20)
value = 72

[State 1321, HitAdd]
type = HitAdd
trigger1 = NumTarget && !Time
value = 1

[State 1321, HitCount]
type = VarAdd
trigger1 = NumTarget && !Time
var(13) = 1

;[State 1321, Juggle]
;type = VarAdd
;trigger1 = NumTarget && !Time
;var(15) = 1
;ignoreHitPause = 1

;[State 1321, Juggle]
;type = VarSet
;trigger1 = NumTarget && !Time
;var(16) = 1
;ignoreHitPause = 1

[State 1321, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20
ampl = 5

[State 1321, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Target
[StateDef 1322]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 1322, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1322

[State 1322, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(5) >= 0
value = 2

[State 1322, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 1322, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = 90


;Target End
[StateDef 1323]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0

[State 1323, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1323

[State 1323, NHB]
type = NotHitBy
trigger1 = Time < 20
value = SCA

[State 1323, VelSet]
type = VelSet
trigger1 = Time = 20
x = -4.5
y = -6

[State 1323, VelAdd]
type = VelAdd
Trigger1 = Time >= 20
y = 0.5

[State 1323, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 14
ampl = 4
freq = 120

[State 1323, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;---------------------------------------------------------------------------
;Hyakki Goutsui
[StateDef 1325]
type = A
physics = N
moveType = A
anim = 1325
ctrl = 0
velset = 0,0
powerAdd = 0

[State 1325, Width]
type = Width
trigger1 = 1
edge = 30,0

[State 1325, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = !Time
value = 1327

[State 1325, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 4
y = -8

[State 1325, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) >= 0
trigger1 = Vel X > 0
x = .98

[State 1325, VelSet]
type = VelSet
trigger1 = AnimElem = 16
x = 0

[State 1325, Gravity]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime (16) < 0
y = .2

[State 1325, Gravity]
type = VelAdd
trigger1 = AnimElemTime(16) >= 0
y = .55

[State 1325, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
value = 1,5

[State 1325, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3000,0
channel = 0

[State 1325, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 30,0

[State 1325, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(2) < 3
pos = -16,-70

[State 1325, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger2 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
trigger3 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger4 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
pos = 0,-45

[State 1325, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger3 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
trigger4 = AnimElemTime(16) >= 0
pos = 10,-24

[State 1325, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger2 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
trigger3 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
pos = -24,-16

[State 1325, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
trigger2 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
trigger3 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
pos = -20, -60

[State 1325, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1326


;Landing
[StateDef 1326]
type = S
physics = N
moveType = A
velSet = 0,0
anim = 1326

[State 1326, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1326, Turn]
type = Turn
trigger1 = AnimElem = 2

[State 1326, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = !Time
value = 1328

[State 1326, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1326, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1326, Helper]
type = Helper
trigger1 = !Time
name = "Impact Dust"
ID = 8110
stateno = 8110
pos = 0,0
postype = p1
ownpal = 1

[State 1326, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = 5100,1

[State 1326, TargetBind]
type = TargetBind
trigger1 = !Time
pos = 25,0
;time = 20

[State 1326, Damage]
type = TargetLifeAdd
triggerall = var(10) != 3
trigger1 = NumTarget && !Time
value = floor(ifElse(98 * fvar(11) < 7, -7, -98 * fvar(11)))

[State 1326, Damage]
type = TargetLifeAdd
triggerall = var(10) = 3
trigger1 = NumTarget && !Time
value = floor(ifElse(126 * fvar(11) < 7, -7, -126 * fvar(11)))

[State 1326, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && !Time
value = 36

[State 1326, Power]
type = PowerAdd
triggerall = var(10) != 3
trigger1 = NumTarget && !Time && !var(20)
value = 72

[State 1326, HitAdd]
type = HitAdd
trigger1 = NumTarget && !Time
value = 1

[State 1326, HitCount]
type = VarAdd
trigger1 = NumTarget && !Time
var(13) = 1

[State 1326, Juggle]
type = VarAdd
trigger1 = NumTarget && !Time
var(15) = 1
ignoreHitPause = 1

[State 1326, Juggle]
type = VarSet
trigger1 = NumTarget && !Time
var(16) = 1
ignoreHitPause = 1

[State 1326, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20
ampl = 5

[State 1326, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Target
[StateDef 1327]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = -1

[State 1327, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1327

[State 1327, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1


;Target End
[StateDef 1328]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0

[State 1328, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1323

[State 1328, NHB]
type = NotHitBy
trigger1 = Time < 15
value = SCA

[State 1328, VelSet]
type = VelSet
trigger1 = Time = 15
x = -3.5
y = -7.5

[State 1328, VelAdd]
type = VelAdd
Trigger1 = Time >= 15
y = 0.5

[State 1328, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 14
ampl = 4
freq = 120

[State 1328, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;---------------------------------------------------------------------------
;Tenma Kuujin Kyaku
[StateDef 1330]
type = A
physics = N
moveType = A
anim = 1330
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 0

[State 642, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 0
channel = 0

[State 642, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 642, VelSet]
type = VelSet
trigger1 = AnimElem = 3 && var(10)!=3
x = 5.5
y = 8.5
[State 642, VelSet]
type = VelSet
trigger1 = AnimElem = 3 && var(10)=3
x = 6.5
y = 9.5

[State 1315, HitDef]
type = HitDef
triggerall = AnimElem = 1
triggerall = !var(38)
;trigger1 = !AIlevel && (command = "holdfwd" || command = "holdback")
trigger1 = !AIlevel && (NumExplod(90000006) || NumExplod(90000004))
trigger2 = AIlevel && ((P2StateNo = [120,155]) || random < 500)
attr = A, ST
hitFlag = MA-
priority = 4, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 1325

[State 642, Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3&& var(10)!=3
forceNoFall = !var(20)
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
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
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6, -4
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 47), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
[State 642, Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3&& var(10)=3
forceNoFall = !var(20)
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0,0
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
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6, -4
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 47), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 642, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;---------------------------------------------------------------------------
;EX Hyakkishu
[StateDef 1350]
type = S
physics = S
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, 0, -500)

[State 1350, Max Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1350, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1350, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1350, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 180

[State 1350, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 4, -73
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1350, Ex AfterImage]
type = AfterImage
triggerall = var(57)
trigger1 = !Time
time = 2
timegap = 1
framegap = 1
length = 8
palcontrast = 128, 112, 0
palmul = 0.65, 0.65, 0.65
trans = add

[State 1350, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
;channel = 1

[State 1350, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,0
channel = 0

[State 1350, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 3

[State 1350, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1350, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1350, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = P2BodyDist X / 35
y = -9.25

[State 1350, Gravity]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = 0.5

[State 1300, ChangeState]
type = ChangeState
trigger1 = !AILevel && var(40)=2
trigger1 = Time > 15
trigger1 = ifelse(var(53) <= 0, power >= 500 && var(20) <= 60, 1)
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
trigger1 = (ifElse(NumExplod(90000200), 1, 0) + ifElse(NumExplod(90000210), 1, 0) + ifElse(NumExplod(90000220), 1, 0) >= 2) || (ifElse(NumExplod(90000205), 1, 0) + ifElse(NumExplod(90000215), 1, 0) + ifElse(NumExplod(90000225), 1, 0) >= 2)
value = 1080

[State 1350, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = Time > 15
;trigger1 = Command = "x" || Command = "y" || Command = "z"
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
value = 1310

[State 1350, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = Time > 15
;trigger1 = Command = "a" || Command = "b" || Command = "c"
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
value = ifelse(var(40)=2, 1330,1315)

[State 1350, ChangeState]
type = ChangeState
triggerall = AILevel && var(40)!=2
triggerall = Time > 15
trigger1 = (P2Dist X = [-40,40]) && random < 500
value = ifelse(random < 500, 1310, 1315)
[State 1350, ChangeState]
type = ChangeState
triggerall = AILevel && var(40)=2
triggerall = Time > 15
trigger1 = (P2Dist X = [-40,40]) && random < 500
value = ifelse(random < 500, 1310, 1330)

[State 1350, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
trigger1 = AnimElemTime(2) > 0
value = 1305

;---------------------------------------------------------------------------
;Ashura Senkuu
;Ashura Senkuu
[StateDef 1400]
type = S
physics = N
moveType = I
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 2
powerAdd = 72 * !var(20)
;faceP2 = 1

;[State 1400, Button Detect]
;type = VarSet
;trigger1 = !Time && !AILevel
;var(10) = ifelse(command = "fdf3p", 0, ifelse(command = "bdb3p", 1, ifelse(command = "fdf3k", 2, 3)))
;
;[State 1400, Button Detect]
;type = VarSet
;trigger1 = !Time && !AILevel && var(40)
;var(10) = ifelse(command = "fdf2p", 0, ifelse(command = "bdb2p", 1, ifelse(command = "fdf2k", 2, 3)))

[State 1400, Button Detect]
type = Null;VarSet
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

[State 1400, Button Detect AI]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifelse(P2BodyDist X >= 120, ifelse(Random < 500, 0, 2), ifelse(Random < 500, 1, 3))

[State 1400, Aura]
type = Explod
trigger1 = !NumExplod(735)
trigger1 = !Time
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

[State 1400, VelSet]
type = VelSet
trigger1 = !Time || AnimElemTime(4) = 0
x = ifelse(!Time = 0, 3.5, -3.5)

[State 1400, NHB]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1400, ChangeState]
type = ChangeState
Trigger1 = !AnimTime
value = 1401


;Teleport
[Statedef 1401]
type = S
movetype = I
physics = N
anim = 1401
ctrl = 0
velset = ifelse(!var(10), 15, ifelse(var(10) = 1, -15, ifelse(var(10) = 2, 10, -10))),0

[State 1401, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
x = ifelse(Vel X > 0, -.32, .32)

[State 1401, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1400, var(40)

[State 1401, Voice]
type = PlaySnd
triggerall = !var(40)
trigger1 = AnimElem = 1
value = 195, 0
channel = 0

[State 1401, NHB]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1401, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 1401,Turn]
type = Turn
trigger1 = P2Dist X < -5

[State -1, Tenshou Kaireki Jin]
type = ChangeState
value = 3800
triggerAll = var(40)=2
triggerAll = !AILevel
;triggerAll = command = "hcb2k" ;"2hcbk"
;HCB
triggerAll = NumExplod(90000518)
;2K
triggerAll = (ifElse(NumExplod(90000230), 1, 0) + ifElse(NumExplod(90000240), 1, 0) + ifElse(NumExplod(90000250), 1, 0) >= 2)
triggerAll = RoundState = 2
trigger1 = ifelse(var(53) <= 0, power >= 3000 && !var(20), power >= 1000)

[State 1401, ChangeState]
type = ChangeState
Trigger1 = (Time = 34 && var(10) = [0,1]) || (Time = 22 && var(10) = [2,3])
Trigger2 = Vel X > 0 && FrontEdgeDist <= 10 && AnimElemTime(1) > 0
Trigger3 = Vel X < 0 && BackEdgeDist <= 10 && AnimElemTime(1) > 0
value = 1402


;End
[Statedef 1402]
type = S
movetype = I
physics = N
anim = 1402 ;+ var(40)
velset = 0,0
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40)=1
value = 1403

[State 1402, End]
type = ChangeState
Trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Zenpou Tenshin
[StateDef 1500]
type = S
physics = N
moveType = I
anim = 1500
ctrl = 0
velSet = 0,0
sprPriority = 2
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1500, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1500, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1500, ifElse(var(10) = 1, 1501, 1502))

[State 1500, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,1
channel = 0

[State 1500, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 110, 0
;channel = 2

[State 1500, Push]
type = PlayerPush
trigger1 = AnimElemTime(2) > 0
value = 0

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 4.4

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 0

[State 1500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Tenma Shurettou
[StateDef 1600]
type = S
physics = S
moveType = A
anim = 1600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1600, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(10) = ifElse(command = "p", 0, 1)

[State 1600, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2StateType != C, 0, 1)

[State 1600, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(!var(10), 1600, 1601)

[State 1600, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,0
channel = 0

[State 1600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 0
;channel = 2

[State 1600, ReversalDef]
type = ReversalDef
trigger1 = !var(10)
trigger1 = !Time
reversal.attr = SA,NA,SA,HA
pausetime = 0,25
hitsound = S3,0
sparkno = -1
p1stateno = 1605

[State 1600, ReversalDef]
type = ReversalDef
trigger1 = var(10)
trigger1 = !Time
reversal.attr = C,NA,SA,HA
pausetime = 0,25
hitsound = S3,0
sparkno = -1
p1stateno = 1605

[State 1600, End]
type = ChangeState
trigger1 = !AnimTime
value = ifelse(Anim = 1600, 0, 11)
ctrl = 1

;---------------------------------------------------------------------------
;Tenma Shurettou Success
[StateDef 1605]
type = A
physics = N
moveType = A
anim = 1605
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 1605, Spark]
type = Helper
trigger1 = !Time
stateno = 8020
ID = 8000
name = "Spark"
postype = p1
pos = 20, ifelse(var(10), -10, -70)
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1605, Voice]
type = PlaySnd
trigger1 = !Time
value = 3500,0
channel = 0

[State 1605, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 3600, 2

[State 1605, Helper]
type = Helper
trigger1 = !Time
ID = 3605
stateno = 3605
postype = p1
pos = 0,0
name = "Fade 1"

[State 1605, Helper]
type = Helper
trigger1 = !Time
ID = 3606
stateno = 3605
postype = p1
pos = 0,0
name = "Fade 2"

[State 1605, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 1605, PosAdd]
type = PosAdd
trigger1 = !Time
x = (P2dist X) -20
y = -180

[State 1605, VelAdd]
type = VelAdd
trigger1 = 1
y = .9

[State 1605, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
ID = 1600
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Miss
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 0,0
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 15), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1605, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1600)
trigger1 = (Target(1600), StateNo = 5000) || (Target(1600), StateNo = 5010)
value = 1610
ID = 1600
ignorehitpause = 1

[State 1605, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1600)
trigger1 = (Target(1600), stateno = 5020)
value = 1611
ID = 1600
ignorehitpause = 1

[State 1605, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1606


;Landing
[StateDef 1606]
type = S
physics = N
moveType = I
velSet = 0,0
anim = 1606

[State 1606, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1606, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1606, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 5100, 1

[State 1606, EnvShake]
type = EnvShake
trigger1 = !Time
time = 12

[State 1606, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[Statedef 1610]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1610, NHB]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1610, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5950)
value = 5950

[State 1610, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time && !SelfAnimExist(5950)
value = 3620

[State 1610, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1610, End]
type = SelfState
trigger1 = Time >= 90
value = ifelse(Alive, 5120, 5150)


;Target Air
[Statedef 1611]
type = A
physics = N
movetype = H
ctrl = 0
velset = GetHitVar(xvel), GetHitVar(yvel)
sprpriority = 1

[State 1611, NHB]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1611, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3621

[State 1611, Accel]
type = gravity
trigger1 = animelemtime(5) < 0

[State 1611, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 1611, VelSet]
type = VelSet
trigger1 = Pos Y >= 0
y = 0

[State 1611, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y >= 0
statetype = L
physics = C

[State 1611, ChangeAnim2]
type = ChangeAnim2
trigger1 = Pos Y >= 0
value = 3621
elem = 5
persistent = 0

[State 1611, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = f7, 2

[State 1611, End]
type = SelfState
trigger1 = AnimElemTime(7) >= 90
value = ifelse(alive, 5120, 5150)

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
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,2
channel = 0

[State 2900, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,2
channel = 1

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 9.3
y = -12

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.667

[State 2900, VelMul]
type = VelMul
trigger1 = AnimElemTime(4) >= 0
trigger1 = Vel X > 0
x = 0.85
persistent = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 || AnimElem = 4
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
guard.velocity = -10.52
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
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 2900, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 52 ;1101

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

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 4
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
guard.velocity = -10.52
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
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -12
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
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
value = 0
ctrl = 1