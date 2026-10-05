; _________________________________________
;| Character by JStudios2k                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< HELPER STATES >========================================
;==============================================================================================

;Palette Selector (Saikou Shiva, 2023)
[Statedef 9256]
physics = N
anim = 9256
velset=0,0
sprpriority=99999
 
[State 256, PosSet]
type = PosSet
trigger1 =!time 
x = root,facing*-70
y = 20
ignorehitpause = 1

[State 256, AS]
type=assertspecial
trigger1=1
flag=intro
flag2=noshadow
[State 256, Reset]
type=varset
trigger1=!time
var(29)=200
[State 256, Pal]
type=varset
trigger1=!time
fvar(0)=root,palno
[State 256, Pal]
type=varset
trigger1=!time
fvar(27)=root,fvar(27)

[State 256, Varset]
type=varset
trigger1=fvar(0)<1||fvar(0)>fvar(27)
fvar(0)=1+(fvar(0)<1)*((fvar(27))-1)

[State 256, PlaySnd]
type = PlaySnd
trigger1 =var(10)=2 
value = S256,0
volumescale = 75
channel = 20
[State 256, PlaySnd]
type = PlaySnd
triggerall=ishelper(256)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="s"||roundstate=2
trigger2=var(29)<=5
value = S256,1
volumescale = 75
channel = 20
persistent =0 

[State 256, Timer]
type = VarAdd
trigger1 =1 
var(29)=-1
[State 256, Timer]
type = VarAdd
trigger1=!var(10)&&var(29)<150
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
var(29)=25

[State 256, Varadd]
type=varadd
trigger1=!var(10)
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
fvar(0)=1-(root,command="holddown"||root,command="holdback"&&facing=1||root,command="holdfwd"&&facing=-1)*2

[State 256, Varadd]
type=varadd
trigger1=(root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd")&&!var(10)||var(10)
var(10)=1

[State 256, Varset]
type=varset
trigger1=!time||var(10)>=17
var(10)=0

[State 256, End]
type=changestate
triggerall=ishelper(256)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="s"||roundstate=2
trigger2=var(29)<=0
trigger3=root, var(56) = 3
trigger4=root,AILevel
value = 9257

[State 256, End]
type=destroyself
triggerall=ishelper(256) && root, var(56) = 1
trigger1=root, var(56) < 3
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="s"||roundstate=2
trigger2=root, var(56) < 3
trigger2=var(29)<=0
trigger3=root,AILevel


;Mode Select (Saikou Shiva, 2023)
[Statedef 9257]
physics = N
anim = 9257+root,var(54)
velset=0,0
sprpriority=99999
 
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.87,0.87
ignorehitpause = 1
;persistent = 
 
[State 257, PosSet]
type = PosSet
trigger1 =!time 
x = root,facing*-70
y = -18
ignorehitpause = 1

[State 257, AS]
type=assertspecial
trigger1=1
flag=intro
flag2=noshadow
[State 257, Reset]
type=varset
trigger1=!time
var(29)=150
[State 257, Reset]
type=varset
trigger1=!time
var(11)=parent,var(55)
[State 257, Reset]
type=parentvarset
trigger1=1
var(54)=(anim-9257)

[State 257, Varset]
type=varset
trigger1 =var(10)=1
var(10)=Ifelse(var(11)=0,1,0)
[State 257, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=1
value = Ifelse(anim=9257,9258,Ifelse(anim=9258,9259,9257))

[State 257, PlaySnd]
type = PlaySnd
trigger1 =var(10)=2 
value = S257,0
volumescale = 50
channel = 25
[State 257, PlaySnd]
type = PlaySnd
triggerall = time >= 8
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="s"||roundstate=2
trigger2=var(29)<=5
value = S257,1
volumescale = 50
channel = 20
persistent =0 

[State 257, Timer]
type = VarAdd
trigger1 =1 
var(29)=-1
[State 257, Timer]
type = VarAdd
trigger1=!var(10)&&var(29)<100
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
var(29)=20

[State 257, Varadd]
type=varadd
trigger1=(root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd")&&!var(10)||var(10)
var(10)=1

[State 257, Varset]
type=varset
trigger1=!time||var(10)>=17
var(10)=0

[State 257, End]
type=destroyself
trigger1=root,AILevel
[State 257, Change]
type=destroyself
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||(var(29)<=140&&root,command="s")||roundstate=2
trigger2=var(29)<=0
trigger3 = root, var(56) =1

;========================<ATTACKS>=============================
;Multi-tool projectile killer
[Statedef 1405]
type = S
physics = N
movetype = A
anim = 1405
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1406
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, damping]
type = varset
trigger1 = !time
fvar(11) = root,fvar(11)
ignorehitpause = 1
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = 2, 6
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = !(Root, var(16)) && (Root, var(15) < 4 || Root, var(20))
priority = 4, Hit
attr = S,SP
hitFlag = MAFP
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 60 < 7, 7, fvar(11) * 60)), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 8, 16)
guard.pauseTime = 0, ifElse((Root, var(20)), 8, 16)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 8
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -4.5, -6.5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.5, -6.5
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 8, 16)
forceStand = 1
hitSound = 2,14
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = ifElse(Root, var(20), 24, 30)
palFX.mul = 192,100,100
palFX.sinAdd = 96, 96, 96, 4
palFX.invertall = 1
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 1406
ignorehitpause = 1
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -200, 200]
trigger2 = !animtime

;hol up
[StateDef 1406]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = Ceil(EnemyNear,Pos X - Pos X) * Facing, -67
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = Ceil(EnemyNear,Pos X - Pos X) * Facing, -67
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 1000
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = 1407

;adios
[StateDef 1407]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
volume = -128
lowPriority = 1

[State 1007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1408

;hmmm
[StateDef 1408]
type = A
physics = N
moveType = A
anim = 1
ctrl = 0
velSet = 0,0

[State 1008, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target,HitShakeOver)

;Pops
[Statedef 1500]
type = A
physics = N
movetype = A
anim = 1500
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1005, damping]
type = varset
trigger1 = !time
fvar(11) = root,fvar(11)
ignorehitpause = 1
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1001, 2]
type = PlaySnd
trigger1 = !time
value = S1,15

[State 1005, Vel]
type = velset
trigger1 = 1
x = 10
y = 10

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = 2, 3000
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = !time
priority = 4, Hit
attr = S, SP
damage = ceil(77 * root,fvar(11)), 7
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12 / ((root, var(20) > 0) + 1)
sparkno = -1 
guard.sparkno = -1 
sparkxy = -10, 0
guardsound = s3, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -4
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 60
getpower = 0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 1499
var(18) = 1

[State 816, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 16
ampl = -12
freq = 255

[State 1005, End]
type = changestate
trigger1 = pos y >= 0 && vel y > 0
value = 1501
ignorehitpause = 1

;oof
[Statedef 1501]
type = S
physics = S
movetype = I
anim = 1501
ctrl = 0
velset = 8, 0
sprpriority = 2

[State 101, Dust]
type = explod
trigger1 = animelem = 4
anim = 8104
sprpriority = 3
postype = p1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State -2, Ground Impact Dust];Not used, but still added just incase...
type = Helper
trigger1 = animelem = 4
stateNo = 8110
ID = 8110
name = "Ground Impact Dust"
posType = P2
facing = -1
pos = 0,0
ownPal = 1
ignorehitpause=1

[State FLOOR WHAM]
type = PlaySnd
trigger1 = animelem = 4
value = 1,23

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1408

;Muscle Man
[Statedef 1510]
type = S
physics = N
movetype = A
anim = 1510
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1511
ignorehitpause = 1

[State 1005, woosh]
type = Explod
trigger1 = animelem = 2
anim = 1512
ID = 1512
pos = 0, ceil(-130 * const(size.yscale))
postype = p1  
removetime = 40
scale = 0.5, 0.5
ontop = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 1005, damping]
type = varset
trigger1 = !time
fvar(11) = root,fvar(11)
ignorehitpause = 1
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1001, 2]
type = PlaySnd
trigger1 = animelem = 2
value = S1,27
[State 1001, 2]
type = PlaySnd
trigger1 = !time
value = S5,10
channel = 3

[State 1005, Vel]
type = velset
trigger1 = 1
x = 10

[State 101, Dust]
type = explod
trigger1 = Timemod = 8,0
trigger1 = time < 5
anim = 8104
sprpriority = 3
postype = p1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1003, 5]
type = HitDef
trigger1 = Timemod = 5,0
trigger1 = time > 5
attr = S, SA
damage = 29, 7
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, ifElse((Root, var(20)), 8, 16)
guard.pausetime = 0, ifElse((Root, var(20)), 8, 16)
sparkno = -1
sparkxy = -10, -130
hitsound = s2, 1
guardsound = s3, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
yaccel = .5
air.hittime = 12
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
envShake.time = 6
envShake.ampl = 4
envShake.freq = 120

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
;trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -55
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
;trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -55
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 1499
var(18) = 1

[State 1005, End]
type = changestate
trigger1 = time >= 35
value = 1511
ignorehitpause = 1

;oof
[Statedef 1511]
type = S
physics = S
movetype = I
anim = 1511
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 5,11
channel = 3

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
id = 1512

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1408

;Benson
[Statedef 1520]
type = S
physics = S
movetype = A
anim = 1520
ctrl = 0
velset = 0, 0
sprpriority = -1

