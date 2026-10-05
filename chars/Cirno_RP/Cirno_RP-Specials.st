;---------------------------------------------------------------------------
; 623xyz - Icicle Sword
[Statedef 1000]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1000+1*(var(10)=2)+2*(var(10)>=3)+0*floor(var(24):=0)+0*floor(var(57):=0)
poweradd = 45
velset = 0,0
sprpriority = 1
juggle = 0

[State 1000, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S
ignorehitpause = 1

[State 1000, Facep2]
type = turn
trigger1 = time = 0
trigger1 = statetype != A
trigger1 = p2dist x < 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(4)=0
helpertype = normal ;player
name = "Sword"
ID = 21000
stateno = 21000
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(4)=0
helpertype = normal ;player
name = "Pushbox"
ID = 21010
stateno = 21010
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(4)>=0
persistent = 18;9
value = 1000,10
channel = 3

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)>=0
persistent = 36
value = 800,0
channel = 0
ignorehitpause = 1

[State 1000, Width]
type = width
trigger1 = animelemtime(4)>=0
edge = 40,0
ignorehitpause = 1

[State 1000, STS]
type = statetypeset
trigger1 = animelemtime(4)=0
statetype = A
physics = N
ignorehitpause = 1

[State 1000, VelS]
type = velset
trigger1 = var(10)<=1
trigger1 = animelemtime(4)=0
x = 2.0
y = -4.0

[State 1000, VelS]
type = velset
trigger1 = var(10)=2
trigger1 = animelemtime(4)=0
x = 4.0
y = -4.5;+1

[State 1000, VelS]
type = velset
trigger1 = var(10)>=3
trigger1 = animelemtime(4)=0
x = 6.0
y = -5.0;+2

[State 1000, VelS]
type = veladd
trigger1 = animelemtime(4)>0
y = 0.25;-0.0625*(var(10)=2)-0.125*(var(10)>=3)

[State MHR]
type = movehitreset
trigger1 = animelemtime(4)=0||animelemtime(6)=0||animelemtime(8)=0||animelemtime(10)=0||animelemtime(12)=0

[State Hitdef Ground Type]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(3*ln(2)) + 0.5)),0,1) || var(24)
triggerall = !movecontact && !movereversed
trigger1 = animelemTime(4)>=0 && animelemtime(5)<0
trigger2 = animelemTime(6)>=0 && animelemtime(7)<0
trigger3 = animelemTime(8)>=0 && animelemtime(9)<0
trigger4 = animelemTime(10)>=0 && animelemtime(11)<0
trigger5 = animelemtime(12)=0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Medium
priority = 4,Hit
damage = ceil(1*(fvar(11)/cond(var(57)=4,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),1
getpower = 0,0
givepower = 0,0
pausetime = 4,4
sparkno = s8005+(random%2)
guard.sparkno = s8030
sparkxy = -10,-55
hitsound = -1;S1,6
guardsound = -1;S2,0
ground.type = High
ground.slidetime = 24+3*((var(42)>=1))
ground.hittime = 24+3*((var(42)>=1))
guard.slidetime = 21
guard.hittime = 21
air.hittime = 24
yaccel = 0.5
ground.velocity = -2.0-2.0*(var(10)=2)-4.0*(var(10)>=3)
guard.velocity = -2.0-2.0*(var(10)=2)-4.0*(var(10)>=3)
air.velocity = -2.0-2.0*(var(10)=2)-4.0*(var(10)>=3),-1.5
down.velocity = -2.0-2.0*(var(10)=2)-4.0*(var(10)>=3),-1.5;-.5,-16.5;-4.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
id = 1000
forcestand = 1

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(1000)
trigger1 = target(1000),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 4;Change index
ignorehitpause = 1
persistent = 0

[State 210, VS]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 1000, Hitsound]
type = playsnd
trigger1 = movehit=1
value = 1,6
channel = 1

[State 1000, Hitsound]
type = playsnd
trigger1 = movecontact=1 && !movehit
value = 2,0
channel = 1

[State 200, Damage Proration]
type = varset
trigger1 = Movehit=1
fvar(10) = fvar(10)*0.99*cond(fvar(10)>=1.0,(fvar(30)),1.0)
;ignorehitpause = 1
;persistent = 0

[State 1000, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1001

;---------------------------------------------------------------------------
; 623xyz Icicle Sword - Final Slash
[Statedef 1001]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1005
velset = 0,0
poweradd = 0
sprpriority = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1001, PS]
type = posset
trigger1 = time = 0
y = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = 1000,0
channel = 0

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(2)=0
value = 1000,11
channel = 3

[State 1001, MHR]
type = movehitreset
trigger1 = animelemtime(2)=0

[State 1001, Shake]
type = EnvShake
trigger1 = animelemtime(2)=0
time = 30
freq = 90
ampl = -8
ignorehitpause = 1
persistent = 0

[State Hitdef Ground Type]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(3*ln(2)) + 0.5)),0,1) || var(24)
triggerall = !movecontact && !movereversed
trigger1 = animelemTime(2)>=0 && animelemtime(3)<0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 4,Hit
damage = ceil((72+9*(var(10)=2)+18*(var(10)>=3))*(fvar(11)/cond(var(57)=4,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),14+2*(var(10)=2)+4*(var(10)>=3)
getpower = 80,80
givepower = 40,40
pausetime = 8,8
sparkno = s8025+(random%2)
guard.sparkno = s8030
sparkxy = -10,-55
hitsound = S1,3
guardsound = S2,0
ground.type = High
ground.slidetime = 24+3*((var(42)>=1))
ground.hittime = 24+3*((var(42)>=1))
guard.slidetime = 21
guard.hittime = 21
air.hittime = 24
yaccel = 0.5
ground.velocity = -0.5,8.5;-8.0,-4.5
guard.velocity = -4.0
air.velocity = -0.5,8.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
id = 1001
forcestand = 1

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(1001)
trigger1 = target(1001),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 4;Change index
ignorehitpause = 1
persistent = 0

[State 210, VS]
type = varset
trigger1 = movecontact
var(24)=1
ignorehitpause = 1
persistent=0

[State 200, Damage Proration]
type = varset
trigger1 = Movehit
fvar(10) = fvar(10)*0.75*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State I'm sorry for taking this None]
type = TargetState
trigger1 = numtarget(1001)
trigger1 = var(31) = 1
trigger1 = !(target(1001),ishelper) || (PlayerIDExist((target(1001),id)))
trigger1 = var(15)=0
trigger1 = (var(15):=1)||1
persistent = 0
value = 450 ;Added these on custom
ID = 1001
ignorehitpause = 1

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(3)=0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 1001, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 623xyz Sword FX
[Statedef 21000]
type = A
movetype = I
physics = N
juggle = 0
anim = 21000
sprpriority = 5

[State 621, CA]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno(-1)

[State 21000, VA]
type = varadd
trigger1 = time
trigger1 = !(root,hitpausetime)
var(0) = 1

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21505, AD]
type = AngleDraw
trigger1 = 1
scale = 1.0,1.0
ignorehitpause = 1

[State 21505, AD]
type = Angleset
trigger1 = 1
value = -45*floor(var(0)/2.0)
ignorehitpause = 1

[State 21505, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 1010, BTR]
type = BindtoRoot
trigger1 = 1
pos = 0,0
ignorehitpause = 1

[State 1010, CS]
type = changestate
trigger1 = root,stateno = 1001
value = 21001

[State 1010, Zeeky]
type = destroyself
trigger1 = root,stateno != [1000,1001]

;--------------------------
; 623xyz Sword FX
[Statedef 21001]
type = A
movetype = I
physics = N
juggle = 0
anim = 21001
sprpriority = 5

[State 621, CA]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno(-1)

[State 21000, VA]
type = varadd
trigger1 = time
trigger1 = !(root,hitpausetime)
var(0) = 1

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21505, AD]
type = AngleDraw
trigger1 = 1
scale = 1.0,1.0
ignorehitpause = 1

