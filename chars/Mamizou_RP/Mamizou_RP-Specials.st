;---------------------------------------------------------------------------
; 236 Animal Lute Priest
[Statedef 1000]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1000
poweradd = 15
ctrl = 0
sprpriority = 1
facep2 = 1

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 0,0

[State 1100, Proj]
type = helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "AnimalCrackers"
ID = 21000
pos = 25,-45
postype = p1
stateno = 21000
ownpal = 1
facing = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1000, STS]
type = statetypeset
trigger1 = animelemtime(4)=1
movetype = I
ignorehitpause = 1

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; Leafy is Here
[Statedef 21000]
type = A
movetype = A
physics = N
juggle = 0
anim = 21000
sprpriority = 5

[State 21000, Varset]
type = varset
trigger1 = time = 0
var(10) = root,var(10)

[State 21000, VS]
type = velset
trigger1 = time = 0
x = 4.0

[State 21000, Air Resistance]
type = velmul
trigger1 = time
trigger1 = vel x > 0
x = 0.9

[State 21000, AS]
type = angleadd
trigger1 = time=[0,11]
value = (vel x)*2.0
ignorehitpause = 1

[State 21000,Scaleme]
type = angledraw
trigger1 = time>=0
scale = 0.5,0.5
ignorehitpause = 1

[State 21000, Ass]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 21000, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1100, Proj]
type = helper
trigger1 = time=12
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,0
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP;,AT
slot = 0
time = -1
Stateno = 21002
IgnoreHitPause = 1

[State 21000, AS]
type = angleset
trigger1 = time>=12
value = 0
ignorehitpause = 1

[State 21000, CA]
type = changeanim
trigger1 = time = 12
value = 21001

[State 21000, CS]
type = changestate
trigger1 = time>=12
value = 21001

[State 21000, CS]
type = destroyself
trigger1 = root,movetype=H
trigger1 = root,stateno!=[120,155]

;--------------------------
; Frogger on Commodore64
[Statedef 21001]
type = A
movetype = A
physics = N
juggle = 0
anim = 21001
sprpriority = 5
movehitpersist=1

[State 21000, VS]
type = velset
trigger1 = time = 0
trigger1 = prevstateno = 21000||var(0)=0
x = 1.5+1.5*(var(10)=2)+3.0*(var(10)>=3)
y = -5.0-2.5*(var(2)>0)

[State 21000, Air Resistance]
type = veladd
trigger1 = time
trigger1 = var(0)>0
y = 0.5

[State 21000,Scaleme]
type = angledraw
trigger1 = time>=0
scale = 1.0*cos(var(2)*6.0*pi/180.0),1.0
ignorehitpause = 1

[State 21000, Ass]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP;,AT
slot = 0
time = -1
Stateno = 21002
IgnoreHitPause = 1

[State 21000, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 21000, VS]
type = velset
trigger1 = var(0)
trigger1 = pos y >= 0
x = 0
y = 0

[State 21001, Trans]
type = trans
trigger1 = time>=0
trans = addalpha
alpha = 256,128
ignorehitpause = 1

[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = (root,var(34)) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, 1]
type = HitDef
triggerall = !((root,var(34))&floor(exp(1*ln(2)) + 0.5))
trigger1 = !movecontact &&! movereversed
attr = S,SP
damage = ceil(60.0*cond((root,var(50))>0,1.20,1.0)*(root,fvar(11))),ceil(12.0*cond((root,var(50))>0,1.20,1.0))
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 8,8
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -10,0
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 23
ground.hittime = 23
air.hittime = 23
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -4.0
air.type = Low
air.velocity = -4.0,-4.5
getpower = 60,60
givepower = 30,30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 1000

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit=1
fvar(10) = root,fvar(10)*0.85*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
;ignorehitpause = 1
;persistent = 0

[State 21000, CS]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <= -10
trigger3 = root,movetype=H
trigger3 = root,stateno!=[120,155]
value = 21002

