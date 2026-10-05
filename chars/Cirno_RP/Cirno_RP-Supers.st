;---------------------------------------------------------------------------
; Ice Sign "Icicle Fall"
[Statedef 2000]
type = U
movetype = A
physics = N
velset = 0,0
anim = 2000+0*floor(var(57):=0)
ctrl = 0
sprpriority = 1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = 2000,0
channel = 0

[State 2000, T]
type = turn
trigger1 = time = 0
trigger1 = statetype != A
trigger1 = p2dist x < 0

[State 2000, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S

[State 2000, VS]
type = varset
trigger1 = time = 0
var(10) = cond(statetype!=A,0,1)

[State 200, PSND]
type = PlaySnd
trigger1 = time = 0
value = 2000,0
channel = 0

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 40
;ignorehitpause = 
;persistent = 

[State 2000, VS]
type = varset
trigger1 = time = 0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 1999
stateno = 20000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 40
anim = -1
sound = S4,0
p2defmul = 1
poweradd = -1000
unhittable = 1
movetime = 40
darken = 0

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(2)=0
statetype = A
physics = N

[State 2000, VS]
type = velset
trigger1 = var(10)=0
trigger1 = animelemtime(2)=0
x = 0.0
y = -8.0

[State 2000, Grav]
type = veladd
trigger1 = var(10)=0
trigger1 = animelemtime(2)>2 && animelemtime(6)<0
trigger1 = vel y < 0.0
y = 0.5

[State 2000, VS]
type = velset
trigger1 = animelemtime(6)=0
x = 0.0
y = 0.0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 1100,0
channel = 0

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(7)=0||animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0||animelemtime(15)=0
trigger2 = animelemtime(17)=0||animelemtime(19)=0||animelemtime(21)=0||animelemtime(23)=0||animelemtime(25)=0
trigger3 = animelemtime(27)=0||animelemtime(29)=0||animelemtime(31)=0||animelemtime(33)=0||animelemtime(35)=0
trigger4 = animelemtime(37)=0||animelemtime(39)=0||animelemtime(41)=0||animelemtime(43)=0||animelemtime(45)=0
value = 1100,10
channel = 3

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7)=0||animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0||animelemtime(15)=0
trigger2 = animelemtime(17)=0||animelemtime(19)=0||animelemtime(21)=0||animelemtime(23)=0||animelemtime(25)=0
trigger3 = animelemtime(27)=0||animelemtime(29)=0||animelemtime(31)=0||animelemtime(33)=0||animelemtime(35)=0
trigger4 = animelemtime(37)=0||animelemtime(39)=0||animelemtime(41)=0||animelemtime(43)=0||animelemtime(45)=0
anim = 21100
ID = 22000
pos = 29+40*(AILevel=[1,2]),-58
postype = p1 ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7)=0||animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0||animelemtime(15)=0
trigger2 = animelemtime(17)=0||animelemtime(19)=0||animelemtime(21)=0||animelemtime(23)=0||animelemtime(25)=0
trigger3 = animelemtime(27)=0||animelemtime(29)=0||animelemtime(31)=0||animelemtime(33)=0||animelemtime(35)=0
trigger4 = animelemtime(37)=0||animelemtime(39)=0||animelemtime(41)=0||animelemtime(43)=0||animelemtime(45)=0
anim = 20209
ID = 20209
pos = 25+floor(11.0*random/1000.0)+40*(AILevel=[1,2]),-53+floor(11.0*random/1000.0)
postype = p1 ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
scale = 0.5,0.5
accel = 0.0,0.0
sprpriority = 5
ownpal = 1
removeongethit = 0

[State 2000, Projectile]
type = helper
trigger1 = animelemtime(7)=0||animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0||animelemtime(15)=0
trigger2 = animelemtime(17)=0||animelemtime(19)=0||animelemtime(21)=0||animelemtime(23)=0||animelemtime(25)=0
trigger3 = animelemtime(27)=0||animelemtime(29)=0||animelemtime(31)=0||animelemtime(33)=0||animelemtime(35)=0
trigger4 = animelemtime(37)=0||animelemtime(39)=0||animelemtime(41)=0||animelemtime(43)=0||animelemtime(45)=0
helpertype = normal
name = "Ice"
id = 22000
stateno = 22000
pos = 29+40*(AILevel=[1,2]),-58
postype = p1
ownpal = 1
facing = 1
size.xscale = 0.75
size.yscale = 0.75

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(46)=0
movetype = I

