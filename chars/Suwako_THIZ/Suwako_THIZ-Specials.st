;---------------------------------------------------------------------------
; 236p: Stone Frog God
[Statedef 1000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1000+1*(var(10)=2)+2*(var(10)>=3)+5*(prevstateno=1801||prevstateno=1820)
poweradd = ceil(30.0*fvar(11))
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1XXX, Special Counter]
type = varadd
trigger1 = time = 0
var(3) = 1
persistent = 0
ignorehitpause = 1

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=60)||1 ;Base: 35
trigger1 = (var(12):=6)||1

[State 1300, Damage Calc]
type = null
triggerall = hitcount>0
trigger1 = (var(11):=14)||1 ;Base: 35
trigger1 = (var(12):=6)||1
persistent=0

[State 1300, Damage Calc]
type = null
triggerall = hitcount>1
trigger1 = (var(11):=14)||1 ;Base: 35
trigger1 = (var(12):=6)||1
persistent=0


[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 1000,10

[State 1000, VelSet]
type = velset
trigger1 = animelemtime(3)>=0 && animelemtime(11)<0
x = 4.0+2.0*(var(10)=2)+4.0*(var(10)>=3)

[State 1000, Width]
type = width
trigger1 = animelemtime(4)>=0 && animelemtime(18)<0
value = 35,0
ignorehitpause = 1

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(2)=0
helpertype = normal
name = "Frog"
ID = 21000
pos = 0,0
postype = p1
stateno = 21000
ownpal = 1
facing = 1

[State 1300, Debris]
type = Helper
trigger1 = animelemtime(2)>=0 && animelemtime(12)<0
trigger1 = numhelper(21010)<10
persistent = 4
name = "Debris"
stateno = 21010;1310
id = 21010;1310
pos = 0,0
ownpal = 0
ignorehitpause = 1

[State 1000, MHR]
type = movehitreset
trigger1 = animelemtime(8)=0||animelemtime(10)=0

[State 1200, Hitdef]
type = HitDef
triggerall = movecontact = 0 && movereversed=0
trigger1 = animelemno(0)=6||animelemno(0)=8||animelemno(0)=10
attr = S,SA
animtype = Back
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
priority = 4,hit
hitflag = MAFD
guardflag = MA
pausetime = 8,8
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-40
hitsound   = s1,11
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=29+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.velocity = -3.0,-3.0
air.velocity = -3.0,-3.0
down.velocity = -3.0,-3.0
getpower = ceil(var(11)*1.6*fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)),ceil(var(11)*0.2)
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=29+20+3*(var(42)!=0)+var(34))<=1,1,var(32))+8;hitstun+pausetime value
p2facing = 1
id = 1000

[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemno(0)=[6,7]
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemno(0)=[8,9]
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemno(0)>=10
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
triggerall = animelemno(0)=[6,7]
trigger1 = movehit
fvar(10) = fvar(10)*0.928
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
triggerall = animelemno(0)=[8,9]
trigger1 = movehit
fvar(10) = fvar(10)*0.928
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
triggerall = animelemno(0)>=10
trigger1 = movehit
fvar(10) = fvar(10)*0.928
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(11)=0
trigger2 = animelemtime(10)>=0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 1000, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------
; Stone Frog
[Statedef 21000]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21000
sprpriority = 4
; Variable Usage
;----------------
; Var(0) - Timer

[State 21000, BTR]
type = bindtoroot
trigger1 = root,stateno=1000
pos = 0,0

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1210, Activate]
type = ChangeState
trigger1 = root,stateno!=1000
trigger2 = root,stateno=1000
trigger2 = root,animelemtime(18)>=0
value = 21001


;-----------------------------
; Stone Frog
[Statedef 21001]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21001
sprpriority = 4

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/25.0),floor(256.0*time/25.0)
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1210, Activate]
type = Destroyself
trigger1 = animtime=0

;--------------------------
; Stone Frog Debris
[Statedef 21010]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
anim = 21010+floor(6.0*random/1000.0)
sprpriority = 5

[State 21510, VS]
type = null
trigger1 = time = 0
trigger1 = (var(0):=30+floor(41.0*random/1000.0))||1
trigger1 = (var(1):=10+floor(6.0*random/1000.0))||1
trigger1 = (var(2):=0+floor(360.0*random/1000.0))||1

[State 21510, VA]
type = varadd
trigger1 = time
var(2) = 3

[State 21510, VS]
type = velset
trigger1 = time = 0
x = var(1)*0.1*(IfElse((Random%2=1),-1,1))
y = -(var(0))*0.1

[State 21510, Grav]
type = VelAdd
Trigger1 = 1
y = 0.5


[State 21510, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21510, Trans]
type = trans
trigger1 = time >= 10
trans = addalpha
alpha = 256-floor(256.0*(time-10)/20.0),floor(256.0*(time-10)/20.0)
ignorehitpause = 1

[State 21510, Zeeky]
type = destroyself
trigger1 = animtime = 0

