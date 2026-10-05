; _________________________________________
;| Character by JStudios2k                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER MOVES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
;Laser Tag
[Statedef 3000]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd= ifElse(var(53), 0, -500)
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3000

[State not angery]
type=VarSet
trigger1=!time&&var(41)=1
var(41)=2

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = !time && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = !time
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = -10, -40
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = !time
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 200, Snd]
type=playsnd
trigger1= !time ;&& random<500
value= 5, 1
channel=0

[State 210, Snd]
type=playsnd
trigger1= animelem=3
value=1,26

[State 450, Helper]
type = Helper
trigger1 =animelem=2
helpertype = normal ;player
name ="woosh"
ID = 3001
stateno = 3001
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
postype = p1
ownpal = 1
persistent=0

[State 250, Width]
type= Width
trigger1=animelem = 3
player = 30,0
edge = 35,0

[State 6000, 5]
type = HitDef
trigger1 = Timemod = 6,0
attr = S, HP
damage = ceil(ifelse(fvar(11) * 22 < 7, 7, fvar(11) * 22)), 5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 2, 4
hitsound = -1 + 0*(var(31):=11)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8014)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=300), var(36):=-65
getpower = 0
givepower = 23, 23
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -5,-1
airguard.velocity = -5,-3
air.type = High
air.velocity = -5,-1
air.hittime = 12
fall = 1
envshake.time = 15
envshake.ampl = 7
fall.envshake.time = 15
fall.envshake.ampl = -7
palFX.time = 40
palFX.mul = 192,100,100
palFX.sinAdd = 96, 96, 96, 4
palFX.invertall = 1
palfx.color = 0

[State 3000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(23) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Bird Hunt
[Statedef 3010]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd= -500
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3010

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Teleport Counter]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = !time && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = !time
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = -10, -40
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = !time
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0
[State 210, Snd]
type=playsnd
trigger1 = Time = 0
value = 1, 32

[State 210, Snd]
type=playsnd
trigger1= animelem=1
value= 4, 0

[State 3300, guard]
type = attackdist
trigger1 = 1
value = 280

[State 3000, Teleport Counter]
type = VarAdd
trigger1 = animelem = 12
var(10) = 1

[State 102, Dust]
type = helper
trigger1 = animelem = 5 || animelem = 11
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1
[State 105, 5]
type = AfterImage
trigger1 = animelem = 5 || animelem = 11
time = 11
trans = add1
timegap = 0
framegap = 0
length = 16
palbright = 12,12,12
palcontrast = 256,256,256
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 || animelem = 11
value = 101,0
[State 100, 1]
type = VelSet
trigger1 = animelem = 5 || animelem = 11
x = 12
[State 100, Turn]
type = Turn
trigger1 = p2bodydist x< -5 && animelemtime(12)=0
trigger2 = p2bodydist x< -5 && animelemtime(6)=1
ignorehitpause = 1
[State 100, Push]
type = PlayerPush
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger2 = animelemtime(6) >= 0 && animelemtime(12) < 0
value = 0
[State 100, 1]
type = VelSet
trigger1 = animelemtime(6) = 1 || animelemtime(12) = 1
x = 0

[State 3300, ScreenBound]
type = ScreenBound
trigger1 = (animelemtime(5)>=0 && animelemtime(6)<0)
trigger2 = (animelemtime(11)>=0 && animelemtime(12)<0)
value = 1
movecamera = 0,1

[State 250, Width]
type= Width
trigger1= animelem = 7
player = 50,0
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 1,30
channel = 1
[State 1000, Helper]
type = Helper
trigger1 = animelem = 7
helpertype = normal
stateno = 3011
ID = 3011
name = "Gunfire"
postype = p1
pos = ceil(110 * const(size.xscale)), ceil(-145 * const(size.yscale))
pausemovetime = 9999
supermovetime = 9999
size.xscale = 0.3
size.yscale = 0.25
ownpal = 1

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = animelem=12,=2 && var(10)<7
value = 3010
elem = 6

[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;The Power
[StateDef 3050]
type=S
movetype=A
physics=N
poweradd=ifElse(var(53), -1000, -2000)
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 3050, Anim]
type=changeanim
trigger1=!time
value=3050

[State not angery]
type=VarSet
trigger1=!time&&var(41)=1
var(41)=2

[state 3050,Posset]
type=posset
trigger1=!time
y=0

[State 3050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 0
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 0 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 53

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 0
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 4, -60
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 53
moveTime = 53
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0
[State 210, Snd]
type=playsnd
trigger1 = Time = 0
value = 1, 32

[State 210, Snd]
type=playsnd
trigger1= animelem=1
value=5,2
channel = 0
[State 210, Snd]
type=playsnd
trigger1= animelem=3
value=5,3
channel = 0

[State 210, Snd]
type=playsnd
trigger1= animelem=3
value=1,31

[State 6002, 5]
type = HitDef
trigger1 = Timemod = 4,0
attr = S, HA
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
damage = ceil(ifElse(fvar(11) * 19 < 7, 7, fvar(11) * 19)), 5
pausetime = 2, 4
hitsound = -1 + 0*(var(31):=3000)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8014)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=300), var(36):=-65
getpower = 0
givepower = 10, 10
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4.5,-1
airguard.velocity = -5,-3
air.type = High
air.velocity = -2.5,-1.5
air.hittime = 12
fall = 1
envshake.time = 15
envshake.ampl = 7
fall.envshake.time = 15
fall.envshake.ampl = -7
palfx.time = 40
palfx.add = 150,256,0
palfx.sinadd = 10,10,10,5
palfx.color = 0

[State 210, Snd]
type=playsnd
trigger1= !AnimTime
value=5000,0
channel = 0

