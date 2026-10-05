;============================== POWER WAVE =====================================
[Statedef 2000]
type = S
physics = S
movetype = A
anim = 2000
ctrl = 0
velset = 0, 0
poweradd = -500
sprpriority = 1
facep2 = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = 20,-140
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1000, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "QCF_z", 3, ifelse(command = "QCF_y", 2, 1))

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = s1000,0
channel = 0

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(5) = 1
value = s1080,0
channel = 5

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
stateno = ifelse(var(40),2083,2080)
ID = 2090
name = "PowerWave"
postype = p1
pos = 125, 0
size.xscale = 1
size.yscale = 1
ownpal = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================ BURN KNUCKLE EX ==================================
[Statedef 2100]
type    = S
movetype = A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 2100
poweradd = -500
sprpriority = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = -10,-175
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1000,1
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = S1080,2
channel = 2

[State 1000, 1]
type = posadd
trigger1 = AnimElemtime(6) = 0
x = 16

[State 1000, 1]
type = posadd
trigger1 = AnimElemtime(7) = 0
x = 14

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 8
x = 32

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(8) >= 0
value = SCA,NP,SP
time = 1
ignorehitpause = 1

[State 210, Hit]
type = hitdef
trigger1 = !time
attr = S, SA
damage = 165,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=163), var(36):=-169
hitsound = s1,2
guardsound = s2,1
ground.type = high
pausetime = 14,14
guard.pausetime = 14,14
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -10,-13
guard.velocity = -16
air.velocity = -10,-11
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
persistent = 0
getpower = 0,0
givepower = 70,35
yaccel = 1
fall.recover = 1
envshake.time=12
envshake.ampl=4
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 0, Explod]
type = Explod
trigger1 = animelemtime(8) = 0
anim = 1180
ID = 1180
pos = 71*2*Const(size.xscale),-84*2*Const(size.yscale)
postype = p1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = 1*Const(size.xscale),1*Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(9) = 0
anim = 1181
ID = 2181
pos = 83*2*Const(size.xscale),-84*2*Const(size.yscale)
postype = p1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = 1*Const(size.xscale),1*Const(size.yscale)
Sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 0, Explod]
type = Explod
;triggerall = animelemtime(6) >= 0
trigger1 = time = 22;Pos Y >= 0 && Vel Y > 0
anim = 1182
ID = 2182
pos = 83*2*Const(size.xscale),-84*2*Const(size.yscale)
postype = p1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = 1*Const(size.xscale),1*Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 0, RemoveExplod]
type = RemoveExplod
;triggerall = animelemtime(6) >= 0
trigger1 = time = 22;Pos Y >= 0 && Vel Y > 0
id =  2181
ignorehitpause = 1

[State 1100, ChangeState]
type = ChangeState
;triggerall = animelemtime(6) >= 0
trigger1 = time = 22;Pos Y >= 0 && Vel Y > 0
value = 1150
;============================= RISING TACKLE EX ================================
[Statedef 2200]
type = S
physics = S
movetype = A
anim = 2200
ctrl = 0
velset = 0, 0
poweradd = -500
juggle = 0
sprpriority = 1
facep2 = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = 20,-115
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 810, HitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
value = SCA

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1000,2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = s0,5
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
value = s0,3
channel = -1

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 1
x = 9

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(6) = 0
x = 10

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 9
y = -20

[State 1100, Velocity]
type = VelAdd
trigger1 = animelemtime(6) > 0
y = 1
ignorehitpause = 0

[State 1100, Velocity]
type = VelMul
trigger1 = animelemtime(6) > 0
x = .9

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 18
x = 0

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 4
StateType = A
physics = N