[State 1007, Spawn Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 25*time,256-25*time
ignoreHitPause = 1

[State 0, :)]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,NA,SA,HA,NP,SP,HP
sparkno = -1
p1stateno = 1521
numhits = 0
[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1521
ignorehitpause = 1

[State 1005, End]
type = changestate
trigger1 = time >= 80
value = 1522
ignorehitpause = 1

;COUNTER!
[Statedef 1521]
type = S
physics = S
movetype = A
anim = 1521
ctrl = 0
velset = 0, 0
sprpriority = -1

[State 1005, damping]
type = varset
trigger1 = !time
fvar(11) = root,fvar(11)
ignorehitpause = 1
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1050, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
[State 760, Snd]
type = playsnd
trigger1 = !time
value = 1,18
[State 760, Snd]
type = playsnd
trigger1 = !time
value = 760,0
channel = 1
[State 760, FX]
type = explod
trigger1 = !time
anim = 8360
sprpriority = 5
postype = p1
pos = 32, -59
pausemovetime = -1
supermovetime = -1
scale = 0.5, 0.5
ownpal = 1

[State 760, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5,12
channel = 3

[State 1005, Vel]
type = velset
trigger1 = animelem = 3
trigger2 = animelem = 8
x = 10

[State 1005, Width]
type = Width
trigger1 = 1
edge = 10, 10
player = 10, 10
ignorehitpause = 1

[State 1006, 5]
type = HitDef
trigger1 = animelem = 4
attr = S, SA
damage = 45, 10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 0, 0
guard.pausetime = 0, 0
sparkno = s300
sparkxy = -10, -65
hitsound = s2, 44
guardsound = s3, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 30
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = -1.4,-3
air.hittime = 30
envshake.time = 10
envshake.freq = 60
envshake.ampl = -15
envshake.phase = 90

[State 1006, 6]
type = HitDef
trigger1 = animelem = 9
attr = S, SA
damage = 45, 10
animtype = up
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 0, ifElse((Root, var(20)), 8, 16)
guard.pausetime = 0, ifElse((Root, var(20)), 8, 16)
sparkno = s300
sparkxy = -10, -65
hitsound = s2, 45
guardsound = s3, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -2,-10
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = -.7,-10
air.hittime = 12
envshake.time = 10
envshake.freq = 60
envshake.ampl = -15
envshake.phase = 90
fall = 1
fall.recover = 0

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
;trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -55
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
;trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -55
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 1499
var(18) = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1408

;I'm not putting up with your BS.
[Statedef 1522]
type = S
physics = S
movetype = I
anim = 1522
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 1,12
channel = 3

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1408

;Gunshot
[Statedef 1605]
type = A
physics = N
movetype = A
anim = 1605
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1406
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, damping]
type = varset
trigger1 = !time
fvar(11) = root,fvar(11)
ignorehitpause = 1
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = 2, 10
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = !MoveContact && !MoveReversed
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(8) < 0
priority = 4, Hit
attr = S,SP
hitFlag = MAFP
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(P2MoveType = H, 30, 70) < 7, 7, fvar(11) * ifElse(P2MoveType = H, 30, 70))), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 8, 16)
guard.pauseTime = 0, ifElse((Root, var(20)), 8, 16)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -4.5, -6.5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.5, -3.5
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 22 + ifElse(Root, var(20), 8, 16)
forceStand = 1
hitSound = 2,14
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = ifElse(Root, var(20), 24, 30)
palFX.mul = 192,100,100
palFX.sinAdd = 96, 96, 96, 4
palFX.invertall = 1
envshake.time = 10
envshake.ampl = 3
envShake.freq = 160

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 1606
ignorehitpause = 1
[State 1005, End]
type = destroyself
trigger1 = !animtime

;hol up
[StateDef 1606]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 10)
channel = 3
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = Ceil(EnemyNear,Pos X - Pos X) * Facing, Ceil(0)
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = Ceil(EnemyNear,Pos X - Pos X) * Facing, Ceil(0)
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 1000
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = 1407

;Super Gunshot
[Statedef 3011]
type = A
physics = N
movetype = A
anim = 1605
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1406
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, damping]
type = varset
trigger1 = !time
fvar(11) = root,fvar(11)
ignorehitpause = 1
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = 2, 11
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = !MoveContact && !MoveReversed
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(8) < 0
priority = 4, Hit
attr = S,SP
hitFlag = MAFP
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0
givePower = 36, 36
pauseTime = 0, 24
guard.pauseTime = 0, 24
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -1.5, -6.5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -1.5, -2
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 22 + ifElse(Root, var(20), 8, 16)
forceStand = 1
hitSound = 2,14
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = ifElse(Root, var(20), 24, 30)
palFX.mul = 192,100,100
palFX.sinAdd = 96, 96, 96, 4
palFX.invertall = 1
envShake.time = 14
envShake.ampl = 4
envShake.freq = 160

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 1606
ignorehitpause = 1
[State 1005, End]
type = destroyself
trigger1 = !animtime

;BIG BIRD
[Statedef 3211]
type = S
physics = N
movetype = A
anim = 3211
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, damping]
type = varset
trigger1 = !time
fvar(11) = root,fvar(11)
ignorehitpause = 1
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 10000, 1]
type = VelSet
trigger1 = animelem = 1
x = 6.25

[State 10000, 2]
type = VelSet
trigger1 = animelem = 18
x = 0

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = -5, -65
facing = 1
ownPal = 1
size.xscale=1
size.yscale=1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 1006, WHAMMY]
type = Explod
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
anim = 300
ID = 8000
posType = P1
pos = -5, -65
facing = 1
ownPal = 1
scale = 2,2
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = -5, -65
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1005, Hit]
type = hitdef
trigger1 = Timemod = 6, 0
priority = 4, Hit
attr = S, HP
hitFlag = MAFD
guardFlag = MA
priority = 5, Hit
damage = ceil(ifElse(fvar(11) * 14 < 5, 5, fvar(11) * 14)), 5
getPower = 0
givePower = 36, 36
pauseTime = 0, 8
guard.pauseTime = 0, 8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -4.5, -3.5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.5, -3.5
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 40
forceStand = 1
hitSound = 2,10
guardSound = 3,0
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 30
palFX.mul = 100,200,100
palFX.sinAdd = 96, 96, 96, 4
palFX.invertall = 1
envShake.time = 15
envShake.ampl = 7
envShake.freq = 60

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1005, End]
type = destroyself
trigger1 = !animtime

;CHUCK
[Statedef 3212]
type = S
physics = N
movetype = A
anim = 3212
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, damping]
type = varset
trigger1 = !time
fvar(11) = root,fvar(11)
ignorehitpause = 1
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 10000, 1]
type = VelSet
trigger1 = animelem = 26
x = 10.6

[State 10000, 2]
type = VelSet
trigger1 = animelem = 32
x = 0

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = -5, -65
facing = 1
ownPal = 1
size.xscale=1
size.yscale=1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 1006, WHAMMY]
type = Explod
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
anim = 300
ID = 8000
posType = P1
pos = -5, -65
facing = 1
ownPal = 1
scale = 2,2
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = -5, -65
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = 2, 10
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = Timemod = 4, 0
priority = 4, Hit
attr = S, HP
hitFlag = MAFD
guardFlag = MA
priority = 5, Hit
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getPower = 0
givePower = 36, 36
pauseTime = 0, 5
guard.pauseTime = 0, 5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -4.5, -3.5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.5, -3.5
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 40
forceStand = 1
hitSound = 2,10
guardSound = 3,0
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 30
palFX.mul = 100,200,100
palFX.sinAdd = 96, 96, 96, 4
palFX.invertall = 1
envShake.time = 15
envShake.ampl = 7
envShake.freq = 60

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1005, End]
type = destroyself
trigger1 = !animtime

;BLU
[Statedef 3213]
type = S
physics = N
movetype = A
anim = 3213
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3214
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, damping]
type = varset
trigger1 = !time
fvar(11) = root,fvar(11)
ignorehitpause = 1
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 10000, 1]
type = VelSet
trigger1 = animelem = 1
x = 8.5

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = 2, 10
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S,HP
hitFlag = MAFP
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getPower = 0
givePower = 36, 36
pauseTime = 0, 4
guard.pauseTime = 0, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -4.5, -6.5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.5, -6.5
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 22 + ifElse(Root, var(20), 8, 16)
forceStand = 1
hitSound = 2,14
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 30
palFX.mul = 100,200,100
palFX.sinAdd = 96, 96, 96, 4
palFX.invertall = 1
envShake.time = 15
envShake.ampl = 7
envShake.freq = 60

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 3214
ignorehitpause = 1
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -400, 400]

;hol up
[StateDef 3214]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = Ceil(EnemyNear,Pos X - Pos X) * Facing, -0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = Ceil(EnemyNear,Pos X - Pos X) * Facing, -0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = 3215

;adios
[StateDef 3215]
type = A
physics = N
moveType = A
ctrl = 0
anim = 3214
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
volume = -128
lowPriority = 1