[State 3050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Category Five
[Statedef 3100]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd= ifElse(var(53), 0, -1000)
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3100

[State not angery]
type=VarSet
trigger1=!time&&var(41)=1
var(41)=2

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = !time && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = !time
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 35, -67
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = !time
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 5000, 0
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2 || animelem = 5
value = 1,9+random%2
channel = 1
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 40,0

[State 1100, HitDef]
type = HitDef
triggerall = P2bodydist X = [-const(size.ground.front),39]
triggerall = p2movetype != H && P2StateNo != [150,155]
trigger1 = AnimElem = 3
attr = S, HT
hitflag = M-
ID = 1100
priority = 3, Dodge
pausetime = 0, 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 3101
guard.dist = 0
numhits = 0

[State 1100, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;This is your last pride
[Statedef 3101]
type = S
physics = S
movetype = I
anim = 3101
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 3106
ID = 1100
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 0, Width]
type = Width
trigger1 = time = 0 && NumTarget
edge = 80, 0
ignorehitpause = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 800
channel = 2

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 1,32
channel = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 1,2
channel = 1
[State 1000, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 12
[State 1000, BOOM]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 999
[State 1000, BOOM]
type = PlaySnd
trigger1 = animelem = 4
value = 2, 45

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
pos = ceil(40 * const(size.xscale)), 0
[State 820, SprPriority]
type = SprPriority
trigger1 = AnimElem = 3
value = -1
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 3
pos = ceil(0 * const(size.xscale)), ceil(-175 * const(size.yscale))

[State 0, TargetState]
type = TargetState
trigger1 = AnimElem = 4 && NumTarget
value = 3107
ID = 1100
ignorehitpause = 1
[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = ceil(45*const(size.xscale)), ceil(-135*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State WHAMMY]
type = Explod
trigger1 = NumTarget
trigger1 = AnimElem = 4
anim = 300
pos = ceil(45*const(size.xscale)), ceil(-135*const(size.yscale))
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.7,0.7
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0
[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 4
value = -ceil(35 * fvar(11))
kill = 0
[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 4
time = 12
ampl = -7
freq = 235
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 4
value = 1

[State 1000, Turn]
type = Turn
trigger1 = AnimElem = 6
[State 820, SprPriority]
type = SprPriority
trigger1 = AnimElem = 6
value = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = animelem = 7
value = 191,0
channel = 0

[State 0, TargetState]
type = TargetState
trigger1 = AnimElem = 24 && NumTarget
value = 821
ID = 1100
ignorehitpause = 1
[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 24
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = ceil(45*const(size.xscale)), ceil(-135*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State WHAMMY]
type = Explod
trigger1 = NumTarget
trigger1 = AnimElem = 24
anim = 300
pos = ceil(45*const(size.xscale)), ceil(-135*const(size.yscale))
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.7,0.7
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0
[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 24
value = -ceil(35 * fvar(11))
kill = 0
[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 24
time = 6
ampl = 6
freq = 120
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 24
value = 1
[State 1000, BOOM]
type = PlaySnd
trigger1 = animelem = 24
value = 2, 12

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
pos = ceil(80 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
pos = ceil(50 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(26) >= 0
pos = ceil(30 * const(size.xscale)), 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 3102

;I'M NOT GONNA SUGARCOAT IT: 720+P
[Statedef 3102]
type = S
physics = S
movetype = I
anim = 3102
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 3108
ID = 1100
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 800

[State 1000, OOOOOOOOOOOOOOOOOOOOO]
type = PlaySnd
trigger1 = time = 25
value = 5, 3
channel = 0

[State 1000, Woosh]
type = Explod
trigger1 = animelem = 3
anim = 1156
ID = 1106
pos = 0,ceil(-150*const(size.yscale))
postype = p1 
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 0.5,0.5
sprpriority = 1
ontop = 1
ownpal = 1

[State 820, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
statetype = A
physics = N
[State 820, VelSet]
type = VelSet
trigger1 = AnimElemTime(10) = 0
y = -2

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
pos = ceil(40 * const(size.xscale)), 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(7) >= 0 && AnimElemTime(9) < 0
pos = ceil(60 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0
trigger2 = AnimElemTime(9) >= 0 && AnimElemTime(11) < 0
pos = ceil(-60 * const(size.xscale)), 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger3 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
trigger4 = AnimElemTime(23) >= 0 && AnimElemTime(24) < 0
trigger5 = AnimElemTime(27) >= 0 && AnimElemTime(28) < 0
trigger6 = AnimElemTime(31) >= 0 && AnimElemTime(32) < 0
trigger7 = AnimElemTime(35) >= 0 && AnimElemTime(36) < 0
pos = ceil(30 * const(size.xscale)), ceil(-145 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger3 = AnimElemTime(20) >= 0 && AnimElemTime(21) < 0
trigger4 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
trigger5 = AnimElemTime(28) >= 0 && AnimElemTime(29) < 0
trigger6 = AnimElemTime(32) >= 0 && AnimElemTime(33) < 0
trigger7 = AnimElemTime(36) >= 0 && AnimElemTime(37) < 0
pos = ceil(30 * const(size.xscale)), ceil(-140 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
trigger2 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
trigger3 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
trigger4 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
trigger5 = AnimElemTime(29) >= 0 && AnimElemTime(30) < 0
trigger6 = AnimElemTime(33) >= 0 && AnimElemTime(34) < 0
trigger7 = AnimElemTime(37) >= 0 && AnimElemTime(38) < 0
pos = ceil(-30 * const(size.xscale)), ceil(-145 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger2 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
trigger3 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
trigger4 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
trigger5 = AnimElemTime(30) >= 0 && AnimElemTime(31) < 0
trigger6 = AnimElemTime(34) >= 0 && AnimElemTime(35) < 0
trigger7 = AnimElemTime(38) >= 0 && AnimElemTime(39) < 0
pos = ceil(-30 * const(size.xscale)), ceil(-140 * const(size.yscale))

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 39
pos = ceil(45 * const(size.xscale)), ceil(-40 * const(size.yscale))

[State 0, YEET]
type = TargetState
trigger1 = animelem = 39 && NumTarget
value = 1307
ID = 1100
ignorehitpause = 1

[State 1000, woosh]
type = PlaySnd
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16
trigger2 = animelem = 20 || animelem = 24 || animelem = 28 || animelem = 32
trigger3 = animelem = 36
value = 1, 5
channel = 1
[State 1000, woosh]
type = PlaySnd
trigger1 = animelem = 39
value = 1, 15

[State 0, StopSnd]
type = StopSnd
trigger1 = animelem = 39
channel = 0

[State 8330, Dust]
type = explod
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16
trigger2 = animelem = 20 || animelem = 24 || animelem = 28 || animelem = 32
trigger3 = animelem = 36
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 39
value = -ceil(285 * fvar(11))
[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 39
time = 8
ampl = -7
freq = 235
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 8 || animelem = 12 || animelem = 16
trigger2 = animelem = 20 || animelem = 24 || animelem = 28 || animelem = 32
trigger3 = animelem = 36
value = 1

[State 820, Juggle]
type = varadd
trigger1 =numtarget && animelem = 39
var(15) = 1
[State 820, Damage]
type = varadd
trigger1 =numtarget && animelem = 39
var(13) = 3
[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1= animelem = 39
value = 72

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(40) = 0
x = -3
[State 0, VelSet]
type = Gravity
trigger1 = animelemtime(40) >= 0

[State 650, End]
type=changestate
trigger1= pos y>-vel y
value=52

; Category Five (Freeze)
[Statedef 3106]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 820, On Ground]
type = PosSet
trigger1 = !Time
y = 0

[State 820, Screenbound]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time 
value = 3106

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 3005, Safety]
type = SelfState
trigger1 = time >= 100
value = 0
ctrl = 1

; Category Five (Fall)
[Statedef 3107]
type = L
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 820, On Ground]
type = PosSet
trigger1 = !Time
y = 0

[State 820, Safety]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 820, Screenbound]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 3107

[State 820, ChangeAnim2]
type = ChangeAnim
Trigger1 = !AnimTime && Anim = 3107
value = 5300

[State 820, Turn]
type = Turn
trigger1 = Anim = 3107 && AnimElem = 10

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 3005, Safety]
type = SelfState
trigger1 = time >= 350
value = 5050

; Category Five (SPIN)
[Statedef 3108]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 820, On Ground]
type = PosSet
trigger1 = !Time
y = 0

[State 820, Screenbound]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time 
value = 3108

[State 902, 1]
type = AngleSet
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(37) < 0
value = 90

[State 902, 2]
type = AngleDraw
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(37) < 0

[State 902, Turn]
type = turn
trigger1 = animelem=20
trigger2 = animelem=22
trigger3 = animelem=24
trigger4 = animelem=26
trigger5 = animelem=28
trigger6 = animelem=30
trigger7 = animelem=32
trigger8 = animelem=34
trigger9 = animelem=36
;trigger10 = animelem=38

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 3005, Safety]
type = SelfState
trigger1 = time = 240 ;!gethitvar(isbound)
value = 5050

;---------------------------------------------------------------------------
;MAX Category Five
[Statedef 3150]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd= ifElse(var(53), -1000, -2000)
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3150

[State not angery]
type=VarSet
trigger1=!time&&var(41)=1
var(41)=2

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = !time && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = !time
stateno = 8510
ID = 8510
name = "Superpause FX"
postype = p1
pos = 40, -53
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = !time
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 5000, 1
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2 || animelem = 5
value = 1,9+random%2
channel = 1
[State 1000, SIUUUU!!!]
type = PlaySnd
trigger1 = animelem = 2
value = 1,16
channel = 0
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 40,0

[State 1100, HitDef]
type = HitDef
triggerall = P2bodydist X = [-const(size.ground.front),42]
triggerall = p2movetype != H && P2StateNo != [150,155]
trigger1 = AnimElem = 3
attr = S, HT
hitflag = M-
ID = 3150
priority = 3, Dodge
pausetime = 0, 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 3151
guard.dist = 0
numhits = 0

[State 1100, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;WITNESS MY FULL MIGHT
[Statedef 3151]
type = S
physics = S
movetype = I
anim = 3151
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 3106
ID = 3150
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 0, Width]
type = Width
trigger1 = time = 0 && NumTarget
edge = 80, 0
ignorehitpause = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 800
channel = 2

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 1,32
channel = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 1,2
channel = 1
[State 1000, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 12
[State 1000, BOOM]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 1000
[State 1000, BOOM]
type = PlaySnd
trigger1 = animelem = 4
value = 2, 45

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
pos = ceil(40 * const(size.xscale)), 0
[State 820, SprPriority]
type = SprPriority
trigger1 = AnimElem = 3
value = -1
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 3
pos = ceil(0 * const(size.xscale)), ceil(-175 * const(size.yscale))

[State 0, TargetState]
type = TargetState
trigger1 = AnimElem = 4 && NumTarget
value = 3107
ID = 3150
ignorehitpause = 1
[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = ceil(45*const(size.xscale)), ceil(-135*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State WHAMMY]
type = Explod
trigger1 = NumTarget
trigger1 = AnimElem = 4
anim = 300
pos = ceil(45*const(size.xscale)), ceil(-135*const(size.yscale))
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.7,0.7
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0
[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 4
value = -ceil(35 * fvar(11))
kill = 0
[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 4
time = 12
ampl = -7
freq = 235
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 4
value = 1

[State 1000, Turn]
type = Turn
trigger1 = AnimElem = 6
[State 820, SprPriority]
type = SprPriority
trigger1 = AnimElem = 6
value = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = animelem = 7
value = 191,0
channel = 0

[State 1000, PosAdd]
type = PosAdd
trigger1 = animelemtime(22) = 0 || animelemtime(22) = 3 || animelemtime(22) = 6
x = 10

[State 1000, WOOSH]
type = PlaySnd
trigger1 = animelem = 23
value = 2, 800

[State 1000, WOOSH]
type = PlaySnd
trigger1 = animelem = 25
value = 1, 10
[State 1000, YEAT]
type = PlaySnd
trigger1 = animelem = 24
value = 1, 22

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
pos = ceil(10 * const(size.xscale)), ceil(-110 * const(size.yscale))

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 25
pos = ceil(12 * const(size.xscale)), ceil(-255 * const(size.yscale))

[State 0, YEET]
type = TargetState
trigger1 = AnimElem = 25 && NumTarget
value = 3156
ID = 3150
ignorehitpause = 1

[State 40, Snd]
type = playsnd
trigger1 = !animtime
value = 41, 0
[State 40, Dust]
type = helper
trigger1 = !animtime
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 3152

;NO MERCY, NO REMORSE
[Statedef 3152]
type = A
physics = A
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 3000,Posset]
type=posset
trigger1=!time
y=-2

[State 1000, VelSet]
type = VelSet
trigger1 = !time
y = -12

[State 1100, HitDef]
type = HitDef
trigger1 = NumTarget(3150)
trigger1 = !time
attr = A, HT
hitflag = MAF
ID = 3150
priority = 3, Dodge
pausetime = 0, 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 3153
guard.dist = 0
numhits = 0

;I'M NOT GONNA SUGARCOAT IT: 720+PP
[Statedef 3153]
type = A
physics = N
movetype = I
anim = 3152
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1000, VelSet]
type = VelSet
trigger1 = !time
y = -0.5

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 3157
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 800

[State 1000, OOOOOOOOOOOOOOOOOOOOO]
type = PlaySnd
trigger1 = time = 25
value = 5, 3
channel = 0

[State 1000, Woosh]
type = Explod
trigger1 = animelem = 3
anim = 1156
ID = 1106
pos = 0,ceil(-150*const(size.yscale))
postype = p1 
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 0.5,0.5
sprpriority = 1
ontop = 1
ownpal = 1

[State 820, VelSet]
type = VelSet
trigger1 = AnimElemTime(10) = 0
y = -2

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
pos = ceil(40 * const(size.xscale)), 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(7) >= 0 && AnimElemTime(9) < 0
pos = ceil(60 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0
trigger2 = AnimElemTime(9) >= 0 && AnimElemTime(11) < 0
pos = ceil(-60 * const(size.xscale)), 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger3 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
trigger4 = AnimElemTime(23) >= 0 && AnimElemTime(24) < 0
trigger5 = AnimElemTime(27) >= 0 && AnimElemTime(28) < 0
trigger6 = AnimElemTime(31) >= 0 && AnimElemTime(32) < 0
trigger7 = AnimElemTime(35) >= 0 && AnimElemTime(36) < 0
pos = ceil(30 * const(size.xscale)), ceil(-145 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger3 = AnimElemTime(20) >= 0 && AnimElemTime(21) < 0
trigger4 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
trigger5 = AnimElemTime(28) >= 0 && AnimElemTime(29) < 0
trigger6 = AnimElemTime(32) >= 0 && AnimElemTime(33) < 0
trigger7 = AnimElemTime(36) >= 0 && AnimElemTime(37) < 0
pos = ceil(30 * const(size.xscale)), ceil(-140 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
trigger2 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
trigger3 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
trigger4 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
trigger5 = AnimElemTime(29) >= 0 && AnimElemTime(30) < 0
trigger6 = AnimElemTime(33) >= 0 && AnimElemTime(34) < 0
trigger7 = AnimElemTime(37) >= 0 && AnimElemTime(38) < 0
pos = ceil(-30 * const(size.xscale)), ceil(-145 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger2 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
trigger3 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
trigger4 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
trigger5 = AnimElemTime(30) >= 0 && AnimElemTime(31) < 0
trigger6 = AnimElemTime(34) >= 0 && AnimElemTime(35) < 0
trigger7 = AnimElemTime(38) >= 0 && AnimElemTime(39) < 0
pos = ceil(-30 * const(size.xscale)), ceil(-140 * const(size.yscale))

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(39) >= 0 && AnimElemTime(40) < 0
pos = ceil(15 * const(size.xscale)), ceil(-90 * const(size.yscale))

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(40) >= 0
pos = ceil(15 * const(size.xscale)), ceil(-180 * const(size.yscale))

[State 1000, woosh]
type = PlaySnd
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16
trigger2 = animelem = 20 || animelem = 24 || animelem = 28 || animelem = 32
trigger3 = animelem = 36 || animelem = 39
value = 1, 5
channel = 1

[State 8330, Dust]
type = explod
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16
trigger2 = animelem = 20 || animelem = 24 || animelem = 28 || animelem = 32
trigger3 = animelem = 36
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 8 || animelem = 12 || animelem = 16
trigger2 = animelem = 20 || animelem = 24 || animelem = 28 || animelem = 32
trigger3 = animelem = 36
value = 1

[State 1000, kracc]
type = PlaySnd
trigger1 = animelem = 39
value = 1, 21

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(40) = 0
x = 3
[State 0, VelSet]
type = Gravity
trigger1 = animelemtime(40) >= 0

[State 650, End]
type=changestate
trigger1= pos y>-vel y
value=3154

;BOOM
[Statedef 3154]
type = C
physics = S
movetype = I
anim = 3153
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 3158
ID = 3150
ignorehitpause = 1

[State 3000, Ground Impact Dust]
type = Helper
trigger1 = time = 0 && NumTarget
stateNo = 8110
ID = 8110
name = "Ground Impact Dust"
posType = P1
facing = -1
pos = 0,0
ownPal = 1
ignorehitpause=1

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = !time
pos = ceil(30 * const(size.xscale)), 0

[State 816, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 16
ampl = -30
freq = 255

[State 3000, SlamSnd]
type = PlaySnd
trigger1 = time = 0
value = 1, 33
[State 3000, SlamSnd]
type = PlaySnd
trigger1 = time = 0
value = 1, 23
[State 3000, SlamSnd]
type = PlaySnd
trigger1 = time = 0
value = 2, 11
channel = 0

[State 3000, Explosion]
type = Explod
trigger1 = time = 0
anim = 3154
ID = 3154
pos = ceil(30 * const(size.xscale)), ceil(-60 * const(size.yscale))
postype = P1
ownpal = 1
ontop = 0
sprpriority = 2
removetime = -2
scale = 1,1

[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 1
value = -ceil(354 * fvar(11))
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 1
value = 1

[State 820, Juggle]
type = varadd
trigger1 =numtarget && animelem = 1
var(15) = 1
[State 820, Damage]
type = varadd
trigger1 =numtarget && animelem = 2
var(13) = 3
[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1= animelem = 1
value = 72

[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;MAX YEET
[StateDef 3156]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -0.2, -18
sprPriority = 2

[State 820, HitBy]
type = HitBy
trigger1 = 1
value = A, HT

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time 
value = 3156

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 816, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.53

[State 816, Emergency fall damage if the throw fails--in ANY CASE]
type = LifeAdd
trigger1 = vel y > 0 && pos y >= 0
value = -200

[State 816, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 16
ampl = -12
freq = 255

[State 816, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

; MAX SPIN
[Statedef 3157]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 820, On Ground]
type = PosSet
trigger1 = !Time
y = 0

[State 820, Screenbound]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time 
value = 3157

[State 902, 1]
type = AngleSet
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(37) < 0
value = 90

[State 902, 2]
type = AngleDraw
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(37) < 0

[State 902, Turn]
type = turn
trigger1 = animelem=20
trigger2 = animelem=22
trigger3 = animelem=24
trigger4 = animelem=26
trigger5 = animelem=28
trigger6 = animelem=30
trigger7 = animelem=32
trigger8 = animelem=34
trigger9 = animelem=36
;trigger10 = animelem=38
;trigger11 = animelem=39

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 3005, Safety]
type = SelfState
trigger1 = time = 240 ;!gethitvar(isbound)
value = 5050

; Category Five (rip)
[Statedef 3158]
type = L
movetype = H
physics = N
ctrl = 0
sprpriority = 1
facep2 = 1

[State 820, On Ground]
type = PosSet
trigger1 = !Time
y = 0

[State 820, Safety]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 820, Screenbound]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 3158

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 3005, Safety]
type = SelfState
trigger1 = !animtime
value = 5120

;---------------------------------------------------------------------------
;Lantern Hammer
[Statedef 3200]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd= ifElse(var(53), 0, -1000)
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3200

[State not angery]
type=VarSet
trigger1=!time&&var(41)=1
var(41)=2

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = time = 3
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = time = 3
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 20, -65
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = time = 3
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1 && anim = 3200
value = 5, 0
channel = 0
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2 && anim = 3200
value = 1, 25

[State 3000, charging]
type = Helper
trigger1 =animelem=4 && anim = 3200
helpertype = normal ;player
name ="charge"
ID = 3204
stateno = 3204
pos = 0,0
size.xscale = 0.2
size.yscale = 0.2
postype = p1
ownpal = 1
persistent=0
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4) = 1 && anim = 3200
value = 1, 34

[State 3000, ReSet]
type = VarSet
trigger1=anim = 3200 && animelemtime(4)<0
var(11) = 0
ignorehitpause=1
[State 3000, Add]
type = VarAdd
triggerall=anim = 3200 && animelemtime(4)>=0
trigger1=!(AILevel) && (command="holda" || command="holdb" || command="holdc")  
trigger2=AILevel
var(11) = 1
ignorehitpause=1

[State 3000, charging]
type = Helper
trigger1 = var(11) = 120
helpertype = normal ;player
name = "FULL CHARGE"
ID = 3205
stateno = 3205
pos = 0,0
size.xscale = 0.7
size.yscale = 0.7
postype = p1
ownpal = 1
persistent=0
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = var(11) = 120
value = 2, 11
[State 3105, WHAM!]
type = envshake
trigger1= var(11) = 120
time=6
freq=120
ampl=6

[State 5201, FX]
type = helper
trigger1 = var(11) = 60
trigger2 = var(11) = 120
stateno = 8200
ID = 8200
name = "Recover FX"
postype = p1
pos = 0, ceil(-18 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 5201, Flash]
type = palfx
trigger1 = var(11) = 60
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10
[State 5201, Flash]
type = allpalfx
trigger1 = var(11) = 120
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10

[State 8330, Dust]
type = explod
trigger1 = !(time % 6) && anim = 3200
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3000, Anim]
type = ChangeState
triggerall = anim=3200 && animelemtime(4)>=0
trigger1 = time>=230
trigger2 = !(AILevel) && (command!="holda" && command!="holdb" && command!="holdc")  
trigger3 = AILevel && numenemy 
trigger3 = enemynear,movetype=A || enemynear,vel x>0 
trigger4 = AILevel && var(13) ;&& enemynear,Statetype= S
value = 3201
ignorehitpause=1

;YEAAA
[Statedef 3201]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3201

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3105, NYOOOM]
type=VelSet
trigger1=(anim=3201) && animelem=1 
x=Ifelse(var(11)>120,12,Ifelse(var(11)>60,8,5))

[State 3000, Woosh]
type = Helper
trigger1 =animelem=2 && anim = 3201
helpertype = normal ;player
name ="slash"
ID = 3206
stateno = 3206
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
postype = p1
ownpal = 1
persistent=0
[State 3000, Dust]
type = Explod
trigger1 = animelem = 5 && anim = 3201 && var(11) > 120
anim = 3208
ID = 3208
pos = 0, 0
postype = P1
ownpal = 1
ontop = 0
sprpriority = 2
removetime = -2
scale = 0.5,0.5

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1 && anim = 3201
value = 1, 35
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1 && anim = 3201 && var(11) > 120
value = 5, 2
channel = 0
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3 && anim = 3201
value = 1, 14
channel = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 && anim = 3201
value = 1, 23
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 && anim = 3201
value = 1, 33
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 && anim = 3201 && var(11)>=120
value = 2, 11
[State 3105, GROUND CRACK]
type=Helper
trigger1=(anim=3201) && animelemtime(5)=0
helpertype=normal
name="GroundFX"
stateno=3207
ID=3207
pos=ceil(175*const(size.xscale)),ceil(8*const(size.yscale))
postype=p1
ownpal=1
size.xscale=1.0
size.yscale=1.0
ignorehitpause=1
persistent=0
pauseMoveTime=65535
superMoveTime=65535
[State 3105, WHAM!]
type = envshake
trigger1=anim=3201 && animelemtime(5)=0 
time=12
freq=80
ampl=-15
phase=0

[State 200, Hit]
type = hitdef
trigger1 = !Time && var(11)<60
forcenofall = !var(20)
attr = S, HA
hitflag = MAFD
guardflag = M
damage = ceil(ifelse(fvar(11) * (215-100*(var(13)>0)) < 7, 7, fvar(11) * (215-100*(var(13)>0)))), 15
getpower = 0
givepower = 72, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = DiagUp
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 16 + 5 * var(9)
ground.slidetime = 16 + 5 * var(9)
guard.hittime = 16
air.hittime = 120
ground.velocity = -8.25, -4
ground.cornerpush.veloff = 0
guard.velocity = -10.42
guard.cornerpush.veloff = 0
air.velocity =-8.25, -4
air.cornerPush.velOff = 0
yAccel = 0.35
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 3000)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 110), var(36) := -50
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time=12
envshake.ampl=4
envShake.freq=80

[State 200, Hit]
type = hitdef
trigger1 = !Time && var(11)>=60 && var(11)<120
forcenofall = !var(20)
attr = S, HA
hitflag = MAFD
guardflag = M
damage = ceil(ifelse(fvar(11) * (230-100*(var(13)>0)) < 7, 7, fvar(11) * (230-100*(var(13)>0)))), 15
getpower = 0
givepower = 72, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = DiagUp
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 16 + 5 * var(9)
ground.slidetime = 16 + 5 * var(9)
guard.hittime = 16
air.hittime = 120
ground.velocity = -8.25, -4
ground.cornerpush.veloff = 0
guard.velocity = -10.42
guard.cornerpush.veloff = 0
air.velocity =-8.25, -4
air.cornerPush.velOff = 0
yAccel = 0.35
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 3000)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 110), var(36) := -50
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time=12
envshake.ampl=4
envShake.freq=80

[State 200, Hit]
type = hitdef
trigger1 = !Time && var(11)>=120
forcenofall = !var(20)
ID = 3200
attr = S, HA
hitflag = MAFD
guardflag = M
damage = ceil(ifelse(fvar(11) * (245-100*(var(13)>0)) < 7, 7, fvar(11) * (245-100*(var(13)>0)))), 15
getpower = 0
givepower = 72, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = DiagUp
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 16 + 5 * var(9)
ground.slidetime = 16 + 5 * var(9)
guard.hittime = 16
air.hittime = 120
ground.velocity = -8.25, -4
ground.cornerpush.veloff = 0
guard.velocity = -10.42
guard.cornerpush.veloff = 0
air.velocity =-8.25, -4
air.cornerPush.velOff = 0
yAccel = 0.35
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 3000)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 110), var(36) := -50
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time=12
envshake.ampl=4
envShake.freq=80

[State 3001, Blink]
type = AllPalFX
trigger1 = AnimElem = 5 && var(11)>=120
sinadd = random%256,random%256,random%256,10
add = random%256,random%256,random%256
mul = random%256,random%256,random%256
invertall = random%2
color = random%256
time = 4

[State 1100, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;MAX Lantern Hammer
[Statedef 3250]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd= ifElse(var(53), -1000, -2000)
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3200

[State not angery]
type=VarSet
trigger1=!time&&var(41)=1
var(41)=2

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = time = 3
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = time = 3
stateno = 8510
ID = 8510
name = "Superpause FX"
postype = p1
pos = 20, -65
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = time = 3
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1 && anim = 3200
value = 5, 0
channel = 0
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2 && anim = 3200
value = 1, 25

[State BIG BIRD]
type = Helper
trigger1 = time = 43
helpertype = normal ;player
name = "Big Bird"
ID = 3211
stateno = 3210
pos = ceil(20 * const(size.xscale)),0
postype = back
size.xscale = 1
[State CHUCK]
type = Helper
trigger1 = time = 53
helpertype = normal ;player
name = "Chuck"
ID = 3212
stateno = 3210
pos = ceil(-120 * const(size.xscale)),0
postype = p1
[State BLU]
type = Helper
trigger1 = time = 63
helpertype = normal ;player
name = "Blu"
ID = 3213
stateno = 3210
pos = ceil(-180 * const(size.xscale)), 0
postype = p1

[State 3000, charging]
type = Helper
trigger1 =animelem=4 && anim = 3200
helpertype = normal ;player
name ="charge"
ID = 3204
stateno = 3204
pos = 0,0
size.xscale = 0.2
size.yscale = 0.2
postype = p1
ownpal = 1
persistent=0
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4) = 1 && anim = 3200
value = 1, 34

[State 3000, ReSet]
type = VarSet
trigger1=anim = 3200 && animelemtime(4)<0
var(11) = 0
ignorehitpause=1
[State 3000, Add]
type = VarAdd
triggerall=anim = 3200 && animelemtime(4)>=0
trigger1=!(AILevel) && (command="holda" || command="holdb" || command="holdc")  
trigger2=AILevel
var(11) = 1
ignorehitpause=1

[State 3000, charging]
type = Helper
trigger1 = var(11) = 120
helpertype = normal ;player
name = "FULL CHARGE"
ID = 3205
stateno = 3205
pos = 0,0
size.xscale = 0.7
size.yscale = 0.7
postype = p1
ownpal = 1
persistent=0
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = var(11) = 120
value = 2, 11
[State 3105, WHAM!]
type = envshake
trigger1= var(11) = 120
time=6
freq=120
ampl=6

[State 5201, FX]
type = helper
trigger1 = var(11) = 60
trigger2 = var(11) = 120
stateno = 8200
ID = 8200
name = "Recover FX"
postype = p1
pos = 0, ceil(-18 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 5201, Flash]
type = palfx
trigger1 = var(11) = 60
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10
[State 5201, Flash]
type = allpalfx
trigger1 = var(11) = 120
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10

[State 8330, Dust]
type = explod
trigger1 = !(time % 6) && anim = 3200
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3000, Anim]
type = ChangeState
triggerall = anim=3200 && animelemtime(4)>=0
trigger1 = time>=230
trigger2 = !(AILevel) && (command!="holda" && command!="holdb" && command!="holdc")  
trigger3 = AILevel && numenemy 
trigger3 = enemynear,movetype=A || enemynear,vel x>0 
trigger4 = AILevel && var(13) ;&& enemynear,Statetype= S
value = ifElse(var(11)>=120, 3252, 3251)
ignorehitpause=1

;YEAAA
[Statedef 3251]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3201

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3105, NYOOOM]
type=VelSet
trigger1=(anim=3201) && animelem=1 
x=Ifelse(var(11)>120,12,Ifelse(var(11)>60,8,5))

[State 3000, Woosh]
type = Helper
trigger1 =animelem=2 && anim = 3201
helpertype = normal ;player
name ="slash"
ID = 3206
stateno = 3206
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
postype = p1
ownpal = 1
persistent=0
[State 3000, Dust]
type = Explod
trigger1 = animelem = 5 && anim = 3201 && var(11) > 120
anim = 3208
ID = 3208
pos = 0, 0
postype = P1
ownpal = 1
ontop = 0
sprpriority = 2
removetime = -2
scale = 0.5,0.5

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1 && anim = 3201
value = 1, 35
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3 && anim = 3201
value = 1, 14
channel = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 && anim = 3201
value = 1, 23
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 && anim = 3201
value = 1, 33
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 && anim = 3201 && var(11)>=120
value = 2, 11
[State 3105, GROUND CRACK]
type=Helper
trigger1=(anim=3201) && animelemtime(5)=0
helpertype=normal
name="GroundFX"
stateno=3207
ID=3207
pos=ceil(175*const(size.xscale)),ceil(8*const(size.yscale))
postype=p1
ownpal=1
size.xscale=1.0
size.yscale=1.0
ignorehitpause=1
persistent=0
pauseMoveTime=65535
superMoveTime=65535
[State 3105, WHAM!]
type = envshake
trigger1=anim=3201 && animelemtime(5)=0 
time=12
freq=80
ampl=-15
phase=0

[State 200, Hit]
type = hitdef
trigger1 = !Time && var(11)<60
forcenofall = !var(20)
attr = S, HA
hitflag = MAFD
guardflag = M
damage = ceil(ifelse(fvar(11) * (215-100*(var(13)>0)) < 7, 7, fvar(11) * (215-100*(var(13)>0)))), 15
getpower = 0
givepower = 72, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = DiagUp
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 16 + 5 * var(9)
ground.slidetime = 16 + 5 * var(9)
guard.hittime = 16
air.hittime = 120
ground.velocity = -8.25, -4
ground.cornerpush.veloff = 0
guard.velocity = -10.42
guard.cornerpush.veloff = 0
air.velocity =-8.25, -4
air.cornerPush.velOff = 0
yAccel = 0.35
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 3000)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 110), var(36) := -50
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time=12
envshake.ampl=4
envShake.freq=80

[State 200, Hit]
type = hitdef
trigger1 = !Time && var(11)>=60 && var(11)<120
forcenofall = !var(20)
attr = S, HA
hitflag = MAFD
guardflag = M
damage = ceil(ifelse(fvar(11) * (240-100*(var(13)>0)) < 7, 7, fvar(11) * (240-100*(var(13)>0)))), 15
getpower = 0
givepower = 72, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = DiagUp
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 16 + 5 * var(9)
ground.slidetime = 16 + 5 * var(9)
guard.hittime = 16
air.hittime = 120
ground.velocity = -8.25, -4
ground.cornerpush.veloff = 0
guard.velocity = -10.42
guard.cornerpush.veloff = 0
air.velocity =-8.25, -4
air.cornerPush.velOff = 0
yAccel = 0.35
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 3000)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 110), var(36) := -50
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time=12
envshake.ampl=4
envShake.freq=80

[State 1100, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;GRAND SLAM
[Statedef 3252]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3202

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3105, NYOOOM]
type=VelSet
trigger1= animelem=1 
x=13

[State 3000, Woosh]
type = Helper
trigger1 =animelem=2 
helpertype = normal ;player
name ="slash"
ID = 3206
stateno = 3206
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
postype = p1
ownpal = 1
persistent=0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 1, 35
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1 
value = 5, 2
channel = 0
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1, 14
channel = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 
value = 1, 23
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 
value = 1, 33
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 
value = 2, 11
[State 3105, GROUND CRACK]
type=Helper
trigger1=animelemtime(5)=0
helpertype=normal
name="GroundFX"
stateno=3207
ID=3207
pos=ceil(175*const(size.xscale)),ceil(8*const(size.yscale))
postype=p1
ownpal=1
size.xscale=1.0
size.yscale=1.0
ignorehitpause=1
persistent=0
pauseMoveTime=65535
superMoveTime=65535
[State 3000, Dust...?]
type = Helper
trigger1 =animelemtime(5)=0
helpertype = normal ;player
name ="dust"
ID = 3209
stateno = 3209
pos = ceil(175*const(size.xscale)),ceil(8*const(size.yscale))
postype = p1
ownpal = 1
persistent=0
[State 3105, WHAM!]
type = envshake
trigger1=animelemtime(5)=0 
time=12
freq=80
ampl=-15
phase=0

[State 6001, 5]
type = HitDef
trigger1 = Timemod = 6,0
attr = S, HA
damage = ceil(ifElse(55 * fvar(11) < 7, 7, 55 * fvar(11))), 7
animtype = Heavy
guardflag = L
hitflag = MAFD
priority = 5, Hit
pausetime = 2, 8
sparkno = S-1 + 0*(var(33):=8014)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=200), var(36):=-65
hitsound = -1 + 0*(var(31):=3000)
guardsound = -1 + 0*(var(32):=0)
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 3,-10
airguard.velocity = -5,-3
air.type = High
air.velocity = 3,-10
air.hittime = 12
fall = 1
envshake.time = 6
envshake.ampl = 6
envshake.freq = 254
palFX.time = 40
palFX.mul = 100,200,100
palFX.sinAdd = 96, 96, 96, 4
palFX.invertall = 1

[State 3001, Blink]
type = AllPalFX
trigger1 = AnimElem = 5 
sinadd = random%256,random%256,random%256,10
add = random%256,random%256,random%256
mul = random%256,random%256,random%256
invertall = random%2
color = random%256
time = 4

[State 1100, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;Duet Super: All Out Attack
[StateDef 3300]
type=S
movetype=A
physics=N
poweradd=-1000
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 3050, Anim]
type=changeanim
trigger1=!time
value=3300

[state 3050,Posset]
type=posset
trigger1=!time
y=0

[State 3050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 53

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 4, -60
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0
[State 210, Snd]
type=playsnd
trigger1 = Time = 0
value = 1, 32

[State 3050, Call Rigby]
type = VarSet
trigger1 = !Time
var(28) = 3310

[State 210, Snd]
type=playsnd
trigger1= animelem=1
value=50,6+random%2

[State 3050, Call Rigby]
type = VarSet
trigger1 = AnimElem = 4
var(28) = 3311
[State 210, Snd]
type=playsnd
trigger1= AnimElem = 4
value=101,0

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 10

[State 6002, 5]
type = HitDef
trigger1 = !time
attr = S, HA
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
hitsound = -1 + 0*(var(31):=800)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=-1)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=300), var(36):=-37
getpower = 0
p1stateno = 3301
fall = 1

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0
[State 3050, Call Rigby]
type = VarSet
trigger1 = AnimElem = 5
var(28) = 3312
[State 210, Snd]
type=playsnd
trigger1= AnimElem = 5
value=5000,0
channel = 0

[State 3050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; LOOKING COOL, JOKER!
[Statedef 3301]
type = S
physics = S
movetype = I
anim = 3305
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 3302
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 801, VarSet]
type = VarSet
trigger1 = !Time
var(28) = 3315

[State -1]
type = TargetBind
trigger1 = time = [0,144]
pos = 0,-60

[State 6002, 0]
type = Helper
trigger1 = time = [0,144]
trigger1 = timemod = 3,0
stateno = 8014
ID = 8014
postype = P1
name = "Spark"
pos = ceil((-40 + random%101) * const(size.xscale)), ceil((-20 - random%100) * const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 6002, 2]
type = Helper
trigger1 = animelem = 49
stateno = 8014
ID = 8014
postype = P1
pos = 30,-50
sprpriority = 3

[State 6002, 3]
type = PlaySnd
trigger1 = time = [0,144]
trigger1 = timemod = 9,0
value = S2,2
channel = 1

[State 6002, 4]
type = PlaySnd
trigger1 = time = [0,144]
trigger1 = timemod = 9,3
value = S2,5
channel = 2

[State 6002, 5]
type = PlaySnd
trigger1 = time = [0,144]
trigger1 = timemod = 9,6
value = S2,22
channel = 3

[State 6002, 5]
type = StopSnd
trigger1 = animelem = 49
channel = 1
[State 6002, 5]
type = StopSnd
trigger1 = animelem = 49
channel = 2
[State 6002, 5]
type = StopSnd
trigger1 = animelem = 49
channel = 3

[State 6002, 5]
type = PlaySnd
trigger1 = animelem = 49
value = S2,3000

[State 6002, 6]
type = HitAdd
trigger1 = time = [0,144]
trigger1 = timemod = 3,0
trigger2 = animelem = 49
value = 1

[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 49
time = 8
ampl = -7
freq = 235

[State 6002, 8]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 3050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;AUGH
[Statedef 3302]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 6003, 0]
type = AngleSet
trigger1 = Time = 0
value = 0

[State 6003, 1]
type = AngleAdd
trigger1 = Time >= 0
value = 20

[State 6003, 2]
type = AngleDraw
trigger1 = Time >= 0
trigger1 = Pos Y <= 10

[State 6003, 3]
type = ChangeAnim2
trigger1 = time = 0
value = 3306

[State 6003, 4]
type = VelSet
trigger1 = time = 144
x = -4
y = -7.5

[State 6003, 5]
type = VelAdd
trigger1 = time > 144
y = .5

[State 816, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 16
ampl = -12
freq = 255

[State 6002, 7]
type = LifeAdd
trigger1 = time = 144
value = -240

[State 6003, 5]
type = ChangeState
trigger1 = time > 144
trigger1 = pos y >= 0 && vel y > 0
value = 1209

;-----------------------------------------------
;Traphouse Kitchen
[StateDef 3500]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprpriority = 1
powerAdd = -3000
faceP2 = 1

[State 3500, Anim]
type=changeanim
trigger1=!time
value=3500

[State not angery]
type=VarSet
trigger1=!time&&var(41)=1
var(41)=2

[state 3500,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3500, Super Pause FX]
type = Helper
trigger1 = animelem = 3
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = -7, -85
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = animelem = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 450, Snd]
type = playsnd
trigger1 = animelem=5
value = 1,5
channel = 1

[State 250, Hit]
type=hitdef
trigger1= !Time
forcenofall = !var(20)
attr = C,HA
hitflag = MAF
guardflag = M
priority = 6, Hit
damage = ceil(ifelse(fvar(11)*40<7, 7, fvar(11)*40)), 20
getpower = 0
givepower = 72, 72
pausetime = 6, 6
guard.pausetime = 6, 6
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 15
air.hittime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -6
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yaccel = 0.58
kill = 0
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=3000)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8014)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=81), var(36):=-37
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6
p1facing = 1
p2facing = 1
p1stateno = 3501