[State 2517, AngleDraw]
type = AngleDraw
trigger1 = 1
value = Var(2)
scale = 0.35,0.35

;---------------------------------------------------------------------------
; j236p: Ancient Iron Ring
[Statedef 1100]
type    = A
movetype= A
physics = N
;velset = 0,0
anim = 1100+1*(var(10)=2)+2*(var(10)>=3)
poweradd = ceil(30.0*fvar(11))
ctrl = 0
sprpriority = 1
facep2 = 0
juggle = 0

[State 1XXX, Special Counter]
type = varadd
trigger1 = time = 0
var(3) = 1
persistent = 0
ignorehitpause = 1

[State 1100, VelM]
type = velmul
trigger1 = time = 0
x = 0.1
y = 0.1

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (var(11):=25)||1
trigger1 = (var(12):=4)||1
trigger2 = var(10)=2
trigger2 = (var(11):=22)||1
trigger2 = (var(12):=4)||1
trigger3 = var(10)>=3
trigger3 = (var(11):=21)||1
trigger3 = (var(12):=4)||1


[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(7)=0
helpertype = normal
name = "Ring"
ID = 21100
pos = 24,-82
postype = p1
stateno = 21100
ownpal = 1
facing = 1

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(6)>=0 && animelemtime(18)<0
trigger1 = animelemtime(6)%8=4
value = 1100,10
channel = 7

[State 1100, VS]
type = velset
trigger1 = animelemtime(7)=0
x = 3.0+1.0*(var(10)=2)+2.0*(var(10)>=3)
y = 0.0

;=============
; HITDEF INFO
;=============
[State 1000, MHR]
type = movehitreset
trigger1 = animelemtime(11)=0||animelemtime(15)=0
trigger2 = var(10)>=2
trigger2 = animelemtime(9)=0
trigger3 = var(10)>=3
trigger3 = animelemtime(13)=0

[State 1200, Hitdef]
type = HitDef
triggerall = movecontact = 0 && movereversed=0
trigger1 = animelemno(0)=7||animelemno(0)=11||animelemno(0)=15
trigger2 = var(10)>=2
trigger2 = animelemno(0)=9
trigger3 = var(10)>=3
trigger3 = animelemno(0)=13
attr = A,SA
animtype = Back
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
priority = 4,hit
hitflag = MAF
guardflag = HA
pausetime = 6,6
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-60
hitsound   = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = cond((var(32):=22+20*(var(10)>=2)+3*(var(42)!=0)+var(34))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=22+20*(var(10)>=2)+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=24+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.velocity = -0.0,-4.5
guard.velocity = -12.5
air.velocity = -0.0,-4.5
airguard.velocity = -2.5,-2.5
getpower = ceil(var(11)*1.6*fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)),ceil(var(11)*0.2)
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=24+20+3*(var(42)!=0)+var(34))<=1,1,var(32))+6;hitstun+pausetime value
p2facing = 1
id = 1000

[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemno(0)=[7,8]
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = var(10)>=2
triggerall = animelemno(0)=[9,10]
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemno(0)=[11,12]
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = var(10)>=3
triggerall = animelemno(0)=[13,14]
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemno(0)>=15
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
triggerall = animelemno(0)=[7,8]
trigger1 = movehit
fvar(10) = fvar(10)*0.928
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
triggerall = var(10)>=2
triggerall = animelemno(0)=[9,10]
trigger1 = movehit
fvar(10) = fvar(10)*0.928
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
triggerall = animelemno(0)=[11,12]
trigger1 = movehit
fvar(10) = fvar(10)*0.928
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
triggerall = var(10)>=3
triggerall = animelemno(0)=[13,14]
trigger1 = movehit
fvar(10) = fvar(10)*0.928
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
triggerall = animelemno(0)>=15
trigger1 = movehit
fvar(10) = fvar(10)*0.928
ignorehitpause = 1
persistent = 0

;==============
; /HITDEF INFO
;==============

[State 1100, VS]
type = veladd
trigger1 = animelemtime(18)>=0
y = 0.5

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(16)=0
trigger2 = animelemtime(15)>=0
trigger2 = movecontact||movereversed
movetype = I
persistent=0
ignorehitpause = 1

[State 1000, CS]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1101
ctrl = 0

;---------------------------------------------------------------------------
; j236p: Ancient Iron Ring Landing
[Statedef 1101]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 627
velset = 0,0
movehitpersist=1
facep2 = 0

[State -3, Landing Sound]
type = PlaySnd
trigger1 = time=0
value = s40, 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
; Metal Ring FX
[Statedef 21100]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21100
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer

[State 21000, Pause Anim]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno(-1)

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=1100
time = 1
facing = 1
pos = 24,-82
ignorehitpause = 1

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1210, Activate]
type = Destroyself
trigger1 = root,stateno!=1100
trigger2 = root,stateno=1100
trigger2 = root,animelemtime(18)>=0

[State 21100, AD]
type = angledraw
trigger1 = 1
value = -29
scale = 0.5,0.195
ignorehitpause = 1


