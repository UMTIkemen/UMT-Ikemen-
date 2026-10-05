;=============================== EX HADOKEN ====================================
[Statedef 2000]
type = S
physics = S
movetype = A
anim = 2000
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 1
facep2 = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 0
anim = -1
sound = -1
pos = 9999,9999
movetime = 0
darken = 0
p2defmul = 1
poweradd = -500
unhittable = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = -25,-140
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

;[State 0, PalFXWiz]
;type = PalFX
;trigger1 = time <= 10
;time = 1
;add = 220-(time*22),200-(time*20),0
;invertall = 0
;color = 0+(time*25)
;ignorehitpause = 1

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = s2000,0
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
stateno = 2080
ID = 2090
name = "Hadouken"
postype = p1
pos = 140, -133
size.xscale = .9125
size.yscale = 1.025
ownpal = 1
supermovetime = 999
pausemovetime = 999

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
trigger1 = animelemtime(6) >= 0
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================== EX SHORYUUKEN ==================================
[Statedef 2100]
type = S
physics = S
movetype = A
anim = 2100
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 1
facep2 = 1
juggle = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 0
anim = -1
sound = -1
pos = 9999,9999
movetime = 0
darken = 0
p2defmul = 1
poweradd = -500
unhittable = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = 20,-60
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

;[State 0, PalFXWiz]
;type = PalFX
;trigger1 = time <= 10
;time = 1
;add = 220-(time*22),200-(time*20),0
;invertall = 0
;color = 0+(time*25)
;ignorehitpause = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = s2000,1
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 16
value = s2000,2
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = s0,6
channel = 1

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 14
value = s1080,2
channel = 1

[State 3001, Width]
type = Width
trigger1 = 1
player = 4,0
edge = 1,0

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(18) = 0
x = 4.5
y = -19

