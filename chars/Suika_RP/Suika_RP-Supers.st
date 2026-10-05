;---------------------------------------------------------------------------
; "Throwing Mt. Tokagushi"
[Statedef 2000]
type = S
movetype = A
physics = S
velset = 0,0
anim = 2000+0*floor(var(10):=0)
poweradd = -1000
ctrl = 0
sprpriority = 1
facep2 = 1

[State 800, CS]
type = changestate
trigger1 = numtarget(2000)
trigger1 = movehit
value = 2010
ignorehitpause = 1
persistent = 0

[State 2000, Startup Invuln];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = animelemtime(8)<0
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = time=0
value = 2000,0
channel = 0

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 4000, Effect]
type = helper
trigger1 = time = 4
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
trigger1 = time = 4
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
trigger1 = time = 4
time = 40
anim = -1
sound = S4,0
p2defmul = 1
unhittable = 1
movetime = 40
darken = 0

[State 2000, PA]
type = posadd
trigger1 = animelemtime(7)=0
x = 20

[State 800, IDDQD]
type = HitDef
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
trigger1 = var(30)=0 ;Throw Limited
attr = S,HT
hitflag = M-
guardflag = 
fall.animtype = Diagup
priority = 7,Miss
damage = 0,0
pausetime = 0,0
sparkno = -1
hitsound = 1,1
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1facing = 1
p2facing = 1
id = 2000
numhits = 0

[State ASS]
type = AttackDist
trigger1 = animelemtime(8)<0
value = 0

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(8)=0
statetype = A
physics = N
ignorehitpause = 1

[State 2000, VS]
type = velset
trigger1 = animelemtime(8)=0
trigger1 = (var(10):=1)||1
y = -10.0

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(8)=0
value = 2000,10
channel = 7

[State 1100, Proj]
type = helper
trigger1 = animelemtime(10)=0
helpertype = normal
name = "TheRockSays"
ID = 22000
pos = 26,-69
postype = p1
stateno = 22000
ownpal = 1
facing = 1

[State 2000, SSND]
type = stopsnd
trigger1 = animelemtime(26)=0
channel = 7
[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(26)=0
value = 2000,11

[State 2000, VS]
type = velset
trigger1 = animelemtime(26)=0
x = -4.0
y = -4.0

[State 2000, Grav]
type = veladd
trigger1 = animelemtime(10)>=0 && animelemtime(26)<0
trigger1 = vel y < -0.5
trigger2 = animelemtime(26)>0
y = 0.5

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(26)=1
movetype = I

[State 1100, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2001
ctrl = 0

;---------------------------------------------------------------------------
; "Throwing Mt. Tokagushi" Landing
[Statedef 2001]
type = S
movetype = I
physics = S
ctrl = 0
anim = 2001
sprpriority = 1
velset = 0,0
movehitpersist = 1
facep2 = 0

[State 4117, PSND]
type = playsnd
trigger1 = time = 0
value = 40,0

[State 626, PS]
type = posset
trigger1 = time = 0
y = 0

[State 226, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; "Throwing Mt. Tokagushi" - Command Grab Ver
[Statedef 2010]
type = S
movetype = A
physics = S
velset = 0,0
anim = 2010
ctrl = 0
sprpriority = 1
facep2 = 1

[State 2000, Timer Freeze]
type = assertspecial
trigger1 = time >= 0
flag = timerfreeze
ignorehitpause = 1

[State 1250, SB]
type = ScreenBound
trigger1 = animelemtime(40)<0
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 2010, PSND]
type = playsnd
trigger1 = time = 0
value = 1,1

[State 2010, TS]
type = targetstate
trigger1 = time = 0
id = 2000
value = 2050
[State 1201, TF]
type = targetfacing
trigger1 = time = 0
id = 2000
value = -1
ignorehitpause = 1
[State 1001, TB]
type = TargetBind
trigger1 = time=0
id = 2000
pos = 25,0
ignorehitpause = 1

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(8)=0
statetype = A
physics = N
ignorehitpause = 1

[State 2000, VS]
type = velset
trigger1 = animelemtime(8)=0
y = -6.0

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(8)=0
value = 2000,10
channel = 7

[State 1100, Proj]
type = helper
trigger1 = animelemtime(10)=0
helpertype = normal
name = "TheRockSays"
ID = 22000
pos = 26,-69
postype = p1
stateno = 22000
ownpal = 1
facing = 1

[State 1001, TB]
type = TargetBind
trigger1 = animelemno(0)=8
id = 2000
pos = 15,-70
ignorehitpause = 1
[State 1001, TB]
type = TargetBind
trigger1 = animelemno(0)=9
id = 2000
pos = 22,-70

[State 22000, BTR]
Type = Targetbind
trigger1 = ((animelemno(0)=10)||(animelemno(0)=17))
trigger2 = ((animelemno(0)=24)||(animelemno(0)=31))
id = 2000
Pos = 25,-70

[State 22000, BTR]
Type = Targetbind
trigger1 = ((animelemno(0)=11)||(animelemno(0)=18))
trigger2 = ((animelemno(0)=25)||(animelemno(0)=32))
id = 2000
Pos = 30,-50

[State 22000, BTR]
Type = Targetbind
trigger1 = ((animelemno(0)=12)||(animelemno(0)=19))
trigger2 = ((animelemno(0)=26)||(animelemno(0)=33))
id = 2000
Pos = 15,-25

[State 22000, BTR]
Type = Targetbind
trigger1 = ((animelemno(0)=13)||(animelemno(0)=20))
trigger2 = ((animelemno(0)=27)||(animelemno(0)=34))
id = 2000
Pos = -10,-20

[State 22000, BTR]
Type = Targetbind
trigger1 = ((animelemno(0)=14)||(animelemno(0)=21))
trigger2 = ((animelemno(0)=28)||(animelemno(0)=35))
id = 2000
Pos = -30,-45

[State 22000, BTR]
Type = Targetbind
trigger1 = ((animelemno(0)=15)||(animelemno(0)=22))
trigger2 = ((animelemno(0)=29)||(animelemno(0)=36))
id = 2000
Pos = -30,-75

[State 22000, BTR]
Type = Targetbind
trigger1 = ((animelemno(0)=16)||(animelemno(0)=23))
trigger2 = ((animelemno(0)=30)||(animelemno(0)=37))
id = 2000
Pos = -10,-85

[State 22000, BTR]
Type = targetbind
trigger1 = animelemno(0)=38
id = 2000
Pos = 25,-65

[State 2010, TS]
type = targetstate
trigger1 = animelemtime(39)=0
id = 2000
value = 2051

[State 2000, SSND]
type = stopsnd
trigger1 = animelemtime(40)=0
channel = 7
[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(40)=0
value = 2000,11

[State 2000, VS]
type = velset
trigger1 = animelemtime(40)=0
x = -4.0
y = -4.0

[State 2000, Grav]
type = veladd
trigger1 = animelemtime(10)>=0 && animelemtime(40)<0
trigger1 = vel y < -0.5
trigger2 = animelemtime(40)>0
y = 0.5

[State 2010, TLA]
type = targetlifeadd
trigger1 = numtarget(2000)
trigger1 = target(2000),stateno = 2052
id = 2000
value = -ceil(300.0*fvar(11))
kill = 1
persistent = 0
[State 2010, TLA]
type = targetpoweradd
trigger1 = numtarget(2000)
trigger1 = target(2000),stateno = 2052
id = 2000
value = 300
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = numtarget(2000)
trigger1 = target(2000),stateno = 2052
persistent=0
anim = 8020+(random%2)
ID = 8000
pos = 0,0
postype = p2 ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, Explod]
type = varset
trigger1 = numtarget(2000)
trigger1 = target(2000),stateno = 2052
persistent=0
fvar(10)=fvar(10)*0.50*cond(fvar(10)>=1.0,(fvar(30)),1.0)
[State 0, Explod]
type = varset
trigger1 = numtarget(2000)
trigger1 = target(2000),stateno = 2052
persistent=0
var(4)=1

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(40)=1
movetype = I

[State 1100, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2001
ctrl = 0

;---------------------------------------------------------------------------
; Kidnapping Oni Grabbed
[Statedef 2050]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 2050

[State 1250, SB]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Kidnapping Oni Grabbed
[Statedef 2051]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 1998

[State 1250, SB]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 22001, VS]
type = velset
trigger1 = time>=0
x = -6.0
y = 12.0

[State 22001, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2052

;---------------------------------------------------------------------------
; Kidnapping Oni Grabbed
[Statedef 2052]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 20
freq = 60
ampl = -4

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 2051

[State 2052, VS]
type = velset
trigger1 = animelemtime(2)=0
x = -0.5
y = -10.0

[State 2052, VA]
type = veladd
trigger1 = animelemtime(2)>0
y = 0.5

[State 22001, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y>=-(vel y)
value = 6100

;---------------------------------------------------------------------------
; Tokagushi Rock
[Statedef 22000]
type = A
movetype = I
physics = N
ctrl = 0
anim = 1998
sprpriority = 0

[State 22000, TypeSet]
type = varset
trigger1 = time = 0
var(10) = root,var(10)

[State 22000, Parent Helper Unique Identifier]
; See beginning of state 22010 for more details on what the purpose of this controller is
type = varset
trigger1 = time = 0
var(40) = random*1000+random ;8-digit unique identifier

[State 20620, ASS]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 21000, AD]
Type = AngleDraw
Trigger1 = 1
Scale = 1.0,1.0
ignorehitpause = 1

[State 22000, NHB]
type = nothitby
trigger1 = time>=0
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 22000, Stones and other Shit]
Type = Helper
Trigger1 = Time%4 = 0
Name = "Rawk"
ID = 22010;12100 + Time/3
pos = floor(500.0*Cos((fvar(1):=(2*Pi*Random/1000.0)))),floor(500.0*Sin(fvar(1)))
PosType = P1
StateNo = 22010
OwnPal = 1

[State 22000, Stones and other Shit]
Type = Helper
trigger1 = var(21)<5
Trigger1 = Time%4 = 0
trigger1 = (var(21):=var(21)+1)
Name = "Rawk"
ID = 22010+var(21)
pos = 0,0
PosType = P1
StateNo = 22011
OwnPal = 1

[State 22000, BTR]
Type = BindToParent
trigger1 = ((root,stateno=2000)||(root,stateno=2010)) && ((root,animelemno(0)=10)||(root,animelemno(0)=17))
trigger2 = ((root,stateno=2010)||(root,stateno=2010)) && ((root,animelemno(0)=24)||(root,animelemno(0)=31))
Pos = 25,-70

[State 22000, BTR]
Type = BindToParent
trigger1 = ((root,stateno=2000)||(root,stateno=2010)) && ((root,animelemno(0)=11)||(root,animelemno(0)=18))
trigger2 = ((root,stateno=2010)||(root,stateno=2010)) && ((root,animelemno(0)=25)||(root,animelemno(0)=32))
Pos = 30,-50

[State 22000, BTR]
Type = BindToParent
trigger1 = ((root,stateno=2000)||(root,stateno=2010)) && ((root,animelemno(0)=12)||(root,animelemno(0)=19))
trigger2 = ((root,stateno=2010)||(root,stateno=2010)) && ((root,animelemno(0)=26)||(root,animelemno(0)=33))
Pos = 15,-25

[State 22000, BTR]
Type = BindToParent
trigger1 = ((root,stateno=2000)||(root,stateno=2010)) && ((root,animelemno(0)=13)||(root,animelemno(0)=20))
trigger2 = ((root,stateno=2010)||(root,stateno=2010)) && ((root,animelemno(0)=27)||(root,animelemno(0)=34))
Pos = -10,-20

[State 22000, BTR]
Type = BindToParent
trigger1 = ((root,stateno=2000)||(root,stateno=2010)) && ((root,animelemno(0)=14)||(root,animelemno(0)=21))
trigger2 = ((root,stateno=2010)||(root,stateno=2010)) && ((root,animelemno(0)=28)||(root,animelemno(0)=35))
Pos = -30,-45

[State 22000, BTR]
Type = BindToParent
trigger1 = ((root,stateno=2000)||(root,stateno=2010)) && ((root,animelemno(0)=15)||(root,animelemno(0)=22))
trigger2 = ((root,stateno=2010)||(root,stateno=2010)) && ((root,animelemno(0)=29)||(root,animelemno(0)=36))
Pos = -30,-75

[State 22000, BTR]
Type = BindToParent
trigger1 = ((root,stateno=2000)||(root,stateno=2010)) && ((root,animelemno(0)=16)||(root,animelemno(0)=23))
trigger2 = ((root,stateno=2010)||(root,stateno=2010)) && ((root,animelemno(0)=30)||(root,animelemno(0)=37))
Pos = -10,-85

[State 22000, BTR]
Type = BindToParent
trigger1 = root,stateno = 2000
Trigger1 = root,animelemno(0)=24
trigger2 = root,stateno = 2010
Trigger2 = root,animelemno(0)=38
Pos = 25,-65

[State 22000, Projectile Attack]
type = changeanim
triggerall = root,stateno = 2000
trigger1 = root,animelemno(0)=25
value = 22000

[State 22000, Projectile Attack]
type = changestate
trigger1 = root,stateno = 2000
trigger1 = root,animelemno(0)=25
trigger2 = root,stateno = 2010
trigger2 = root,animelemno(0)=39
value = 22001

[State 21000, Zeeky]
type = destroyself
trigger1 = root,stateno != [2000,2010]
trigger2 = root,movetype = H
trigger3 = root,alive = 0

;---------------------------------------------------------------------------
; Tokagushi Rock
[Statedef 22001]
type = A
movetype = A
physics = N
ctrl = 0
;anim = 1998
sprpriority = 5
movehitpersist = 1

[State 22000, NHB]
type = nothitby
trigger1 = time>=0
value = ,AA,AT
ignorehitpause = 1

[State 22101, HitOverride]
type = HitOverride
trigger1 = time=0
attr = SCA,AA,AP
slot = 0
stateno = 22002
time = -1
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = (var(10)=0)
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 22001, VS]
type = velset
trigger1 = time>=0
x = 12.0-6.0*(var(10)=0)
y = 12.0

[State 20620, ASS]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 21000, AD]
Type = AngleDraw
Trigger1 = 1
Scale = 1.0,1.0
ignorehitpause = 1