[State 21000, CS]
type = changestate
trigger1 = var(1)>=cond(var(10)<=1,24,cond(var(10)=2,18,12))
trigger1 = (var(0):=0)||1
trigger1 = (var(1):=0)||1
value = 21001

[State 21000, Timer]
type = varadd
trigger1 = time>=0
var(0) = 1

[State 21000, Timer]
type = varadd
trigger1 = time>=0
trigger1 = pos y >= 0
var(1) = 1

[State 21000, Spin Timer]
type = varadd
trigger1 = time>=0
var(2) = 1

;--------------------------
; Frogger on Commodore64
[Statedef 21002]
type = A
movetype = I
physics = N
juggle = 0
;anim = 1998
velset = 0,0
sprpriority = 5
movehitpersist=1

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

[State 21000,Scaleme]
type = angledraw
trigger1 = time>=0
scale = 1.0*cos(var(2)*6.0*pi/180.0),1.0
ignorehitpause = 1

[State 21000, Ass]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 21000, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21001, Trans]
type = trans
trigger1 = time>=0
trans = addalpha
alpha = 256-floor(256.0*time/6),128+floor(128.0*time/6)
ignorehitpause = 1

[State 21002, CS]
type = changestate
trigger1 = time>=6
value = 999

;---------------------------------------------------------------------------
; Youkai Tsurube Transformation
[Statedef 1100]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1100+1*(var(10)=2)+2*(var(10)=3)
poweradd = 30*(prevstateno!=1900)
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 1

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = time=0 && prevstateno=1900
value = SCA,AA,AP,AT
time = 30
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1100, Proj]
type = helper
trigger1 = animelemtime(3)=0
helpertype = normal
name = "I_HAS_A_BUCKET"
ID = 21100
pos = 20+80*(var(10)=2)+140*(var(10)=3),-floor(screenpos y)-100
postype = p1
stateno = 21100
ownpal = 1
facing = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(4)=0
movetype = I
persistent = 0
ignorehitpause = 1

