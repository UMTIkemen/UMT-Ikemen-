; ______________________
;| Akuma by DeathScythe |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

;---------------------------------------------------------------------------
;Standing Far Light Punch
[StateDef 200]
type = S
physics = S
moveType = A
anim = 200
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 200
value = 4, ifElse(Random < 500, 0, 3)
channel = 0

[State 200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0
channel = 1

[State 200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.6, -5.2), 0 ;-2.41, -4.49
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.6, -5.2)
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = 0.4
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 59), var(36):= -84
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 200
elem = 3
ignoreHitPause = 1

[State 200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Close Light Punch
[StateDef 201]
type = S
physics = S
moveType = A
anim = 201
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 201, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 200
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 201, Woosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0
channel = 1

[State 201, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.6, -5.2), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.6, -5.2)
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = 0.4
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 34), var(36):=-92
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 201, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 201
elem = 3
ignoreHitPause = 1

[State 201, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Far Medium Punch
[StateDef 210]
type = S
physics = S
moveType = A
anim = 210
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 210, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 210, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 1

[State 210, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 210
elem = 4
ignoreHitPause=1

[State 210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 210, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Close Medium Punch
[StateDef 211]
type = S
physics = S
moveType = A
anim = 211
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 211, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 211, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,1
channel = 1

[State 211, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 211, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 211
elem = 4
ignoreHitPause=1

[State 211, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 211, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Zugai Hasatsu
[StateDef 212]
type = S
physics = S
moveType = A
anim = 212
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 212, Voice]
type = PlaySnd
trigger1 = AnimElem = 3; && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 212, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,1
channel = 1

[State 212, VelSet]
type = VelSet
trigger1 = AnimElem = 5 
x = 6

[State 212, Width]
type = Width
trigger1 = AnimElem = 5
player = 15,0

[State 212, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.66, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.66, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 54), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 212, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -43
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 212, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 212, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Zugai Hasatsu (Cancel)
[StateDef 213]
type = S
physics = S
moveType = A
anim = 213
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 213, Voice]
type = PlaySnd
trigger1 = AnimElem = 3; && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 213, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,1
channel = 1

[State 213, VelSet]
type = VelSet
trigger1 = AnimElem = 3 
x = 3.5

[State 213, Width]
type = Width
trigger1 = AnimElem = 5
player = 15,0

[State 213, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.66, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.66, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 213, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 213
elem = 7
ignoreHitPause=1

[State 213, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 213, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Far Heavy Punch
[StateDef 220]
type = S
physics = S
moveType = A
anim = 220 + (5 * var(40)=1)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 220, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 220, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(PrevStateNo = 215, 70, 91) < 7, 7, fvar(11) * ifElse(PrevStateNo = 215, 70, 91))), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(PrevStateNo = 700, -6.46, ifElse(var(20), -4.86, -10.52)), ifelse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = 0.58
fall = ifelse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 220, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 220
elem = 5
ignoreHitPause = 1

[State 220, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
movetype = I

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Close Heavy Punc
[StateDef 221]
type = S
physics = S
moveType = A
anim = 221
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40)=2
value = 222

[State 221, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 221, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 1420, Spark XY]
type = Null
trigger1 = var(40)!=2
trigger1 = var(35) := 48 || var(36) := -84
trigger2 = var(40)=2
trigger2 = var(35) := 66 || var(36) := -58

[State 221, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.77, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.77, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
forceStand = 1

[State 221, ChangeAnimElem]
type = ChangeAnim
triggerall=var(40)!=2
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 221
elem = 4
ignoreHitPause = 1
[State 221, ChangeAnimElem]
type = ChangeAnim
triggerall=var(40)=2
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 222
elem = 5
ignoreHitPause = 1

[State 221, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 221, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Kikoku Tsuki
[StateDef 222]
type = S
physics = S
moveType = A
anim = 225
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 222, Voice]
type = PlaySnd
trigger1 = AnimElem = 3; && Random < 500
value = 4, ifElse(Random < 750, 2, 4)
channel = 0

[State 222, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 222, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
ground.velocity = ifElse(var(20), -5.77, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.77, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
forceStand = 1

[State 222, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 225
elem = 5
ignoreHitPause = 1

[State 222, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
movetype = I

[State 222, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Light Kick
[StateDef 230]
type = S
physics = S
moveType = A
anim = 230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 230, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 0, 3)
channel = 0

[State 230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 230, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = 72*!var(20), 36*!var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2*var(9)
ground.slideTime = 12 + 2*var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.6, -5.2), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.6, -5.2)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -33
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 230, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 230
elem = 4
ignoreHitPause = 1

[State 230, StateTypeSet: Idle]
type = StateTypeSet
trigger1= AnimElemTime(5) >= 0
moveType = I

[State 230, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Far Medium Kick
[StateDef 240]
type = S
physics = S
moveType = A
anim = 240
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40)=2
value = 242

[State 240, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 240, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 1420, Spark XY]
type = Null
trigger1 = var(40)!=2
trigger1 = var(35) := 36 || var(36) := -100
trigger2 = var(40)=2
trigger2 = var(35) := 66 || var(36) := -57

[State 240, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 240, ChangeAnim]
type = ChangeAnim
triggerall=var(40)!=2
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 240
elem = 4
ignoreHitPause = 1
[State 240, ChangeAnim]
type = ChangeAnim
triggerall=var(40)=2
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 242
elem = 4
ignoreHitPause = 1

[State 240, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 240, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Close Medium Kick
[StateDef 241]
type = S
physics = S
moveType = A
anim = 241
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 241, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 241, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 241, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.05, -9.03), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.05, -9.03)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 241, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 241
elem = 4
ignoreHitPause = 1

[State 241, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 241, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Far Heavy Kick
[StateDef 250]
type = S
physics = S
moveType = A
anim = 250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40)=2
value = 255

[State 250, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3 || animelem=10 && var(40)=2
value = 1,5
channel = 1

[State 255, Width]
type = Width
trigger1 = var(40)=2
trigger1 = AnimElemTime(12) <= 0
player = 10,0

[State 255, PosAdd]
type = PosAdd
trigger1 = var(40)=2
trigger1 = AnimElem=2 || AnimElem=3
x = 5

[State 255, PosAdd]
type = PosAdd
trigger1 = var(40)=2
trigger1 = AnimElem=9 || AnimElem=10 || AnimElem=11
x = 10

[State 250, HitDef]
type = HitDef
triggerall = var(40)!=2
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4,Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.86, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 69), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 255, HitDef]
type = HitDef
triggerall = var(40)=2
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
priority = 4,Hit   ;Hit,Miss,Dodge
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
ID = 200
getpower = ifElse(!var(13), 75, 50)*!var(20), 30 * !var(20)
givepower = 15, 15
pausetime = 8,12
guard.pausetime = 10,12
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -105
hitsound = s2,5
guardsound = s130, 0
air.animType = Back
fall.animType = Back
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 18 + 4*var(9)
ground.hittime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = -2.5
guard.velocity = -2.5
air.velocity = -5.5,-6.5
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .58
fall = 0
fall.recover = 1
fall.recovertime = 120
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forcestand = 1

[State 255, HitDef 2]
type = HitDef
triggerall = var(40)=2
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 11
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
priority = 4,Hit   ;Hit,Miss,Dodge
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
ID = 200
getpower = ifElse(!var(13), 75, 50)*!var(20), 30 * !var(20)
givepower = 15, 15
pausetime = 12,12
guard.pausetime = 12,12
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -104
hitsound = s2,5
guardsound = s130, 0
air.animType = Back
fall.animType = Back
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 18 + 4*var(9)
ground.hittime = 18 + 4*var(9)
guard.hittime = 12
air.hittime = 120
ground.velocity = -10.5
guard.velocity = -10.5
air.velocity = -5.5,-6.5
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .58
fall = 0
fall.recover = 1
fall.recovertime = 120
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forcestand = 1

[State 250, ChangeAnim]
type = ChangeAnim
trigger1 = var(40)!=2
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 250
elem = 5
ignoreHitPause = 1

[State 250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = var(40)!=2
trigger1 = AnimElemTime(6) >= 0
moveType = I
[State 255, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = var(40)=2
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Close Heavy Kick
[StateDef 251]
type = S
physics = S
moveType = A
anim = 251
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 251, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 251, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 251, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 216, 72)*!var(20), 36*!var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -6, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6, -10)
guard.cornerPush.velOff = 0
air.velocity = -5.5, -6.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forceStand = 1

[State 251, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 440 < 7, 7, fvar(11) * 40)), 0
getPower = ifElse(!var(13), 216, 72)*!var(20), 36*!var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -6, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6, -10)
guard.cornerPush.velOff = 0
air.velocity = -5.5, -6.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -83
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forceStand = 1

[State 251, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 251, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Twin Demon(unique attack)
; CNS difficulty: easy
[Statedef 255]
type    = S
movetype= A
physics = S
poweradd= 18 * !var(20)
ctrl = 0
velset = 0,0
anim = 255
sprpriority = 2
facep2=1


[State 255, Voice]
type=playsnd
trigger1= animelem=2 && random<500
value= 0, ifelse(random<500, 1, 2)
channel=0

[State 255, Swing Snd]
type=playsnd
trigger1= animelem=3 || animelem=10
value=1,5
channel=1

[State 255, Width]
type = Width
trigger1 = AnimElemTime(12) <= 0
player = 10,0

[State 255, PosAdd]
type = PosAdd
trigger1 = AnimElem=2 || AnimElem=3
x = 5

[State 255, PosAdd]
type = PosAdd
trigger1 = AnimElem=9 || AnimElem=10 || AnimElem=11
x = 14

[State 255, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
priority = 4,Hit   ;Hit,Miss,Dodge
damage = ceil(ifElse(fvar(11) * 49 < 8, 8, fvar(11) * 49)), 0
ID = 200
getpower = ifElse(!var(13), 75, 50)*!var(20), 30 * !var(20)
givepower = 15, 15
pausetime = 8,12
guard.pausetime = 10,12
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -105
hitsound = s2,5
guardsound = s130, 0
air.animType = Back
fall.animType = Back
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 18 + 4*var(9)
ground.hittime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = -2.5
guard.velocity = -2.5
air.velocity = -5.5,-6.5
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .58
fall = 0
fall.recover = 1
fall.recovertime = 120
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forcestand = 1

[State 255, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 11
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
priority = 4,Hit   ;Hit,Miss,Dodge
damage = ceil(ifElse(fvar(11) * 35 < 8, 8, fvar(11) * 35)), 0
ID = 200
getpower = ifElse(!var(13), 75, 50)*!var(20), 30 * !var(20)
givepower = 15, 15
pausetime = 12,12
guard.pausetime = 12,12
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -104
hitsound = s2,5
guardsound = s130, 0
air.animType = Back
fall.animType = Back
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 18 + 4*var(9)
ground.hittime = 20 + 4*var(9)
guard.hittime = 12
air.hittime = 120
ground.velocity = -5.5
guard.velocity = -10.5
air.velocity = -5.5,-6.5
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .58
fall = 0
fall.recover = 1
fall.recovertime = 120
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forcestand = 1


[State -2, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && var(13)
trigger1 = (EnemyNear, MoveType != H) && (EnemyNear, StateNo != 5300)
var(13) = 0
ignoreHitPause = 1

[State -2, Hit Count Reset]
type = VarSet
trigger1 = stateno != [200, 499] ; Outside of attack states
trigger2 = p2stateno != [5000, 5999] ; Opponent is not in a hit state
var(13) = 0
fvar(11) = 100

[State 255, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 255, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Crouching Light Punch
[StateDef 400]
type = C
physics = C
moveType = A
anim = 400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 400, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 200
value = 4, ifElse(Random < 500, 0, 3)
channel = 0

[State 400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0
channel = 1

[State 400, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.6, -5.2), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.6, -5.2)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 400, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 400
elem = 3
ignoreHitPause = 1

[State 400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 400, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Medium Punch
[StateDef 410]
type = C
physics = C
moveType = A
anim = 410
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 410, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 410, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 1

[State 410, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 410, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 410
elem = 4
ignoreHitPause = 1

[State 410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 410, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Heavy Punch
[StateDef 420]
type = C
physics = C
moveType = A
anim = 420
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40)=2
value = 421

[State 420, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 420, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 420, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.86, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
forceStand = 1

[State 420, ChangeAnimElem]
type = ChangeAnim
triggerall=var(40)!=2
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 420
elem = 4
ignoreHitPause = 1
[State 420, ChangeAnimElem]
type = ChangeAnim
triggerall=var(40)=2
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 421 
elem = 4
ignoreHitPause = 1

[State 420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 420, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Light Kick
[StateDef 430]
type = C
physics = C
moveType = A
anim = 430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 430, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 200
value = 4, ifElse(Random < 500, 0, 3)
channel = 0

[State 430, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,3
channel = 1

[State 430, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getPower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.6, -5.2), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.6, -5.2)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinadd= -255, -255, -255, 48

[State 430, ChangeAnimElem]
type  = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 430
elem = 3
ignoreHitPause = 1

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 430, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Medium Kick
[StateDef 440]
type = C
physics = C
moveType = A
anim = 440
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 440, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 440, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 440, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13),144,72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -6
palFX.time = 12*var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 440, ChangeAnimElem]
type  = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 440
elem = 4
ignoreHitPause = 1

[State 440, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 440, End]
type = Changestate
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Heavy Kick
[StateDef 450]
type = C
physics = C
moveType = A
anim = 450
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 450, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 450, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 0
getpower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1, -6.25
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -1, -8.24
air.cornerPush.velOff = 0
yAccel = 0.677
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -8
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 450, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(5) >= 0
moveType = I

[State 450, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Jumping Light Punch
[StateDef 600]
type = A
physics = N
moveType = A
anim = 600
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 600, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 200
value= 4, ifElse(Random < 500, 0, 3)
channel = 0

[State 600, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0
channel = 1

[State 600, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 600, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 600
elem = 3
ignoreHitPause = 1

[State 600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 600, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 600, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;---------------------------------------------------------------------------
;Jumping Medium Punch
[StateDef 610]
type = A
physics  = N
moveType = A
anim = 610
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 610, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value= 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 610, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,1
channel = 1

[State 610, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 610, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 610
elem = 5
ignoreHitPause = 1

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 610, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;---------------------------------------------------------------------------
;Jumping Heavy Punch
[StateDef 620]
type = A
physics = N
moveType = A
anim = 620
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 620, Voice]
type = PlaySnd
trigger1 = (AnimElem = 3) && Random < 500
value= 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 620, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 620, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animtype = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 620, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 620
elem = 5
ignoreHitPause = 1

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 620, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;---------------------------------------------------------------------------
;Neutral Jumping Light Kick
[StateDef 630]
type = A
physics = N
moveType = A
anim = 630
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 630, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 200
value= 4, ifElse(Random < 500, 0, 3)
channel = 0

[State 630, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,3
channel = 1

[State 630, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 630, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 630
elem = 3
ignoreHitPause = 1

[State 630, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 630, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 630, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;---------------------------------------------------------------------------
;Angled Jumping Light Kick
[StateDef 631]
type = A
physics = N
moveType = A
anim = 631
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 631, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 200
value= 4, ifElse(Random < 500, 0, 3)
channel = 0

[State 631, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,3
channel = 1

[State 631, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 631, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 631
elem = 3
ignoreHitPause = 1

[State 631, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 631, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 631, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;---------------------------------------------------------------------------
;Neutral Jumping Medium Kick
[StateDef 640]
type = A
physics = N
moveType = A
anim = 640
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 640, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 350
value= 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 640, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,4
channel = 1

[State 640, Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 640, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 640
elem = 3
ignoreHitPause = 1

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 640, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 640, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;---------------------------------------------------------------------------
;Angled Jumping Medium Kick
[StateDef 641]
type = A
physics = N
moveType = A
anim = 641
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 641, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 641, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 641, Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 641, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 641
elem = 4
ignoreHitPause = 1

[State 641, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 641, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 641, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;---------------------------------------------------------------------------
;Tenma Kuujin Kyaku
[StateDef 642]
type = A
physics = N
moveType = A
anim = 642
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)

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
trigger1 = AnimElem = 3
x = 5.5
y = 8.5

[State 642, Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
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
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 47), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 642, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;---------------------------------------------------------------------------
;Neutral Jumping Heavy Kick
[StateDef 650]
type = A
physics = N
moveType = A
anim = 650
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 650, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 650, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 650, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 650, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 650, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 650, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;---------------------------------------------------------------------------
;Angled Jumping Heavy Kick
[StateDef 651]
type = A
physics = N
moveType = A
anim = 651
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 651, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 4)
channel = 0

[State 651, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 651, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 651, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 651
elem = 4
ignoreHitPause = 1

[State 651, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 651, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 651, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;---------------------------------------------------------------------------
;Throw Attempt
[StateDef 800]
type = S
physics = S
movetype = A
anim = 800
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 800, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = (command = "kk")

[State 800, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = (Random < 500)

[State 800, Tech Hit Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 800, Tech Hit]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType != A
trigger1 = (EnemyNear, StateNo = [0,999]) && (EnemyNear, StateNo != [100,119]) && (EnemyNear, StateNo != [200,799])
var(19) = 7

[State 800, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 800, HitDef: PP Throw]
type = HitDef
trigger1 = AnimElem = 2
trigger1 = !var(38)
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
;p1StateNo = ifElse(command = "holdback", 810, 805)
p1StateNo = ifElse(ifElse(!NumExplod(92828282) && !NumExplod(92468246), command = "holdback", command = "holdfwd"), 810, 805)

[State 800, HitDef: KK Throw]
type = HitDef
trigger1 = AnimElem = 2 && var(10)
trigger1 = !var(38)
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numhits = 0
;p1stateno = ifElse(command = "holdfwd", 805, 820)
p1StateNo = ifElse(ifElse(!NumExplod(92828282) && !NumExplod(92468246), command = "holdback", command = "holdfwd"), 820, 805)

[State 800, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800,0
channel = 0

[State 800, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 1

[State 800, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 800, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw Switching Sides
[StateDef 805]
type = S
moveType = A
physics = S
anim = 805
ctrl = 0
sprPriority = 0

[State 805, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 806

[State 805, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 805, Width]
type = Width
trigger1 = 1
edge = 24,24
ignoreHitPause = 1

[State 805, Turn]
type = Turn
trigger1 = AnimElem = 3

[State 805, Facing]
type = TargetFacing
trigger1 = 1
value = -1

[State 805, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback") && Target, command != "holdup" && Target, command != "holddown"
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 805, Tech Hit Countdown]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 805, TargetBind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(4) >= 0
pos = 35,0

[State 805, TargetBind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
pos = 11,0

[State 805, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(4) >= 0
value = 1

[State 805, SprPriority -1]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4)< 0
value = -1

[State 805, End]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

[State 805, End]
type = ChangeState
trigger1 = !AnimTime
value = ifElse(var(10), 820, 810)

;---------------------------------------------------------------------------
;Throw Switching Sides (Target)
[StateDef 806]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 806, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 806, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 806

[State 806, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 806, SelfState]
type = SelfState
trigger1 = Time >= 60
value = ifElse(pos y < 0, 5040, 0)
ctrl = 1

;---------------------------------------------------------------------------
;Seoi Nage
[Statedef 810]
type = S
physics = N
moveType = A
anim = 810
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 810, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 810, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 815

[State 810, Width]
type = Width
trigger1 = AnimElemTime(5) < 0
edge = 24,24
ignoreHitPause = 1

[State 810, Width]
type = Width
trigger1 = AnimElemTime(5) > 0
edge = 45,45
ignoreHitPause = 1

[State 810, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
edge = 15,75
ignoreHitPause = 1

[State 810, TargetFacing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 810, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 810, TargetBind 0]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 35,0

[State 810, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 27,-64

[State 810, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 7,-78

[State 810, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = -50,-88

[State 810, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = -72,-55

[State 810, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElem = 6
pos = -86,-38

[State 810, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 6
value = floor(ifElse(139 * fvar(11) < 7, -7, -139 * fvar(11)))

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 6
value = 36

[State 810, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 6 && !var(20)
value = 72

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 6
value = 1

[State 810, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 6
var(13) = 1

[State 810, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 6
var(15) = 1
ignoreHitPause = 1

[State 810, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 6
var(16) = 1
ignoreHitPause = 1

[State 810, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 6
value = 816

[State 810, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,0
channel = 0

[State 810, Woosh Sound 1]
type = PlaySnd
trigger1= AnimElem = 4
value = 1,2
channel = 1

[State 810, Turn]
type = Turn
trigger1 = !AnimTime

[State 810, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Target
[StateDef 815]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 811

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
moveCamera = 1,0
ignoreHitPause = 1

;After Throw
[StateDef 816]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 6, -6
sprPriority = 2

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 816, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5

[State 816, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 14
ampl = 4
freq = 120

[State 816, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 816, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;---------------------------------------------------------------------------
;Tomoe Nage
[Statedef 820]
type = S
physics = N
moveType = A
anim = 820
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 820, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 820, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 820, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 820, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 825

[State 820, Width]
type = Width
trigger1 = AnimElemTime(4) > 0
edge = 45,45
ignoreHitPause = 1

[State 820, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
edge = 10,70
ignoreHitPause = 1

[State 820, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 820, TargetFacing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 805, TargetBind 0]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 35,0

[State 820, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 40,-59

[State 820, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 27,-69

[State 820, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = -14,-60

[State 820, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = -88,-74

[State 820, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElem = 6
pos = -98,-42

[State 820, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 6
value = floor(ifElse(126 * fvar(11) < 7, -7, -126 * fvar(11)))

[State 820, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 6
value = 36

[State 820, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 6 && !var(20)
value = 72

[State 820, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 6
value = 1

[State 820, VarAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 6
var(13) = 1

[State 820, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 6
var(15) = 1
ignoreHitPause = 1

[State 820, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 6
var(16) = 1
ignoreHitPause = 1

[State 820, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 6
value = 826

[State 820, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,2
channel = 0

[State 820, Woosh Sound 1]
type = PlaySnd
trigger1= AnimElem = 4
value = 1,5
channel = 1

[State 820, Turn]
type = Turn
trigger1 = !AnimTime

[State 820, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Target
[StateDef 825]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 825, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 821

[State 825, ScreenBound]
type = Null;ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

;After Throw
[StateDef 826]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 5.5, -6.5
sprPriority = 2

[State 826, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 826, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5

[State 826, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 14
ampl = 4
freq = 120

[State 826, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 826, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;---------------------------------------------------------------------------
;Throw Escaped
[StateDef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 890, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 0,0

[State 890, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 895

[State 890, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 890, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 890, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 890, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0
value = 1

[State 890, SprPriority -1]
type = SprPriority
trigger1 = AnimElemTime(2) <= 0
value = -1

[State 890, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 890, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 890, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5000,2
channel = 0

[State 890, Escape Sound]
type = PlaySnd
trigger1= !Time
value = 760,0

[State 890, Throw Escape FX]
type = Helper
trigger1 = !Time
stateNo = 8000
ID = 8000
name = "Spark"
PosType = P1
pos = 0, -68
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 890, End]
type = ChangeState
trigger1 = Time >= 27
value = 0
ctrl = 1

;Target Escape
[StateDef 895]
type = S
physics = N
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time
value = ifElse(SelfAnimExist(5940), 5940, 130)

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && SelfAnimExist(5940)
value = 5940

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time && !SelfAnimExist(5945) && !SelfAnimExist(5940) && SelfAnimExist(5910)
value = 5910

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 20 && Anim = 130
value = 140

[State 895, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 895, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 895, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 895, End]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1