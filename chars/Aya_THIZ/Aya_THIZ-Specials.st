;---------------------------------------------------------------------------
; 236p: Gust Fan (Ground)
[Statedef 1000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1000;+1*(var(10)=2)+2*(var(10)>=3)
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

[State 1400, Offset]
type = posadd
trigger1 = animelemtime(2)=0
x = 20
[State 1400, Offset]
type = posadd
trigger1 = animelemtime(4)=0
x = 10
[State 1400, Offset]
type = posadd
trigger1 = animelemtime(5)=0
x = 12
[State 1400, Offset]
type = posadd
trigger1 = animelemtime(8)=0
x = -10
[State 1400, Offset]
type = posadd
trigger1 = animelemtime(9)=0||animelemtime(10)=0
x = -16

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 1000,10

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(5)=0
helpertype = normal
name = "Gust";Reppuken
ID = 21000
pos = 68,0
postype = p1
stateno = 21000
ownpal = 1
facing = 1

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(5)>1
movetype = I
persistent = 0
ignorehitpause = 1

[State 1000, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 896p: Gust Fan (Air)
[Statedef 1005]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 1005
poweradd = ceil(15.0*fvar(11))
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

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 1000,10

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(5)=0
helpertype = normal
name = "Gust";Reppuken
ID = 21000
pos = 40,-10
postype = p1
stateno = 21005
ownpal = 1
facing = 1

[State 1005, VelSet]
type = velset
trigger1 = animelemtime(5)=0
x = -2.0
y = -3.5

[State 1005, VelSet]
type = veladd
trigger1 = animelemtime(5)>0
y = 0.5

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(5)>1
movetype = I
persistent = 0
ignorehitpause = 1

[State 1000, CS]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1006
ctrl = 0

;---------------------------------------------------------------------------
; 896p: Gust Fan (Air)
[Statedef 1006]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 1006
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
; Gust Fan Projectile
[Statedef 21000]
type = A
movetype = A
physics = N
ctrl = 0
anim = 21000
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer
; Var(10) - Variant Selector (1:L, 2:M, 3:H)
; Var(11) - Damage per hit
; Var(12) - Chip damage per hit

[State 21100, VS]
type = varset
trigger1 = time = 0
var(10)=root,var(10)

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (var(11):=55)||1
trigger1 = (var(12):=11)||1
trigger2 = var(10)=2
trigger2 = (var(11):=55)||1
trigger2 = (var(12):=11)||1
trigger3 = var(10)>=3
trigger3 = (var(11):=55)||1
trigger3 = (var(12):=11)||1

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
Stateno = 21002
IgnoreHitPause = 1

[State 21000, CS]
type = changestate
trigger1 = 1
value = 21001

;-----------------------------
; Gust Fan Projectile
[Statedef 21001]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 5
movehitpersist = 1

[State 21001, CA]
type = changeanim
trigger1 = anim!=21000
value = 21000
ignorehitpause = 1

[State 21001, PS]
type = posset
trigger1 = time = 0
y = 0

[State 21001, VS]
type = varset
trigger1 = 1
var(1) = 0
ignorehitpause = 1
persistent = 0

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
Stateno = 21002
IgnoreHitPause = 1

[State 21100, VS]
type = velset
trigger1 = 1
x = 4.0+4.0*(var(10)=2)+8.0*(var(10)>=3)
y = 0.0

[State 1012, HD]
type = HitDef
trigger1 = movecontact = 0 && movereversed = 0
attr = S,SP
animtype  = Hard
damage = ceil(var(11)*root,fvar(11)),ceil(var(12)*root,fvar(11))
hitflag = MAF
guardflag = MA
getpower = ceil(var(11)*1.6*root,fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*root,fvar(11)),ceil(var(11)*0.2)
sparkno = s8020+(random%2)
guard.sparkno = S8030
pausetime = 0,10
guard.pausetime = 0,10
sparkxy = -10,-20
hitsound   = s1,2
guardsound = s2,0
ground.type = Low
ground.slidetime = cond((var(32):=22+root,var(34))<=1,1,var(32));27
ground.hittime  = cond((var(32):=22+root,var(34))<=1,1,var(32));27
guard.slidetime = cond((var(32):=18+root,var(34))<=1,1,var(32));22
guard.hittime = cond((var(32):=18+root,var(34))<=1,1,var(32));22
air.hittime = cond((var(32):=24+root,var(34))<=1,1,var(32));29
air.animtype = Back
ground.velocity = -8.0,0.0
guard.velocity = -8.0
air.velocity = -8.0,-3.5
airguard.velocity = -8.0,-3.5
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=24+root,var(34))<=1,1,var(32))+10;hitstun+pausetime value
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0
p2facing = 1
id = 1000