[State 1007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1408

;========================<RIGBY>=============================
;Rigby spawns
[StateDef 6999]
type = S
ctrl = 0
anim = 6999
velset = 0,0

[State 1007, Spawn Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 25*time,256-25*time
ignoreHitPause = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 50, 0

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 7000

;Rigby idle
[Statedef 7000]
type = S
sprpriority = -2
anim = 7000
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = -10

[State 7000, 10]
type = ChangeState
trigger1 = roundstate = 4
trigger1 = parent, win
value = ifElse(enemy,name="Rigby1105", 7999, 7003)

[State 200, adios]
type = ChangeState
trigger1 = var(29) >= 4
value = 7999

[State 200, Cancel]
type = ChangeState
trigger1 = root,var(28)
value = root,var(28)

[State 7000, 0]
type = ChangeState
trigger1 = parentdist x >= -35
value = 7001
ctrl = 0

[State 7000, 1]
type = ChangeState
trigger1 = parentdist x <= -45
value = 7002
ctrl = 0

[state 7000, 6]
type = Turn
trigger1 = facing != parent, facing

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

;Rigby walk
[Statedef 7001]
type = S
sprpriority = -2
anim = 7001
velset = 2.6,0

[State 200, Cancel]
type = ChangeState
trigger1 = root,var(28)
value = root,var(28)

[State -1]
type = ChangeState
trigger1 = parentdist x >= 0
value = 7006
ctrl = 0

[State 7001, 1]
type = ChangeState
trigger1 = parentdist x < -35
value = 7000
ctrl = 0

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

;Rigby moonwalk
[Statedef 7002]
type = S
sprpriority = -2
anim = 7001
velset = -2.6,0

[State 200, Cancel]
type = ChangeState
trigger1 = root,var(28)
value = root,var(28)

[State -1]
type = ChangeState
trigger1 = parentdist x <= -55
value = 7007
ctrl = 0

[State 7001, 1]
type = ChangeState
trigger1 = parentdist x > -40
value = 7000
ctrl = 0

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

;WE WIN!
[Statedef 7003]
type = S
sprpriority = -2
anim = 7998
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S50,5

;Rigby run
[Statedef 7006]
type = S
sprpriority = -2
anim = 7006
velset = 9,0

[State 200, Cancel]
type = ChangeState
trigger1 = root,var(28)
value = root,var(28)

[State 7001, 1]
type = ChangeState
trigger1 = parentdist x < -35
value = 7000
ctrl = 0

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S101,0

;Rigby moonrun
[Statedef 7007]
type = S
sprpriority = -2
anim = 7007
velset = -9,0

[State 200, Cancel]
type = ChangeState
trigger1 = root,var(28)
value = root,var(28)

[State 7002, 1]
type = StopSnd
trigger1 = prevstateno = 7100
channel = 2

[State 7002, 2]
type = ChangeState
trigger1 = parentdist x > -40
value = 7000
ctrl = 0

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S101,0

; Rigby Light Punch
[Statedef 7200]
type    = S
physics = S
movetype= A
ctrl = 0
velset = 0,0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 200, Anim]
type=changeanim
trigger1=!time
value=7200

[State 200, Reset Command Var]
type = ParentVarSet
trigger1 = !time
var(28) = 0
[State 200, Cancel]
type = ChangeState
trigger1 = root,var(28) && time > 4
value = root,var(28)

[State 200, Snd]
type=playsnd
trigger1= !time && random<344
value= 50, 1
channel=3

[State 200, Snd]
type=playsnd
trigger1= !time
value=1,0
channel=4

[State 200, Hit]
type = hitdef
trigger1 = !Time
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
damage = ceil(7 * root,fvar(11)), 0
getpower = 0
givepower = 36, 36
pausetime = 0, 4
guard.pausetime = 0, 4
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
guard.hittime = 12
air.hittime = 120
ground.velocity = -1.2, 0
ground.cornerpush.veloff = 0
guard.velocity = -1.2
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = 0.4
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 0
guardsound = s3, 0
sparkno = -1
guard.sparkno = -1
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -67
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8010)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -35
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -35
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 200, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 200, 5]
type = ChangeState
trigger1 = !AnimTime
value = 7000

; Rigby Medium Punch
[Statedef 7210]
type    = S
physics = S
movetype= A
ctrl = 0
velset = 0,0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 210, Anim]
type=changeanim
trigger1=!time
value=7210

[State 210, Reset Command Var]
type = ParentVarSet
trigger1 = !time
var(28) = 0
[State 210, Cancel]
type = ChangeState
trigger1 = root,var(28) && time > 4
value = root,var(28)

[State 210, Snd]
type=playsnd
trigger1= !time && random<600
value= 50, 2+random%2
channel=3

[State 210, VelSet]
type = VelSet
trigger1 = !time
x = 5

[State 210, Snd]
type=playsnd
trigger1= animelem = 2
value=1,1
channel=4

[State 210, Hit]
type = hitdef
trigger1 = !Time
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
damage = ceil(12 * root,fvar(11)), 0
getpower = 0
givepower = 36, 36
pausetime = 0, 5
guard.pausetime = 0, 5
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 14 + 2 * var(9)
ground.slidetime = 14 + 2 * var(9)
guard.hittime = 14
air.hittime = 120
ground.velocity = -3.2, 0
ground.cornerpush.veloff = 0
guard.velocity = -3.2
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = 0.4
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 1
guardsound = s3, 0
sparkno = -1
guard.sparkno = -1
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -67
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8011)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -22
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -22
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 210, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 210, 5]
type = ChangeState
trigger1 = !AnimTime
value = 7000

; Rigby Headbutt
[Statedef 7220]
type    = S
physics = S
movetype= A
ctrl = 0
velset = 0,0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 220, Anim]
type=changeanim
trigger1=!time
value=7220

[State 220, Reset Command Var]
type = ParentVarSet
trigger1 = !time
var(28) = 0
[State 210, Cancel]
type = ChangeState
trigger1 = root,var(28) && time > 4
value = root,var(28)

[State 210, Snd]
type=playsnd
trigger1= !time && random<600
value= 50, 2+random%2
channel=3

[State 210, VelSet]
type = VelSet
trigger1 = !time
x = 5

[State 210, Snd]
type=playsnd
trigger1= animelem = 1
value=1,2
channel=4

[State 210, Hit]
type = hitdef
trigger1 = !Time
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
damage = ceil(25 * root,fvar(11)), 0
getpower = 0
givepower = 36, 36
pausetime = 0, 7
guard.pausetime = 0, 7
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 16 + 2 * var(9)
ground.slidetime = 16 + 2 * var(9)
guard.hittime = 16
air.hittime = 120
ground.velocity = -6, 0
ground.cornerpush.veloff = 0
guard.velocity = -6
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = 0.4
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 2
guardsound = s3, 0
sparkno = -1
guard.sparkno = -1
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -67
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8012)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -25
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -25
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 210, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 210, 5]
type = ChangeState
trigger1 = !AnimTime
value = 7000

; Rigby Light Kick
[Statedef 7230]
type    = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 230, Anim]
type=changeanim
trigger1=!time
value=7230

[State 210, Reset Command Var]
type = ParentVarSet
trigger1 = !time
var(28) = 0
[State 210, Cancel]
type = ChangeState
trigger1 = root,var(28) && time > 4
value = root,var(28)

[State 230, Snd]
type=playsnd
trigger1= !time && random<500
value= 50, 1
channel=3

[State 230, Snd]
type=playsnd
trigger1= !time
value=1,3
channel=4

[State 230, Hit]
type=hitdef
trigger1= !Time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
priority = 5, Hit
damage = ceil(10 * root,fvar(11)), 0
getpower = 0
givepower = 36, 36
pausetime = 0, 4
guard.pausetime = 0, 4
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2*var(9)
ground.slidetime = 12 + 2*var(9)
guard.hittime = 12
air.hittime = 120
ground.velocity = -1.2, 0
ground.cornerPush.velOff = 0
guard.velocity = -1.2
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 3
guardsound = s3, 0
sparkno = -1 
guard.sparkno = -1
sparkxy = -10 + 0*(var(35):=61), var(36):=-22
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8010)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -20
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -20
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 200, Type]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 230, 5]
type = ChangeState
trigger1 = !AnimTime
value = 7000

; Rigby Medium Kick
[Statedef 7240]
type    = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 240, Anim]
type=changeanim
trigger1=!time
value=7240

[State 220, Reset Command Var]
type = ParentVarSet
trigger1 = !time
var(28) = 0
[State 210, Cancel]
type = ChangeState
trigger1 = root,var(28) && time > 4
value = root,var(28)

[State 240, Snd]
type=playsnd
trigger1= animelem=2 && random<350
value= 50, ifelse(random<500, 2, 3)
channel=3

[State 240, Snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=4

[State 240, Hit 1]
type=hitdef
trigger1= animelem = 2
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(root,fvar(11) * 17), 0
getpower = 0
givepower = 36, 36
pausetime = 0, 5
guard.pausetime = 0, 5
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3*var(9)
ground.slidetime = 15 + 3*var(9)
guard.hittime = 15
air.hittime = 120
ground.velocity = -1, 0
ground.cornerPush.velOff = 0
guard.velocity = -1
guard.cornerPush.velOff = 0
air.velocity = 0, -2 ;-6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 4
guardsound = s3, 0
sparkno = -1
guard.sparkno = -1
sparkxy = -10 + 0*(var(35):=85), var(36):=-30
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8011)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -20
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -20
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 200, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 230, 5]
type = ChangeState
trigger1 = !AnimTime
value = 7000

; Rigby Strong Kick 1
[Statedef 7250]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
facep2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 220, Anim]
type=changeanim
trigger1=!time
value=7250

[State 220, Reset Command Var]
type = ParentVarSet
trigger1 = !time
var(28) = 0
[State 210, Cancel]
type = ChangeState
trigger1 = root,var(28) && time > 4
value = root,var(28)

[State 220, Snd]
type=playsnd
trigger1= animelem=2 ;&& random<500
value= 50, 1
channel=3

[State 220, Snd]
type=playsnd
trigger1= animelem=2
value=1,5
channel=4

[State 220, Hit]
type=hitdef
trigger1= !Time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(root,fvar(11)*26), 0
getpower = 0
givepower = 16, 16
pausetime = 0, 6
guard.pausetime = 0, 6
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 16 + 4*var(9)
ground.slidetime = 16 + 4*var(9)
guard.hittime = 16
air.hittime = 120
ground.velocity = -3, 0
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 5
guardsound = s3, 0
sparkno = -1
guard.sparkno = -1
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8012)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -35
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -35
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 200, Type]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 220, 5]
type = ChangeState
trigger1 = !AnimTime
value = 7000

;Rigby Strong Kick 2
[Statedef 7251]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
facep2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 220, Anim]
type=changeanim
trigger1=!time
value=7251

[State 220, Reset Command Var]
type = ParentVarSet
trigger1 = !time
var(28) = 0
[State 210, Cancel]
type = ChangeState
trigger1 = root,var(28) && time > 4
value = root,var(28)

[State 220, Inching]
type=velset
trigger1=!time
x=6

[State 220, Snd]
type=playsnd
trigger1= animelem=2 ;&& random<500
value= 50, 2
channel=3