[State 21505, AD]
type = Angleset
trigger1 = 1
value = cond(animelemtime(2)<0,45,0)
ignorehitpause = 1

[State 21505, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 1010, BTR]
type = BindtoRoot
trigger1 = 1
pos = 0,0
ignorehitpause = 1

[State 1010, Zeeky]
type = destroyself
trigger1 = root,stateno != [1000,1001]
trigger2 = animtime = 0

;--------------------------
; 623xyz Sword Pushbox
[Statedef 21010]
type = A
movetype = I
physics = N
juggle = 0
anim = 21010
sprpriority = 5

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21505, Trans]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21010, PP]
type = playerpush
trigger1 = 1
value = 1
ignorehitpause = 1

[State 1010, BTR]
type = BindtoRoot
trigger1 = 1
pos = 0,-floor(root,pos y)
ignorehitpause = 1

[State 1010, Zeeky]
type = destroyself
trigger1 = root,stateno != 1000

;---------------------------------------------------------------------------
; 236xyz - Icicle Shot
[Statedef 1100]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1100+1*(var(10)>=3)+0*(var(36):=0)+0*floor(var(57):=0)
poweradd = 15
velset = 0,0
sprpriority = 1

[State 1100, Z Version Air]
type = statetypeset
trigger1 = var(10)>=3
trigger1 = animelemtime(2)=0
statetype = A
physics = N

[State 1100, Airborne]
type = velset
trigger1 = var(10)>=3
trigger1 = animelemtime(2)=0
x = 0
y = -4.5

[State 1100, Grav]
type = veladd
triggerall = var(10)>=3
trigger1 = animelemtime(2)>1 && animelemtime(6)<0
trigger2 = animelemtime(28)>=0
y = 0.5

[State 1100, VS]
type = velset
trigger1 = var(10)>=3
trigger1 = animelemtime(6)=0
y = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 1100,0
channel = 0

; Piano Input Counter (based on code by PotS & JMorphman)
[State -2, Timer Decrement]
type = VarAdd
trigger1 = var(18)>0
var(18) = -1

[State -2, Counter Reset]
type = VarSet
trigger1 = var(18)<=0
trigger2 = time = 0
var(17) = 0

[State -2, Counter Increment]
type = VarAdd
trigger1 = command = "x2"
trigger1 = var(18):=13
trigger2 = command = "y2"
trigger2 = var(18):=13
trigger3 = command = "z2"
trigger3 = var(18):=13
var(17) = 1

[State 1100, Mash Extend]
type = changeanim
trigger1 = animelemtime(13)=0 && var(17)<4
value = anim
elem = 27;22
[State 1100, Mash Extend]
type = changeanim
trigger1 = animelemtime(15)=0 && var(17)<5
value = anim
elem = 26;23
[State 1100, Mash Extend]
type = changeanim
trigger1 = animelemtime(17)=0 && var(17)<6
value = anim
elem = 25;24
[State 1100, Mash Extend]
type = changeanim
trigger1 = animelemtime(19)=0 && var(17)>=6;7
value = anim
elem = 24;25
[State 1100, Mash Extend]
type = null;changeanim
trigger1 = animelemtime(21)=0 && var(17)<8
value = anim
elem = 23;26
[State 1100, Mash Extend]
type = null;changeanim
trigger1 = animelemtime(22)=0 && var(17)>=8
value = anim
elem = 27

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(7)=0||animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0
trigger2 = animelemtime(15)=0||animelemtime(17)=0;||animelemtime(19)=0||animelemtime(21)=0
value = 1100,10
channel = 3

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7)=0||animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0
trigger2 = animelemtime(15)=0||animelemtime(17)=0;||animelemtime(19)=0||animelemtime(21)=0
anim = 21100
ID = 21100
pos = 29,-58
postype = p1 ;p2,front,back,left,right
facing = 1
bindtime = 1;-1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7)=0||animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0
trigger2 = animelemtime(15)=0||animelemtime(17)=0;||animelemtime(19)=0||animelemtime(21)=0
anim = 20209
ID = 20209
pos = 25+floor(11.0*random/1000.0),-53+floor(11.0*random/1000.0)
postype = p1 ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
scale = 0.5,0.5
accel = 0.0,0.0
sprpriority = 5
ownpal = 1
removeongethit = 0

[State 215, Projectile]
type = Helper
;triggerall = anim = 1100
trigger1 = animelemtime(7)=0||animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0
trigger2 = animelemtime(15)=0||animelemtime(17)=0;||animelemtime(19)=0||animelemtime(21)=0
helpertype = normal ;player
name = "Icicle"
ID = 21100+1*(var(10)=2)+2*(var(10)>=3)
stateno = 21100
pos = 29,-58
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.6
size.yscale = 0.6

[State 1100, STS]
type = statetypeset
trigger1 = animelemtime(22)>=0
movetype = I
ignorehitpause = 1
persistent = 0

[State 1001, CS]
type = ChangeState
trigger1 = anim = 1100
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1001, CS]
type = ChangeState
trigger1 = anim = 1101
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1101

;---------------------------------------------------------------------------
; 236xyz - Icicle Shot
[Statedef 1101]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1102
velset = 0,0
sprpriority = 1

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = 1
movetype = I
persistent = 0
ignorehitpause = 1

