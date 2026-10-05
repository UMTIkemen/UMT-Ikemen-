;============================= TRINITY GEYSER ==================================
[Statedef 3000]
type = S
movetype = A
physics = S
juggle  = 0
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 1
facep2 = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 42
anim = -1
sound = -1
pos = 9999,9999
movetime = 42
darken = 0
p2defmul = 1
poweradd = -3000
unhittable = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8800
ID = 8800
name = "Carga"
postype = p1
pos = -60,-210
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 41
value = SCA
time = 4
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s3000,6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 41
value = s0,7
channel = 5

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = time = 41
;value = s3080,2
;channel = 5
;volumescale = 70

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time = [10,110]
time = 1
mul = 0,0,0

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time = [111,120]
time = 1
mul = 0+((time-111)*25),0+((time-111)*25),0+((time-111)*25)

[State 220, Position]
type = PosSet
trigger1 = 1
y = 0

[State 3001, Width]
type = Width
trigger1 = time = 0
player = 5,0
edge = 20,0

[State 3001, Width]
type = Width
trigger1 = time = 1
player = 10,0
edge = 20,0

[State 3001, Width]
type = Width
trigger1 = time = 2
player = 15,0
edge = 20,0

[State 3001, Width]
type = Width
trigger1 = time = 3
player = 20,0
edge = 20,0

[State 3001, Width]
type = Width
trigger1 = time > 3
player = 25,0
edge = 20,0

[State 0, Explod]
type = Explod
trigger1 = AnimElemtime(12) = 0
anim = 3080
ID = 3080
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1*Const(size.xscale),1*Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 210,256

[State 0, Explod]
type = Explod
trigger1 = AnimElemtime(12) = 0
anim = 3080
ID = 3080
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1*Const(size.xscale),1*Const(size.yscale)
sprpriority = -3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 46,256

[State 0, Helper]
type = Helper
trigger1 = time = 44
helpertype = normal
name = "pilar1"
ID = 3090
stateno = 3090
pos = 100,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, Helper]
type = Helper
trigger1 = time = 54
helpertype = normal
name = "pilar2"
ID = 3090
stateno = 3090
pos = 100+170,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, Helper]
type = Helper
trigger1 = time = 64
helpertype = normal
name = "pilar1"
ID = 3090
stateno = 3090
pos = 100+(170*2),0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, Helper]
type = Helper
trigger1 = time = 76
helpertype = normal
name = "pilar1"
ID = 3090
stateno = 3090
pos = 100+(172*3),0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State Idle]
type = statetypeset
trigger1 = animelemtime(36) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;============================= POWER GEYSER ====================================
[StateDef 3200]
type = S
movetype = A
physics = S
juggle  = 0
ctrl = 0
velset = 0,0
anim = 3200
sprpriority = 1
facep2 = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 42
anim = -1
sound = -1
pos = 9999,9999
movetime = 42
darken = 0
p2defmul = 1
poweradd = -1000
unhittable = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8600
ID = 8600
name = "Carga"
postype = p1
pos = 80,-140
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 41
value = SCA
time = 5
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s3000,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(9) = 0
value = s3000,1
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(9) = 5
value = s3000,1
channel = 1
volumescale = 50

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 10,0

[State 2000, Explod 1]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 3281
sprpriority = 3
postype = p1
ignorehitpause = 1
scale = 1,1
pos = 0,0
under = 0
ownpal = 1
supermovetime = 255
pausemovetime = 255
trans = add

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(9) = 0
helpertype = normal
stateno = 3280
ID = 3280
name = "PowerGeyser"
postype = p1
pos = 130, 0
size.xscale = 1*Const(size.xscale)
size.yscale = 1*Const(size.yscale)
ownpal = 1
pausemovetime = 255
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(13) >= 0
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================== BUSTER WOLF ====================================
[Statedef 3300]
type = S
movetype = A
physics = S
juggle  = 0
ctrl = 0
velset = 0,0
anim = 3300
sprpriority = 1
facep2 = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 42
anim = -1
sound = -1
pos = 9999,9999
movetime = 42
darken = 0
p2defmul = 1
poweradd = -1000
unhittable = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8600
ID = 8600
name = "Carga"
postype = p1
pos = 60,-115
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 41
value = SCA
time = 6
ignorehitpause = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s3000,2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S1080,2
channel = 2

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 20,20

[State 0, Explod]
type = Explod
trigger1 = animelemtime(10) = 0
anim = 3381
ID = 3381
pos = 170*Const(size.xscale),-152*Const(size.yscale)
postype = p1
bindtime = -1
removetime = 40
scale = 1*Const(size.xscale),1*Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add
supermovetime = 255
pausemovetime = 255