[State 220, Snd]
type=playsnd
trigger1= animelem=2
value=1,5
channel=4

[State 220, Hit]
type=hitdef
trigger1= !Time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(root,fvar(11)*26), 0
getpower = 0
givepower = 16, 16
pausetime = 0, 6
guard.pausetime = 0, 6
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 16 + 4*var(9)
ground.slidetime = 16 + 4*var(9)
guard.hittime = 16
air.hittime = 120
ground.velocity = -3, 0
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 5
guardsound = s3, 0
sparkno = -1
guard.sparkno = -1
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8012)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -35
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -35
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 200, Type]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 220, 5]
type = ChangeState
trigger1 = !AnimTime
value = 7000

;Rigby Strong Kick 3
[Statedef 7252]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 220, Anim]
type=changeanim
trigger1=!time
value=7252

[State 220, Reset Command Var]
type = ParentVarSet
trigger1 = !time
var(28) = 0
[State 210, Cancel]
type = ChangeState
trigger1 = root,var(28) && time > 4
value = root,var(28)

[State 220, Inching]
type=velset
trigger1=!time
x=6

[State 220, Snd]
type=playsnd
trigger1= animelem=2 ;&& random<500
value= 50, 3
channel=3

[State 220, Snd]
type=playsnd
trigger1= animelem=2
value=1,2
channel=4

[State 220, Hit 1]
type=hitdef
trigger1= AnimElem = 2
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(root,fvar(11)*14), 0
getpower = 0
givepower = 16, 16
pausetime = 0, 6
guard.pausetime = 0, 6
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 16 + 4*var(9)
ground.slidetime = 16 + 4*var(9)
guard.hittime = 16
air.hittime = 120
ground.velocity = -3, 0
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 5
guardsound = s3, 0
sparkno = -1
guard.sparkno = -1
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6
[State 220, Hit 2]
type=hitdef
trigger1= AnimElem = 4
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(root,fvar(11)*14), 0
getpower = 0
givepower = 16, 16
pausetime = 0, 6
guard.pausetime = 0, 6
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 16 + 4*var(9)
ground.slidetime = 16 + 4*var(9)
guard.hittime = 16
air.hittime = 120
ground.velocity = -5.39, -5.65
ground.cornerPush.velOff = 0
guard.velocity = -5
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = 2, 5
guardsound = 3, 0
sparkno = -1
guard.sparkno = -1
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8012)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -35
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -35
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 200, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 220, 5]
type = ChangeState
trigger1 = !AnimTime
value = 7000

; Rigby Hurl start
[Statedef 7500]
type    = A
physics = N
movetype= A
ctrl = 0
velset = 0,0
sprpriority = 1
poweradd = 0
facep2 = 1

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 7503
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, Anim]
type=changeanim
trigger1=!time
value=7500

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(10) = root,var(10)

[State 0, VarAdd]
type = VarAdd
trigger1 = !time
var(29) = 1

[State 0, VelSet]
type = VelSet
trigger1 = !time
y = -0.7

[State 1003, 5]
type = HitDef
trigger1 = Timemod = 8,0
trigger1 = time > 4
attr = S, SA
damage = ceil(20 * root,fvar(11)) - 4*HitCount, 7
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 10
guard.pausetime = 0, 10
sparkno = -1
sparkxy = -10, -130
hitsound = s2, 1
guardsound = s3, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = 0, -3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
yaccel = .5
air.hittime = 12
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
;trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -55
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
;trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -55
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1003, 1]
type = ChangeState
triggerall = prevstateno != [1004,1006]
trigger1 = time = 30
value = 7501
ignorehitpause = 1

[State 1003, 4]
type = PlaySnd
trigger1 = timemod = 4,0
value = S1,17
channel = 3

;Rigby Hurl
[Statedef 7501]
type = A
physics = N
movetype = A
anim = 7501 + var(10)
ctrl = 0
velset = 0, 0
sprpriority = 2

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 7503
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1001, 2]
type = PlaySnd
trigger1 = !time
value = S1,15

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifElse(var(10)=2, 0, 10)
y = ifElse(var(10)>0, -10, 0)

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = 2, 1001
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = !time
priority = 4, Hit
attr = S, SP
damage = ceil(67 * root,fvar(11)), 7
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12 / ((root, var(20) > 0) + 1)
sparkno = -1 
guard.sparkno = -1 
sparkxy = -10, 0
guardsound = s3, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -4
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 60
getpower = 0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 1499
var(18) = 1

[State 1005, 2]
type = ChangeState
trigger1 = time > 20
value = 7502

;end
[Statedef 7502]
type = A
physics = N
movetype = I
sprpriority = 1
anim = 7500
velset = 2, 3

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

[State 51, Accel]
type = gravity
trigger1 = 1
[State 220, Reset Command Var]
type = ParentVarSet
trigger1 = pos y > -vel y
var(28) = 0
[State 51, Land]
type = changestate
trigger1 = pos y > -vel y
value = 7000

;OUCH!
[Statedef 7503]
type = A
physics = N
movetype = I
sprpriority = 1
anim = 7504
velset = -2, -3

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s50, 4
channel = 3

[State 51, Accel]
type = gravity
trigger1 = 1
[State 220, Reset Command Var]
type = ParentVarSet
trigger1 = pos y > -vel y
var(28) = 0
[State 51, Land]
type = changestate
trigger1 = pos y > -vel y
value = 7000

; I'LL KILL YOU!
[Statedef 3310]
type    = S
physics = S
movetype= A
ctrl = 0
velset = 0,0
sprpriority = 1
poweradd = 0

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

[State 0, Anim]
type=changeanim
trigger1=!time
value=3310

[State 0, Anim]
type=changeanim
trigger1= root,var(28)=3311
trigger1= animelemtime(4) < 0
value = 3310
elem = 4

[State 3310, VelSet]
type = VelSet
trigger1 = root,var(28)=3311
x = 10

[State 3310, ChangeState]
type = ChangeState
trigger1 = root,var(28)=3312
value = 3311

[State 3310, ChangeState]
type = ChangeState
trigger1 = root,var(28)=3315
value = 3315

[State 220, Reset Command Var]
type = ParentVarSet
trigger1 = 1
var(28) = 0

;Rigby despawns from super
[StateDef 3311]
type = S
ctrl = 0
anim = 3311
velset = 0,0

[State 220, Reset Command Var]
type = ParentVarSet
trigger1 = 1
var(28) = 0

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

[State 1007, End]
type = DestroySelf
trigger1 = !AnimTime

;Rigby hits and despawns
[StateDef 3315]
type = S
ctrl = 0
anim = 3315
velset = 0,0
sprpriority = -2

[State 220, PosAdd]
type = PosAdd
trigger1 = !time
x = parentdist x + 30

[State 220, Reset Command Var]
type = ParentVarSet
trigger1 = 1
var(28) = 0

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

[State 1007, End]
type = DestroySelf
trigger1 = !AnimTime

;Rigby despawns
[StateDef 7999]
type = S
ctrl = 0
anim = 7999
velset = 0,0

[State 220, Reset Command Var]
type = ParentVarSet
trigger1 = 1
var(28) = 0

[State 1050, PlaySnd]
type = playsnd
trigger1 = !time
value = 50, 6

[State -2]
type = Trans
trigger1 = enemy,name = "Rigby1105"
trans = add1
ignorehitpause = 1

[State 1007, End]
type = DestroySelf
trigger1 = !AnimTime

;========================<SPARKS>=============================
;iacderoM
[Statedef 19100]
type = S
sprpriority=3
ctrl=0
anim=19000
physics = N

[State 191, 8]
type = PlaySnd
trigger1 = time = 0
value = 190,1+random%2

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 8
y = -12

[State 191, 8]
type = PlaySnd
trigger1 = time = 30 || root,stateno !=191
value = 2, 3000
[State 191, 8]
type = PlaySnd
trigger1 = time = 30 || root,stateno !=191
value = 1, 8
[State 0, EnvShake]
type = EnvShake
trigger1 = time = 30 || root,stateno !=191
time = 25
freq = 90
ampl = -4
persistent = 0

[State 320, Destroyself]
type = destroyself
trigger1 =root,stateno!=191
trigger2 =time = 30

;Multi Tool FX, light
[Statedef 1404]
physics  = N
anim = 1404
ctrl = 0
velset=0,0
sprpriority=4

[State 300, Transparency]
type = Trans
trigger1 = 1
trans = Add

[State 300, BindToRoot]
type = BindToRoot
trigger1 = AnimElemTime(3) < 0
pos = ceil(-25 * const(size.xscale)), ceil(-75 * const(size.yscale))
ignorehitpause =1
[State 300, BindToRoot]
type = BindToRoot
trigger1 = AnimElemTime(3) >= 0
pos = ceil(-30 * const(size.xscale)), ceil(-110 * const(size.yscale))
ignorehitpause =1

[State 300, Assert]
type = AssertSpecial
Trigger1 = 1
flag = noshadow
ignorehitpause =1
[State 300, Destroyself]
type = destroyself
trigger1 =root,stateno!=1400 || (root,anim=1400&&root,animelemtime(5)>=3)
trigger2 =root,Movetype=H
trigger3 =!animtime

;Multi Tool FX, heavy
[Statedef 1424]
physics  = N
anim = 1424
ctrl = 0
velset=0,0
sprpriority=4

[State 300, Transparency]
type = Trans
trigger1 = 1
trans = Add

[State 300, BindToRoot]
type = BindToRoot
trigger1 = AnimElemTime(3) < 0
pos = ceil(-25 * const(size.xscale)), ceil(-75 * const(size.yscale))
ignorehitpause =1
[State 300, BindToRoot]
type = BindToRoot
trigger1 = AnimElemTime(3) >= 0
pos = ceil(-30 * const(size.xscale)), ceil(-110 * const(size.yscale))
ignorehitpause =1