[State 1100, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; Youkai Big Ol' Bucket of KFC
[Statedef 21100]
type = A
movetype = A
physics = N
juggle = 0
anim = 21100
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = screenpos y < 0
flag = noshadow
ignorehitpause = 1

[State 21100, VS]
type = varset
trigger1 = time = 0
var(10) = root,var(10)

[State 21100, PSND]
type = playsnd
trigger1 = time = 6
value = 1200,10

[State 21100, VS]
type = varset
trigger1 = var(0) = 0
fvar(20) = -90.0

[State 21100, PA]
type = posadd
trigger1 = var(0) = 0
x = -220

[State 21100, Calculus saved me]
type = velset
trigger1 = time>=0
x = 220.0*7.5*pi*cos(fvar(20)*pi/180.0)/180.0
y = -220.0*7.5*pi*sin(fvar(20)*pi/180.0)/180.0

[State 21100, VA]
type = varadd
trigger1 = var(0)
fvar(20) = 7.5

[State 21100, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AP
slot = 0
time = -1
Stateno = 21102
IgnoreHitPause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AA,AT
time = -1
ignorehitpause = 1

[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = (root,var(34)) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, 1]
type = HitDef
triggerall = !((root,var(34))&floor(exp(2*ln(2)) + 0.5))
trigger1 = !movecontact && !movereversed
attr = S,SP
damage = ceil(90.0*cond((root,var(50))>0,1.20,1.0)*(root,fvar(11))),ceil(18.0*cond((root,var(50))>0,1.20,1.0))
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 8,8
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,0
hitsound = s1,6
guardsound = s2,0
ground.type = High
ground.slidetime = 23
ground.hittime = 23
air.hittime = 23
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -12.0,-7.5
air.type = Low
air.velocity = -12.0,-7.5
getpower = 60*(var(10)!=4),60*(var(10)!=4)
givepower = 30,30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 1100

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit=1
fvar(10) = root,fvar(10)*0.8*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
;ignorehitpause = 1
;persistent = 0

[State 220, Wallslam]
type = targetstate
trigger1 = movehit
persistent = 0
ignorehitpause = 1
id = 1100
value = 260

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

[State 21100, Zeeky]
type = changestate
trigger1 = root,movetype=H
trigger1 = root,stateno!=[120,155]
value = 21102

[State 21100, Zeeky]
type = changestate
trigger1 = var(0)>=40
value = 999

[State 21100, STS]
type = statetypeset
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent=0

[State 21100, VA]
type = varadd
trigger1 = time>=0
var(0) = 1

[State 21100, Angles]
type = AngleDraw
trigger1 = time>=0
value = fvar(20)
scale = 1.0,1.0
ignorehitpause = 1

;--------------------------
; OH SHIT THEY TRYIN 2 STEAL MAH BUCKET
[Statedef 21102]
type = A
movetype = I
physics = N
juggle = 0
anim = 21101
velset = (vel x)*0.5,(vel y)
sprpriority = 4
movehitpersist=1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = screenpos y < 0
flag = noshadow
ignorehitpause = 1

[State 1100, Proj]
type = helper
trigger1 = time=0
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,0
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 1.0
size.yscale = 1.0

[State 1205, Deplete Leaf]
type = parentvaradd
trigger1 = time = 0
trigger1 = (root,var(47))>0
trigger1 = (root,var(50))<=0
var(47) = -1

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

[State 21100, Calculus saved me]
type = veladd
trigger1 = time
y = 0.4

[State 21100, VA]
type = varadd
trigger1 = time
fvar(20) = 5.0

[State 21000, Ass]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 21000, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21001, Trans]
type = trans
trigger1 = time>=16
trans = addalpha
alpha = 256-floor(256.0*(time-16)/8.0),floor(256.0*(time-16)/8.0)
ignorehitpause = 1

[State 21002, CS]
type = changestate
trigger1 = time>=24
value = 999

[State 21000,Scaleme]
type = angledraw
trigger1 = time>=0
scale = 1.0,1.0
value = -30
ignorehitpause = 1

;---------------------------------------------------------------------------
; Utsusemi Jizo Transformation
[Statedef 1200]
type = U
movetype = A
physics = N
velset = 0,0
anim = 1200+1*(var(10)=2)+2*(var(10)>=3)
poweradd = 45
ctrl = 0
sprpriority = 1
facep2 = 0

[State 1100, Grounded]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S

[State 1100, Facep2]
type = turn
trigger1 = time = 0
trigger1 = statetype != A
trigger1 = p2dist x < 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(11)=0
value = 1200,10

[State 1200, STS]
type = statetypeset
trigger1 = animelemtime(11)=0
statetype = A
physics = N

[State 1100, Proj]
type = helper
trigger1 = animelemtime(11)=0
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,-50
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 1.0
size.yscale = 1.0

[State 1200, PA]
type = posadd
trigger1 = animelemtime(11)=0
x = 40+120*(var(10)=2)+240*(var(10)>=3)
y = -100-30*(var(10)=2)-60*(var(10)>=3)

[State 1100, Proj]
type = helper
trigger1 = animelemtime(11)=0
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,-50
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 1.0
size.yscale = 1.0

[State 1200, VS]
type = velset
trigger1 = animelemtime(11)=0
y = 6.0

[State 240, 4]
type = ChangeState
trigger1 = animelemtime(11)=0
value = 1201
ctrl = 0

;---------------------------------------------------------------------------
; Utsusemi Jizo Transformation
[Statedef 1201]
type = A
movetype = A
physics = N
poweradd = 0
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 0
movehitpersist = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = var(47)>0
trigger1 = prevstateno!=1205
attr = SCA,AA,AP
slot = 0
stateno = 1205
time = 1
ignorehitpause = 1

[State 1201, VA]
type = veladd
trigger1 = time
y = 0.5

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1201, Damage Set]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (var(11):=100)||1
trigger1 = (var(12):=20)||1
trigger2 = var(10)=2
trigger2 = (var(11):=115)||1
trigger2 = (var(12):=23)||1
trigger3 = var(10)>=3
trigger3 = (var(11):=130)||1
trigger3 = (var(12):=26)||1