[State 2011, Helper Hit Flag]
type = parentvarset
trigger1 = MoveHit=1
trigger1 = p2stateno != [120,159]
var(35)=2
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = movecontact || movereversed
movetype = I
ignorehitpause = 1

[State -2, Spirit Gauge Increase]
type = parentvaradd
trigger1 = root,var(52)=2 ;Type-C Only
trigger1 = movecontact
trigger1 = root,var(54)<ceil(root,lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*root,fvar(11)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.85
ignorehitpause = 1
persistent = 0

[State 21100, CS]
type = changestate
trigger1 = movecontact || movereversed
trigger2 = frontedgedist < -100
value = 21002

[State 21001, Timer]
type = varadd
trigger1 = 1
var(0) = 1

;-----------------------
; Gust Fan Projectile
[Statedef 21002]
type = A
movetype = I
physics = N
sprpriority = 5
movehitpersist = 1

[State 1015, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/6.0),256
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

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(1)
ignorehitpause = 1
;persistent = 


;-----------------------------
; Gust Fan Projectile (Air)
[Statedef 21005]
type = A
movetype = A
physics = N
ctrl = 0
anim = 21005
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer
; Var(1) - Angle
; Var(10) - Variant Selector (1:L, 2:M, 3:H)
; Var(11) - Damage per hit
; Var(12) - Chip damage per hit

[State 21100, VS]
type = varset
trigger1 = time = 0
var(10)=root,var(10)

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=55)||1
trigger1 = (var(12):=11)||1
trigger1 = (var(1):=-60)||1

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
Stateno = 21002
IgnoreHitPause = 1

[State 21000, CS]
type = changestate
trigger1 = 1
value = 21006

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(1)
ignorehitpause = 1

;-----------------------------
; Gust Fan Projectile
[Statedef 21006]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 5
movehitpersist = 1

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
Stateno = 21002
IgnoreHitPause = 1

[State 21100, VS]
type = velset
trigger1 = 1
x = (4.0+4.0*(var(10)=2)+8.0*(var(10)>=3))*cos(var(1)*pi/180.0)
y = -(4.0+4.0*(var(10)=2)+8.0*(var(10)>=3))*sin(var(1)*pi/180.0)

[State 1012, HD]
type = HitDef
trigger1 = movecontact = 0 && movereversed = 0
attr = S,SP
animtype  = Hard
damage = ceil(var(11)*root,fvar(11)),ceil(var(12)*root,fvar(11))
hitflag = MAF
guardflag = MA
getpower = ceil(var(11)*1.6*root,fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*root,fvar(11)),ceil(var(11)*0.2)
sparkno = s8020+(random%2)
guard.sparkno = S8030
pausetime = 0,10
guard.pausetime = 0,10
sparkxy = -10,-20
hitsound   = s1,2
guardsound = s2,0
ground.type = Low
ground.slidetime = cond((var(32):=22+root,var(34))<=1,1,var(32));27
ground.hittime  = cond((var(32):=22+root,var(34))<=1,1,var(32));27
guard.slidetime = cond((var(32):=18+root,var(34))<=1,1,var(32));22
guard.hittime = cond((var(32):=18+root,var(34))<=1,1,var(32));22
air.hittime = cond((var(32):=24+root,var(34))<=1,1,var(32));29
air.animtype = Back
ground.velocity = -8.0,0.0
guard.velocity = -8.0
air.velocity = -8.0,-3.5
airguard.velocity = -8.0,-3.5
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=24+var(34))<=1,1,var(32))+10;hitstun+pausetime value
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0
p2facing = 1
id = 1000

