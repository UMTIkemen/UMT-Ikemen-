;==================================================== SHINPUU JINRAI KYAKU =====
[StateDef 3000]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3000
poweradd = 0
sprpriority = 1
juggle = 0

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 1
time = 66
anim = -1
sound = -1;s3000,0
pos = 9999,9999
movetime = 66
darken = 0
p2defmul = 1
poweradd = -1000
unhittable = 1

[State 3000, carga]
type=helper
trigger1=time = 1
helpertype=normal
stateno=8600
ID=8600
name="Carga"
postype=p1
pos = -60,-40
ownpal=1
persistent=0
supermovetime=9999
ignorehitpause = 1
size.xscale =1
size.yscale =1

[State 0, Width]
type = Width
trigger1 = 1
player = 30,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 30
value = S3000,0
channel = 0
volumescale = 150

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 0
;=================================================== ShHINPUU JINRAI KYAKU =====
[StateDef 3001]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3001
poweradd = 0
sprpriority = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, Width]
type = Width
trigger1 = 1
player = 10,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S3000,1
channel = 0
volumescale = 175

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S3000,1
channel = 10
volumescale = 75

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,5
channel = 1

[State 240, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = 6*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 3*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = 4*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(5) = 0
x = 13*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(13) = 0
x = 5*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = 5*const(size.xscale)

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1270
ID = 3070
pos = 270,-100
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1.5,.4
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = addalpha
alpha = 156,256

[State 225, Hit]
type = hitdef
trigger1 = time = 0
attr = S, HA
damage = 20,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 3,3
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=76), var(36):=-50
hitsound = s1,5
guardsound = s2,0
ground.type = Low
air.type = Low
ground.slidetime = 22
ground.hittime = 22
guard.hittime = 22
ground.velocity = -2, 0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -2, -7
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
id = 3000

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3002
ctrl = 0

;==================================================== SHINPUU JINRAI KYAKU =====
[StateDef 3002]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3002
poweradd = 0
sprpriority = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, Width]
type = Width
trigger1 = 1
player = 10,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,4
channel = 1

[State 240, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = 5*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = 5*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(5) = 0
x = 5*const(size.xscale)
ignorehitpause = 1

[State 240, posadd]
type = posadd
trigger1 = animelemtime(13) = 0
trigger2 = animelemtime(14) = 0
x = 5*const(size.xscale)
ignorehitpause = 1

;[State 0, Explod]
;type = Explod
;trigger1 = animelem = 2
;anim = 1270
;ID = 3070
;pos = 220,-220
;postype = p1
;facing = 1
;vfacing = 1
;bindtime = -1
;removetime = -2
;scale = 1.5,.4
;sprpriority = 2
;ownpal = 1
;removeongethit = 1
;ignorehitpause = 1
;trans = addalpha
;alpha = 156,256
;angle = 32

[State 0, Helper]
type = Helper
trigger1 = animelemtime(2) = 0
helpertype = normal
name = "whoosh"
ID = 3070
stateno = 3070
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 220, Hit]
type = hitdef
trigger1 = time = 0
attr = S, HA
damage = 20,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 3,3
sparkno = -1+0*(var(33):=8041)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=73), var(36):=-92
hitsound = s1,4
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime = 22
guard.hittime = 22
ground.velocity = -2, 0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -2, -7
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
id = 3000

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3003
ctrl = 0
;=================================================== ShHINPUU JINRAI KYAKU =====
[StateDef 3003]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3001
poweradd = 0
sprpriority = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, Width]
type = Width
trigger1 = 1
player = 10,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,5
channel = 1

[State 240, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = 6*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 3*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = 4*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(5) = 0
x = 13*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(13) = 0
x = 5*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = 5*const(size.xscale)

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1270
ID = 3070
pos = 270,-100
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1.5,.4
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = addalpha
alpha = 156,256

[State 225, Hit]
type = hitdef
trigger1 = time = 0
attr = S, HA
damage = 20,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 3,3
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=76), var(36):=-50
hitsound = s1,5
guardsound = s2,0
ground.type = Low
air.type = Low
ground.slidetime = 22
ground.hittime = 22
guard.hittime = 22
ground.velocity = -2, 0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -2, -7
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
id = 3000

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3004
ctrl = 0

