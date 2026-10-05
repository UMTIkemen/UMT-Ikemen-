;================================= HADOKEN =====================================
[Statedef 1000]
type = S
physics = S
movetype = A
anim = 1000
ctrl = 0
velset = 0, 0
poweradd = 70
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

[State 0, Explod]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 7101
ID = 7101
pos = 100,10
postype = p1
bindtime = 1
removetime = -2
scale = 1,.85
sprpriority = 2
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 256,256

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
stateno = 1080
ID = 1090
name = "Hadouken"
postype = p1
pos = 140, -133
size.xscale = .9125
size.yscale = 1.025
ownpal = 1

[State -2, Width]
type = Width
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(2) < 0
edge = 0,ceil(3*const(size.xscale))

[State -2, Width]
type = Width
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
edge = 0,ceil(11*const(size.xscale))

[State -2, Width]
type = Width
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
edge = 0,ceil(13*const(size.xscale))

[State -2, Width]
type = Width
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(5) < 0
edge = 0,ceil(15*const(size.xscale))

[State -2, Width]
type = Width
trigger1 = animelemtime(5) >= 0
trigger1 = animelemtime(6) < 0
edge = 0,ceil(18*const(size.xscale))

[State -2, Width]
type = Width
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(13) < 0
edge = 0,ceil(19*const(size.xscale))

[State -2, Width]
type = Width
trigger1 = animelemtime(13) >= 0
trigger1 = animelemtime(14) < 0
edge = 0,ceil(15*const(size.xscale))

[State 240, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(5) = 0
x = 3*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 8*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(4) = 0
x = 2*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = 1*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(13) = 0
x = -4*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(14) = 0
x = -15*const(size.xscale)

[State Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================== LIGHT SHORYUUKEN ===============================
[Statedef 1100]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
poweradd = 70
velset = 0,0
anim = 1100
sprpriority = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3001, Width]
type = Width
trigger1 = 1
player = 4,0
edge = 1,0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = s1000,1
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = s0,6
channel = 1

[State 52, Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = s40, 0

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
StateType = A
physics = N

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(4) = 2
x = 6
y = -15

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(4) >= 2
y = 1.1

[State 1100, Velocity]
type = VelMul
trigger1 = AnimElemTime(4) >= 2
x = .9

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 5
value = SCA,NT
time = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElemTime(4) = 0
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
triggerall = movehit <=0
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Back
air.animtype  = Back
damage = 110,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = -1 * (var(33):=8041)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=47), var(36):=-70
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -2.6,-19
guard.velocity = -16
air.velocity = -2.6,-17
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
getpower = 140,80
givepower = 80,40
forcestand = 1

[State 1100, HitDef]
type = HitDef
triggerall = movehit <=0
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Back
air.animtype  = Back
damage = 70,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = -1 * (var(33):=8040)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=30), var(36):=-140
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -2.6,-22
guard.velocity = -16
air.velocity = -2.6,-21
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -22
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
getpower = 150,75
givepower = 75,37
forcestand = 1

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 5
movetype = I

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(4) >= 2
value = 1105
;============================ MEDIUM SHORYUUKEN ============================
[Statedef 1101]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
poweradd = 70
velset = 0,0
anim = 1101
sprpriority = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 3001, Width]
type = Width
trigger1 = 1
player = 4,0
edge = 1,0

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = s1000,1
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = s0,6