[State 2011, Helper Hit Flag]
type = parentvarset
trigger1 = MoveHit=1
trigger1 = p2stateno != [120,159]
var(35)=2
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = movecontact || movereversed
movetype = I
ignorehitpause = 1

[State -2, Spirit Gauge Increase]
type = parentvaradd
trigger1 = root,var(52)=2 ;Type-C Only
trigger1 = movecontact
trigger1 = root,var(54)<ceil(root,lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*root,fvar(11)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.85
ignorehitpause = 1
persistent = 0

[State 21100, CS]
type = changestate
trigger1 = movecontact || movereversed
trigger2 = frontedgedist < -100
value = 21002

[State 21100, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 21001

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(1)
ignorehitpause = 1

;---------------------------------------------------------------------------
; [4]6p: Dominating Dash
[Statedef 1100]
type    = U;S
movetype= A
physics = N;S
velset = 0,0
anim = 1100+1*(var(10)=2)+2*(var(10)>=3)+5*(statetype=A)
poweradd = ceil(45.0*fvar(11))
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

[State 1100, FaceP2]
type = turn
trigger1 = time = 0
trigger1 = statetype!=A
trigger1 = p2dist x < 0

[State 1100, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype!=A
statetype = S
physics = S

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (var(11):=100)||1 
trigger1 = (var(12):=15)||1
trigger2 = var(10)=2
trigger2 = (var(11):=110)||1 
trigger2 = (var(12):=15)||1
trigger3 = var(10)>=3
trigger3 = (var(11):=120)||1
trigger3 = (var(12):=15)||1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7)=0
anim = 20001
ID = 20001
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vel = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1100, STS]
type = statetypeset
trigger1 = anim=[1100,1102]
trigger1 = animelemtime(7)=0
;statetype = A
physics = N

;[State 0, PosAdd]
;type = PosAdd
;trigger1 = anim=[1100,1102]
;trigger1 = animelemtime(7)=0
;x = 0
;y = -5

[State 1100, VelS]
type = velset
trigger1 = animelemtime(7)=0
x = 7.0+1.0*(var(10)=2)+2.0*(var(10)>=3)

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 1100,10
channel = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = animelemno(0)=[7,17]
value = 0
ignorehitpause = 1

[State 1100, Friction]
type = velmul
trigger1 = animelemno(0)=[18,21]
x = 0.9

[State 0, PosAdd]
type = Posset
trigger1 = anim=[1100,1102]
trigger1 = animelemtime(22)=0
y = 0

[State 1100, STS]
type = statetypeset
trigger1 = anim=[1100,1102]
trigger1 = animelemtime(22)=0
statetype = S
physics = S

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(7)=0
helpertype = normal
name = "Wind"
ID = 21100
pos = 5,-35
postype = p1
stateno = 21100
ownpal = 1
facing = 1

[State 1100, MHR]
type = moveHitReset
trigger1 = animelemtime(11)=0
trigger1 = moveguarded && !movehit

[State 1300, Damage Calc]
type = null
trigger1 = animelemtime(11)=0
trigger1 = (var(11):=80)||1
trigger1 = (var(12):=15)||1


[State 1000, L 1st Hit]
type = HitDef
triggerall = movecontact = 0 && movereversed=0
trigger1 = animelemno(0)=[7,10]
trigger2 = animelemno(0)=[11,17]
attr = S,SA
animtype  = Back
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
priority = 4,hit
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-70
hitsound   = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=29+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.velocity = -8.0,-6.0
air.velocity = -8.0,-6.0
getpower = ceil(var(11)*1.6*fvar(11))*(prevstateno!=1900),ceil(var(11)*0.4)*(prevstateno!=1900)
givepower = ceil(var(11)*0.8*fvar(11)),ceil(var(11)*0.2)
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=29+20+3*(var(42)!=0)+var(34))<=1,1,var(32))+10;hitstun+pausetime value
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
id = 1100

