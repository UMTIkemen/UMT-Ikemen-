;============================== POWER WAVE =====================================
[Statedef 1000]
type = S
physics = S
movetype = A
anim = 1000
ctrl = 0
velset = 0, 0
poweradd = 70*var(21)
sprpriority = 1
facep2 = 1

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
stateno = 1080
ID = 1090
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
;============================ LIGHT BURN KNUCKLE ===============================
[Statedef 1100]
type    = S
movetype = A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1100
poweradd = 70*var(21)
sprpriority = 1

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
trigger1 = AnimElem = 5
value = S1080,2
channel = 2

[State 1000, 1]
type = posadd
trigger1 = AnimElemtime(4) = 0
x = 32

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 26
y = -2

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
y = .5

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 6
StateType = A
physics = N

[State 210, Hit]
type = hitdef
trigger1 = !time
attr = S, SA
damage = 110,0
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
ground.velocity = -10,-14
guard.velocity = -16
air.velocity = -10,-12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
persistent = 0
getpower = 140*var(21),70*var(21)
givepower = 70,35
yaccel = 1
fall.recover = 1
envshake.time=12
envshake.ampl=4
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 0, Explod]
type = Explod
trigger1 = animelemtime(5) = 0
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
trigger1 = animelemtime(6) = 0
anim = 1181
ID = 1181
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
triggerall = animelemtime(6) >= 0
trigger1 = Pos Y >= 0 && Vel Y > 0
anim = 1182
ID = 1182
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
triggerall = animelemtime(6) >= 0
trigger1 = Pos Y >= 0 && Vel Y > 0
id =  1181
ignorehitpause = 1

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(6) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1150
;============================ MEDIUM BURN KNUCKLE ==============================
[Statedef 1110]
type    = S
movetype = A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1110
poweradd = 70*var(21)
sprpriority = 1

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
x = 26
y = -2.1

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(9) > 0
y = .5

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 9
StateType = A
physics = N

[State 210, Hit]
type = hitdef
trigger1 = !time
attr = S, SA
damage = 130,0
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
ground.velocity = -10,-14
guard.velocity = -16
air.velocity = -10,-12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
persistent = 0
getpower = 140*var(21),70*var(21)
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
ID = 1181
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
triggerall = animelemtime(9) >= 0
trigger1 = Pos Y >= 0 && Vel Y > 0
anim = 1182
ID = 1182
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
triggerall = animelemtime(6) >= 0
trigger1 = Pos Y >= 0 && Vel Y > 0
id =  1181
ignorehitpause = 1

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(9) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1150
;============================ HEAVY BURN KNUCKLE ===============================
[Statedef 1120]
type    = S
movetype = A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1120
poweradd = 70*var(21)
sprpriority = 1

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
x = 26
y = -2.8

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(9) > 0
y = .5

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 9
StateType = A
physics = N

[State 210, Hit]
type = hitdef
trigger1 = !time
attr = S, SA
damage = 145,0
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
ground.velocity = -10,-14
guard.velocity = -16
air.velocity = -10,-12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
persistent = 0
getpower = 140*var(21),70*var(21)
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
ID = 1181
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
triggerall = animelemtime(9) >= 0
trigger1 = Pos Y >= 0 && Vel Y > 0
anim = 1182
ID = 1182
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
triggerall = animelemtime(6) >= 0
trigger1 = Pos Y >= 0 && Vel Y > 0
id =  1181
ignorehitpause = 1

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(9) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1150
;================================== LAND =======================================
[Statedef 1150]
type    = S
physics = S
ctrl = 0
anim = 1150
velset = 0,0
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7100
ID = 7100
pos = 0,10
postype = p1
bindtime = 1
removetime = -2
scale = 1.25,1
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 170,256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S52,0
channel = 1