[State 0, Explod]
type = Explod
trigger1 = numexplod(7102) = 0
trigger1 = animelemtime(6) = 0
anim = 7102
ID = 7102
pos = 35,10
postype = p1
facing = 1
bindtime = 1
scale = .75,1
sprpriority = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1
removetime = -2
trans = add

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 45,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=80), var(36):=-100
hitsound = s1,5
guardsound = s2,1
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 1,-6
guard.velocity = -8
air.velocity = 1,-5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 12
envshake.ampl = 4
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = 1
persistent = 0
getpower = 0,0
givepower = 20,10
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
trigger6 = AnimElem = 16
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 17,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 3,3
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=90), var(36):=-200
hitsound = s1,5
guardsound = s2,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
air.velocity = -1,((vel y)-1)
guard.velocity = -8
airguard.velocity = -12,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = 1
persistent = 1
getpower = 0,0
givepower = 20,10
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 17
attr = S, SA
animtype  = up
air.animtype = back
fall.animtype = back
damage = 28,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 3,3
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=90), var(36):=-200
hitsound = s1,5
guardsound = s2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
air.velocity = -1,-10
guard.velocity = -8
airguard.velocity = -4,-4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = 1.2
persistent = 1
getpower = 0,0
givepower = 20,10
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 18
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1250

;============================= CRACK SHOOT EX ==================================
[Statedef 2300]
type = S
movetype = A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
poweradd = -500
sprpriority = 1
anim = 2300

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = 22,-108
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 810, HitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
value = SCA

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = s1000,3
channel = 0

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = s0,6
channel = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 15,0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 1
x = 30

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
trigger2 = animelem = 3
x = 14

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
x = 18

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
x = 25

[State 1020, 1]
type = StateTypeSet
trigger1 = AnimElem = 6
StateType = A

[State 1020, 1]
type = velset
trigger1 = AnimElem = 6
x = 8*Const(size.xscale)
y = -8*Const(size.xscale)

[State 1020, 1]
type = veladd
trigger1 = AnimElemtime(6) >= 0
y = .95

[State 0, VelMul]
type = VelMul
trigger1 = AnimElemtime(11) >= 0
x = .9

[State 2000, Explod 1]
type = explod
trigger1 = animelem = 7
anim = 1311
id = 1311
sprpriority = 2
postype = p1
scale = 1*const(size.xscale),1*const(size.yscale)
pos = 0,0
bindtime = -1
ignorehitpause = 0
removeongethit = 1
under = 0
ownpal = 0

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 120,0
priority = 6, Hit
hitflag = AF
guardflag = A
pausetime = 14,14
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno = -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=120), var(36):=-190
hitsound = s1,5
guardsound = s2,1
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
guard.hittime  = 22
air.hittime = 120
ground.velocity = -15,0
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 1
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 0,0
givepower = 70,45
id = 2300

[State 1100, HitDef]
type = HitDef
triggerall = movehit <= 0
trigger1 = AnimElem = 9
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 120,0
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=120), var(36):=-190
hitsound = s1,5
guardsound = s2,1
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
guard.hittime  = 22
air.hittime = 120
ground.velocity = -2,10
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 1
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 0,0
givepower = 70,45
down.bounce = 0
id = 2300

[State 1100, HitDef]
type = HitDef
triggerall = movehit <= 0
trigger1 = AnimElem = 10
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 120,0
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=120), var(36):=-120
hitsound = s1,5
guardsound = s2,1
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
guard.hittime  = 22
air.hittime = 120
ground.velocity = -2,10
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 1
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 0,0
givepower = 70,45
id = 2300

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(6) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1350
;============================ POWER DUNK EX ====================================
[Statedef 2400]
type = S
physics = S
movetype = A
juggle  = 0
anim = 2400
ctrl = 0
velset = 0, 0
poweradd = -500
sprpriority = 1
facep2 = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = 32,-148
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 20,0
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(4) >= 0
flag = invisible
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = S1000,5
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S40,0
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = S1080,2
channel = 2

[State 1100, Velocity]
type = posadd
trigger1 = AnimElemTime(1) = 0
x = 5

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = 9.5
y = -16

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
y = 1.2;1.3