[State -2, Spirit Gauge Increase (Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = movehit
triggerall = var(54)<ceil(lifemax*0.9)
trigger1 = 1
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State -2, Spirit Gauge Increase (1st Guard)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = moveguarded
triggerall = animelemno(0)=[7,10]
triggerall = var(54)<ceil(lifemax*0.9)
trigger1 = 1
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase (2nd Guard)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = moveguarded
triggerall = animelemno(0)=[11,17]
triggerall = var(54)<ceil(lifemax*0.9)
trigger1 = 1
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1


[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0


[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(18)=0
trigger2 = movehit||movereversed
trigger3 = animelemtime(11)>=0
trigger3 = movecontact
movetype = I
persistent=0
ignorehitpause = 1

[State 1000, CS]
type = ChangeState
trigger1 = anim=[1100,1102]
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1000, Gravity]
type = veladd
trigger1 = anim=[1105,1107]
trigger1 = animelemtime(22)>=0
y = 0.5

[State 1000, CS]
type = ChangeState
trigger1 = anim=[1105,1107]
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1101

;---------------------------------------------------------------------------
; 46p: Domination Dash Landing
[Statedef 1101]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 1110
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


;--------------------------
; [4]6p: Dominating Dash FX
[Statedef 21100]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 21100
sprpriority = 5

[State 621, CA]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno(-1)

[State 21100, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21100, Ass]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21100, BTR]
type = BindToParent
trigger1 = 1
pos = 5,-35

[State 21100, Angles]
type = AngleDraw
trigger1 = 1
scale = 1.0,1.0
ignorehitpause = 1

[State 21100, Zeeky]
type = destroyself
trigger1 = root,stateno != 1100

[State 21100, Zeeky]
type = changestate
trigger1 = root,stateno = 1100
trigger1 = root,animelemtime(18)>=0
value = 21101

;--------------------------
; [4]6p: Dominating Dash FX
[Statedef 21101]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 21101
sprpriority = 5

[State 21100, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21100, Ass]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21100, Angles]
type = AngleDraw
trigger1 = 1
scale = 1.0,1.0
ignorehitpause = 1

[State 21100, Zeeky]
type = destroyself
trigger1 = animtime=0

;---------------------------------------------------------------------------
; [2]8p: Tengu Drum
[Statedef 1200]
type    = U
movetype= A
physics = N
velset = 0,0
anim = 1200
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
trigger1 = var(10)<=1
trigger1 = (var(11):=100)||1 
trigger1 = (var(12):=20)||1
trigger2 = var(10)=2
trigger2 = (var(11):=100)||1 
trigger2 = (var(12):=20)||1
trigger3 = var(10)>=3
trigger3 = (var(11):=100)||1
trigger3 = (var(12):=20)||1

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 20001
ID = 20000
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vel = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(1)=0
helpertype = normal
name = "Gust";Reppuken
ID = 21200
pos = 0,0
postype = p1
stateno = 21200
ownpal = 1
facing = 1

[State 1200, STS]
type = statetypeset
trigger1 = animelemtime(1)=0
statetype = A
physics = N

[State 1200, VS]
type = velset
trigger1 = animelemtime(1)=0
x = 2.75+2.75*(var(10)=2)+5.5*(var(10)>=3)
y = -10.5

[State 1200, Grav]
type = veladd
trigger1 = animelemtime(1)>0
y = 0.5

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = 1200,10

[State 1200, Hitdef]
type = HitDef
triggerall = movecontact = 0 && movereversed=0
trigger1 = animelemtime(6)>=0
attr = A,SA
animtype  = Back
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
priority = 4,hit
hitflag = MAF
guardflag = HA
pausetime = 0,20
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,0
hitsound   = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=29+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.velocity = -2.0,0.0
air.velocity = -2.0,-6.0
getpower = ceil(var(11)*1.6*fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)),ceil(var(11)*0.2)
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=29+3*(var(42)!=0)+var(34))<=1,1,var(32))+20;hitstun+pausetime value
p2facing = 1
id = 1200
forcestand = 1

