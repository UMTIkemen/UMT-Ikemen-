;---------------------------------------------------------------------------
; Starbow Break
[Statedef 1000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1000+1*(var(10)=3||var(10)=4|var(10)=6)
poweradd = 45-45*(var(10)>=5)
ctrl = 0
sprpriority = 1
facep2 = 1
;juggle = ifelse((var(34)&floor(exp(2*ln(2)) + 0.5)),2,0) ;use Juggle

;[State Give 'em a lil' 40, taken from The_None]
;type = VarSet
;trigger1 = var(31) = [1,2]
;trigger1 = numtarget
;trigger1 = (target,statetype = A) || (target,statetype = L)
;var(34) = var(34) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
;ignorehitpause = 1
;persistent = 0

[State 1000, STS]
type = statetypeset
trigger1 = animelemtime(3)=0
statetype = A
physics = N

[State 0, NotHitBy]
type = NotHitBy
trigger1 = var(10)=1||var(10)=3;1
value = ,AP
time = 1
ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = animelemtime(3)>=0
value = 0
ignorehitpause = 1

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1000,0
channel = 0

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1000,10

[State 1000, VS]
type = velset
trigger1 = animelemtime(3)=0
trigger1 = var(10)<=2
x = -15;-(backedgedist/7.0)
y = -6-8*(var(10)=2||var(10)=4)

[State 1000, VS]
type = velset
trigger1 = animelemtime(3)=0
trigger1 = var(10)=3||var(10)=4
x = 15;(frontedgedist/7.0)
y = -6-8*(var(10)=2||var(10)=4)

[State 1000, VS]
type = velset
trigger1 = animelemtime(3)=0
trigger1 = var(10)=5
x = -15;-(backedgedist/7.0)
y = -8

[State 1000, VS]
type = velset
trigger1 = animelemtime(3)=0
trigger1 = var(10)>=6
x = 15;(frontedgedist/7.0)
y = -8

[State 1000, VA]
type = veladd
trigger1 = animelemtime(3)>0
trigger1 = vel y < 0
y = 0.5

[State 1000, VA]
type = changestate
trigger1 = animelemtime(3)>4
trigger1 = var(10)!=1&&var(10)!=3
trigger1 = command="x"||command="y"||command="z"
trigger1 = command="holddown"
value = 1300

[State 1000, CS]
type = ChangeState
triggerall = animelemtime(7)>0
trigger1 = anim = 1000
trigger1 = backedgedist<20
trigger2 = anim = 1001
trigger2 = frontedgedist<20
value = 1001+9*(var(10)>=5)+39*(var(10)=2||var(10)=4)

;---------------------------------------------------------------------------
; Starbow Break
[Statedef 1001]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 1005
ctrl = 0
sprpriority = 1
juggle = ifelse((var(34)&floor(exp(0*ln(2)) + 0.5)),2,0) ;use Juggle

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(0*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1001, T]
type = turn
trigger1 = time = 0
trigger1 = var(10)>=3

[State 1001, NULL]
type = posset
trigger1 = animelemtime(2)<0
x = -floor(gamewidth/2.0)*facing;*ifelse(var(10)>=3,-1,1)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(1)>=0
trigger1 = var(10)=1||var(10)=3
value = ,AP
time = 1
ignorehitpause = 1

[State 1001, VS]
type = velset
trigger1 = animelemtime(3)=0
x = 30

[State 1001, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1000,1
channel = 0

[State 1040, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1000,11


[State 0, PlayerPush]
type = PlayerPush
trigger1 = animelemtime(3)>=0
value = 0
ignorehitpause = 1
;persistent = 



[State sas]
type = Explod
trigger1 = animelemtime(3)>=0
persistent = 3
anim = 21000+floor(7.0*random/1000.0)
ID = 21000
pos = -40-floor(41.0*random/1000.0),-20-floor(41.0*random/1000.0)
postype = p1
;bindtime = -1
vel = 20.0*2.0/3.0,0
removetime = 6;-2
scale = 0.25,0.25
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=1

[State 1200, HITDEF]
type = HitDef
;trigger1 = var(6) < 4
triggerall = movecontact = 0 && movereversed = 0
trigger1 = animelemtime(3)>=0
attr = A, SA
animtype  = back
damage    = ceil(100.0*fvar(11)*ifelse(var(42),1.25,1.0)),20
priority = 4,hit
hitflag = MAF
guardflag = HA
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-35
hitsound = s1,7
guardsound = s2,0
ground.type = High
air.type = low
ground.slidetime = 22+3*((var(42)=1))
ground.hittime  = 22+3*((var(42)=1))
air.hittime = 22+3*((var(42)=1))
ground.velocity = -8.0-2.0*(anim=1203),-6.0
air.velocity = -8.0-2.0*(anim=1203),-6.0
getpower = 80,80
givepower = 40,40
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State 1001, STS]
type = statetypeset
trigger1 = movecontact || movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1001, CS]
type = changestate
trigger1 = movecontact && !movehit
value = 1004


[State 1001, CS]
type = changestate
trigger1 = animelemtime(3)>0
trigger1 = frontedgedist < 20
value = 1002

;---------------------------------------------------------------------------
; Starbow Break
[Statedef 1002]
type    = A
movetype= I
physics = N
velset = 5,0
anim = 1006
ctrl = 0
sprpriority = 1

[State 1002, VA]
type = veladd
trigger1 = time
y = 0.5

[State 1002, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1003

;---------------------------------------------------------------------------
; Starbow Break
[Statedef 1003]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1007
ctrl = 0
sprpriority = 1
movehitpersist=1

[State 1003, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1003, PSND]
type = playsnd
trigger1 = time = 0
value = 40,0

[State 1003, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Starbow Break - Recoil
[Statedef 1004]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1008
ctrl = 0
sprpriority = 1
movehitpersist=1

[State 1004, VS]
type = velset
trigger1 = animelemtime(2)=0
x = -2.0
y = -5.0

[State 1004, Air Friction]
type = velmul
trigger1 = animelemtime(2)>0
x = 0.9

[State 1002, VA]
type = veladd
trigger1 = animelemtime(2)>0
y = 0.5

[State 1002, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1005

;---------------------------------------------------------------------------
; Catadioptric Land
[Statedef 1005]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1009
ctrl = 0
sprpriority = 1
movehitpersist = 1

[State 1003, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1003, PSND]
type = playsnd
trigger1 = time = 0
value = 40,0

[State 1003, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Catadioptric
[Statedef 1010]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1010
ctrl = 0
sprpriority = 1
;facep2=1

[State 1001, T]
type = turn
trigger1 = time = 0
trigger1 = var(10)>=6

[State 1001, NULL]
type = posset
trigger1 = animelemtime(2)<0
x = -floor(gamewidth/2.0)*facing;*ifelse(var(10)>=3,-1,1)

[State 1010, VS]
type = velset
trigger1 = animelemtime(2)=0
x = 6
y = -10

[State 1010, VA]
type = veladd
triggerall = animelemtime(2)>0
trigger1 = command="holdfwd"
trigger1 = vel x < 6
x = 0.25

[State 1010, VA]
type = veladd
triggerall = animelemtime(2)>0
trigger1 = command="holdback"
trigger1 = vel x > -6
x = -0.25

[State 1010, CS]
type = changestate
triggerall = animelemtime(5)>=0
trigger1 = command = "x" || command = "y" || command = "z"
trigger1 = command = "holddown"
value = 1040

[State 1010, CS]
type = changestate
triggerall = animelemtime(5)>=0
trigger1 = command = "x" || command = "y" || command = "z"
value = 1020

[State 1010, VA]
type = veladd
trigger1 = animelemtime(2)>0
y = 0.5

[State 1010, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1011

;---------------------------------------------------------------------------
; Catadioptric Land
[Statedef 1011]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1011+30*(prevstateno=1040)
ctrl = 0
sprpriority = 1
movehitpersist = 1

[State 1003, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1003, PSND]
type = playsnd
trigger1 = time = 0
value = 40,0

[State 1003, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Owen's Chandelier
[Statedef 1020]
type    = A
movetype= A
physics = N
anim = 1020+0*(var(10):=0)
poweradd = 45
ctrl = 0
sprpriority = 1
juggle = ifelse((var(34)&floor(exp(1*ln(2)) + 0.5)),2,0) ;use Juggle

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1020, VS]
type = varset
trigger1 = time = 0
trigger1 = command = "holdfwd" || command = "holdback"
var(10) = ifelse(command="holdfwd",1,2)

[State 1010, VA]
type = veladd
trigger1 = time
y = 0.5

[State 800, IDDQD]
type = HitDef
trigger1 = var(10)>0
trigger1 = Animelemtime(1)=0
trigger1 = var(30) = 0; Throw Limited;!Movecontact && !Movereversed ;Just in case 
attr = A,ST
hitflag = MA-
guardflag = 
fall.animtype = Diagup
priority = 7,Miss
damage = 0,0
pausetime = 0 ,0
sparkno = -1
hitsound = 1,1
yaccel = 0.5
ground.velocity = -2.5,-8
air.velocity = -2.5,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1facing = 1;
p2facing = 1
p1stateno = 1030;+1*(var(10)=1)
fall = 1
fall.recover = 0
id = 1030
numhits = 0

[State ASS]
type = AttackDist
trigger1 = var(10)>0
trigger1 = Animelemtime(3)<0
value = 0

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 220,1
channel = 0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 1100,10

[State sas]
type = Explod
trigger1 = animelemtime(4)=0
anim = 21020
ID = 21020
pos = 15,-30
postype = p1
bindtime = -1
removetime = -2
;scale = 2.3,2.0
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=0

[State 1200, HITDEF]
type = HitDef
;trigger1 = var(6) < 4
triggerall = movecontact = 0 && movereversed = 0
trigger1 = animelemtime(4)>=0 && animelemtime(8)<0
attr = A, SA
animtype  = back
damage    = ceil(100.0*fvar(11)*ifelse(var(42),1.25,1.0)),20
priority = 4,hit
hitflag = MAF
guardflag = HA
pausetime = 10,10
sparkno = S8025+(random%2)
guard.sparkno = S8030
sparkxy = -20,-0
hitsound = s1,6
guardsound = s2,0
ground.type = High
air.type = low
ground.slidetime = 22+3*((var(42)=1))
ground.hittime  = 22+3*((var(42)=1))
air.hittime = 22+3*((var(42)=1))
ground.velocity = -8.0+16.0*(p2dist x<0),-4.0
air.velocity = -8.0+16.0*(p2dist x<0),4.0
getpower = 80,80
givepower = 40,40
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State 220, TS]
type = targetstate
trigger1 = movehit
trigger1 = var(42)
trigger1 = var(15)=0
trigger1 = (var(15):=1) || 1
trigger1 = (fvar(10):=fvar(10)*0.85)||1
persistent = 0
ignorehitpause = 1
value = 450

[State 1001, STS]
type = statetypeset
trigger1 = movecontact || movereversed
trigger2 = animelemtime(8)=0
movetype = I
ignorehitpause = 1
persistent = 0

[State 1010, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1011

;---------------------------------------------------------------------------
; Cranberry Trap
[Statedef 1030]
type    = A
movetype= A
physics = N
anim = 1030
poweradd = 0;45
velset = 0,0
ctrl = 0
sprpriority = 1
movehitpersist=1

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 415,0
channel = 0

[State 1030, PSND]
type = playsnd
trigger1 = time = 0
value = 1,0

[State 0, Width]
type = Width
trigger1 = 1
edge = 35,0
ignorehitpause = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
trigger1 = var(10)=2

[State 0, TargetFacing]
type = TargetFacing
trigger1 = time = 0
value = 1
ID = 1030
;ignorehitpause = 
;persistent = 

[State 1030, TS]
type = targetstate
trigger1 = time = 0
trigger1 = numtarget(1030)
id = 1030
value = 1050

[State 1030, VS]
type = velset
trigger1 = animelemtime(2)=0
x = 2
y = -7

[State 1030, Grav]
type = veladd
trigger1 = animelemtime(2)>0
y = 0.5

[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(1)>=0
trigger1 = animelemtime(2)<0
time = 1
id = 1030
pos = -42,-58

[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(2)>=0
trigger1 = animelemtime(3)<0
time = 1
id = 1030
pos = -35,-26

[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(3)>=0
trigger1 = animelemtime(4)<0
time = 1
id = 1030
pos = -32,-22

[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(4)>=0
trigger1 = animelemtime(5)<0
time = 1
id = 1030
pos = -33,-20

[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(5)>=0
trigger1 = animelemtime(6)<0
time = 1
id = 1030
pos = -29,-61

[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(6)>=0
time = 1
id = 1030
pos = 27,-70

[State 801, IKEMEN Safeguard] ;I Really didn't want to implement this but the alternative would be much messier
type = ChangeState
trigger1 = !NumTarget(1030)
trigger1 = animelemtime(2)<=0
value = 891

[State 1030, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1031
;ignorehitpause = 
;persistent = 

;---------------------------------------------------------------------------
; Cranberry Trap
[Statedef 1031]
type    = S
movetype= A
physics = N
anim = 1031
velset = 0,0
ctrl = 0
sprpriority = 1
movehitpersist=1

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Shockwave"
ID = 21030
pos = 40,0
postype = p1
stateno = 21030
ownpal = 1
facing = 1

[State 1030, PSND]
type = playsnd
trigger1 = time = 0
value = 800,2
channel = 0

[State 1031, PSND]
type = playsnd
trigger1 = time = 0
value = 1030,10

[State 1030, TS]
type = targetstate
trigger1 = time = 0
trigger1 = numtarget(1030)
id = 1030
value = 1051

[State sas]
type = Explod
trigger1 = time=0
anim = 8020+(random%2)
ID = 8000
pos = 25,0
postype = p1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 0
ignorehitpause=1

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = 1
id = 1030
pos = 25,0

[State 1031, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1031, TLA]
type = poweradd
trigger1 = time = 0
value = 120
ignorehitpause = 1

[State 1031, TLA]
type = targetlifeadd
trigger1 = time = 0
id = 1030
value = -150
ignorehitpause = 1

[State 1031, TLA]
type = targetpoweradd
trigger1 = time = 0
id = 1030
value = 80
ignorehitpause = 1

[State 1031, VS]
type = varset
trigger1 = time = 0
fvar(10)=fvar(10)*0.5;75

[State 1031, VS]
type = varset
trigger1 = animelemtime(2)>=0
var(1)=1

[State 1031, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Cranberry Trap HIt
[Statedef 1050]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1050

[State 0, Width]
type = Width
trigger1 = 1
value = 0,0

;---------------------------------------------------------------------------
; Cranberry Trap HIt
[Statedef 1051]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1051

[State 0, Width]
type = Width
trigger1 = 1
value = 0,0

[State 1051, CS]
type = changestate
trigger1 = time = 10
value = 6020

;-----------------------
; Shockwave
[Statedef 21030]
type = S
movetype = I
Physics  = N
Anim  = 1998;1210
SprPriority = 0

[State 1210, Explosion Effect]
type = Explod
trigger1 = !ishelper(21300)
trigger1 = time = [0,8]
trigger2 = ishelper(21300)
trigger2 = time = [0,4]
Anim = 21030
ID = 21030+(time)
Pos = 5+((10)*time),0
PosType = P1
Scale = 0.4+0.3*(time%3),0.4+0.3*(time%3)
Ownpal = 1
SprPriority = 5
RemoveTime = 25

[State 1210, Explosion Effect]
type = Explod
trigger1 = !ishelper(21300)
trigger1 = time = [0,8]
trigger2 = ishelper(21300)
trigger2 = time = [0,4]
Anim = 21030
ID = 21030+(time)
Pos = -(5+((10)*time)),0
PosType = P1
Scale = 0.4+0.3*(time%3),0.4+0.3*(time%3)
Ownpal = 1
SprPriority = 5
RemoveTime = 25

[State 1210, MEX]
type = modifyexplod
trigger1 = time
id = 21030
scale = 0.4,0.4*(1-time*.04)
trans = addalpha
alpha = 256-Time*10,256

[State 1210, MEX]
type = modifyexplod
trigger1 = time
id = 21031
scale = 0.7,0.7*(1-(time-1)*.04)
trans = addalpha
alpha = 256-(time-1)*10,256

[State 1210, MEX]
type = modifyexplod
trigger1 = time
id = 21032
scale = 1.0,1.0*(1-(time-2)*.04)
trans = addalpha
alpha = 256-(time-2)*10,256

[State 1210, MEX]
type = modifyexplod
trigger1 = time
id = 21033
scale = 0.4,0.4*(1-(time-3)*.04)
trans = addalpha
alpha = 256-(time-3)*10,256

[State 1210, MEX]
type = modifyexplod
trigger1 = time
id = 21034
scale = 0.7,0.7*(1-(time-4)*.04)
trans = addalpha
alpha = 256-(time-4)*10,256

[State 1210, MEX]
type = modifyexplod
trigger1 = time
id = 21035
scale = 1.0,1.0*(1-(time-5)*.04)
trans = addalpha
alpha = 256-(time-5)*10,256

[State 1210, MEX]
type = modifyexplod
trigger1 = time
id = 21036
scale = 0.4,0.4*(1-(time-6)*.04)
trans = addalpha
alpha = 256-(time-6)*10,256

[State 1210, MEX]
type = modifyexplod
trigger1 = time
id = 21037
scale = 0.7,0.7*(1-(time-7)*.04)
trans = addalpha
alpha = 256-(time-7)*10,256

[State 1210, MEX]
type = modifyexplod
trigger1 = time
id = 21038
scale = 1.0,1.0*(1-(time-8)*.04)
trans = addalpha
alpha = 256-(time-8)*10,256

[State 1206, Zeeky]
type = destroyself
trigger1 = time >= 60

;-----------------------
; Shockwave
[Statedef 21031]
type = S
movetype = I
Physics  = N
Anim  = 21032
SprPriority = -2

;[State 1206, PS]
;type = posset
;trigger1 = 1
;y = 0

[State 1205, BTP]
Type = bindtoparent
trigger1 = time = 0
time = 1
pos = 40,0

[State 1206, AD]
type = angleset
trigger1 = 1
value = 0

[State 1206, AD]
type = angledraw
trigger1 = 1
Scale = .5+Time*.2,(.5+Time*.2)*.15

[State 1206, T]
type = trans
trigger1 = 1
Trans = AddAlpha
Alpha = 256-Time*16,256

[State 1205, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1206, Zeeky]
type = destroyself
trigger1 = time >= 16

;---------------------------------------------------------------------------
; Starbow Break (Angled)
[Statedef 1040]
type    = A
movetype= A
physics = N
anim = 1040+0*(var(10):=0)
poweradd = 45
ctrl = 0
velset = 0,0
sprpriority = 1
juggle = ifelse((var(34)&floor(exp(3*ln(2)) + 0.5)),2,0) ;use Juggle
;facep2=1

[State 1040, T]
type = turn
trigger1 = time = 0
trigger1 = frontedgedist < 30
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = animelemtime(3)>=0
value = 0
ignorehitpause = 1
;persistent = 

[State 1001, NULL]
type = posset
trigger1 = prevstateno = 1000
trigger1 = animelemtime(2)<0
x = -floor(gamewidth/2.0)*facing

[State 1040, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1000,1
channel = 0

[State 1040, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1000,11

[State 4000, Effect]
type = helper
trigger1 = animelemtime(3)>=0
persistent = 3
ignorehitpause=1
helpertype = normal
name = "SBowBreak"
ID = 21040
pos = 20-floor(41.0*random/1000.0),-28-floor(41.0*random/1000.0)
postype = p1
stateno = 21040
ownpal = 1
facing = 1

[State 1001, VS]
type = velset
trigger1 = animelemtime(3)=0
x = 30*cos(45.0*pi/180.0)
y = 30*sin(45.0*pi/180.0)

[State 1040, AS]
type = angleset
trigger1 = 1
value = 0

[State 1040, AD]
type = angledraw
trigger1 = animelemtime(3)>=0
value = -45
ignorehitpause = 1

[State 1200, HITDEF]
type = HitDef
triggerall = movecontact = 0 && movereversed = 0
trigger1 = animelemtime(3)>=0
attr = A, SA
animtype  = back
damage    = ceil(80.0*fvar(11)*ifelse(var(42),1.25,1.0)),16
priority = 4,hit
hitflag = MAF
guardflag = HA
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-0
hitsound = s1,6
guardsound = s2,0
ground.type = High
air.type = low
ground.slidetime = 22+3*((var(42)=1))
ground.hittime  = 22+3*((var(42)=1))
air.hittime = 22+3*((var(42)=1))
ground.velocity = 0,-10.0
air.velocity = 0,-10.0
getpower = 80,80
givepower = 40,40
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State 1001, STS]
type = statetypeset
trigger1 = movecontact || movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1010, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1011

;-----------------------
; Starbow Break FX
[Statedef 21040]
type = S
movetype = A;I
Physics  = N
Anim  = 21000+floor(7.0*random/1000.0)
SprPriority = 5

[State 21040, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21040, VS]
type = velset
trigger1 = 1
x = 20*cos(45.0*pi/180.0)
y = 20*sin(45.0*pi/180.0)

[State 21040, AD]
type = angledraw
trigger1 = 1
value = -45
scale = 0.25,0.25
ignorehitpause = 1

[State 21040, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21040, Zeeky]
type = destroyself
trigger1 = time >= 6



;---------------------------------------------------------------------------
; Destroyer Claw
[Statedef 1100]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1100
poweradd = 45*(prevstateno!=1900)
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = ifelse((var(34)&floor(exp(2*ln(2)) + 0.5)),2,0) ;use Juggle

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 1100,0
channel = 0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 1100,10

[State 1100, LP Melee Invincible]
type = NotHitBy
trigger1 = var(10)<=1
trigger1 = time <= 9;0
value = ,AA
time = 1;9
ignorehitpause = 1

[State 1100, MP Proj Invincible]
type = NotHitBy
trigger1 = var(10)=2
trigger1 = time <= 9
value = ,AP
time = 1
ignorehitpause = 1

[State 1100, HP Throw Invincible]
type = NotHitBy
trigger1 = var(10)=3
trigger1 = time <= 9
value = ,AT
time = 1
ignorehitpause = 1

[State 1100, GCC Invincible]
type = NotHitBy
trigger1 = var(10)>=4
trigger1 = time <= 11
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State sas]
type = Explod
trigger1 = animelemtime(3)=0
anim = 21100
ID = 21100
pos = 18,-41;20,-51
postype = p1
bindtime = -1
removetime = -2
scale = 2.3*0.9,2.0*0.9
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=0

[State 1100, HITDEF]
type = HitDef
;trigger1 = var(6) < 4
triggerall = movecontact = 0 && movereversed = 0
trigger1 = animelemtime(6)>=0&&animelemtime(7)<0
attr = S, SA
animtype  = back
damage    = ceil((110.0+10*(var(10)=2)+20*(var(10)>=3))*fvar(11)*ifelse(var(42),1.25,1.0)),22+2*(var(10)=2)+4*(var(10)>=3)
priority = 4,hit
hitflag = MAF
guardflag = M
pausetime = 10,10
sparkno = S8025+(random%2)
guard.sparkno = S8030
sparkxy = -20,-55
hitsound = s1,6
guardsound = s2,0
ground.type = High
air.type = low
ground.slidetime = 22+3*((var(42)=1))
ground.hittime  = 22+3*((var(42)=1))
air.hittime = 22+3*((var(42)=1))
guard.hittime = 11
guard.slidetime = 11
ground.velocity = -10.0,-4.5
air.velocity = -10.0,-4.5
getpower = 80*(prevstateno!=1900),80*(prevstateno!=1900)
givepower = 40,40
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.75
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(7) = 0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Royal Flush
[Statedef 1200]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1200+1*(var(10)=2)+2*(var(10)>=3)+0*floor(var(24):=0)
poweradd = 30
ctrl = 0
sprpriority = 1
facep2 = 1
juggle = 0;ifelse((var(34)&floor(exp(3*ln(2)) + 0.5)),2,0) ;use Juggle

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1200, VS]
type = velset
triggerall = animelemtime(2)>=0
trigger1 = anim = 1200
trigger1 = animelemtime(22)<0
trigger2 = anim = 1201
trigger2 = animelemtime(31)<0
trigger3 = anim = 1202
trigger3 = animelemtime(40)<0
x = 4.5

[State REX]
type = removeexplod
trigger1 = animelemtime(7)=0
trigger2 = animelemtime(11)=0
trigger3 = anim=1201||anim=1202
trigger3 = animelemtime(16)=0
trigger4 = anim=1201||anim=1202
trigger4 = animelemtime(20)=0
trigger5 = anim=1202
trigger5 = animelemtime(25)=0
trigger6 = anim=1202
trigger6 = animelemtime(29)=0
id = 21200

[State REX]
type = removeexplod
trigger1 = anim = 1200
trigger1 = animelemtime(15)=0
trigger2 = anim = 1201
trigger2 = animelemtime(24)=0
trigger3 = anim = 1202
trigger3 = animelemtime(33)=0
id = 21200

[State sas]
type = Explod
trigger1 = animelemtime(3)=0
trigger2 = animelemtime(12)=0
trigger3 = anim=1201||anim=1202
trigger3 = animelemtime(21)=0
trigger4 = anim=1202
trigger4 = animelemtime(30)=0
anim = 20220
ID = 21200
pos = 18,-47
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=0

[State sas]
type = Explod
trigger1 = animelemtime(8)=0
trigger2 = anim=1201||anim=1202
trigger2 = animelemtime(17)=0
trigger3 = anim=1202
trigger3 = animelemtime(26)=0
anim = 20210
ID = 21200
pos = 18,-47
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=0

[State sas]
type = Explod
trigger1 = anim = 1200
trigger1 = animelemtime(20)=0
trigger2 = anim = 1201
trigger2 = animelemtime(29)=0
trigger3 = anim = 1202
trigger3 = animelemtime(38)=0
anim = 21100
ID = 21200
pos = 20,-51
postype = p1
bindtime = -1
removetime = -2
scale = 1.5,1.25;2.3,2.0
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=0

[State 1200, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
trigger2 = animelemtime(12)=0
trigger3 = anim=1201||anim=1202
trigger3 = animelemtime(21)=0
trigger4 = anim=1202
trigger4 = animelemtime(30)=0
value = 1200,0
channel = 0

[State 1200, PSND]
type = playsnd
trigger1 = animelemtime(8)=0
trigger2 = anim=1201||anim=1202
trigger2 = animelemtime(17)=0
trigger3 = anim=1202
trigger3 = animelemtime(26)=0
value = 1200,1
channel = 0

[State 1200, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
trigger2 = animelemtime(8)=0
trigger3 = animelemtime(12)=0
trigger4 = anim=1201||anim=1202
trigger4 = animelemtime(17)=0
trigger5 = anim=1201||anim=1202
trigger5 = animelemtime(21)=0
trigger6 = anim=1202
trigger6 = animelemtime(26)=0
trigger7 = anim=1202
trigger7 = animelemtime(30)=0
value = 1200,10
channel = 3

[State 1200, PSND]
type = playsnd
trigger1 = anim = 1200
trigger1 = animelemtime(21)=0
trigger2 = anim = 1201
trigger2 = animelemtime(30)=0
trigger3 = anim = 1202
trigger3 = animelemtime(39)=0
value = 1200,2
channel = 0

[State 1200, PSND]
type = playsnd
trigger1 = anim = 1200
trigger1 = animelemtime(21)=0
trigger2 = anim = 1201
trigger2 = animelemtime(30)=0
trigger3 = anim = 1202
trigger3 = animelemtime(39)=0
value = 4000,12
channel = 3

[State 1200, MHR]
type = movehitreset
trigger1 = animelemtime(8)=0
trigger2 = animelemtime(12)=0
trigger3 = anim=1201||anim=1202
trigger3 = animelemtime(17)=0
trigger4 = anim=1201||anim=1202
trigger4 = animelemtime(21)=0
trigger5 = anim=1202
trigger5 = animelemtime(26)=0
trigger6 = anim=1202
trigger6 = animelemtime(30)=0

[State 1200, MHR]
type = movehitreset
trigger1 = anim=1200
trigger1 = animelemtime(21)=0
trigger2 = anim=1201
trigger2 = animelemtime(30)=0
trigger3 = anim=1202
trigger3 = animelemtime(39)=0

[State 1100, HITDEF]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(3*ln(2)) + 0.5)),0,1) || var(24)
triggerall = movecontact = 0 && movereversed = 0
trigger1 = animelemtime(3)=0
trigger2 = animelemtime(8)=0
trigger3 = animelemtime(12)=0
trigger4 = anim=1201||anim=1202
trigger4 = animelemtime(17)=0
trigger5 = anim=1201||anim=1202
trigger5 = animelemtime(21)=0
trigger6 = anim=1202
trigger6 = animelemtime(26)=0
trigger7 = anim=1202
trigger7 = animelemtime(30)=0
attr = S, SA
animtype  = Hard
damage    = ceil((16-6*(var(10)>=2))*fvar(11)*ifelse(var(42),1.25,1.0)),4-1*(var(10)>=2)
priority = 4,hit
hitflag = MAF
guardflag = M
pausetime = 4,4
sparkno = S8005+(random%2)
guard.sparkno = S8030
sparkxy = -20,-55
hitsound = s1,6
guardsound = s2,0
ground.type = High
air.type = low
ground.slidetime = 22+3*((var(42)=1))
ground.hittime  = 22+3*((var(42)=1))
air.hittime = 22+3*((var(42)=1))
guard.hittime = 17
guard.slidetime = 17
ground.velocity = -5.0
air.velocity = -5.0,-4.5
getpower = 20-4*(anim=1201)-5*(anim=1202),20-4*(anim=1201)-5*(anim=1202)
givepower = 10-2*(anim=1201)-3*(anim=1202),10-2*(anim=1201)-3*(anim=1202)
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1

[State 1100,Final Hit]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(3*ln(2)) + 0.5)),0,1) || var(24)
triggerall = movecontact = 0 && movereversed = 0
trigger1 = anim = 1200
trigger1 = animelemno(0)=21;time(21)=0
trigger2 = anim = 1201
trigger2 = animelemno(0)=30;time(30)=0
trigger3 = anim = 1202
trigger3 = animelemno(0)=39;time(39)=0
attr = S, SA
animtype  = Hard
damage    = ceil((40-8*(var(10)<=1)-10*(var(10)>=3))*fvar(11)*ifelse(var(42),1.25,1.0)),8-2*(var(10)!=2)
priority = 4,hit
hitflag = MAF
guardflag = M
pausetime = 10,10
sparkno = S8025+(random%2)
guard.sparkno = S8030
sparkxy = -20,-55
hitsound = s1,6
guardsound = s2,0
ground.type = High
air.type = low
ground.slidetime = 22+3*((var(42)=1))
ground.hittime  = 22+3*((var(42)=1))
air.hittime = 22+3*((var(42)=1))
guard.hittime = 16
guard.slidetime = 16
ground.velocity = -10.0,-3.5
guard.velocity = -12.0
air.velocity = -10.0,-3.5
getpower = 20-5*(anim=1202),20-5*(anim=1202)
givepower = 10-3*(anim=1202),10-3*(anim=1202)
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1

[State 210, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
triggerall = movehit;=1
trigger1 = animelemtime(8)>=0&&animelemtime(9)<0
fvar(10) = fvar(10)*0.98
ignorehitpause = 1
persistent=0
[State 200, Damage Dampen]
type = varset
triggerall = movehit;=1
trigger1 = animelemtime(12)>=0&&animelemtime(13)<0
fvar(10) = fvar(10)*0.98
ignorehitpause = 1
persistent=0
[State 200, Damage Dampen]
type = varset
triggerall = movehit;=1
trigger1 = anim=1201||anim=1202
trigger1 = animelemtime(17)>=0&&animelemtime(18)<0
fvar(10) = fvar(10)*0.98
ignorehitpause = 1
persistent=0
[State 200, Damage Dampen]
type = varset
triggerall = movehit;=1
trigger1 = anim=1201||anim=1202
trigger1 = animelemtime(21)>=0&&animelemtime(22)<0
fvar(10) = fvar(10)*0.98
ignorehitpause = 1
persistent=0
[State 200, Damage Dampen]
type = varset
triggerall = movehit;=1
trigger1 = anim=1202
trigger1 = animelemtime(26)>=0&&animelemtime(27)<0
fvar(10) = fvar(10)*0.98
ignorehitpause = 1
persistent=0
[State 200, Damage Dampen]
type = varset
triggerall = movehit;=1
trigger1 = anim=1202
trigger1 = animelemtime(30)>=0&&animelemtime(31)<0
fvar(10) = fvar(10)*0.98
ignorehitpause = 1
persistent=0
[State 200, Damage Dampen]
type = varset
triggerall = movehit;=1
trigger1 = anim=1200
trigger1 = animelemtime(21)>=0&&animelemtime(22)<0
fvar(10) = fvar(10)*0.98
ignorehitpause = 1
persistent=0
[State 200, Damage Dampen]
type = varset
triggerall = movehit;=1
trigger1 = anim=1201
trigger1 = animelemtime(30)>=0&&animelemtime(31)<0
fvar(10) = fvar(10)*0.98
ignorehitpause = 1
persistent=0
[State 200, Damage Dampen]
type = varset
triggerall = movehit;=1
trigger1 = anim=1202
trigger1 = animelemtime(39)>=0&&animelemtime(40)<0
fvar(10) = fvar(10)*0.98
ignorehitpause = 1
persistent=0

[State 200, Damage Dampen]
type = varset
triggerall = movehit=1
trigger1 = anim = 1200
trigger1 = animelemtime(21)>=0
trigger2 = anim = 1201
trigger2 = animelemtime(30)>=0
trigger3 = anim = 1202
trigger3 = animelemtime(39)>=0
fvar(10) = fvar(10)*0.75
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = anim = 1200
trigger1 = animelemtime(22)=0 || (animelemno(0)=21 && (movecontact||movereversed))
trigger2 = anim = 1201
trigger2 = animelemtime(31)=0 || (animelemno(0)=30 && (movecontact||movereversed))
trigger3 = anim = 1202
trigger3 = animelemtime(40)=0 || (animelemno(0)=39 && (movecontact||movereversed))
movetype = I
persistent = 0
ignorehitpause = 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Straight Flush
[Statedef 1300]
type    = A
movetype= A
physics = N
anim = 1300
poweradd = 30
velset = 0,0
ctrl = 0
facep2=1
sprpriority = 1

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 415,0
channel = 0

[State 1030, VS]
type = velset
trigger1 = animelemtime(2)=0
x = 0
y = 6.0

[State 1030, Grav]
type = veladd
trigger1 = animelemtime(2)>0
y = 0.5

[State 1030, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1301
;ignorehitpause = 
;persistent = 

;---------------------------------------------------------------------------
; Straight Flush
[Statedef 1301]
type    = S
movetype= A
physics = N
anim = 1301
velset = 0,0
ctrl = 0
sprpriority = 1
juggle = ifelse((var(34)&floor(exp(5*ln(2)) + 0.5)),2,0) ;use Juggle

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Shockwave"
ID = 21300;21030
pos = 0,10
postype = p1
stateno = 21030
ownpal = 1
facing = 1

[State 1030, PSND]
type = playsnd
trigger1 = time = 0
value = 800,2
channel = 0

[State 1031, PSND]
type = playsnd
trigger1 = time = 0
value = 1030,10

[State sas]
type = Explod
trigger1 = time=0
anim = 8020+(random%2)
ID = 8000
pos = 25,0
postype = p1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 0
ignorehitpause=1

[State 1031, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1200, HITDEF]
type = HitDef
;trigger1 = var(6) < 4
triggerall = movecontact = 0 && movereversed = 0
trigger1 = animelemno(0)=2
attr = S, SA
animtype  = back
damage  = ceil(80.0*fvar(11)*ifelse(var(42),1.25,1.0)),16
priority = 4,hit
hitflag = MAF
guardflag = M
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-0
hitsound = s1,3
guardsound = s2,0
ground.type = High
air.type = low
ground.slidetime = 22+3*((var(42)=1))
ground.hittime  = 22+3*((var(42)=1))
air.hittime = 22+3*((var(42)=1))
guard.slidetime = 18
guard.hittime  = 18
ground.velocity = 0,-14.0
air.velocity = 0,-14.0
getpower = 80,80
givepower = 40,40
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.75
ignorehitpause = 1
persistent = 0

[State 1001, STS]
type = statetypeset
trigger1 = movecontact || movereversed
trigger2 = animelemtime(3)=0
movetype = I
ignorehitpause = 1
persistent = 0

[State 1031, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Guard Cancel Counter
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
trigger1 = (var(10):=4)||1
value = 1100

;-----------------------
; Guard Cancel Use Effect
[Statedef 21900]
anim = 1999
velset = 0,0
sprpriority = 3;-1

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
scale = 0.5+0.15*var(0),0.5+0.15*var(0)

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-ifelse(time<30,0,floor(256.0*(time-30)/40.0)),256

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 70