[State WHAMMY]
type = Explod
trigger1 = movehit = 1
anim = 300
pos = var(35),-37
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.7,0.7
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;LET 'IM GET UP, LET 'IM GET UP
[Statedef 3501]
type = S
physics = N
movetype = A
anim = 3501+random%3
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 3510
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 0, Width]
type = Width
trigger1 = time = 0 && NumTarget
edge = 80, 40
ignorehitpause = 1
[State 4001, Bind]
type = targetbind
trigger1 = time = 0 && NumTarget
pos = 25, 0

[State 450, SHOWTIME!!!!]
type = playsnd
trigger1 = animelem = 10
value = 5,20

[State 0, Pops]
type = Explod
trigger1 = animelemtime(10) = -2
anim = 3520
ID = 3520
pos = 40,0
postype = P2  ;p2,front,back,left,right
facing = -1
removetime = 35
scale = 0.5,0.5
sprpriority = 1
ownpal = 1
removeongethit = 0
[State 0, Muscle Man]
type = Explod
trigger1 = animelemtime(10) = -1
anim = 3521
ID = 3521
pos = -40,0
postype = P2  ;p2,front,back,left,right
facing = -1
removetime = 35
scale = 0.5,0.5
sprpriority = 1
ownpal = 1
removeongethit = 0
[State 0, Benson]
type = Explod
trigger1 = animelemtime(10) = 0
anim = 3522
ID = 3522
pos = 50,0
postype = P2  ;p2,front,back,left,right
facing = -1
removetime = 35
scale = 0.5,0.5
sprpriority = 2
ownpal = 1
removeongethit = 0