;[State 0, PosAdd]
;type = PosAdd
;trigger1 = AnimElemTime(4) = 0
;x = -15

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
StateType = A
physics = N

[State 0, Helper]
type = Helper
trigger1 = AnimElemTime(1) = 0
helpertype = normal
name = "1st incline"
ID = 2401
stateno = 2401
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = 1
size.yscale = 1
pausemovetime = 0
ignorehitpause = 0

[State 0, Helper]
type = Helper
trigger1 = AnimElemTime(1) = 0
helpertype = normal
name = "2nd incline"
ID = 2402
stateno = 2402
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = 1
size.yscale = 1
pausemovetime = 0
ignorehitpause = 0

[State 0, Helper]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "1st blue"
ID = 2481
stateno = 2481
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 0
ignorehitpause = 0

[State 0, Helper]
type = Helper
trigger1 = Pos Y >= 10 && Vel Y > 0
;trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "2nd blue"
ID = 1482
stateno = 1482
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 0
ignorehitpause = 0

[State 1100, HitDef]
type = HitDef
triggerall = numtarget(2400) = 0
triggerall = numtarget(2401) = 0
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 40,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=110), var(36):=-165
hitsound = s1,2
guardsound = s2,1
ground.type = high
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10.5,-14
guard.velocity = -10
air.velocity = -10,-11
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
envshake.time = 12
envshake.ampl = 4
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = 1
persistent = 0
getpower = 0,0
givepower = 35,17
forcestand = 1
p2facing = 1
fall.envshake.time = 12
fall.envshake.ampl = -2
forcestand = 1
id = 2400

[State 1100, HitDef]
type = HitDef
;trigger1 = time = 0
trigger1 = animelem = 8;AnimElemtime(8) >= 0
trigger2 = animelem = 9
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 100,0
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 0,0;12,12
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=190), var(36):=-80
hitsound = s1,5
guardsound = s2,1
ground.type = high
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -9,10
guard.velocity = -10
air.velocity = -9,10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
envshake.time = 12
envshake.ampl = 4
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = 1
persistent = 0
getpower = 0,0
givepower = 35,17
forcestand = 1
p2facing = 1
fall.envshake.time = 12
fall.envshake.ampl = -2
p2stateno = 2460
id = 2401

[State 0, Pause];hitpause
type = Pause
trigger1 = movecontact
trigger1 = numtarget(2400) = 1
trigger1 = animelemtime(4) <= 4
time = 14
movetime = 0
ignorehitpause = 1
persistent = 0

[State 0, Pause];hitpause
type = Pause
trigger1 = movecontact
trigger1 = numtarget(2401) = 1
trigger1 = animelemtime(7) >= 0
trigger1 = animelemtime(9) <= 3
time = 14
movetime = 0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit
trigger1 = p2stateno = 2461
trigger1 = numexplod(7200) = 0
value = S800,1
channel = 5
volumescale = 100

[State 0, Explod]
type = Explod
trigger1 = movehit
trigger1 = p2stateno = 2461
trigger1 = numexplod(7200) = 0
anim = 7200
ID = 7200
pos = -20,0-100
postype = p2
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = 1,1
sprpriority = -3
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = movehit
trigger1 = p2stateno = 2461
trigger1 = numexplod(7201) = 0
anim = 7201
ID = 7201
pos = -20,0-100
postype = p2
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = 1,1.5
sprpriority = -3
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(4) > 0
trigger1 = Pos Y >= 9 && Vel Y > 0
value = 1450

;============================== TARGET BOUNCE ==================================
[Statedef 2460]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 3266, Anim]
type = changeanim2
trigger1 = !time
value = 2460

[State 3266, Vel]
type = velset
trigger1 = time = 0
x = -15
y = 20