[State 52, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 236xyz Ice FX
[Statedef 21100]
type = A
movetype = A
physics = N
juggle = 0
anim = 21101
sprpriority = 5

[State 20410, AngleSet]
type = null
triggerall = time = 0
trigger1 = ishelper(21100)
trigger1 = (fvar(0):=0)||1
trigger2 = ishelper(21101)
trigger2 = (fvar(0):=-45)||1
trigger3 = ishelper(21102)
trigger3 = (fvar(0):=39)||1

;[State 20410, Angle Variation]
;type = null
;triggerall = time = 0
;trigger1 = (fvar(0):=fvar(0)+floor(5.0*random/1000.0))||1

[State 20210, AD]
type = AngleDraw
trigger1 = 1
value = fvar(0)
ignorehitpause = 1

[State 21501, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21501, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
slot = 0
stateno = 21101
time = -1
ignorehitpause = 1

[State 20210, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 20410, 20411]
type = changestate
trigger1 = 1
value = 21101

;--------------------------
; 236xyz Ice FX
[Statedef 21101]
type = A
movetype = A
physics = N
juggle = 0
sprpriority = 5
movehitpersist = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,AA,AP
slot = 0
stateno = 21102
time = -1
ignorehitpause = 1

[State 20210, AD]
type = AngleDraw
trigger1 = 1
value = -fvar(0)
ignorehitpause = 1

[State 20411, VS]
type = velset
trigger1 = time = 0
X = 12.5*cos(fvar(0)*Pi/180)
Y = 12.5*sin(fvar(0)*Pi/180)

[State 21501, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21501, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 20210, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(32) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(32)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(32) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = root,var(34) | floor(exp(4*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(32) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(36) = 1 ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 230, 2]
type = HitDef
trigger1 = (root,var(34)&floor(exp(4*ln(2)) + 0.5)) && !(root,var(36))
trigger2 = !(!movecontact && !movereversed)
Attr = S,SP
HitFlag = 

[State 200, Non OTG]
type = HitDef
trigger1 = !(root,var(34)&floor(exp(4*ln(2)) + 0.5)) || (root,var(36))
trigger1 = !ishelper(21102)
trigger1 = !movecontact && !movereversed
attr = S,SP
damage = ceil(18*(root,fvar(11)/cond(root,var(57)=5,(root,fvar(30)),1))),3
animtype = Medium
guardflag = MA
hitflag = MAF;P
priority = 4,Hit
pausetime = 0,7
sparkno = S8000+(random%2)
guard.sparkno = S8030
sparkxy = -10,0
hitsound = s1,12
guardsound = s2,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
air.hittime = 17
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -3.0
air.type = Low
air.velocity = -3.0,-6.5
getpower = 20,20
givepower = 10,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 1100

[State 200, OTG]
type = HitDef
trigger1 = !(root,var(34)&floor(exp(4*ln(2)) + 0.5)) || (root,var(36))
trigger1 = ishelper(21102)
trigger1 = !movecontact && !movereversed
attr = S,SP
damage = ceil(18*(root,fvar(11)/cond(root,var(57)=5,(root,fvar(30)),1))),3
animtype = Medium
guardflag = MA
hitflag = MAFD;P
priority = 4,Hit
pausetime = 0,7
sparkno = S8000+(random%2)
guard.sparkno = S8030
sparkxy = -10,0
hitsound = s1,12
guardsound = s2,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
air.hittime = 17
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -3.0
down.velocity = 0.0,0.0
air.type = Low
air.velocity = -3.0,-6.5
getpower = 20,20
givepower = 10,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 1100

[State 220, First Combo Hit]
type = parentvarset
triggerall = numtarget(1100)
trigger1 = target(1100),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 5;Change index
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.95*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

;-------FORCE GROUND RECOVERY-------
[State -2, P2 Safe Fall]
type = targetstate
triggerall = numtarget=1 ;Just to prevent Simul mode shenanigans
triggerall = target,pos y>=-20 && target,vel y>0
triggerall = target,alive && target,hitfall && target,gethitvar(fall.recover)
triggerall = target,stateno=5030 || target,stateno=5035 || target,stateno=5050 || target,stateno=5071
trigger1 = target,AILevel <= 0
trigger1 = target,command="recovery"
trigger2 = target,AILevel > 0
trigger2 = random%100 <= 10*ceil((target,AILevel)*(target,AILevel)/64.0)
value = 5205
ignorehitpause = 1

[State 20411, CS]
type = changestate
value = 21102
trigger1 = FrontEdgeBodyDist <= -32
trigger2 = MoveContact
trigger3 = screenpos y < -10
trigger4 = root,movetype = H || root,alive = 0

;--------------------------
; 236xyz Ice FX
[Statedef 21102]
type = A
movetype = I
physics = N
juggle = 0
velset = 0,0
anim = 1998
sprpriority = 5
movehitpersist = 1

[State 21501, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21501, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 20210, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

;-------FORCE GROUND RECOVERY-------
[State -2, P2 Safe Fall]
type = targetstate
triggerall = numtarget=1 ;Just to prevent Simul mode shenanigans
triggerall = target,pos y>=-20 && target,vel y>0
triggerall = target,alive && target,hitfall && target,gethitvar(fall.recover)
triggerall = target,stateno=5030 || target,stateno=5035 || target,stateno=5050 || target,stateno=5071
trigger1 = target,AILevel <= 0
trigger1 = target,command="recovery"
trigger2 = target,AILevel > 0
trigger2 = random%100 <= 10*ceil((target,AILevel)*(target,AILevel)/64.0)
value = 5205
ignorehitpause = 1

[State 20415, CS]
type = changestate
trigger1 = time>5
value = 999

;---------------------------------------------------------------------------
; 214xyz - Ice Charge 
; (Totally not a blatant ripoff of Jin Kisaragi's Musou Senshouzan. Happy now, Darkflare? :p)
[Statedef 1200]
type = U
movetype = A
physics = N
ctrl = 0
anim = 1200+1*(var(10)=2)+2*(var(10)>=3)
poweradd = 30
velset = 0,0
sprpriority = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1200, Air Version Flag]
type = varset
trigger1 = time = 0
var(11) = cond(statetype=A,1,0)

[State 1200, STS]
type = statetypeset
trigger1 = animelemtime(2)=0
statetype = A
physics = N

[State 1200, PA]
type = posadd
trigger1 = animelemtime(2)=0
y = -5

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 1200,1
channel = 0

[State 1200, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 1200,10

[State 1200, LOL Ice Car]
type = Explod
trigger1 = animelemtime(4)=0
anim = 21200
ID = 21200
pos = -13,-60
postype = p1 ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
scale = 0.5,0.5
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1
pausemovetime = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = animelemtime(4)>=0
trigger1 = anim = 1200
trigger1 = animelemtime(7)<0
trigger2 = anim = 1201
trigger2 = animelemtime(8)<0
trigger3 = anim = 1202
trigger3 = animelemtime(9)<0
persistent = 7
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
vel = -0.5-0.1*(random%10),2.0+0.1*(random%10)
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;trans = 
;persistent =
;supermove = 0
;pausemove = 0

[State 1200, VS]
type = velset
trigger1 = animelemtime(4)=0
x = 10.0

[State 0, Width]
type = Width
triggerall = animelemtime(4)>=0
trigger1 = anim = 1200
trigger1 = animelemtime(7)<0
trigger2 = anim = 1201
trigger2 = animelemtime(8)<0
trigger3 = anim = 1202
trigger3 = animelemtime(9)<0
edge = 20,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
triggerall = animelemtime(4)>=0
trigger1 = anim = 1200
trigger1 = animelemtime(7)<0
trigger2 = anim = 1201
trigger2 = animelemtime(8)<0
trigger3 = anim = 1202
trigger3 = animelemtime(9)<0
value = ,AP
ignorehitpause = 1



[State Hitdef Ground Type]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(5*ln(2)) + 0.5)),0,1)
triggerall = var(11)=0
triggerall = !movecontact && !movereversed
triggerall = animelemtime(4)>=0
trigger1 = anim = 1200
trigger1 = animelemtime(7)<0
trigger2 = anim = 1201
trigger2 = animelemtime(8)<0
trigger3 = anim = 1202
trigger3 = animelemtime(9)<0
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
priority = 4,Hit
damage = ceil((54+9*(var(10)=2)+18*(var(10)>=3))*fvar(11)*ifelse(var(42),1.25,1.0)),11+2*(var(10)=2)+4*(var(10)>=3)
getpower = 80,80
givepower = 40,40
pausetime = 10,10
sparkno = s8020+(random%2)
guard.sparkno = s8030
sparkxy = -10,-55
hitsound = S1,2
guardsound = S2,0
ground.type = High
ground.slidetime = 24+3*((var(42)>=1))
ground.hittime = 24+3*((var(42)>=1))
guard.slidetime = 21
guard.hittime = 21
air.hittime = 24
yaccel = 0.5
ground.velocity = -8.0,-6.5
guard.velocity = -8.0
air.velocity = -8.0,-6.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
id = 1200

[State Hitdef Air Type]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(5*ln(2)) + 0.5)),0,1)
triggerall = var(11)=1
triggerall = !movecontact && !movereversed
triggerall = animelemtime(4)>=0
trigger1 = anim = 1200
trigger1 = animelemtime(7)<0
trigger2 = anim = 1201
trigger2 = animelemtime(8)<0
trigger3 = anim = 1202
trigger3 = animelemtime(9)<0
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 4,Hit
damage = ceil((54+9*(var(10)=2)+18*(var(10)>=3))*fvar(11)*ifelse(var(42),1.25,1.0)),11+2*(var(10)=2)+4*(var(10)>=3)
getpower = 80,80
givepower = 40,40
pausetime = 10,10
sparkno = s8020+(random%2)
guard.sparkno = s8030
sparkxy = -10,-55
hitsound = S1,2
guardsound = S2,0
ground.type = High
ground.slidetime = 24+3*((var(42)>=1))
ground.hittime = 24+3*((var(42)>=1))
guard.slidetime = 21
guard.hittime = 21
air.hittime = 24
yaccel = 0.5
ground.velocity = -8.0,-6.5
guard.velocity = -8.0
air.velocity = -8.0,-6.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
id = 1200