[State 4001, kei]
type = helper
trigger1 = animelemtime(11) = 0 && !numhelper(3525)
helpertype = normal
stateno = 3525
ID = 3525
name = "JUMPING TIME"
postype = p1
pos = 90, 0
facing = -1
ownpal = 1

[State 4001, fadeout]
type = allpalfx
trigger1 = animelem = 10
time = 30
sinadd = -255, -255, -255, 120

[State 4001, Bind]
type = targetbind
trigger1 = animelem = 11 && NumTarget
pos = 40, 0

[State 4001, BG PalFX]
type = bgpalfx
trigger1 = animelemtime(13) = -1 || animelemtime(17) = -1 || animelemtime(21) = -1
invertall = 1
add = 255, 255, 255
sinadd = -1000, -1000, -1000, 80
mul = 128, 128, 256
color = 0
time = 20
[State 4001, palfx]
type = palfx
trigger1 = animelemtime(13) = -1 || animelemtime(17) = -1 || animelemtime(21) = -1
add = -50, -50, -50
sinadd = -155, -155, -155, 80
mul = 128, 128, 256
color = 0
time = 20
[State 4001, black]
type = envcolor
trigger1 = animelemtime(11) >= 0 && animelemtime(13) < -1
trigger2 = animelemtime(15) >= 0 && animelemtime(17) < -1
trigger3 = animelemtime(19) >= 0 && animelemtime(21) < -1
trigger4 = animelemtime(23) >= 0 && animelemtime(26) < -1
time = 2
value = 0, 0, 0

