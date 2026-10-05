;======================================================================
;======================================================================
; Basic states file for "Ikumi Amasawa"
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Intro and Matchover
;----------------------------------------------------------------------
;170 		- TimeOver
;180 		- WinPose State Selector
;190 		- Introduction State Selector

[Statedef 170]
type = S
movetype = I
physics = S
anim = 170+Random%2
ctrl = 0
velset = 0,0

[State 170, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[Statedef 180]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0

[State 180, ChangeState]
type = ChangeState
triggerall = RoundState != 0
trigger1 = Random % 2 = 0
value = 3000

[Statedef 190]
type = S
movetype = I
physics = S
anim = 99990
ctrl = 0
velset = 0,0

[State 190, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, ChangeState]
type = ChangeState
trigger1 = Random%2 = 0
value = 4000

[State 190, ChangeState]
type = ChangeState
trigger1 = Random%2 = 1
value = 4010

;----------------------------------------------------------------------
; Stand Light Attack

[Statedef 200]
type = S
movetype = A
physics = S
anim = 200
ctrl = 0
poweradd = 20

[State 200, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 200, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 200, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 30
ignorehitpause = 1

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0
channel = 1
ignorehitpause = 1

[State 200, Hitdef]
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
ground.velocity = (2.0-fvar(0))*-4,0
guard.velocity = -5
air.velocity = -2.75,ifelse(EnemyNear,Vel Y <= 0,(-5.5+EnemyNear,Vel Y*0.25),-2.25)
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

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Stand Medium Attack(Near)

[Statedef 210]
type = S
movetype = A
physics = S
anim = 210
ctrl = 0
poweradd = 35

[State 210, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 210, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 210, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 210, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 210, Hitdef]
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

[State 210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Stand Medium Attack(Far)

[Statedef 220]
type = S
movetype = A
physics = N
anim = 220
ctrl = 0
velset = 0,0
poweradd = 35

[State 220, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 220, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.075
ignorehitpause = 1

[State 220, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 220, Hitdef]
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

[State 220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Stand Strong Attack

[Statedef 230]
type = S
movetype = A
physics = S
anim = 230
ctrl = 0
poweradd = 50

[State 230, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 230, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 230, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 230, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.08
ignorehitpause = 1

[State 230, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 230, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(3) > 0
trigger1 = AnimElemTime(6) < 0
x = 3
ignorehitpause = 0

[State 230, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 230, Hitdef]
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

[State 230, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = P2StateType = A
trigger1 = MoveHit
value = 45000
ignorehitpause = 1

[State 230, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Dash Stand Light Attack

[Statedef 250]
type = S
movetype = A
physics = N
anim = 250
ctrl = 0
poweradd = 20

[State 250, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 250, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 250, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 250, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 250, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 30
ignorehitpause = 1

[State 250, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0
channel = 1
ignorehitpause = 1

[State 250, AfterImage]
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

[State 250, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9

[State 250, Hitdef]
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

[State 250, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Dash Stand Medium Attack(Near)

[Statedef 260]
type = S
movetype = A
physics = N
anim = 260
ctrl = 0
poweradd = 35

[State 260, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 260, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 260, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 260, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.06
ignorehitpause = 1

[State 260, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 260, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9

[State 260, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 260, AfterImage]
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

[State 260, Hitdef]
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
ground.velocity = (2.0-fvar(0))*-6,0
guard.velocity = -5
air.velocity = -5.0,ifelse(EnemyNear,Vel Y <= 0,(-6.0+EnemyNear,Vel Y*0.25),-4.0)
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

[State 260, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Dash Stand Strong Attack

[Statedef 270]
type = S
movetype = A
physics = N
anim = 270
ctrl = 0
poweradd = 50

[State 270, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 270, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 270, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 270, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.15
ignorehitpause = 1

[State 270, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 270, VelMul]
type = VelMul
trigger1 = Vel X > 0
trigger1 = AnimElemTime(2) < 5
trigger1 = Time % 2 = 0
x = 0.9

[State 270, VelMul]
type = VelMul
trigger1 = Vel X > 0
trigger1 = AnimElemTime(2) >= 5
x = 0.8

[State 270, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 270, AfterImage]
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

[State 270, Hitdef]
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
damage = floor(fvar(0)*45),0
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

[State 270, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Crouch Light Attack

[Statedef 300]
type = C
movetype = A
physics = C
anim = 300
ctrl = 0
poweradd = 20

[State 300, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 300, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 300, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 300, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 300, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 300, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0
channel = 1
ignorehitpause = 1

[State 300, Hitdef]
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

[State 300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Crouch Medium Attack

[Statedef 310]
type = C
movetype = A
physics = C
anim = 310
ctrl = 0
poweradd = 35

[State 310, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 310, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 310, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 310, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.075
ignorehitpause = 1

[State 310, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 310, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 310, Hitdef]
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

[State 310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Crouch Strong Attack

[Statedef 320]
type = C
movetype = A
physics = N
anim = 320
ctrl = 0
velset = 0,0
poweradd = 50

[State 320, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 320, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 320, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 320, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.08
ignorehitpause = 1

[State 320, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 320, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 320, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = 4.5

[State 320, VelMul]
type = VelMul
trigger1 = AnimElemTime(10) >= 0
x = 0.9

[State 320, Hitdef]
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
guard.hittime = 20
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-4.0,-4.0
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

[State 320, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Crouch Light Attack

[Statedef 350]
type = C
movetype = A
physics = N
anim = 350
ctrl = 0
velset = Vel X, 0
poweradd = 20

[State 350, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 350, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 350, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 350, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 350, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 30
ignorehitpause = 1

[State 350, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0
channel = 1
ignorehitpause = 1

[State 350, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9

[State 350, AfterImage]
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

[State 350, Hitdef]
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

[State 350, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Dash Crouch Medium Attack

[Statedef 360]
type = C
movetype = A
physics = N
anim = 360
ctrl = 0
velset = Vel X, 0
poweradd = 35

[State 360, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 360, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 360, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 360, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.06
ignorehitpause = 1

[State 360, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 360, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 360, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9

[State 360, AfterImage]
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

[State 360, Hitdef]
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

[State 360, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
; Dash Stand Strong Attack

[Statedef 370]
type = S
movetype = A
physics = N
anim = 370
ctrl = 0
velset = 4,0
poweradd = 50

[State 370, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 370, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 370, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 370, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.07
ignorehitpause = 1

[State 370, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 60
ignorehitpause = 1

[State 370, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(1) = 0
physics = N
statetype = A
ignorehitpause = 1

[State 370, VelSet]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = 3.25
y = -5.4
persistent = 0

[State 370, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = 0.36

[State 370, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 370, AfterImage]
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

[State 370, Hitdef]
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
damage = floor(fvar(0)*45),0
getpower = 50,25
givepower = 25,15
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10220
guard.sparkno = S10270
sparkxy = -30+random%20,-35+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 14
airguard.ctrltime = 14
ground.velocity = (2.0-fvar(0))*-10,-7.0
guard.velocity = -5
air.velocity = -10,-7.0
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
yaccel = 0.36
p2facing = 1

[State 370, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(4) >= 1
trigger1 = Pos Y >= 0
value = 371

;----------------------------------------------------------------------
; Dash Stand Strong Attack

[Statedef 371]
type = S
movetype = A
physics = S
anim = 371
ctrl = 0
velset = 0,0

[State 371, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 371, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 371, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 371, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0
ignorehitpause = 1

[State 371, AfterImageTime]
type = AfterImageTime
trigger1 = Time = 0
time = AnimTime*(-1)
ignorehitpause = 1

[State 371, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,1
channel = 3
ignorehitpause = 1

[State 371, CtrlSet]
type = CtrlSet
trigger1 = Time >= 9
value = 1
ignorehitpause = 1

[State 371, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Ariel Light Attack

[Statedef 400]
type = A
movetype = A
physics = A
anim = 400
ctrl = 0
poweradd = 20

[State 400, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 1
ignorehitpause = 1

[State 400, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 400, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 400, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.075
ignorehitpause = 1

[State 400, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 400, VarSet];Buffer Flush
type = VarSet
trigger1 = Time = 0
var(27) = 0
ignorehitpause = 1

[State 400, VelSet]
type = VelSet
trigger1 = PrevStateNo = [110,115]
trigger1 = Time = 0
x = Vel X / 1.5

[State 400, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 0

[State 400, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0
channel = 1
ignorehitpause = 1

[State 400, Hitdef]
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
ground.slidetime = 6
ground.hittime = 6
guard.hittime = 5
air.hittime = 6
guard.ctrltime = 5
airguard.ctrltime = 5
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

[State 400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;----------------------------------------------------------------------
; Ariel Medium Attack

[Statedef 410]
type = A
movetype = A
physics = A
anim = 410
ctrl = 0
poweradd = 35

[State 410, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 410, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 410, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 410, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.08
ignorehitpause = 1

[State 410, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 410, VarSet];Buffer Flush
type = VarSet
trigger1 = Time = 0
var(27) = 0
ignorehitpause = 1

[State 410, VelSet]
type = VelSet
trigger1 = PrevStateNo = [110,115]
trigger1 = Time = 0
x = Vel X / 1.5

[State 410, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 0

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(7) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 410, Hitdef]
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
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 8
air.hittime = 10
guard.ctrltime = 9
airguard.ctrltime = 9
ground.velocity = (2.0-fvar(0))*-5,0
guard.velocity = -3
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-5.0+EnemyNear,Vel Y*0.25),-4.25)
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

[State 410, Hitdef]
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
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 8
air.hittime = 10
guard.ctrltime = 9
airguard.ctrltime = 9
ground.velocity = (2.0-fvar(0))*-5,0
guard.velocity = -3
air.velocity = -5.5,ifelse(EnemyNear,Vel Y <= 0,(-6.0+EnemyNear,Vel Y*0.25),-5.0)
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

[State 410, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;----------------------------------------------------------------------
; Ariel Strong Attack

[Statedef 420]
type = A
movetype = A
physics = A
anim = 420
ctrl = 0
poweradd = 50

[State 420, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 3
ignorehitpause = 1

[State 420, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 420, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 420, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.08
ignorehitpause = 1

[State 420, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 420, VarSet];Buffer Flush
type = VarSet
trigger1 = Time = 0
var(27) = 0
ignorehitpause = 1

[State 420, VelSet]
type = VelSet
trigger1 = PrevStateNo = [110,115]
trigger1 = Time = 0
x = Vel X / 1.5

[State 420, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 0

[State 420, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 420, Hitdef]
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
air.velocity = -6.0,ifelse(EnemyNear,Vel Y <= 0,(-6.0+EnemyNear,Vel Y*0.25),-5.0)
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
yaccel = 0.375

[State 420, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;----------------------------------------------------------------------
; Throw - Start

[Statedef 500]
type = S
movetype = A
physics = S
anim = 500
ctrl = 0
getpower = 70

[State 500, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 500, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 500, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 500, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 500, Hitdef]
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

[State 500, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Throw - Success

[Statedef 510]
type = S
movetype = A
physics = S
anim = 510
ctrl = 0

[State 510, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.25
ignorehitpause = 1

[State 510, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(1) = 40
value = ceil(-90*fvar(0)*(const(data.attack)*0.01))
absolute = 0
kill = 1

[State 510, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 30,-75

[State 510, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
pos = 30,-10

[State 510, TargetState]
type = TargetState
trigger1 = AnimElemTime(1) = 40
value = 40511

[State 510, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) = 0
value = 40512

[State 510, Effect]
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

[State 510, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(1) = 40
value = 1
ignorehitpause = 1

[State 510, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 40
value = s3,0
channel = 1
ignorehitpause = 1

[State 510, Projectile]
type = Projectile
trigger1 = AnimElemTime(1) = 40
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 510, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Ariel Throw - Start

[Statedef 520]
type = A
movetype = A
physics = A
anim = 520
ctrl = 0
getpower = 70

[State 520, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 520, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 520, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 520, Hitdef]
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

[State 520, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 420

;----------------------------------------------------------------------
; Ariel Throw - Success

[Statedef 530]
type = A
movetype = A
physics = N
anim = 530
ctrl = 0
velset = 0,0

[State 530, Effect]
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

[State 530, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s1,4
channel = 1
ignorehitpause = 1

[State 530, TargetBind]
type = TargetBind
trigger1 = 1
pos = 35,-82

[State 530, TargetState]
type = TargetState
trigger1 = AnimElemTime(3) = 0
value = 40531

[State 530, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 531

;----------------------------------------------------------------------
; Ariel Throw - Finish

[Statedef 531]
type = A
movetype = A
physics = N
anim = 531
ctrl = 0
velset = 0,0

[State 531, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,5
channel = 1
ignorehitpause = 1

[State 531, TargetBind]
type = TargetBind
trigger1 = Time = 0
pos = 35,-20

[State 531, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ceil(-120*fvar(0)*(const(data.attack)*0.01))
absolute = 0
kill = 1

[State 531, TargetState]
type = TargetState
trigger1 = Time = 1
value = 40532

[State 531, Effect]
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

[State 531, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 10
freq = 80
ampl = 5

[State 531, VelSet]
type = VelSet
trigger1 = Time = 1
x = -6
y = -3

[State 531, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.4

[State 531, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 0

;---------------------------------------------------------------------------
; Instant Charge

[Statedef 600]
type = S
movetype = A
physics = S
anim = 600
ctrl = 0
velset = 0,0

[State 600, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBG
ignorehitpause = 1

[State 600, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 600, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 600, Pause]
type = Pause 
trigger1 = Time = 0
time = 30
movetime = 30
ignorehitpause = 1

[State 600, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 600, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 600, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 600, VarSet]
type = Null;VarSet
trigger1 = Time = 0
fvar(2) = fvar(2)*(1.0-fvar(1))
ignorehitpause = 1

[State 600, VarSet];Damage Correction
type = VarAdd
trigger1 = Time = 1
trigger1 = fvar(16) = 3
fvar(2) = fvar(15)/200
persistent = 0
ignorehitpause = 1

[State 600, VarSet];RainForce Gauge initialize
type = VarSet
trigger1 = Time = 1
fvar(15) = 0
ignorehitpause = 1

[State 600, VarSet];Flicker Instant Charge Flag initialize
type = VarSet
trigger1 = Time = 2
trigger1 = var(16) = 1
var(16) = 0
ignorehitpause = 1

[State 600, VarSet];Correction
type = Null;VarSet
trigger1 = Time = 2
fvar(18) = 1
ignorehitpause = 1

[State 600, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,3
ignorehitpause = 1

[State 600, Explod]
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

[State 600, Explod]
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

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Instant Charge

[Statedef 610]
type = A
movetype = A
physics = N
anim = 610
ctrl = 0

[State 610, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBG
ignorehitpause = 1

[State 610, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 610, Pause]
type = Pause 
trigger1 = Time = 0
time = 30
movetime = 30
ignorehitpause = 1

[State 610, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 610, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 610, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 610, VarSet]
type = Null;VarSet
trigger1 = Time = 0
fvar(2) = fvar(2)*(1.0-fvar(1))
ignorehitpause = 1

[State 610, VarSet];Damage Correction
type = VarAdd
trigger1 = Time = 0
trigger1 = fvar(16) = 3
fvar(2) = fvar(15)/200
persistent = 0
ignorehitpause = 1

[State 610, VarSet];RainForce Gauge initialize
type = VarSet
trigger1 = Time = 1
fvar(15) = 0
ignorehitpause = 1

[State 610, VarSet];Flicker Instant Charge Flag initialize
type = VarSet
trigger1 = Time = 2
trigger1 = var(16) = 1
var(16) = 0
ignorehitpause = 1

[State 610, VarSet];Correction
type = Null;VarSet
trigger1 = Time = 2
fvar(18) = 1
ignorehitpause = 1

[State 610, VarSet];Air Jump flag initialize
type = Null;VarSet
trigger1 = Time = 0
var(5) = 0

[State 610, VarSet];Air Dash flag initialize
type = VarSet
trigger1 = Time = 0
var(7) = 0

[State 610, VarSet];Save Velocity
type = VarSet
trigger1 = Time = 0
fvar(20) = Vel X
ignorehitpause = 1

[State 610, VarSet];Save Velocity
type = VarSet
trigger1 = Time = 0
fvar(21) = Vel Y
ignorehitpause = 1

[State 610, VelSet]
type = VelSet
trigger1 = Time = 1
x = 0
y = 0

[State 610, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = fvar(20)
y = fvar(21)

[State 610, StateTypeSet]
type = StateTypeSet
trigger1 = AnimTime = 0
statetype = A
physics = A

[State 610, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,3
ignorehitpause = 1

[State 610, Explod]
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

[State 610, Explod]
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

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;---------------------------------------------------------------------------
; Armor

[Statedef 950]
type = U
movetype = H

[State 950, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 180,180,180

[State 950, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = var(12)
elem = var(13)

[State 950, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 950, VarSet];Save Velocity
type = VarSet
trigger1 = Time = 0
fvar(20) = Vel X
ignorehitpause = 1

[State 950, VarSet];Save Velocity
type = VarSet
trigger1 = Time = 0
fvar(21) = Vel Y
ignorehitpause = 1

[State 950, VarAdd];Hitsound and effects select
type = VarAdd
trigger1 = Time = 0
var(38) = 1
persistent = 0
ignorehitpause = 1

[State 950, VelSet]
type = VelSet
trigger1 = Time = 1
x = 0
y = 0

[State 950, VelSet]
type = VelSet
trigger1 = Time = 7
x = fvar(20)
y = fvar(21)

[State 950, ChangeState]
type = ChangeState
trigger1 = Time = 7
value = var(37)
ctrl = 0

;---------------------------------------------------------------------------
; Intro 1

[Statedef 4000]
type = A
movetype = I
physics = N
anim = 4000
ctrl = 0

[State 4000, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 4000, PosSet]
type = PosSet
trigger1 = Time = 1
y = -310
ignorehitpause = 1

[State 4000, VelSet]
type = VelSet
trigger1 = Time = 0
y = 1.75
ignorehitpause = 1

[State 4000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,7
ignorehitpause = 1

[State 4000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,8
ignorehitpause = 1

[State 4000, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 3
flag = Invisible

[State 4000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 4000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4000, Effect]
type = Explod
trigger1 = Time = 0
anim = 14000
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 2

[State 4000, Effect]
type = Explod
trigger1 = Time = 0
anim = 14000
postype = p1
pos = -10,-150
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 2

[State 4000, AfterImage]
type = AfterImage
trigger1 = Time = 5
time = -1
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
TimeGap = 2
FrameGap = 1
Trans = Add1
length = 4

[State 4000, ChangeState]
type = ChangeState
trigger1 = Time > 5
trigger1 = Pos Y >= 0
value = 4001

;---------------------------------------------------------------------------
; Intro 1

[Statedef 4001]
type = S
movetype = I
physics = S
ctrl = 0
anim = 4001
velset = 0,0

[State 4001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4001, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1

[State 4001, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 0

[State 4001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Intro 2

[Statedef 4010]
type = S
movetype = I
physics = S
anim = 4010
ctrl = 0
velset = 0,0

[State 4010, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 4010, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4010, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------------------------------------------
; WinPose

[Statedef 3000]
type = S
movetype = I
physics = S
anim = 3000
ctrl = 0
velset = 0,0

[State 3000, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 120
flag = RoundNotOver

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