[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(3*ln(2)) + 0.5)),0,1)
trigger1 = !movecontact && !movereversed
attr = A,SA
damage = ceil(var(11)*cond(var(50)>0,1.20,1.0)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*cond(var(50)>0,1.20,1.0))
animtype = Heavy
guardflag = HA
hitflag = MAFD
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -15,-10
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 24+3*(var(10)>=3)+3*(var(42))
ground.hittime = 24+3*(var(10)>=3)+3*(var(42))
air.hittime = 24+3*(var(10)>=3)+3*(var(42))
guard.slidetime = 21+3*(var(10)>=3)
guard.hittime = 21+3*(var(10)>=3)
ground.velocity = -2.0*cond(p2dist x<0,-1,1),-6.5
air.type = Low
air.velocity = -2.0*cond(p2dist x<0,-1,1),-6.5
getpower = 80,80
givepower = 40,40
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 1200

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.75*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit=1 && (p2stateno!=[6020,6110])
value = 6020
ID = 1200
ignorehitpause = 1

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -(vel y)
value = 1202
ctrl = 0

;---------------------------------------------------------------------------
; Utsusemi Jizo Land
[Statedef 1202]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1205
poweradd = 0
ctrl = 0
sprpriority = 1
facep2 = 0
movehitpersist = 1

[State 1202, PS]
type = posset
trigger1 = time = 0
y = 0

[State 20626, PSND]
type = playsnd
trigger1 = time = 0
value = 625,10

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 8
freq = 60
ampl = -4

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(3*ln(2)) + 0.5)),0,1)
trigger1 = animelemtime(1)>=0 && animelemtime(2)<0
trigger1 = !movecontact && !movereversed
attr = S,SA
damage = ceil(90.0*fvar(11)*cond(var(50)>0,1.20,1.0)*ifelse(var(42),1.25,1.0)),ceil(18.0*cond(var(50)>0,1.20,1.0))
animtype = Heavy
guardflag = M
hitflag = MAFD
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -15,0
hitsound = s1,2
guardsound = s2,0
ground.type = Low
ground.slidetime = 25+3*(var(42))
ground.hittime = 25+3*(var(42))
air.hittime = 25+3*(var(42))
guard.slidetime = 22
guard.hittime = 22
ground.velocity = -2.0*cond(p2dist x<0,-1,1),-6.5
air.type = Low
air.velocity = -2.0*cond(p2dist x<0,-1,1),-6.5
down.velocity = -2.0*cond(p2dist x<0,-1,1),0.0
getpower = 80,80
givepower = 40,40
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 1201

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit=1 && (p2stateno!=[6020,6110])
value = 6020
ID = 1201
ignorehitpause = 1

[State 1100, Proj]
type = helper
trigger1 = animelemtime(3)=0
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,-50
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 1.0
size.yscale = 1.0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = numtarget(1201)
fvar(10) = fvar(10)*0.75*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(2)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Utsusemi Jizo Armor
[Statedef 1205]
type = U
movetype = H
physics = N
ctrl = 0
sprpriority = 1
movehitpersist=1
hitdefpersist=1

[State 1205, Deplete Leaf]
type = varadd
trigger1 = time = 0
trigger1 = var(47)>0
trigger1 = (var(50))<=0
var(47) = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 1100,12
channel = 6

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.6 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))