[State 0, Explod]
type = Explod
trigger1 = animelemtime(8) = 0
anim = 3382
ID = 3382
pos = 170,-110
postype = p1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 255
pausemovetime = 255
trans = add

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(1) = 0
x = -4*Const(size.xscale);16*2*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(7) = 0
x = 33*Const(size.xscale);16*2*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(8) = 0
x = 35*Const(size.xscale);16*2*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(9) = 0
x = 62*Const(size.xscale)

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 10
x = 25*Const(size.xscale)

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 10
physics = N

[State 2100, Wolf]
type = HitDef
trigger1 = time = 0
attr = A, HA
damage = 40,4
pausetime = 15,17;25
;air.pausetime = 10,28;25
guard.pausetime = 10,10
animtype = Heavy
guardflag = MA
hitflag = MAF
getpower = 0,0
givepower = 100,50
sparkno = -1+0*(var(33):=8040)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=140), var(36):=-152
hitsound = S1,2
guardsound = S2,1
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -2
guard.hittime = 12
air.velocity = -1,-3.25
air.hittime = 120
yaccel = .55
kill = 0
P1stateno = 3301
forcestand = 1
getpower = 0,0
givepower = 140,70
envshake.time = 12
envshake.ampl = 8
id = 3300

[State 2100, Wolf]
type = ChangeState
trigger1 = AnimElemTime(10) >= 6
value = 3302
;=============================== CONNECT =======================================
[Statedef 3301]
type = S
movetype = A
physics = S
anim = 3301
velset = 5,0

[State 2100, Wolf]
type = PosSet
trigger1 = Time = 0
y = 0

p[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s3000,3
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = s3000,3
channel = 1
volumescale = 50

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3381

[State 0, Explod]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 33810
ID = 33810
pos = 170*Const(size.xscale),-152*Const(size.yscale)
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = 1*Const(size.xscale),1*Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add
supermovetime = 255
pausemovetime = 255

[State 2100, Wolf]
type = Helper
trigger1 = AnimElem = 5
ID = 3380
stateno = 3380
postype = p1
pos = 25,-2
name = "buster"
ownpal = 1
size.xscale = 1*Const(size.xscale)
size.yscale = 1*Const(size.yscale)

[State Idle]
type = statetypeset
trigger1 = animelemtime(12) >= 0
movetype = I

[State 2100, Wolf]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;================================ MISS =========================================
[Statedef 3302]
type = S
movetype = I
physics = S
poweradd = 0
anim = 3302
ctrl = 0
sprpriority = 2
velset = 0,0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3381

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

[State 0, Explod]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 33810
ID = 33810
pos = 170*Const(size.xscale),-152*Const(size.yscale)
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = 1*Const(size.xscale),1*Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add
supermovetime = 255
pausemovetime = 255

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
;============================ EX POWER GEYSER ==================================
[StateDef 3400]
type = S
movetype = A
physics = S
juggle  = 0
ctrl = 0
velset = 0,0
anim = 3400
sprpriority = 1
facep2 = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 42
anim = -1
sound = -1
pos = 9999,9999
movetime = 42
darken = 0
p2defmul = 1
poweradd = -2000
unhittable = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8700
ID = 8700
name = "Carga"
postype = p1
pos = 80,-140
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 41
value = SCA
time = 5
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s3000,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(9) = 0
value = s3000,1
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(9) = 5
value = s3000,1
channel = 1
volumescale = 50

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 10,0

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 20,0

[State 2000, Explod 1]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 3281
sprpriority = 3
postype = p1
ignorehitpause = 1
scale = 1,1
pos = 0,0
under = 0
ownpal = 1
supermovetime = 255
pausemovetime = 255
trans = add

[State 1000, Strength];size
type = varset
trigger1 = animelemtime(9) = 0
fvar(10) = .6

[State 1000, Strength];size
type = varset
trigger1 = animelemtime(9) = 4
fvar(10) = .8

[State 1000, Strength];size
type = varset
trigger1 = animelemtime(9) = 8
fvar(10) = 1

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(9) = 0
helpertype = normal
stateno = 3480
ID = 3480
name = "PowerGeyser"
postype = p1
pos = 100, 0
size.xscale = 1*Const(size.xscale)
size.yscale = 1*Const(size.yscale)
ownpal = 1
pausemovetime = 255
ignorehitpause = 1

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(9) = 4
helpertype = normal
stateno = 3480
ID = 3480
name = "PowerGeyser"
postype = p1
pos = 140, 0
size.xscale = 1*Const(size.xscale)
size.yscale = 1*Const(size.yscale)
ownpal = 1
pausemovetime = 255
ignorehitpause = 1

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(9) = 8
helpertype = normal
stateno = 3480
ID = 3481
name = "PowerGeyser"
postype = p1
pos = 180, 0
size.xscale = 1*Const(size.xscale)
size.yscale = 1*Const(size.yscale)
ownpal = 1
pausemovetime = 255
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(13) >= 0
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================= EX BUSTER WOLF ==================================
[Statedef 3500]
type = S
movetype = A
physics = S
juggle  = 0
ctrl = 0
velset = 0,0
anim = 3300
sprpriority = 1
facep2 = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 42
anim = -1
sound = -1
pos = 9999,9999
movetime = 42
darken = 0
p2defmul = 1
poweradd = -2000
unhittable = 1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8700
ID = 8700
name = "Carga"
postype = p1
pos = 60,-115
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 41
value = SCA
time = 6
ignorehitpause = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s3000,2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S1080,2
channel = 2

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 20,20

[State 0, Explod]
type = Explod
trigger1 = animelemtime(10) = 0
anim = 3381
ID = 3381
pos = 170*Const(size.xscale),-152*Const(size.yscale)
postype = p1
bindtime = -1
removetime = 40
scale = 1*Const(size.xscale),1*Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add
supermovetime = 255
pausemovetime = 255

[State 0, Explod]
type = Explod
trigger1 = animelemtime(8) = 0
anim = 3382
ID = 3382
pos = 170,-110
postype = p1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 255
pausemovetime = 255
trans = add

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(1) = 0
x = -4*Const(size.xscale);16*2*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(7) = 0
x = 33*Const(size.xscale);16*2*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(8) = 0
x = 35*Const(size.xscale);16*2*Const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(9) = 0
x = 62*Const(size.xscale)

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 10
x = 26*Const(size.xscale)

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 10
physics = N

[State 2100, Wolf]
type = HitDef
trigger1 = time = 0
attr = A, HA
damage = 40,0
pausetime = 15,17;25
;air.pausetime = 10,28;25
guard.pausetime = 10,10
animtype = Heavy
guardflag = MA
hitflag = MAF
getpower = 0,0
givepower = 100,50
sparkno = -1+0*(var(33):=8040)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=140), var(36):=-152
hitsound = S1,2
guardsound = S2,1
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -2
guard.hittime = 12
air.velocity = -1,-3.25
air.hittime = 120
getpower = 0,0
givepower = 140,70
yaccel = .55
kill = 0
P1stateno = 3501
forcestand = 1
envshake.time = 12
envshake.ampl = 8
id = 3500

