; ________________________________
;| Sakura Kasugano by DeathScythe |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

;---------------------------------------------------------------------------
;Standing Light Punch
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

[State 200, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 200, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1 && Random < 200
value = 4, ifElse(Random < 500, 10, 11)
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
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
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
ground.velocity = ifElse(var(20), -2.344, -4.689), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.344, -4.689)
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
sparkXY = -10 + 0 * (var(35) := 58), var(36):= -72
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48

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

[State 210, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 210, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 11, 12)
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
ground.velocity = ifElse(var(20), -3.966, -7.933), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.966, -7.933)
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
sparkXY = -10 + 0 * (var(35) := 74), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
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

[State 211, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 211, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 211, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
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
ground.velocity = ifElse(var(20), -3.966, -7.933), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.966, -7.933)
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
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 211, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 211, End]
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
anim = 220
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 220, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 220, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 11, 12)
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
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
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
ground.velocity = ifElse(var(20), -5.525, -11.05), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.525, -11.05)
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = 0.58
fall = ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 89), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 220, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 220
elem = 4
ignoreHitPause = 1

[State 220, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Close Heavy Punch
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

[State 221, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 221, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 221, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

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
ground.velocity = ifElse(var(20), -5.525, -11.05), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.525, -11.05)
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
sparkXY = -10 + 0 * (var(35) := 79), var(36) := -63
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
forceStand = 1

[State 221, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 221, End]
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

[State 230, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 230, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 10, 11)
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
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getPower = 72*!var(20), 36*!var(20)
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
ground.velocity = ifElse(var(20), -2.344, -4.689), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.344, -4.689)
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
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -37
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 230, StateTypeSet: Idle]
type = StateTypeSet
trigger1= AnimElemTime(4) >= 0
moveType = I

[State 230, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Medium Kick
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

[State 240, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 4 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 240, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 4 && Random < 350
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 240, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,4
channel = 1

[State 240, HitDef]
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
ground.velocity = ifElse(var(20), -3.966, -7.933), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.966, -7.933)
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
sparkXY = -10 + 0 * (var(35) := 95), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

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
;Flower Kick
[StateDef 242]
type = S
physics = S
moveType = A
anim = 242
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 242, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 4 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 242, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 4 && Random < 350
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 242, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,4
channel = 1

[State 242, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(8) < 0
x = 2

[State 242, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
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
ground.velocity = ifElse(var(20), -3.966, -7.933), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.966, -7.933)
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
sparkXY = -10 + 0 * (var(35) := 104), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 242, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 242, End]
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

[State 250, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 250, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 250, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4,Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
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
ground.velocity = ifElse(PrevStateNo = 700, -6.46, ifElse(var(20), -5.525, -11.05)), ifElse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.525, -11.05)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 117), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
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

[State 251, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 251, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 251, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 251, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
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
ground.velocity = ifElse(var(20), -5.525, -11.05), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.525, -11.05)
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
forceStand = 1

[State 251, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 251, End]
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

[State 400, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 400, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1 && Random < 200
value = 4, ifElse(Random < 500, 10, 11)
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
ground.velocity = ifElse(var(20), -2.344, -4.689), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.344, -4.689)
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
sparkXY = -10 + 0 * (var(35) := 71), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

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

[State 410, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 410, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 11, 12)
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
ground.velocity = ifElse(var(20), -3.966, -7.933), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.966, -7.933)
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
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -13
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

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

[State 420, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 420, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 11, 12)
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
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.525, -11.05), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.525, -11.05)
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
sparkXY = -10 + 0 * (var(35) := 63), var(36) := -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
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

[State 430, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 430, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1 && Random < 200
value = 4, ifElse(Random < 500, 10, 11)
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
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
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
ground.velocity = ifElse(var(20), -2.344, -4.689), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.344, -4.689)
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
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinadd = -255, -255, -255, 48

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
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

[State 440, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 440, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 11, 12)
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
ground.velocity = ifElse(var(20), -3.966, -7.933), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.966, -7.933)
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
sparkXY = -10 + 0 * (var(35) := 71), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 440, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
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

[State 450, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 450, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 11, 12)
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
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
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
guard.velocity = ifElse(var(20), -5.525, -11.05)
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
sparkXY = -10 + 0 * (var(35) := 98), var(36) := -14
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 450, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(4) >= 0
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

[State 600, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1 && Random < 200
value= 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 600, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1 && Random < 200
value= 4, ifElse(Random < 500, 10, 11)
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
ground.velocity = ifElse(var(20), -2.344, -4.689), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.344, -4.689)
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
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -43
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

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