[State 0, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(18) = 0
x = 5*Const(size.xscale)

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0;AnimElemTime(18) = 0
StateType = A

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(18) = 0
StateType = A
physics = N

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 16

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(13) = 0
x = 14

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(18) >= 0
y = .85

[State 1100, Velocity]
type = VelMul
trigger1 = AnimElemTime(18) >= 0
x = .9

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [1,6]
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(2) = 0
anim = 2170
ID = 2170
pos = -4,-16
postype = p1
facing = 1
bindtime = 10
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
anim = 2171
ID = 2171
pos = -4,-16
postype = p1
facing = 1
bindtime = 10
removetime = -2
scale = .5*const(size.xscale),.5*const(size.xscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0
supermovetime = 999
trans = sub

[State 0, Explod]
type = Explod
trigger1 = animelemtime(15) = 0
anim = 2172
ID = 2172
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
trigger1 = animelemtime(15) = 0
anim = 2173
ID = 2173
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
trigger1 = animelemtime(1) = 0
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

[State 0, Explod]
type = Explod
trigger1 = AnimElemTime(17) = 0
anim = 7102
ID = 7102
pos = 90,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
;supermovetime = 999
;pausemovetime = 999
scale = 1.25,1.25
sprpriority = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = addalpha
alpha = 200,256

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Medium
air.animtype  = Back
damage = 20,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 4,4
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
air.velocity = -3.5,-4
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = 1
persistent = 1
getpower = 0,0
givepower = 25,12
forcestand = 1
id = 2100
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Medium
air.animtype  = Back
damage = 20,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 4,4
sparkno = -1 * (var(33):=8040)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=47), var(36):=-70
hitsound   = S1,2
guardsound = S2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -3.5,0
guard.velocity = -16
air.velocity = -3.5,-4
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = 1
persistent = 1
getpower = 0,0
givepower = 25,12
forcestand = 1
id = 2100
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype  = Heavy
air.animtype  = Back
damage = 20,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 4,4
sparkno = -1 * (var(33):=8040)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=30), var(36):=-110
hitsound   = S1,2
guardsound = S2,1
ground.type = High
ground.slidetime = 24
ground.hittime  = 24
guard.ctrltime = 20
ground.velocity = -3.5,0
guard.velocity = -16
air.velocity = -3.5,-14.5
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = 1
persistent = 1
getpower = 0,0
givepower = 25,12
forcestand = 1
id = 2100
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 15
attr = S, SA
animtype  = Medium
air.animtype  = Back
damage = 20,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 4,4
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=35), var(36):=-27
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -3.5,0
guard.velocity = -8
air.velocity = -3.5,-4
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = 1
persistent = 1
getpower = 0,0
givepower = 25,12
forcestand = 1
id = 2100
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 16
attr = S, SA
animtype  = Medium
air.animtype  = Back
damage = 20,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 4,4
sparkno = -1 * (var(33):=8041)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=40), var(36):=-40
hitsound   = S1,2
guardsound = S2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -3.5,0
guard.velocity = -8
air.velocity = -3.5,-4
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = 1
persistent = 1
getpower = 0,0
givepower = 25,12
forcestand = 1
id = 2100
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 17
attr = S, SA
animtype  = Heavy
air.animtype  = Back
damage = 20,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 4,4
sparkno = -1 * (var(33):=8040)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=47), var(36):=-70
hitsound   = S1,2
guardsound = S2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -3.5,0
guard.velocity = -16
air.velocity = -3.5,-4
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = 1
persistent = 1
getpower = 0,0
givepower = 25,12
forcestand = 1
id = 2100
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 18
attr = S, SA
animtype  = Back
air.animtype  = Back
damage = 40,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 4,4
sparkno = -1 * (var(33):=8040)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=30), var(36):=-110
hitsound   = S1,2
guardsound = S2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -3.5,-24
guard.velocity = -16
air.velocity = -3.5,-23
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 16
envshake.ampl = 5
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
id = 2100
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(18) >= 0
value = 1107
;========================== EX TATZUMAKI SENPUKYAKU ============================
[Statedef 2200]
type = S
movetype = A
physics = S
anim = 2200
juggle  = 1
ctrl = 0
velset = 0,0
facep2 = 1
sprpriority = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 0
anim = -1
sound = -1
pos = 9999,9999
movetime = 0
darken = 0
p2defmul = 1
poweradd = -500
unhittable = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = -25,-140
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

;[State 0, PalFXWiz]
;type = PalFX
;trigger1 = time <= 10
;time = 1
;add = 220-(time*22),200-(time*20),0
;invertall = 0
;color = 0+(time*25)
;ignorehitpause = 1

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
trigger1 = animelem = 1
value = S2000,3
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = S2000,4
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S40,0
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = (animelem = 5 || animelem = 11 || animelem = 16)
value = S2080,3
channel = 2
volumescale = 400