[State 2000, Grav]
type = veladd
trigger1 = animelemtime(51)>=0
y = 0.5

[State 2002, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2001

;---------------------------------------------------------------------------
; 236236xyz - Icicle Fall
[Statedef 2001]
type = S
movetype = I
physics = S
ctrl = 0
anim = 2001;1102
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

;----------------------
;Ice Proj
[Statedef 22000]
type = A
movetype = A
physics = N
juggle = 0
anim = 22000;20410
sprpriority = 5

[State 20410, AngleSet]
type = null
triggerall = time = 0
trigger1 = (fvar(0):=37)||1

[State 20410, Angle Variation]
type = null
triggerall = time = 0
trigger1 = (fvar(0):=fvar(0)+floor(5.0*random/1000.0))||1

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
stateno = 22001
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
value = 22001

;--------------------------
; 236236xyz Ice FX
[Statedef 22001]
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
stateno = 22002
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
X = 15.0*cos(fvar(0)*Pi/180.0)
Y = 15.0*sin(fvar(0)*Pi/180.0)

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

[State 200, OTG]
type = HitDef
trigger1 = !movecontact && !movereversed
attr = A,HP
damage = ceil(18*(root,fvar(11)/cond(root,var(57)=6,(root,fvar(30)),1))),2
animtype = Medium
guardflag = MA
hitflag = MAFD;P
priority = 4,Hit
pausetime = 0,8
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
ground.velocity = -4.0,-2.0
down.velocity = 0.0,0.0
air.type = Low
air.velocity = -4.0,-2.0
getpower = 0,0
givepower = 15,15
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 2000

[State 220, First Combo Hit]
type = parentvarset
triggerall = numtarget(2000)
trigger1 = target(2000),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 6;Change index
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.95*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 2000
ignorehitpause = 1

[State 20411, CS]
type = changestate
value = 22002
trigger1 = FrontEdgeBodyDist <= -32
trigger2 = MoveContact
trigger3 = screenpos y < -10

;--------------------------
; 236xyz Ice FX
[Statedef 22002]
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

[State 20415, CS]
type = changestate
trigger1 = time>5
value = 999

;---------------------------------------------------------------------------
; Blowing Ice "Ice Tornado"
[Statedef 2100]
type = S
movetype = A
physics = S
velset = 0,0
anim = 2100+0*floor(var(57):=0)
ctrl = 0
sprpriority = 1
facep2 = 1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = 2100,0
channel = 0

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 55
;ignorehitpause = 
;persistent = 

[State 2000, VS]
type = varset
trigger1 = time = 0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 1999
stateno = 20000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 40
anim = -1
sound = S4,0
p2defmul = 1
poweradd = -1000
unhittable = 1
movetime = 40
darken = 0

[State 2100, MHR]
type = movehitreset
trigger1 = animelemTime(5)>=0 && animelemtime(25)<0
persistent = 4

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemTime(5)>=0 && animelemtime(25)<0
persistent = 4
name = "Swirl"
id = 22100
stateno = 22100
pos = 0,-50
postype = p1
ownpal = 1
facing = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemTime(5)=0
name = "Swirl"
id = 22101
stateno = 22101
pos = 0,-50
postype = p1
ownpal = 1
facing = 1

[State Hitdef Ground Type]
type = HitDef
trigger1 = animelemTime(5)>=0 && animelemtime(25)<0
trigger1 = !movecontact && !movereversed
persistent = 4
attr = S,HA
hitflag = MAF
guardflag = M
animtype = Back
priority = 4,Hit
damage = ceil(18*(fvar(11)/cond(var(57)=7,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),2
getpower = 0,0
givepower = 15,15
pausetime = 4,10
sparkno = s8010+(random%2)
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
ground.velocity = -0.0-4.0*(animelemtime(24)>=0)*cond(p2dist x<0,-1,1),0.0-8.5*(animelemtime(24)>=0)
guard.velocity = -0.0-4.0*(animelemtime(24)>=0)*cond(p2dist x<0,-1,1)
air.velocity = -0.0-4.0*(animelemtime(24)>=0)*cond(p2dist x<0,-1,1),0.0-8.5*(animelemtime(24)>=0)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0+1*(animelemtime(24)>=0)
fall.recover = 0
id = 2100

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(2100)
trigger1 = target(2100),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 7;Change index
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemTime(5)=0
value = 2100,1
channel = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 2100
ignorehitpause = 1

[State 200, Damage Proration]
type = varset
trigger1 = Movehit=1
fvar(10) = fvar(10)*0.96*cond(fvar(10)>=1.0,(fvar(30)),1.0)
;ignorehitpause = 1
;persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(25)=0
trigger2 = movecontact||movereversed
trigger2 = animelemtime(24)>=0
movetype = I
persistent = 0
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemTime(25)=0
value = 800,1
channel = 0

[State 52, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;----------------------
;Ice Proj
[Statedef 22100]
type = A
movetype = I
physics = N
juggle = 0
anim = 1998
sprpriority = -1

[State 22100, Elem Select]
type = null
trigger1 = time = 0
trigger1 = (var(1):=floor(21.0*random/1000.0))||1
trigger1 = (var(2):=floor(10.0*random/1000.0))||1
trigger1 = (var(4):=(root,animelemtime(5)))||1
trigger1 = (var(1):=cond(var(4)%2=0,var(1),-var(1)))||1

[State 22100, Elem Select]
type = varset
trigger1 = time = 0
var(3) = 1*(var(2)=0)+7*(var(2)=1)+13*(var(2)=2)+19*(var(2)=3)+25*(var(2)=4)+31*(var(2)=5)+37*(var(2)=6)+44*(var(2)=7)+50*(var(2)=8)+56*(var(2)=9)

[State 22100, CA]
type = changeanim
trigger1 = time = 0
value = 22100
elem = var(3)

[State 621, CA]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno(-1)

[State 22100, Custom Timer]
type = varadd
trigger1 = time
trigger1 = !(root,hitpausetime)
var(0) = 1

[State 22100, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*var(0)/8.0),256
ignorehitpause 

[State 20210, AD]
type = AngleDraw
trigger1 = 1
value = var(1)
scale = 1.0+0.03*(var(4)+var(0)),1.0+0.03*(var(4)+var(0))
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

[State 22100, Zeeky]
type = destroyself
trigger1 = var(0) >= 8

;----------------------
;Ice Proj
[Statedef 22101]
type = A
movetype = I
physics = N
juggle = 0
anim = 22101
sprpriority = 5

[State 2100, PSND]
type = playsnd
trigger1 = time = 0
value = 2100,10
channel = 3

[State 22101, BTR]
type = bindtoroot
trigger1 = 1
pos = 0,-50

[State 22100, Custom Timer]
type = varadd
trigger1 = time
trigger1 = !(root,hitpausetime)
var(0) = 1

[State 22101, AD]
type = AngleDraw
trigger1 = 1
scale = 2+0.03*var(0),1.4+0.021*var(0)
ignorehitpause = 1

[State 21501, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22100, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause 

[State 21501, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 22101, SS]
type = stopsnd
trigger1 = root,stateno != 2100
trigger2 = root,stateno = 2100
trigger2 = root,animelemtime(27)>=0
channel = 3

[State 22101, CS]
type = destroyself
trigger1 = root,stateno != 2100

[State 22101, CS]
type = changestate
trigger1 = root,stateno = 2100
trigger1 = root,animelemtime(27)>=0
value = 22102

;----------------------
;Ice Proj
[Statedef 22102]
type = A
movetype = I
physics = N
juggle = 0
sprpriority = 5

[State 22101, AD]
type = AngleDraw
trigger1 = time
scale = 2+0.03*var(0),1.4+0.021*var(0)
ignorehitpause = 1

[State 21501, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22100, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/16.0),256
ignorehitpause 

[State 21501, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 22100, Zeeky]
type = destroyself
trigger1 = time >= 16

;---------------------------------------------------------------------------
; "Perfect Freeze"
[Statedef 4000]
type = U
movetype = A
physics = N
velset = 0,0
anim = 4000+1*(statetype=A)
ctrl = 0
sprpriority = 1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = 4000,0
channel = 0

[State 2000, IKEMEN BUGFIX]
type = NotHitBy
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 131
ignorehitpause = 1

[State 2000, T]
type = turn
trigger1 = time = 0
trigger1 = statetype != A
trigger1 = p2dist x < 0

[State 2000, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S

[State 2000, VS]
type = varset
trigger1 = time = 0
var(10) = cond(statetype!=A,0,1)

[State 200, PSND]
type = PlaySnd
trigger1 = time = 0
value = 4000,0
channel = 0

[State 2000, VS]
type = varset
trigger1 = time = 0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 131
supermovetime = 131

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 3999
stateno = 20000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 131
supermovetime = 131

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 131
anim = -1
sound = S4,2
p2defmul = 1
poweradd = -3000
unhittable = 1
movetime = 131
darken = 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(6)=0
helpertype = normal
name = "Danmaku Spawner"
id = 24000
stateno = 24000
pos = 0,-118
postype = p1
ownpal = 1
facing = 1
pausemovetime = 131
supermovetime = 131

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(17)=0
value = 4000,1
channel = 0

[State 4000, Recovery Flag]
type = statetypeset
trigger1 = animelemtime(36)=0
movetype = I
ignorehitpause = 1
persistent = 0

[State 52, 5]
type = ChangeState
trigger1 = statetype != A
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 4000, Grav]
type = veladd
trigger1 = statetype = A
trigger1 = animelemtime(50)>=0
y = 0.5

[State 52, 5]
type = ChangeState
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4001

;---------------------------------------------------------------------------
; "Perfect Freeze"
[Statedef 4001]
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

;----------------------
;Ice Proj
[Statedef 24000]
type = A
movetype = I
physics = N
juggle = 0
anim = 24000
sprpriority = 5

[State 24000, BTR]
type = bindtoroot
trigger1 = 1
pos = 0,-118

[State 21501, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, Scale]
type = angledraw
trigger1 = 1
scale = 1.0+0.1*(time%4=1)-0.1*(time%4=3),1.0+0.1*(time%4=1)-0.1*(time%4=3)
value = floor(360.0*random/1000.0)
ignorehitpause = 1

[State 21501, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 24000, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 24000, PSND]
type = playsnd
trigger1 = root,animelemtime(26)<0
persistent = 4
value = 4000,10
channel = 3

[State 0, Projectile]
type = Projectile
trigger1 = root,animelemtime(26)<0
trigger1 = (fvar(0):=0.2+0.02*floor(10.0*random/1000.0))||1
trigger1 = (var(0):=floor(360.0*random/1000.0))||1
ProjID = 24001
projanim = 24001
projscale = fvar(0),fvar(0)
projremove = 1
projremovetime = -1
velocity = 10.0*cos(var(0)*pi/180.0),-10.0*sin(var(0)*pi/180.0)
projhits = 0
projpriority = 1
projsprpriority = 3
projedgebound = 60
projstagebound = 60
projheightbound = -360,120
offset = 0,0
postype = p1
projshadow = 0,0,0
supermovetime = 9999
pausemovetime = 9999

[State 24000, CS]
type = changestate
trigger1 = root,stateno = 4000
trigger1 = root,animelemtime(35)>=0
value = 24001

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,stateno != [4000,4001]

;----------------------
;Ice Proj
[Statedef 24001]
type = A
movetype = A
physics = N
juggle = 0
anim = 24010
sprpriority = 5

[State 24001, Freeze]
type = Explod
trigger1 = time = 0
anim = 24002
ID = 24002
pos = 0,0
postype = Left
bindtime = -1
removetime = -2
ownpal = 1
ontop = 1
sprpriority = 5
scale = 1.05,1.05
ignorehitpause = 1
persistent = 0

[State 24001, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/16.0),256
ignorehitpause = 1

[State 24001, Zeeky]
type = destroyself
trigger1 = time >= 16

[State 24000, PSND]
type = playsnd
trigger1 = time = 0
persistent = 0
value = 4000,11
channel = 3

[State 21501, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1000, 5]
type = Hitdef
trigger1 = time = 0
attr = A,HP
animtype = Hard
damage = 396,79
priority = 4,Hit
hitflag = MAFP
guardflag = MA
pausetime = 0,6;10
sparkxy = floor(p2dist x),floor(p2dist y)-100
sparkno = s8020+(random%2)
guard.sparkno = s8030
hitsound = -1;s1,6
guardsound = s2,0
ground.type = High
ground.slidetime = 29
ground.hittime = 29
guard.slidetime = 11
ground.slidetime = 11
ground.velocity = -6;,-6.25
guard.velocity = -6
air.velocity = -6,-6.25
airguard.velocity = -6,-6.25
yaccel = 0.5
guard.dist = 360
fall = 0
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 500,500
id = 4000
p2facing = 1

[State 2000, PSND]
type = parentvarset
trigger1 = movehit
fvar(10) = root,fvar(10)*0.80*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 1211, Freeze]
type = parentvarset
trigger1 = movehit
persistent = 0
ignorehitpause = 1
var(25) = 1

[State 0, Freeze]
type = TargetState
trigger1 = (movehit) && (p2stateno!=[1350,1355]) && (p2stateno!=4050)
value = 4050 ;1350
ID = 4000
ignorehitpause =1

[State 24001, Zeeky]
type = changestate
trigger1 = time >= 4
value = cond(movehit,21401,999)

;----------------------
;Ice Proj
[Statedef 24010]
type = A
movetype = I
physics = N
juggle = 0
anim = 24000
sprpriority = 5

[State 24001, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/16.0),256
ignorehitpause = 1

[State 24001, Zeeky]
type = destroyself
trigger1 = time >= 16

;-------------------------------
; 421xyz Freeze 1
[Statedef 4050]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,-10
;ignorehitpause = 
;persistent =

[State 0, StateTypeSet]
type = velset
trigger1 = statetype != A
trigger2 = time
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

;[State 1260, CS]
;type = changestate
;triggerall = time >= 6
;triggerall = random%2=0
;trigger1 = AILevel <= 0
;trigger1 = command = "x" || command = "y" || command = "z" 
;trigger2 = AILevel <= 0
;trigger2 = command = "a" || command = "b" || command = "c"
;trigger3 = AILevel > 0
;trigger3 = random <= 100.0*(AILevel**2)/64.0
;value = 1351

;---------------------------------------------------------------------------
; "Great Crusher"
[Statedef 4100]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4100
ctrl = 0
sprpriority = 1
facep2 = 1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = 2100,0
channel = 0

[State 2000, IKEMEN BUGFIX]
type = NotHitBy
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 40
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = time = 0
value = 2100,0
channel = 0

[State 2000, VS]
type = varset
trigger1 = time = 0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 3999
stateno = 20000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 40
anim = -1
sound = S4,2
p2defmul = 1
poweradd = -3000
unhittable = 1
movetime = 40
darken = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(12)=0
value = 4100,0
channel = 0

[State 4100, Here Comes Another Chinese Earthquake]
type = EnvShake
trigger1 = animelemtime(14)=0
time = 10
ampl = -6
freq = 120 ;Ebrbrbrbrbrbrbrbrbrbrbrbrbr

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(14)=0
value = 4100,10
channel = 3

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(13)=0
helpertype = normal
name = "Stop!_Hammer_Time"
id = 24100
stateno = 24100
pos = 0,0
postype = p1
ownpal = 1
facing = 1

[State Hitdef Ground Type]
type = HitDef
trigger1 = animelemTime(14)>=0 && animelemtime(15)<0
trigger1 = !movecontact && !movereversed
attr = S,HA
hitflag = MAF
guardflag = H
animtype = Back
priority = 4,Hit
damage = 441,88
getpower = 0,0
givepower = 600,600
pausetime = 10,10
sparkno = s8020+(random%2)
guard.sparkno = s8030
sparkxy = -10,-55
hitsound = S1,8
guardsound = S2,0
ground.type = High
ground.slidetime = 24+3*((var(42)>=1))
ground.hittime = 24+3*((var(42)>=1))
guard.slidetime = 21+6
guard.hittime = 21+6
air.hittime = 24
yaccel = 0.5
ground.velocity = -1.0,12
guard.velocity = -1.0
air.velocity = -1.0,12.5
down.velocity = -1.0,12.5;-.5,-16.5;-4.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
id = 4100

[State 200, Damage Proration]
type = varset
trigger1 = Movehit
fvar(10) = fvar(10)*0.4*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 4100
ignorehitpause = 1

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(15)=0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 52, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;----------------------
;U Cant Touch This
[Statedef 24100]
type = A
movetype = I
physics = N
juggle = 0
anim = 24100
sprpriority = 5

[State 24100, I Told You Homeboy]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 24000, BTR]
type = bindtoroot
trigger1 = 1
pos = 0,0

[State 21501, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

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

[State 24100, Scale]
type = angledraw
trigger1 = 1
scale = 1.6,1.6
ignorehitpause = 1

[State 24100, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-cond(animelemtime(7)<0,0,floor(256.0*animelemtime(7)/16.0)),256
ignorehitpause = 1

[State 24100, Sakuya-san! Sakuya-san! Hammer Time Stahp!]
type = destroyself
trigger1 = animelemtime(7)>=16
trigger2 = root,stateno != 4100