[State 600, VelAdd]
type = VelAdd
triggerAll = Vel X
trigger1 = Time >= 0
x = ifElse((var(3) = [2,3]), -0.04, -0.027) * ifElse(Vel X < 0, -1, 1)

[State 600, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
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

[State 610, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2 && Random < 350
value= 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 610, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2 && Random < 350
value= 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 610, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
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
ground.velocity = ifElse(var(20), -3.966, -7.933), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.966, -7.933)
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
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 610, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 610
elem = 3
ignoreHitPause = 1

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 610, VelAdd]
type = VelAdd
triggerAll = Vel X
trigger1 = Time >= 0
x = ifElse((var(3) = [2,3]), -0.04, -0.027) * ifElse(Vel X < 0, -1, 1)

[State 610, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
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

[State 620, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = (AnimElem = 2) && Random < 500
value= 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 620, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = (AnimElem = 2) && Random < 500
value= 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 620, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
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
ground.velocity = ifElse(var(20), -5.525, -11.05), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.525, -11.05)
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
sparkXY = -10 + 0 * (var(35) := 44), var(36) := -29
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

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
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 620, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, VelAdd]
type = VelAdd
triggerAll = Vel X
trigger1 = Time >= 0
x = ifElse((var(3) = [2,3]), -0.04, -0.027) * ifElse(Vel X < 0, -1, 1)

[State 620, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 52

;---------------------------------------------------------------------------
;Jumping Light Kick
[StateDef 630]
type = A
physics = N
moveType = A
anim = 630
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 630, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1 && Random < 200
value= 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 630, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1 && Random < 200
value= 4, ifElse(Random < 500, 10, 11)
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
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
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
ground.velocity = ifElse(var(20), -2.344, -4.689), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.344, -4.689)
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
sparkXY = -10 + 0 * (var(35) := 84), var(36) := -46
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

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
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 630, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 630, VelAdd]
type = VelAdd
triggerAll = Vel X
trigger1 = Time >= 0
x = ifElse((var(3) = [2,3]), -0.04, -0.027) * ifElse(Vel X < 0, -1, 1)

[State 630, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 52

;---------------------------------------------------------------------------
;Jumping Medium Kick
[StateDef 640]
type = A
physics = N
moveType = A
anim = 640
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 640, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 1 && Random < 350
value= 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 640, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 1 && Random < 350
value= 4, ifElse(Random < 500, 11, 12)
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
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
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
ground.velocity = ifElse(var(20), -3.966, -7.933), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.966, -7.933)
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
sparkXY = -10 + 0 * (var(35) := 79), var(36) := -33
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

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

[State 640, VelAdd]
type = VelAdd
triggerAll = Vel X
trigger1 = Time >= 0
x = ifElse((var(3) = [2,3]), -0.04, -0.027) * ifElse(Vel X < 0, -1, 1)

[State 640, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 52

;---------------------------------------------------------------------------
;Jumping Heavy Kick
[StateDef 650]
type = A
physics = N
moveType = A
anim = 650
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 650, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 4 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 650, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 4 && Random < 500
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 650, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
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
ground.velocity = ifElse(var(20), -5.525, -11.05), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.525, -11.05)
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
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -19
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 650, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 650, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 650, VelAdd]
type = VelAdd
triggerAll = Vel X
trigger1 = Time >= 0
x = ifElse((var(3) = [2,3]), -0.04, -0.027) * ifElse(Vel X < 0, -1, 1)