[State 3266, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 75
value = 2461
;============================== TARGET BOUNCE ==================================
[Statedef 2461]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5000,0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 12
freq = 60
ampl = -8

[State 5100]
type = HitBy
trigger1 = 1
value = SCA,AA,AP

[State 3266, Anim]
type = changeanim2
trigger1 = !time
value = 2461

[State 3266, Vel]
type = velset
trigger1 = time = 4
x = -3
y = -18

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 4
y = 1.1

[State 3266, End]
type = selfstate
trigger1 = time >= 2
trigger1 = vel y > 0 && pos y >= 50
value = 5110
;=========================== POWER CHARGE LIGHT ================================
[Statedef 2500]
type = S
physics = S
movetype = A
juggle  = 1
anim = 2500
ctrl = 0
velset = 0, 0
poweradd = -500
sprpriority = 1
facep2 = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = -30,-130
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 20,0

[State 100, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = s1000,4
channel = 0

[State 100, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = s100,1
channel = 5

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(3) = 0
x = 33*Const(size.xscale)

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(3) = 0
x = 16

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(6) = 0
x = 0

[State 210, Hit]
type = hitdef
triggerall = numtarget(2500) = 0
triggerall = numtarget(2401) = 0
trigger1 = time = 0
attr = S, SA
damage = 80,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 14,14
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10+0*(var(35):=115),var(36):=-100
hitsound = s1,5
guardsound = s2,1
ground.type = Low
air.type = Low
ground.slidetime = 21+5
ground.hittime = 21+5
guard.hittime = 21-3
air.hittime = 120
ground.velocity = -19*const(size.xscale),-12*const(size.yscale)
air.velocity = -19*const(size.xscale),-11*const(size.yscale)
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = .75
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 70,35
envshake.time=12
envshake.ampl=4
id = 2500

[State 1800, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(2500)
trigger1 = !(Target(2500), Time)
value = 2515
ID = 2500
ignoreHitPause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(3) = 0
anim = 7101
ID = 7101
pos = 110,10
postype = p1
bindtime = 1
removetime = -2
scale = .5,.35
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add
supermovetime = 999

[State 200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= 2
value = 2500
elem = 5
ignoreHitPause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;================================ Being Launched ===============================
[StateDef 2515]
type = A
moveType = H
physics = N
velSet = 0, 0

[State 1815, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1815, End]
type = ChangeState
trigger1 = HitShakeOver
value = 2516

;============================= Heading Towards Wall ============================
[StateDef 2516]
type = A
moveType = H
physics = N

[State 1816, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1*2
y = 1*2

[State 1816, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 1816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 1816, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1816, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5900)
value = 5900

[State 1816, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5900)
value = 5030

[State 1816, Bounce Off Wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 20 || FrontEdgeBodyDist <= 20
value = 2517

[State 1816, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;============================== Impacting Wall =================================
[StateDef 2517]
type = A
moveType = H
physics = N

[State 1817, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 60
ampl = -6

[State 1817, PosSet]
type = PosSet
trigger1 = 1
x = -160*2*Facing

[State 1817, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1*2
y = 1*2

[State 1817, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 1
ignoreHitPause = 1

[State 1817, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignoreHitPause = 1

[State 1817, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5901)
value = 5901

[State 1817, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5901)
value = 5000

[State 1817, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7, 0

[State 1817, End]
type = ChangeState
trigger1 = Time >= 4
value = 2518
;============================ Bouncing Off Wall ================================
[Statedef 2518]
type = A
moveType = H
physics = N

[State 1818, Turn]
type = Turn
trigger1 = !Time && !SelfAnimExist(5902)

[State 1818, Gravity]
type = VelAdd
trigger1 = 1
y = 1.2

[State 1818, VelSet]
type = VelSet
trigger1 = !Time
x = (ifElse(SelfAnimExist(5902), 1.75, -1.75))*2
y = -7.5*2

[State 1818, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5902)
value = 5902

[State 1818, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5902)
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1818, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1818, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1818, ScreenBound]
type = ScreenBound
trigger1 = time > 15;1
value = 1
moveCamera = 0, 1
ignoreHitPause = 1

[State 1818, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignoreHitPause = 1

[State 1818, End]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100