[State 52, Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40, 0

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
StateType = A
physics = N

[State 1100, Velocity]
type = posadd
trigger1 = AnimElemTime(3) = 0
x = 5*const(size.xscale)

[State 1100, Velocity]
type = posadd
trigger1 = AnimElemTime(4) = 0
x = 10*const(size.xscale)

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(4) = 2
x = 7
y = -17

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(4) >= 2
y = 1

[State 1100, Velocity]
type = VelMul
trigger1 = AnimElemTime(4) >= 2
x = .9

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 6
value = A,NA,SA
time = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 7102
ID = 7102
pos = 70,0
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
alpha = 200,256

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Back
air.animtype  = Back
damage = 90,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = -1 * (var(33):=8041)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=47), var(36):=-70
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -3,-18
guard.velocity = -16
air.velocity = -3,-16
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
getpower = 105,52
givepower = 52,27
forcestand = 1

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Back
air.animtype  = Back
damage = 40,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = -1 * (var(33):=8040)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=30), var(36):=-140
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -3,-18
guard.velocity = -16
air.velocity = -3,-16
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -22
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
getpower = 105,52
givepower = 52,27
forcestand = 1

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 5
movetype = I

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(4) >= 2
value = 1106
;============================ HEAVY SHORYUUKEN ============================
[Statedef 1102]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
poweradd = 70
velset = 0,0
anim = 1102
sprpriority = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 3001, Width]
type = Width
trigger1 = 1
player = 4,0
edge = 1,0

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = s1000,1
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1080,2

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(3) = 0
StateType = S
physics = N

[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 10*const(size.xscale)

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
StateType = A
physics = N

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(5) = 2
x = 9
y = -22

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(5) >= 2
y = 1.175

[State 1100, Velocity]
type = VelMul
trigger1 = AnimElemTime(5) >= 2
x = .9

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [3,7]

value = SCA,NA,SA,NP,SP
time = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(2) = 0
anim = 1170
ID = 1170
pos = -4,-16
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = .5*const(size.xscale),.5*const(size.xscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0
supermovetime = 999
trans = add

[State 0, Explod]
type = Explod
trigger1 = animelemtime(2) = 0
anim = 1171
ID = 1171
pos = -4,-16
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = .5*const(size.xscale),.5*const(size.xscale)
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 0
supermovetime = 999
trans = sub

[State 0, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 7102
ID = 7102
pos = 80,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1.125,1.125
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 200,256

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Back
air.animtype  = Back
damage = 70,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = -1 * (var(33):=8041)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=40), var(36):=-40
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -3.5,0
guard.velocity = -8
air.velocity = -3.5,-20
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
yaccel = 1
persistent = 0
getpower = 95,47
givepower = 47,23
forcestand = 1
id = 1102
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Back
air.animtype  = Back
damage = 50,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = -1 * (var(33):=8040)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=47), var(36):=-70
hitsound   = S1,2
guardsound = S2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -3.5,-19
guard.velocity = -16
air.velocity = -3.5,-17
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
yaccel = 1
persistent = 0
getpower = 95,47
givepower = 47,23
forcestand = 1
id = 1102
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype  = Back
air.animtype  = Back
damage = 20,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = -1 * (var(33):=8040)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=30), var(36):=-140
hitsound   = S1,2
guardsound = S2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -3.5,-22
guard.velocity = -16
air.velocity = -3.5,-21
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
yaccel = 1
persistent = 0
getpower = 95,47
givepower = 47,23
forcestand = 1
id = 1102
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 6
movetype = I

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(5) >= 2
value = 1107
;========================== LIGHT SHORYUUKEN LAND ==============================
[Statedef 1105]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1105
velset = 0,0
sprpriority = 1

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S52,0
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7100
ID = 7100
pos = 0,5
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,.75
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 170,256

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;========================== MEDIUM SHORYUUKEN LAND =============================
[Statedef 1106]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1106
velset = 0,0
sprpriority = 1

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S52,0
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7100
ID = 7100
pos = 0,5
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,.75
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 170,256

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;========================== MEDIUM SHORYUUKEN LAND =============================
[Statedef 1107]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1107
velset = 0,0
sprpriority = 1

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S52,0
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7100
ID = 7100
pos = 0,5
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,.75
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 170,256

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;========================= TATSUMAKI SENPUU KYAKU ==============================
[Statedef 1200]
type = S
physics = N
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
poweradd = 70
juggle = 1
sprpriority = 1
;facep2 = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 3
value = s1000,2
channel = 0

[State 1200, spin]
type = playsnd
trigger1 = animelem = 3
value = s0,5
channel = 1