[State 52, 2]
type = PosSet
trigger1 = 1
y = 0

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;============================== RISING TACKLE ==================================
[Statedef 1200]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
poweradd = 70*var(21)
juggle = 1
sprpriority = 1
facep2 = 1

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

[State 0, Explod]
type = Explod
trigger1 = numexplod(7102) = 0
trigger1 = animelemtime(4) = 0
anim = 7102
ID = 7102
pos = 35,10
postype = p1
facing = 1
bindtime = 1
scale = .5,.75
sprpriority = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1
removetime = -2
trans = add

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
value = s0,3
channel = -1

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 1
x = 5

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(6) = 0
x = 5

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 5
y = -13

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

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 30,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=80), var(36):=-90
hitsound = s1,5
guardsound = s2,1
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 1,-10
guard.velocity = -8
air.velocity = 1,-8
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
getpower = 35*var(21),17*var(21)
givepower = 17,8
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 25,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=3,3
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
air.velocity = -1,((vel y)-1)
airguard.velocity = -12,-1
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
yaccel = 1
persistent = 1
getpower = 35*var(21),17*var(21)
givepower = 17,8
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 12
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1250
;=========================== MEDIUM RISING TACKLE ==============================
[Statedef 1210]
type = S
physics = S
movetype = A
anim = 1210
ctrl = 0
velset = 0, 0
poweradd = 70*var(21)
juggle = 1
sprpriority = 1
facep2 = 1

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

[State 0, Explod]
type = Explod
trigger1 = numexplod(7102) = 0
trigger1 = animelemtime(4) = 0
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
value = s0,3
channel = -1

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 1
x = 5

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(6) = 0
x = 7

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 7
y = -17

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

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 30,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=80), var(36):=-90
hitsound = s1,5
guardsound = s2,1
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 1,-10
guard.velocity = -8
air.velocity = 1,-8
airguard.velocity = -13,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14
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
getpower = 35*var(21),17*var(21)
givepower = 17,8
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
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 20,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=3,3
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
air.velocity = -1,((vel y)-1)
airguard.velocity = -12,-1
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
yaccel = 1
persistent = 1
getpower = 35*var(21),17*var(21)
givepower = 17,8
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 15
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1250
;=========================== HEAVY RISING TACKLE ===============================
[Statedef 1220]
type = S
physics = S
movetype = A
anim = 1220
ctrl = 0
velset = 0, 0
poweradd = 70*var(21)
juggle = 1
sprpriority = 1
facep2 = 1

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
damage = 40,0
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
getpower = 40*var(21),20*var(21)
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
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 15,0
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
getpower = 40*var(21),20*var(21)
givepower = 20,10
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 16
attr = S, SA
animtype  = up
air.animtype = back
fall.animtype = back
damage = 35,0
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
getpower = 40*var(21),20*var(21)
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
;================================== LAND =======================================
[Statedef 1250]
type    = S
physics = N
movetype = I
sprpriority = 1
ctrl = 0
anim=1250

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7100
ID = 7100
pos = 0,10
postype = p1
bindtime = 1
removetime = -2
scale = 1.25,1
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 170,256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S52,0
channel = 1

[State 52, stop]
type=velset
trigger1=time=0
x=0
y=0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, ctrl]
type=ctrlset
trigger1 = animelemtime(3) = 2
value=1