;---------------------------------------------------------------------------
; 623p: Toad God
[Statedef 1200]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1200+1*(var(10)=2)+2*(var(10)>=3)
poweradd = ceil(45.0*fvar(11))*(prevstateno!=1900)
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1XXX, Special Counter]
type = varadd
trigger1 = time = 0
var(3) = 1
persistent = 0
ignorehitpause = 1

[State 1300, Damage Calc]
type = null
triggerall = (prevstateno!=1900)
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (var(11):=27)||1
trigger1 = (var(12):=4)||1
trigger2 = var(10)=2
trigger2 = (var(11):=30)||1
trigger2 = (var(12):=4)||1
trigger3 = var(10)>=3
trigger3 = (var(11):=35)||1
trigger3 = (var(12):=4)||1

[State 1300, Damage Calc]
type = null
triggerall = (prevstateno=1900)
triggerall = time = 0
trigger1 = (var(11):=0)||1
trigger1 = (var(12):=0)||1

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 1200,10

[State 1010, Effect]
type =helper
trigger1 = !ishelper
trigger1 = animelemtime(6)=0
helpertype = normal
name = "Outline"
ID = 21200
pos = 0,0
postype = p1
stateno = 21200
ownpal = 1
facing = 1

[State 1000, MHR]
type = movehitreset
trigger1 = animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0

[State 1200, Hitdef]
type = HitDef
triggerall = movecontact = 0 && movereversed=0
trigger1 = animelemno(0)=7||animelemno(0)=9||animelemno(0)=11||animelemno(0)=13
attr = S,SA
animtype = Back
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
priority = 4,hit
hitflag = MAF
guardflag = MA
pausetime = 0,6
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-40
hitsound   = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=29+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.velocity = -2.0-10.0*(animelemtime(13)>=0),-2.0-6.5*(animelemtime(13)>=0)
air.velocity = -2.0-10.0*(animelemtime(13)>=0),-2.0-6.5*(animelemtime(13)>=0)
down.velocity = -2.0-10.0*(animelemtime(13)>=0),-2.0-6.5*(animelemtime(13)>=0)
getpower = ceil(var(11)*1.6*fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)),ceil(var(11)*0.2)
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=29+20+3*(var(42)!=0)+var(34))<=1,1,var(32))+6;hitstun+pausetime value
p2facing = 1
id = 1200
p2stateno = cond(var(15)=0&&animelemno(0)=13&&sysvar(4)=0,260,-1)
p2getp1state = cond(var(15)=0&&animelemno(0)=13&&sysvar(4)=0,1,0)

[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemno(0)=[7,8]
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemno(0)=[9,10]
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemno(0)=[11,12]
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = animelemno(0)>=13
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State -2, Groundbounce]
type = varset
trigger1 = movehit
trigger1 = animelemtime(13)>=0
trigger1 = numtarget(1200)
trigger1 = var(15)=0
var(15)=1
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
triggerall = animelemno(0)=[7,8]
trigger1 = movehit
fvar(10) = fvar(10)*0.946
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
triggerall = animelemno(0)=[9,10]
trigger1 = movehit
fvar(10) = fvar(10)*0.946
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
triggerall = animelemno(0)=[11,12]
trigger1 = movehit
fvar(10) = fvar(10)*0.946
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
triggerall = animelemno(0)>=13
trigger1 = movehit
fvar(10) = fvar(10)*0.946
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(14)>=0
trigger2 = animelemtime(13)>=0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 1000, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;--------------------------
; 623p Toad God FX
[Statedef 21200]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 21200
sprpriority = 5

[State 21200, CVS]
type = varset
trigger1 = time = 0
var(10) = root,var(10)

[State 21200, CVS]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (fvar(0):=0.75)||1
trigger2 = var(10)=2
trigger2 = (fvar(0):=0.85)||1
trigger3 = var(10)>=3
trigger3 = (fvar(0):=0.95)||1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=1200
pos = 0,0
ignorehitpause = 1

[State 1310, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1210, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1210, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AP,AT
ignorehitpause = 1

[State 21501, Zeeky]
type = destroyself
trigger1 = root,stateno = 1200
trigger1 = root,time<=1
trigger2 = root,movetype=H
trigger2 = root,stateno!=[120,155]
trigger3 = root,stateno!=1200

[State 1310, Detonate]
type = ChangeState
trigger1 = root,stateno=1200
trigger1 = root,animelemtime(15)>=0
value = 21201

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(0),fvar(0)
ignorehitpause = 1

;--------------------------
; 623p Toad God FX
[Statedef 21201]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
anim = 21201
sprpriority = 5

[State 21501, PS]
type = posset
trigger1 = time = 0
y = 0

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=1200
pos = 0,0
ignorehitpause = 1

[State 1310, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1210, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21501, Zeeky]
type = destroyself
trigger1 = animtime = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(0),fvar(0)
ignorehitpause = 1

;---------------------------------------------------------------------------
; 22p: Blighted Earth
[Statedef 1300]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1300+1*(var(10)=2)+2*(var(10)>=3)
poweradd = 0;ceil(20.0*fvar(11))
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1XXX, Special Counter]
type = varadd
trigger1 = time = 0
var(3) = 1
persistent = 0
ignorehitpause = 1

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(9)=0
value = 1200,10