[State 650, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
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
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
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
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
numhits = 0
;p1stateno = ifElse(command = "holdfwd", 805, 820)
p1StateNo = ifElse(ifElse(!NumExplod(92828282) && !NumExplod(92468246), command = "holdback", command = "holdfwd"), 805, 820)

[State 800, Voice (Missed) CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 4
value = 800,0
channel = 0

[State 800, Voice (Missed) SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 4
value = 800,10
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
trigger1 = AnimElem = 4

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
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 30, 0

[State 805, TargetBind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger2 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 15, 0

[State 805, TargetBind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 0,0

[State 805, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(5) >= 0
value = 1

[State 805, SprPriority 2]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
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
value = ifElse(Pos Y < 0, 5040, 0)
ctrl = 1

;---------------------------------------------------------------------------
;Sakura Shime (Punch Throw)
[Statedef 810]
type = A
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

[State 810, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 815

[State 810, Timer Start]
type = VarSet
trigger1 = !Time
var(44) = 200

[State 810, Timer End (Round Over)]
type = VarSet
trigger1 = RoundState != 2
var(44) = 0

[State 810, Timer Countdown]
type = VarAdd
trigger1 = HitCount
var(44) = -1

[State 810, Timer]
type = VarAdd
triggerAll = NumTarget && HitCount
trigger1 = Target, command = "x" || Target, command = "y" || Target, command = "z"
trigger2 = Target, command = "a" || Target, command = "b" || Target, command = "c"
trigger3 = Target, command = "up" || Target, command = "down" || Target, command = "back" || Target, command = "fwd"
var(44) = -1

[State 810, Mashing]
type = VarSet
trigger1 = !Time
var(42) = 0

[State 810, Mashing]
type = VarSet
trigger1 = !Time
var(12) = 0

[State 810, Mashing]
type = VarSet
triggerAll = var(42) = 0
trigger1 = !AILevel && (command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z")
trigger2 = !AILevel && (command = "up" || command = "down" || command = "back" || command = "fwd")
trigger3 = AILevel && Random < 800
var(42) = ifElse(AILevel, 3, 1)

[State 810, Mashing Increment]
type  = VarAdd
trigger1 = var(42) = ifElse(AILevel, 3, 1)
var(12) = 1

[State 810, Mashing Decrement]
type = VarAdd
trigger1 = var(42) > 0
var(42) = -1

[State 810, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 810 && !AnimTime
value = 811

[State 810, Anim Skip]
type = ChangeAnim
triggerAll = Anim = 811
triggerAll = var(44) > 0
trigger1 = AnimElemTime(AnimElemNo(0)) >= 0 && AnimElemTime(5) < 0
trigger1 = AnimElemTime(AnimElemNo(0) + 1) >= -var(12)
trigger1 = 1 || var(12) := (var(12) + AnimElemTime(AnimElemNo(0) + 1))
value = 811
elem = AnimElemNo(0) + 1

[State 810, Anim Skip]
type = ChangeAnim
triggerAll = Anim = 811
triggerAll = var(44) > 0
trigger1 = AnimElemTime(5) > 0
trigger1 = AnimElemTime(5) >= (10 - var(12))
trigger1 = 1 || var(12) := (var(12) + 10 - AnimElemTime(5))
value = 811
elem = 1

[State 810, PalFX Flash]
type = PalFX
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 32, 32, 32

[State 810, BindToTarget]
type = BindToTarget
trigger1 = Anim = 810
trigger2 = Anim = 811
trigger2 = AnimElemTime(5) >= 0
pos = -20, 5, Head

[State 810, BindToTarget]
type = BindToTarget
trigger1 = Anim = 811
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(5) < 0
pos = -35, 8, Head

[State 810, Throw]
type = TargetState
triggerAll = Anim = 811
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0
value = 817

[State 810, Throw]
type = TargetState
triggerAll = Anim = 811
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(5) < 0 && Target, StateNo != 816
value = 816

[State 810, Damage]
type = TargetLifeAdd
triggerAll = Anim = 811
trigger1 = NumTarget && AnimElem = 2
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
kill = 1

[State 810, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = Anim = 811
trigger1 = HitCount = 1
trigger1 = NumTarget && AnimElem = 2
value = 36

[State 810, Power]
type = PowerAdd
triggerAll = Anim = 811
trigger1 = HitCount = 1
trigger1 = NumTarget && AnimElem = 2 && !var(20)
value = 72

[State 810, HitAdd]
type = HitAdd
triggerAll = Anim = 811
trigger1 = NumTarget && AnimElem = 2
value = 1

[State 810, Hit Count Increment]
type = VarAdd
triggerAll = Anim = 811
trigger1 = NumTarget && AnimElem = 2
var(13) = 1

[State 810, Juggle Points Increment]
type = VarAdd
triggerAll = Anim = 811
trigger1 = NumTarget && AnimElem = 2
var(15) = 1
ignoreHitPause = 1

[State 810, EnvShake]
type = EnvShake
triggerAll = Anim = 811
trigger1 = NumTarget && AnimElem = 2
time = 14
ampl = 4
freq = 120

[State 810, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = Anim = 811
trigger1 = AnimElem = 2
value = 800,4
channel = 0

[State 810, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = Anim = 811
trigger1 = AnimElem = 2
value = 4,10
channel = 0

[State 810, Hit Sound]
type = PlaySnd
triggerAll = Anim = 811
trigger1 = NumTarget && AnimElem = 2
value = 2,11
channel = 2

[State 810, Hit Spark]
type = Helper
triggerAll = Anim = 811
trigger1 = NumTarget && AnimElem = 2
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = -6 + (Random%6), -2 + (Random%6)
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 810, End]
type = ChangeState
trigger1 = var(44) <= 0
trigger1 = Anim = 811 && !AnimTime
trigger2 = NumTarget
trigger2 = !(Target, Alive)
trigger3 = Time >= 200
value = 811


;Final Hit
[StateDef 811]
type = A
physics = N
moveType = A
anim = 812
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 811, Throw]
type = TargetState
trigger1 = NumTarget && !Time
value = 817

[State 811, BindToTarget]
type = BindToTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
pos = -20, 5, Head

[State 811, PosSet]
type = PosSet
trigger1 = AnimElem = 4
y = 0

[State 811, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = S

[State 811, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 4
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))
kill = 1

[State 811, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 4
value = 1

[State 811, Hit Count Increment]
type = VarAdd
trigger1 = NumTarget && AnimElem = 4
var(13) = 1

[State 811, Juggle Points Increment]
type = VarAdd
trigger1 = NumTarget && AnimElem = 4
var(15) = 1
ignoreHitPause = 1

[State 811, Juggle Flag Set]
type = VarSet
trigger1 = NumTarget && AnimElem = 4
var(16) = 1
ignoreHitPause = 1

[State 811, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 4
value = 818

[State 811, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 4
value = 800,3
channel = 0

[State 811, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 4
value = 4,12
channel = 0

[State 811, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 811, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 4
value = 2,2
channel = 2

[State 811, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 4
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = ceil(-27 * const(size.xscale)), ceil(-65 * const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 811, Turn]
type = Turn
trigger1 = !AnimTime

[State 811, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 811, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[StateDef 815]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 815, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 815

[State 815, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 815, PalFX Flash]
type = PalFX
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 32, 32, 32


;Being Hit
[StateDef 816]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 816, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 816

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 816, PalFX Flash]
type = PalFX
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 32, 32, 32


;Before Hit
[StateDef 817]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 815, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 817, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 817

[State 817, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;Final Hit
[StateDef 818]
type = A
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 818, ChangeAnim]
type = ChangeAnim2
trigger1 = !Time
value = 818

[State 818, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 818, VelSet]
type = VelSet
trigger1 = !AnimTime
x = 2.5

[State 818, EnvShake]
type = EnvShake
trigger1 = !AnimTime
time = 14
ampl = -4
freq = 120

[State 818, End]
type = SelfState
trigger1 = !AnimTime
value = 5100


;---------------------------------------------------------------------------
;Sailor Shoot (Kick Throw)
[Statedef 820]
type = A
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
trigger1 = AnimElemTime(6) < 0
edge = -32,32

[State 820, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 820, TargetFacing]
type = TargetFacing
trigger1 = !Time
value = -1

[State 820, Bind 1]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
pos = ceil(30 * const(size.xscale)), ceil(40 * const(size.yscale)), Mid

[State 820, Bind 5]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(40 * const(size.xscale)), ceil(30 * const(size.yscale)), Mid

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

[State 820, HitSound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 6
value = 2, 5
channel = 3
ignorehitPause = 1

[State 820, HitSpark]
type = Helper
trigger1 = NumTarget && AnimElem = 6
helperType = Normal
stateNo = 8012
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

[State 820, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 6
value = 800,1
channel = 0

[State 820, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 6
value = 191,11 + 10 * (Random < 500)
channel = 0

[State 820, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A

[State 820, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = -3.77
y = -5

[State 820, Gravity]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
y = .58

[State 820, Landing]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 821

[State 820, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1


;Landing
[StateDef 821]
type = S
physics = N
moveType = I
velSet = 0,0
anim = 821

[State 821, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 821, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 821, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 821, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Target
[StateDef 825]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 825, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 825

[State 825, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

;After Throw
[StateDef 826]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -6.7, -5
sprPriority = 2

[State 826, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 826, Gravity]
type = VelAdd
Trigger1 = 1
y = 0.51

[State 826, EnvShake]
type = EnvShake
trigger1 = Pos Y > -Vel Y
time = 14
ampl = 4
freq = 120

[State 826, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = Vel Y > 0 && Pos Y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 826, End]
type = SelfState
trigger1 = Pos Y > -Vel Y
value = 5100

;---------------------------------------------------------------------------
;Air Throw Attempt
[StateDef 850]
type = A
physics = N
moveType = A
anim = 850
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 850, Throw Escape Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 850, Escape]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear, StateNo = [0,899]) && (EnemyNear, StateNo != [100,104]) && (EnemyNear, StateNo != [600,799])
var(19) = 7

[State 850, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 850, HitDef: Throw]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2 && !var(11)
trigger1 = !var(38)
attr = A, NT
hitFlag = AF
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
p1StateNo = 860

[State 850, Voice (Missed) CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 4
value = 800,0
channel = 0

[State 850, Voice (Missed) SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 4
value = 800,10
channel = 0

[State 850, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 1

[State 850, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 850, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 850, VelAdd]
type = VelAdd
triggerAll = Vel X
trigger1 = Time >= 0
x = ifElse((var(3) = [2,3]), -0.04, -0.027) * ifElse(Vel X < 0, -1, 1)

[State 850, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 52


;---------------------------------------------------------------------------
;Air Throw
[Statedef 860]
type = A
physics = N
moveType = A
anim = 820
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 860, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 51
ctrl = 1

[State 860, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 892

[State 860, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 860, Turn]
type = Turn
triggerAll = !Time
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdback"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command = "holdfwd"

[State 860, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 865

[State 860, Width]
type = Width
trigger1 = AnimElemTime(6) < 0
edge = -32,32

[State 860, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 860, TargetFacing]
type = TargetFacing
trigger1 = !Time
value = -1

[State 860, Bind 1]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
pos = ceil(30 * const(size.xscale)), ceil(40 * const(size.yscale)), Mid

[State 860, Bind 2]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(40 * const(size.xscale)), ceil(30 * const(size.yscale)), Mid

[State 860, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 6
value = floor(ifElse(126 * fvar(11) < 7, -7, -126 * fvar(11)))

[State 860, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 6
value = 36

[State 860, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 6 && !var(20)
value = 72

[State 860, HitSound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 6
value = 2, 5
channel = 3
ignorehitPause = 1

[State 860, HitSpark]
type = Helper
trigger1 = NumTarget && AnimElem = 6
helperType = Normal
stateNo = 8012
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

[State 860, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 6
value = 1

[State 860, VarAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 6
var(13) = 1

[State 860, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 6
var(15) = 1
ignoreHitPause = 1

[State 860, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 6
var(16) = 1
ignoreHitPause = 1

[State 860, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 6
value = 826

[State 860, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 6
value = 800,1
channel = 0

[State 860, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 6
value = 191,11 + 10 * (Random < 500)
channel = 0

[State 860, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = -3.77
y = -5

[State 860, Gravity]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
y = .58

[State 860, Landing]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 821

;---------------------------------------------------------------------------
;Target
[StateDef 865]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 865, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 865

[State 865, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

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

[State 890, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2
value = 5000,2
channel = 0

[State 890, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2
value = 5000,12
channel = 0

[State 890, Escape Sound]
type = PlaySnd
trigger1= !Time
value = 760,0

[State 890, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
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

;---------------------------------------------------------------------------
;Throw Escape Mid Air
[StateDef 892]
type = A
physics = N
moveType = I
anim = 892
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 892, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 48, 0

[State 892, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 897

[State 892, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 892, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 892, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 892, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 892, PosFreeze]
type = PosFreeze
trigger1 = Time < 18
value = 1

[State 892, VelSet]
type = VelSet
trigger1 = Time = 18
x = -2
y = -4

[State 892, VelAdd]
type = VelAdd
trigger1 = Time > 18
y = 0.5

[State 892, Voice CvS]
type = PlaySnd
trigger1 = !var(51) || var(51) = 2 && !var(40) || var(51) = 3 && var(40)
trigger1 = AnimElem = 2
value = 5000,2
channel = 0

[State 892, Voice SFA]
type = PlaySnd
trigger1 = var(51) = 1 || var(51) = 2 && var(40) || var(51) = 3 && !var(40)
trigger1 = AnimElem = 2
value = 5000,12
channel = 0

[State 892, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 760,0

[State 892, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
posType = P1
pos = 24,-64
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 892, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y > -Vel Y
value = 52


;Target Escape
[StateDef 897]
type = A
physics = N
moveType = I
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 897, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 152

[State 897, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 18
value = 142

[State 897, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 897, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 897, PosFreeze]
type = PosFreeze
trigger1 = Time < 18
value = 1

[State 897, VelSet]
type = VelSet
trigger1 = Time = 18
x = -2
y = -4

[State 897, VelAdd]
type = VelAdd
trigger1 = Time >= 18
y = 0.5

[State 897, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y > -Vel Y
value = 52