[State 2100, Wolf]
type = ChangeState
trigger1 = AnimElemTime(10) >= 6
value = 3502
;=============================== CONNECT =======================================
[Statedef 3501]
type = S
movetype = A
physics = S
anim = 3501
velset = 5,0

[State 0, Explod]
type = Explod
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
anim = 9600
ID = 9600
pos = 0,0
postype = p1
bindtime = 1
removetime = 1
supermovetime = 999
pausemovetime = 999
scale = 10,10
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 2100, Wolf]
type = PosSet
trigger1 = Time = 0
y = 0

p[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s3000,3
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = s3000,3
channel = 1
volumescale = 50

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3381

[State 0, Explod]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 33810
ID = 33810
pos = 170*Const(size.xscale),-152*Const(size.yscale)
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = 1*Const(size.xscale),1*Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add
supermovetime = 255
pausemovetime = 255

[State 2100, Wolf]
type = Helper
trigger1 = AnimElem = 5
ID = 3580
stateno = 3580
postype = p1
pos = 25,-2
name = "buster"
ownpal = 1
size.xscale = 1*Const(size.xscale)
size.yscale = 1*Const(size.yscale)

[State 2100, Wolf]
type = Helper
trigger1 = AnimElem = 6
ID = 3581
stateno = 3581
postype = p1
pos = 15,-2
name = "buster"
ownpal = 1
size.xscale = 1*Const(size.xscale)
size.yscale = 1*Const(size.yscale)

[State Idle]
type = statetypeset
trigger1 = animelemtime(12) >= 0
movetype = I

[State 2100, Wolf]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;================================ MISS =========================================
[Statedef 3502]
type = S
movetype = I
physics = S
poweradd = 0
anim = 3302
ctrl = 0
sprpriority = 2
velset = 0,0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3381

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

[State 0, Explod]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 33810
ID = 33810
pos = 170*Const(size.xscale),-152*Const(size.yscale)
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = 1*Const(size.xscale),1*Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add
supermovetime = 255
pausemovetime = 255

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