;=================================================== ShHINPUU JINRAI KYAKU =====
[StateDef 3004]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3004
poweradd = 0
sprpriority = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, Width]
type = Width
trigger1 = 1
player = 10,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,4
channel = 1

[State 240, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = 5*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = 5*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(5) = 0
x = 5*const(size.xscale)
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = animelemtime(2) = 0
helpertype = normal
name = "whoosh"
ID = 3070
stateno = 3070
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 220, Hit]
type = hitdef
trigger1 = time = 0
attr = S, HA
damage = 20,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 3,3
sparkno = -1+0*(var(33):=8041)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=73), var(36):=-92
hitsound = s1,4
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 30
ground.hittime = 30
guard.hittime = 30
ground.velocity = -2, 0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -2, -7
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
id = 3000

[State 1000, end]
type = ChangeState
trigger1 = movehit && numtarget(3000)
trigger1 = AnimTime = 0
value = 3005
ctrl = 0

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3010
ctrl = 0
;========================== SHINPUU JINRAI KYAKU ===============================
[StateDef 3005]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3005
poweradd = 0
sprpriority = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S3000,2
channel = 0
volumescale = 150

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S3000,2
channel = 10
volumescale = 75

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
trigger2 = animelem = 13
trigger3 = animelem = 19
trigger4 = animelem = 25
value = S0,5
channel = 1

[State 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(4) = 0
trigger3 = animelemtime(5) = 0
x = 16*const(size.xscale)

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 2
StateType = A
physics = N

[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 2
x = 11
y = -7

[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(22) >= 0
y = .9

[State 0, VelMul]
type = VelMul
trigger1 = animelemtime(24) >= 0
x = .95

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
trigger2 = animelem = 13
trigger3 = animelem = 19
trigger4 = animelem = 25
anim = 1270
ID = 3070
pos = 200,-122
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1.25,.35
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = addalpha
alpha = 206,256

[State 1200, Hit]
type = hitdef
trigger1 = animelem = 4
attr = A, HA
damage = 30,0
animtype = Hard
guardflag = MAF
hitflag = MAF
priority = 4, Hit
pausetime = 10,10;8,8
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=45), var(36):=-66
hitsound   = S1,5
guardsound = S2,1
ground.type = High
air.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -7,-11
air.velocity = -7,-9
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 25,12
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 1.1
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
id = 3000

[State 1200, hitb]
type = hitdef
trigger1 = animelem = 7
trigger2 = animelem = 13
trigger3 = animelem = 19
trigger4 = animelem = 25
attr = A, HA
damage = 25,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=55), var(36):=-66
hitsound   = S1,5
guardsound = S2,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -vel x,-10
air.velocity = -vel x,-11
air.type = Low
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 25,12
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
yaccel = 1.1
forcestand = 1
airguard.cornerpush.veloff = 0
id = 3000

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(5) >= 2
value = 1251
;=================================================================== MISS ======
[StateDef 3010]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3010
poweradd = 0
sprpriority = 1

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;============================================================== SHINRYUKEN =====
[StateDef 3100]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3100
poweradd = 0
sprpriority = 1
juggle = 0

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 1
time = 64
anim = -1
sound = -1;s3000,0
pos = 9999,9999
movetime = 64
darken = 0
p2defmul = 1
poweradd = -2000
unhittable = 1

[State 3000, carga]
type=helper
trigger1=time = 1
helpertype=normal
stateno=8700
ID=8700
name="Carga"
postype=p1
pos = -65,-100
ownpal=1
persistent=0
supermovetime=9999
ignorehitpause = 1
size.xscale =1
size.yscale =1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 30
value = S3000,3
channel = 0
volumescale = 150

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(5) = 3
value = S3000,4
channel = 0
volumescale = 175

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(6) = 4
value = S3000,4
channel = 10
volumescale = 75

[State 1100, Effect]
type = PlaySnd
trigger1 = animelemtime(6) = 1
value = s1080,2
volumescale = 200

[State 1100, Effect]
type = PlaySnd
trigger1 = animelemtime(6) = 4
value = s1080,2
volumescale = 50

[State 0, Width]
type = Width
trigger1 = 1
player = 10,0

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 2
StateType = A
physics = N

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(6) = 0
y = -20

[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(8) >= 0
y = 1

[State 1200, 1]
type = PlayerPush
trigger1 = (animelemtime(3) >= 0) && (animelemtime(19) < 0)
value = 0
ignorehitpause = 1
persistent =  1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 3170
ID = 3170
pos = -7,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = .75,1.75
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = addalpha
alpha = 50,256

[State 0, Explod]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 3170
ID = 3170
pos = -7,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = .75,1.75
sprpriority = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = addalpha
alpha = 206,256

[State 0, Explod]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 3171
ID = 3171
pos = -7,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = .75,1.75
sprpriority = -1
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = sub

[State 200, Hit]
type = hitdef
trigger1 = animelem = 5
attr = S, HA
damage = 40,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
snap = 50,0
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 14,14
sparkno = -1+0*(var(33):=8041)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10+0*(var(35):=45),var(36):=-70
hitsound = s1,0
guardsound = s2,0
ground.type = Low
air.type = Low
ground.slidetime = 24
ground.hittime = 24
guard.hittime = 7
ground.velocity = 3,0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = 3,-9
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
kill = 0
id = 3000

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
attr = S, HA
animtype  = up
air.animtype  = up
damage = 25,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 4,3
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=15), var(36):=-115
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 4*ifelse(p2dist X<0,-1,1)*const(size.xscale),-8.5*const(size.yscale)
guard.velocity = -5.5*const(size.xscale)
air.velocity = 4*ifelse(p2dist X<0,-1,1)*const(size.xscale),vel y-1.5;-7.5*const(size.yscale)
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .75
getpower = 0,0
givepower = 25,12
forcestand = 1
persistent = 1
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0
fall.envshake.time = 10
fall.envshake.ampl = 3
kill = 0
id = 3000

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 9
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
attr = S, HA
animtype  = up
air.animtype  = up
damage = 30,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 3,3
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=5), var(36):=-115
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 4*ifelse(p2dist X<0,-1,1)*const(size.xscale),-6*const(size.yscale)
guard.velocity = -5.5*const(size.xscale)
air.velocity = 4*ifelse(p2dist X<0,-1,1)*const(size.xscale),-6.5*const(size.yscale)
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .75
getpower = 0,0
givepower = 0,0
forcestand = 1
persistent = 1
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0
kill = 0
id = 3000

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 16
attr = S, HA
animtype  = back
air.animtype  = back
damage = 35,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=10), var(36):=-115
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -12,-9.5*const(size.yscale)
guard.velocity = -5.5*const(size.xscale)
air.velocity = -12,-9.5*const(size.yscale)
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 22
envshake.ampl = 5
fall.envshake.time = 14
fall.envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = 1.325
getpower = 0,0
givepower = 25,12
forcestand = 1
persistent = 1
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0
id = 3000

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(4) >= 2
value = 1107