[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = movecontact||movereversed
movetype = I
persistent=0
ignorehitpause = 1

[State 1000, CS]
type = ChangeState
trigger1 = movecontact
trigger1 = numtarget(1200)
trigger1 = target(1200),ishelper=0
value = 1202
ctrl = 0
ignorehitpause = 1

[State 1000, CS]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1201
ctrl = 0

;---------------------------------------------------------------------------
; Tengu Drum - Whiff Landing
[Statedef 1201]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 1201+2*(prevstateno=1202)+10*(prevstateno=1210)
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
triggerall = !ishelper
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Tengu Drum - Initial Hit
[Statedef 1202]
type    = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 1202
movehitpersist=1
facep2 = 0

[State 0, BindToTarget]
type = BindToTarget
trigger1 = time=0
time = 20
ID = 1200
pos = 0,0,Head
ignorehitpause = 1

[State 0, NotHitBy]
type = null;NotHitBy
trigger1 = animelemtime(8)<0
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = animelemtime(8)<0
value = 0
ignorehitpause = 1

[State 1202, VS]
type = velset
trigger1 = animelemtime(8)=0
x = -6.0
y = -8.0

[State 1100, AirFriction]
type = Velmul
trigger1 = AnimElemTime(8)>0
x = 0.96

[State 1800, Alter Descent]
type = veladd
triggerall = animelemtime(8)>0
trigger1 = command="holdfwd" && command!="holdback"
trigger1 = vel x < 5.0
x = 1.0;0.5
[State 1800, Alter Descent]
type = veladd
triggerall = animelemtime(8)>0
trigger1 = command!="holdfwd" && command="holdback"
trigger1 = vel x > -5.0
x = -1.0;0.5

[State 1202, VS]
type = veladd
trigger1 = animelemtime(8)>0
y = 0.5

[State 1000, CS]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1201
ctrl = 0

;---------------------------------------------------------------------------
; [2]8p->p: Tengu Felling
[Statedef 1210]
type    = A
movetype= A
physics = N
anim = 1210
poweradd = 0
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (var(11):=100)||1 
trigger1 = (var(12):=20)||1
trigger2 = var(10)=2
trigger2 = (var(11):=100)||1 
trigger2 = (var(12):=20)||1
trigger3 = var(10)>=3
trigger3 = (var(11):=100)||1
trigger3 = (var(12):=20)||1

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "Gust";Reppuken
ID = 21210
pos = 70,-20
postype = p1
stateno = 21210
ownpal = 1
facing = 1

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 1200,11

[State 1200, Hitdef]
type = HitDef
triggerall = movecontact = 0 && movereversed=0
trigger1 = animelemno(0)=4
attr = A,SA
animtype  = Back
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
priority = 4,hit
hitflag = MAF
guardflag = HA
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-20
hitsound   = s1,2
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=29+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.velocity = -6.5,0.0;-2.5
air.velocity = -6.5,-2.5
getpower = ceil(var(11)*1.6*fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)),ceil(var(11)*0.2)
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=29+3*(var(42)!=0)+var(34))<=1,1,var(32))+10;hitstun+pausetime value
p2facing = 1
id = 1210

[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = movecontact||movereversed
trigger2 = animelemtime(5)=0
movetype = I
persistent=0
ignorehitpause = 1

[State 1000, CS]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1201
ctrl = 0

[State 1200, Grav]
type = veladd
trigger1 = 1
x = 0.3
y = 0.4

;---------------------------------------------------------------------------
; [2]8p->p: Tengu's Downburst
[Statedef 1220]
type    = A
movetype= A
physics = N
anim = 1220
poweradd = 0
ctrl = 0
sprpriority = 1
facep2 = 0
juggle = 0

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=100)||1 
trigger1 = (var(12):=20)||1

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(10)=0
helpertype = normal
name = "Gust";Reppuken
ID = 21220
pos = 9,-9
postype = p1
stateno = 21220
ownpal = 1
facing = 1

[State 1220, NHB]
type = nothitby
trigger1 = time<=13
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1200, Grav]
type = veladd
trigger1 = animelemtime(1)>0 && animelemtime(8)<0
trigger1 = vel y < 0
y = 0.5

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = 1200,13
[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(10)=0
value = 1200,12

[State 1220, VS]
type = velset
trigger1 = animelemtime(1)=0
x = -1.75
y = -8.0

[State 1220, VS]
type = velset
trigger1 = animelemtime(10)>=0
x = 5.0
y = 12.0

[State 1200, Hitdef]
type = HitDef
triggerall = movecontact = 0 && movereversed=0
trigger1 = animelemtime(10)>=0
attr = A,SA
animtype  = Back
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
priority = 4,hit
hitflag = MAF
guardflag = HA
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-20
hitsound   = s1,2
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=29+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.velocity = -2.5,12.5
air.velocity = -2.5,12.5
getpower = ceil(var(11)*1.6*fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)),ceil(var(11)*0.2)
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=29+3*(var(42)!=0)+var(34))<=1,1,var(32))+10;hitstun+pausetime value
p2facing = 1
id = 1210