[State 200, Damage Proration]
type = varset
trigger1 = Movehit=1
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = movecontact||movereversed
trigger2 = anim = 1200
trigger2 = animelemtime(7)=0
trigger3 = anim = 1201
trigger3 = animelemtime(8)=0
trigger4 = anim = 1202
trigger4 = animelemtime(9)=0
movetype = I
persistent = 0
ignorehitpause = 1

[State 215, Projectile]
type = Helper
trigger1 = command="x"||command="y"||command="z"
trigger1 = var(10)>1 ;No X Version
trigger1 = movecontact
trigger2 = anim = 1200
trigger2 = animelemtime(7)=0
trigger3 = anim = 1201
trigger3 = animelemtime(8)=0
trigger4 = anim = 1202
trigger4 = animelemtime(9)=0
persistent = 0
helpertype = normal ;player
name = "Ice Shatter"
ID = 21200
stateno = 21200
pos = 14,-57
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 1200, Follow Up]
type = changestate
triggerall = command="x"||command="y"||command="z"
triggerall = var(10)>1 ;No X Version
trigger1 = movecontact
;trigger2 = anim = 1201
;trigger2 = animelemtime(8)>0
;trigger3 = anim = 1202
;trigger3 = animelemtime(9)>0
value = 1201

[State 0, Explod]
type = RemoveExplod
trigger1 = anim = 1200
trigger1 = animelemtime(7)=0
trigger2 = anim = 1201
trigger2 = animelemtime(8)=0
trigger3 = anim = 1202
trigger3 = animelemtime(9)=0
ID = 21200

[State 1200, Friction]
type = velmul
triggerall = vel x > 1.0
trigger1 = anim = 1200
trigger1 = animelemtime(7)>=0
trigger2 = anim = 1201
trigger2 = animelemtime(8)>=0
trigger3 = anim = 1202
trigger3 = animelemtime(9)>=0
x = 0.95

[State 1200, Grav]
type = veladd
trigger1 = anim = 1200
trigger1 = animelemtime(9)>2
trigger2 = anim = 1201
trigger2 = animelemtime(10)>1
trigger3 = anim = 1202
trigger3 = animelemtime(11)>0
y = 0.5