[State 4001, palfx]
type = palfx
trigger1 = animelemtime(26) = -1
add = 0, 0, 0
sinadd = 0, 0, 0, 1
time = 1
[State 4001, BG PalFX]
type = bgpalfx
trigger1 = animelemtime(26) = -1
add = 0, 0, 0
sinadd = 0, 0, 0, 1
color = 256
time = 1

[State 0, YEET]
type = TargetState
trigger1 = animelem = 11 && NumTarget
value = 3511
ignorehitpause = 1

[State 4001, hitadd]
type = hitadd
trigger1 = animelem = 11 || animelem = 12 || animelem = 13 || animelem = 15 || animelem = 16 || animelem = 17
trigger2 = animelem = 19 || animelem = 20 || animelem = 21 || animelem = 23 || animelem = 24 || animelem = 25
value = 1

[State 4001, hitdamage]
type = targetlifeadd
trigger1 = animelem = 11 || animelem = 12 || animelem = 13 || animelem = 15 || animelem = 16 || animelem = 17
trigger2 = animelem = 19 || animelem = 20 || animelem = 21 || animelem = 23 || animelem = 24 || animelem = 25
value = -ceil(28 * fvar(11))
kill = animelem = 25
[State 4001, givepower]
type = targetpoweradd
trigger1 = animelem = 11 || animelem = 12 || animelem = 13 || animelem = 15 || animelem = 16 || animelem = 17
trigger2 = animelem = 19 || animelem = 20 || animelem = 21 || animelem = 23 || animelem = 24 || animelem = 25
value = 36