[State 300, Assert]
type = AssertSpecial
Trigger1 = 1
flag = noshadow
ignorehitpause =1
[State 300, Destroyself]
type = destroyself
trigger1 =root,stateno!=1400
trigger2 =root,Movetype=H
trigger3 =!animtime

;Multi Tool FX, shot heavy
[Statedef 1425]
physics  = N
anim = 1425
ctrl = 0
velset=0,0
sprpriority=4

[State 300, Transparency]
type = Trans
trigger1 = 1
trans = Add

[State 300, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = ceil(-4 * const(size.xscale)), ceil(-25 * const(size.yscale))
ignorehitpause =1

[State 300, Assert]
type = AssertSpecial
Trigger1 = 1
flag = noshadow
ignorehitpause =1
[State 300, Destroyself]
type = destroyself
trigger1 =root,stateno!=1400
trigger2 =root,Movetype=H
trigger3 =!animtime
trigger4 =numhelper(1426)

;Multi Tool FX, shot return
[Statedef 1426]
physics  = N
anim = 1426
ctrl = 0
velset=0,0
sprpriority=4

[State 300, Transparency]
type = Trans
trigger1 = 1
trans = Add

[State 300, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = ceil(-4 * const(size.xscale)), ceil(-25 * const(size.yscale))
ignorehitpause =1

[State 300, Assert]
type = AssertSpecial
Trigger1 = 1
flag = noshadow
ignorehitpause =1
[State 300, Destroyself]
type = destroyself
trigger1 =root,stateno!=1400
trigger2 =root,Movetype=H
trigger3 =!animtime

;Multi Tool FX, EX
[Statedef 1451]
physics  = N
anim = 1451
ctrl = 0
velset=0,0
sprpriority=4

[State 300, Transparency]
type = Trans
trigger1 = 1
trans = Add

[State 300, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = ceil(-30 * const(size.xscale)), ceil(-110 * const(size.yscale))
ignorehitpause =1

[State 300, Assert]
type = AssertSpecial
Trigger1 = 1
flag = noshadow
ignorehitpause =1
[State 300, Destroyself]
type = destroyself
trigger1 =root,stateno!=1450 || (root,animelemtime(10)>=0)
trigger2 =root,Movetype=H
;trigger3 =!animtime

;Multi Tool FX, Super
[Statedef 3001]
physics  = N
anim = 1451
ctrl = 0
velset=0,0
sprpriority=4

[State 300, Transparency]
type = Trans
trigger1 = 1
trans = Add

[State 300, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = ceil(-30 * const(size.xscale)), ceil(-110 * const(size.yscale))
ignorehitpause =1

[State 300, Assert]
type = AssertSpecial
Trigger1 = 1
flag = noshadow
ignorehitpause =1
[State 300, Destroyself]
type = destroyself
trigger1 =root,stateno!=3000 || (root,animelemtime(23)>=0)
trigger2 =root,Movetype=H
;trigger3 =!animtime

;Lantern charge
[Statedef 3204]
physics  = N
anim = 3204
ctrl = 0
velset=0,0
sprpriority=4

[State 300, Transparency]
type = Trans
trigger1 = 1
trans = Add

[State 8500, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 8500, Rotate]
type = angleadd
trigger1 = 1
value = -6
[State 8500, Scale]
type = angledraw
trigger1 = time < 16
scale = 0.25, 0.25
ignoreHitPause = 1

[State 300, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 15,-103
ignorehitpause =1
[State 300, Assert]
type = AssertSpecial
Trigger1 = 1
flag = noshadow
ignorehitpause =1
[State 300, Destroyself]
type = destroyself
trigger1 =(root,stateno!=[3200,3299]) || (root,anim!=3200)
trigger2 =root,Movetype=H

;Lantern FULL POWER
[Statedef 3205]
physics  = N
anim = 3205
ctrl = 0
velset=0,0
sprpriority=4

[State 300, Transparency]
type = Trans
trigger1 = 1
trans = Add

[State 300, BindToRoot]
type = BindToRoot
trigger1 =1
pos = 15,-99
ignorehitpause =1
[State 300, Assert]
type = AssertSpecial
Trigger1 = 1
flag = noshadow
ignorehitpause =1
[State 300, Destroyself]
type = destroyself
trigger1 =(root,stateno!=[3200,3299]) || (root,anim!=3200)
trigger2 =root,Movetype=H

;Lantern woosh
[Statedef 3206]
physics  = N
anim = 3206
ctrl = 0
velset=0,0
sprpriority=4

[State 300, Transparency]
type = Trans
trigger1 = 1
trans = Add

[State 300, Scale]
type = AngleDraw
trigger1 = 1
value = 0
scale = 1.25, 1

[State 300, BindToRoot]
type = BindToRoot
trigger1 =1
pos = 30,-60
ignorehitpause =1
[State 300, Assert]
type = AssertSpecial
Trigger1 = 1
flag = noshadow
ignorehitpause =1
[State 300, Destroyself]
type = destroyself
trigger1 =(root,stateno!=[3200,3299])
trigger2 =root,Movetype=H
trigger3 =!animtime

;Lantern ground FX
[StateDef 3207]
physics=N
anim=3207
velset=0,0
sprPriority=4
ctrl=0

[State 3103, AssertSpecial]
type=AssertSpecial
trigger1=1
flag=noshadow 
ignorehitpause =1

[State 3103, End]
type=DestroySelf
trigger1=!animtime
ignorehitpause =1

;Lantern ground FX
[StateDef 3209]
physics=N
anim=3209
velset=0,0
sprPriority=4
ctrl=0

[State 3103, AssertSpecial]
type=AssertSpecial
trigger1=1
flag=noshadow 
ignorehitpause =1

[State 3103, End]
type=DestroySelf
trigger1=!animtime
ignorehitpause =1

;Spawning Lanterns
[StateDef 3210]
physics=N
anim=3210
velset=0,0
sprPriority=4
ctrl=0

[State 3103, AssertSpecial]
type=AssertSpecial
trigger1=1
flag=noshadow 
ignorehitpause =1

[State 300, Scale]
type = AngleDraw
trigger1 = 1
value = 90
scale = 4, 4

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 1, 36

[State BIG BIRD]
type = Helper
trigger1 = animelem = 4 && IsHelper(3211)
helpertype = normal ;player
name = "Big Bird"
ID = 3211
stateno = 3211
pos = 0, 0
postype = p1
size.xscale = 1
size.yscale = 1
[State CHUCK]
type = Helper
trigger1 = animelem = 4 && IsHelper(3212)
helpertype = normal ;player
name = "Chuck"
ID = 3212
stateno = 3212
pos = 0, 0
postype = p1
[State BLU]
type = Helper
trigger1 = animelem = 4 && IsHelper(3213)
helpertype = normal ;player
name = "Blu"
ID = 3213
stateno = 3213
pos = 0, ceil(-180 * const(size.yscale))
postype = p1

[State 3103, End]
type=DestroySelf
trigger1=!animtime
ignorehitpause =1

;IT'S SHOWTIME!!!!
[Statedef 3525]
type = S
physics = N
anim = 3525
sprpriority = -1

[State 6010, Bind]
type = bindtoroot
trigger1 = 1
pos = 75, 0

[State 6010, palfx]
type = palfx
trigger1 = root, animelemtime(13) = -1 || root, animelemtime(17) = -1 || root, animelemtime(21) = -1
add = -50, -50, -50
sinadd = -155, -155, -155, 80
mul = 128, 128, 256
color = 0
time = 20

[State 3103, End]
type=DestroySelf
trigger1=!animtime
ignorehitpause =1


;Guard Spark (Normal)
[StateDef 8000]
type = A
physics = N
moveType = I
anim = 8000
velset = 0,0
sprPriority = 5

[State 8000, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8000, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8000, End]
type = DestroySelf
trigger1 = Time >= 8


;Guard Spark (Special)
[StateDef 8001]
type = A
physics = N
moveType = I
anim = 8001
velSet = 0,0
sprPriority = 5

[State 8001, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8001, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8001, End]
type = DestroySelf
trigger1 = Time >= 8



;Weak Hit Spark
[StateDef 8010]
type = A
physics = N
moveType = I
anim = ifelse(root,fvar(29)=-1,8010,8019+(root,fvar(29)=3)*60)
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 8010, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)
ignorehitpause = 1

[State 8010, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.3 - (Time * 0.03)), (0.3 - (Time * 0.03))
ignorehitpause = 1

[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignorehitpause = 1

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignorehitpause = 1

[State 8010, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011+(root,fvar(29)=3)*60
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.15 + (0.009375 * Time)), (0.15 + (0.009375 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012+(root,fvar(29)=3)*60
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.15 + (0.009375 * Time)), (0.15 + (0.009375 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8010, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.3 - (0.0375 * Time)), (0.3 - (0.0375 * Time))
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8010, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16


;Medium Hit Spark
[StateDef 8011]
type = A
physics = N
moveType = I
anim = ifelse(root,fvar(29)=-1,8010,8019+(root,fvar(29)=3)*60)
velSet = 0,0
sprPriority = 5

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 8011, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8011, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8011, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.35 - (Time * 0.035)), (0.35 - (Time * 0.035))
ignorehitpause = 1

[State 8011, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignorehitpause = 1

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 8011, Center]
type = Explod
trigger1 = !Time
anim = 8011+(root,fvar(29)=3)*60
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removetime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.175 + (0.0109375 * Time)), (0.175 + (0.0109375 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012+(root,fvar(29)=3)*60
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.175 + (0.0109375 * Time)), (0.175 + (0.0109375 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.35 - (0.04375 * Time)), (0.35 - (0.04375 * Time))
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8011, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8011, End]
type = DestroySelf
trigger1 = Time >= 16


;Strong Hit Spark
[StateDef 8012]
type = A
physics = N
moveType = I
anim = ifelse(root,fvar(29)=-1,8010,8019+(root,fvar(29)=3)*60)
velSet = 0,0
sprPriority = 5

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 8012, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8012, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8012, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.4 - (Time * 0.04)), (0.4 - (Time * 0.04))
ignorehitpause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignorehitpause = 1

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignorehitpause = 1

[State 8012, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011+(root,fvar(29)=3)*60
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.2 + (0.0125 * Time)), (0.2 + (0.0125 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012+(root,fvar(29)=3)*60
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.2 + (0.0125 * Time)), (0.2 + (0.0125 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.4 - (0.05 * Time)), (0.4 - (0.05 * Time))
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8012, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8012, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Hit Spark
[StateDef 8013]
type = A
physics = N
moveType = I
anim = ifelse(root,fvar(29)=-1,8010,8019+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60)
velSet = 0,0
sprPriority = 5

[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 8013, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8013, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8013, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.45 - (Time * 0.045)), (0.45 - (Time * 0.045))
ignorehitpause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignorehitpause = 1

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignorehitpause = 1

[State 8013, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.225 + (0.0140625 * Time)), (0.225 + (0.0140625 * Time)) 
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Streaks Explod (Classic)]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.225 + (0.0140625 * Time)), (0.225 + (0.0140625 * Time)) 
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod (Classic)]
type = Explod
triggerall = root, fvar(29)!=3
trigger1 = !Time
anim = 8013+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
ID = 3
posType = P1
facing = 1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod (PotS 2022)]
type = ModifyExplod
triggerall = root, fvar(29)!=3
trigger1= NumExplod(3)
ID = 3
scale = (0.4), (0.4) 
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, P2 Back (PotS 2022)]
type = explod
triggerall = root, fvar(29)=3
triggerall = !time
triggerall = parent, numtarget
trigger1 = numenemy = parent, numtarget
trigger2 = numenemy > parent, numtarget
trigger2 = abs(enemynear(0), pos x - enemynear(1), pos x) >= 120
anim = 8013
ID = 3
postype = p1
vfacing = ifelse(random < 500, -1, 1)
sprpriority = -3
removetime = 8
pausemovetime = -1
supermovetime = -1

[State 8013, Position (PotS 2022)]
type = modifyexplod
triggerall = root, fvar(29)=3
triggerall = numexplod(3)
trigger1 = numenemy = 1
trigger2 = numenemy >= 2 && !time
ID = 3
postype = p1
pos = ceil(p2dist x + enemynear, const(size.ground.back)), ceil(p2dist y + ifelse(p2statetype = L, 0, ifelse(p2statetype = C, 0.5, 0.75) * enemynear, const(size.head.pos.y)))

[State 8013, Scale]
type = modifyexplod
triggerall = root, fvar(29)=3
trigger1 = numexplod(3)
ID = 3
scale = (0.25 + (0.03125 * time)), (0.25 + (0.03125 * time))
trans = addalpha
alpha = 256 -(32 * time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(random < 500, -1, 1)
vFacing = ifElse(random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.45 - (0.05625 * Time)), (0.45 - (0.05625 * Time))
trans = AddAlpha
alpha = 192 - (24 * Time), 256

[State 8013, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8013, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Hit Spark
[StateDef 8014]
type = A
physics = N
moveType = I
anim = ifelse(root,fvar(29)=-1,8010,8019+(root,fvar(29)=[1,2])*50+(root,fvar(29)=3)*60)
velSet = 0,0
sprPriority = 5

[State 8014, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 8014, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8014, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.5 - (Time * 0.05)), (0.5 - (Time * 0.05))
ignorehitpause = 1

[State 8014, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignorehitpause = 1

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignorehitpause = 1

[State 8014, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011+(root,fvar(29)=1)*50+(root,fvar(29)=2)*40+(root,fvar(29)=3)*60
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.25 + (0.015625 * Time)), (0.25 + (0.015625 * Time)) 
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012+(root,fvar(29)=[1,2])*50+(root,fvar(29)=3)*60
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.25 + (0.015625 * Time)), (0.25 + (0.015625 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod (Classic)]
type = Explod
triggerall = root,fvar(29)!=3
trigger1 = !Time
anim = 8013+(root,fvar(29)=1)*50+(root,fvar(29)=2)*40+(root,fvar(29)=3)*60
ID = 3
posType = P1
facing = 1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod (Classic)]
type = ModifyExplod
triggerall = root,fvar(29)!=3
trigger1 = NumExplod(3)
ID = 3
scale = (0.5), (0.5)
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, P2 Back (PotS 2022)]
type = explod
triggerall = root,fvar(29)=3
triggerall = !time
triggerall = parent, numtarget
trigger1 = numenemy = parent, numtarget
trigger2 = numenemy > parent, numtarget
trigger2 = abs(enemynear(0), pos x - enemynear(1), pos x) >= 120
anim = 8013
ID = 3
postype = p1
vfacing = ifelse(random < 500, -1, 1)
sprpriority = -3
removetime = 8
pausemovetime = -1
supermovetime = -1

[State 8014, Position (PotS 2022)]
type = modifyexplod
triggerall = root,fvar(29)=3
triggerall = numexplod(3)
trigger1 = numenemy = 1
trigger2 = numenemy >= 2 && !time
ID = 3
postype = p1
pos = ceil(p2dist x + enemynear, const(size.ground.back)), ceil(p2dist y + ifelse(p2statetype = L, 0, ifelse(p2statetype = C, 0.5, 0.75) * enemynear, const(size.head.pos.y)))

[State 8014, Scale (PotS 2022)]
type = modifyexplod
triggerall = root,fvar(29)=3
trigger1 = numexplod(3)
ID = 3
scale = (0.30 + (0.0375 * time)), (0.30 + (0.0375 * time)) 
trans = addalpha
alpha = 256 -(32 * time), 256

[State 8014, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.5 - (0.0625 * Time)), (0.5 - (0.0625 * Time))
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16


;Normal Slash Spark
[StateDef 8015]
type = A
physics = N
moveType = I
anim = 8015+(root,fvar(29)=3)*60
velSet = 0,0
sprPriority = 5

[State 8015, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8015, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8015, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2), ((1 - (Time * 0.1)) / 2)
ignoreHitPause = 1

[State 8015, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8015, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012+(root,fvar(29)=3)*60
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8015, Particles]
type = Explod
trigger1 = time<8 && root,fvar(29)=1
anim = 8017+(root,fvar(29)=3)*60
ID = 17
postype = p1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -4+random%10
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1
scale = 0.15,0.15
vel = Ifelse(random<500,2+random%2,-4+random%2), -5 + (random / 90.0)
accel = -1||1,-1||1
ignorehitpause = 1

[State 8015, Scale Particles]
type = ModifyExplod
trigger1 = NumExplod(17)
ID = 17
scale = (0.2 - (0.005 * Time)), (0.2 - (0.005 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256
ignorehitpause = 1

[State 8015, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.2 + (0.0125 * Time)), (0.2 + (0.0125 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8015, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8015, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Slash Spark
[StateDef 8016]
type = A
physics = N
moveType = I
anim = 8015+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
velSet = 0,0
sprPriority = 5

[State 8016, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8016, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8016, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2), ((1 - (Time * 0.1)) / 2)
ignoreHitPause = 1

[State 8016, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8016, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8016, Circle]
type = Explod
trigger1 = !Time
anim = 8016+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
ID = 8016
posType = p1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8016, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8016)
ID = 8016
scale = (0.25 + (0.025 * Time)), (0.25 + (0.025 * Time))
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8016, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8016, Particles]
type = Explod
trigger1 = time<8 && root,fvar(29)=1
anim = 8017+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
ID = 17
postype = p1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -4+random%10
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1
scale = 0.15,0.15
vel = Ifelse(random<500,2+random%2,-4+random%2), -5 + (random / 90.0)
accel = -1||1,-1||1
ignorehitpause = 1

[State 8016, Scale Particles]
type = ModifyExplod
trigger1 = NumExplod(17)
ID = 17
scale = (0.225 - (0.005 * Time)), (0.225 - (0.005 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256
ignorehitpause = 1

[State 8016, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.225 + (0.0140625 * Time)), (0.225 + (0.0140625 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8016, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8016, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Move Slash Spark
[StateDef 8017]
type = A
physics = N
moveType = I
anim = 8015+(root,fvar(29)=[1,2])*50+(root,fvar(29)=3)*60
velSet = 0,0
sprPriority = 5

[State 8017, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8017, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8017, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2), ((1 - (Time * 0.1)) / 2)
ignoreHitPause = 1

[State 8017, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8017, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8017, Circle]
type = Explod
trigger1 = !Time
anim = 8016+(root,fvar(29)=1)*50+(root,fvar(29)=2)*40+(root,fvar(29)=3)*60
ID = 8016
posType = p1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8017, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8016)
ID = 8016
scale = (0.3 + (0.03 * Time)), (0.3 + (0.03 * Time))
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8017, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012+(root,fvar(29)=1)*50+(root,fvar(29)=2)*40+(root,fvar(29)=3)*60
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8017, Particles]
type = Explod
trigger1 = time<10 && root,fvar(29)=1
anim = 8017+(root,fvar(29)=[1,2])*50+(root,fvar(29)=3)*60
ID = 17
postype = p1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -4+random%10
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1
scale = 0.15,0.15
vel = Ifelse(random<500,2+random%2,-4+random%2), -5 + (random / 90.0)
accel = -1||1,-1||1
ignorehitpause = 1

[State 8017, Scale Particles]
type = ModifyExplod
trigger1 = NumExplod(17)
ID = 17
scale = (0.25 - (0.005 * Time)), (0.25 - (0.005 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256
ignorehitpause = 1

[State 8017, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.25 + (0.015625 * Time)), (0.25 + (0.015625 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8017, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8017, End]
type = DestroySelf
trigger1 = Time >= 16


;Reversal Spark
[StateDef 8020]
type = A
physics = N
moveType = I
anim = 8020
velSet = 0,0
sprPriority = 5

[State 8020, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8020, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.09375 * Time), 0.25 + (0.09375 * Time)
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8020, End]
type = DestroySelf
trigger1 = Time >= 8



;Jump dust
[Statedef 8100]
type = S
anim = 1
velset = 0, 0

[State 8100, Bind]
type = bindtoroot
trigger1 = time

[State 8100, Dust]
type = explod
trigger1 = !time
anim = 8100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 8101
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8100, End]
type = destroyself
trigger1 = time >= 7


;Dash dust
[Statedef 8103]
type = A
anim = 1
velset = 0, 0
sprpriority = 5

[State 8103, Pos]
type = posset
trigger1 = !time = 0
y = 0

[State 8103, Dust]
type = explod
trigger1 = time = 0 || time = 3 || time = 6
anim = 8103
ID = ifelse((time = 6), 3, ifelse((time = 3), 2, 1))
postype = p1
pos = 0, -4
random = 8, 8
vel = -3 -(random / 1000.0), -2 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
sprpriority = 3
pausemovetime = -1
supermovetime = -1

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.1 + (0.025 * time), 0.1 + (0.025 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.1 + (0.025 * (time -3)), 0.1 + (0.025 * (time -3))
trans = addalpha
alpha = 256 -(16 * (time -3)), 256

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.1 + (0.025 * (time -6)), 0.1 + (0.025 * (time -6))
trans = addalpha
alpha = 256 -(16 * (time -6)), 256

[State 8103, End]
type = removeexplod
trigger1 = time >= 22

[State 8103, End]
type = destroyself
trigger1 = !numexplod

;-----------------------------------
;Ground Impact 
[Statedef 8110]
type = A
anim = 1
velset = 0, 0
sprpriority = 5

[State 8110, FX]
type = explod
trigger1 = !time
anim = 8110
ID = ifelse(time = 8, 3, ifelse(time = 4, 2, 1))
postype = p1
removetime = 8
sprpriority = -4
pausemovetime = -1
supermovetime = -1

[State 8110, FX]
type = explod
trigger1 = !time
anim = 8120
ID = 2
postype = p1
removetime = 8
sprpriority = -4
pausemovetime = -1
supermovetime = -1

[State 8110, Scale]
type = modifyexplod
trigger1 = 1
scale = 0.25 + (0.03125 * time), 0.25 + (0.03125 * time)
trans = addalpha
alpha = ifelse(time < 4, 256, 256 -(64 * (time -4))), 256

[State 8110, End]
type = removeexplod
trigger1 = time >= 8

[State 8110, End]
type = destroyself
trigger1 = !numexplod

;WALL IMPACT DUST
[StateDef 8111]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8111, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8111
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8121
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8111, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8111, End]
type = DestroySelf
trigger1 = !NumExplod

;FLAMES
[Statedef 8150]
type = A
velset = 0, 0
anim = 1

[State 8150, player]
type = varset
trigger1 = !time
var(0) = parent, var(43)

[State 8150, Pos]
type = posset
trigger1 = playerIDexist(var(0))
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) + (playerID(var(0)), const(size.mid.pos.y))

[State 8150, Pos]
type = posset
trigger1 = playerIDexist(var(0))
trigger1 = playerID(var(0)), statetype = L
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) - 20

[State 8150, facing]
type = turn
trigger1 = playerIDexist(var(0))
trigger1 = facing != (playerID(var(0)), facing)

[State 8150, flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8150
sprpriority = 3
postype = p1
random = 40, 40
vel = (random / 2000.0), -.5 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 8150, flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8150
sprpriority = 3
postype = p1
random = 60, 60
vel = (random / 2000.0), -.5 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 8150, End]
type = destroyself
trigger1 = time >= 600
trigger2 = !playerIDexist(var(0))

[State 8150, End]
type = destroyself
triggerall = playerIDexist(var(0))
trigger1 = playerID(var(0)), ctrl
trigger2 = playerID(var(0)), movetype != H || playerID(var(0)), stateno = 5300
trigger3 = playerID(var(0)), statetype = L && (playerID(var(0)), stateno != [5080, 5081])

;RECOVER FX
[Statedef 8200]
type = A
velset = 0, 0
anim = 8200
sprpriority = 5

[State 8200, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8200, Scale]
type = angledraw
trigger1 = 1
scale = 0.25 + (0.017 * time), 0.25 + (0.017 * time)
ignoreHitPause = 1

[State 8200, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -17.1 * time), 256
ignoreHitPause = 1

[State 8200, End]
type = destroyself
trigger1 = time >= 15

;RAGE MODE FX
[Statedef 8250]
type = A
velset = 0, 0
anim = 1
sprpriority = 5

[State ACTIVATEsnd]
type = PlaySnd
trigger1 = !time
value = S5200,1
channel = -1
ignorehitpause = 1

[State 8330, Dust]
type = explod
trigger1 = !time
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
ignorehitpause = 1

[State 8250, Explod]
type = Explod
trigger1 = time%3 = [0,12]
anim = 8250
ID = 1
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 30
scale = 2,2
ontop = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 8200, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8200, Scale]
type = modifyExplod
trigger1 = 1
ID = 1
scale = 0.25 + (0.2 * time), 0.25 + (0.2 * time)
trans = addalpha
alpha = ceil(256-17.1*time),256
ignoreHitPause = 1

[State end]
type = destroyself
trigger1 = roundstate !=2
trigger2 = root,var(41)=0

;COUNTER FX
[Statedef 8290]
type = A
physics = N
velset = 0, 0
anim = 1

[State 8290, Circle]
type = explod
trigger1 = !numexplod(8290)
anim = 8290
ID = 8290
sprpriority = 64
postype = p1
facing = facing
removetime = 32
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8290, Scale]
type = modifyexplod
trigger1 = time < 8
ID = 8290
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 0

[State 8290, Scale]
type = modifyexplod
trigger1 = time >= 8
ID = 8290
scale = 0.5 + .0625 * (time -8), 0.5 + .0625 * (time -8)
trans = addalpha
alpha = 256 -32 * (time -8), 32 * (time -8)

[State 8290, Safety]
type = removeexplod
trigger1 = time >= 16

[State 8290, End]
type = destroyself
trigger1 = time >= 16

;MAX MODE TEXT FX
[StateDef 8291]
type = A
physics = N
velSet = 0,0
anim = 1

[State 8291, "Power Up!" Text Explod]
type = Explod
trigger1 = !NumExplod(8291)
anim = 8291
ID = 8291
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8291, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8291
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8291, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8291
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8291, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8291, End]
type = DestroySelf
trigger1 = Time >= 16

;POWER CHARGE MAIN FX 
[Statedef 8330]
type = A
physics = N
movetype = I
anim = 1
ctrl = 0
velset = 0, 0

[State 8330, Bind]
type = bindtoroot
trigger1 = (root, stateno = 730)
pos = 0,0

[State 8330, Snd]
type = playsnd
trigger1 = !time
value = 730,0
channel = 0

[State 8330, Aura]
type = explod
trigger1 = !numexplod(8330)
ID = 8330
anim = 8330
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8330, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330) && root, power < 3000
ID = 8330
scale = 0.5, 0.1 + 0.4 * (root, power / 3000.0)

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330) && root, power >= 3000
ID = 8330
scale = 0.5, 0.5

[State 8330, End]
type = stopsnd
trigger1 = root, stateno != 730
channel = 0

[State 8330, End]
type = removeexplod
trigger1 = root, stateno != 730

[State 8330, End]
type = destroyself
trigger1 = root, stateno != 730


;POWER CHARGE Particles 
[Statedef 8331]
type = A
physics = N
movetype = I
anim = 1
ctrl = 0
velset = 0, 0

[State 8331, Bind]
type=bindtoroot
trigger1= !(time%8)
pos=ceil(-153+(random/3.125)),ceil(82-(random/3.125))

[State 8331, Particle]
type=explod
trigger1= (time%8)=1
anim=8331
sprpriority=ifelse(random<750,5,-1)
postype=p1
vel= ((rootdist x+1)/32.0), ((rootdist y-75)/32.0)
scale= ifelse(random<500,.5,-.5), ifelse(random<500,.5,-.5)
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 8331, End]
type = removeexplod
trigger1 = root, stateno != 730