[State 1010, Effect]
type = helper
trigger1 = !ishelper
trigger1 = animelemtime(9)=0
helpertype = normal
name = "Mist"
ID = 21300
pos = 0,0
postype = p1
stateno = 21300
ownpal = 1
facing = 1

[State 1000, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 22p Blighted Earth Mist
[Statedef 21300]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 1998;21300
sprpriority = 5

[State 1310, VS]
type = varset
trigger1 = time = 0
var(10) = root,var(10)

[State 21300, CVS]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (fvar(0):=1.2)||1
trigger2 = var(10)=2
trigger2 = (fvar(0):=0.9)||1
trigger3 = var(10)>=3
trigger3 = (fvar(0):=0.6)||1

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 0, Projectile]
type = Projectile
trigger1 = numenemy
;trigger1 = time = 0
trigger1 = p2dist x = [-floor(120*fvar(0)),floor(120*fvar(0))]
trigger1 = p2dist y = [-20,999]
ProjID = 99990008+2*(var(10)=2)+4*(var(10)>=3);Poison
projanim = 1998
projscale = 1,1
projremove = 1
projremovetime = 1
velmul = 1
projhits = 1
projpriority = 1
projsprpriority = 3
offset = 0,0
postype = p1         ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0

[State 0, Explod]
type = Explod
trigger1 = time%50=0
anim = 21300
ID = 21300
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1.0*fvar(0),0.75;*fvar(0)
sprpriority = 5
ownpal = 0
removeongethit = 1
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = -1
;add = -256*(var(10)=2),-256*(var(10)<=1),-256*(var(10)>=3)
mul = 256,256,256
color = 0
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1210, Activate]
type = ChangeState
trigger1 = time>=300
trigger2 = root,movetype=H
trigger2 = root,stateno!=[120,155]
trigger3 = root,alive=0
value = 21301

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(0),fvar(0)

[State 21300, Timer]
type = varadd
trigger1 = 1
var(0) = 1

[State 21300, Timer]
type = varadd
trigger1 = var(0)>=50
var(0) = -50

;--------------------------
; 22p Blighted Earth Mist
[Statedef 21301]
type    = A
movetype= I
physics = N
sprpriority = 5

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = -1
;add = -256*(var(10)=2),-256*(var(10)<=1),-256*(var(10)>=3)
mul = 256,256,256
color = 0
ignorehitpause = 1

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21100, CS]
type = destroyself
trigger1 = var(0)>=83

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(0),fvar(0)

[State 21300, Timer]
type = varadd
trigger1 = 1
var(0) = 1


;---------------------------------------------------------------------------
; 214p: Ancient Geyser
[Statedef 1400]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1400+1*(var(10)=2)+2*(var(10)>=3)+5*(prevstateno=1801||prevstateno=1820)
poweradd = ceil(20.0*fvar(11))
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1XXX, Special Counter]
type = varadd
trigger1 = time = 0
var(3) = 1
persistent = 0
ignorehitpause = 1

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 1400,10

[State 1400, STS]
type = statetypeset
trigger1 = animelemtime(6)=0
statetype=A
physics=N

[State 1400, VS]
type = velset
trigger1 = animelemtime(6)=0
y = -8.0

[State 1400, VS]
type = veladd
trigger1 = animelemtime(8)>=0
y = 0.5

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(6)=0
helpertype = normal
name = "Geyser"
ID = 21400
pos = 0,0
postype = p1
stateno = 21400
ownpal = 1
facing = 1

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(6)=0
helpertype = normal
name = "Geyser"
ID = 21401
pos = 0,0
postype = p1
stateno = 21400
ownpal = 1
facing = 1

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(6)=0
trigger2 = animelemtime(6)=6
trigger3 = animelemtime(6)=12
trigger4 = var(10)>=2
trigger4 = animelemtime(6)=18
trigger5 = var(10)>=3
trigger5 = animelemtime(6)=24
helpertype = normal
name = "Geyser Proj"
ID = 21410
pos = 0,0
postype = p1
stateno = 21410
ownpal = 1
facing = 1

[State 1400, VS]
type = statetypeset
trigger1 = animelemtime(8)>=0
movetype = I
ignorehitpause = 1
persistent=0

[State 1000, CS]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1101
ctrl = 0

;---------------------------------------------------------------------------
; 214p: Ancient Geyser Landing
[Statedef 1401]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 627
velset = 0,0
movehitpersist=1
facep2 = 0

[State -3, Landing Sound]
type = PlaySnd
trigger1 = time=0
value = s40, 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
; 214p Ancient Geyser FX
[Statedef 21400]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21400
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ishelper(21400)
trigger1 = root,stateno=1400
pos = 0,0
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ishelper(21401)
trigger1 = root,stateno=1400
pos = 0,-floor(root,pos y)
ignorehitpause = 1