[State 1200, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1205

;---------------------------------------------------------------------------
; 214yz - Ice Charge Followup
[Statedef 1201]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1210
poweradd = 15
velset = 0,0
sprpriority = 1

[State 0, Explod]
type = RemoveExplod
trigger1 = time = 0
ID = 21200

[State 1201, VS]
type = velset
trigger1 = time = 0
x = 8.0
y = -6.5

[State 1200, Grav]
type = veladd
trigger1 = time
y = 0.5

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 1000,0
channel = 0

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(4)=0
helpertype = normal ;player
name = "Sword"
ID = 21210
stateno = 21210
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 1000,11
channel = 3

[State Hitdef Ground Type]
type = HitDef
trigger1 = animelemtime(5)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 4,Hit
damage = ceil(54*fvar(11)*ifelse(var(42),1.25,1.0)),9
getpower = 40,40
givepower = 20,20
pausetime = 8,8
sparkno = s8025+(random%2)
guard.sparkno = s8030
sparkxy = -10,-55
hitsound = S1,3
guardsound = S2,0
ground.type = High
ground.slidetime = 24+3*((var(42)>=1))
ground.hittime = 24+3*((var(42)>=1))
guard.slidetime = 21-7
guard.hittime = 21-7
air.hittime = 24
yaccel = 0.5
ground.velocity = -8.0,-5.5
guard.velocity = -8.0
air.velocity = -8.0,-5.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
id = 1210

[State 200, Damage Proration]
type = varset
trigger1 = Movehit=1
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 1000, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1202

;---------------------------------------------------------------------------
; 214yz - Ice Charge Followup
[Statedef 1202]
type = S
movetype = I
physics = N
ctrl = 0
anim = 1211
poweradd = 0
;velset = 0,0
sprpriority = 1
movehitpersist = 1

[State 1001, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1202, VS]
type = velset
trigger1 = time = 0
y = 0

[State 1202, Fric]
type = velmul
trigger1 = vel x >= 2.0
x = 0.85

[State 52, 4]
type = VelSet
trigger1 = abs(vel x) < 2.0
x = 0

[State 1001, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 214xyz - Ice Charge
[Statedef 1205]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1205
velset = 0,0
sprpriority = 1
movehitpersist = 1

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = 1
movetype = I
persistent = 0
ignorehitpause = 1

[State 52, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 214xyz Ice Shatter
[Statedef 21200]
type = S
movetype = I
physics = N
juggle = 0
anim = 1998
sprpriority = 5

[State 240, 1]
type = PlaySnd
trigger1 = time = 0
value = 415,11
channel = 3

[State 21501, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 0,0
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 7.5*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7.5*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = 1.5*fvar(0),1.5*fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 0,0
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 7.5*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7.5*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = 1.5*fvar(0),1.5*fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 0,0
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 7.5*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7.5*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = 1.5*fvar(0),1.5*fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 0,0
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 7.5*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7.5*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = 1.5*fvar(0),1.5*fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 0,0
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 7.5*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7.5*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = 1.5*fvar(0),1.5*fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 20416, Zeeky]
type = destroyself
trigger1 = time >= 5

;--------------------------
; 214yz FollowUp Sword
[Statedef 21210]
type = A
movetype = I
physics = N
juggle = 0
anim = 21210
sprpriority = 5

[State 621, CA]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno(-1)

[State 21000, VA]
type = varadd
trigger1 = time
trigger1 = !(root,hitpausetime)
var(0) = 1

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21505, AD]
type = AngleDraw
trigger1 = 1
scale = 1.0,1.0
ignorehitpause = 1

[State 21505, AD]
type = Angleset
trigger1 = 1
value = cond(animelemtime(2)<0,45,0)
ignorehitpause = 1

[State 21505, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 1010, BTR]
type = BindtoRoot
trigger1 = 1
pos = 0,0
ignorehitpause = 1

[State 1010, Zeeky]
type = destroyself
trigger1 = root,stateno != [1201,1202]
trigger2 = root,stateno = 1202
trigger2 = root,animelemtime(4)>=0

;---------------------------------------------------------------------------
; 421xyz - Icicle Fairy Sculpture
[Statedef 1300]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1300+1*(var(10)=2)+2*(var(10)>=3)
poweradd = 15
velset = 0,0
sprpriority = 1

[State 0, AttackDist]
type = AttackDist
trigger1 = time>=0
value = 0
ignorehitpause = 1
;persistent = 

[State 1300, Airborne]
type = statetypeset
trigger1 = animelemtime(4)=0
statetype = A
physics = N

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 1300,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 210,10

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(4)=0
helpertype = normal ;player
name = "Clone"
ID = 21300
stateno = 21300
pos = 0-2*(var(10)=2)-5*(var(10)>=3),-70+20*(var(10)=2)+40*(var(10)>=3)
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 1100, Airborne]
type = velset
trigger1 = animelemtime(4)=0
x = -2.0
y = -6.0

[State 1300, Grav]
type = veladd
trigger1 = animelemtime(4)>2
y = 0.5

[State 1000, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1301

;---------------------------------------------------------------------------
; 421xyz Recover
[Statedef 1301]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1102
velset = 0,0
sprpriority = 1

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = 1
movetype = I
persistent = 0
ignorehitpause = 1

[State 52, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 421xyz Ice Clone
[Statedef 21300]
type = A
movetype = A
physics = N
juggle = 0
anim = 21300+(random%4)
sprpriority = 0

[State 0, AttackDist]
type = AttackDist
trigger1 = time>=0
value = 0
ignorehitpause = 1

[State 21300, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1
[State 21300, PP]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1
[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
slot = 0
stateno = 21303
time = -1
forceair = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
vel = -1.0-0.1*(random%10),2.0+0.1*(random%10)
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
vel = 1.0+0.1*(random%10),2.0+0.1*(random%10)
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
vel = -1.0-0.1*(random%10),-2.0-0.1*(random%10)
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
vel = 1.0+0.1*(random%10),-2.0-0.1*(random%10)
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = 1
time = -1
add = 0,50,240
mul = 120,224,150
invertall = 0
color = 0

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21505, AD]
type = AngleDraw
trigger1 = 1
scale = 1.0,1.0
ignorehitpause = 1

[State 21505, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 21505, CS]
type = changestate
trigger1 = 1
value = 21301

;--------------------------
; 421xyz Ice Clone
[Statedef 21301]
type = A
movetype = A
physics = N
juggle = 0
sprpriority = 0

[State 0, AttackDist]
type = AttackDist
trigger1 = time>=0
value = 30
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = 1
time = -1
add = 50,50,50
mul = 224,224,224
invertall = 0
color = 0

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21505, AD]
type = AngleDraw
trigger1 = 1
scale = 1.0,1.0
ignorehitpause = 1

[State 21505, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,192;128
ignorehitpause = 1

[State 21505, CS]
type = Nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1
[State 21300, PP]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 200, Freezing Shit]
type = HitDef
triggerall = root,var(25)=0
triggerall = !((root,var(34))&floor(exp(6*ln(2)) + 0.5))
trigger1 = !movecontact && !movereversed
attr = S,SP
damage = 0,0
animtype = Medium
guardflag = 
hitflag = MAF
priority = 4,Hit
pausetime = 0,4
sparkno = -1;S8000+(random%2)
guard.sparkno = S8030
sparkxy = -10,-50
hitsound = s210,10
guardsound = s2,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
air.hittime = 17
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -0.0
air.type = Low
air.velocity = -0.0,-0.0
getpower = 40,40
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 0
p2facing = 1
ID = 1300
guard.dist = 0

[State Movehitoner (From None's Beavis)]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = (root,var(34)) | floor(exp(6*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.75*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 21301, Freeze Handling]
type = changestate
trigger1 = movehit
trigger1 = numtarget(1300)
value = 21302

[State 21301, Freeze Handling]
type = changestate
trigger1 = time >= 120
trigger2 = root,stateno = 1300
trigger2 = root,animelemtime(4) < 0
trigger3 = !movehit && movecontact
trigger4 = root,movetype = H
trigger4 = root,stateno != [120,155]
value = 21303

;--------------------------
; 421xyz Ice Clone
[Statedef 21302]
type = A
movetype = A
physics = N
juggle = 0
anim = 21310
sprpriority = 5
movehitpersist = 1

[State 0, AttackDist]
type = AttackDist
trigger1 = time>=0
value = 30
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 0
add = 0,0,0

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1300)
trigger1 = movehit
value = 1350
ID = 1300
ignorehitpause = 1
persistent = 0

[State 1211, Freeze]
type = parentvarset
trigger1 = movehit
persistent = 0
ignorehitpause = 1
var(25) = 1

[State 1220, VS]
type = null
trigger1 = time = 0
trigger1 = (fvar(0):=1.0)||1
trigger1 = (fvar(1):=0.6)||1

[State 1220, VS]
type = null
trigger1 = numtarget
trigger1 = (var(2):=(target,const(size.ground.front)+target,const(size.ground.back)))||1
trigger1 = (var(3):=abs(target,const(size.mid.pos.y)))||1

[State 1220, AD]
type = angledraw
trigger1 = 1
value = 0
scale = fvar(0)*var(2)/30.0,fvar(1)*var(3)/50.0
ignorehitpause = 1

[State 21302, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21302, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1220, PS]
type = posset
trigger1 = numtarget
x = floor(target,pos x)
y = floor(target,pos y);floor(target,pos y + target,const(size.mid.pos.y))

[State 1220, TS]
type = targetstate
trigger1 = time >= 120
trigger2 = numtarget
trigger2 = target,movetype = H
;trigger2 = target,stateno != 4050
trigger2 = target,stateno != [1350,1355]
value = 1355

[State 1220, TS]
type = changestate
trigger1 = time >= 120
trigger2 = !numtarget
trigger3 = numtarget
trigger3 = target,stateno = 1355
trigger4 = numtarget
trigger4 = target,movetype = H 
trigger4 = target,stateno != [1350,1355]
value = 21303

;--------------------------
; 421xyz Ice Clone
[Statedef 21303]
type = A
movetype = I
physics = N
juggle = 0
anim = 1998
sprpriority = 5
movehitpersist = 1

[State 0, AttackDist]
type = AttackDist
trigger1 = time>=0
value = 30
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 0
add = 0,0,0

[State 240, 1]
type = PlaySnd
trigger1 = time = 0
value = 415,11
channel = 3

[State 21501, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 0,-50
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 7.5*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7.5*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = 1.5*fvar(0),1.5*fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 0,-50
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 7.5*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7.5*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = 1.5*fvar(0),1.5*fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 0,-50
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 7.5*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7.5*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = 1.5*fvar(0),1.5*fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 0,-50
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 7.5*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7.5*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = 1.5*fvar(0),1.5*fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 0,-50
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 7.5*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7.5*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = 1.5*fvar(0),1.5*fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 20415, CS]
type = changestate
trigger1 = time>5
value = 999

;-------------------------------
; 421xyz Freeze 1
[Statedef 1350]
type = U
movetype = H
physics = N
ctrl = 0
velset = 0,0
;ignorehitpause = 
;persistent =

[State 0, StateTypeSet]
type = velset
trigger1 = statetype != A
trigger2 = pos y >= 0
y = 0

[State 0, PalFX]
type = PalFX
trigger1 = 1;time = 0
time = 2
add = 0,50,240
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, ChangeAnim]
type = ChangeAnim2
trigger1 = time = 0
value = 1350

[State 1260, VA]
type = veladd
triggerall = time
trigger1 = statetype = A
trigger1 = pos y < 0
y = 0.5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = statetype != A
trigger2 = pos y >= -(vel y);0
statetype = S
physics = S

[State 1260, PS]
type = posset
trigger1 = pos y >= -(vel y);0
y = 0

[State 1260, CS]
type = changestate
triggerall = time >= 8
trigger1 = !alive
trigger2 = roundstate!=2
trigger3 = life <= 0
value = 1355

[State 1260, CS]
type = changestate
triggerall = time >= 8
;triggerall = random%2=0
trigger1 = AILevel <= 0
trigger1 = (command="fwd"&&command!="back");command = "x" || command = "y" || command = "z" 
trigger2 = AILevel <= 0
trigger2 = (command!="fwd"&&command="back");command = "a" || command = "b" || command = "c"
trigger3 = AILevel > 0
trigger3 = random <= 100.0*(AILevel**2)/64.0
value = cond(random%2=0,stateno,1351);1351

;-------------------------------
; 421xyz Freeze 2
[Statedef 1351]
type = U
movetype = H
physics = N
ctrl = 0
;velset = 0,0
;ignorehitpause = 
;persistent =

 [State 0, StateTypeSet]
type = velset
trigger1 = statetype != A
trigger2 = pos y >= 0
y = 0

[State 0, PalFX]
type = PalFX
trigger1 = 1;time = 0
time = 2
add = 0,50,240
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, ChangeAnim]
type = ChangeAnim2
trigger1 = time = 0
value = 1350

[State 1260, VA]
type = veladd
triggerall = time
trigger1 = statetype = A
trigger1 = pos y < 0
y = 0.5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = statetype != A
trigger2 = pos y >= -(vel y);0
statetype = S
physics = S

[State 1260, PS]
type = posset
trigger1 = pos y >= -(vel y);0
y = 0

[State 1260, CS]
type = changestate
triggerall = time >= 6
trigger1 = !alive
trigger2 = roundstate!=2
trigger3 = life <= 0
value = 1355

[State 1260, CS]
type = changestate
triggerall = time >= 6
trigger1 = AILevel <= 0
trigger1 = (command="fwd"&&command!="back");command = "x" || command = "y" || command = "z" 
trigger2 = AILevel <= 0
trigger2 = (command!="fwd"&&command="back");command = "a" || command = "b" || command = "c"
trigger3 = AILevel > 0
trigger3 = random <= 100.0*(AILevel**2)/64.0
value = cond(random%2=0,stateno,1352);1352

;-------------------------------
; 421xyz Freeze 3
[Statedef 1352]
type = U
movetype = H
physics = N
ctrl = 0
;velset = 0,0
;ignorehitpause = 
;persistent =

 [State 0, StateTypeSet]
type = velset
trigger1 = statetype != A
trigger2 = pos y >= 0
y = 0

[State 0, PalFX]
type = PalFX
trigger1 = 1;time = 0
time = 2
add = 0,50,240
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, ChangeAnim]
type = ChangeAnim2
trigger1 = time = 0
value = 1350

[State 1260, VA]
type = veladd
triggerall = time
trigger1 = statetype = A
trigger1 = pos y < 0
y = 0.5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = statetype != A
trigger2 = pos y >= -(vel y);0
statetype = S
physics = S

[State 1260, PS]
type = posset
trigger1 = pos y >= -(vel y);0
y = 0

[State 1260, CS]
type = changestate
triggerall = time >= 6
trigger1 = !alive
trigger2 = roundstate!=2
trigger3 = life <= 0
value = 1355

[State 1260, CS]
type = changestate
triggerall = time >= 6
trigger1 = AILevel <= 0
trigger1 = (command="fwd"&&command!="back");command = "x" || command = "y" || command = "z" 
trigger2 = AILevel <= 0
trigger2 = (command!="fwd"&&command="back");command = "a" || command = "b" || command = "c"
trigger3 = AILevel > 0
trigger3 = random <= 100.0*(AILevel**2)/64.0
value = cond(random%2=0,stateno,1353);1353

;-------------------------------
; 421xyz Freeze 4
[Statedef 1353]
type = U
movetype = H
physics = N
ctrl = 0
;velset = 0,0
;ignorehitpause = 
;persistent =

 [State 0, StateTypeSet]
type = velset
trigger1 = statetype != A
trigger2 = pos y >= 0
y = 0

[State 0, PalFX]
type = PalFX
trigger1 = 1;time = 0
time = 2
add = 0,50,240
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, ChangeAnim]
type = ChangeAnim2
trigger1 = time = 0
value = 1350