[State 8331, End]
type = destroyself
trigger1 = root, stateno != 730


;ZERO COUNTER PAUSE
[Statedef 8350]
type = A
physics = N
movetype = I
anim = 1
ctrl = 0
velset = 0, 0

[State 8350, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
color = 16 * time
mul = 16 * time, 16 * time, 16 * time

[State 8350, Circle]
type = explod
trigger1 = !time
anim = 8350
ID = 1
sprpriority = 3
postype = p1
removetime = 16
supermovetime = -1
ownpal = 1

[State 8350, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = (0.0625 * time), (0.0625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8350, Lightning]
type = explod
trigger1 = !time
anim = 8351
ID = 2
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
supermovetime = -1
ownpal = 1

[State 8350, End]
type = destroyself
trigger1 = time >= 16


;CUSTOM COMBO
[Statedef 8400]
type = A
physics = N
movetype = I
anim = 8400
ctrl = 0
velset = 0, 0
sprpriority = 5

[State 8400, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8400, BG PalFX]
type = bgpalfx
trigger1 = time < 25
time = 1
mul = 128, 128, 128

[State 8400, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8400, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8400, Scale]
type = angledraw
trigger1 = time < 8
scale = (0.0625 * time), (0.0625 * time)
ignoreHitPause = 1

[State 8400, Scale]
type = angledraw
trigger1 = time >= 8
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8400, Trans]
type = trans
trigger1 = time < 16
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8400, Trans]
type = trans
trigger1 = time >= 16
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256
ignoreHitPause = 1