[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = anim
elem = animelemno(-1)
ignorehitpause = 1 
;persistent = 

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
ignorehitpause = 1
;persistent = 

[State 1201, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1
ignorehitpause = 1

[State 1105, CS]
type = changestate
trigger1 = alive=0 || var(47)=0
value = cond(statetype=A,5020,5000)
ignorehitpause = 1

[State 1105, CS]
type = changestate
trigger1 = time
trigger1 = gethitvar(hitshaketime)=0
value = 1201
ignorehitpause = 1

;---------------------------------------------------------------------------
; Youkai Amikiri Transformation
[Statedef 1300]
type = U
movetype = A
physics = N
velset = 0,0
anim = cond(prevstateno=1900,1305,1300+1*(var(10)=2)+2*(var(10)>=3))+0*floor(var(16):=1300)
poweradd = 45*(prevstateno!=1900)
ctrl = 0
sprpriority = 2
juggle = 0
facep2 = 0

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = time=0 && prevstateno=1900
value = SCA,AA,AP,AT
time = 30
ignorehitpause = 1

[State 1300, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S

[State 1300, Facep2]
type = turn
trigger1 = time = 0
trigger1 = statetype != A 
trigger1 = p2dist x < 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 1300,10

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 1300,11

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(7)=0
helpertype = normal
name = "Krabpeepol" ;Taste leik crab, talks like people
ID = 21300
postype = p1
stateno = 21300
ownpal = 1
facing = 1
size.xscale = 0.75
size.yscale = 0.75

[State 1300, Proj Inv]
type = nothitby
trigger1 = animelemtime(7)>=0
value = ,AP
ignorehitpause = 1

[State 1300, STS]
type = statetypeset
trigger1 = animelemtime(7)=0
statetype = A
physics = N
ignorehitpause = 1

[State 1300, VS]
type = velset
trigger1 = animelemtime(7)=0
x = 4.5+2.0*(var(10)=2)+4.0*(var(10)>=3)
y = -5.0-0.5*(var(10)=2)-1.0*(var(10)>=3)

[State 1300, VS]
type = veladd
trigger1 = animelemtime(7)>0
y = 0.35

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(5*ln(2)) + 0.5)),0,1)
trigger1 = animelemtime(7)>=0
trigger1 = !movecontact && !movereversed
attr = S,SA
damage = ceil((90.0+20*(var(10)=2)+40*(var(10)>=3))*fvar(11)*cond(var(50)>0,1.20,1.0)),ceil((18.0+4*(var(10)=2)+8*(var(10)>=3))*cond(var(50)>0,1.20,1.0))
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -15,-30
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 27+3*(var(42))
ground.hittime = 27+3*(var(42))
air.hittime = 27+3*(var(42))
guard.slidetime = 24
guard.hittime = 24
ground.velocity = -8.0,-8.0
air.type = Low
air.velocity = -8.0,-8.0
getpower = 80*(prevstateno!=1900),80*(prevstateno!=1900)
givepower = 40,40
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 1300

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 52, 5]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1301
ctrl = 0

;---------------------------------------------------------------------------
; Aerial Down Strong Attack
[Statedef 1301]
type = S
movetype = I
physics = S
ctrl = 0
anim = 626
sprpriority = 1
velset = 0,0
movehitpersist = 1
facep2 = 0

[State 626, PS]
type = posset
trigger1 = time = 0
y = 0