[State 0, BindToRoot]
type = posset
trigger1 = ishelper(21401)
trigger1 = root,stateno=1400
y = 0
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = ishelper(21400)
trigger1 = numexplod(21400)=0
anim = 21401
ID = 21400
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1.0,1.0
sprpriority = 4
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = ishelper(21400)
ID = 21400
scale = 1.0,abs(pos y)/32.0
ignorehitpause = 1

[State 21000, CS]
type = removeexplod
trigger1 = root,stateno!=1400
id = 21400

[State 21000, CS]
type = destroyself
trigger1 = root,stateno!=1400

[State 21000, CS]
type = changestate
trigger1 = root,stateno=1400
trigger1 = root,animelemtime(9)>=0
value = 21401

[State 0, AngleDraw]
type = AngleDraw
trigger1 = ishelper(21401)
scale = 1.0,-1.0
ignorehitpause = 1


;-----------------------------
; 214p Ancient Geyser FX
[Statedef 21401]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = 5

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*(time**3)/(16.0**3)),256
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = ishelper(21400)
ID = 21400
scale = 1.0-(time/8.0),abs(pos y)/32.0
ignorehitpause = 1
trans = addalpha
alpha = 256-floor(256.0*time/8.0),256

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21000, CS]
type = removeexplod
trigger1 = time>=8
id = 21400

[State 21000, CS]
type = destroyself
trigger1 = time>=16

[State 0, AngleDraw]
type = AngleDraw
trigger1 = ishelper(21401)
scale = 1.0,-1.0
ignorehitpause = 1


;-----------------------------
; 214p Ancient Geyser Projectile
[Statedef 21410]
type = A
movetype = A
physics = N
ctrl = 0
anim = 21410
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer
; Var(10) - Variant Selector (1:L, 2:M, 3:H)
; Var(11) - Damage per hit
; Var(12) - Chip damage per hit
; Var(13) - Projectile kill flag
; Var(14) - Hit Counter

[State 21100, VS]
type = varset
trigger1 = time = 0
var(10)=root,var(10)

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (var(11):=30)||1
trigger1 = (var(12):=7)||1
trigger2 = var(10)=2
trigger2 = (var(11):=30)||1
trigger2 = (var(12):=7)||1
trigger3 = var(10)>=3
trigger3 = (var(11):=30)||1
trigger3 = (var(12):=7)||1

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP;,AT
slot = 0
time = -1
Stateno = 21412
IgnoreHitPause = 1

[State 21000, CS]
type = changestate
trigger1 = 1
value = 21411

;-----------------------------
; 214p Ancient Geyser Projectile
[Statedef 21411]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 5

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=1400
facing = 1
pos = 0,0
ignorehitpause = 1

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP;,AT
slot = 0
time = -1
Stateno = 21412
IgnoreHitPause = 1

[State 1012, HD]
type = HitDef
trigger1 = movecontact = 0 && movereversed = 0
attr = A,SP
animtype  = Hard
damage = ceil(var(11)*root,fvar(11)),ceil(var(12)*root,fvar(11))
hitflag = MAFD
guardflag = MA
getpower = ceil(var(11)*1.6*root,fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*root,fvar(11)),ceil(var(11)*0.2)
sparkno = s8010+(random%2)
guard.sparkno = S8030
pausetime = 0,4
guard.pausetime = 0,4
sparkxy = 0,cond(numenemy,ceil(p2dist y)-50,0)
hitsound   = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = cond((var(32):=27+20+var(34))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=27+20+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=29+20+var(34))<=1,1,var(32))
air.animtype = Up
ground.velocity = 0.0,-9.0-2.0*(var(10)>=2)-2.0*(var(10)>=3)
down.velocity = 0.0,-9.0-2.0*(var(10)>=2)-2.0*(var(10)>=3)
guard.velocity = 0.0
air.velocity = 0.0,-9.0-2.0*(var(10)>=2)-2.0*(var(10)>=3)
airguard.velocity = 0.0,-9.0-2.0*(var(10)>=2)-2.0*(var(10)>=3)
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=29+20+var(34))<=1,1,var(32))+4;hitstun+pausetime value
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0
p2facing = 1
id = 1400

[State 2011, Invalid Combo Flag]
type = parentvarset
trigger1 = MoveHit=1
trigger1 = p2stateno != [120,159]
var(35)=2
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Increase]
type = parentvaradd
triggerall = root,var(52)=2 ;Type-C Only
triggerall = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*root,fvar(11)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.947;cond(var(10)>=3,0.947,cond(var(10)=2,0.92,0.85))
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = movecontact || movereversed
movetype = I
ignorehitpause = 1

[State 21100, CS]
type = changestate
trigger1 = movecontact || movereversed
trigger2 = animelemtime(2)>=0
trigger3 = root,movetype=H
trigger3 = root,stateno!=[120,155]
trigger4 = root,stateno!=1400
value = 21412

[State 21001, Timer]
type = varadd
trigger1 = 1
var(0) = 1