[State -2, Spirit Gauge Increase (1st Hit)]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = movecontact||movereversed
movetype = I
persistent=0
ignorehitpause = 1

[State 1000, CS]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1201
ctrl = 0

;-----------------------------
; Tengu Drum FX
[Statedef 21200]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21200
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
alpha = 256,256
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21000, CS]
type = destroyself
trigger1 = animtime=0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -time
scale = (1.0+(time*0.1)),1.5*(1.0+(time*0.1))
ignorehitpause = 1

;-----------------------------
; Tengu Felling FX
[Statedef 21210]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21210
sprpriority = 5

[State 21210, VS]
type = Velset
trigger1 = time = 0
x = 15.0*cos(25*pi/180)
y = 15.0*sin(25*pi/180)

[State 21210, Friction]
type = velmul
trigger1 = time
x = 0.95
y = 0.95

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*cond(time<5,0,time-5)/5.0),256
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21000, CS]
type = destroyself
trigger1 = time>=10

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 75
scale = 1.15,1.15
ignorehitpause = 1

;-----------------------------
; Tengu Downburst FX
[Statedef 21220]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21210
sprpriority = 5

[State 21210, VS]
type = bindtoroot
trigger1 = root,stateno=1220 || root,stateno!=4004
pos = 9,-9

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

[State 21000, CS]
type = destroyself
trigger1 = !ishelper(24000)
trigger1 = root,stateno!=1220
trigger2 = ishelper(24000)
trigger2 = root,stateno!=4004

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 20
ignorehitpause = 1

;---------------------------------------------------------------------------
; USkill 5A - Bunbunmaru Photoshoot
[Statedef 1800]
type    = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 1800+0*floor(var(11):=1)
poweradd = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1XXX, Special Counter]
type = varadd
trigger1 = time = 0
var(3) = 1
persistent = 0
ignorehitpause = 1

[State 1000, No Longer Holding]
type = varset
trigger1 = command!="holda"
var(11) = 0
persistent = 0

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "Viewfinder"
ID = 21800
pos = 55,-68
postype = p1
stateno = 21800
ownpal = 1
facing = 1

[State 1200, CS]
type = changestate
trigger1 = time>=120
trigger2 = animelemtime(5)>=0
trigger2 = var(11)=0
value = 1801
ctrl = 0

[State 1800, Camera Position]
;Shit's about to get real: what if I told you an exploit exists where you can
;implement an equivalent state controller to HelperVarSet?
;Credits to inktrebuchet & David11 for discovering this.
type = null;HelperVarSet
triggerall = animelemtime(5)>=0
triggerall = numhelper(21800)
trigger1 = command="holdfwd" && command!="holdup" && command!="holddown" && command!="holdback"
trigger1 = cond(numhelper(21800),helper(21800),cond(1,var(9):=6,0),0)
trigger2 = command="holdfwd" && command="holdup" && command!="holddown" && command!="holdback"
trigger2 = cond(numhelper(21800),helper(21800),cond(1,var(9):=9,0),0)
trigger3 = command!="holdfwd" && command="holdup" && command!="holddown" && command!="holdback"
trigger3 = cond(numhelper(21800),helper(21800),cond(1,var(9):=8,0),0)
trigger4 = command!="holdfwd" && command="holdup" && command!="holddown" && command="holdback"
trigger4 = cond(numhelper(21800),helper(21800),cond(1,var(9):=7,0),0)
trigger5 = command!="holdfwd" && command!="holdup" && command!="holddown" && command="holdback"
trigger5 = cond(numhelper(21800),helper(21800),cond(1,var(9):=4,0),0)
trigger6 = command!="holdfwd" && command!="holdup" && command="holddown" && command="holdback"
trigger6 = cond(numhelper(21800),helper(21800),cond(1,var(9):=1,0),0)
trigger7 = command!="holdfwd" && command!="holdup" && command="holddown" && command!="holdback"
trigger7 = cond(numhelper(21800),helper(21800),cond(1,var(9):=2,0),0)
trigger8 = command="holdfwd" && command!="holdup" && command="holddown" && command!="holdback"
trigger8 = cond(numhelper(21800),helper(21800),cond(1,var(9):=3,0),0)
trigger9 = command!="holdfwd" && command!="holdup" && command!="holddown" && command!="holdback"
trigger9 = cond(numhelper(21800),helper(21800),cond(1,var(9):=5,0),0)