[State 226, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 63214 Amikiri
[Statedef 21300]
type = A
movetype = I
physics = N
juggle = 0
anim = 21300
sprpriority = 1

[State 21300, VS]
type = varset
trigger1 = time=0
trigger1 = (root,anim=1305)&&(root,stateno=1300)
var(10)=1

[State 621, CA]
type = changeanim
trigger1 = root,stateno = 1300
trigger1 = root,hitpausetime
trigger1 = var(0)=0
value = anim
elem = animelemno(-1)

[State 21300, Counter]
type = varset
triggerall = root,stateno = 1300
trigger1 = root,animelemtime(8)>=0
trigger1 = root,vel y > 0
var(1) = 1
persistent = 0

[State 21100, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 21100, BTR]
type = BindToroot
trigger1 = root,stateno = 1300
pos = 10,-35

[State 1100, Proj]
type = helper
trigger1 = time=0
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,0
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 1.5;0
size.yscale = 1.5

[State 21100, Angles]
type = AngleDraw
trigger1 = time>=0
value = 30*cond(var(1)=1,-1,1)
scale = 1.0,1.0
ignorehitpause = 1

[State 21100, Zeeky]
type = changestate
trigger1 = root,stateno!=1300
value = 21301

[State 21300, Counter]
type = varadd
trigger1 = time>=0
var(0) = 1

;--------------------------
; 63214 Amikiri
[Statedef 21301]
type = A
movetype = I
physics = N
juggle = 0
velset = 0,0
anim = 1998
sprpriority = 1

[State 1100, Proj]
type = helper
trigger1 = time=0
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,0
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 1.5;0
size.yscale = 1.5;0

[State 21301, PVA]
; Deplete a leaf if Mamizou fucks up a combo and gets hit while riding.
type = parentvaradd
triggerall = var(10)!=0 ;Only if not used as GC.
trigger1 = time = 0
trigger1 = root,movetype = H
trigger1 = root,var(47)>0
trigger1 = (root,var(50))<=0
var(47) = -1
persistent = 0

[State 21100, Zeeky]
type = destroyself
trigger1 = time>=16

;---------------------------------------------------------------------------
; Youkai Karakasa Transformation
[Statedef 1400]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1400+0*floor(cond(var(57)=4,var(57):=0,1))
poweradd = 15
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(4*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1100, Proj]
type = helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "Umbrella Youkai"
ID = 21400
pos = 60+70*(var(10)=2)+160*(var(10)>=3),0
postype = p1
stateno = 21400
ownpal = 1
facing = 1

[State 1100, Flag Recovery]
type = statetypeset
trigger1= animelemtime(4)=1
movetype = I
ignorehitpause = 1
persistent = 0

[State 1100, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; Kogasa is that you?
[Statedef 21400]
type = A
movetype = A
physics = N
juggle = 0
anim = 21400
sprpriority = 4

[State 21000, VS]
type = velset
trigger1 = time = 0
x = 2.5;4.0
y = -10.0

[State 2000, PSND]
type = playsnd
trigger1 = time=0
value = 2000,10
channel = 1
[State 2000, PSND]
type = playsnd
trigger1 = time=0
value = 0,1
channel = 2

[State 21000,Scaleme]
type = angledraw
trigger1 = time>=0
scale = 0.5,0.5
ignorehitpause = 1

[State 21000, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1100, Proj]
type = helper
trigger1 = time=0
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,0
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP
slot = 0
time = -1
Stateno = 21402
IgnoreHitPause = 1

[State 21000, CS]
type = changestate
trigger1 = 1
value = 21401

;--------------------------
; I guess not
[Statedef 21401]
type = A
movetype = A
physics = N
juggle = 0
sprpriority = 4
movehitpersist=1

[State 21000, Air Resistance]
type = veladd
trigger1 = time
y = 0.5;-0.125*animelemtime(3)>=0

[State 21000,Scaleme]
type = angledraw
trigger1 = time>=0
scale = 0.5,0.5
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP
slot = 0
time = -1
Stateno = 21403
IgnoreHitPause = 1

[State 21000, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 21001, Trans]
type = trans
trigger1 = time>=0
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = (root,var(34)) | floor(exp(4*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 0, MoveHitReset]
type = MoveHitReset
trigger1 = animelemtime(4)=0
persistent = 0

[State 200, 1]
type = HitDef
triggerall = !((root,var(34))&floor(exp(4*ln(2)) + 0.5))
triggerall = !movecontact && !movereversed
trigger1 = animelemno(0)=1||animelemno(0)=4
attr = S,SP
damage = ceil(cond(animelemno(0)=4,40,35)*cond((root,var(50))>0,1.25,1.0)*(root,fvar(11)/cond(root,var(57)=4,(root,fvar(30)),1))),ceil(7.0*cond((root,var(50))>0,1.25,1.0));70,14
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 6,6
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -10,0
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -2.5,cond(animelemno(0)=4,-9.0,0)
guard.velocity = -2.5
air.type = Low
air.velocity = -2.5,cond(animelemno(0)=4,-9.0,-4.5)
airguard.velocity = -2.5,-4.5
getpower = cond(animelemno(0)=4,20,40),cond(animelemno(0)=4,20,40);40-20*(var(10)>=3),40-20*(var(10)>=3)
givepower = cond(animelemno(0)=4,10,20),cond(animelemno(0)=4,10,20);20-10*(var(10)>=3),20-10*(var(10)>=3)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = cond(animelemno(0)=4,1,0)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 1400

[State 220, First Combo Hit]
type = parentvarset
triggerall = numtarget(1400) && movehit
trigger1 = target(1400),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 4;Change index
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = parentvarset
trigger1 = animelemtime(1)>=0 && animelemtime(2)<1
trigger1 = movehit;=1
fvar(10) = root,fvar(10)*0.92*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = animelemtime(4)>=0 && animelemtime(5)<1
trigger1 = movehit;=1
fvar(10) = root,fvar(10)*0.92*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 21000, CS]
type = changestate
trigger1 = animelemno(0)=4
trigger1 = movecontact||movereversed
trigger2 = frontedgedist <= -10
trigger3 = animelemtime(5)>=0
value = 21402

[State 21000, Timer]
type = varadd
trigger1 = time>=0
var(0) = 1

;--------------------------
; Oh well, Kogasa_RP not confirmed
[Statedef 21402]
type = A
movetype = I
physics = N
juggle = 0
sprpriority = 5
movehitpersist=1

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

[State 21000,Scaleme]
type = angledraw
trigger1 = time
scale = 0.5,0.5
ignorehitpause = 1

[State 21000, Air Resistance]
type = velmul
trigger1 = animelemtime(3)>0
x = 0.95

[State 21000, Air Resistance]
type = veladd
trigger1 = time
y = cond(animelemtime(3)>=0,0.25,0.5);0.25;-0.125*

[State 21000, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21001, Trans]
type = trans
trigger1 = animelemtime(5)>=0
trans = addalpha
alpha = 256-floor(256.0*animelemtime(5)/30.0),floor(256.0*animelemtime(5)/30)
ignorehitpause = 1

[State 21002, CS]
type = changestate
trigger1 = animelemtime(5)>=30
value = 999

;--------------------------
; Oh well, Kogasa_RP not confirmed
[Statedef 21403]
type = A
movetype = I
physics = N
juggle = 0
sprpriority = 5
movehitpersist=1

[State 1205, Deplete Leaf]
type = parentvaradd
trigger1 = time = 0
trigger1 = (root,var(47))>0
trigger1 = (root,var(50))<=0
var(47) = -1

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

[State 21000,Scaleme]
type = angledraw
trigger1 = time >= 0
scale = 0.5,0.5
ignorehitpause = 1

[State 21000, Air Resistance]
type = velmul
trigger1 = animelemtime(3)>0
x = 0.95
[State 21000, Air Resistance]
type = veladd
trigger1 = time >= 0
y = cond(animelemtime(3)>=0,0.25,0.5);0.25;-0.125*

[State 21000, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21001, Trans]
type = trans
trigger1 = animelemtime(4)>=0
trans = addalpha
alpha = 256-floor(256.0*animelemtime(4)/30.0),floor(256.0*animelemtime(4)/30)
ignorehitpause = 1

[State 21002, CS]
type = changestate
trigger1 = animelemtime(4)>=30
value = 999

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
trigger1 = time=0
value = SCA,AA,AP,AT
time = 40
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
trigger1 = (var(46):=1)||1
value = 1300

;-----------------------
; Guard Cancel Use Effect
[Statedef 21900]
anim = 1999
velset = 0,0
sprpriority = 3

[State 1999, NoShadow]
type = AssertSpecial
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