[State 1010, HitDef]
type = Hitdef
trigger1 = time
trigger1 = !movecontact && !movereversed
attr = A,HP
animtype = Back
damage = ceil(210.0*root,fvar(11)),42
priority = 4,Hit
hitflag = MAFD
guardflag = MA
pausetime = 0,8
sparkno = s8020+(random%2)
guard.sparkno = s8030
sparkxy = -10,0
hitsound = s1,8
guardsound = s2,0
ground.type = High
ground.slidetime = 19
ground.hittime = 19
air.hittime = 19
guard.slidetime = 11
guard.hittime = 11
ground.velocity = -12.0,-6.5
guard.velocity = -12.0
air.velocity = -12.0,-6.5
airguard.velocity = -12.0,-6.5
down.velocity = -12.0,-6.5
p1sprpriority = 5
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0,0
givepower = 300,300
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 2000

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 2000
ignorehitpause = 1

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.7*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 22001, PSND]
type = playsnd
trigger1 = !movecontact
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1,8

[State 22001, CS]
type = changestate
trigger1 = movecontact
trigger2 = vel y > 0
trigger2 = pos y >= -(vel y)
value = 22002

;---------------------------------------------------------------------------
; Tokagushi Rock
[Statedef 22002]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1998
sprpriority = 5
movehitpersist = 1

[State 22000, NHB]
type = nothitby
trigger1 = time>=0
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 20620, ASS]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 21000, AD]
Type = Changestate
trigger1 = time>=60
value = 999

;---------------------------------------------------------------------------
; Moar Rocks
[Statedef 22010]
type = A
movetype = I
physics = N
ctrl = 0
anim = 22010
sprpriority = 5

;The following Parent Destruct Safeguard segment of code is open source.
;Feel free to use, reuse, and/or modify. ~Ricepigeon
;Author's note: This segment of code may become obsolete in future versions of MUGEN
;once multiple trigger redirection and/or parentexist triggers are implemented
[State 301, Parent Destruct Safeguard]
type = varset
trigger1 = time = 0
var(10) = parent,id ;Set to parent's PlayerID
[State 301, Parent Destruct Safeguard]
type = varset
trigger1 = time = 0
trigger1 = playeridexist(var(10))
var(40) = playerid(var(10)),var(40) ;Set to Parent's unique random identifier
[State 301, Parent Destruct Safeguard]
type = destroyself
;Scenario 1: Parent no longer exists, Helper with Parent's Player ID doesn't exist
trigger1 = !playeridexist(var(10))
;Scenario 2: Helper with Parent's Player ID exists, but unique identifiers don't match
; (1/1000 chance of false positive)
trigger2 = playeridexist(var(10))
trigger2 = playerid(var(10)),var(40) != var(40)
trigger3 = playeridexist(var(10))
trigger3 = playerid(var(10)),stateno = 999

[State 20620, ASS]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 22000, NHB]
type = nothitby
trigger1 = time>=0
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 22010, VS]
type = VarSet
trigger1 = time = 0
trigger1 = rootdist x > 0
fvar(0) = Atan(RootDist Y/RootDist X)
[State 22010, VS]
Type = VarSet
Trigger1 = Time = 0
Trigger1 = rootdist x < 0
fvar(0) = Atan(RootDist Y/RootDist X) + Pi

[State 22010, VelS]
Type = VelSet
Trigger1 = 1
X = 45*cos(fvar(0))
Y = 45*sin(fvar(0))

[State 22010, VS]
Type = VarSet
Trigger1 = Time = 0
var(1) = floor(360.0*random/1000.0)

[State 22010, VS]
Type = VarSet
Trigger1 = Time = 0
fvar(2) = 0.5 + (0.5*random/1000.0)