;-----------------------
; 214p Ancient Geyser Projectile
[Statedef 21412]
type = A
movetype = I
physics = N
anim = 1998
sprpriority = 5
movehitpersist = 1

[State 1015, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1015, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1015, Destroyself]
type = changestate
trigger1 = time>=6
value = 999

;---------------------------------------------------------------------------
; USkill 5A - Toad in the Hole
[Statedef 1800]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 1800+0*floor(var(7):=0)
poweradd = 0
sprpriority = 0
facep2 = 1
juggle = 0

[State 1200, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 210,10

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(3)=0
time = 16
freq = 120
ampl = 1
;phase = 90

[State 1200, CS]
type = changestate
trigger1 = animtime = 0
value = 1801

;---------------------------------------------------------------------------
; USkill 5A - Toad in the Hole
[Statedef 1801]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 1801
poweradd = 0
sprpriority = 0
facep2 = 1
juggle = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1200, PSND]
type = turn
trigger1 = anim
trigger1 = p2dist x < 0

[State 1200, CS]
type = changestate
trigger1 = var(7)>=180
value = 1802

[State 1200, CS]
type = changestate
trigger1 = command="holdback" || command="holdfwd"
value = 1820

[State 1801, Timer]
type = varadd
trigger1 = 1
var(7) = 1

;---------------------------------------------------------------------------
; USkill 5A - Toad in the Hole
[Statedef 1802]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 1802
poweradd = 0
sprpriority = 0
facep2 = 0
juggle = 0

[State 1200, PSND]
type = turn
trigger1 = p2dist x < 0

[State 1200, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; USkill 5A - Toad in the Hole
[Statedef 1820]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 1820
poweradd = 0
sprpriority = 0
facep2 = 0
juggle = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 20, VelSet]
type = VelSet
trigger1 = !enemy, NumExplod(94646464) && !enemy, NumExplod(92468246)
trigger1 = command = "holdfwd"
trigger2 = enemy, NumExplod(94646464) || enemy, NumExplod(92468246)
trigger2 = command = "holdback"
x = const(velocity.walk.fwd.x)*cond((var(52)=2&&var(57)>0),1.5,1.0)

[State 20, VelSet]
type = VelSet
trigger1 = !enemy, NumExplod(94646464) && !enemy, NumExplod(92468246)
trigger1 = command = "holdback"
trigger2 = enemy, NumExplod(94646464) || enemy, NumExplod(92468246)
trigger2 = command = "holdfwd"
x = const(velocity.walk.back.x)*cond((var(52)=2&&var(57)>0),1.5,1.0)

[State 1200, CS]
type = changestate
trigger1 = var(7)>=180
value = 1802

[State 1200, CS]
type = changestate
trigger1 = command!="holdback" && command!="holdfwd"
value = 1801

[State 1801, Timer]
type = varadd
trigger1 = 1
var(7) = 1

;---------------------------------------------------------------------------
; Guard Cancel
[Statedef 1900]
type    = U;S
movetype= A
physics = N;S
velset = 0,0
;anim = 1900
poweradd = 0
ctrl = 0
sprpriority = 1
;facep2 = 1

[State -2, Counterhit Explod]
type = Explod
trigger1 = time = 0
anim = 7920+1*(teamside!=1)
ID = 7900+1*(numexplod(7900)>0)
pos = ifelse(teamside=1,0,320),(20*numexplod(7900))+80;120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
sprpriority = 999
scale = 0.6,0.6
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 210, Fufufu]
type = null;playsnd
trigger1 = time = 0
value = 1000,0
channel = 0

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = time=0
value = SCA,AA,AP,AT
time = 30
;ignorehitpause = 
;persistent = 

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 21900+2*(var(52)=2);1999
stateno = 21900;1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 2000, PS]
type = poweradd
trigger1 = time = 0
value = -1000*!(var(57)>0 && var(52)=1)*!(var(57)>0 && var(52)=2)

[State 2000, Spell Trance Power Cost]
type = varadd
trigger1 = time = 0
trigger1 = (var(57)>0 && var(52)=1)
var(57)=-250
[State 2000, Spell Overdrive End]
type = varset
triggerall = time = 0
trigger1 = (var(57)>0 && var(52)=2)
var(57)=0

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 20;0
anim = -1
sound = S4,3
p2defmul = 1
poweradd = 0;-1000
unhittable = 1
movetime = 20;30
darken = 0

[State 1900, CS]
type = changestate
trigger1 = time>=20
trigger1 = (var(10):=1)||1
trigger1 = (var(46):=1)||1
value = 1200


;-----------------------
; Guard Cancel Use Effect
[Statedef 21900]
anim = 2999+2000*ishelper(21902)
velset = 0,0
sprpriority = 3;-1

[State 1112, NoShadow]
type = AssertSpecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

;[State 700, AD]
;type = angledraw
;trigger1 = 1
;value = 3.0*time*ifelse(ishelper(999),2.0,1.0)
;scale = ifelse(ishelper(999),0.35,0.7)+(time*ifelse(ishelper(999),0.2,0.1)),ifelse(ishelper(999),0.35,0.7)+(time*ifelse(ishelper(999),0.2,0.1))
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
scale = (0.5+0.15*var(0))*0.75,(0.5+0.15*var(0))*0.75

