;======================================================================
;======================================================================
; Super Move states file for "Ikumi Amasawa"
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Super Move 
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Awaken

[Statedef 800]
type = S
movetype = A
physics = S
anim = 800
ctrl = 0

[State 800, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 6
ignorehitpause = 1

[State 800, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 800, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 800, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 800, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 9999
ignorehitpause = 1

[State 800, VarSet]
type = VarSet
trigger1 = Time = 0
var(30) = 1
ignorehitpause = 1

[State 800, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 800, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(1) = 0
time = 40
movetime = 40
anim = -1
sound = s4,3
darken = 0
p2defmul = 1

[State 800, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s4,4
ignorehitpause = 1

[State 800, Helper]	;SuperPause
type = Helper
trigger1 = Time < 40
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

[State 800, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBG
ignorehitpause = 1

[State 800, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 10320
postype = p1
pos = 0,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3

[State 800, Explod]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 10800
postype = p1
pos = 0,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 5

[State 800, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,7
ignorehitpause = 1

[State 800, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(4) = 0
time = 20
freq = 80
ampl = 5

[State 800, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,SA
hitflag = MAF
guardflag = M
animtype = light
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(fvar(0)*100),0
getpower = 25,5
givepower = 8,3
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10200
guard.sparkno = S10270
sparkxy = -30+random%20,-85+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*0,-10
guard.velocity = -5
air.velocity = 0,ifelse(EnemyNear,Vel Y <= 0,(-12+EnemyNear,Vel Y*0.25),-12)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 800, ChangeState]
type = ChangeState
trigger1 = Time >= 100
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 236 + A - Lv.1

[Statedef 1000]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1000
poweradd = 100

[State 1000, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1000, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.09
ignorehitpause = 1

[State 1000, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1000, VelSet]
type = VelSet
trigger1 = Time = 0
x = 9.0
ignorehitpause = 1

[State 1000, 4]
type = ChangeState
trigger1 = Time >= 17
trigger2 = Time = [11,15]
trigger2 = ceil(P2Dist X) < 50
value = 1001

;----------------------------------------------------------------------
; 236 + A - Lv.1

[Statedef 1001]
type = S
movetype = A
physics = N
anim = 1001
ctrl = 0

[State 1001, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1001, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1001, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1001, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.09
ignorehitpause = 1

[State 1001, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1001, Width]
type = Width
trigger1 = 1
player = 15,13
ignorehitpause = 1

[State 1001, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,2
channel = 1
ignorehitpause = 1

[State 1001, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9
ignorehitpause = 0

[State 1001, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11000
postype = p1
pos = 55,-30
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 1001, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(fvar(0)*55),0
getpower = 100,50
givepower = 50,25
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-6,0
guard.velocity = -5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
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

[State 1001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 236 + B - Lv.2

[Statedef 1010]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1000
poweradd = 100

[State 1010, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1010, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1010, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1010, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.06
ignorehitpause = 1

[State 1010, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1010, VarAdd];Blood
type = VarAdd
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1010, VelSet]
type = VelSet
trigger1 = Time = 0
x = 9.0
ignorehitpause = 1

[State 1010, 4]
type = ChangeState
trigger1 = Time >= 17
trigger2 = Time = [12,16]
trigger2 = ceil(P2Dist X) < 30
value = 1011

;----------------------------------------------------------------------
; 236 + B - Lv.2

[Statedef 1011]
type = S
movetype = A
physics = N
anim = 1011
ctrl = 0

[State 1011, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1011, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1011, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1011, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.06
ignorehitpause = 1

[State 1011, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1011, 1]
type = Width
trigger1 = 1
player = 15,13
ignorehitpause = 1

[State 1011, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,2
channel = 1
ignorehitpause = 1

[State 1011, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9
ignorehitpause = 0

[State 1011, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11000
postype = p1
pos = 55,-30
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 1011, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(fvar(0)*25),0
getpower = 75,35
givepower = 50,25
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-6,0
guard.velocity = -5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
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

[State 1011, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 5
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(fvar(0)*25),0
getpower = 75,35
givepower = 50,25
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-6,0
guard.velocity = -5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
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

[State 1011, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 236 + B - Lv.3

[Statedef 1020]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1000
poweradd = 100

[State 1020, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1020, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1020, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1020, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.075
ignorehitpause = 1

[State 1020, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1020, VarAdd];Blood
type = VarAdd
trigger1 = fvar(23) = 3
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1020, VelSet]
type = VelSet
trigger1 = Time = 0
x = 9.0
ignorehitpause = 1

[State 1020, 4]
type = ChangeState
trigger1 = Time >= 17
trigger2 = Time = [12,16]
trigger2 = ceil(P2Dist X) < 30
value = 1021

;----------------------------------------------------------------------
; 236 + B - Lv.3

[Statedef 1021]
type = S
movetype = A
physics = N
anim = 1021
ctrl = 0

[State 1021, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1021, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1021, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1021, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.075
ignorehitpause = 1

[State 1021, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1021, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,2
channel = 1
ignorehitpause = 1

[State 1021, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9
ignorehitpause = 0

[State 1021, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11000
postype = p1
pos = 55,-30
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 1021, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(fvar(0)*27),10
getpower = 50,25
givepower = 35,20
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-6,0
guard.velocity = -5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
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

[State 1021, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 5
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(fvar(0)*27),10
getpower = 50,25
givepower = 35,20
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-6,0
guard.velocity = -5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
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

[State 1021, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 6
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(fvar(0)*27),10
getpower = 50,25
givepower = 35,20
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-6,0
guard.velocity = -5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
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

[State 1021, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 236 + C - Lv.1

[Statedef 1050]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1000
poweradd = 100

[State 1050, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1050, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1050, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1050, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.09
ignorehitpause = 1

[State 1050, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1050, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 1050, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 1050, Explod]
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

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s4,0

[State 1050, VelSet]
type = VelSet
trigger1 = Time = 0
x = 9.0
ignorehitpause = 1

[State 1050, 4]
type = ChangeState
trigger1 = Time >= 17
trigger2 = Time = [12,16]
trigger2 = ceil(P2Dist X) < 30
value = 1051

;----------------------------------------------------------------------
; 236 + C - Lv.1

[Statedef 1051]
type = S
movetype = A
physics = N
anim = 1001
ctrl = 0

[State 1051, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1051, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1051, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1051, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.09
ignorehitpause = 1

[State 1051, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1051, Width]
type = Width
trigger1 = 1
player = 15,13
ignorehitpause = 1

[State 1051, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,2
channel = 1
ignorehitpause = 1

[State 1051, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9
ignorehitpause = 0

[State 1051, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11000
postype = p1
pos = 55,-30
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 1051, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(fvar(0)*72),0
getpower = 100,50
givepower = 50,25
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-6,0
guard.velocity = -5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
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

[State 1051, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 236 + C - Lv.2

[Statedef 1060]
type = S
movetype = A
physics = N
ctrl = 0
poweradd = 100

[State 1060, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1060, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1060, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1060, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.09
ignorehitpause = 1

[State 1060, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1060, VarAdd];Blood
type = VarAdd
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1060, ChangeAnim]	
type = ChangeAnim
triggerall = PrevStateNo != 950
trigger1 = Time = 0
value = 1000

[State 1060, ChangeAnim]
type = ChangeAnim
triggerall = PrevStateNo = 950
trigger1 = Time = 0
value = 1000
elem = var(13)

[State 1060, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 1060, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 1060, Explod]
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

[State 1060, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s4,0

[State 1060, NotHitBy]
type = NotHitBy
trigger1 = Time < 13
value = SCA
time = 1
ignorehitpause = 1

[State 1060, VelSet]
type = VelSet
trigger1 = Time = 0
x = 9.0
ignorehitpause = 1

[State 1060, 4]
type = ChangeState
trigger1 = Time >= 17
trigger2 = Time = [12,16]
trigger2 = ceil(P2Dist X) < 30
value = 1061

;----------------------------------------------------------------------
; 236 + C - Lv.2

[Statedef 1061]
type = S
movetype = A
physics = N
anim = 1001
ctrl = 0

[State 1061, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1061, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1061, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1061, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.09
ignorehitpause = 1

[State 1061, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1061, ChangeAnim]	
type = ChangeAnim
triggerall = PrevStateNo != 950
trigger1 = Time = 0
value = 1001

[State 1061, ChangeAnim]
type = ChangeAnim
triggerall = PrevStateNo = 950
trigger1 = Time = 0
value = 1001
elem = var(13)

[State 1061, Width]
type = Width
trigger1 = 1
player = 15,13
ignorehitpause = 1

[State 1061, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,2
channel = 1
ignorehitpause = 1

[State 1061, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9
ignorehitpause = 0

[State 1061, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11000
postype = p1
pos = 55,-30
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 1061, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(fvar(0)*80),0
getpower = 100,50
givepower = 50,25
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-7.0,-5.0
guard.velocity = -5
air.velocity = -7.0,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-7.0
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

[State 1061, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 236 + C - Lv.3

[Statedef 1070]
type = S
movetype = A
physics = N
ctrl = 0
poweradd = 100

[State 1070, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1070, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1070, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1070, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.09
ignorehitpause = 1

[State 1070, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1070, VarAdd];Blood
type = VarAdd
trigger1 = fvar(23) = 3
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1070, ChangeAnim]	
type = ChangeAnim
triggerall = PrevStateNo != 950
trigger1 = Time = 0
value = 1000

[State 1070, ChangeAnim]
type = ChangeAnim
triggerall = PrevStateNo = 950
trigger1 = Time = 0
value = 1000
elem = var(13)

[State 1070, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 1070, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 1070, Explod]
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

[State 1070, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s4,0

[State 1070, NotHitBy]
type = NotHitBy
trigger1 = Time < 13
value = SCA
time = 1
ignorehitpause = 1

[State 1070, VelSet]
type = VelSet
trigger1 = Time = 0
x = 9.0
ignorehitpause = 1

[State 1070, 4]
type = ChangeState
trigger1 = Time >= 17
trigger2 = Time = [12,16]
trigger2 = ceil(P2Dist X) < 30
value = 1071

;----------------------------------------------------------------------
; 236 + C - Lv.3

[Statedef 1071]
type = S
movetype = A
physics = N
anim = 1001
ctrl = 0

[State 1071, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1071, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1071, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1071, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.09
ignorehitpause = 1

[State 1071, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1071, ChangeAnim]	
type = ChangeAnim
triggerall = PrevStateNo != 950
trigger1 = Time = 0
value = 1001

[State 1071, ChangeAnim]
type = ChangeAnim
triggerall = PrevStateNo = 950
trigger1 = Time = 0
value = 1001
elem = var(13)

[State 1071, Width]
type = Width
trigger1 = 1
player = 15,13
ignorehitpause = 1

[State 1071, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,2
channel = 1
ignorehitpause = 1

[State 1071, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9
ignorehitpause = 0

[State 1071, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11000
postype = p1
pos = 55,-30
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 1071, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 4
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(fvar(0)*85),0
getpower = 100,50
givepower = 50,25
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*-7.0,-5.0
guard.velocity = -5
air.velocity = -7.0,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = fvar(17)-7.0
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

[State 1071, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 623 + A - Lv.1

[Statedef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
poweradd = 100

[State 1100, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1100, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1100, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1100, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.15
ignorehitpause = 1

[State 1100, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 1100, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 1100, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = Time = 0
var(17) = 0
ignorehitpause = 1

[State 1100, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = var(17) = 1
trigger1 = AnimElemTime(8) >= 0
var(16) = 1
ignorehitpause = 1

[State 1100, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = command = "22c"
trigger1 = AnimElemTime(6) >= 0
trigger1 = AnimElemTime(9) < 0
var(17) = 1
ignorehitpause = 1

[State 1100, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = AnimElemTime(9) >= 0
var(17) = 0
ignorehitpause = 1

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
physics = N
statetype = A
ignorehitpause = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 3.0
y = -6.25
persistent = 0

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.3

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = s3,3
channel = 1
ignorehitpause = 1

[State 1100, Explod]
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

[State 1100, Hitdef]
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
damage = ceil(fvar(0)*52),10
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
guard.ctrltime = 13
airguard.ctrltime = 13
ground.velocity = (2.0-fvar(0))*-5,5
guard.velocity = -5
air.velocity = -5,5
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
yaccel = 0.7
p2facing = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(4) >= 1
trigger1 = Pos Y >= 0
value = 1101

;----------------------------------------------------------------------
; 623 + A - Lv.1

[Statedef 1101]
type = S
movetype = A
physics = S
anim = 1101
ctrl = 0
velset = 0,0

[State 1101, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1101, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1101, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1101, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0
ignorehitpause = 1

[State 1101, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 623 + B - Lv.1

[Statedef 1105]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
poweradd = 100

[State 1105, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1105, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1105, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1105, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.15
ignorehitpause = 1

[State 1105, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 1105, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
physics = N
statetype = A
ignorehitpause = 1

[State 1105, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 5
y = -5
persistent = 0

[State 1105, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.3

[State 1105, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = s3,3
channel = 1
ignorehitpause = 1

[State 1105, Explod]
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

[State 1105, Hitdef]
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
damage = ceil(fvar(0)*52),10
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
guard.ctrltime = 13
airguard.ctrltime = 13
ground.velocity = (2.0-fvar(0))*-5,5
guard.velocity = -5
air.velocity = -5,5
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
yaccel = 0.7
p2facing = 1

[State 1105, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(4) >= 1
trigger1 = Pos Y >= 0
value = 1106

;----------------------------------------------------------------------
; 623 + B - Lv.1

[Statedef 1106]
type = S
movetype = A
physics = S
anim = 1101
ctrl = 0
velset = 0,0

[State 1106, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1106, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1106, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1106, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0
ignorehitpause = 1

[State 1106, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 623 + B - Lv.2

[Statedef 1110]
type = S
movetype = A
physics = S
anim = 1110
ctrl = 0
poweradd = 100

[State 1110, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1110, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1110, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1110, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.15
ignorehitpause = 1

[State 1110, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 1110, VarAdd];Blood
type = VarAdd
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1110, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
physics = N
statetype = A
ignorehitpause = 1

[State 1110, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 4.5
y = -5
persistent = 0

[State 1110, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.3

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = s3,3
channel = 1
ignorehitpause = 1

[State 1110, Explod]
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

[State 1110, Hitdef]
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
damage = ceil(fvar(0)*100),15
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
ground.velocity = (2.0-fvar(0))*-5,5
guard.velocity = -5
air.velocity = -5,5
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
yaccel = 0.7
p2facing = 1

[State 1110, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(4) >= 1
trigger1 = Pos Y >= 0
value = 1111

;----------------------------------------------------------------------
; 623 + B - Lv.2

[Statedef 1111]
type = S
movetype = A
physics = S
anim = 1111
ctrl = 0
velset = 0,0

[State 1111, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1111, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1111, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1111, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0
ignorehitpause = 1

[State 1111, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 623 + B - Lv.3

[Statedef 1120]
type = S
movetype = A
physics = S
anim = 1120
ctrl = 0
poweradd = 100

[State 1120, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1120, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.15
ignorehitpause = 1

[State 1120, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 1120, VarAdd];Blood
type = VarAdd
trigger1 = fvar(23) = 3
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1120, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
physics = N
statetype = A
ignorehitpause = 1

[State 1120, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 4.5
y = -5
persistent = 0

[State 1120, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.3

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = s3,3
channel = 1
ignorehitpause = 1

[State 1120, Explod]
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

[State 1120, Hitdef]
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
damage = ceil(fvar(0)*125),20
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
ground.velocity = (2.0-fvar(0))*-5,5
guard.velocity = -5
air.velocity = -5,5
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
yaccel = 0.7
p2facing = 1

[State 1120, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(4) >= 1
trigger1 = Pos Y >= 0
value = 1121

;----------------------------------------------------------------------
; 623 + B - Lv.3

[Statedef 1121]
type = S
movetype = A
physics = S
anim = 1121
ctrl = 0
velset = 0,0

[State 1121, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1121, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1121, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1121, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0
ignorehitpause = 1

[State 1121, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 623 + C - Lv.1

[Statedef 1150]
type = S
movetype = A
physics = S
anim = 1150
ctrl = 0
poweradd = 100

[State 1150, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1150, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1150, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1150, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.15
ignorehitpause = 1

[State 1150, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 1150, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 1150, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 1150, Explod]
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

[State 1150, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s4,0

[State 1150, NotHitBy]
type = NotHitBy
trigger1 = Time < 8
value = SCA
time = 1
ignorehitpause = 1

[State 1150, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
physics = N
statetype = A
ignorehitpause = 1

[State 1150, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 4.5
y = -5
persistent = 0

[State 1150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.3

[State 1150, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = s3,3
channel = 1
ignorehitpause = 1

[State 1150, Explod]
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

[State 1150, Hitdef]
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
damage = ceil(fvar(0)*65),10
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
ground.velocity = (2.0-fvar(0))*-5,5
guard.velocity = -5
air.velocity = -5,5
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
yaccel = 0.7
p2facing = 1

[State 1150, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(4) >= 1
trigger1 = Pos Y >= 0
value = 1151

;----------------------------------------------------------------------
; 623 + C - Lv.1

[Statedef 1151]
type = S
movetype = A
physics = S
anim = 1151
ctrl = 0
velset = 0,0

[State 1151, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1151, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1151, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1151, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0
ignorehitpause = 1

[State 1151, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 623 + C - Lv.2

[Statedef 1160]
type = S
movetype = A
physics = S
anim = 1160
ctrl = 0
poweradd = 100

[State 1160, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1160, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1160, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1160, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.15
ignorehitpause = 1

[State 1160, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 1160, VarAdd];Blood
type = VarAdd
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1160, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 1160, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 1160, Explod]
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

[State 1160, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s4,0

[State 1160, NotHitBy]
type = NotHitBy
trigger1 = Time < 8
value = SCA
time = 1
ignorehitpause = 1

[State 1160, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
physics = N
statetype = A
ignorehitpause = 1

[State 1160, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 4.0
y = -4.75
persistent = 0

[State 1160, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.3

[State 1160, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = s3,3
channel = 1
ignorehitpause = 1

[State 1160, Explod]
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

[State 1160, Hitdef]
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
damage = ceil(fvar(0)*120),20
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
ground.velocity = (2.0-fvar(0))*-5,5
guard.velocity = -5
air.velocity = -5,5
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
yaccel = 0.7
p2facing = 1

[State 1160, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(4) >= 1
trigger1 = Pos Y >= 0
value = 1161

;----------------------------------------------------------------------
; 623 + C - Lv.2

[Statedef 1161]
type = S
movetype = A
physics = S
anim = 1161
ctrl = 0
velset = 0,0

[State 1161, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1161, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1161, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1161, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0
ignorehitpause = 1

[State 1161, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 623 + C - Lv.3

[Statedef 1170]
type = S
movetype = A
physics = S
anim = 1170
ctrl = 0
poweradd = 100

[State 1170, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 4
ignorehitpause = 1

[State 1170, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1170, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1170, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.15
ignorehitpause = 1

[State 1170, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 40
ignorehitpause = 1

[State 1170, VarAdd];Blood
type = VarAdd
trigger1 = fvar(23) = 3
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1170, ChangeAnim]	
type = ChangeAnim
triggerall = PrevStateNo != 950
trigger1 = Time = 0
value = 1170

[State 1170, ChangeAnim]
type = ChangeAnim
triggerall = PrevStateNo = 950
trigger1 = Time = 0
value = 1170
elem = var(13)

[State 1170, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 2
fvar(15) = -100
ignorehitpause = 1

[State 1170, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) = 1
trigger1 = fvar(16) = 3
fvar(15) = ifelse(fvar(15) > 25,-25,-1*fvar(15))
ignorehitpause = 1

[State 1170, Explod]
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

[State 1170, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s4,0

[State 1170, NotHitBy]
type = NotHitBy
trigger1 = Time < 6
value = SCA
time = 1
ignorehitpause = 1

[State 1170, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
physics = N
statetype = A
ignorehitpause = 1

[State 1170, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 5.0
y = -4.0
persistent = 0

[State 1170, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.3

[State 1170, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = s3,3
channel = 1
ignorehitpause = 1

[State 1170, Explod]
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

[State 1170, Hitdef]
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
damage = ceil(fvar(0)*120),20
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
ground.velocity = (2.0-fvar(0))*-5,5
guard.velocity = -5
air.velocity = -5,5
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
yaccel = 0.7
p2facing = 1

[State 1170, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(4) >= 1
trigger1 = Pos Y >= 0
value = 1171

;----------------------------------------------------------------------
; 623 + C - Lv.3

[Statedef 1171]
type = S
movetype = A
physics = S
anim = 1171
ctrl = 0
velset = 0,0

[State 1171, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1171, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1171, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1171, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0
ignorehitpause = 1

[State 1171, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 214 + A - Lv.1

[Statedef 1200]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1200
poweradd = 100

[State 1200, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1200, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 1200, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,1
channel = 6
ignorehitpause = 1

[State 1200, HitEffects]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Tornado_11200"
postype = p1
pos = 60,0
pausemovetime = 9999
supermovetime = 9999
stateno = 11200
ID = 11200
ignorehitpause = 1

[State 1200, CtrlSet]
type = CtrlSet
trigger1 = AnimTime = -3
value = 1
ignorehitpause = 1

[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 214 + B - Lv.1

[Statedef 1210]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1210
poweradd = 100

[State 1210, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1210, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 1210, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1210, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,1
channel = 6
ignorehitpause = 1

[State 1210, HitEffects]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Tornado_11200"
postype = p1
pos = 120,0
pausemovetime = 9999
supermovetime = 9999
stateno = 11200
ID = 11200
ignorehitpause = 1

[State 1210, CtrlSet]
type = CtrlSet
trigger1 = AnimTime = -3
value = 1
ignorehitpause = 1

[State 1210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 214 + C - Lv.1

[Statedef 1220]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1220
poweradd = 100

[State 1220, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1220, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 1220, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1220, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,1
channel = 6
ignorehitpause = 1

[State 1220, HitEffects]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Tornado_11200"
postype = p1
pos = 180,0
pausemovetime = 9999
supermovetime = 9999
stateno = 11200
ID = 11200
ignorehitpause = 1

[State 1220, CtrlSet]
type = CtrlSet
trigger1 = AnimTime = -3
value = 1
ignorehitpause = 1

[State 1220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 214 + A - Lv.2

[Statedef 1230]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1230
poweradd = 100

[State 1230, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1230, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1230, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1230, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 1230, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1230, VarAdd];Blood
type = VarAdd
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1230, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,1
channel = 6
ignorehitpause = 1

[State 1230, HitEffects]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Tornado_11200"
postype = p1
pos = 60,0
pausemovetime = 9999
supermovetime = 9999
stateno = 11200
ID = 11200
ignorehitpause = 1

[State 1230, CtrlSet]
type = CtrlSet
trigger1 = AnimTime = -3
value = 1
ignorehitpause = 1

[State 1230, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 214 + B - Lv.2

[Statedef 1240]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1240
poweradd = 100

[State 1240, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1240, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1240, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1240, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 1240, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1240, VarAdd];Blood
type = VarAdd
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1240, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,1
channel = 6
ignorehitpause = 1

[State 1240, HitEffects]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Tornado_11200"
postype = p1
pos = 120,0
pausemovetime = 9999
supermovetime = 9999
stateno = 11200
ID = 11200
ignorehitpause = 1

[State 1240, CtrlSet]
type = CtrlSet
trigger1 = AnimTime = -3
value = 1
ignorehitpause = 1

[State 1240, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 214 + C - Lv.2

[Statedef 1250]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1250
poweradd = 100

[State 1250, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1250, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1250, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1250, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 1250, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1250, VarAdd];Blood
type = VarAdd
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1250, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,1
channel = 6
ignorehitpause = 1

[State 1250, HitEffects]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Tornado_11200"
postype = p1
pos = 180,0
pausemovetime = 9999
supermovetime = 9999
stateno = 11200
ID = 11200
ignorehitpause = 1

[State 1250, CtrlSet]
type = CtrlSet
trigger1 = AnimTime = -3
value = 1
ignorehitpause = 1

[State 1250, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 214 + A - Lv.3

[Statedef 1260]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1260
poweradd = 100

[State 1260, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1260, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1260, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1260, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 1260, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1260, VarAdd];Blood
type = VarAdd
trigger1 = fvar(23) = 3
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1260, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,1
channel = 6
ignorehitpause = 1

[State 1260, HitEffects]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Tornado_11260"
postype = p1
pos = 60,0
pausemovetime = 9999
supermovetime = 9999
stateno = 11260
ID = 11260
ignorehitpause = 1

[State 1260, CtrlSet]
type = CtrlSet
trigger1 = AnimTime = -3
value = 1
ignorehitpause = 1

[State 1260, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 214 + B - Lv.3

[Statedef 1270]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1260
poweradd = 100

[State 1270, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1270, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1270, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1270, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 1270, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1270, VarAdd];Blood
type = VarAdd
trigger1 = fvar(23) = 3
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1270, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,1
channel = 6
ignorehitpause = 1

[State 1270, HitEffects]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Tornado_11260"
postype = p1
pos = 120,0
pausemovetime = 9999
supermovetime = 9999
stateno = 11260
ID = 11260
ignorehitpause = 1

[State 1270, CtrlSet]
type = CtrlSet
trigger1 = AnimTime = -3
value = 1
ignorehitpause = 1

[State 1270, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 214 + C - Lv.3

[Statedef 1280]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1260
poweradd = 100

[State 1280, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1280, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1280, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1280, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 1280, VarSet];Fall.RecoverTime
type = VarSet
trigger1 = Time = 0
fvar(4) = 50
ignorehitpause = 1

[State 1280, VarAdd];Blood
type = VarAdd
trigger1 = fvar(23) = 3
trigger1 = Time = 0
fvar(22) = -12.5
ignorehitpause = 1

[State 1280, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,1
channel = 6
ignorehitpause = 1

[State 1280, HitEffects]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Tornado_11260"
postype = p1
pos = 180,0
pausemovetime = 9999
supermovetime = 9999
stateno = 11260
ID = 11260
ignorehitpause = 1

[State 1280, CtrlSet]
type = CtrlSet
trigger1 = AnimTime = -3
value = 1
ignorehitpause = 1

[State 1280, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 41236 + C - Start

[Statedef 1300]
type = S
movetype = A
physics = S
anim = 1300
ctrl = 0
getpower = 100

[State 1300, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 1300, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 1300, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 1300, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 1300, Hitdef]
type = Hitdef
trigger1 = AnimElem = 3
trigger1 = p2stateno != [150,155]
attr = S,ST
hitflag = M
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
p1stateno = 1301
p2stateno = 41300
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0

[State 1300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 41236 + C - Success

[Statedef 1301]
type = S
movetype = A
physics = S
anim = 1301
ctrl = 0

[State 1301, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 1301, VarSet];Damage Correction
type = VarSet
trigger1 = AnimElemTime(13) = 0
fvar(3) = 0.4
ignorehitpause = 1

[State 1301, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(13) = 30
fvar(22) = 12.5
ignorehitpause = 1

[State 1301, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(13) = 30
value = ceil(-25*fvar(0)*(const(data.attack)*0.01))
absolute = 0
kill = 1

[State 1301, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) < 0
pos = 30,0

[State 1301, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(13) < 30
pos = 32,0

[State 1301, TargetState]
type = TargetState
trigger1 = AnimElemTime(4) = 0
value = 41301

[State 1301, TargetState]
type = TargetState
trigger1 = AnimElemTime(13) = 30
value = 41302

[State 1301, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(13) = 30
value = 1
ignorehitpause = 1

[State 1301, Effect]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 10260
postype = p1
pos = 30,-45
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 1301, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,4
channel = 1
ignorehitpause = 1

[State 1301, Effect]
type = Explod
trigger1 = AnimElemTime(8) = 0
anim = 10700
postype = p1
pos = 30,-45
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 1301, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(13) = 30
time = 10
freq = 80
ampl = 5

[State 1301, Effect]
type = Explod
trigger1 = AnimElemTime(13) = 30
anim = 10530
postype = p1
pos = 30,-45
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 1301, Effect]
type = Explod
trigger1 = AnimElemTime(13) = 30
anim = 10701
postype = p1
pos = 30,-45
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 1301, Effect]
type = Explod
trigger1 = AnimElemTime(13) = 30
anim = 10701
postype = p1
pos = 30,-45
facing = -1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 1301, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(13) = 30
value = s3,5
channel = 1
ignorehitpause = 1

[State 1301, Projectile]
type = Projectile
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(13) = 30
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10710
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10710
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10710
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10710
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10710
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10710
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10711
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10711
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10711
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10711
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10711
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10712
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10712
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10712
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10712
ignorehitpause = 1

[State 1301, Helper]
type = Helper
trigger1 = AnimElemTime(13) = 30
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10710
ID = 10712
ignorehitpause = 1

[State 1301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 641236 + A

[Statedef 6000]
type = S
movetype = A
physics = S
anim = 6000
ctrl = 0

[State 6000, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6000, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6000, NotHitBy]
type = Null;NotHitBy
trigger1 = AnimElem = 2
value = SCA
time = 1
ignorehitpause = 1

[State 6000, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 0
time = 40
movetime = 40
anim = -1
sound = s4,1
darken = 0
p2defmul = 1

[State 6000, Helper]	;SuperPause
type = Helper
trigger1 = AnimElemTime(3) = 0
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

[State 6000, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(5) < 35
flag = NoBG
ignorehitpause = 1

[State 6000, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 1
anim = 10300
postype = p1
pos = 33,-86
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6000, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(2) = 0
value = -1000
ignorehitpause = 1

[State 6000, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(2) = 0
trigger1 = p2stateno != [150,155]
attr = S,HT
hitflag = M
guardflag = 
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
priority = 7, Hit
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
p1stateno = 6001
p2stateno = 40510
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0

[State 6000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 413641236 + A - Success

[Statedef 6001]
type = S
movetype = A
physics = S
anim = 6001
ctrl = 0

[State 6001, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.5
ignorehitpause = 1

[State 6001, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 40
movetime = 40
anim = -1
sound = s4,1
darken = 0
p2defmul = 1
p2defmul = 1
unhittable = 1

[State 6001, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBG
ignorehitpause = 1

[State 6001, Explod]
type = Explod
trigger1 = Time = 0
anim = 10300
postype = p1
pos = 33,-86
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6001, TargetState]
type = TargetState
trigger1 = AnimElemTime(1) = 0
value = 40510

[State 6001, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
pos = 26,-89

[State 6001, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
pos = 34,-97

[State 6001, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3) = 0
pos = 35,-98

[State 6001, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) < 38
flag = NoBG
ignorehitpause = 1

[State 6001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 6002

;----------------------------------------------------------------------
; 413641236 + A - Success

[Statedef 6002]
type = S
movetype = A
physics = S
anim = 6002
ctrl = 0

[State 6002, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.5
ignorehitpause = 1

[State 6002, TargetState]
type = TargetState
trigger1 = Time = 0
value = 46002

[State 6002, TargetState]
type = TargetState
trigger1 = Time = 100
value = 40510

[State 6002, TargetBind]
type = TargetBind
trigger1 = 1
pos = 35,-98

[State 6002, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 50
freq = 100
ampl = 5

[State 6002, Effect]
type = Explod
trigger1 = Time = 0
anim = 16000
postype = p1
pos = 10,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 6002, Effect]
type = Explod
trigger1 = Time = 0
anim = 16000
postype = p1
pos = 10,-150
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 6002, Effect]
type = Explod
triggerall = Time = [0,100]
trigger1 = Time % 5 = 0
anim = 10260
postype = p1
pos = 30,-60
random = 30,30
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 1301, Effect]
type = Explod
triggerall = Time = [0,100]
trigger1 = Time % 5 = 0
trigger1 = Random % 2 = 0
anim = 10700
postype = p1
pos = 30,-60
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 7

[State 1301, Effect]
type = Explod
triggerall = Time = [0,100]
trigger1 = Time % 5 = 0
trigger1 = Random % 2 = 1
anim = 10700
postype = p1
pos = 30,-60
facing = -1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 7

[State -2, Blood]
type = Helper
triggerall = Time = [0,100]
trigger1 = Time % 5 = 0
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10750
ID = 10750
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = Time = [0,100]
trigger1 = Time % 5 = 0
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10750
ID = 10750
ignorehitpause = 1

[State 6002, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,7
ignorehitpause = 1

[State 6002, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,8
ignorehitpause = 1

[State 6002, PlaySnd]
type = PlaySnd
triggerall = Time = [0,100]
trigger1 = Time % 5 = 0
value = s1,2
channel = 2
ignorehitpause = 1

[State 6002, ChangeState]
type = ChangeState
trigger1 = Time >= 130
value = 6003

;----------------------------------------------------------------------
; 413641236 + A - Success

[Statedef 6003]
type = S
movetype = A
physics = S
anim = 6003
ctrl = 0

[State 6003, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.5
ignorehitpause = 1

[State 6003, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
pos = 13,-82

[State 6003, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) = 0
value = 46003

[State 6003, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
pos = 16,-6

[State 6003, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(2) = 0
value = ceil(ifelse(var(30) = 1,-280,-200)*fvar(0)*(const(data.attack)*0.01))
absolute = 0
kill = 1

[State 6003, Projectile]
type = Projectile
trigger1 = AnimElemTime(2) = 1
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 6003, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(2) = 0
value = 1
ignorehitpause = 1

[State 6003, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 641236 + B

[Statedef 6010]
type = S
movetype = A
physics = S
anim = 6000
ctrl = 0

[State 6010, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6010, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6010, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6010, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6010, NotHitBy]
type = Null;NotHitBy
trigger1 = AnimElem = 2
value = SCA
time = 1
ignorehitpause = 1

[State 6010, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 0
time = 40
movetime = 40
anim = -1
sound = s4,2
darken = 0
p2defmul = 1

[State 6010, Helper]	;SuperPause
type = Helper
trigger1 = AnimElemTime(3) = 0
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

[State 6010, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(5) < 35
flag = NoBG
ignorehitpause = 1

[State 6010, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 1
anim = 10310
postype = p1
pos = 33,-86
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6010, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(2) = 0
value = -2000
ignorehitpause = 1

[State 6010, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(2) = 0
trigger1 = p2stateno != [150,155]
attr = S,HT
hitflag = M
guardflag = 
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
priority = 7, Hit
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
p1stateno = 6011
p2stateno = 40510
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0

[State 6010, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 413641236 + B - Success

[Statedef 6011]
type = S
movetype = A
physics = S
anim = 6001
ctrl = 0

[State 6011, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.5
ignorehitpause = 1

[State 6011, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 40
movetime = 40
anim = -1
sound = s4,2
darken = 0
p2defmul = 1
p2defmul = 1
unhittable = 1

[State 6011, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBG
ignorehitpause = 1

[State 6011, Explod]
type = Explod
trigger1 = Time = 0
anim = 10310
postype = p1
pos = 33,-86
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6011, TargetState]
type = TargetState
trigger1 = AnimElemTime(1) = 0
value = 40510

[State 6011, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
pos = 26,-89

[State 6011, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
pos = 34,-97

[State 6011, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3) = 0
pos = 35,-98

[State 6011, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) < 38
flag = NoBG
ignorehitpause = 1

[State 6011, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 6012

;----------------------------------------------------------------------
; 413641236 + B - Success

[Statedef 6012]
type = S
movetype = A
physics = S
anim = 6002
ctrl = 0

[State 6012, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.5
ignorehitpause = 1

[State 6012, TargetState]
type = TargetState
trigger1 = Time = 0
value = 46002

[State 6012, TargetState]
type = TargetState
trigger1 = Time = 150
value = 40510

[State 6012, TargetBind]
type = TargetBind
trigger1 = 1
pos = 35,-98

[State 6012, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 50
freq = 100
ampl = 5

[State 6012, Effect]
type = Explod
trigger1 = Time = 0
anim = 16001
postype = p1
pos = 10,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 6012, Effect]
type = Explod
trigger1 = Time = 0
anim = 16001
postype = p1
pos = 10,-150
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 6012, Effect]
type = Explod
triggerall = Time = [0,150]
trigger1 = Time % 5 = 0
anim = 10260
postype = p1
pos = 30,-60
random = 30,30
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 6012, Effect]
type = Explod
triggerall = Time = [0,150]
trigger1 = Time % 5 = 0
trigger1 = Random % 2 = 0
anim = 10700
postype = p1
pos = 30,-60
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 6012, Effect]
type = Explod
triggerall = Time = [0,150]
trigger1 = Time % 5 = 0
trigger1 = Random % 1 = 0
anim = 10700
postype = p1
pos = 30,-60
facing = -1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State -2, Blood]
type = Helper
triggerall = Time = [0,150]
trigger1 = Time % 5 = 0
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10750
ID = 10750
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = Time = [0,150]
trigger1 = Time % 5 = 0
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10750
ID = 10750
ignorehitpause = 1

[State 6012, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,7
ignorehitpause = 1

[State 6012, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,8
ignorehitpause = 1

[State 6012, PlaySnd]
type = PlaySnd
triggerall = Time = [0,150]
trigger1 = Time % 5 = 0
value = s1,2
channel = 2
ignorehitpause = 1

[State 6012, ChangeState]
type = ChangeState
trigger1 = Time >= 180
value = 6013

;----------------------------------------------------------------------
; 413641236 + B - Success

[Statedef 6013]
type = S
movetype = A
physics = S
anim = 6003
ctrl = 0

[State 6013, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.5
ignorehitpause = 1

[State 6013, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
pos = 13,-82

[State 6013, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) = 0
value = 46003

[State 6013, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
pos = 16,-6

[State 6013, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(2) = 0
value = ceil(ifelse(var(30) = 1,-380,-300)*fvar(0)*(const(data.attack)*0.01))
absolute = 0
kill = 1

[State 6013, Projectile]
type = Projectile
trigger1 = AnimElemTime(2) = 1
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 6013, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(2) = 0
value = 1
ignorehitpause = 1

[State 6013, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 641236 + C

[Statedef 6020]
type = S
movetype = A
physics = S
anim = 6020
ctrl = 0

[State 6020, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6020, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6020, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6020, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6020, NotHitBy]
type = NotHitBy
trigger1 = Time < 5
value = SCA
time = 1
ignorehitpause = 1

[State 6020, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 0
time = 40
movetime = 40
anim = -1
sound = s4,3
darken = 0
p2defmul = 1

[State 6020, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s4,4
ignorehitpause = 1

[State 6020, Helper]	;SuperPause
type = Helper
trigger1 = AnimElemTime(3) = 0
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

[State 6020, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(3) >= 0
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6020, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(5) < 35
flag = NoBG
ignorehitpause = 1

[State 6020, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 1
anim = 10320
postype = p1
pos = 33,-86
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6020, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(2) = 0
value = -3000
ignorehitpause = 1

[State 6020, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(2) = 0
trigger1 = p2stateno != [150,155]
attr = S,HT
hitflag = M
guardflag = 
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
priority = 7, Hit
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
p1stateno = 6021
p2stateno = 40510
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0

[State 6020, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 413641236 + C - Success

[Statedef 6021]
type = S
movetype = A
physics = S
anim = 6001
ctrl = 0

[State 6021, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.5
ignorehitpause = 1

[State 6021, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6021, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 40
movetime = 40
anim = -1
sound = s4,3
darken = 0
p2defmul = 1
p2defmul = 1
unhittable = 1

[State 6021, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s4,4
ignorehitpause = 1

[State 6021, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBG
ignorehitpause = 1

[State 6021, Explod]
type = Explod
trigger1 = Time = 0
anim = 10320
postype = p1
pos = 33,-86
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6021, TargetState]
type = TargetState
trigger1 = AnimElemTime(1) = 0
value = 40510

[State 6021, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
pos = 26,-89

[State 6021, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
pos = 34,-97

[State 6021, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3) = 0
pos = 35,-98

[State 6021, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) < 38
flag = NoBG
ignorehitpause = 1

[State 6021, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 6022

;----------------------------------------------------------------------
; 413641236 + C - Success

[Statedef 6022]
type = S
movetype = A
physics = S
anim = 6002
ctrl = 0

[State 6022, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.5
ignorehitpause = 1

[State 6022, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6022, TargetState]
type = TargetState
trigger1 = Time = 0
value = 46002

[State 6022, TargetState]
type = TargetState
trigger1 = Time = 150
value = 40510

[State 6022, TargetBind]
type = TargetBind
trigger1 = 1
pos = 35,-98

[State 6022, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 50
freq = 100
ampl = 5

[State 6022, Effect]
type = Explod
trigger1 = Time = 0
anim = 16001
postype = p1
pos = 10,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 6022, Effect]
type = Explod
trigger1 = Time = 0
anim = 16001
postype = p1
pos = 10,-150
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 6022, Effect]
type = Explod
triggerall = Time = [0,150]
trigger1 = Time % 5 = 0
anim = 10260
postype = p1
pos = 30,-60
random = 30,30
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 6022, Effect]
type = Explod
triggerall = Time = [0,150]
trigger1 = Time % 5 = 0
anim = 10701
postype = p1
pos = 30,-60
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 2

[State 6022, Blood]
type = Helper
triggerall = Time = [0,150]
trigger1 = Time % 5 = 0
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10760
ID = 10760+(Random%2)
ignorehitpause = 1

[State 6022, Blood]
type = Helper
triggerall = Time = [0,150]
trigger1 = Time % 5 = 0
helpertype = normal
name = "Blood"
postype = p1
pos = 30,-40
pausemovetime = 9999
supermovetime = 9999
stateno = 10760
ID = 10760+(Random%2)
ignorehitpause = 1

[State 6022, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,7
ignorehitpause = 1

[State 6022, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,8
ignorehitpause = 1

[State 6022, PlaySnd]
type = PlaySnd
triggerall = Time = [0,150]
trigger1 = Time % 5 = 0
value = s1,2
channel = 2
ignorehitpause = 1

[State 6022, ChangeState]
type = ChangeState
trigger1 = Time >= 180
value = 6023

;----------------------------------------------------------------------
; 413641236 + C - Success

[Statedef 6023]
type = S
movetype = A
physics = S
anim = 6003
ctrl = 0

[State 6023, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0.5
ignorehitpause = 1

[State 6023, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6023, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
pos = 13,-82

[State 6023, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) = 0
value = 46003

[State 6023, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
pos = 16,-6

[State 6023, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(2) = 0
value = ceil(ifelse(var(30) = 1,-550,-410)*fvar(0)*(const(data.attack)*0.01))
absolute = 0
kill = 1

[State 6023, Projectile]
type = Projectile
trigger1 = AnimElemTime(2) = 1
projID = 31500
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 6023, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(2) = 0
value = 1
ignorehitpause = 1

[State 6023, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + A

[Statedef 6100]
type = S
movetype = A
physics = S
anim = 6100
ctrl = 0

[State 6100, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6100, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6100, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6100, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6100, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(13) = 0
var(31) = 1
ignorehitpause = 1

[State 6100, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(2) = 1
time = 40
movetime = 40
anim = -1
sound = s4,1
darken = 0
p2defmul = 1

[State 6100, Helper]	;SuperPause
type = Helper
trigger1 = AnimElemTime(2) = 1
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

[State 6100, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(11) < 7
flag = NoBG
ignorehitpause = 1

[State 6100, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 1
anim = 10300
postype = p1
pos = 0,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6100, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(2) = 1
value = -1000
ignorehitpause = 1

[State 6100, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s1,4
ignorehitpause = 1

[State 6100, Explod]
type = Explod
trigger1 = AnimElemTime(4) = -1
anim = 10230
postype = p1
pos = 18,-40
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6100, Explod]
type = Explod
trigger1 = AnimElemTime(13) = 0
anim = 16100
postype = p1
pos = 40,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -7

[State 6100, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(13) = 0
value = s3,10
ignorehitpause = 1

[State 6100, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 6100, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = Time = 0
var(17) = 0
ignorehitpause = 1

[State 6100, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = var(17) = 1
trigger1 = AnimElemTime(15) >= 0
var(16) = 1
ignorehitpause = 1

[State 6100, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = command = "22c"
trigger1 = AnimElemTime(15) >= 0
trigger1 = AnimElemTime(19) < 0
var(17) = 1
ignorehitpause = 1

[State 6100, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = AnimElemTime(19) >= 0
var(17) = 0
ignorehitpause = 1

[State 6100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + A

[Statedef 6101]
type = S
movetype = A
physics = S
anim = 6101
ctrl = 0

[State 6101, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6101, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6101, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6101, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6101, VarSet]
type = VarSet
trigger1 = Time = 0
var(31) = 0
ignorehitpause = 1

[State 6101, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 40
movetime = 40
anim = -1
sound = s4,1
darken = 0
p2defmul = 1

[State 6101, Helper]	;SuperPause
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

[State 6101, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 1
trigger1 = AnimElemTime(6) < 2
flag = NoBG
ignorehitpause = 1

[State 6101, NotHitBy]
type = NotHitBy
trigger1 = Time < 12
value = SCA
time = 1
ignorehitpause = 1

[State 6101, Explod]
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

[State 6101, HitEffects]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Gaizer_16100"
postype = p1
pos = ceil(P2Dist X),0
pausemovetime = 9999
supermovetime = 9999
stateno = 16100
ID = 16100
ignorehitpause = 1

[State 6101, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 6110]
type = S
movetype = A
physics = S
anim = 6110
ctrl = 0

[State 6110, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6110, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6110, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6110, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6110, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(13) = 0
var(31) = 2
ignorehitpause = 1

[State 6110, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(2) = 1
time = 40
movetime = 40
anim = -1
sound = s4,2
darken = 0
p2defmul = 1

[State 6110, Helper]	;SuperPause
type = Helper
trigger1 = AnimElemTime(2) = 1
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

[State 6110, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(11) < 7
flag = NoBG
ignorehitpause = 1

[State 6110, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 1
anim = 10310
postype = p1
pos = 0,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6110, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(2) = 1
value = -2000
ignorehitpause = 1

[State 6110, NotHitBy]
type = NotHitBy
trigger1 = Time < 4
value = SCA
time = 1
ignorehitpause = 1

[State 6110, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s1,4
ignorehitpause = 1

[State 6110, Explod]
type = Explod
trigger1 = AnimElemTime(4) = -1
anim = 10230
postype = p1
pos = 18,-40
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6110, Explod]
type = Explod
trigger1 = AnimElemTime(13) = 0
anim = 16100
postype = p1
pos = 40,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -7

[State 6110, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(13) = 0
value = s3,10
ignorehitpause = 1

[State 6110, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 6110, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = Time = 0
var(17) = 0
ignorehitpause = 1

[State 6110, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = var(17) = 1
trigger1 = AnimElemTime(15) >= 0
var(16) = 1
ignorehitpause = 1

[State 6110, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = command = "22c"
trigger1 = AnimElemTime(15) >= 0
trigger1 = AnimElemTime(19) < 0
var(17) = 1
ignorehitpause = 1

[State 6110, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = AnimElemTime(19) >= 0
var(17) = 0
ignorehitpause = 1

[State 6110, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 6111]
type = S
movetype = A
physics = S
anim = 6101
ctrl = 0

[State 6111, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6111, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6111, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6111, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6111, VarSet]
type = VarSet
trigger1 = Time = 0
var(31) = 0
ignorehitpause = 1

[State 6111, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 40
movetime = 40
anim = -1
sound = s4,2
darken = 0
p2defmul = 1

[State 6111, Helper]	;SuperPause
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

[State 6111, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 1
trigger1 = AnimElemTime(6) < 2
flag = NoBG
ignorehitpause = 1

[State 6111, NotHitBy]
type = NotHitBy
trigger1 = Time < 12
value = SCA
time = 1
ignorehitpause = 1

[State 6111, Explod]
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

[State 6111, HitEffects]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Gaizer_16110"
postype = p1
pos = ceil(P2Dist X),0
pausemovetime = 9999
supermovetime = 9999
stateno = 16110
ID = 16110
ignorehitpause = 1

[State 6111, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 6120]
type = S
movetype = A
physics = S
anim = 6120
ctrl = 0

[State 6120, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6120, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6120, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6120, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(13) = 0
var(31) = 3
ignorehitpause = 1

[State 6120, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(2) = 1
time = 40
movetime = 40
anim = -1
sound = s4,3
darken = 0
p2defmul = 1

[State 6120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = s4,4
ignorehitpause = 1

[State 6120, Helper]	;SuperPause
type = Helper
trigger1 = AnimElemTime(2) = 1
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

[State 6120, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(11) < 7
flag = NoBG
ignorehitpause = 1

[State 6120, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 1
anim = 10320
postype = p1
pos = 0,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6120, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(2) = 1
value = -3000
ignorehitpause = 1

[State 6120, NotHitBy]
type = NotHitBy
trigger1 = Time < 7
value = SCA
time = 1
ignorehitpause = 1

[State 6120, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(2) > 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s1,4
ignorehitpause = 1

[State 6120, Explod]
type = Explod
trigger1 = AnimElemTime(4) = -1
anim = 10230
postype = p1
pos = 18,-40
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6120, Explod]
type = Explod
trigger1 = AnimElemTime(13) = 0
anim = 16100
postype = p1
pos = 40,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -7

[State 6120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(13) = 0
value = s3,10
ignorehitpause = 1

[State 6120, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 6120, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = Time = 0
var(17) = 0
ignorehitpause = 1

[State 6120, VarSet];Flicker Instant Charge Flag
type = VarSet
trigger1 = var(17) = 1
trigger1 = AnimElemTime(15) >= 0
var(16) = 1
ignorehitpause = 1

[State 6120, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = command = "22c"
trigger1 = AnimElemTime(15) >= 0
trigger1 = AnimElemTime(19) < 0
var(17) = 1
ignorehitpause = 1

[State 6120, VarSet];Flicker Instant Charge Input Flag
type = VarSet
trigger1 = AnimElemTime(19) >= 0
var(17) = 0
ignorehitpause = 1

[State 6120, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 6121]
type = S
movetype = A
physics = S
anim = 6101
ctrl = 0

[State 6121, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6121, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6121, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6121, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6121, VarSet]
type = VarSet
trigger1 = Time = 0
var(31) = 0
ignorehitpause = 1

[State 6121, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(3) = 1
time = 40
movetime = 40
anim = -1
sound = s4,3
darken = 0
p2defmul = 1

[State 6120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = s4,4
ignorehitpause = 1

[State 6121, Helper]	;SuperPause
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

[State 6121, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 1
trigger1 = AnimElemTime(6) < 2
flag = NoBG
ignorehitpause = 1

[State 6121, NotHitBy]
type = NotHitBy
trigger1 = Time < 12
value = SCA
time = 1
ignorehitpause = 1

[State 6121, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(3) > 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 6121, Explod]
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

[State 6121, HitEffects]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Gaizer_16120"
postype = p1
pos = ceil(P2Dist X),0
pausemovetime = 9999
supermovetime = 9999
stateno = 16120
ID = 16120
ignorehitpause = 1

[State 6121, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 214214 + A

[Statedef 6200]
type = S
movetype = A
physics = S
anim = 6200
ctrl = 0

[State 6200, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6200, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6200, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6200, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 40
movetime = 40
anim = -1
sound = s4,1
darken = 0
p2defmul = 1
p2defmul = 1

[State 6200, Helper]	;SuperPause
type = Helper
trigger1 = Time = 0
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

[State 6200, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(11) < 1
flag = NoBG
ignorehitpause = 1

[State 6200, Explod]
type = Explod
trigger1 = Time = 0
anim = 10300
postype = p1
pos = 0,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6200, PowerAdd]
type = PowerAdd
trigger1 = Time = 0
value = -1000
ignorehitpause = 1

[State 6200, HitEffects]
type = Helper
trigger1 = AnimElemTime(11) = 0
helpertype = normal
name = "Mirror_16200"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 16200
ID = 16200
ignorehitpause = 1

[State 6200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 214214 + B

[Statedef 6210]
type = S
movetype = A
physics = S
anim = 6200
ctrl = 0

[State 6210, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6210, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6210, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6210, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 40
movetime = 40
anim = -1
sound = s4,1
darken = 0
p2defmul = 1
p2defmul = 1

[State 6210, Helper]	;SuperPause
type = Helper
trigger1 = Time = 0
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

[State 6210, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(11) < 1
flag = NoBG
ignorehitpause = 1

[State 6210, Explod]
type = Explod
trigger1 = Time = 0
anim = 10300
postype = p1
pos = 0,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6210, PowerAdd]
type = PowerAdd
trigger1 = Time = 0
value = -1000
ignorehitpause = 1

[State 6210, HitEffects]
type = Helper
trigger1 = AnimElemTime(11) = 0
helpertype = normal
name = "Mirror_16210"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 16210
ID = 16210
ignorehitpause = 1

[State 6210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 214214 + C

[Statedef 6220]
type = S
movetype = A
physics = S
anim = 6200
ctrl = 0

[State 6220, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 6220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 6220, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 6220, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 6220, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 40
movetime = 40
anim = -1
sound = s4,1
darken = 0
p2defmul = 1
p2defmul = 1

[State 6220, Helper]	;SuperPause
type = Helper
trigger1 = Time = 0
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

[State 6220, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(11) < 1
flag = NoBG
ignorehitpause = 1

[State 6220, Explod]
type = Explod
trigger1 = Time = 0
anim = 10300
postype = p1
pos = 0,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 6220, PowerAdd]
type = PowerAdd
trigger1 = Time = 0
value = -1000
ignorehitpause = 1

[State 6220, HitEffects]
type = Helper
trigger1 = AnimElemTime(11) = 0
helpertype = normal
name = "Mirror_16220"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 16220
ID = 16220
ignorehitpause = 1

[State 6220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 236236236 + C

[Statedef 7000]
type = S
movetype = A
physics = N
velset = 0,0
anim = 7000
ctrl = 0

[State 7000, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 6
ignorehitpause = 1

[State 7000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 7000, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 7000, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 7000, VarSet];SIGNAL INITIALIZE
type = VarSet
trigger1 = Time = 0
var(10) = 0
ignorehitpause = 1

[State 7000, VarSet];SIGNAL INITIALIZE
type = VarSet
trigger1 = Time = 0
var(11) = 0
ignorehitpause = 1

[State 7000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 7000, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(1) = 0
time = 40
movetime = 40
anim = -1
sound = s4,3
darken = 0
p2defmul = 1

[State 7000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s4,4
ignorehitpause = 1

[State 7000, Helper]	;SuperPause
type = Helper
trigger1 = AnimElemTime(1) = 0
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

[State 7000, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(1) >= 0
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 7000, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(11) < 0
flag = NoBG
ignorehitpause = 1

[State 7000, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 10320
postype = p1
pos = 10,-20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 7000, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 10330
postype = p1
pos = 10,-20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 7000, PowerAdd]
type = PowerAdd
trigger1 = AnimElemTime(1) = 0
value = -3000
ignorehitpause = 1

[State 7000, Hitdef]
type = Hitdef
triggerall = var(4) = 1
trigger1 = AnimElem = 13
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 0,0
getpower = 0,0
givepower = 100,50
pausetime = 0,0
guard.pausetime = 0,10
sparkno = S10260
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
ground.velocity = (2.0-fvar(0))*0,-12
guard.velocity = -5
air.velocity = 0,-12
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.35
p1stateno = 7002
p2stateno = 47000
p2facing = 1

[State 7000, VelSet]
type = VelSet
trigger1 = AnimElemTime(13) >= 0
x = 8.0

[State 7000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = var(1) = 2
value = 7001

;----------------------------------------------------------------------
; 236236236 + C

[Statedef 7001]
type = S
movetype = A
physics = N
anim = 7001
ctrl = 0

[State 7001, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 7001, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 7001, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 7001, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 7001, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 7001, VelMul]
type = VelMul
trigger1 = Vel X > 0
trigger1 = Time % 2 = 0
x = 0.9
ignorehitpause = 1

[State 7001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; 236236236 + C

[Statedef 7002]
type = S
movetype = A
physics = N
anim = 99990
ctrl = 0

[State 7002, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 0
ignorehitpause = 1

[State 7002, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 7002, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 7002, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 7002, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 7002, ScreenBound]
type = ScreenBound
triggerall = NumTarget
trigger1 = Facing = 1
trigger1 = ceil(Target,ScreenPos X) > 160
trigger2 = Facing = -1
trigger2 = ceil(Target,ScreenPos X) < 160
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 7002, ScreenBound]
type = ScreenBound
triggerall = NumTarget
trigger1 = Facing = 1
trigger1 = ceil(Target,ScreenPos X) < 160
trigger2 = Facing = -1
trigger2 = ceil(Target,ScreenPos X) > 160
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 7002, PosAdd]
type = PosAdd
trigger1 = Time = 30
x = ceil(P2Dist X)
ignorehitpause = 1

[State 7002, VelSet]
type = VelSet
trigger1 = Time = 30
x = 0
ignorehitpause = 1

[State 7002, Helper]
type = Helper
trigger1 = Time = 30
helpertype = normal
name = "Dummy"
ID = 17000
postype = p1
pos = ceil(P2Dist X)-200,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17000
ignorehitpause = 1

[State 7002, Helper]
type = Helper
trigger1 = Time = 55
helpertype = normal
name = "Dummy"
ID = 17001
postype = p1
pos = ceil(P2Dist X)+200,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17000
facing = -1
ignorehitpause = 1

[State 7002, Helper]
type = Helper
trigger1 = Time = 80
helpertype = normal
name = "Dummy"
ID = 17002
postype = p1
pos = ceil(P2Dist X)-100,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17000
ignorehitpause = 1

[State 7002, Helper]
type = Helper
trigger1 = Time = 105
helpertype = normal
name = "Dummy"
ID = 17003
postype = p1
pos = ceil(P2Dist X)+100,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17000
facing = -1
ignorehitpause = 1

[State 7002, ChangeState]
type = ChangeState
trigger1 = Time >= 105
trigger1 = ceil(P2Dist Y) > -160
value = 7003

;----------------------------------------------------------------------
; 236236236 + C

[Statedef 7003]
type = S
movetype = A
physics = S
anim = 7003
velset = 0,0
ctrl = 0
sprpriority = 3

[State 7003, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 6
ignorehitpause = 1

[State 7003, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 7003, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 7003, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 7003, VarSet];SIGNAL SUBMIT
type = VarSet
trigger1 = Time = 0
var(10) = 1
ignorehitpause = 1

[State 7003, VarSet];SIGNAL SUBMIT
type = VarSet
trigger1 = Time = 5
var(10) = 0
ignorehitpause = 1

[State 7003, SuperPause]
type = SuperPause
trigger1 = AnimElemTime(1) = 0
time = 40
movetime = 40
anim = -1
sound = s4,3
darken = 0
p2defmul = 1

[State 7003, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s4,4
ignorehitpause = 1

[State 7003, Helper]	;SuperPause
type = Helper
trigger1 = AnimElemTime(1) = 0
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

[State 7003, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) < 0
flag = NoBG
ignorehitpause = 1

[State 7003, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 10320
postype = p1
pos = 0,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 7003, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 10330
postype = p1
pos = 0,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 7003, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(8) < 0
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[State 7003, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 17004
postype = p1
pos = 0,10
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 7003, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s1,6
ignorehitpause = 1

[State 7003, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(3) = 0
time = 20
freq = 80
ampl = 8

[State 7003, Hitdef]
type = Hitdef
trigger1 = AnimElem = 4
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(320*fvar(0)),0
getpower = 0,0
givepower = 0,0
pausetime = 0,0
guard.pausetime = 0,10
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,(-50+ceil(P2Dist Y))+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = (2.0-fvar(0))*0,-20
guard.velocity = -5
air.velocity = 0,-20
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = ceil(fvar(6))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4
p2stateno = 47002
p2facing = 1

[State 7003, Helper]
type = Helper
trigger1 = AnimElemTime(27) = 0
helpertype = normal
name = "Haruka_17001"
ID = 17010
postype = p1
pos = -300,-240
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17010
sprpriority = 3
ignorehitpause = 1

[State 7003, Helper]
type = Helper
trigger1 = AnimElemTime(27) = 0
helpertype = normal
name = "Yui_17001"
ID = 17011
postype = p1
pos = -150,-360
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17010
sprpriority = 4
ignorehitpause = 1

[State 7003, Helper]
type = Helper
trigger1 = AnimElemTime(27) = 0
helpertype = normal
name = "Yoko_17001"
ID = 17012
postype = p1
pos = 300,-240
ownpal = 1
facing = -1
pausemovetime = 0
supermovetime = 0
stateno = 17010
sprpriority = 1
ignorehitpause = 1

[State 7003, Helper]
type = Helper
trigger1 = AnimElemTime(27) = 0
helpertype = normal
name = "Boy_17001"
ID = 17013
postype = p1
pos = 150,-360
ownpal = 1
facing = -1
pausemovetime = 0
supermovetime = 0
stateno = 17010
sprpriority = 0
ignorehitpause = 1

[State 7003, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(27) >= 0
trigger1 = var(11) = 4
value = 7004

;----------------------------------------------------------------------
; 236236236 + C

[Statedef 7004]
type = S
movetype = A
physics = S
anim = 7004
velset = 0,0
ctrl = 0

[State 7004, VarSet];Hitsound and effects select
type = VarSet
trigger1 = Time = 0
var(0) = 6
ignorehitpause = 1

[State 7004, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(1) = 0
ignorehitpause = 1

[State 7004, VarSet];MoveContact initialize
type = VarSet
trigger1 = Time = 0
var(2) = 0
ignorehitpause = 1

[State 7004, VarSet];Damage Correction
type = VarSet
trigger1 = Time = 0
fvar(3) = 0
ignorehitpause = 1

[State 7004, VarSet];SIGNAL INITIALIZE
type = VarSet
trigger1 = Time = 0
var(10) = 0
ignorehitpause = 1

[State 7004, VarSet];SIGNAL INITIALIZE
type = VarSet
trigger1 = Time = 0
var(11) = 0
ignorehitpause = 1

[State 7004, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