[State 1260, VA]
type = veladd
triggerall = time
trigger1 = statetype = A
trigger1 = pos y < 0
y = 0.5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = statetype != A
trigger2 = pos y >= -(vel y);0
statetype = S
physics = S

[State 1260, PS]
type = posset
trigger1 = pos y >= -(vel y);0
y = 0

[State 1260, CS]
type = changestate
triggerall = time >= 6
trigger1 = !alive
trigger2 = roundstate!=2
trigger3 = life <= 0
value = 1355

[State 1260, CS]
type = changestate
triggerall = time >= 6
trigger1 = AILevel <= 0
trigger1 = (command="fwd"&&command!="back");command = "x" || command = "y" || command = "z" 
trigger2 = AILevel <= 0
trigger2 = (command!="fwd"&&command="back");command = "a" || command = "b" || command = "c"
trigger3 = AILevel > 0
trigger3 = random <= 100.0*(AILevel**2)/64.0
value = cond(random%2=0,stateno,1354);1354

;-------------------------------
; 421xyz Freeze 5
[Statedef 1354]
type = U
movetype = H
physics = N
ctrl = 0
;velset = 0,0
;ignorehitpause = 
;persistent =

 [State 0, StateTypeSet]
type = velset
trigger1 = statetype != A
trigger2 = pos y >= 0
y = 0