;[State 21900, Bomb Type A]
;type = palfx
;trigger1 = ishelper(21900)
;add = 256,0,0
;mul = 256,0,0
;time = -1
;ignorehitpause = 1

;[State 21900, Bomb Type B]
;type = palfx
;trigger1 = ishelper(21901)
;add = 0,256,0
;mul = 0,256,0
;time = -1
;ignorehitpause = 1

;[State 21900, Bomb Type C]
;type = palfx
;trigger1 = ishelper(21902)
;add = 256,256,0
;mul = 256,256,0
;time = -1
;ignorehitpause = 1

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-ifelse(time<30,0,floor(256.0*(time-30)/40.0)),256

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 70

;---------------------------------------------------------------------------
; Dash Cancel
[Statedef 1910]
type    = U;S
movetype= A
physics = N;S
velset = 0,0
;anim = 1900
poweradd = 0
ctrl = 0
sprpriority = 1
;facep2 = 1

[State -2, Counterhit Explod]
type = Explod
trigger1 = time = 0
anim = 7930+1*(teamside!=1)
ID = 7900+1*(numexplod(7900)>0)
pos = ifelse(teamside=1,0,320),(20*numexplod(7900))+80;120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
sprpriority = 999
scale = 0.6,0.6
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 210, Fufufu]
type = NULL;playsnd
trigger1 = time = 0
value = 1000,0
channel = 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 21902;1999
stateno = 21910;1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 0
supermovetime = 0

[State 1900, Decrease Spirit]
type = varadd
trigger1 = time = 0
var(54) = -floor(lifemax*0.9*0.5);cond(var(57)>0,floor(lifemax*0.9*0.333),floor(lifemax*0.9*0.5))

[State 1910, PSND]
type = playsnd
trigger1 = time=0
value = 4,3

[State 1900, CS]
type = changestate
trigger1 = 1
value = 100+10*(statetype=A)

;-----------------------
; Dash Cancel Use Effect
[Statedef 21910]
anim = 21910
velset = 0,0
sprpriority = 5

[State 1112, NoShadow]
type = AssertSpecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 1999, Angleset]
type = angleadd
trigger1 = 1
value = -10

[State 1999, Varadd]
type = varset
trigger1 = time = 0
var(0) = 8

[State 1999, Varadd]
type = varadd
trigger1 = animelemno(0)=1
var(0) = -1

[State 1999, Varadd]
type = varset
trigger1 = animelemtime(2)=0
var(0) = 0

[State 1999, Varadd]
type = varadd
trigger1 = animelemno(0)=2
var(0) = 1

[State 1999, Angledraw]
type = angledraw
trigger1 = 1
scale = (0.3*var(0))*0.75,(0.3*var(0))*0.75

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-ifelse(animelemno(0)=1,0,floor(256.0*animelemtime(2)/20.0)),256
ignorehitpause = 1

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 28

;---------------------------------------------------------------------------
; Bomb (Type-A)
[Statedef 1920]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1920
poweradd = 0
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1920, Strike Invuln]
type = nothitby
trigger1 = time=0
time = 48
value = ,AA,AP
ignorehitpause = 1

[State 1900, Decrease Spirit]
type = varset
trigger1 = time = 0
var(54) = 0;-floor(lifemax*0.9*0.333)

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "Bomb_FX"
id = 21920
stateno = 21920
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "Bomb_FX"
id = 21921
stateno = 21920
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "Bomb_FX"
id = 21922
stateno = 21920
pos = 0,-50
postype = p1
ownpal = 1
facing = 1

[State 1910, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 1920,10

[State 210, 1st Hitdef]
type = HitDef
triggerall = movecontact=0&&movereversed=0
trigger1 = animelemno(0)=[4,5]
attr = S,SA
animtype  = Hard
priority = 4,hit
damage    = 0,0
Hitflag = MAF
guardflag = MA
pausetime = 6,6
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -30,-50
hitsound   = s1,2
guardsound = s2,0
ground.type = High
air.type = low
ground.velocity = -8.5,-6.5
guard.velocity = -8.5
air.velocity = -8.5,-6.5
airguard.velocity = -4.5,-6.5
getpower = 1000,40
givepower = ceil(80.0*fvar(11)*ifelse(var(42),1.25,1.0)),20
yaccel = 0.5
ground.slidetime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
forcestand = 1
id = 1900

[State 1900, Increase Spirit]
type = varset
trigger1 = movehit
var(54) = floor(lifemax*0.9*0.25)
persistent=0
ignorehitpause = 1

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = animelemtime(6) = 0
trigger2 = movecontact || movereversed
movetype = I
ignorehitpause = 1
persistent=0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit;=1
fvar(10) = fvar(10)*0.75
ignorehitpause = 1
persistent = 0

[State 1900, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;-----------------------
; Bomb Effect
[Statedef 21920]
anim = 21920
velset = 0,0
sprpriority = 5

[State 1999, Angleset]
type = angleadd
trigger1 = 1
value = -10

[State 1112, NoShadow]
type = AssertSpecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 1999, Varadd]
type = varadd
trigger1 = time <= 20
var(0) = 1

[State 21920, AD]
type = angledraw
trigger1 = 1
value = cond(ishelper(21920),0,cond(ishelper(21921),45,-45))
scale = 0.75*(time*0.3) , 0.35*(time*0.3)
ignorehitpause = 1

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/30.0),256
ignorehitpause = 1

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 30