[State 52, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;============================= LIGHT CRACK SHOOT ===============================
[Statedef 1300]
type = S
movetype = A
physics = N
juggle = 1
velset = 0,0
ctrl = 0
poweradd = 70*var(21)
sprpriority = 1
anim = 1300

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
x = 6*Const(size.xscale)
y = -8*Const(size.xscale)

[State 1020, 1]
type = veladd
trigger1 = AnimElemtime(6) >= 0
y = 1

[State 0, VelMul]
type = VelMul
trigger1 = AnimElemtime(11) >= 0
x = .9

[State 2000, Explod 1]
type = explod
trigger1 = animelemtime(7) = 0
anim = 1310
id = 1310
sprpriority = 2
postype = p1
scale = 1*const(size.xscale),1*const(size.yscale)
pos = 0,0
bindtime = -1
ignorehitpause = 0
removeongethit = 1
ownpal = 1
pausemovetime = 999

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 70,0
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
ground.slidetime = 20
ground.hittime  = 20
guard.hittime  = 20
air.hittime = 120
ground.velocity = -15,0
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 140*var(21),70*var(21)
givepower = 70,45
id = 1300

[State 1100, HitDef]
type = HitDef
triggerall = movehit <= 0
trigger1 = AnimElem = 9
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 70,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 14,14
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=120), var(36):=-190
hitsound = s1,5
guardsound = s2,1
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.hittime  = 20
air.hittime = 120
ground.velocity = -15,0
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 140*var(21),70*var(21)
givepower = 70,45
id = 1300

[State 1100, HitDef]
type = HitDef
triggerall = movehit <= 0
trigger1 = AnimElem = 10
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 70,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 14,14
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=120), var(36):=-120
hitsound = s1,5
guardsound = s2,1
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.hittime  = 20
air.hittime = 120
ground.velocity = -15,0
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 140*var(21),70*var(21)
givepower = 70,45
id = 1300

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(6) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1350
;============================ MEDIUM CRACK SHOOT ===============================
[Statedef 1310]
type = S
movetype = A
physics = N
juggle = 1
velset = 0,0
ctrl = 0
poweradd = 70*var(21)
sprpriority = 1
anim = 1305

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
pausemovetime = 999
ownpal = 1

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 80,0
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
ground.slidetime = 20
ground.hittime  = 20
guard.hittime  = 20
air.hittime = 120
ground.velocity = -15,0
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 140*var(21),70*var(21)
givepower = 70,45
id = 1300

[State 1100, HitDef]
type = HitDef
triggerall = movehit <= 0
trigger1 = AnimElem = 9
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 80,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 14,14
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=120), var(36):=-190
hitsound = s1,5
guardsound = s2,1
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.hittime  = 20
air.hittime = 120
ground.velocity = -15,0
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 140*var(21),70*var(21)
givepower = 70,45
id = 1300

[State 1100, HitDef]
type = HitDef
triggerall = movehit <= 0
trigger1 = AnimElem = 10
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 80,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 14,14
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=120), var(36):=-120
hitsound = s1,5
guardsound = s2,1
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.hittime  = 20
air.hittime = 120
ground.velocity = -15,0
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 140*var(21),70*var(21)
givepower = 70,45
id = 1300

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(6) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1350
;============================= HEAVY CRACK SHOOT ===============================
[Statedef 1320]
type = S
movetype = A
physics = N
juggle = 1
velset = 0,0
ctrl = 0
poweradd = 70*var(21)
sprpriority = 1
anim = 1320

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
trigger1 = animelemtime(3) = 0
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
x = 12*Const(size.xscale)
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
pausemovetime = 999
ownpal = 1

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 90,0
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
ground.slidetime = 20
ground.hittime  = 20
guard.hittime  = 20
air.hittime = 120
ground.velocity = -15,0
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 140*var(21),70*var(21)
givepower = 70,45
id = 1300

[State 1100, HitDef]
type = HitDef
triggerall = movehit <= 0
trigger1 = AnimElem = 9
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 90,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 14,14
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=120), var(36):=-190
hitsound = s1,5
guardsound = s2,1
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.hittime  = 20
air.hittime = 120
ground.velocity = -15,0
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 140*var(21),70*var(21)
givepower = 70,45
id = 1300