;---------------------------------------------------------------------------
; USkill 5A - Bunbunmaru Photoshoot
[Statedef 1801]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 1801+0*floor(var(53):=0)
poweradd = 0
sprpriority = 1
facep2 = 0
juggle = 0

[State 1200, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 1800,10

[State 0, EnvColor]
type = EnvColor
trigger1 = animelemtime(1)=0
value = 255,255,255
time = 4
ignorehitpause = 1

[State 1200, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------
; Bunbunmaru Photoshoot Projectile
[Statedef 21800]
type = A
movetype = A
physics = N
ctrl = 0
anim = 21800
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer
; Var(9) - Angle
; Var(10) - Angle
; Var(11) - Damage per hit
; Var(12) - Chip damage per hit

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(10):=5)||1
trigger1 = (var(11):=0)||1
trigger1 = (var(12):=0)||1

[State 1300, Damage Calc]
type = null
trigger1 = var(9)=5
trigger1 = (var(10):=0)||1
trigger2 = var(9)=6
trigger2 = (var(10):=0)||1
trigger3 = var(9)=9
trigger3 = (var(10):=-45)||1
;
trigger4 = var(9)=8
trigger4 = (var(10):=-90)||1
trigger5 = var(9)=7
trigger5 = (var(10):=-135)||1
trigger6 = var(9)=4
trigger6 = (var(10):=180)||1
;
trigger7 = var(9)=1
trigger7 = (var(10):=135)||1
trigger8 = var(9)=2
trigger8 = (var(10):=90)||1
trigger9 = var(9)=3
trigger9 = (var(10):=45)||1

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
Stateno = 21802
IgnoreHitPause = 1

[State 21000, CS]
type = destroyself
trigger1 = root,stateno!=[1800,1801]

[State 21000, CS]
type = changestate
trigger1 = root,stateno=1801
value = 21801

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.5,0.5
ignorehitpause = 1

[State 21800, VS]
type = velset
trigger1 = time>=4
trigger1 = var(9)!=5
x = 5.0*cos(var(10)*pi/180.0)
y = 5.0*sin(var(10)*pi/180.0)

[State 21800, VS]
type = velset
trigger1 = time>=4
trigger1 = var(9)=5
x = 0.0
y = 0.0

;-----------------------------
; Bunbunmaru Photoshoot Projectile
[Statedef 21801]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 21801
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer
; Var(10) - Angle
; Var(11) - Damage per hit
; Var(12) - Chip damage per hit

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
Stateno = 21802
IgnoreHitPause = 1

[State 1012, HD]
type = HitDef
trigger1 = movecontact = 0 && movereversed = 0
attr = S,SP
animtype  = Hard
damage = ceil(var(11)*root,fvar(11)),ceil(var(12)*root,fvar(11))
hitflag = MAF
guardflag = MA
getpower = ceil(var(11)*1.6*root,fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*root,fvar(11)),ceil(var(11)*0.2)
sparkno = s8020+(random%2)
guard.sparkno = S8030
pausetime = 10,20
guard.pausetime = 10,20
sparkxy = -10,0
hitsound   = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = cond((var(32):=32+root,var(34))<=1,1,var(32));27
ground.hittime  = cond((var(32):=32+root,var(34))<=1,1,var(32));27
guard.slidetime = cond((var(32):=27+root,var(34))<=1,1,var(32));22
guard.hittime = cond((var(32):=27+root,var(34))<=1,1,var(32));22
air.hittime = cond((var(32):=34+root,var(34))<=1,1,var(32));29
air.animtype = Back
ground.velocity = -4.0,0.0
guard.velocity = -4.0
air.velocity = -4.0,-6.5
airguard.velocity = -4.0,-6.5
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=34+var(34))<=1,1,var(32))+20;hitstun+pausetime value
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0
p2facing = 1
id = 1800
p2stateno = cond(sysvar(4)=0,7940,-1)
p2getp1state = cond(sysvar(4)=0,1,0)