;============================ SHINBU MESSATSU ==================================
[Statedef 3200]
type = S
movetype = A
physics = N
juggle = 1
velset = 0,0
ctrl = 0
anim = 3200
sprpriority = 1
facep2 = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 1
time = 60
anim = -1
sound = -1;s3000,0
pos = 9999,9999
movetime = 60
darken = 0
p2defmul = 1
poweradd = -2000
unhittable = 1

[State 3000, carga]
type=helper
trigger1=time = 1
helpertype=normal
stateno=8700
ID=8700
name="Carga"
postype=p1
pos = -10,-95
ownpal=1
persistent=0
supermovetime=9999
ignorehitpause = 1
size.xscale =1
size.yscale =1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3000,5
channel = 0
volumescale = 150

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S3000,7
channel = 0
volumescale = 250

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 5
value = S3000,7
channel = 10
volumescale = 75

[State 102, Snd]
type = playsnd
trigger1 = AnimElemTime(4) = 0
value = s100,0
channel = 1
volumescale = 200

[State 0, Width]
type = Width
trigger1 = 1
player = 10,0

[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 21

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(7) = 0
physics = S

[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) = 0
x = 0

[State 205, Hit]
type = hitdef
trigger1 = time = 0
attr = S, HA
damage = 20,0
snap = 90,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 6,6
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10+0*(var(35):=40),var(36):=-50
hitsound = s1,1
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 13+2
ground.hittime = 13+2
guard.hittime = 13-2
ground.velocity = 0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -7+2, -16+2
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
kill = 0
id = 3200
p1stateno = 3201
;p2stateno = 32010

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;============================ SHINBU MESSATSU ==================================
[Statedef 3201]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3201
sprpriority = 1
facep2 = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget(3200)
value = 32010

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = time = 45
;value = S3000,6
;channel = 0
;volumescale = 450

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = time = 50
;value = S3000,6
;channel = 10
;volumescale = 75

[State 205, Hit]
type = hitdef
trigger1 = animelem = 2
trigger2 = animelem = 5
attr = S, HA
damage = 10,0
animtype = Light
air.animtype = Back
fall.animtype = Back
;snap = 55,0
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 3,6
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10+0*(var(35):=75),var(36):=-82
hitsound = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 13+2
ground.hittime = 13+2
guard.hittime = 13-2
ground.velocity = vel x,0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -7+2, -16+2
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
kill = 0
id = 3200

[State 205, Hit]
type = hitdef
trigger1 = animelem = 8
attr = S, HA
damage = 10,0
animtype = Light
air.animtype = Back
fall.animtype = Back
;snap = 55,0
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 3,6
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10+0*(var(35):=65),var(36):=-95
hitsound = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 13+2
ground.hittime = 13+2
guard.hittime = 13-2
ground.velocity = vel x,0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -7+2, -16+2
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
kill = 0
id = 3200

[State 205, Hit]
type = hitdef
trigger1 = animelem = 13
attr = S, HA
damage = 20,0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
;snap = 55,0
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 3,6
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=71), var(36):=-100
hitsound = s1,5
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 13+2
ground.hittime = 13+2
guard.hittime = 13-2
ground.velocity = vel x,0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -7+2, -16+2
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
kill = 0
id = 3200