[State 1100, HitDef]
type = HitDef
triggerall = movehit <= 0
trigger1 = AnimElem = 10
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 90,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 14,14
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=120), var(36):=-120
hitsound = s1,5
guardsound = s2,1
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.hittime  = 20
air.hittime = 120
ground.velocity = -15,0
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 140*var(21),70*var(21)
givepower = 70,45
id = 1300

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(6) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1350
;=============================  AIR CRACK SHOOT ================================
[Statedef 1330]
type  = A
movetype = A
physics = N
juggle = 1
ctrl = 0
poweradd = 70*var(21)
sprpriority = 1
anim = 1330

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

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

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 10,0

[State 1020, 1]
type = velset
trigger1 = AnimElemtime(4) <= 0
x = 0
y = 0

[State 1020, 1]
type = velset
trigger1 = AnimElemtime(4) = 0
x = 3*2*Const(size.xscale)
y = -2.5

[State 1020, 1]
type = velset
trigger1 = AnimElemtime(6) = 0
y = 4*2*Const(size.xscale)

[State 1020, 1]
type = veladd
trigger1 = AnimElemtime(5) >= 0
y = 1.1*Const(size.xscale)

[State 2000, Explod 1]
type = explod
trigger1 = animelem = 7
anim = 1315
id = 1315
sprpriority = 2
postype = p1
scale = 1*const(size.xscale),1*const(size.yscale)
pos = 0,0
bindtime = -1
ignorehitpause = 0
removeongethit = 1
pausemovetime = 999
ownpal = 1

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 80,0
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
ground.slidetime = 20
ground.hittime  = 20
guard.hittime  = 20
air.hittime = 120
ground.velocity = -10,0
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 140*var(21),70*var(21)
givepower = 70,45
id = 1300

[State 1100, HitDef]
type = HitDef
triggerall = movehit <= 0
trigger1 = AnimElem = 9
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 80,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 14,14
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=120), var(36):=-190
hitsound = s1,5
guardsound = s2,1
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.hittime  = 20
air.hittime = 120
ground.velocity = -10,0
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 140*var(21),70*var(21)
givepower = 70,45
id = 1300

[State 1100, HitDef]
type = HitDef
triggerall = movehit <= 0
trigger1 = AnimElem = 10
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage = 80,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 14,14
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=120), var(36):=-120
hitsound = s1,5
guardsound = s2,1
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.hittime  = 20
air.hittime = 120
ground.velocity = -10,0
air.velocity = -8,-10
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
yaccel = 1
fall = 0
fall.recover = 0
fall.recovertime = 120
air.fall = 1
air.recover = 0
getpower = 140*var(21),70*var(21)
givepower = 70,45
id = 1300

[State 1100, ChangeState]
type = ChangeState
;triggerall = animelemtime(7) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1350

;========================== CRACK SHOOT LAND ==============================
[Statedef 1350]
type = S
physics = S
ctrl = 0
anim = 1350
velset = 0,0
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7100
ID = 7100
pos = 0,10
postype = p1
bindtime = 1
removetime = -2
scale = 1.25,1
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 170,256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S52,0
channel = 1

[State 52, 2]
type = PosSet
trigger1 = 1
y = 0