[State 22010, AD]
type = AngleDraw
trigger1 = time>=0
value = var(1)
scale = fvar(2),fvar(2)
ignorehitpause = 1

[State 22010, Zeeky]
type = DestroySelf
trigger1 = Vel X >= 0
trigger1 = FrontEdgeDist < -const240p(20)
trigger2 = Vel X <= 0
trigger2 = BackEdgeDist < -const240p(20)
trigger3 = Vel Y >= 0
trigger3 = ScreenPos Y > const240p(260)
trigger4 = Vel Y <= 0
trigger4 = ScreenPos Y < -const240p(20)
trigger5 = Time > 60

;---------------------------------------------------------------------------
; Moar Rocks
[Statedef 22011]
type = A
movetype = I
physics = N
ctrl = 0
anim = 22010
sprpriority = 0

[State 20620, ASS]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 22000, NHB]
type = nothitby
trigger1 = time>=0
value = SCA,AA,AP,AT
ignorehitpause = 1

;The following Parent Destruct Safeguard segment of code is open source.
;Feel free to use, reuse, and/or modify. ~Ricepigeon
;Author's note: This segment of code may become obsolete in future versions of MUGEN
;once multiple trigger redirection and/or parentexist triggers are implemented
[State 301, Parent Destruct Safeguard]
type = varset
trigger1 = time = 0
var(10) = parent,id ;Set to parent's PlayerID
[State 301, Parent Destruct Safeguard]
type = varset
trigger1 = time = 0
trigger1 = playeridexist(var(10))
var(40) = playerid(var(10)),var(40) ;Set to Parent's unique random identifier
[State 301, Parent Destruct Safeguard]
type = destroyself
;Scenario 1: Parent no longer exists, Helper with Parent's Player ID doesn't exist
trigger1 = !playeridexist(var(10))
;Scenario 2: Helper with Parent's Player ID exists, but unique identifiers don't match
; (1/1000 chance of false positive)
trigger2 = playeridexist(var(10))
trigger2 = playerid(var(10)),var(40) != var(40)
trigger3 = playeridexist(var(10))
trigger3 = playerid(var(10)),stateno = 999

[State 22011, VS]
type = null
triggerall = time = 0
trigger1 = ishelper(22011)
trigger1 = (var(0):=0)||1
trigger1 = (var(1):=0)||1
trigger2 = ishelper(22012)
trigger2 = (var(0):=10)||1
trigger2 = (var(1):=0)||1
trigger3 = ishelper(22013)
trigger3 = (var(0):=0)||1
trigger3 = (var(1):=20)||1
trigger4 = ishelper(22014)
trigger4 = (var(0):=-30)||1
trigger4 = (var(1):=0)||1
trigger5 = ishelper(22015)
trigger5 = (var(0):=0)||1
trigger5 = (var(1):=-40)||1

[State 22011, Bootleg BTR]
type = bindtoparent;posset
trigger1 = playeridexist(var(10))
pos = var(0),var(1)
;x = floor(playerid(var(10)),pos x + fvar(3))
;y = floor(playerid(var(10)),pos y + fvar(4))

[State 22010, VS]
Type = VarSet
Trigger1 = Time = 0
var(2) = floor(360.0*random/1000.0)

[State 22010, VS]
Type = VarSet
Trigger1 = Time = 0
fvar(2) = 0.75 + (0.25*random/1000.0)

[State 22010, AD]
type = AngleDraw
trigger1 = time>=0
value = var(2)
scale = fvar(2),fvar(2)
ignorehitpause = 1

[State 22010, Changestate]
type = changestate
trigger1 = playeridexist(var(10))
trigger1 = playerid(var(10)),stateno != [22000,22001]
value = 22012

;---------------------------------------------------------------------------
; Moar Rocks
[Statedef 22012]
type = A
movetype = I
physics = N
ctrl = 0
anim = 22010
sprpriority = 0

[State 20620, ASS]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 22000, NHB]
type = nothitby
trigger1 = time>=0
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 22010, VS]
Type = VarSet
Trigger1 = Time = 0
var(3) = floor(360.0*random/1000.0)

[State 22010, AD]
type = AngleDraw
trigger1 = time>=0
value = var(2)
scale = fvar(2),fvar(2)
ignorehitpause = 1

[State 22012, VS]
type = velset
trigger1 = time = 0
x = -3.0+(6.0*random/1000.0) 
y = -6.0-(1.0*random/1000.0)

[State 22012, Grav]
type = veladd
trigger1 = time > 0
y = 0.5

[State 22012, Alpha]
type = trans
trigger1 = time>=0
trans = addalpha
alpha = 256-floor(256.0*time/30.0),floor(256.0*time/30.0)
ignorehitpause = 1

[State 22012, Zeeky]
type = destroyself
trigger1 = time>=30

;---------------------------------------------------------------------------
; "Three Step Destruction"
[Statedef 2100]
type = S
movetype = A
physics = S
velset = 0,0
anim = 2100+0*floor(var(57):=0)
ctrl = 0
sprpriority = 1
facep2 = 1

[State 2000, Startup Invuln];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 40
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = time=0
value = 2000,0
channel = 0

[State 2000, VS]
type = varset
trigger1 = time=0
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

[State 1000, PA]
type = posadd
trigger1 = animelemtime(23)=0
trigger2 = animelemtime(32)=0
trigger3 = animelemtime(41)=0
x = 10
[State 1000, PA]
type = posadd
trigger1 = (animelemtime(24)=0||animelemtime(25)=0)
trigger2 = (animelemtime(33)=0||animelemtime(34)=0)
trigger3 = (animelemtime(42)=0||animelemtime(43)=0)
x = 5

[State 2100, Forward Vel]
type = velset
trigger1 = animelemtime(23)=0
x = 5.0/0.85

[State 2100, Forward Vel]
type = velset
trigger1 = animelemtime(32)=0
trigger2 = animelemtime(41)=0
x = 6.0/0.85

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(26)=0
trigger2 = animelemtime(35)=0
trigger3 = animelemtime(44)=0
value = 1000,10
channel = 1

[State 2100, ScaleMe];2x Growth
type = angledraw
trigger1 = animelemtime(29)>=0 && animelemtime(31)<0
value = 0
scale = 1.0+(animelemtime(29)/10.0),1.0+(animelemtime(29)/10.0)
ignorehitpause = 1
[State 2100, ScaleMe];2x Growth
type = angledraw
trigger1 = animelemtime(31)>=0 && animelemtime(38)<0
value = 0
scale = 2.0,2.0
ignorehitpause = 1

[State 2100, ScaleMe];2x Growth
type = width
trigger1 = animelemtime(31)>=0 && animelemtime(38)<0
value = 16,16
ignorehitpause = 1

[State 2100, PSND]
type = playsnd
trigger1 = animelemtime(29)=0
trigger2 = animelemtime(38)=0
value = 2100,10
channel = 7

[State 2100, ScaleMe];2x Growth
type = angledraw
trigger1 = animelemtime(38)>=0 && animelemtime(40)<0
value = 0
scale = 2.0+(animelemtime(38)/10.0),2.0+(animelemtime(38)/10.0)
ignorehitpause = 1
[State 2100, ScaleMe];2x Growth
type = angledraw
trigger1 = animelemtime(40)>=0 && animelemtime(49)<0
value = 0
scale = 3.0,3.0
ignorehitpause = 1

[State 2100, ScaleMe];2x Growth
type = width
trigger1 = animelemtime(40)>=0 && animelemtime(49)<0
value = 32,32
ignorehitpause = 1

[State 2100, ScaleMe];2x Growth
type = angledraw
trigger1 = animelemtime(49)>=0 && animelemtime(51)<0
value = 0
scale = 3.0-(2.0*animelemtime(49)/10.0),3.0-(2.0*animelemtime(49)/10.0)
ignorehitpause = 1

[State 2100, PSND]
type = playsnd
trigger1 = animelemtime(49)=0
value = 2100,11

[State 1000, Damage Calc]
type = null
trigger1 = time = 0
trigger1 = (var(16):=70)||1
trigger1 = (var(17):=14)||1
trigger2 = animelemtime(35)=0
trigger2 = (var(16):=95)||1
trigger2 = (var(17):=16)||1
trigger3 = animelemtime(44)=0
trigger3 = (var(16):=130)||1
trigger3 = (var(17):=19)||1