[State 205, Hit]
type = hitdef
trigger1 = animelem = 19
attr = S, HA
damage = 20,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
;snap = 55,0
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 3,6
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=65), var(36):=-30
hitsound = s1,5
guardsound = s2,0
ground.type = Low
air.type = Low
ground.slidetime = 13+2
ground.hittime = 13+2
guard.hittime = 13-2
ground.velocity = vel x,0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -7+2, -16+2
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
kill = 0
id = 3200

[State 205, Hit]
type = hitdef
trigger1 = animelem = 27
attr = S, HA
damage = 20,0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
;snap = 55,0
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 3,6
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=76), var(36):=-50
hitsound = s1,5
guardsound = s2,0
ground.type = Low
air.type = Low
ground.slidetime = 13+2
ground.hittime = 13+2
guard.hittime = 13-2
ground.velocity = vel x,0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -7+2, -16+2
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
kill = 0
id = 3200

[State 205, Hit]
type = hitdef
trigger1 = animelem = 38
attr = S, HA
damage = 20,0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
;snap = 55,0
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 3,6
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=70), var(36):=-90
hitsound = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 13+2
ground.hittime = 13+2
guard.hittime = 13-2
ground.velocity = vel x,0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -7+2, -16+2
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
kill = 0
id = 3200

[State 205, Hit]
type = hitdef
trigger1 = animelem = 47
attr = S, HA
damage = 20,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
;snap = 55,0
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 3,6
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=75), var(36):=-70
hitsound = s1,5
guardsound = s2,0
ground.type = Low
air.type = Low
ground.slidetime = 13+2
ground.hittime = 13+2
guard.hittime = 13-2
ground.velocity = vel x,0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -7+2, -16+2
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
kill = 0
id = 3200

[State 205, Hit]
type = hitdef
trigger1 = animelem = 58
attr = S, HA
damage = 20,0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
;snap = 55,0
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 3,6
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=71), var(36):=-100
hitsound = s1,5
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 13+2
ground.hittime = 13+2
guard.hittime = 13-2
ground.velocity = vel x,0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -7+2, -16+2
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
kill = 0
id = 3200