[State 0, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(4) = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;============================ POWER DUNK LIGHT =================================
[Statedef 1400]
type = S
physics = S
movetype = A
juggle  = 1
anim = 1400
ctrl = 0
velset = 0, 0
poweradd = 70*var(21)
sprpriority = 1
facep2 = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

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
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = 9.5
y = -15

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
y = 1.3

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
ID = 1401
stateno = 1401
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
ID = 1402
stateno = 1402
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
ID = 1481
stateno = 1481
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
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 30,0
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
ground.velocity = -10.5,-12
guard.velocity = -10
air.velocity = -10,-9
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
getpower = 70*var(21),35*var(21)
givepower = 35,17
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2
forcestand = 1
p2facing = 1
id = 1400

[State 1100, HitDef]
type = HitDef
;trigger1 = time = 0
trigger1 = animelem = 8;AnimElemtime(8) >= 0
trigger2 = animelem = 9
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 80,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
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
getpower = 70*var(21),35*var(21)
givepower = 35,17
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2
forcestand = 1
p2facing = 1
id = 1401

[State 0, Pause];hitpause
type = Pause
trigger1 = movecontact
trigger1 = numtarget(1400) = 1
trigger1 = animelemtime(4) <= 2
time = 14
movetime = 0
ignorehitpause = 1
persistent = 0

[State 0, Pause];hitpause
type = Pause
trigger1 = movecontact
trigger1 = numtarget(1401) = 1
trigger1 = animelemtime(7) >= 0
trigger1 = animelemtime(9) <= 3
time = 14
movetime = 0
ignorehitpause = 1
persistent = 0

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(4) > 0
trigger1 = Pos Y >= 9 && Vel Y > 0
value = 1450
;============================ POWER DUNK MEDIUM ================================
[Statedef 1410]
type = S
physics = S
movetype = A
juggle  = 1
anim = 1410
ctrl = 0
velset = 0, 0
poweradd = 70*var(21)
sprpriority = 1
facep2 = 1

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
ID = 1411
stateno = 1411
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
ID = 1412
stateno = 1412
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
ID = 1481
stateno = 1481
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
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 30,0
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
getpower = 70*var(21),35*var(21)
givepower = 35,17
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2
forcestand = 1
p2facing = 1
id = 1400

[State 1100, HitDef]
type = HitDef
;trigger1 = time = 0
trigger1 = animelem = 8;AnimElemtime(8) >= 0
trigger2 = animelem = 9
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 90,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
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
getpower = 70*var(21),35*var(21)
givepower = 35,17
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2
forcestand = 1
p2facing = 1
id = 1401

[State 0, Pause];hitpause
type = Pause
trigger1 = movecontact
trigger1 = numtarget(1400) = 1
trigger1 = animelemtime(4) <= 4
time = 14
movetime = 0
ignorehitpause = 1
persistent = 0

[State 0, Pause];hitpause
type = Pause
trigger1 = movecontact
trigger1 = numtarget(1401) = 1
trigger1 = animelemtime(7) >= 0
trigger1 = animelemtime(9) <= 3
time = 14
movetime = 0
ignorehitpause = 1
persistent = 0

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(4) > 0
trigger1 = Pos Y >= 9 && Vel Y > 0
value = 1450
;============================ POWER DUNK HEAVY =================================
[Statedef 1420]
type = S
physics = S
movetype = A
juggle  = 1
anim = 1420
ctrl = 0
velset = 0, 0
poweradd = 70*var(21)
sprpriority = 1
facep2 = 1

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
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = 10
y = -19

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
y = 1.225;1.3

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
ID = 1421
stateno = 1421
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
ID = 1422
stateno = 1422
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
ID = 1481
stateno = 1481
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
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 30,0
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
ground.velocity = -11,-16
guard.velocity = -10
air.velocity = -10.5,-13
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
getpower = 70*var(21),35*var(21)
givepower = 35,17
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2
forcestand = 1
p2facing = 1
id = 1400

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
guardflag = MA
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
getpower = 70*var(21),35*var(21)
givepower = 35,17
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2
forcestand = 1
p2facing = 1
id = 1401

[State 0, Pause];hitpause
type = Pause
trigger1 = movecontact
trigger1 = numtarget(1400) = 1
trigger1 = animelemtime(4) <= 5
time = 14
movetime = 0
ignorehitpause = 1
persistent = 0

[State 0, Pause];hitpause
type = Pause
trigger1 = movecontact
trigger1 = numtarget(1401) = 1
trigger1 = animelemtime(7) >= 0
trigger1 = animelemtime(9) <= 3
time = 14
movetime = 0
ignorehitpause = 1
persistent = 0

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(4) > 0
trigger1 = Pos Y >= 9 && Vel Y > 0
value = 1450
;================================ LAND =========================================
[Statedef 1450]
type = S
movetype = I
physics = S
poweradd = 0
anim = 1450
ctrl = 0
sprpriority = 2
velset = 0,0

[State 2100, Wolf]
type = Posset
trigger1 = time = 0
y = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7100
ID = 7100
pos = 0,10
postype = p1
bindtime = 1
removetime = -2
scale = 1.25,1
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 170,256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = p2stateno = 2461
trigger1 = numexplod(7200) = 0
value = S800,1
channel = 5
volumescale = 100

[State 0, Explod]
type = Explod
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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S52,0
channel = 1

[State 2100, Wolf]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=========================== POWER CHARGE LIGHT ================================
[Statedef 1500]
type = S
physics = S
movetype = A
juggle  = 1
anim = 1500
ctrl = 0
velset = 0, 0
poweradd = 70*var(21)
sprpriority = 1
facep2 = 1

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
ground.velocity = -18*const(size.xscale),0
air.velocity = -8*const(size.xscale),-11*const(size.yscale)
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 140*var(21),70*var(21)
givepower = 70,35
p2facing = 1
envshake.time=12
envshake.ampl=4
id = 1500

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

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;=========================== POWER CHARGE MEDIUM ===============================
[Statedef 1510]
type = S
physics = S
movetype = A
juggle  = 1
anim = 1510
ctrl = 0
velset = 0, 0
poweradd = 70*var(21)
sprpriority = 1
facep2 = 1

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
trigger1 = AnimElem = 7
value = s1000,4
channel = 0

[State 100, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = s100,1
channel = 5

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(1) = 0
x = -18*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(2) = 0
x = -49*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(4) = 0
x = 20*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(5) = 0
x = 32*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(6) = 0
x = 32*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(7) = 0
x = 24*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(8) = 0
x = 24*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(11) = 0
x = -16*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(13) = 0
x = -5*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(14) = 0
x = -3*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animtime = 0
x = -8*Const(size.xscale)

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(7) = 0
x = 23

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(10) = 0
x = 0

[State 210, Hit]
type = hitdef
trigger1 = time = 0
attr = S, SA
damage = 90,0
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
ground.slidetime = 23+5
ground.hittime = 23+5
guard.hittime = 23-3
air.hittime = 120
ground.velocity = -18*const(size.xscale),0
air.velocity = -8*const(size.xscale),-11*const(size.yscale)
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 140*var(21),70*var(21)
givepower = 70,35
envshake.time=12
envshake.ampl=4
p2facing = 1
id = 1500

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7) = 0
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

[State Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;=========================== POWER CHARGE HEAVY ================================
[Statedef 1520]
type = S
physics = S
movetype = A
juggle  = 1
anim = 1520
ctrl = 0
velset = 0, 0
poweradd = 70*var(21)
sprpriority = 1
facep2 = 1

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
trigger1 = AnimElem = 7
value = s1000,4
channel = 0

[State 100, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = s100,1
channel = 5

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(1) = 0
x = -18*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(2) = 0
x = -49*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(4) = 0
x = 20*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(5) = 0
x = 32*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(6) = 0
x = 32*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(7) = 0
x = 24*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(8) = 0
x = 24*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(11) = 0
x = -16*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(13) = 0
x = -5*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(14) = 0
x = -3*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animtime = 0
x = -8*Const(size.xscale)

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(7) = 0
x = 28

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(10) = 0
x = 0

[State 210, Hit]
type = hitdef
trigger1 = time = 0
attr = S, SA
damage = 100,0
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
ground.slidetime = 25+5
ground.hittime = 25+5
guard.hittime = 25-3
air.hittime = 120
ground.velocity = -18*const(size.xscale),0
air.velocity = -8*const(size.xscale),-11*const(size.yscale)
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 140*var(21),70*var(21)
givepower = 70,35
envshake.time=12
envshake.ampl=4
p2facing = 1
id = 1500

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7) = 0
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


[State Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1