[State 4001, HitSound]
type = playsnd
trigger1 = animelem = 11 || animelem = 12 || animelem = 13 || animelem = 15 || animelem = 16 || animelem = 17
trigger2 = animelem = 19 || animelem = 20 || animelem = 21 || animelem = 23 || animelem = 24 || animelem = 25
value = 2, ifelse((animelem = 25), 3200, 10)
channel = 2
[State 4001, EnvShake]
type = EnvShake
trigger1 = animelem = 13 || animelem = 17 || animelem = 21 || animelem = 26
freq = 256
ampl = -8
time = 7

[State 4001, Sparks]
type = explod
trigger1 = animelem = 11 || animelem = 12 || animelem = 15 || animelem = 16 
trigger2 = animelem = 19 || animelem = 20 || animelem = 23 || animelem = 24
anim = 300
ID = 7000
sprpriority = 5
postype = p1
pos = 32 + ceil(32 * cos(animelemtime(11) / 3.0)), -32 + ceil(32 * sin(animelemtime(11) / 3.0))
ownpal = 1
ontop = 1
pausemovetime = 300
supermovetime = 300
[State 4001, Sparks]
type = explod
trigger1 = animelem = 13 || animelem = 17 || animelem = 21
anim = 300
ID = 7000
sprpriority = 5
postype = p1
pos = ifelse((animelem = 13), 39, ifelse((animelem = 13), 35, 29)), ifelse((animelem = 13), -42, ifelse((animelem = 13), -17, -44))
ownpal = 1
ontop = 1
pausemovetime = 300
supermovetime = 300