[State 1200, statetype]
type = statetypeset
trigger1 = animelemtime(5) = 0
statetype = A
physics = N

[State 1200, Position]
type = Posadd
trigger1 = animelemtime(2) = 0
x = 14*const(size.xscale)

[State 1200, Position]
type = Posadd
trigger1 = animelemtime(5) = 0
x = 10*const(size.xscale)

[State 1200, Vel]
type = velset
trigger1 = animelemtime(5) = 0
x = 9
y = -9.5

[State 1200, Vel]
type = veladd
trigger1 = animelemtime(5) > 0
y = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 7103
ID = 7103
pos = -20,10
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,.75
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 1200, Hit]
type = hitdef
trigger1 = animelem = 3
attr = A, SA
damage = 20,0
animtype = Hard
guardflag = MAF
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=45), var(36):=-63
hitsound   = S1,5
guardsound = S2,1
ground.type = High
air.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -7,-15
air.velocity = -7,-9
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10
guard.cornerpush.veloff = 0
getpower = 70,35
givepower = 35,17
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
id = 1200

[State 1200, hitb]
type = hitdef
trigger1 = prevstateno != 330 && prevstateno != 340
trigger1 = (animelem = 7 || animelem = 10)
attr = A, SA
damage = 30,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=55), var(36):=-66
hitsound   = S1,5
guardsound = S2,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -9,-13
air.velocity = -4,-12
air.type = Low
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10
guard.cornerpush.veloff = 0
getpower = 70,35
givepower = 35,17
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
id = 1200

[State Idle]
type = statetypeset
trigger1 = AnimElemTime(11) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(5) >= 0
value = 1250
;========================= TATSUMAKI SENPUU KYAKU ==============================
[Statedef 1205]
type = S
physics = N
movetype = A
anim = 1205
ctrl = 0
velset = 0, 0
poweradd = 70
juggle = 1
sprpriority = 1
;facep2 = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 2
value = s1000,3
channel = 0

[State 1200, spin]
type = playsnd
trigger1 = (animelem = 2 || animelem = 8)
value = s0,5
channel = 1

[State 1200, statetype]
type = statetypeset
trigger1 = animelemtime(5) = 0
statetype = A
physics = N

[State 1200, Position]
type = Posadd
trigger1 = animelemtime(2) = 0
x = 14*const(size.xscale)

[State 1200, Position]
type = Posadd
trigger1 = animelemtime(5) = 0
x = 10*const(size.xscale)

[State 1200, Vel]
type = velset
trigger1 = animelemtime(5) = 0
x = 10
y = -7

[State 1200, Vel]
type = veladd
trigger1 = animelemtime(5) > 0
y = .4

[State 0, Explod]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 7103
ID = 7103
pos = -20,10
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,.75
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 1200, Hit]
type = hitdef
trigger1 = prevstateno = 330 || prevstateno = 340
trigger1 = animelem = 3
attr = A, SA
damage = 40,0
animtype = Hard
guardflag = MAF
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=45), var(36):=-63
hitsound   = S1,5
guardsound = S2,1
ground.type = High
air.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -7,-14
air.velocity = -7,-9
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10
guard.cornerpush.veloff = 0
getpower = 95,47
givepower = 47,23
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = .75
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
id = 1205

[State 1200, Hit]
type = hitdef
trigger1 = prevstateno != 330 && prevstateno != 340
trigger1 = animelem = 3
attr = A, SA
damage = 40,0
animtype = Hard
guardflag = MAF
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=45), var(36):=-63
hitsound   = S1,5
guardsound = S2,1
ground.type = High
air.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -7,-11
air.velocity = -7,-8
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10
guard.cornerpush.veloff = 0
getpower = 95,47
givepower = 47,23
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
id = 1205

[State 1200, hitb]
type = hitdef
trigger1 = prevstateno != 330 && prevstateno != 340
trigger1 = (animelem = 7 || animelem = 10)
attr = A, SA
damage = 20,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=55), var(36):=-66
hitsound   = S1,5
guardsound = S2,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -9,-11
air.velocity = -4,-8
air.type = Low
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10
guard.cornerpush.veloff = 0
getpower = 95,47
givepower = 47,23
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
id = 1205

