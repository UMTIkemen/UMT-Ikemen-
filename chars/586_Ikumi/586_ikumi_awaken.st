;======================================================================
;======================================================================
; Awaken states file for "Ikumi Amasawa"
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Basic Move 
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Stand Light Attack

[Statedef 60200]
type = S
movetype = A
physics = S
anim = 20200
ctrl = 0
poweradd = 20

[State 60200, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 60200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60200, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 60200, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 30
ignorehitpause = 1

[State 60200, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0
channel = 1
ignorehitpause = 1

[State 60200, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 3
attr = S,NA
hitflag = MAF
guardflag = M
animtype = light
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*20),0
getpower = 25,5
givepower = 8,3
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10200
guard.sparkno = S10270
sparkxy = -30+random%20,-85+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 9
air.hittime = 10
guard.ctrltime = 9
airguard.ctrltime = 9
ground.velocity = (2.0-fvar(0))*-5,0
guard.velocity = -5
air.velocity = -2.75,ifelse(EnemyNear,Vel Y <= 0,(-5.5+EnemyNear,Vel Y*0.25),-2.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-5.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = -3.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Stand Medium Attack(Near)

[Statedef 60210]
type = S
movetype = A
physics = S
anim = 20210
ctrl = 0
poweradd = 35

[State 60210, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 60210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60210, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 60210, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 60210, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 60210, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,NA
hitflag = MAF
guardflag = M
animtype = Medium
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*39),0
getpower = 35,7
givepower = 14,7
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10230
guard.sparkno = S10270
sparkxy = -30+random%20,-65+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = (2.0-fvar(0))*-6,0
guard.velocity = -5
air.velocity = -2.5,ifelse(EnemyNear,Vel Y <= 0,(-4.55+EnemyNear,Vel Y*0.25),-4.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-3.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = -3.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Stand Medium Attack(Far)

[Statedef 60220]
type = S
movetype = A
physics = N
anim = 20220
ctrl = 0
velset = 0,0
poweradd = 35

[State 60220, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 60220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60220, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.075
ignorehitpause = 1

[State 60220, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 60220, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 60220, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*41),0
getpower = 35,7
givepower = 14,7
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10230
guard.sparkno = S10270
sparkxy = -30+random%20,-65+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = (2.0-fvar(0))*-6,0
guard.velocity = -5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-2.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-7.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = -3.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Stand Strong Attack

[Statedef 60230]
type = S
movetype = A
physics = S
anim = 20230
ctrl = 0
poweradd = 50

[State 60230, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 60230, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60230, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60230, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.08
ignorehitpause = 1

[State 60230, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 60230, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(3) > 0
trigger1 = AnimElemTime(6) < 0
x = 3
ignorehitpause = 0

[State 60230, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 60230, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,NA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*58),0
getpower = 50,25
givepower = 25,10
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10220
guard.sparkno = S10270
sparkxy = -30+random%20,-60+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-6.5,0
guard.velocity = -6.5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-5.5+EnemyNear,Vel Y*0.25),4.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-9.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = -4.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60230, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = P2StateType = A
trigger1 = MoveHit
value = 45000
ignorehitpause = 1

[State 60230, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Dash Stand Light Attack

[Statedef 60250]
type = S
movetype = A
physics = N
anim = 20250
ctrl = 0
poweradd = 20

[State 60250, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 60250, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60250, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60250, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 60250, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 30
ignorehitpause = 1

[State 60250, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0
channel = 1
ignorehitpause = 1

[State 60250, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = AnimTime*(-1)
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
TimeGap = 2
FrameGap = 1
Trans = Add1
length = 4

[State 60250, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9

[State 60250, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 3
attr = S,NA
hitflag = MAF
guardflag = M
animtype = light
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*20),0
getpower = 25,5
givepower = 8,3
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10200
guard.sparkno = S10270
sparkxy = -30+random%20,-75+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 9
air.hittime = 10
guard.ctrltime = 10
airguard.ctrltime = 10
ground.velocity = (2.0-fvar(0))*-5,0
guard.velocity = -5
air.velocity = -2.5,ifelse(EnemyNear,Vel Y <= 0,(-5.5+EnemyNear,Vel Y*0.25),-3.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-3.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = -3.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60250, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Dash Stand Medium Attack

[Statedef 60260]
type = S
movetype = A
physics = N
anim = 20260
ctrl = 0
poweradd = 35

[State 60260, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 60260, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60260, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60260, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 60260, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 60260, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9

[State 60260, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 60260, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = AnimTime*(-1)
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
TimeGap = 2
FrameGap = 1
Trans = Add1
length = 4

[State 60260, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 5
attr = S,NA
hitflag = MAF
guardflag = M
animtype = Medium
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*43),0
getpower = 35,7
givepower = 14,7
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10230
guard.sparkno = S10270
sparkxy = -30+random%20,-65+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = (2.0-fvar(0))*-2.0,-7.0
guard.velocity = -5
air.velocity = -2.5,ifelse(EnemyNear,Vel Y <= 0,(-3.5+EnemyNear,Vel Y*0.25),-3.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-3.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = -3.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60260, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Dash Stand Strong Attack

[Statedef 60270]
type = S
movetype = A
physics = N
anim = 20270
ctrl = 0
poweradd = 50

[State 60270, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 60270, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60270, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60270, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.15
ignorehitpause = 1

[State 60270, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 60270, VelMul]
type = VelMul
trigger1 = Vel X > 0
trigger1 = AnimElemTime(2) < 5
trigger1 = Time % 2 = 0
x = 0.9

[State 60270, VelMul]
type = VelMul
trigger1 = Vel X > 0
trigger1 = AnimElemTime(2) >= 5
x = 0.8

[State 60270, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 60270, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = AnimTime*(-1)
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
TimeGap = 2
FrameGap = 1
Trans = Add1
length = 4

[State 60270, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,NA
hitflag = MAF
guardflag = H
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = floor(fvar(0)*60),0
getpower = 50,25
givepower = 20,10
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10220
guard.sparkno = S10270
sparkxy = -30+random%20,-60+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-6.5,0
guard.velocity = -6.5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-8.5+EnemyNear,Vel Y*0.25),-8.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-9.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -7.0
guard.cornerpush.veloff = -7.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60270, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Crouch Light Attack

[Statedef 60300]
type = C
movetype = A
physics = C
anim = 20300
ctrl = 0
poweradd = 20

[State 60300, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 60300, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60300, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60300, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 60300, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 60300, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0
channel = 1
ignorehitpause = 1

[State 60300, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 3
attr = C,NA
hitflag = MAF
guardflag = L
animtype = light
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = floor(fvar(0)*18),0
getpower = 25,5
givepower = 8,3
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10200
guard.sparkno = S10270
sparkxy = -30+random%20,-20+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 9
guard.hittime = 8
air.hittime = 9
guard.ctrltime = 10
airguard.ctrltime = 10
ground.velocity = (2.0-fvar(0))*-4.25,0
guard.velocity = -4.25
air.velocity = -2.5,ifelse(EnemyNear,Vel Y <= 0,(-3.75+EnemyNear,Vel Y*0.25),-2.75)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-4.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -4.4
guard.cornerpush.veloff = -4.4
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Crouch Medium Attack

[Statedef 60310]
type = C
movetype = A
physics = C
anim = 20310
ctrl = 0
poweradd = 35

[State 60310, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 60310, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60310, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60310, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.075
ignorehitpause = 1

[State 60310, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 60310, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 60310, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = C,NA
hitflag = MAF
guardflag = M
animtype = Medium
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = floor(fvar(0)*40),0
getpower = 35,7
givepower = 14,7
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10230
guard.sparkno = S10270
sparkxy = -30+random%20,-40+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = (2.0-fvar(0))*-6,0
guard.velocity = -6
air.velocity = -2.5,ifelse(EnemyNear,Vel Y <= 0,(-3.75+EnemyNear,Vel Y*0.25),-2.75)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-7.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -4.4
guard.cornerpush.veloff = -4.4
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Crouch Strong Attack

[Statedef 60320]
type = C
movetype = A
physics = N
anim = 20320
ctrl = 0
velset = 0,0
poweradd = 50

[State 60320, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 60320, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60320, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60320, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.08
ignorehitpause = 1

[State 60320, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 60320, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 60320, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = 4.5

[State 60320, VelMul]
type = VelMul
trigger1 = AnimElemTime(10) >= 0
x = 0.9

[State 60320, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = C,NA
hitflag = MAF
guardflag = L
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = floor(fvar(0)*58),0
getpower = 50,25
givepower = 25,15
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10220
guard.sparkno = S10270
sparkxy = -30+random%20,-20+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-4.0,-3.5
guard.velocity = -6.5
air.velocity = -4.0,-3.5
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.65

[State 60320, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Crouch Light Attack

[Statedef 60350]
type = C
movetype = A
physics = N
anim = 20350
ctrl = 0
velset = Vel X, 0
poweradd = 20

[State 60350, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 60350, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60350, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60350, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 60350, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 30
ignorehitpause = 1

[State 60350, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0
channel = 1
ignorehitpause = 1

[State 60350, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9

[State 60350, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = AnimTime*(-1)
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
TimeGap = 2
FrameGap = 1
Trans = Add1
length = 4

[State 60350, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 3
attr = C,NA
hitflag = MAF
guardflag = L
animtype = light
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = floor(fvar(0)*18),0
getpower = 25,5
givepower = 8,3
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10200
guard.sparkno = S10270
sparkxy = -30+random%20,-20+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 9
guard.hittime = 8
air.hittime = 9
guard.ctrltime = 10
airguard.ctrltime = 10
ground.velocity = (2.0-fvar(0))*-4.25,0
guard.velocity = -4.25
air.velocity = -2.5,ifelse(EnemyNear,Vel Y <= 0,(-3.75+EnemyNear,Vel Y*0.25),-2.75)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-4.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -4.4
guard.cornerpush.veloff = -4.4
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60350, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Dash Crouch Medium Attack

[Statedef 60360]
type = C
movetype = A
physics = N
anim = 20360
ctrl = 0
velset = Vel X, 0
poweradd = 35

[State 60360, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 60360, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60360, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60360, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.06
ignorehitpause = 1

[State 60360, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 60360, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 60360, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9

[State 60360, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = AnimTime*(-1)
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
TimeGap = 2
FrameGap = 1
Trans = Add1
length = 4

[State 60360, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = C,NA
hitflag = MAF
guardflag = M
animtype = Medium
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
damage = floor(fvar(0)*40),0
getpower = 35,7
givepower = 14,7
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10230
guard.sparkno = S10270
sparkxy = -30+random%20,-20+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = (2.0-fvar(0))*-6,0
guard.velocity = -6
air.velocity = -2.5,ifelse(EnemyNear,Vel Y <= 0,(-3.75+EnemyNear,Vel Y*0.25),-2.75)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-9.0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -4.4
guard.cornerpush.veloff = -4.4
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60360, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Dash Stand Strong Attack

[Statedef 60370]
type = S
movetype = A
physics = N
anim = 20370
ctrl = 0
velset = 4,0
poweradd = 50

[State 60370, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 60370, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60370, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60370, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 60370, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 60370, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(1) = 0
physics = N
statetype = A
ignorehitpause = 1

[State 60370, VelSet]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = 3.25
y = -5.4
persistent = 0

[State 60370, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = 0.36

[State 60370, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 60370, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 50
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
TimeGap = 2
FrameGap = 1
Trans = Add1
length = 4

[State 60370, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*62),0
getpower = 50,25
givepower = 25,15
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10220
guard.sparkno = S10270
sparkxy = -30+random%20,-35+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-2.0,-7.0
guard.velocity = -5
air.velocity = -2.0,-7.0
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.35
p2facing = 1

[State 60370, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(4) >= 1
trigger1 = Pos Y >= 0
value = 371

;----------------------------------------------------------------------
; Dash Stand Strong Attack

[Statedef 60371]
type = S
movetype = A
physics = S
anim = 20371
ctrl = 0
velset = 0,0

[State 60371, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 60371, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60371, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60371, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0
ignorehitpause = 1

[State 60371, AfterImageTime]
type = AfterImageTime
trigger1 = Time = 0
time = AnimTime*(-1)
ignorehitpause = 1

[State 60371, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,1
channel = 3
ignorehitpause = 1

[State 60371, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Ariel Light Attack

[Statedef 60400]
type = A
movetype = A
physics = A
anim = 20400
ctrl = 0
poweradd = 20

[State 60400, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 60400, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60400, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60400, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.075
ignorehitpause = 1

[State 60400, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 60400, VarSet];Buffer Flush
type = VarSet
trigger1 = Time = 0
var(27) = 0
ignorehitpause = 1

[State 60400, VelSet]
type = VelSet
trigger1 = PrevStateNo = [110,115]
trigger1 = Time = 0
x = Vel X / 1.5

[State 60400, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 0

[State 60400, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0
channel = 1
ignorehitpause = 1

[State 60400, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 3
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = light
air.animtype = back
fall.animtype = back
ground.type = High
air.type = High
damage = floor(fvar(0)*22),0
getpower = 25,5
givepower = 8,3
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10200
guard.sparkno = S10270
sparkxy = -30+random%20,-30+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 9
air.hittime = 10
guard.ctrltime = 10
airguard.ctrltime = 10
ground.velocity = (2.0-fvar(0))*-3,0
guard.velocity = -3
air.velocity = -2.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-2.75)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-0.2
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;----------------------------------------------------------------------
; Ariel Medium Attack

[Statedef 60410]
type = A
movetype = A
physics = A
anim = 20410
ctrl = 0
poweradd = 35

[State 60410, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 60410, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60410, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60410, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.08
ignorehitpause = 1

[State 60410, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 60410, VarSet];Buffer Flush
type = VarSet
trigger1 = Time = 0
var(27) = 0
ignorehitpause = 1

[State 60410, VelSet]
type = VelSet
trigger1 = PrevStateNo = [110,115]
trigger1 = Time = 0
x = Vel X / 1.5

[State 60410, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 0

[State 60410, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(7) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 60410, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 3
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Medium
air.animtype = back
fall.animtype = back
ground.type = High
air.type = High
damage = floor(fvar(0)*30),0
getpower = 35,7
givepower = 14,7
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10230
guard.sparkno = S10270
sparkxy = -30+random%20,-30+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = (2.0-fvar(0))*-5,0
guard.velocity = -3
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-5.5+EnemyNear,Vel Y*0.25),-5.75)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-0.2
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60410, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 7
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Medium
air.animtype = back
fall.animtype = back
ground.type = High
air.type = High
damage = floor(fvar(0)*25),0
getpower = 35,7
givepower = 14,7
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10230
guard.sparkno = S10270
sparkxy = -30+random%20,-40+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = (2.0-fvar(0))*-5,0
guard.velocity = -3
air.velocity = -3.0,ifelse(EnemyNear,Vel Y <= 0,(-5.5+EnemyNear,Vel Y*0.25),-5.75)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-0.2
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60410, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;----------------------------------------------------------------------
; Ariel Strong Attack

[Statedef 60420]
type = A
movetype = A
physics = A
anim = 20420
ctrl = 0
poweradd = 50

[State 60420, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 60420, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60420, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60420, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.08
ignorehitpause = 1

[State 60420, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 60420, VarSet];Buffer Flush
type = VarSet
trigger1 = Time = 0
var(27) = 0
ignorehitpause = 1

[State 60420, VelSet]
type = VelSet
trigger1 = PrevStateNo = [110,115]
trigger1 = Time = 0
x = Vel X / 1.5

[State 60420, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 0

[State 60420, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 60420, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = High
air.type = High
damage = floor(fvar(0)*62),0
getpower = 50,25
givepower = 25,15
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10220
guard.sparkno = S10270
sparkxy = -30+random%20,-60+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = (2.0-fvar(0))*-5,0
guard.velocity = -3
air.velocity = -6.0,ifelse(EnemyNear,Vel Y <= 0,(-6.5+EnemyNear,Vel Y*0.25),-6.75)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-0.2
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 60420, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;----------------------------------------------------------------------
; Throw - Start

[Statedef 60500]
type = S
movetype = A
physics = S
anim = 500
ctrl = 0
getpower = 70

[State 60500, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 60500, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60500, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60500, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 60500, Hitdef]
type = Hitdef
trigger1 = AnimElem = 3
attr = S,NT
hitflag = M-
guardflag = 
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
priority = 1, Miss
damage = 0,0
getpower = 70,0
givepower = 50,0
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = -1
sparkxy = -8,-50
hitsound = S1,8
guardsound = -1,0
ground.hittime = 0
ground.slidetime = 0
guard.hittime = 0
air.hittime = 0
guard.ctrltime = 0
airguard.ctrltime = 0
ground.velocity = (2.0-fvar(0))*0,0
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4
p1facing = 1
p2facing = 1
p1stateno = 510
p2stateno = 40510
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0

[State 60500, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Throw - Success

[Statedef 60510]
type = S
movetype = A
physics = S
anim = 510
ctrl = 0

[State 60510, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.25
ignorehitpause = 1

[State 60510, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(1) = 40
value = ceil(-90*fvar(0)*(const(data.attack)*0.01))
absolute = 0
kill = 1

[State 60510, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 30,-75

[State 60510, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
pos = 30,-10

[State 60510, TargetState]
type = TargetState
trigger1 = AnimElemTime(1) = 40
value = 40511

[State 60510, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) = 0
value = 40512

[State 60510, Effect]
type = Explod
trigger1 = AnimElemTime(1) = 40
anim = 10260
postype = p1
pos = 25,-75
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 60510, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(1) = 40
value = 1
ignorehitpause = 1

[State 60510, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 40
value = s3,0
channel = 1
ignorehitpause = 1

[State 60510, Projectile]
type = Projectile
trigger1 = AnimElemTime(1) = 40
projID = 31500
projanim = 2099990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 60510, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Ariel Throw - Start

[Statedef 60520]
type = A
movetype = A
physics = A
anim = 520
ctrl = 0
getpower = 70

[State 60520, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 60520, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60520, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60520, Hitdef]
type = Hitdef
trigger1 = AnimElem = 1
attr = A,NT
hitflag = A-
guardflag = 
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
priority = 1, Miss
damage = 0,0
getpower = 70,0
givepower = 50,0
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = -1
sparkxy = -8,-70
hitsound = S1,8
guardsound = -1,0
ground.hittime = 0
ground.slidetime = 0
guard.hittime = 0
air.hittime = 0
guard.ctrltime = 0
airguard.ctrltime = 0
ground.velocity = (2.0-fvar(0))*0,0
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4
p1facing = 1
p2facing = 1
p1stateno = 530
p2stateno = 40530
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0

[State 60520, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 420

;----------------------------------------------------------------------
; Ariel Throw - Success

[Statedef 60530]
type = A
movetype = A
physics = N
anim = 530
ctrl = 0
velset = 0,0

[State 60530, Effect]
type = Explod
trigger1 = AnimElemTime(3) = -1
anim = 10230
postype = p1
pos = 35,-77
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 7
ignorehitpause = 1

[State 60530, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s1,4
channel = 1
ignorehitpause = 1

[State 60530, TargetBind]
type = TargetBind
trigger1 = 1
pos = 35,-82

[State 60530, TargetState]
type = TargetState
trigger1 = AnimElemTime(3) = 0
value = 40531

[State 60530, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 531

;----------------------------------------------------------------------
; Ariel Throw - Finish

[Statedef 60531]
type = A
movetype = A
physics = N
anim = 531
ctrl = 0
velset = 0,0

[State 60531, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,5
channel = 1
ignorehitpause = 1

[State 60531, TargetBind]
type = TargetBind
trigger1 = Time = 0
pos = 35,-20

[State 60531, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ceil(-120*fvar(0)*(const(data.attack)*0.01))
absolute = 0
kill = 1

[State 60531, TargetState]
type = TargetState
trigger1 = Time = 1
value = 40532

[State 60531, Effect]
type = Explod
trigger1 = Time = 0
anim = 10530
postype = p1
pos = 35,-82
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 7
ignorehitpause = 1

[State 60531, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 10
freq = 80
ampl = 5

[State 60531, VelSet]
type = VelSet
trigger1 = Time = 1
x = -6
y = -3

[State 60531, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.4

[State 60531, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 0

;---------------------------------------------------------------------------
; Instant Charge

[Statedef 60600]
type = S
movetype = A
physics = S
anim = 600
ctrl = 0
velset = 0,0

[State 60600, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBG
ignorehitpause = 1

[State 60600, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 60600, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 60600, Pause]
type = Pause 
trigger1 = Time = 0
time = 30
movetime = 30
ignorehitpause = 1

[State 60600, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60600, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60600, VarSet]
type = VarSet
trigger1 = Time = 0
fvar(2) = fvar(2)*(1.0-fvar(1))
ignorehitpause = 1

[State 60600, VarSet];Damage Correction
type = VarAdd
trigger1 = Time = 1
trigger1 = fvar(16) = 3
fvar(2) = fvar(15)/200
persistent = 0
ignorehitpause = 1

[State 60600, VarSet];RainForce Gauge initialize
type = VarSet
trigger1 = Time = 1
fvar(15) = 0
ignorehitpause = 1

[State 60600, VarSet];Flicker Instant Charge Flag initialize
type = VarSet
trigger1 = Time = 2
trigger1 = var(16) = 1
var(16) = 0
ignorehitpause = 1

[State 60600, VarSet];Correction
type = VarSet
trigger1 = Time = 2
fvar(18) = 1
ignorehitpause = 1

[State 60600, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,3
ignorehitpause = 1

[State 60600, Explod]
type = Explod
trigger1 = Time = 0
anim = 10600
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3

[State 60600, Explod]
type = Explod
trigger1 = Time = 0
anim = 10601
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 60600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Instant Charge

[Statedef 60610]
type = A
movetype = A
physics = N
anim = 610
ctrl = 0

[State 60610, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBG
ignorehitpause = 1

[State 60610, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 60610, Pause]
type = Pause 
trigger1 = Time = 0
time = 30
movetime = 30
ignorehitpause = 1

[State 60610, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 60610, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 60610, VarSet]
type = VarSet
trigger1 = Time = 0
fvar(2) = fvar(2)*(1.0-fvar(1))
ignorehitpause = 1

[State 60610, VarSet];Damage Correction
type = VarAdd
trigger1 = Time = 0
trigger1 = fvar(16) = 3
fvar(2) = fvar(15)/200
persistent = 0
ignorehitpause = 1

[State 60610, VarSet];RainForce Gauge initialize
type = VarSet
trigger1 = Time = 1
fvar(15) = 0
ignorehitpause = 1

[State 60610, VarSet];Flicker Instant Charge Flag initialize
type = VarSet
trigger1 = Time = 2
trigger1 = var(16) = 1
var(16) = 0
ignorehitpause = 1

[State 60610, VarSet];Correction
type = VarSet
trigger1 = Time = 2
fvar(18) = 1
ignorehitpause = 1

[State 60610, VarSet];Air Jump flag initialize
type = VarSet
trigger1 = Time = 0
var(5) = 0

[State 60610, VarSet];Air Dash flag initialize
type = VarSet
trigger1 = Time = 0
var(7) = 0

[State 60610, VarSet];Save Velocity
type = VarSet
trigger1 = Time = 0
fvar(20) = Vel X
ignorehitpause = 1

[State 60610, VarSet];Save Velocity
type = VarSet
trigger1 = Time = 0
fvar(21) = Vel Y
ignorehitpause = 1

[State 60610, VelSet]
type = VelSet
trigger1 = Time = 1
x = 0
y = 0

[State 60610, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = fvar(20)
y = fvar(21)

[State 60610, StateTypeSet]
type = StateTypeSet
trigger1 = AnimTime = 0
statetype = A
physics = A

[State 60610, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,3
ignorehitpause = 1

[State 60610, Explod]
type = Explod
trigger1 = Time = 0
anim = 10600
postype = p1
pos = 0,-40
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3

[State 60610, Explod]
type = Explod
trigger1 = Time = 0
anim = 10601
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 60610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;----------------------------------------------------------------------
; 623 + B - Lv.3

[Statedef 61120]
type = S
movetype = A
physics = S
anim = 1120
ctrl = 0
poweradd = 100

[State 61120, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 61120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 61120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 61120, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.15
ignorehitpause = 1

[State 61120, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 61120, VarAdd];Blood
type = VarAdd
trigger1 = fvar(23) = 3
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 61120, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
physics = N
statetype = A
ignorehitpause = 1

[State 61120, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 4.5
y = -5
persistent = 0

[State 61120, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.3

[State 61120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = s3,3
channel = 1
ignorehitpause = 1

[State 61120, Explod]
type = Explod
trigger1 = AnimElemTime(10) = 0
anim = 11100
postype = p1
pos = 30,-11
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 61120, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 10
attr = A,SA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*65),20
getpower = 100,50
givepower = 50,25
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-40+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-3,-5
guard.velocity = -5
air.velocity = -3,-5
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4
p2facing = 1

[State 61120, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(4) >= 1
trigger1 = Pos Y >= 0
value = 61121

;----------------------------------------------------------------------
; 623 + B - Lv.3

[Statedef 61121]
type = S
movetype = A
physics = S
anim = 1121
ctrl = 0
velset = 0,0

[State 61121, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 61121, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 61121, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 61121, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0
ignorehitpause = 1

[State 61121, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 623 + C - Lv.3

[Statedef 61170]
type = S
movetype = A
physics = S
anim = 1170
ctrl = 0
poweradd = 100

[State 61170, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 61170, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 61170, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 61170, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.15
ignorehitpause = 1

[State 61170, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 61170, VarAdd];Blood
type = VarAdd
trigger1 = fvar(23) = 3
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 61170, ChangeAnim]	
type = ChangeAnim
triggerall = PrevStateNo != 950
trigger1 = Time = 0
value = 1170

[State 61170, ChangeAnim]
type = ChangeAnim
triggerall = PrevStateNo = 950
trigger1 = Time = 0
value = 1170
elem = var(13)

[State 61170, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 61170, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 61170, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 10280
postype = p1
pos = 0,-40
facing = -1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 61170, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s4,0

[State 61170, NotHitBy]
type = NotHitBy
trigger1 = Time < 6
value = SCA
time = 1
ignorehitpause = 1

[State 61170, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
physics = N
statetype = A
ignorehitpause = 1

[State 61170, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 5.0
y = -4.0
persistent = 0

[State 61170, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.3

[State 61170, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = s3,3
channel = 1
ignorehitpause = 1

[State 61170, Explod]
type = Explod
trigger1 = AnimElemTime(10) = 0
anim = 11100
postype = p1
pos = 30,-11
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 61170, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 10
attr = A,SA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = floor(fvar(0)*120),20
getpower = 100,50
givepower = 50,25
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-40+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-5,-3
guard.velocity = -5
air.velocity = -5,-3
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4
p2facing = 1
p2stateno = 41401

[State 61170, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(4) >= 1
trigger1 = Pos Y >= 0
value = 61171

;----------------------------------------------------------------------
; 623 + C - Lv.3

[Statedef 61171]
type = S
movetype = A
physics = S
anim = 1171
ctrl = 0
velset = 0,0

[State 61171, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 61171, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 61171, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 61171, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0
ignorehitpause = 1

[State 61171, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + A

[Statedef 66100]
type = S
movetype = A
physics = S
anim = 26100
ctrl = 0

[State 66100, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 66100, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 66100, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 66100, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 66100, PowerAdd]
type = PowerAdd
trigger1 = Time = 0
value = -1000
ignorehitpause = 1

[State 66100, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 40
movetime = 40
anim = -1
sound = s4,1
darken = 0
p2defmul = 1

[State 66100, Helper]	;SuperPause
type = Helper
trigger1 = AnimElemTime(3) = 1
helpertype = normal
name = "Dummy"
ID = 30400
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30400
ignorehitpause = 1

[State 66100, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(11) < 6
flag = NoBG
ignorehitpause = 1

[State 66100, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 1
anim = 10300
postype = p1
pos = 35,-52
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 66100, HitEffects]
type = Helper
trigger1 = AnimElemTime(14) = 0
helpertype = normal
name = "Gaizer_16100"
postype = p1
pos = ceil(P2Dist X),0
pausemovetime = 9999
supermovetime = 9999
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 66100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 66110]
type = S
movetype = A
physics = S
anim = 26100
ctrl = 0

[State 66110, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 66110, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 66110, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 66110, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 26210, PowerAdd]
type = PowerAdd
trigger1 = Time = 0
value = -2000
ignorehitpause = 1

[State 66110, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 40
movetime = 40
anim = -1
sound = s4,2
darken = 0
p2defmul = 1

[State 66110, Helper]	;SuperPause
type = Helper
trigger1 = AnimElemTime(3) = 1
helpertype = normal
name = "Dummy"
ID = 30400
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30400
ignorehitpause = 1

[State 66110, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(11) < 6
flag = NoBG
ignorehitpause = 1

[State 66110, NotHitBy]
type = NotHitBy
trigger1 = Time < 43
value = SCA
time = 1
ignorehitpause = 1

[State 66110, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 1
anim = 10310
postype = p1
pos = 35,-52
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 66110, HitEffects]
type = Helper
trigger1 = AnimElemTime(14) = 0
helpertype = normal
name = "Gaizer_16100"
postype = p1
pos = ceil(P2Dist X),0
pausemovetime = 9999
supermovetime = 9999
stateno = 16110
ID = 16110
ignorehitpause = 1

[State 66110, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 66120]
type = S
movetype = A
physics = S
anim = 26100
ctrl = 0

[State 66120, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 66120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 66120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 66120, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 66120, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 40
movetime = 40
anim = -1
sound = s4,3
darken = 0
p2defmul = 1

[State 66120, Helper]	;SuperPause
type = Helper
trigger1 = AnimElemTime(3) = 1
helpertype = normal
name = "Dummy"
ID = 30400
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30400
ignorehitpause = 1

[State 66120, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(11) < 6
flag = NoBG
ignorehitpause = 1

[State 66120, NotHitBy]
type = NotHitBy
trigger1 = Time < 43
value = SCA
time = 1
ignorehitpause = 1

[State 66120, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(3) >= 0
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 66120, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 1
anim = 10320
postype = p1
pos = 35,-52
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 66120, HitEffects]
type = Helper
trigger1 = AnimElemTime(14) = 0
helpertype = normal
name = "Gaizer_16100"
postype = p1
pos = ceil(P2Dist X),0
pausemovetime = 9999
supermovetime = 9999
stateno = 16120
ID = 16120
ignorehitpause = 1

[State 66120, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