[State 205, Hit]
type = hitdef
trigger1 = animelem = 66
attr = S, HA
damage = 20,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
;snap = 55,0
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 3,6
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=60), var(36):=-80
hitsound = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 13+2
ground.hittime = 13+2
guard.hittime = 13-2
ground.velocity = vel x,0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = -7+2, -16+2
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 25,12
kill = 0
id = 3200

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3202
ctrl = 0
;============================ SHINBU MESSATSU ==================================
[Statedef 3202]
type = S
movetype = A
physics = S
juggle  = 1
ctrl = 0
poweradd = 0
velset = 0,0
anim = 3202
sprpriority = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3000,8
channel = 0
volumescale = 350

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S3000,8
channel = 10
volumescale = 75

[State 1100, Effect]
type = PlaySnd
trigger1 = animelemtime(5) = 1
value = s1080,2
volumescale = 200

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1100, nothitby]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 3001, Width]
type = Width
trigger1 = 1
player = 4,0
edge = 1,0

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 2
StateType = A
physics = N

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(6) = 2
x = 6
y = -17

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(6) >= 2
y = 1.1

[State 1100, Velocity]
type = VelMul
trigger1 = AnimElemTime(6) >= 2
x = .9

[State 0, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 3270
ID = 3270
pos = 60,-5
postype = p1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1.35*Const(size.xscale),1.35*Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = addalpha
alpha = 256,256

[State 0, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 3271
ID = 3271
pos = 60,-5
postype = p1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1.35*Const(size.xscale),1.35*Const(size.yscale)
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = sub

[State 0, Explod]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = 7102
ID = 7102
pos = 60,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1,1
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 256,256

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
animtype  = Back
air.animtype  = Back
damage = 100,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 4,4
sparkno = -1 * (var(33):=8040)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=47), var(36):=-70
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -2.6,-21
guard.velocity = -16
air.velocity = -2.6,-19
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = 1
persistent = 0
getpower = 0,0
givepower = 25,12
forcestand = 1
palfx.time = 34
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0
fall.envshake.time = 10
fall.envshake.ampl = 3
id = 3200

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 7
movetype = I

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(6) >= 2
value = 1106

;-------------------------------- TARGET ---------------------------------------
[Statedef 32010]
type = S
movetype = H
physics = S
velset = 0,0

[State 1000, 0]
type = HitFallSet
trigger1 = time = 0
value = 0

[State 820, Vel]
type = Velset
trigger1 = 1
x = 0
y = 0

[State 820, Pos]
type = Posset
trigger1 = 1
y = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 32010

[State 820, End]
type = Selfstate
trigger1 = time >= 15
value = 5000
;================================= SKUHACHI ====================================
[StateDef 3300]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3300
poweradd = 0
sprpriority = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 61
anim = -1
sound = -1;s3000,0
pos = 9999,9999
movetime = 61
darken = 0
p2defmul = 1
poweradd = -3000
unhittable = 1

[State 3000, carga]
type=helper
trigger1=time = 0
helpertype=normal
stateno=8800
ID=8800
name="Carga"
postype=p1
pos = 15,-100
ownpal=1
persistent=0
supermovetime=9999
ignorehitpause = 1
size.xscale =1
size.yscale =1

;[State 3000, carga]
;type=helper
;trigger1=time = 0
;helpertype=normal
;stateno=8802
;ID=8802
;name="Shadow1"
;postype=p1
;pos = 0,0
;ownpal = 1
;persistent=0
;supermovetime = 9999
;ignorehitpause = 1
;size.xscale = 1*Const(size.xscale)
;size.yscale = 1*Const(size.yscale)

[State 0, Width]
type = Width
trigger1 = 1
player = 15,0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 9900
ID = 9900
pos = 120,140
postype = back
facing = 1
bindtime = 1
removetime = 60
supermovetime = 999
pausemovetime = 999
scale = 10,10
sprpriority = -20
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 10
ID = 9900
trans = addalpha
alpha = 0,256-(25*time)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 10
ID = 9900
trans = addalpha
alpha = 0,0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8850
ID = 8850
pos =-240,300;110
vel = 24,0
postype = back
bindtime = 1
removetime = 10
scale = .5,.5
sprpriority = -10
ownpal = 1
removeongethit = 1
;trans = add
ignorehitpause = 1
supermovetime = -1

[State 0, Explod]
type = Explod
trigger1 = time = 10
anim = 8850
ID = 8850
pos = -17,300;110
vel = .25,0
postype = back
bindtime = 1
removetime = 50
scale = .5,.5
sprpriority = -10
ownpal = 1
removeongethit = 1
;trans = add
ignorehitpause = 1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 10
ID = 8850
trans = addalpha
alpha = 0+(time*25),256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 50
ID = 8850
trans = addalpha
alpha = 256-((time-50)*25),256

;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S3000,9
channel = 0
volumescale = 150

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = S3000,9
channel = 10
volumescale = 50

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301
ctrl = 0
;================================= SKUHACHI ====================================
[StateDef 3301]
type = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3301
poweradd = 0
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 9900
ID = 9900
pos = 120,140
postype = back
facing = 1
bindtime = 1
removetime = 1
supermovetime = 999
pausemovetime = 999
scale = 10,10
sprpriority = -20
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S3080,0
channel = -1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 25

[State 4000, hit]
type=hitdef
trigger1 = time = 0
attr = S, HA
hitflag = MAF
guardflag = MA
priority  = 6, Hit
sparkno = -1 ;* (var(33):=8041)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=40), var(36):=-60
numhits = 0
guardsound = S2,1
sparkno = -1
p1facing = 1
p1stateno = 3303
fall = 1
fall.recover = 0
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 16
air.hittime = 120
getpower = 0,0
givepower = 0,0
id = 3300

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3302
ctrl = 0