[State 1200, hitb]
type = hitdef
trigger1 = (animelem = 13 || animelem = 16)
attr = A, SA
damage = 20,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=55), var(36):=-66
hitsound   = S1,5
guardsound = S2,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -9,-12
air.velocity = -4,-11
air.type = Low
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10
guard.cornerpush.veloff = 0
getpower = 95,47
givepower = 47,23
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
id = 1205

[State Idle]
type = statetypeset
trigger1 = AnimElemTime(17) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(5) >= 0
value = 1250
;====================== HEAVY TATSUMAKI SENPUU KYAKU ===========================
[Statedef 1210]
type = S
movetype = A
physics = S
anim = 1210
ctrl = 0
velset = 0, 0
poweradd = 70
juggle = 1
sprpriority = 1
;facep2 = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 1
value = s1000,4
channel = 0

[State 1200, spin]
type = playsnd
trigger1 = (animelem = 4 || animelem = 6 || animelem = 12 || animelem = 18)
value = s0,5
channel = 1

[State 1200, statetype]
type = statetypeset
trigger1 = anim = 1210 && animelemtime(3) = 0
statetype = A
physics = N

[State 1200, Vel]
type = velset
trigger1 = anim = 1210 && animelemtime(3) = 0
x = 15
y = -7.25

[State 0, VelAdd]
type = VelAdd
trigger1 = anim = 1210 && animelemtime(3) >= 1
;x = -.2
y = .32

[State 0, VelAdd]
type = Velset
trigger1 = anim = 1210 && animelemtime(5) >= 1
x = 9

;[State 0, VelMul]
;type = VelMul
;trigger1 = anim = 1210 && animelemtime(5) >= 1
;x = .972

[State 0, Helper]
type = Helper
trigger1 = animelemtime(6) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(16) = 0
helpertype = normal
name = "whoosh"
ID = 1270
stateno = 1270
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 1210 && animelemtime(3) = 0
anim = 7101
ID = 7101
pos = 5,10
postype = p1
facing = 1
bindtime = 1
removetime = -2
;pausemovetime = 999
scale = 1,.75
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 1200, Hit]
type = hitdef
trigger1 = anim = 1210 && (animelem = 4)
attr = A, SA
damage = 30,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = -1 * (var(33):=8042)**0;sparkno = -1 * (var(33):=8203)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=45), var(36):=-63
hitsound   = S1,5
guardsound = S2,1
ground.type = High
air.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -7,-14
air.velocity = -7,-10
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 90,45
givepower = 45,22
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
id = 1210

[State 1200, Hit]
type = hitdef
trigger1 = anim = 1210 && (animelem = 7)
attr = A, SA
damage = 35,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = -1 * (var(33):=8042)**0;sparkno = -1 * (var(33):=8203)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=60), var(36):=-85
hitsound   = S1,5
guardsound = S2,1
ground.type = High
air.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -7,0
air.velocity = -7,-7
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 90,45
givepower = 45,22
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = .75
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
id = 1210

[State 1200, Hit]
type = hitdef
trigger1 = anim = 1210 && (animelem = 13)
attr = A, SA
damage = 35,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = -1 * (var(33):=8042)**0;sparkno = -1 * (var(33):=8203)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=60), var(36):=-85
hitsound   = S1,5
guardsound = S2,1
ground.type = High
air.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -7,0
air.velocity = -7,(vel y)-6
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 90,45
givepower = 45,22
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 1.1
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
id = 1210