;[State 1940, Guard Crush]
;type = targetstate
;trigger1 = movehit
;trigger1 = numtarget(1800)
;trigger1 = target(1800),stateno = [120,155]
;trigger1 = target(1800),stateno != [7940,7943]
;id = 1800
;value = 7940
;ignorehitpause = 1
;persistent = 0

[State 2011, Helper Hit Flag]
type = parentvarset
trigger1 = MoveHit=1
trigger1 = p2stateno != [120,159]
var(35)=2
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = movecontact || movereversed
movetype = I
ignorehitpause = 1

[State -2, Spirit Gauge Increase]
type = parentvaradd
trigger1 = root,var(52)=2 ;Type-C Only
trigger1 = movecontact
trigger1 = root,var(54)<ceil(root,lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*root,fvar(11)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.85
ignorehitpause = 1
persistent = 0

[State 21100, CS]
type = changestate
trigger1 = animelemtime(3)>=6
value = 999

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.5,0.5
ignorehitpause = 1

;-----------------------------
; Bunbunmaru Photoshoot Projectile - Hit by Projectile
[Statedef 21802]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
sprpriority = 5

[State 21801, VA]
type = parentvaradd
trigger1 = time=0
var(53) = 25
persistent = 0
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
type = changestate
trigger1 = animelemtime(3)>=6
value = 999

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.5,0.5
ignorehitpause = 1

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
value = 1901

;---------------------------------------------------------------------------
; GC: ???
[Statedef 1901]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1900
poweradd = 0
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=0)||1
trigger1 = (var(12):=0)||1

[State 2000, GC NotHitBy]
type = NotHitBy
trigger1 = animelemtime(7)<0
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 220,0
channel = 0

[State 1400, Offset]
type = posadd
trigger1 = animelemtime(2)=0
x = 20
[State 1400, Offset]
type = posadd
trigger1 = animelemtime(4)=0
x = 10
[State 1400, Offset]
type = posadd
trigger1 = animelemtime(5)=0
x = 12
[State 1400, Offset]
type = posadd
trigger1 = animelemtime(8)=0
x = -10
[State 1400, Offset]
type = posadd
trigger1 = animelemtime(9)=0||animelemtime(10)=0
x = -16

[State 220, 1]
type = PlaySnd
trigger1 = animelemtime(5) = 0
value = 0, 2

[State 1000, Hitdef]
type = HitDef
triggerall = movecontact = 0 && movereversed=0
trigger1 = animelemno(0)=5
attr = S, SA
animtype  = Back;hard
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
priority = 4,hit
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-37
hitsound   = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=29+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.velocity = -12.0,-6.5
air.velocity = -12.0,-6.5
getpower = ceil(var(11)*1.6*fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)),ceil(var(11)*0.2)
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=29+20+3*(var(42)!=0)+var(34))<=1,1,var(32))+10;hitstun+pausetime value
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
id = 1900

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = movehit
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State 1400, STS]
type = statetypeset
trigger1 = animelemtime(6)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
;persistent=0

[State 1000, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------
; Guard Cancel Use Effect
[Statedef 21900]
anim = 2999+2000*ishelper(21902)
velset = 0,0
sprpriority = 3;-1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
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

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
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

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
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
pos = -9,-90
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
trigger1 = animelemtime(5) = 0
value = 220,0
channel = 0

[State 1400, Offset]
type = posadd
trigger1 = animelemtime(2)=0
x = 20
[State 1400, Offset]
type = posadd
trigger1 = animelemtime(4)=0
x = 10
[State 1400, Offset]
type = posadd
trigger1 = animelemtime(5)=0
x = 12
[State 1400, Offset]
type = posadd
trigger1 = animelemtime(8)=0
x = -10
[State 1400, Offset]
type = posadd
trigger1 = animelemtime(9)=0||animelemtime(10)=0
x = -16

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
sparkxy = -20,-37
hitsound   = s1,8
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