[State 8400, Lines]
type = explod
trigger1 = !time
anim = 8401
ID = 1
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 2 -(0.125 * time), 2 -(0.125 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8400, Circle]
type = explod
trigger1 = time = 16
anim = 8402
ID = 2
sprpriority = 5
postype = p1
removetime = 32
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = (0.1 * (time -16)), (0.1 * (time -16))
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 8400, Safety]
type = removeexplod
trigger1 = time >= 26

[State 8400, End]
type = destroyself
trigger1 = time >= 26


;========================< SUPERPAUSE FX >=============================
;--- --Level 1 -----
[Statedef 8500]
type = A
velset = 0, 0
anim = 8500
sprpriority = 5

[State 8500, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8500, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 0, 0, 256

[State 8500, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8500, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8500, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
ignoreHitPause = 1

[State 8500, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8500, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8500, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8501
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8500, Circle]
type = explod
trigger1 = time = 24
anim = 8502
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(0) = fvar(0) * 0.6

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(2) = 0.25
[State 0, VarSet]
type = VarSet
trigger1 = time = 10
fvar(2) = 0.5
[State 0, VarSet]
type = VarSet
trigger1 = time = 20
fvar(2) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 30
fvar(2) = 2

[State 0, VarSet]
type = VarSet
trigger1 = (time%10) = 0
fvar(12) = 0.1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(12) = fvar(12) * 0.4

[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(10) = -640+random%1280
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(11) = -640+random%1280

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2990+random%3
ID = 2990
pos = ceil(160+(fvar(10)*fvar(12))+(-320*fvar(0)*facing ) ),ceil(120+(fvar(11)*fvar(12)) )
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 38
pausemovetime = 65535
supermovetime = 65535
scale = fvar(2),fvar(2)
sprpriority = -64
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(2990)
ID = 2990
pos = ceil(160+(fvar(10)/10)+(-320*fvar(0) ) ),ceil(120+(fvar(11)/10) )
postype = left
facing = 1
vfacing = 1
bindtime = 1
scale = fvar(2),fvar(2)
sprpriority = -64
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 34
anim = 2995
ID = 2995
pos = 160,120
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 4
pausemovetime = 65535
supermovetime = 65535
scale = .3,.3
sprpriority = -60
ownpal = 1
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !numexplod(2990)

[State 8500, Safety]
type = removeexplod
trigger1 = time >= 40

[State 8500, End]
type = destroyself
trigger1 = time >= 40


;--- --Level 2 -----
[Statedef 8510]
type = A
velset = 0, 0
anim = 8510
sprpriority = 5

[State 8510, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 192, 0, 256

[State 8510, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8510, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8510, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
ignoreHitPause = 1

[State 8510, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8510, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8510, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8511
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8510, Circle]
type = explod
trigger1 = time = 24
anim = 8512
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(0) = fvar(0) * 0.6

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(2) = 0.25
[State 0, VarSet]
type = VarSet
trigger1 = time = 10
fvar(2) = 0.5
[State 0, VarSet]
type = VarSet
trigger1 = time = 20
fvar(2) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 30
fvar(2) = 2

[State 0, VarSet]
type = VarSet
trigger1 = (time%10) = 0
fvar(12) = 0.1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(12) = fvar(12) * 0.4

[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(10) = -640+random%1280
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(11) = -640+random%1280

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2990+random%3
ID = 2990
pos = ceil(160+(fvar(10)*fvar(12))+(-320*fvar(0)*facing ) ),ceil(120+(fvar(11)*fvar(12)) )
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 38
pausemovetime = 65535
supermovetime = 65535
scale = fvar(2),fvar(2)
sprpriority = -64
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(2990)
ID = 2990
pos = ceil(160+(fvar(10)/10)+(-320*fvar(0) ) ),ceil(120+(fvar(11)/10) )
postype = left
facing = 1
vfacing = 1
bindtime = 1
scale = fvar(2),fvar(2)
sprpriority = -64
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 34
anim = 2995
ID = 2995
pos = 160,120
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 4
pausemovetime = 65535
supermovetime = 65535
scale = .3,.3
sprpriority = -60
ownpal = 1
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !numexplod(2990)

[State 8510, Safety]
type = removeexplod
trigger1 = time >= 40

[State 8510, End]
type = destroyself
trigger1 = time >= 40


;--- --Level 3 -----
[Statedef 8520]
type = A
velset = 0, 0
anim = 8520
sprpriority = 5

[State 8520, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8520, Assert]
type = assertspecial
trigger1 = time < 40
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 8520, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8520, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8520, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
ignoreHitPause = 1

[State 8520, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8520, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 20
sprpriority = -16
postype = back
removetime = 40
supermovetime = -1

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 21
sprpriority = -16
postype = back
removetime = 40
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && time < 16
ID = 20
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 1 - (0.03125 * time), 1 - (0.03125 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time < 16
ID = 21
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 2 - (0.09375 * time), 2 - (0.09375 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && (time = [16, 32])
ID = 20
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 256

[State 8520, Scale Portrait 2b]
type = ModifyExplod
trigger1 = NumExplod(21) && (Time = [16,32])
ID = 21
scale = 0,0

[State 8520, Scale Portrait 1c]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
posType = Back
pos = 160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = 160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8521
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Circle]
type = explod
trigger1 = time = 24
anim = 8522
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(0) = fvar(0) * 0.6

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(2) = 0.25
[State 0, VarSet]
type = VarSet
trigger1 = time = 10
fvar(2) = 0.5
[State 0, VarSet]
type = VarSet
trigger1 = time = 20
fvar(2) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 30
fvar(2) = 2

[State 0, VarSet]
type = VarSet
trigger1 = (time%10) = 0
fvar(12) = 0.1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(12) = fvar(12) * 0.4

[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(10) = -640+random%1280
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(11) = -640+random%1280

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2990+random%3
ID = 2990
pos = ceil(160+(fvar(10)*fvar(12))+(-320*fvar(0)*facing ) ),ceil(120+(fvar(11)*fvar(12)) )
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 38
pausemovetime = 65535
supermovetime = 65535
scale = fvar(2),fvar(2)
sprpriority = -64
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(2990)
ID = 2990
pos = ceil(160+(fvar(10)/10)+(-320*fvar(0) ) ),ceil(120+(fvar(11)/10) )
postype = left
facing = 1
vfacing = 1
bindtime = 1
scale = fvar(2),fvar(2)
sprpriority = -64
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 34
anim = 2995
ID = 2995
pos = 160,120
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 4
pausemovetime = 65535
supermovetime = 65535
scale = .3,.3
sprpriority = -60
ownpal = 1
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !numexplod(2990)

[State 8520, Safety]
type = removeexplod
trigger1 = time >= 40

[State 8520, End]
type = destroyself
trigger1 = time >= 40


;SUPER FINISH
[Statedef 8600]
type = A
velset = 0, 0
anim = 1

[State 8600, Sound]
type = playsnd
trigger1 = !time
value = 8600,0
channel = 1

[State 8600, Snd]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time = [16, 24)
time = 1
mul = 32 * (time -16), 32 * (time -16), 32 * (time -16)

[State 8600, Move Name: Custom Combo]
type = varset
trigger1 = !time && root, var(23) = 900
var(0) = 1

[State 8600, Move Name: Laser Tag]
type = varset
trigger1 = !time && Root, StateNo=3000;(root, var(23) = [3000, 3099])
var(0) = 2

[State 8600, Move Name: Bird Hunt]
type = varset
trigger1 = !time && Root, StateNo=3010
var(0) = 3

[State 8600, Move Name: The POWER]
type = varset
trigger1 = !time && Root, StateNo=3050;(root, var(23) = [3200, 3299])
var(0) = 4

[State 8600, Move Name: Category Five]
type = varset
trigger1 = !time && (root, var(23) = [3100, 3199])
var(0) = 5

[State 8600, Move Name: Lantern Hammer]
type = varset
trigger1 = !time && (root, var(23) = [3200, 3299])
var(0) = 6

[State 8600, Move Name: All Out Attack]
type = varset
trigger1 = !time && (root, var(23) = [3300, 3399])
var(0) = 7

[State 8600, Move Name: Traphouse Kitchen]
type = varset
trigger1 = !time && (root, var(23) = [3500, 3599])
var(0) = 8

[State 8600, MvC]
type = explod
trigger1 = !time
anim = 8600
ID = 8600
ontop = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 32
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8600)
ID = 8600
trans = addalpha
alpha = ifelse(time < 16, 256, 256 -32 * (time -16)), 256

[State 8600, Text]
type = explod
trigger1 = !time && var(0)
anim = 8610 + var(0)
ID = 10
ontop = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 32
pausemovetime = -1
supermovetime = -1

[State 8600, Text]
type = explod
trigger1 = !time && var(0)
anim = 8610 + var(0)
ID = 11
ontop = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 8
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
trans = addalpha
alpha = ifelse(time < 16, 256, 256 -32 * (time -16)), ifelse(time < 16, 0, 32 * (time -16))

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(11)
ID = 11
scale = 0.5 + (0.0625 * time), 0.5 + (0.0625 * time)
trans = addalpha
alpha = 256 - (32 * time), 32 * time

[State 8600, Circle]
type = explod
trigger1 = !time
anim = 8601
ID = 8601
under = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
bindtime = -1
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8601)
ID = 8601
scale = (0.25 * time) * (1.3333333 * gameheight / gamewidth), (0.25 * time) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = 256 - (16 * time), 256

[State 8600, Assert]
type = assertspecial
trigger1 = time < 16
flag = noFG

[State 8600, Assert]
type = assertspecial
trigger1 = time < 24
flag = nobardisplay

[State 8600, End]
type = removeexplod
trigger1 = time >= 24
trigger2 = roundstate < 3

[State 8600, End]
type = destroyself
trigger1 = roundstate < 3

;CAMERA CONTROL
[Statedef 8999]
type = S
velset = 0, 0
anim = 1

[State 8999, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
ignoreHitPause = 1

[State 8999, End]
type = destroyself
trigger1 = roundstate = 2