[State 1200, Hit]
type = hitdef
trigger1 = anim = 1210 && (animelem = 19)
attr = A, SA
damage = 40,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = -1 * (var(33):=8042)**0;sparkno = -1 * (var(33):=8203)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=60), var(36):=-85
hitsound   = S1,5
guardsound = S2,1
ground.type = High
air.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -7,0
air.velocity = -7,vel y-1
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 90,45
givepower = 45,22
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 1.1
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
id = 1210

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 16 && Vel Y > 0
trigger1 = AnimElemTime(3) >= 1
value = 1251
;============================= AIR TATZUMAKI ===================================
[Statedef 1220]
type = A
movetype = A
physics = N
juggle  = 1
poweradd = 70
ctrl = 0
anim = 1220
sprpriority = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 1000, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "QCB_c", 3,1)

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 3
value = s1000,5
channel = 0

[State 1200, spin]
type = playsnd
trigger1 = animelem = 3 || animelem = 9 || animelem = 15
value = s0,5
channel = 1

[State 0, VelSet]
type = Veladd
trigger1 = animelemtime(3) = 0
x = 2
y = -2

[State 0, Gravity]
type = veladd
trigger1 = 1
y = 1.1

[State 0, Explod]
type = Explod
triggerall = var(10) = 3
trigger1 = animelem = 3 || animelem = 9 || animelem = 15
anim = 1270
ID = 1270
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
alpha = 175,256

[State 1200, hitb]
type = hitdef
trigger1 = movehit = 0
trigger1 = (animelem = 5 || animelem = 8 || animelem = 11 || animelem = 14)
attr = A, SA
damage = 80,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=55), var(36):=-66
hitsound   = S1,5
guardsound = S2,1
air.type = High
ground.type = High
ground.slidetime = 24
ground.hittime = 24
guard.hittime = 24
air.hittime = 120
ground.velocity = -9,0
air.velocity = -4,-7
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
getpower = 140,70
givepower = 70,35
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
yaccel = 1.1
forcestand = 1
airguard.cornerpush.veloff = 0
id = 1220

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 10 && Vel Y > 0
value = 1250
;============================= LIGHT TATSU LAND ================================
[Statedef 1250]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1250
velset = 0,0
sprpriority = 1

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S52,0
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7100
ID = 7100
pos = 0,5
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,.75
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 170,256

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;============================= MEDIUM TATSU LAND ===============================
[Statedef 1251]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1251
velset = 0,0
sprpriority = 1

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S52,0
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7100
ID = 7100
pos = 0,5
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,.75
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 170,256

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;=============================== AIR HADOKEN ===================================
[Statedef 1400]
type = A
movetype = A
physics = N
juggle = 0
poweradd = 70
ctrl = 0
anim = 1400
sprpriority = 1
;velset = 0,0

[State 1000, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "QCF_z", 3, ifelse(command = "QCF_y", 2, 1))

[State 0, Gravity]
type = veladd
trigger1 = animelemtime(1) >= 1
y = .75+(.01*time)

[State 0, PosFreeze]
type = veladd
trigger1 = animelem = 3
x = -1*2
y = -2.5*2

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = s1000,0
channel = 0

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(3) = 1
value = s1080,0
channel = 5

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(3) = 0
helpertype = normal
stateno = 1480
ID = 1490
name = "Hadouken"
postype = p1
pos = 130, -90
size.xscale = .95;.9125
size.yscale = .95;1.025
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52
;================================== ROLL =======================================
[Statedef 1500]
type = S
physics = N
movetype = I
anim = 1500
ctrl = 0
velset = 0, 0
poweradd = 0
sprpriority = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S100,0
channel = 1

[State 1000, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "QCB_z", 3, ifelse(command = "QCB_y", 2, 1))

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(2) = 0
x = 15

[State 1500, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(2) >= 0
value = 0
ignoreHitPause = 1

[State 1000, End]
type = changestate
trigger1 = time >= 15 && var(10) = 1
trigger2 = time >= 20 && var(10) = 2
trigger3 = time >= 25 && var(10) = 3
value = 1501
ctrl = 0
;=================================== END =======================================
[Statedef 1501]
type = S
physics = S
movetype = I
anim = 1501
ctrl = 0
velset = 0, 0
poweradd = 0
sprpriority = 1
facep2 = 1

[State 1000, End]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1