[State 0, PalFX]
type = PalFX
trigger1 = 1;time = 0
time = 2
add = 0,50,240
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, ChangeAnim]
type = ChangeAnim2
trigger1 = time = 0
value = 1350

[State 1260, VA]
type = veladd
triggerall = time
trigger1 = statetype = A
trigger1 = pos y < 0
y = 0.5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = statetype != A
trigger2 = pos y >= -(vel y);0
statetype = S
physics = S

[State 1260, PS]
type = posset
trigger1 = pos y >= -(vel y);0
y = 0

[State 1260, CS]
type = changestate
triggerall = time >= 6
trigger1 = !alive
trigger2 = roundstate!=2
trigger3 = life <= 0
value = 1355

[State 1260, CS]
type = changestate
triggerall = time >= 6
trigger1 = AILevel <= 0
trigger1 = (command="fwd"&&command!="back");command = "x" || command = "y" || command = "z" 
trigger2 = AILevel <= 0
trigger2 = (command!="fwd"&&command="back");command = "a" || command = "b" || command = "c"
trigger3 = AILevel > 0
trigger3 = random <= 100.0*(AILevel**2)/64.0
value = cond(random%2=0,stateno,1355);1355

;-------------------------------
; 421xyz Freeze 6
[Statedef 1355]
type = U
movetype = H