;============================== SKUHACHI MISS ==================================
[StateDef 3302]
type = S
movetype= I
physics = S
;velset = 0,0
ctrl = 0
anim = 3302
poweradd = 0
sprpriority = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 0

[State 0, VelSet]
type = Posadd
trigger1 = animelem = 2
x = 16*Const(size.xscale)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 9900
ID = 9900
pos = 120,140
postype = back
facing = 1
bindtime = 1
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = 10,10
sprpriority = -20
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 20
ID = 9900
trans = addalpha
alpha = 0,0+(12*time)

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;================================= SKUHACHI =====================================
[StateDef 3303]
type = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 3303
poweradd = 0
sprpriority = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 9900
ID = 9900
pos = 120,140
postype = back
facing = 1
bindtime = 1
removetime = 223
supermovetime = 999
pausemovetime = 999
scale = 10,10
sprpriority = -20
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 203
ID = 9900
trans = addalpha
alpha = 0,0+(12*(time-203))

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time <= 160
flag = invisible

[State 4001, throw]
type=targetstate
trigger1 = !time
value = 3350

[State 0, PosAdd]
type = PosAdd
triggerall = time = [1,50]
trigger1 = pos x < -90*(ifelse(facing = -1,-1,1))
x = 12*facing

[State 0, PosAdd]
type = PosAdd
triggerall = time = [1,50]
trigger1 = pos x > -90*(ifelse(facing = -1,-1,1))
x = -12*facing

;[State 0, PosSet]
;type = PosSet
;trigger1 = time = 0
;x = 80*(ifelse(facing = 1,-1,1))

[State 4001, throw]
type=targetfacing
trigger1= !time
value=-1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(3) <= 0
time = 1
id = -1
pos = 90,0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
trigger2 = time = 52
trigger3 = time = 72
trigger4 = time = 92
trigger5 = time = 112
trigger6 = time = 132
trigger7 = time = 152
trigger8 = time = 62
trigger9 = time = 82
trigger10 = time = 102
trigger11 = time = 122
trigger12 = time = 142
time = 10
ampl = 3
freq = 120
ignorehitpause = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 164
time = 40
ampl = 5
freq = 120
ignorehitpause = 1

[State 0, HitAdd]
type = HitAdd
trigger1 = time = 52
trigger2 = time = 72
trigger3 = time = 92
trigger4 = time = 112
trigger5 = time = 132
trigger6 = time = 152
trigger7 = time = 62
trigger8 = time = 82
trigger9 = time = 102
trigger10 = time = 122
trigger11 = time = 142
trigger12 = time = 164
value = 1

[State 0, LifeAdd]
type = TargetLifeAdd
trigger1 = time = 52
trigger2 = time = 72
trigger3 = time = 92
trigger4 = time = 112
trigger5 = time = 132
trigger6 = time = 152
trigger7 = time = 62
trigger8 = time = 82
trigger9 = time = 102
trigger10 = time = 122
trigger11 = time = 142
value = ceil(-18*fvar(12))
kill = 0
absolute = 1
ignorehitpause = 1
ID = 3300