[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 15
y = -7

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(2) = 0
statetype = A
physics = N

[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 14
y = -6

[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 0
x = 10
y = -5

[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 0
x = 8
y = -3.75

[State 0, VelMul]
type = VelMul
trigger1 = AnimElemTime(19) >= 0
x = .95

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(18) >= 0
y = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
trigger2 = animelem = 12
trigger3 = animelem = 17
anim = 2270
ID = 2270
pos = 2,-115
postype = p1
facing = -1
bindtime = -1
removetime = 10
scale = .75,.85
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = add

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
trigger2 = animelem = 12
trigger3 = animelem = 17
anim = 2271
ID = 2271
pos = 2,-115
postype = p1
facing = -1
bindtime = -1
removetime = 10
scale = .75,.85
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = sub

[State 0, Explod]
type = Explod
trigger1 = animelemtime(2) = 0
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
trigger1 = animelem = 3
attr = A, SA
damage = 40,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = -1 * (var(33):=8042)**0;sparkno = -1 * (var(33):=8203)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=45), var(36):=-63
hitsound   = S1,5
guardsound = S2,1
ground.type = High
air.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -8,-17
air.velocity = -8,-16
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
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
id = 2200

[State 1200, hitb]
type = hitdef
trigger1 = animelem = 7
trigger2 = animelem = 12
attr = A, SA
damage = 40,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=60), var(36):=-70
hitsound   = S1,5
guardsound = S2,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -9,-8
air.velocity = -9,-7
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
yaccel = 1
forcestand = 1
airguard.cornerpush.veloff = 0
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0
id = 2200

[State 1200, hitb]
type = hitdef
trigger1 = animelem = 17
attr = A, SA
damage = 40,0
animtype = Diagup
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=60), var(36):=-70
hitsound   = S1,5
guardsound = S2,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -12,-9
air.velocity = -12,-8
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
yaccel = 1
forcestand = 1
airguard.cornerpush.veloff = 0
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0
id = 2200

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 10 && Vel Y > 0
trigger1 = AnimElemTime(2) >= 0
value = 1251
;========================== EX AIR TATZUMAKI SENPUKYAKU=========================
[Statedef 2210]
type = A
movetype = A
physics = N
anim = 2210
juggle  = 1
ctrl = 0
poweradd = 0
sprpriority = 1
;velset = 0.5 * vel x, 0.5 * vel y

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 0
anim = -1
sound = -1
pos = 9999,9999
movetime = 0
darken = 0
p2defmul = 1
poweradd = -500
unhittable = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = -25,-100
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

;[State 0, PalFXWiz]
;type = PalFX
;trigger1 = time <= 10
;time = 1
;add = 220-(time*22),200-(time*20),0
;invertall = 0
;color = 0+(time*25)
;ignorehitpause = 1

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
trigger1 = animelem = 1
value = S2000,5
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = (animelem = 4 || animelem = 10)
value = S2080,3
channel = 2
volumescale = 400

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
trigger1 = vel x > -2
x = 0.5 * vel x
y = 0.5 * vel y

[State 0, VelSet]
type = Veladd
trigger1 = animelemtime(3) = 0
x = ifelse(vel x < -2,-3,7)
y = ifelse(vel x < -2,0,2)

[State 0, Gravity]
type = veladd
trigger1 = 1
y = .775

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 3080
ID = 3080
pos = -15,-110
postype = p1
facing = -1
vfacing = 1
bindtime = -1
removetime = 30
scale = .75,.85
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = addalpha
alpha = 256,256
angle = 5

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 3081
ID = 3081
pos = -15,-110
postype = p1
facing = -1
vfacing = 1
bindtime = -1
removetime = 30
scale = .75,.85
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = sub
angle = 5

[State 1200, Hit]
type = hitdef
trigger1 = movehit = 0
trigger1 = animelem = 4
attr = A, SA
damage = 70,0
animtype = Diagup
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = -1 * (var(33):=8042)**0;sparkno = -1 * (var(33):=8203)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=55), var(36):=-66
hitsound   = S1,5
guardsound = S2,1
ground.type = High
air.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(p2dist x <-10,-2,-2),-19
air.velocity = ifelse(p2dist x <-10,-2,-2),-10
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 50,25
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 1.1
forcestand = 1
airguard.cornerpush.veloff = 0
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0
id = 2210

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 10 && Vel Y > 0
value = 2215
;================================= LAND ========================================
[Statedef 2215]
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

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 3080
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 3081
ignorehitpause = 1

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
[Statedef 2400]
type = A
movetype = A
physics = N
juggle = 0
poweradd = 0
ctrl = 0
anim = 2400
sprpriority = 1
;velset = 0,0

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 0
anim = -1
sound = -1
pos = 9999,9999
movetime = 0
darken = 0
p2defmul = 1
poweradd = -500
unhittable = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = -30,-160
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

;[State 0, PalFXWiz]
;type = PalFX
;trigger1 = time <= 10
;time = 1
;add = 220-(time*22),200-(time*20),0
;invertall = 0
;color = 0+(time*25)
;ignorehitpause = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

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
value = s2000,0
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
stateno = 2480
ID = 2490
name = "Hadouken"
postype = p1
pos = 120, -97
size.xscale = .95;.9125
size.yscale = .95;1.025
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52