[State 1355, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
trigger1 = pos y < 0
statetype = A
physics = N

[State 1355, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != S
trigger1 = pos y >= 0
statetype = S
physics = N

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 1
add = 0,0,0
mul = 256,256,256
invertall = 0
color = 256

[State 1265, CA]
type = changeanim
trigger1 = time = 0
value = 5000

[State 1265, CS]
type = selfstate
trigger1 = 1
value = cond(statetype=A,5020,5000)

;---------------------------------------------------------------------------
; 63214xyz - Frozen Technique
[Statedef 1400]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1400+1*(var(10)=2)+2*(var(10)>=3)
poweradd = 15
velset = 0,0
sprpriority = 1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 625,0
channel = 0

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(7)=0
name = "Freeze"
ID = 21400
stateno = 21400
pos = 60+90*(var(10)=2)+180*(var(10)>=3),-38
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 320
ignorehitpause = 1

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(9)=-1
movetype = I
persistent = 0
ignorehitpause = 1

[State 1001, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 236xyz Ice FX
[Statedef 21400]
type = A
movetype = A
physics = N
juggle = 0
anim = 21400
sprpriority = 5

[State 21400, VS]
type = varset
trigger1 = time = 0
var(10) = root,var(10)

[State 21400, PSND]
type = playsnd
trigger1 = time = 0
value = 1400,10
channel = 3

[State 21400, Explod]
type = Explod
trigger1 = time = 0
anim = 20209
ID = 20209
pos = -50-90*(var(10)=2)-180*(var(10)>=3),-28
postype = p1 ;p2,front,back,left,right
facing = 1
accel = 0,0.024
removetime = -2
pausemovetime = 0
scale = 0.75,0.75
sprpriority = 5
ownpal = 0
removeongethit = 0

[State 21400, Explod]
type = Explod
trigger1 = time = 2
anim = 20209
ID = 20209
pos = -28-60*(var(10)=2)-120*(var(10)>=3),-50
postype = p1 ;p2,front,back,left,right
facing = 1
accel = 0,0.024
removetime = -2
pausemovetime = 0
scale = 0.75,0.75
sprpriority = 5
ownpal = 0
removeongethit = 0
[State 21400, Explod]
type = Explod
trigger1 = time = 2
anim = 20209
ID = 20209
pos = -28-60*(var(10)=2)-120*(var(10)>=3),-6
postype = p1 ;p2,front,back,left,right
facing = 1
accel = 0,0.024
removetime = -2
pausemovetime = 0
scale = 0.75,0.75
sprpriority = 5
ownpal = 0
removeongethit = 0

[State 21400, Explod]
type = Explod
trigger1 = time = 4
anim = 20209
ID = 20209
pos = -6-30*(var(10)=2)-60*(var(10)>=3),-72
postype = p1 ;p2,front,back,left,right
facing = 1
accel = 0,0.024
removetime = -2
pausemovetime = 0
scale = 0.75,0.75
sprpriority = 5
ownpal = 0
removeongethit = 0
[State 21400, Explod]
type = Explod
trigger1 = time = 4
anim = 20209
ID = 20209
pos = -6-30*(var(10)=2)-60*(var(10)>=3),-28
postype = p1 ;p2,front,back,left,right
facing = 1
accel = 0,0.024
removetime = -2
pausemovetime = 0
scale = 0.75,0.75
sprpriority = 5
ownpal = 0
removeongethit = 0
[State 21400, Explod]
type = Explod
trigger1 = time = 4
anim = 20209
ID = 20209
pos = -6-30*(var(10)=2)-60*(var(10)>=3),16
postype = p1 ;p2,front,back,left,right
facing = 1
accel = 0,0.024
removetime = -2
pausemovetime = 0
scale = 0.75,0.75
sprpriority = 5
ownpal = 0
removeongethit = 0

[State 21400, Explod]
type = Explod
trigger1 = time = 6
anim = 20209
ID = 20209
pos = 16,-94
postype = p1 ;p2,front,back,left,right
facing = 1
accel = 0,0.024
removetime = -2
pausemovetime = 0
scale = 0.75,0.75
sprpriority = 5
ownpal = 0
removeongethit = 0
[State 21400, Explod]
type = Explod
trigger1 = time = 6
anim = 20209
ID = 20209
pos = 16,-50
postype = p1 ;p2,front,back,left,right
facing = 1
accel = 0,0.024
removetime = -2
pausemovetime = 0
scale = 0.75,0.75
sprpriority = 5
ownpal = 0
removeongethit = 0
[State 21400, Explod]
type = Explod
trigger1 = time = 6
anim = 20209
ID = 20209
pos = 16,-6
postype = p1 ;p2,front,back,left,right
facing = 1
accel = 0,0.024
removetime = -2
pausemovetime = 0
scale = 0.75,0.75
sprpriority = 5
ownpal = 0
removeongethit = 0
[State 21400, Explod]
type = Explod
trigger1 = time = 6
anim = 20209
ID = 20209
pos = 16,38
postype = p1 ;p2,front,back,left,right
facing = 1
accel = 0,0.024
removetime = -2
pausemovetime = 0
scale = 0.75,0.75
sprpriority = 5
ownpal = 0
removeongethit = 0

[State 21505, CS]
type = Nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 200, Freezing Shit]
type = HitDef
triggerall = !((root,var(34))&floor(exp(7*ln(2)) + 0.5))
trigger1 = !movecontact && !movereversed
attr = S,SP
damage = ceil(45*(root,fvar(11))),9
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 0,4
sparkno = -1;S8000+(random%2)
guard.sparkno = -1;S8030
sparkxy = -10,0
hitsound = s210,10
guardsound = -1;s2,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
air.hittime = 17
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -6.0
air.type = High
air.velocity = -6.0,-0.0
getpower = 60,60
givepower = 30,30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 0
p2facing = 1
ID = 1400

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(1400)
triggerall = root,var(25)=0
trigger1 = movehit
trigger1 = target,stateno != [1350,1355]
value = 1350
ID = 1400
ignorehitpause = 1
persistent = 0

[State 1211, Freeze]
type = parentvarset
trigger1 = movehit
persistent = 0
ignorehitpause = 1
var(25) = 1

[State Movehitoner (From None's Beavis)]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = (root,var(34)) | floor(exp(7*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.75*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 21401, CS]
type = changestate
trigger1 = time >= 7
value = cond(movehit,21401,999)

;--------------------------
; 236xyz Ice FX
[Statedef 21401]
type = A
movetype = I
physics = N
juggle = 0
anim = 21310
sprpriority = 5

[State 1220, VS]
type = null
trigger1 = time = 0
trigger1 = (fvar(0):=1.0)||1
trigger1 = (fvar(1):=0.6)||1

[State 1220, VS]
type = null
trigger1 = numtarget
trigger1 = (var(2):=(target,const(size.ground.front)+target,const(size.ground.back)))||1
trigger1 = (var(3):=abs(target,const(size.mid.pos.y)))||1

[State 1220, AD]
type = angledraw
trigger1 = 1
value = 0
scale = fvar(0)*var(2)/30.0,fvar(1)*var(3)/50.0
ignorehitpause = 1

[State 21302, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21302, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1220, PS]
type = posset
trigger1 = numtarget
x = floor(target,pos x)
y = floor(target,pos y)

[State 1220, TS]
type = targetstate
trigger1 = time >= cond(ishelper(24000),240,120)
trigger2 = numtarget && !ishelper(24000)
trigger2 = target,movetype = H
trigger2 = target,stateno != [1350,1355]
trigger3 = numtarget && ishelper(24000)
trigger3 = target,movetype = H
trigger3 = target,stateno != 4050
trigger3 = target,stateno != [1350,1355]
value = 1355

[State 1220, TS]
type = changestate
trigger1 = time >= cond(ishelper(24000),240,120)
trigger2 = !numtarget
trigger3 = numtarget
trigger3 = target,stateno = 1355
trigger4 = numtarget && !ishelper(24000)
trigger4 = target,movetype = H 
trigger4 = target,stateno != [1350,1355]
trigger5 = numtarget && ishelper(24000)
trigger5 = target,movetype = H 
trigger5 = target,stateno != 4050
trigger5 = target,stateno != [1350,1355]
value = 21303

;---------------------------------------------------------------------------
; GCC - Freeze Touch Me
[Statedef 1500]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1500
poweradd = 0
velset = 0,0
sprpriority = 1

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 12
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 1500,0
channel = 0

[State 1200, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 210,10

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=0
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
vel = -2.0-0.1*(random%10),2.0+0.1*(random%10)
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=0
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
vel = 2.0+0.1*(random%10),2.0+0.1*(random%10)
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=0
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
vel = -2.0-0.1*(random%10),-2.0-0.1*(random%10)
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=0
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
vel = 2.0+0.1*(random%10),-2.0-0.1*(random%10)
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State Hitdef Ground Type]
type = HitDef
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
priority = 4,Hit
damage = 90,18
getpower = 0,0
givepower = 40,40
pausetime = 10,10
sparkno = s8020+(random%2)
guard.sparkno = s8030
sparkxy = -10,-55
hitsound = S1,2
guardsound = S2,0
ground.type = High
ground.slidetime = 24+3*((var(42)>=1))
ground.hittime = 24+3*((var(42)>=1))
guard.slidetime = 21
guard.hittime = 21
air.hittime = 24
yaccel = 0.5
ground.velocity = -8.0,-6.5
guard.velocity = -8.0
air.velocity = -8.0,-6.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
id = 1500

[State 200, Damage Proration]
type = varset
trigger1 = Movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(5)=0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 1200, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Guard Cancel Counter
[Statedef 1900]
type = U
movetype = A
physics = N
velset = 0,0
;anim = 1900
poweradd = 0
ctrl = 0
sprpriority = 1
;facep2 = 1

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 30
;ignorehitpause = 
;persistent = 

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 21900;1999
stateno = 21900;1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 20;0
anim = -1
sound = S4,3
p2defmul = 1
poweradd = -1000
unhittable = 1
movetime = 20;30
darken = 0

[State 1900, CS]
type = changestate
trigger1 = time>=20
trigger1 = (var(10):=1)||1
value = 1500

;-----------------------
; Guard Cancel Use Effect
[Statedef 21900]
anim = 1999
velset = 0,0
sprpriority = 3

[State 2000, No Shadow]
type = assertspecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 1999, Angleset]
type = angleadd
trigger1 = 1
value = -10

[State 1999, Varadd]
type = varadd
trigger1 = time <= 20
var(0) = 1

[State 1999, Angledraw]
type = angledraw
trigger1 = 1
scale = 0.5+0.15*var(0),0.5+0.15*var(0)

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-ifelse(time<30,0,floor(256.0*(time-30)/40.0)),256

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 70