[State 0, die potato]
type = TargetState
trigger1 = animelemtime(26) >= -1 && NumTarget
value = 3512
ignorehitpause = 1

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; Traphouse Kitchen (Freeze)
[Statedef 3510]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 820, On Ground]
type = PosSet
trigger1 = !Time
y = 0

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time 
value = 3510

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 3005, Safety]
type = SelfState
trigger1 = time >= 150
value = 0
ctrl = 1

; Traphouse Kitch--OWW!!!
[Statedef 3511]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time 
value = 3511
[State 820, palfx]
type = palfx
trigger1 = animelemtime(3) = -1 || animelemtime(7) = -1 || animelemtime(11) = -1
add = -50, -50, -50
sinadd = -155, -155, -155, 80
mul = 256, 128, 256
color = 0
time = 20

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 3005, Safety]
type = SelfState
trigger1 = time >= 150
value = 0
ctrl = 1

;rip in rest
[Statedef 3512]
type = L
physics = C
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 3512, Anim]
type = changeanim2
trigger1 = !time
value = 3512
[State 3512, palfx]
type = palfx
trigger1 = !time
add = 0, 0, 0
sinadd = 0, 0, 0, 1
time = 1

[State 3512, End]
type = selfstate
trigger1 = !alive
value = 5150
[State 3512, End]
type = selfstate
trigger1 = time >= 80 && alive
value = 5120