[State 0, LifeAdd]
type = TargetLifeAdd
trigger1 = time = 164
value = ceil(-212*fvar(12))
kill = 1
absolute = 1
ignorehitpause = 1
ID = 3300

[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = time = 52
trigger2 = time = 72
trigger3 = time = 92
trigger4 = time = 112
trigger5 = time = 132
trigger6 = time = 152
trigger7 = time = 62
trigger8 = time = 82
trigger9 = time = 102
trigger10 = time = 122
trigger11 = time = 142
value = 45
ID = 3300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S3000,11
channel = 0
volumescale = 400

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 15
value = S3000,11
channel = 10
volumescale = 75

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 52
trigger2 = time = 72
trigger3 = time = 92
trigger4 = time = 112
trigger5 = time = 132
trigger6 = time = 152
trigger7 = time = 62
trigger8 = time = 82
trigger9 = time = 102
trigger10 = time = 122
trigger11 = time = 142
value = S1,1
channel = -1
volumescale = 50

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 164
value = S2080,2
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 50
trigger2 = time = 70
trigger3 = time = 90
trigger4 = time = 110
trigger5 = time = 130
trigger6 = time = 150
trigger7 = time = 60
trigger8 = time = 80
trigger9 = time = 100
trigger10 = time = 120
trigger11 = time = 140
value = S3080,0
channel = -1
volumescale = 40

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 55
value = S3000,6
channel = 0
volumescale = 450

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 60
value = S3000,6
channel = 10
volumescale = 75

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 164
value = S3000,10
channel = 0
volumescale = 450

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 169
value = S3000,10
channel = 10
volumescale = 75

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 173
value = S3000,10
channel = 11
volumescale = 75

[State 1100, Effect]
type = PlaySnd
trigger1 = time = 180
value = s1080,2
volumescale = 200

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "attack"
ID = 3310
stateno = 3310
pos = 0,0
postype = p1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = time = 50
trigger2 = time = 70
trigger3 = time = 90
trigger4 = time = 110
trigger5 = time = 130
trigger6 = time = 150
helpertype = normal
name = "attack"
ID = 3311
stateno = 3311
pos = 280,0
postype = p1
facing = -1
ownpal = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = time = 60
trigger2 = time = 80
trigger3 = time = 100
trigger4 = time = 120
trigger5 = time = 140
helpertype = normal
name = "attack"
ID = 3311
stateno = 3311
pos = -90,0
postype = p1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 166
anim = 3370
ID = 3370
pos = 0,-140
postype = p1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1*Const(size.xscale),.5*Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = addalpha
alpha = 256,256

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;================================= HELPER ======================================
[StateDef 3310]
physics = N
anim = 9741
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3304
ID = 3304
pos = 0,0
postype = p1
facing = 1
bindtime = 1
vel = 40,0
removetime = -2
pausemovetime = 999
scale = root,Const(size.xscale),root,Const(size.yscale)
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 3304
ID = 3304
trans = addalpha
alpha = 256-(time*25),256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 15
;================================= HELPER ======================================
[StateDef 3311]
physics = N
anim = 3311
velset = 100,0
ctrl = 0
sprpriority = 2

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .5*root,Const(size.xscale),.5*root,Const(size.yscale)

;[State 0, Explod]
;type = Explod
;trigger1 = time = 0
;anim = 3311
;ID = 3311
;pos = 0,0
;postype = p1
;facing = 1
;bindtime = 1
;vel = 80,0
;removetime = 7
;pausemovetime = 999
;scale = root,Const(size.xscale),root,Const(size.yscale)
;sprpriority = 2
;ownpal = 1
;removeongethit = 1
;ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 220,256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time > 7
;---------------------------------------------------------------------------
;p2state
[Statedef 3350]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1= !time
value = 3350

[State 3805, end]
type = changestate
trigger1 = animtime = 0
value = 3351

;---------------------------------------------------------------------------
;p2state
[Statedef 3351]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 3351

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = -50
y = -1

[State 3805, end]
type = selfstate
trigger1 = animtime = 0
value = 5050
ctrl = 0