[State 2100, MHR]
type = movehitreset
trigger1 = animelemtime(35)=0||animelemtime(44)=0

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1 = animelemtime(26)>=0 && animelemtime(27)<0
trigger2 = animelemtime(35)>=0 && animelemtime(36)<0
trigger3 = animelemtime(44)>=0 && animelemtime(45)<0
attr = S,HA
damage = ceil(var(16)*(fvar(11)/cond(var(57)=3,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),var(17)
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 6,6
sparkno = S8000+(random%2)+10*(animelemno(0)=35)+20*(animelemno(0)=44)
guard.sparkno = S8030
sparkxy = -10-5*(animelemno(0)=35)-10*(animelemno(0)=44),-34-34*(animelemno(0)=35)-68*(animelemno(0)=44)
hitsound = s1,8
guardsound = s2,0
ground.type = High
ground.slidetime = 36+3*(var(42))
ground.hittime = 36+3*(var(42))
air.hittime = 36+3*(var(42))
guard.slidetime = 33
guard.hittime = 33
ground.velocity = -3.0-4.0*(animelemno(0)=35)-12.0*(animelemno(0)=44),0.0-8.5*(animelemno(0)=44)
air.type = Low
air.velocity = -3.0-4.0*(animelemno(0)=35)-12.0*(animelemno(0)=44),-8.5
getpower = 0,0
givepower = 80+20*(animelemno(0)=35)+40*(animelemno(0)=44),80+20*(animelemno(0)=35)+40*(animelemno(0)=44)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0+1*(animelemno(0)=44)
air.fall = 1
fall.recover = 0
p2facing = 1
ID = 2100

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(2100)
trigger1 = target(2100),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 3;Change index
ignorehitpause = 1
persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 2100
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(26)>=0 && animelemtime(27)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(35)>=0 && animelemtime(36)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(44)>=0 && animelemtime(45)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.75*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(45)=0
trigger2 = animelemtime(44)>=0 && animelemtime(45)<0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; "Massacre on Mt. Ooe"
[Statedef 4000]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4000
ctrl = 0
poweradd = -3000
sprpriority = 1
facep2=1

[State 800, CS]
type = changestate
trigger1 = numtarget(4000)
trigger1 = movehit
value = 4001
ignorehitpause = 1
persistent = 0

[State 4000, Effect]
type = helper
trigger1 = time = 2;0
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
trigger1 = time = 2;0
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
trigger1 = time = 2;0
time = 40
anim = -1
sound = S4,2
p2defmul = 1
poweradd = 0;-3000
unhittable = 1
movetime = 40
darken = 0

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 4000,0
channel = 0

[State 4000, PosAdd]
type = posadd
trigger1 = animelemtime(8)=0
x = 10

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(8)=0
value = 0,1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(9)<0
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1 

[State 800, IDDQD]
type = HitDef
trigger1 = animelemtime(8)>=0 && animelemtime(9)<0
trigger1 = var(30)=0 ;Throw Limited
attr = S,HT
hitflag = M-
guardflag = 
fall.animtype = Diagup
priority = 7,Miss
damage = 0,0
pausetime = 0,0
sparkno = -1
hitsound = -1
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1facing = 1
p2facing = 1
id = 4000
numhits = 0

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(9)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State ASS]
type = AttackDist
trigger1 = 1
value = 0

[State 2000, Land]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; "Final Atomic Buster on Mt Ooe"
[Statedef 4001]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4001+0*floor(var(4):=1);Set Throw proration flag
ctrl = 0
sprpriority = 1
facep2 = 0

[State 2000, Timer Freeze]
type = assertspecial
trigger1 = time >= 0
flag = timerfreeze
ignorehitpause = 1

[State 4001, Width]
type = width
trigger1 = time>=0
edge = 45,0
ignorehitpause = 1

[State 1250, SB]
type = ScreenBound
trigger1 = time>=0
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 2010, PSND]
type = playsnd
trigger1 = time = 0
value = 1,0

[State 2010, TS]
type = targetstate
trigger1 = time = 0
id = 4000
value = 4050
[State 1201, TF]
type = targetfacing
trigger1 = time = 0
id = 4000
value = -1
ignorehitpause = 1
[State 1001, TB]
type = TargetBind
trigger1 = animelemno(0)=1
id = 4000
pos = 25,0
ignorehitpause = 1

[State 4001, STS]
type = statetypeset
trigger1 = animelemtime(3)=0
statetype = A
physics = N
[State 4001, VelS]
type = velset
trigger1 = animelemtime(3)=0
x = 1.0
y = -6.5

[State 4001, Gravity]
type = veladd
trigger1 = animelemtime(3)>0
y = 0.5