;---------------------------------------------------------------------------
; Crush Attack (Type-A)
[Statedef 1940]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1940
poweradd = -500
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1910, PSND]
type = playsnd
trigger1 = animelemtime(2)=0
value = 1940,10

[State 0, Explod]
type = Explod
trigger1 = animelemtime(2)=0
anim = 21940
ID = 21940
pos = 10,-30
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ontop = 0
ownpal = 1
;pausemovetime = var(36)
removeongethit = 1
ignorehitpause = 1

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 220,0
channel = 0

[State 225, PS]
type = velset
trigger1 = animelemtime(5)=0
x = 7.0

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(4)=0
helpertype = normal ;player
name = "Rock"
ID = 21940
stateno = 20210
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 220, 1]
type = PlaySnd
trigger1 = animelemtime(5) = 0
value = 0, 2

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=80)||1 ;80
trigger1 = (var(12):=0+16*(var(52)=1))||1

[State 210, 1st Hitdef]
type = HitDef
triggerall = movecontact=0&&movereversed=0
trigger1 = animelemno(0)=5
attr = S,SA
animtype  = Hard
priority = 4,hit
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
Hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8025+(random%2);S8030
sparkxy = -20,-35
hitsound   = s1,2
guardsound = s3,1
ground.type = High
air.type = low
ground.velocity = -6.5,-6.5
guard.velocity = -6.5
air.velocity = -6.5,-6.5
airguard.velocity = -6.5,-6.5
getpower = 0,0
givepower = ceil(80.0*fvar(11)*ifelse(var(42),1.25,1.0)),20
yaccel = 0.5
ground.slidetime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
forcestand = 1
id = 1940

[State -2, Counterhit Explod]
type = Explod
triggerall = numenemy
triggerall = numtarget(1940)
triggerall = target(1940),stateno = [120,155]
triggerall = target(1940),stateno != [7940,7943]
trigger1 = moveguarded
anim = 7910+1*(teamside!=1)
ID = 7900+1*(numexplod(7900)>0)
pos = ifelse(teamside=1,0,320),(20*numexplod(7900))+80;120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
sprpriority = 999
scale = 0.6,0.6
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1940, PSND]
type = playsnd
trigger1 = moveguarded
value = 2,1
ignorehitpause = 1
persistent = 0

[State 1940, Guard Crush]
type = targetstate
trigger1 = moveguarded=1
trigger1 = numtarget(1940)
trigger1 = target(1940),stateno = [120,155]
trigger1 = target(1940),stateno != [7940,7943]
id = 1940
value = 7940
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = animelemtime(6) = 0
trigger2 = movecontact || movereversed
movetype = I
ignorehitpause = 1
persistent=0

[State 200, Damage Dampen]
type = varset
trigger1 = movecontact;=1
fvar(10) = fvar(10)*0.75
ignorehitpause = 1
persistent = 0

[State 1900, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;-------------------------
; Guard Crush
[Statedef 7940]
type    = U
movetype = H
physics = N
sprpriority = 0
velset = 0,0

[State 7940, CS]
type = changestate
trigger1 = statetype = A
value = 7942

[State 7940, STS]
type = statetypeset
trigger1 = time = 0
statetype = S
physics = S

[State 7940, CA]
type = changeanim
trigger1 = 1;time = 0
value = 5300

[State 7940, CS]
type = changestate
trigger1 = hitshakeover=1
trigger2 = time > 60
value = 7941

;-------------------------
; Guard Crush
[Statedef 7941]
type    = S
movetype = H
physics = S

[State 7941, HVS]
type = hitvelset
trigger1 = time = 0
x = 1

[State 7941, CS]
type = selfstate
trigger1 = time>50
value = 0
ctrl = 1

;-------------------------
; Guard Crush - Air
[Statedef 7942]
type    = A
movetype = H
physics = N
sprpriority = 0
velset = 0,0

[State 7940, CA]
type = changeanim
trigger1 = 1;time = 0
value = 5030

[State 7940, CS]
type = changestate
trigger1 = hitshakeover=1
trigger2 = time > 60
value = 7943

;-------------------------
; Guard Crush - Air
[Statedef 7943]
type    = A
movetype = H
physics = N
sprpriority = 0
velset = -2.0,-6.0

[State 7940, CA]
type = changeanim
trigger1 = time = 0
value = 5050

[State 7940, Grav]
type = veladd
trigger1 = time
y = 0.2

[State 7940, CS]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 5100