[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=2
id = 4000
pos = 15,-70
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=3||animelemno(0)=4
id = 4000
pos = -20,-70
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=5
id = 4000
pos = -35,-65

[State 4001, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4002

;---------------------------------------------------------------------------
; "Final Atomic Buster on Mt Ooe"
[Statedef 4002]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4002
ctrl = 0
sprpriority = 1
facep2 = 0

[State 2000, Timer Freeze]
type = assertspecial
trigger1 = time >= 0
flag = timerfreeze
ignorehitpause = 1

[State 4001, Width]
type = width
trigger1 = time>=0
edge = 45,0
ignorehitpause = 1

[State 1250, SB]
type = ScreenBound
trigger1 = time>=0
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 2010, TS]
type = targetstate
trigger1 = time = 0
id = 4000
value = 4051
[State 1201, TF]
type = targetfacing
trigger1 = time = 0
id = 4000
value = -1
ignorehitpause = 1

[State 4001, PS]
type = posset
trigger1 = time = 0
y = 0

[State 4001, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 4000,10
ignorehitpause = 1
persistent = 0

[State 4001, TLA]
type = targetlifeadd
trigger1 = animelemtime(3)=0
id = 4000
value = -78
kill = 0
ignorehitpause = 1
persistent = 0
[State 4001, TLA]
type = targetpoweradd
trigger1 = animelemtime(3)=0
id = 4000
value = 100
ignorehitpause = 1
persistent = 0
[State 4001, TLA]
type = hitadd
trigger1 = animelemtime(3)=0
value = 1
ignorehitpause = 1
persistent = 0
[State 4001, Proration]
type = varset
trigger1 = animelemtime(3)=0
fvar(10)=fvar(10)*0.90*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause=1
persistent = 0

[State 4001, Hitspark]
type = Explod
trigger1 = animelemtime(3)=0
anim = 8000+1*(random%2)
ID = 8000
pos = 50,-5
postype = p1 ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 4001, Shake]
type = envshake
trigger1 = animelemtime(3)=0
time = 15
freq = 120
ampl = -6
ignorehitpause = 1
persistent = 0

[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=1
id = 4000
pos = 15,-60
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=2
id = 4000
pos = 35,-55
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=3||animelemno(0)=4
id = 4000
pos = 45,0
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=5
id = 4000
pos = 25,-45

[State 4001, STS]
type = statetypeset
trigger1 = animelemtime(7)=0
statetype = A
physics = N
[State 4001, VelS]
type = velset
trigger1 = animelemtime(7)=0
x = 1.0
y = -10.5

[State 4001, Gravity]
type = veladd
trigger1 = animelemtime(7)>0
y = 0.5

[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=6
id = 4000
pos = 15,-70
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=7||animelemno(0)=8
id = 4000
pos = -20,-70
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=9
id = 4000
pos = -35,-65

[State 4001, CS]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4003

;---------------------------------------------------------------------------
; "Final Atomic Buster on Mt Ooe"
[Statedef 4003]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4003
ctrl = 0
sprpriority = 1
facep2 = 0

[State 2000, Timer Freeze]
type = assertspecial
trigger1 = time >= 0
flag = timerfreeze
ignorehitpause = 1

[State 4001, Width]
type = width
trigger1 = time>=0
edge = 45,0
ignorehitpause = 1

[State 1250, SB]
type = ScreenBound
trigger1 = time>=0
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 2010, TS]
type = targetstate
trigger1 = time = 0
id = 4000
value = 4052
[State 1201, TF]
type = targetfacing
trigger1 = time = 0
id = 4000
value = -1
ignorehitpause = 1

[State 4001, PS]
type = posset
trigger1 = time = 0
y = 0

[State 4001, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 4000,10
ignorehitpause = 1
persistent = 0

[State 4001, TLA]
type = targetlifeadd
trigger1 = animelemtime(3)=0
id = 4000
value = -156
kill = 0
ignorehitpause = 1
persistent = 0
[State 4001, TLA]
type = targetpoweradd
trigger1 = animelemtime(3)=0
id = 4000
value = 200
ignorehitpause = 1
persistent = 0
[State 4001, TLA]
type = hitadd
trigger1 = animelemtime(3)=0
value = 1
ignorehitpause = 1
persistent = 0
[State 4001, Proration]
type = varset
trigger1 = animelemtime(3)=0
fvar(10)=fvar(10)*0.70*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 4001, Hitspark]
type = Explod
trigger1 = animelemtime(3)=0
anim = 8010+1*(random%2)
ID = 8000
pos = 50,-5
postype = p1 ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 4001, Shake]
type = envshake
trigger1 = animelemtime(3)=0
time = 15
freq = 120
ampl = -8
ignorehitpause = 1
persistent = 0

[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=1
id = 4000
pos = 15,-60
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=2
id = 4000
pos = 35,-55
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=3||animelemno(0)=4
id = 4000
pos = 45,0
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=5
id = 4000
pos = 25,-45

[State 4001, STS]
type = statetypeset
trigger1 = animelemtime(7)=0
statetype = A
physics = N
[State 4001, VelS]
type = velset
trigger1 = animelemtime(7)=0
x = 1.0
y = -24.0

[State 4001, Gravity]
type = veladd
trigger1 = animelemtime(7)>0
y = 0.5

[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=6
id = 4000
pos = 15,-70
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=7||animelemno(0)=8
id = 4000
pos = -20,-70
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=9
id = 4000
pos = -35,-65

[State 4001, PSND]
type = playsnd
trigger1 = animelemtime(7)>0
trigger1 = vel y > 0
value = 4000,12
channel = 6
ignorehitpause = 1
persistent = 0

[State 4001, CS]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4004

;---------------------------------------------------------------------------
; "Final Atomic Buster on Mt Ooe"
[Statedef 4004]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4004+0*floor(fvar(15):=0.0)
ctrl = 0
sprpriority = 1
facep2 = 0

[State 4004, SSND]
type = stopsnd
trigger1 = animelemtime(3)=0
channel = 6

[State 4001, Width]
type = width
trigger1 = time>=0
edge = 45,0
ignorehitpause = 1

[State 2000, Timer Freeze]
type = assertspecial
trigger1 = animelemtime(5)<0
flag = timerfreeze
ignorehitpause = 1

[State 1250, SB]
type = ScreenBound
trigger1 = time>=0
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 2010, TS]
type = targetstate
trigger1 = time = 0
id = 4000
value = 4053
[State 1201, TF]
type = targetfacing
trigger1 = time = 0
id = 4000
value = -1
ignorehitpause = 1

[State 4001, PS]
type = posset
trigger1 = time = 0
y = 0

[State 4001, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 4000,11
ignorehitpause = 1
persistent = 0
[State 4001, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 4000,10
ignorehitpause = 1
persistent = 0
[State 4001, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1,8
ignorehitpause = 1
persistent = 0

[State 4001, TLA]
type = targetlifeadd
trigger1 = animelemtime(3)=0
id = 4000
value = -316
kill = 1;0
ignorehitpause = 1
persistent = 0
[State 4001, TLA]
type = targetpoweradd
trigger1 = animelemtime(3)=0
id = 4000
value = 300
ignorehitpause = 1
persistent = 0
[State 4001, TLA]
type = hitadd
trigger1 = animelemtime(3)=0
value = 1
ignorehitpause = 1
persistent = 0
[State 4001, Proration]
type = varset
trigger1 = animelemtime(3)=0
fvar(10)=fvar(10)*0.5*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause=1
persistent = 0

[State 4001, Hitspark]
type = Explod
trigger1 = animelemtime(3)=0
anim = 8020+1*(random%2)
ID = 8000
pos = 50,-5
postype = p1 ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 4001, Hitspark]
type = Explod
trigger1 = animelemtime(3)=[0,21]
trigger1 = (var(10):=0)||1
trigger1 = (fvar(15):=(1.0+0.5*random/1000.0))||1
persistent=3;trigger1 = animelemtime(3)%3=0
anim = 24000
ID = 24000
pos = 50+floor(15.0*animelemtime(3)*cos(var(10)*pi/180.0)),-5+floor(15.0*animelemtime(3)*sin(var(10)*pi/180.0))
postype = p1 ;p2,front,back,left,right
facing = 1
vel = 0,0
random = 30,30
removetime = -2
pausemovetime = 0
scale = fvar(15),fvar(15)
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 4001, Hitspark]
type = Explod
trigger1 = animelemtime(3)=[0,21]
trigger1 = (var(10):=60)||1
trigger1 = (fvar(15):=(1.0+0.5*random/1000.0))||1
persistent=3;trigger1 = animelemtime(3)%3=0
anim = 24000
ID = 24000
pos = 50+floor(15.0*animelemtime(3)*cos(var(10)*pi/180.0)),-5+floor(15.0*animelemtime(3)*sin(var(10)*pi/180.0))
postype = p1 ;p2,front,back,left,right
facing = 1
vel = 0,0
random = 30,30
removetime = -2
pausemovetime = 0
scale = fvar(15),fvar(15)
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 4001, Hitspark]
type = Explod
trigger1 = animelemtime(3)=[0,21]
trigger1 = (var(10):=120)||1
trigger1 = (fvar(15):=(1.0+0.5*random/1000.0))||1
persistent=3;trigger1 = animelemtime(3)%3=0
anim = 24000
ID = 24000
pos = 50+floor(15.0*animelemtime(3)*cos(var(10)*pi/180.0)),-5+floor(15.0*animelemtime(3)*sin(var(10)*pi/180.0))
postype = p1 ;p2,front,back,left,right
facing = 1
vel = 0,0
random = 30,30
removetime = -2
pausemovetime = 0
scale = fvar(15),fvar(15)
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 4001, Hitspark]
type = Explod
trigger1 = animelemtime(3)=[0,21]
trigger1 = (var(10):=180)||1
trigger1 = (fvar(15):=(1.0+0.5*random/1000.0))||1
persistent=3;trigger1 = animelemtime(3)%3=0
anim = 24000
ID = 24000
pos = 50+floor(15.0*animelemtime(3)*cos(var(10)*pi/180.0)),-5+floor(15.0*animelemtime(3)*sin(var(10)*pi/180.0))
postype = p1 ;p2,front,back,left,right
facing = 1
vel = 0,0
random = 30,30
removetime = -2
pausemovetime = 0
scale = fvar(15),fvar(15)
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 4001, Hitspark]
type = Explod
trigger1 = animelemtime(3)=[0,21]
trigger1 = (var(10):=240)||1
trigger1 = (fvar(15):=(1.0+0.5*random/1000.0))||1
persistent=3;trigger1 = animelemtime(3)%3=0
anim = 24000
ID = 24000
pos = 50+floor(15.0*animelemtime(3)*cos(var(10)*pi/180.0)),-5+floor(15.0*animelemtime(3)*sin(var(10)*pi/180.0))
postype = p1 ;p2,front,back,left,right
facing = 1
vel = 0,0
random = 30,30
removetime = -2
pausemovetime = 0
scale = fvar(15),fvar(15)
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 4001, Hitspark]
type = Explod
trigger1 = animelemtime(3)=[0,21]
trigger1 = (var(10):=300)||1
trigger1 = (fvar(15):=(1.0+0.5*random/1000.0))||1
persistent=3;trigger1 = animelemtime(3)%3=0
anim = 24000
ID = 24000
pos = 50+floor(15.0*animelemtime(3)*cos(var(10)*pi/180.0)),-5+floor(15.0*animelemtime(3)*sin(var(10)*pi/180.0))
postype = p1 ;p2,front,back,left,right
facing = 1
vel = 0,0
random = 30,30
removetime = -2
pausemovetime = 0
scale = fvar(15),fvar(15)
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 4001, Shake]
type = envshake
trigger1 = animelemtime(3)=0
time = 50
freq = 120
ampl = -20
ignorehitpause = 1
persistent = 0

[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=1
id = 4000
pos = 25,-65
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=2
id = 4000
pos = 40,0
[State 4001, TargetBind]
type = targetbind
trigger1 = animelemno(0)=3||animelemno(0)=4
id = 4000
pos = 40,0

[State 4001, STS]
type = statetypeset
trigger1 = animelemtime(5)=0
statetype = A
physics = N
[State 4001, VelS]
type = velset
trigger1 = animelemtime(5)=0
x = -3.0
y = -6.0

[State 4001, Gravity]
type = veladd
trigger1 = animelemtime(7)>0
y = 0.5

[State 4001, CS]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2001

;---------------------------------------------------------------------------
; Mt Ooe Grabbed
[Statedef 4050]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 4050

[State 1250, SB]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Mt Ooe Grabbed
[Statedef 4051]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 4051

[State 1250, SB]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Mt Ooe Grabbed
[Statedef 4052]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 4052

[State 1250, SB]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Mt Ooe Grabbed
[Statedef 4053]
type = L
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 4053

[State 1250, SB]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 4053, SS]
type = selfstate
trigger1 = animtime = 0
value = cond(alive,5120,5150)

;---------------------------------------------------------------------------
; "Missing Purple Power"
[Statedef 4100]
type = S
movetype = A
physics = S
velset = 0,0
;anim = 4100
ctrl = 0
sprpriority = 1
facep2 = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4100
time = 1
forceair = 0
ignorehitpause = 1
;persistent = 

[State 4100, CA]
type = changeanim
trigger1 = anim != 4100
value = 4100

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = animelemtime(8)>=0||movecontact||movereversed
movetype = I
[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = !(animelemtime(8)>=0||movecontact||movereversed)
movetype = A
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2000, Startup Invuln];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
;trigger1 = prevstateno != 4100
;trigger1 = time = 0
trigger1 = animelemtime(17)<0
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = prevstateno != 4100 && (prevstateno!=[5000,5199])
trigger1 = time=0
value = 2000,0
channel = 0

[State 2000, VS]
type = varset
trigger1 = prevstateno != 4100 && (prevstateno!=[5000,5199])
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 4000, Effect]
type = helper
trigger1 = prevstateno != 4100 && (prevstateno!=[5000,5199])
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
trigger1 = prevstateno != 4100 && (prevstateno!=[5000,5199])
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
trigger1 = prevstateno != 4100 && (prevstateno!=[5000,5199])
trigger1 = time = 0
time = 40
anim = -1
sound = S4,2
p2defmul = 1
poweradd = -3000
unhittable = 1
movetime = 40
darken = 0

[State 4100, Grow]
type = Explod
trigger1 = prevstateno != 4100 && (prevstateno!=[5000,5199])
trigger1 = animelemtime(7)=0
id = 24100
anim = 24100
pos = 0,0
scale = 1.6,1.6
sprpriority = -1
removetime = -2
ownpal = 1
removeongethit=1

[State 4100, Grow]
type = modifyexplod
trigger1 = animelemtime(7)=[1,14]
id = 24100
scale = 1.6+0.6*animelemtime(7),1.6+0.6*animelemtime(7)
trans = addalpha
alpha = 256-floor(256.0*animelemtime(7)/15.0),floor(256.0*animelemtime(7)/15.0)

[State 4100, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 2100,10
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
trigger1 = !movecontact && !movereversed
attr = S,HA
damage = ceil(140*ifelse(var(42),1.25,1.0)),28
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10-5*(animelemno(0)=35)-10*(animelemno(0)=44),-34-34*(animelemno(0)=35)-68*(animelemno(0)=44)
hitsound = s1,8
guardsound = s2,0
ground.type = High
ground.slidetime = 24+3*(var(42))
ground.hittime = 24+3*(var(42))
air.hittime = 24+3*(var(42))
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -3.0*cond(p2dist x<0,-1,1),-15.0
air.type = Low
air.velocity = -3.0*cond(p2dist x<0,-1,1),-15.0
getpower = 0,0
givepower = 300,300
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.35
fall = 1
air.fall = 1
fall.recover = 0
p2facing = 1
ID = 4100

[State 4100, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 4100
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(7)>=0 && animelemtime(8)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.75*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 4100, Flag]
type = statetypeset
trigger1 = animelemtime(8)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 0, AngleDraw]
type = AngleDraw
triggerall = animelemtime(7)>=2
trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0-2.0*(0.75**(animelemtime(7)-2)),3.0-2.0*(0.75**(animelemtime(7)-2))
ignorehitpause = 1

[State 2000, Startup Invuln];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = animelemtime(17)>=0
value = ,AT
time = 1
ignorehitpause = 1

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = animelemtime(17)>=0
value = 32,32
ignorehitpause = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(17)=-1
trigger1 = (var(56):=480)||1
helpertype = normal
name = "Timer"
id = 30010
stateno = 30010
pos = 0,0
postype = p1
ownpal = 1
facing = 1
pausemovetime = 99999999
supermovetime = 99999999

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 4101
ctrl = 0

;---------------------------------------------------------------------------
; MPP - IDLE
[Statedef 4101]
type = S
movetype = I
physics = S
velset = 0,0
;anim = 4100
ctrl = 0
sprpriority = 0
facep2 = 1

[State 4103, FaceP2]
type = turn
trigger1 = p2dist x < 0

[State 4100, CA]
type = changeanim
trigger1 = anim != 4101
value = 4101

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
MoveType = I
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4101
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
;ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4100, IDLE]
type = changestate
trigger1 = roundstate=2
trigger1 = command="holdup"
value = 4103

[State 4100, IDLE]
type = changestate
trigger1 = roundstate=2
trigger1 = command="holdfwd"||command="holdback"
value = 4102

[State 4100, Revert to Normal]
type = changestate
trigger1 = var(56)<=0
value = 4160

;---------------------------------------------------------------------------
; MPP - WALK
[Statedef 4102]
type = S
movetype = I
physics = S
velset = 0,0
;anim = 4100
ctrl = 0
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 4100, CA]
type = changeanim
trigger1 = vel x > 0
trigger1 = anim != 4102
value = 4102

[State 4100, CA]
type = changeanim
trigger1 = vel x < 0
trigger1 = anim != 4103
value = 4103

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
MoveType = I
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4102
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
;ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4100, PSND]
type = playsnd
trigger1 = animelemtime(25)=0||animelemtime(57)=0
value = 4100,10

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(25)=0||animelemtime(57)=0
Time = 10
Freq = 120
Ampl = -3

[State 4100, IDLE]
type = changestate
trigger1 = roundstate=2
trigger1 = command="holdup"
value = 4103

[State 4100, IDLE]
type = changestate
trigger1 = roundstate=2
trigger1 = command!="holdfwd" && command!="holdback"
value = 4101

[State 4100, Revert to Normal]
type = changestate
trigger1 = var(56)<=0
value = 4160

;---------------------------------------------------------------------------
; MPP - PREJUMP
[Statedef 4103]
type = S
movetype = I
physics = S
velset = 0,0
;anim = 4100
ctrl = 0
sprpriority = 0
facep2 = 1

[State 4103, FaceP2]
type = turn
trigger1 = time = 0
trigger1 = prevstateno != [5000,5099]
trigger1 = p2dist x < 0

[State 4100, CA]
type = changeanim
trigger1 = anim != 4104
value = 4104

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
MoveType = I
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4103
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
;ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4100, IDLE]
type = changestate
trigger1 = animtime = 0
value = 4104

;---------------------------------------------------------------------------
; MPP - JUMP
[Statedef 4104]
type = A
movetype = I
physics = N
;velset = 0,0
;anim = 4100
ctrl = 0
sprpriority = 0

[State 20, 1]
type = playsnd
trigger1 = prevstateno!=[5000,5099]
trigger1 = time = 0
value = 4110,10

[State 20, 1]
type = VelSet
trigger1 = prevstateno!=[5000,5099]
trigger1 = time = 0
trigger1 = command = "holdfwd"
x = 2.0

[State 20, 2]
type = VelSet
trigger1 = prevstateno!=[5000,5099]
trigger1 = time = 0
trigger1 = command = "holdback"
x = -2.0

[State 20, 2]
type = VelSet
trigger1 = prevstateno!=[5000,5099]
trigger1 = time = 0
y = -8.0

[State 4100, CA]
type = changeanim
trigger1 = anim != 4105
value = 4105

[State 4100, Grav]
type = veladd
trigger1 = anim = 4105
Trigger1 = HitShakeOver
trigger1 = animelemtime(1)>0
y = 0.25

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
MoveType = I
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4104
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
;ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4100, IDLE]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4105

;---------------------------------------------------------------------------
; MPP - LAND
[Statedef 4105]
type = S
movetype = I
physics = S
velset = 0,0
;anim = 4100
ctrl = 0
sprpriority = 0

[State 4105, PS]
type = posset
trigger1 = time = 0
y = 0

[State 4100, CA]
type = changeanim
trigger1 = anim != 4106
value = 4106

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
MoveType = I
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4105
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
;ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4100, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 4100,10

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(1)=0
Time = 10
Freq = 120
Ampl = -3

[State 4100, IDLE]
type = turn
trigger1 = animtime = 0
trigger1 = p2dist x < 0
[State 4100, Revert to Normal]
type = changestate
trigger1 = animtime = 0
trigger1 = var(56)<=0
value = 4160
[State 4100, IDLE]
type = changestate
trigger1 = animtime = 0
value = 4101

;---------------------------------------------------------------------------
; MPP - LP
[Statedef 4110]
type = S
movetype = A
physics = S
velset = 0,0
;anim = 4100
ctrl = 0
sprpriority = 0
;facep2 = 1
movehitpersist=1

[State 20, 1]
type = turn
trigger1 = prevstateno!=[5000,5099]
trigger1 = time = 0
trigger1 = p2dist x < 0

[State 4100, CA]
type = changeanim
trigger1 = anim != 4110
value = 4110

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = animelemtime(24)>=0||movecontact||movereversed
movetype = I
[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = !(animelemtime(24)>=0||movecontact||movereversed)
movetype = A
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4110
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
;trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4110, Offset]
type = posadd
trigger1 = animelemtime(18)=0
x = 30
[State 4110, Offset]
type = posadd
trigger1 = animelemtime(20)=0||animelemtime(22)=0
x = 15

[State 4110, PSND]
type = playsnd
trigger1 = animelemtime(22)=0
value = 4110,10

[State 200, 1]
type = HitDef
trigger1 = (p2stateno != [5020,5040])
trigger1 = animelemtime(22)>=0 && animelemtime(24)<0
trigger1 = !movecontact && !movereversed
attr = S,HA
damage = ceil(80*fvar(11)*ifelse(var(42),1.25,1.0)),16
animtype = Heavy
guardflag = H
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-126
hitsound = s1,8
guardsound = s2,0
ground.type = High
ground.slidetime = 24+1*(var(42))
ground.hittime = 24+1*(var(42))
air.hittime = 24+1*(var(42))
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -8.0,-7.0
air.type = Low
air.velocity = -8.0,-7.0
getpower = 0,0
givepower = 40,40
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 4110

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 4110
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.65*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 4100, Revert to Normal]
type = changestate
trigger1 = animtime = 0
value = cond(var(56)<=0,4160,4101)

;---------------------------------------------------------------------------
; MPP - MP
[Statedef 4111]
type = S
movetype = A
physics = S
velset = 0,0
;anim = 4100
ctrl = 0
sprpriority = 0
;facep2 = 1
movehitpersist=1

[State 20, 1]
type = turn
trigger1 = prevstateno!=[5000,5099]
trigger1 = time = 0
trigger1 = p2dist x < 0

[State 4111, Chaining?]
type = movehitreset
trigger1 = time = 0
trigger1 = prevstateno = 4110

[State 4100, CA]
type = changeanim
trigger1 = anim != 4111
value = 4111

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = animelemtime(26)>=0||movecontact||movereversed
movetype = I
[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = !(animelemtime(26)>=0||movecontact||movereversed)
movetype = A
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4111
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
;trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4110, Offset]
type = posadd
trigger1 = animelemtime(13)=0||animelemtime(20)=0
x = 30

[State 4110, PSND]
type = playsnd
trigger1 = animelemtime(23)=0
value = 4110,10

[State 200, 1]
type = HitDef
trigger1 = (p2stateno != [5020,5040])
trigger1 = animelemtime(23)>=0 && animelemtime(26)<0
trigger1 = !movecontact && !movereversed
attr = S,HA
damage = ceil(100*fvar(11)*ifelse(var(42),1.25,1.0)),20
animtype = Heavy
guardflag = L
hitflag = MAFD
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-30
hitsound = s1,8
guardsound = s2,0
ground.type = Low
ground.slidetime = 24+3*(var(42))
ground.hittime = 24+3*(var(42))
air.hittime = 24+3*(var(42))
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -3.0,-9.0
air.type = Low
air.velocity = -3.0,-9.0
down.velocity = 0.0,0.0
getpower = 0,0
givepower = 80,80
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 4111

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 4111
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.5*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 4100, Revert to Normal]
type = changestate
trigger1 = animtime = 0
value = cond(var(56)<=0,4160,4101)

;---------------------------------------------------------------------------
; MPP - HP
[Statedef 4112]
type = S
movetype = A
physics = S
velset = 0,0
;anim = 4100
ctrl = 0
sprpriority = 0
;facep2 = 1
movehitpersist=1

[State 20, 1]
type = turn
trigger1 = prevstateno!=[5000,5099]
trigger1 = time = 0
trigger1 = p2dist x < 0

[State 4111, Chaining?]
type = movehitreset
trigger1 = time = 0
trigger1 = prevstateno = 4110

[State 4100, CA]
type = changeanim
trigger1 = anim != 4112
value = 4112

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = animelemtime(29)>=0||movecontact||movereversed
movetype = I
[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = !(animelemtime(29)>=0||movecontact||movereversed)
movetype = A
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4112
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
;trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4110, Offset]
type = posadd
trigger1 = animelemtime(13)=0
x = 30
[State 4110, Offset]
type = posadd
trigger1 = animelemtime(17)=0
x = 15

[State 4110, PSND]
type = playsnd
trigger1 = animelemtime(26)=0
value = 4110,10

[State 200, 1]
type = HitDef
trigger1 = (p2stateno != [5020,5040])
trigger1 = animelemtime(26)>=0 && animelemtime(29)<0
trigger1 = !movecontact && !movereversed
attr = S,HA
damage = ceil(120*fvar(11)*ifelse(var(42),1.25,1.0)),24
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-180
hitsound = s1,8
guardsound = s2,0
ground.type = High
ground.slidetime = 24+3*(var(42))
ground.hittime = 24+3*(var(42))
air.hittime = 24+3*(var(42))
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -2.0,-14.0
air.type = Low
air.velocity = -2.0,-14.0
getpower = 0,0
givepower = 120,120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 4112

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 4112
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.5*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 4100, Revert to Normal]
type = changestate
trigger1 = animtime = 0
value = cond(var(56)<=0,4160,4101)

;---------------------------------------------------------------------------
; MPP - AIR LP
[Statedef 4120]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 0
movehitpersist=1

[State 4100, CA]
type = changeanim
trigger1 = anim != 4120
value = 4120

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = animelemtime(43)>=0||movecontact||movereversed
movetype = I
[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = !(animelemtime(43)>=0||movecontact||movereversed)
movetype = A
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4120
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
;trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4100, Grav]
type = veladd
trigger1 = anim = 4120
Trigger1 = HitShakeOver
trigger1 = animelemtime(1)>0
y = 0.25

[State 4110, PSND]
type = playsnd
trigger1 = animelemtime(23)=0
value = 4110,10

[State 200, 1]
type = HitDef
trigger1 = (p2stateno != [5020,5040])
trigger1 = animelemtime(23)>=0 && animelemtime(43)<0
trigger1 = !movecontact && !movereversed
attr = A,HA
damage = ceil(90*fvar(11)*ifelse(var(42),1.25,1.0)),18
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-96
hitsound = s1,8
guardsound = s2,0
ground.type = High
ground.slidetime = 24+1*(var(42))
ground.hittime = 24+1*(var(42))
air.hittime = 24+1*(var(42))
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -10.0*cond(p2dist x<0,-1,1),-8.0
air.type = Low
air.velocity = -10.0*cond(p2dist x<0,-1,1),-8.0
getpower = 0,0
givepower = 40,40
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 4120

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 4120
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.65*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 4100, IDLE]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4105

;---------------------------------------------------------------------------
; MPP - AIR MP-1
[Statedef 4121]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 0
movehitpersist=1

[State 4121, VelS]
type = velset
trigger1 = time = 0
trigger1 = prevstateno != [5000,5099]
;trigger1 = prevstateno != 4120
y = -1.5

[State 4111, Chaining?]
type = movehitreset
trigger1 = time = 0
trigger1 = prevstateno = 4120

[State 4100, CA]
type = changeanim
trigger1 = anim != 4121
value = 4121

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = animelemtime(43)>=0||movecontact||movereversed
movetype = I
[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = !(animelemtime(43)>=0||movecontact||movereversed)
movetype = A
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4121
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
;trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4100, Grav]
type = veladd
trigger1 = anim = 4121
Trigger1 = HitShakeOver
trigger1 = animelemtime(1)>0
y = 0.25

[State 4100, IDLE]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4122;05

;---------------------------------------------------------------------------
; MPP - AIR MP-2
[Statedef 4122]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
sprpriority = 0
movehitpersist=1

[State 4121, VelS]
type = posset
trigger1 = time = 0
y = 0

[State 4111, Chaining?]
type = movehitreset
trigger1 = time = 0
trigger1 = prevstateno = 4121

[State 4100, CA]
type = changeanim
trigger1 = anim != 4122
value = 4122

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = animelemtime(10)>=0||movecontact||movereversed
movetype = I
[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = !(animelemtime(10)>=0||movecontact||movereversed)
movetype = A
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4122
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
;trigger1 = prevstateno=[5000,5099]
trigger1 = prevstateno!=4121
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4110, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 4121,10

[State 1100, Proj]
type = helper
trigger1 = animelemtime(5)=0
helpertype = normal
name = "Dust"
ID = 24122
pos = 0,0
postype = p1
stateno = 21300
ownpal = 1
facing = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(5)=0
Time = 20
Freq = 120
Ampl = -24

[State 200, 1]
type = HitDef
trigger1 = (p2stateno != [5020,5040])
trigger1 = animelemtime(5)>=0 && animelemtime(10)<0
trigger1 = !movecontact && !movereversed
attr = S,HA
damage = ceil(105*fvar(11)*ifelse(var(42),1.25,1.0)),21
animtype = Heavy
guardflag = L
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-10
hitsound = s1,8
guardsound = s2,0
ground.type = High
ground.slidetime = 24+3*(var(42))
ground.hittime = 24+3*(var(42))
air.hittime = 24+3*(var(42))
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -2.0*cond(p2dist x<0,-1,1),-12.0
air.type = Low
air.velocity = -2.0*cond(p2dist x<0,-1,1),-12.0
getpower = 0,0
givepower = 80,80
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.35
fall = 1
fall.recover = 0
p2facing = 1
ID = 4121

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 4121
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.5*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 4100, IDLE]
type = changestate
trigger1 = animtime = 0
value = cond(var(56)<=0,4160,4101)

;---------------------------------------------------------------------------
; MPP - AIR HP
[Statedef 4123]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 0
movehitpersist=1

[State 4100, CA]
type = changeanim
trigger1 = anim != 4123
value = 4123

[State 4111, Chaining?]
type = movehitreset
trigger1 = time = 0
trigger1 = prevstateno = 4120

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = animelemtime(19)>=0||movecontact||movereversed
movetype = I
[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = !(animelemtime(19)>=0||movecontact||movereversed)
movetype = A
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4123
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
;trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4100, Grav]
type = veladd
trigger1 = anim = 4123
Trigger1 = HitShakeOver
trigger1 = animelemtime(1)>0
y = 0.25

[State 4110, PSND]
type = playsnd
trigger1 = animelemtime(15)=0
value = 4121,10

[State 200, 1]
type = HitDef
trigger1 = (p2stateno != [5020,5040])
trigger1 = animelemtime(15)>=0 && animelemtime(19)<0
trigger1 = !movecontact && !movereversed
attr = A,HA
damage = ceil(125*fvar(11)*ifelse(var(42),1.25,1.0)),25
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-60
hitsound = s1,8
guardsound = s2,0
ground.type = High
ground.slidetime = 24+3*(var(42))
ground.hittime = 24+3*(var(42))
air.hittime = 24+3*(var(42))
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -3.0*cond(p2dist x<0,-1,1),-16.0
air.type = Low
air.velocity = -3.0*cond(p2dist x<0,-1,1),-16.0
getpower = 0,0
givepower = 120,120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 4122

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 4122
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.5*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 4100, IDLE]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4105

;---------------------------------------------------------------------------
; MPP - KO
[Statedef 4130]
type = U
movetype = H
physics = N
anim = 4130
velset = 0,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1
;persistent = 

[State 2100, ScaleMe];2x Growth
type = width
trigger1 = animelemtime(1)>=0 && animelemtime(2)<0
value = 32,32
ignorehitpause = 1

[State 2100, ScaleMe];2x Growth
type = angledraw
trigger1 = time>=0
trigger1 = animelemtime(1)>=0 && animelemtime(3)<0
value = 0
scale = 3.0-(2.0*animelemtime(1)/10.0),3.0-(2.0*animelemtime(1)/10.0)
ignorehitpause = 1

[State 2100, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 2100,11

[State 4160, CS]
type = changestate
trigger1 = animtime = 0
value = 5020

;---------------------------------------------------------------------------
; MPP - END
[Statedef 4160]
type = S
movetype = I
physics = S
anim = 4160
velset = 0,0
ctrl = 0

[State 2100, ScaleMe];2x Growth
type = width
trigger1 = animelemtime(1)>=0 && animelemtime(2)<0
value = 32,32
ignorehitpause = 1

[State 2100, ScaleMe];2x Growth
type = angledraw
trigger1 = time>0
trigger1 = animelemtime(1)>=0 && animelemtime(3)<0
value = 0
scale = 3.0-(2.0*animelemtime(1)/10.0),3.0-(2.0*animelemtime(1)/10.0)
ignorehitpause = 1

[State 2100, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 2100,11

[State 4160, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; "Giant Oni of Earth's Axis"
[Statedef 4200]
type = U
movetype = A
physics = N
;velset = 0,0
;anim = 4100
ctrl = 0
sprpriority = 1
facep2 = 1

[State 4200, STS]
type = statetypeset
trigger1 = prevstateno != 4200
trigger1 = time=0
trigger1 = (var(56):=0)||1
statetype = S
physics = S

[State 4200, STS]
type = velset
trigger1 = prevstateno != 4200
trigger1 = time=0
x = 0.0
y = 0.0

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4200
time = 1
forceair = 0
ignorehitpause = 1
;persistent = 

[State 4100, CA]
type = changeanim
trigger1 = anim != 4200
value = 4200

;[State 4160, Hittype]
;Type = StateTypeSet
;Trigger1 = HitShakeOver
;trigger1 = animelemtime(8)>=0||movecontact||movereversed
;movetype = I
[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
;trigger1 = !(animelemtime(8)>=0||movecontact||movereversed)
movetype = A
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2000, Startup Invuln];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
;trigger1 = prevstateno != 4100
;trigger1 = time = 0
trigger1 = 1
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = prevstateno != 4200
trigger1 = time=0
value = 2000,0
channel = 0

[State 2000, VS]
type = varset
trigger1 = prevstateno != 4200
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 4000, Effect]
type = helper
trigger1 = prevstateno != 4200
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 60;40
supermovetime = 60;40

[State 2000, Spellcard Effect]
type = helper
trigger1 = prevstateno != 4200
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 3999
stateno = 20000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 60;40
supermovetime = 60;40

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = prevstateno != 4200
trigger1 = time = 0
time = 60;40
anim = -1
sound = S4,2
p2defmul = 1
poweradd = -3000
unhittable = 1
movetime = 60;40
darken = 0

[State 4200, STS]
type = statetypeset
trigger1 = animelemtime(7)=0
statetype = A
physics = N

[State 0, ScreenBound]
type = ScreenBound
trigger1 = animelemtime(7)>=0
value = 1
movecamera = 1,0
ignorehitpause = 1
;persistent = 

[State 4200, VS]
type = velset
trigger1 = animelemtime(7)=0
y = -20.0

[State 4100, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 4110,10
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
;trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
ignorehitpause = 1

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = time>=0
value = 32,32
ignorehitpause = 1

[State 1000, Air CS]
type = changestate
trigger1 = time >= 60
value = 4201
ctrl = 0

;---------------------------------------------------------------------------
; MPP - GOoEA
[Statedef 4201]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 1
movehitpersist=1

[State 4201, PS]
type = posadd
trigger1 = time = 0
trigger1 = prevstateno != [5000,5999]
trigger1 = numenemy
x = floor(p2dist x)
[State 4201, PS]
type = posset
trigger1 = time = 0
trigger1 = prevstateno != [5000,5999]
y = -240

[State 2000, PSND]
type = playsnd
trigger1 = time = 0
trigger1 = prevstateno != [5000,5999]
value = 195,11

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time>=0
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 4121, VelS]
type = velset
trigger1 = time = 0
trigger1 = prevstateno != [5000,5099]
;trigger1 = prevstateno != 4120
y = 20.0

[State 4111, Chaining?]
type = movehitreset
trigger1 = time = 0

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = animelemtime(43)>=0||movecontact||movereversed
movetype = I
[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = !(animelemtime(43)>=0||movecontact||movereversed)
movetype = A
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4201
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
;trigger1 = prevstateno=[5000,5099]
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4100, Grav]
type = veladd
trigger1 = anim = 4200
Trigger1 = HitShakeOver
trigger1 = animelemtime(1)>0
y = 0.5

[State 4100, IDLE]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4202;05

;---------------------------------------------------------------------------
; MPP - GOoEA
[Statedef 4202]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
sprpriority = 0
movehitpersist=1

[State 4121, VelS]
type = posset
trigger1 = time = 0
y = 0

[State 4111, Chaining?]
type = movehitreset
trigger1 = time = 0
trigger1 = prevstateno = 4202

[State 4100, CA]
type = changeanim
trigger1 = anim != 4201
value = 4201

[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = animelemtime(10)>=0||movecontact||movereversed
movetype = I
[State 4160, Hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver
trigger1 = !(animelemtime(10)>=0||movecontact||movereversed)
movetype = A
[State 4160, hittype]
Type = StateTypeSet
Trigger1 = HitShakeOver = 0
MoveType = H

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (fvar(8) - life)>0
value = floor((0.4 - 1.0) * ifElse((fvar(8)-life) < life, -(fvar(8) - life),0))
[State 1400, Armor Damage Reduction]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State 4160, Kill]
Type = ChangeState
Trigger1 = Life <= 0
Value = 4130

[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)>1
Value = Anim
Elem = animelemno(0)-1
[State 4160, Hitpause]
Type = ChangeAnim
Trigger1 = HitShakeOver = 0
Trigger1 = animelemno(0)<=1
Value = Anim
Elem = animelemno(-AnimTime)
[State 4160, Hitpause]
Type = PosFreeze
Trigger1 = HitShakeOver = 0

[State 2100, ScaleMe];3x Growth
type = width
trigger1 = 1
value = 32,32
ignorehitpause = 1

[State 4100, Armor]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 4202
time = 1
forceair = 0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
;trigger1 = prevstateno=[5000,5099]
trigger1 = prevstateno!=4201
trigger1 = time>=0
trigger2 = time>0
value = 0
scale = 3.0,3.0
ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

[State 4110, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 4121,10
[State 4110, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 1300,10
[State 4110, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 1300,10

[State 1100, Proj]
type = helper
trigger1 = animelemtime(5)=0
helpertype = normal
name = "Dust"
ID = 24122
pos = 0,0
postype = p1
stateno = 21300
ownpal = 1
facing = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(5)=0
Time = 20
Freq = 180
Ampl = -48

[State 200, 1]
type = HitDef
trigger1 = animelemtime(5)>=0 && animelemtime(10)<0
trigger1 = !movecontact && !movereversed
attr = S,HA
damage = ceil(200*ifelse(var(42),1.25,1.0)),40
animtype = Heavy
guardflag = L
hitflag = MAFD
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-10
hitsound = s1,8
guardsound = s2,0
ground.type = High
ground.slidetime = 24+1*(var(42))
ground.hittime = 24+1*(var(42))
air.hittime = 24+1*(var(42))
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -2.0*cond(p2dist x<0,-1,1),-12.0
air.type = Low
air.velocity = -2.0*cond(p2dist x<0,-1,1),-12.0
down.velocity = -2.0*cond(p2dist x<0,-1,1),-12.0
getpower = 0,0
givepower = 300,300
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 4200

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 4200
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.5*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 4100, Flag]
type = statetypeset
trigger1 = animelemtime(10)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 4100, IDLE]
type = changestate
trigger1 = animtime = 0
value = 4160