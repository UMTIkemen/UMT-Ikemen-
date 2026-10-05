;---------------------------------------------------------------------------
; 236 Spectre -Dense-
[Statedef 1000]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1000+1*(var(10)=2)+2*(var(10)>=3)
poweradd = 30
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(0*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1000, PSND]
type = playsnd
triggerall = var(10)>=3
trigger1 = animelemtime(4)=0
trigger2 = animelemtime(10)=0
value = 0,1
channel = 1

[State 1000, PA]
type = posadd
trigger1 = anim = 1000 && animelemtime(5)=0
trigger2 = anim = 1001 && animelemtime(4)=0
trigger3 = anim = 1002 && animelemtime(11)=0
x = 10
[State 1000, PA]
type = posadd
trigger1 = anim = 1000 && (animelemtime(6)=0||animelemtime(7)=0)
trigger2 = anim = 1001 && (animelemtime(5)=0)
trigger3 = anim = 1002 && (animelemtime(12)=0||animelemtime(13)=0)
x = 5

[State 1000, VS]
type = velset
trigger1 = anim = 1002
trigger1 = animelemtime(12)=0
x = 8.0

[State 1100, Proj]
type = helper
trigger1 = var(10)<=1
trigger1 = animelemtime(7)=0
trigger2 = var(10)=2
trigger2 = animelemtime(8)=0
trigger3 = var(10)>=3
trigger3 = animelemtime(13)=0
helpertype = normal
name = "Explosion"
ID = 21000
pos = 50-25*(var(10)=2),-35-48*(var(10)=2)
postype = p1
stateno = 21000
ownpal = 1
facing = 1

[State 1000, PSND]
type = playsnd
trigger1 = var(10)<=1
trigger1 = animelemtime(7)=0
trigger2 = var(10)=2
trigger2 = animelemtime(8)=0
trigger3 = var(10)>=3
trigger3 = animelemtime(13)=0
value = 1000,10

[State 1000, Damage Calc]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (var(16):=80)||1
trigger1 = (var(17):=16)||1
trigger2 = var(10)=2
trigger2 = (var(16):=85)||1
trigger2 = (var(17):=17)||1
trigger3 = var(10)>=3
trigger3 = (var(16):=120)||1
trigger3 = (var(17):=24)||1

[State 200, 1]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(0*ln(2)) + 0.5)),0,1)
triggerall = !movecontact && !movereversed
trigger1 = var(10)<=1
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
trigger2 = var(10)=2
trigger2 = animelemtime(8)>=0 && animelemtime(9)<0
trigger3 = var(10)>=3
trigger3 = animelemtime(13)>=0 && animelemtime(14)<0
attr = S,SA
damage = ceil(var(16)*fvar(11)*ifelse(var(42),1.25,1.0)),var(17)                   ;Damage that move inflicts, guard damage
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -15,-50
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 24+3*(var(42))
ground.hittime = 24+3*(var(42))
air.hittime = 24+3*(var(42))
guard.slidetime = 18
guard.hittime = 18
ground.velocity = -8.0+4.0*(var(10)=2),cond(var(10)>=3,-8.0,0.0)
air.type = Low
air.velocity = -8.0+4.0*(var(10)=2),-8.0
getpower = 80,80
givepower = 40,40
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = cond(var(10)>=3,1,0)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 1000

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 1000, STS]
type = statetypeset
trigger1 = movecontact||movereversed
trigger2 = var(10)<=1 && animelemtime(8)=0
trigger3 = var(10)=2 && animelemtime(9)=0
trigger4 = var(10)>=3 && animelemtime(14)=0
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Explosion
[Statedef 21000]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21000
sprpriority = 5

[State 21000, VS]
type = varset
trigger1 = time = 0
var(10) = cond((ishelper(21000)),(root,var(10)),(parent,var(10)))

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 21001
ID = 21001
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
random = 30,30
removetime = 15
scale = 1,1
sprpriority = 5
ontop = 0
ownpal = 0
removeongethit = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 21010+floor(4.0*random/1000.0)
ID = 21010
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1-2*(random%2=0)
vfacing = 1
bindtime = -1
random = 0,0
removetime = 15
scale = 1.2,1.2
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 21000, MEX]
Type = ModifyExplod
Trigger1 = NumExplod(21010)
ID = 21010
Scale = 0.6+(time/5.0),0.6+(time/5.0)
Trans = AddAlpha
Alpha = 256-floor(256.0*time/15.0),256
ignorehitpause = 1

[State 1100, Proj]
type = helper
trigger1 = time=5
trigger1 = ishelper(21000)||ishelper(21001);||ishelper(21002)
helpertype = normal
name = "Explosion"
ID = cond(ishelper(21000),21001,cond(ishelper(21001),21002,21003))
pos = 20-10*(var(10)=2),0-18*(var(10)=2)
postype = p1
stateno = 21000
ownpal = 1
facing = 1

[State 20620, ASS]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 21000, ASS]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 21000, AD]
Type = AngleDraw
Trigger1 = 1
Scale = 2.5-(2.0*time/15.0),2.5-(2.0*time/15.0)
ignorehitpause = 1

[State 11000, T]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 256-floor(256.0*time/15.0),256
ignorehitpause = 1

[State 21000, Zeeky]
type = destroyself
trigger1 = time >= 15

;---------------------------------------------------------------------------
; 623 Gnome -Dense-
[Statedef 1100]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1100+1*(var(10)=2)+2*(var(10)>=3)+0*floor(var(12):=cond(prevstateno=1900,0,1))+0*floor(var(24):=0)+0*floor(var(57):=0)
poweradd = 30*(prevstateno!=1900)
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 1

[State 1100, GC NHB]
type = nothitby
trigger1 = time=0 && (prevstateno=1900)
value = SCA,AA,AP,AT
time = 19
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1100, STS]
type = statetypeset
trigger1 = animelemtime(6)=0
statetype = A
physics = N
ignorehitpause = 1

[State 1100, VS]
type = velset
trigger1 = animelemtime(6)=0
x = 1.5+3.0*(var(10)>=2)
y = -6.25-2.5*(var(10)>=2)

[State 1100, Grav]
type = veladd
trigger1 = animelemtime(6)>0 && animelemtime(14)<0
y = 0.125

[State 200, LP/MP]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(1*ln(2)) + 0.5)),0,1) || var(24)
triggerall = !movecontact && !movereversed
trigger1 = var(10)<=2
trigger1 = animelemtime(6)>=0 && animelemtime(10)<0
attr = S,SA
damage = ceil(10*(fvar(11)/cond(var(57)=2,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),1
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 8,8
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -15,-60
hitsound = s1,1
guardsound = s2,0
ground.type = High
ground.slidetime = 24+3*(var(42))
ground.hittime = 24+3*(var(42))
air.hittime = 24+3*(var(42))
guard.slidetime = 18
guard.hittime = 18
ground.velocity = -2.0,-7.5
air.type = Low
air.velocity = -2.0,-7.5
getpower = 10*(var(12)=1),10*(var(12)=1)
givepower = 5,5
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

[State 200, HP]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(1*ln(2)) + 0.5)),0,1) || var(24)
triggerall = !movecontact && !movereversed
trigger1 = var(10)>=3
trigger1 = animelemtime(6)>=0 && animelemtime(10)<0
attr = S,SA
damage = ceil(20*(fvar(11)/cond(var(57)=2,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),2
animtype = Heavy
guardflag =
hitflag = AF
priority = 4,Hit
pausetime = 8,8
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -15,-60
hitsound = s1,1
guardsound = s2,0
ground.type = High
ground.slidetime = 24+3*(var(42))
ground.hittime = 24+3*(var(42))
air.hittime = 24+3*(var(42))
guard.slidetime = 24
guard.hittime = 24
ground.velocity = -2.0,-7.5
guard.velocity = -10.0
air.type = Low
air.velocity = -2.0,-7.5
getpower = 10*(var(12)=1),10*(var(12)=1)
givepower = 5,5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
guard.dist = 0
ID = 1100

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(1100)
trigger1 = target(1100),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 2;Change index
ignorehitpause = 1
persistent = 0

[State 1200, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 1100, CS]
type = changestate
trigger1 = animtime = 0
value = 1101
ctrl = 0

;---------------------------------------------------------------------------
; 623 Gnome -Dense-
[Statedef 1101]
type = A
movetype = A
physics = N
anim = cond(prevstateno=1100,1105,1110+1*(var(10)=2)+2*(var(10)>=3))
velset = 0,0
poweradd = cond(prevstateno=1100,0,30)*(var(12)=1)
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 0

[State 1101, MVS]
type = null
trigger1 = time = 0
trigger1 = prevstateno != 1100
trigger1 = (var(12):=1)||1
trigger1 = (var(24):=0)||1
trigger1 = (var(57):=0)||1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1101, PSND]
type = playsnd
trigger1 = anim = 1105
trigger1 = animelemtime(5)=0
trigger2 = anim = [1110,1112]
trigger2 = animelemtime(7)=0
value = 1100,10
channel = 7 ;CH7 Stops when hit

[State 1100, VS]
type = velset
trigger1 = anim = 1105
trigger1 = animelemtime(5)=0
trigger2 = anim = [1110,1112]
trigger2 = animelemtime(7)=0
x = 9.0+cond((anim=[1111,1112]),cond(var(10)=2,4.5,9.0),0.0)
y = 9.0

[State 1000, Damage Calc]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (var(16):=50)||1
trigger1 = (var(17):=10)||1
trigger2 = var(10)=2
trigger2 = (var(16):=65)||1
trigger2 = (var(17):=13)||1
trigger3 = var(10)>=3
trigger3 = (var(16):=80)||1
trigger3 = (var(17):=16)||1

[State 200, 1]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(1*ln(2)) + 0.5)),0,1) || var(24)
triggerall = !movecontact && !movereversed
trigger1 = anim = 1105
trigger1 = animelemtime(5)>=0
trigger2 = anim = [1110,1112]
trigger2 = animelemtime(7)>=0
attr = A,SA
damage = ceil(var(16)*(fvar(11)/cond(var(57)=2,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),var(17)
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4,Hit
pausetime = 6,6
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,0
hitsound = s1,1
guardsound = s2,0
ground.type = High
ground.slidetime = 24+3*(var(42))
ground.hittime = 24+3*(var(42))
air.hittime = 24+3*(var(42))
guard.slidetime = 18
guard.hittime = 18
ground.velocity = -4.0,-4.5
guard.velocity = -10.0
air.type = High
air.velocity = -4.0,-4.5
getpower = (30+10*(prevstateno!=1100))*(var(12)=1),(30+10*(prevstateno!=1100))*(var(12)=1)
givepower = 15+5*(prevstateno!=1100),15+5*(prevstateno!=1100)
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

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(1100)
trigger1 = target(1100),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 2;Change index
ignorehitpause = 1
persistent = 0

[State 1200, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 1100, Flag Recovery]
type = statetypeset
triggerall = movecontact||movereversed
trigger1 = anim = 1105
trigger1 = animelemtime(5)>=0
trigger2 = anim = 1110
trigger2 = animelemtime(7)>=0
movetype = I
ignorehitpause = 1
persistent = 0

[State 1100, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1102
ctrl = 0

;---------------------------------------------------------------------------
; 623 Gnome -Dense-
[Statedef 1102]
type = S
movetype = A
physics = S
anim = 1106
velset = 0,0
poweradd = 0
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1102, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 1100,11

[State 1100, Proj]
type = helper
trigger1 = animelemtime(1)=0
helpertype = normal
name = "Spike"
ID = 21100
pos = 20,0
postype = p1
stateno = 21100
ownpal = 1
facing = 1

[State 1102, Displacement]
type = posadd
trigger1 = time = 0
x = -(pos y)

[State 1102, VS]
type = posset
trigger1 = time = 0
y = 0

[State 1102, STS]
type = statetypeset
trigger1 = animelemtime(3)=0
statetype = A
physics = N
ignorehitpause = 1

[State 1102, VS]
type = velset
trigger1 = animelemtime(3)=0
x = -6.0
y = -6.0

[State 1102, Grav]
type = veladd
trigger1 = animelemtime(3)>0
y = 0.5

[State 1102, Friction]
type = veladd
trigger1 = animelemtime(3)>0
trigger1 = vel x < -2.5
x = 0.25

[State 1102, Lower Bound]
type = velset
trigger1 = animelemtime(3)>0
trigger1 = vel x > -2.5
x = -2.5

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(1*ln(2)) + 0.5)),0,1) || var(24)
trigger1 = animelemtime(2)>=0 && animelemtime(3)<0
trigger1 = !movecontact && !movereversed
attr = S,SA
damage = ceil(45*(fvar(11)/cond(var(57)=2,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),8
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 1,5
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-50
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 24+3*(var(42))
ground.hittime = 24+3*(var(42))
air.hittime = 24+3*(var(42))
guard.slidetime = 18
guard.hittime = 18
ground.velocity = -1.5,-12.5
air.type = High
air.velocity = -1.5,-12.5
getpower = 40*(var(12)=1),40*(var(12)=1)
givepower = 20,20
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

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(1100)
trigger1 = target(1100),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 2;Change index
ignorehitpause = 1
persistent = 0

[State 1200, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(3)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1100, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1103
ctrl = 0

;---------------------------------------------------------------------------
; 623 Gnome -Dense- Landing
[Statedef 1103]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1107+1*(var(10)=2)+2*(var(10)>=3)
sprpriority = 1
velset = 0,0
movehitpersist = 1
facep2 = 0

[State 1103, PSND]
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
; Crystal
[Statedef 21100]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21100
sprpriority = 5

[State 20620, ASS]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 21000, ASS]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 21000, AD]
Type = AngleDraw
Trigger1 = 1
Scale = 1.0,1.0
ignorehitpause = 1

[State 11000, T]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 256,256
ignorehitpause = 1

[State 21000, Zeeky]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; 63214 Kidnapping Oni
[Statedef 1200]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1200+1*(var(10)=2)+2*(var(10)>=3)
poweradd = 45
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 1

[State 800, CS]
type = changestate
trigger1 = numtarget(1200)
trigger1 = movehit
value = 1201
ignorehitpause = 1
persistent = 0

[State 1200, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 1200,10
channel = 7

[State 1100, Proj]
type = helper
trigger1 = animelemtime(6)=-5
helpertype = normal
name = "Blackhole"
ID = 21200
pos = 0,-50
postype = p1
stateno = 21200
ownpal = 1
facing = 1
[State 1100, Proj]
type = helper
trigger1 = animelemtime(6)=-5
helpertype = normal
name = "Blackhole"
ID = 21201
pos = 0,-50
postype = p1
stateno = 21200
ownpal = 1
facing = 1

[State 1200, Wind]
type = helper
triggerall = animelemtime(6)=0
triggerall = numenemy
trigger1 = var(10)<=2 ;LP and MP versions only
helpertype = normal
name = "Pusher"
id = 21220
stateno = 21220
pos = floor(p2dist x)+80,0
postype = p1
ownpal = 1
facing = 1
Size.Ground.Front = 50
Size.Ground.Back = 50
Size.Air.Front = 50
Size.Air.Back = 50
Size.Height = 9999

[State 800, IDDQD]
type = HitDef
triggerall = !movecontact && !movereversed
triggerall = var(30)=0 ;Throw Limited
trigger1 = var(10)>=3
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger2 = var(10)=2
trigger2 = animelemtime(6)>=0 && animelemtime(8)<0
trigger3 = var(10)<=1
trigger3 = animelemtime(6)>=0 && animelemtime(9)<0
attr = S,ST
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
id = 1200
numhits = 0

[State ASS]
type = AttackDist
trigger1 = 1
value = 0
ignorehitpause = 1

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = var(10)>=3
trigger1 = animelemtime(7)=0
trigger2 = var(10)=2
trigger2 = animelemtime(8)=0
trigger3 = var(10)<=1
trigger3 = animelemtime(9)=0
trigger4 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 63214 Kidnapping Oni
[Statedef 1201]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1205
poweradd = 0
ctrl = 0
sprpriority = 1
facep2 = 0
;movehitpersist=1

[State 1201, TF]
type = targetfacing
trigger1 = time = 0
value = -1
ignorehitpause = 1

[State 1201, TS]
type = targetstate
trigger1 = time = 0
id = 1200
value = 1250
ignorehitpause = 1

[State 1001, TB]
type = TargetBind
trigger1 = time=0
id = 1200
pos = 25,-70
ignorehitpause = 1

[State 1201, STS]
type = statetypeset
trigger1 = animelemtime(3)=0
statetype = A
physics = N

[State 1201, VS]
type = velset
trigger1 = animelemtime(3)=0
x = 1.0
y = -12.5

[State 1201, Grav]
type = veladd
trigger1 = animelemtime(3)>0
y = 0.5

[State 1201, PSND]
type = playsnd
trigger1 = animelemtime(4)=1
value = 0,1
channel = 1

[State 1001, TB]
type = TargetBind
trigger1 = animelemtime(2)=0
id = 1200
pos = 15,-70
ignorehitpause = 1
[State 1001, TB]
type = TargetBind
trigger1 = animelemtime(3)=0
id = 1200
pos = 22,-70
ignorehitpause = 1
[State 1001, TB]
type = TargetBind
trigger1 = animelemno(0)=4
id = 1200
pos = 20,-65
ignorehitpause = 1
[State 1001, TB]
type = TargetBind
trigger1 = animelemno(0)=5
id = 1200
pos = 20,-55
ignorehitpause = 1
[State 1001, TB]
type = TargetBind
trigger1 = animelemno(0)=6
id = 1200
pos = 15,-35
ignorehitpause = 1
[State 1001, TB]
type = TargetBind
trigger1 = animelemno(0)=7
id = 1200
pos = -10,-25
ignorehitpause = 1
[State 1001, TB]
type = TargetBind
trigger1 = animelemno(0)=8
id = 1200
pos = -25,-50
ignorehitpause = 1
[State 1001, TB]
type = TargetBind
trigger1 = animelemno(0)=9
id = 1200
pos = -25,-65
ignorehitpause = 1
[State 1001, TB]
type = TargetBind
trigger1 = animelemno(0)=10
id = 1200
pos = -15,-75
ignorehitpause = 1

[State 1100, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1202
ctrl = 0

;---------------------------------------------------------------------------
; 63214 Kidnapping Oni
[Statedef 1202]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1206
poweradd = 0
ctrl = 0
sprpriority = 1
facep2 = 0
movehitpersist=1

[State 1202, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1201, TF]
type = targetfacing
trigger1 = time = 0
value = -1
ignorehitpause = 1

[State 1201, TS]
type = targetstate
trigger1 = time = 0
id = 1200
value = 1251
ignorehitpause = 1

[State 1001, TB]
type = TargetBind
trigger1 = time=0
id = 1200
pos = 10,-65
ignorehitpause = 1
[State 1001, TB]
type = TargetBind
trigger1 = animelemtime(2)=0
id = 1200
pos = 35,-40
ignorehitpause = 1
[State 1001, TB]
type = TargetBind
trigger1 = animelemtime(3)=0
id = 1200
pos = 35,0
ignorehitpause = 1

[State 1100, Proj]
type = helper
trigger1 = animelemtime(3)=0
helpertype = normal
name = "CmonNSlam" ;If you wanna Jam
ID = 21210
pos = 35,0
postype = p1
stateno = 21210
ownpal = 1
facing = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(3)=0
anim = 8020+(random%2)
ID = 8000
pos = 35,0
postype = p1 ;p2,front,back,left,right
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

[State 1202, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1,8
[State 1202, Shake]
type = EnvShake
trigger1 = animelemtime(3)=0 
time = 40
freq = 60
ampl = -5
ignorehitpause = 1

[State 1202, TLA]
type = targetlifeadd
trigger1 = animelemtime(3)=0
id = 1200
value = -floor((140.0+30*(var(10)=2)+60*(var(10)>=3))*fvar(11))
ignorehitpause = 1
[State 1202, PA]
type = poweradd
trigger1 = animelemtime(3)=0
value = 120
ignorehitpause = 1
[State 1202, TLA]
type = targetpoweradd
trigger1 = animelemtime(3)=0
id = 1200
value = 60
ignorehitpause = 1
[State 1202, TLA]
type = hitadd
trigger1 = animelemtime(3)=0
value = 1
ignorehitpause = 1

[State 1202, Prorate]
type = varset
trigger1 = animelemtime(3)=0
trigger1 = (var(4):=1)||1 ;Throw Prorate Flag Set
fvar(10) = fvar(10)*0.75*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1

[State 1202, Bounce Back]
type = statetypeset
trigger1 = animelemtime(5)=0
statetype = A
physics = N
[State 1202, Bounce Back]
type = velset
trigger1 = animelemtime(5)=0
x = -5.0
y = -3.5
[State 1202, Grav]
type = veladd
trigger1 = animelemtime(5)>0
y = 0.5

[State 1100, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1203
ctrl = 0

;---------------------------------------------------------------------------
; 63214 Kidnapping Oni Landing
[Statedef 1203]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1107
sprpriority = 1
velset = 0,0
facep2 = 0
movehitpersist=1

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
; Kidnapping Oni Grabbed
[Statedef 1250]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 1250

[State 1250, SB]
type = ScreenBound
trigger1 = animelemtime(3)>=0
value = 1
movecamera = 0,0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Kidnapping Oni Grabbed
[Statedef 1251]
type = L
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1050, CA2]
type = changeanim2
trigger1 = time = 0
value = 1251

[State 1251, SS]
type = selfstate
trigger1 = time>=90
value = cond(!alive,5150,5120)

;---------------------------------------------------------------------------
; Blackhole
[Statedef 21200]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21200+1*ishelper(21201)
sprpriority = -2+1*ishelper(21201)

[State 21200, Variable Scale]
type = null
triggerall = time = 0
trigger1 = root,var(10)<=1
trigger1 = (fvar(1):=1.0)||1
trigger2 = root,var(10)=2
trigger2 = (fvar(1):=0.85)||1
trigger3 = root,var(10)>=3
trigger3 = (fvar(1):=0.7)||1

[State 21200, BTR]
type = bindtoroot
trigger1 = root,stateno = 1200
pos = 0,-50

[State 21200, Expand Dong]
type = varadd
trigger1 = time<10
trigger1 = root,stateno = 1200
trigger1 = fvar(0)<1
fvar(0)=0.2

[State 21200, Expand Dong]
type = varadd
triggerall = fvar(0)>0
trigger1 = time>=20
trigger2 = root,stateno != 1200
fvar(0)=-0.1

[State 20620, ASS]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 21000, AD]
Type = AngleDraw
Trigger1 = 1
value = time*45
Scale = fvar(0)*fvar(1),fvar(0)*fvar(1)
ignorehitpause = 1

[State 11000, T]
Type = Trans
Trigger1 = ishelper(21200)
Trans = Sub
;Alpha = 256,256
ignorehitpause = 1
[State 11000, T]
Type = Trans
Trigger1 = ishelper(21201)
Trans = AddAlpha
Alpha = 256,256
ignorehitpause = 1

[State 21000, Zeeky]
type = destroyself
trigger1 = fvar(0)<=0

;---------------------------------------------------------------------------
; Slam Jam
[Statedef 21210]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21202
sprpriority = -1

[State 20620, ASS]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 21000, AD]
Type = AngleDraw
Trigger1 = 1
Scale = 0.25+(0.25*time),0.25+(0.25*time)
ignorehitpause = 1

[State 11000, Cmon say Hoop "THERE IT IS"]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 256-floor(256.0*time/16.0),256
ignorehitpause = 1

[State 21000, Zeeky]
type = destroyself
trigger1 = time>=16

;-------------------------
; Black Hole Pusher
[StateDef 21220]
type = A
movetype = I
physics = N
anim = 21203
velset = 0,0
sprpriority = -1

[State 1211, VS]
type = varset
trigger1 = time = 0
var(10) = root,var(10)

[State 1211, VS]
type = velset
trigger1 = numenemy
x = 10.0+cond((EnemyNear(!EnemyNear,Alive),Facing = Facing),1,-1) * EnemyNear(!EnemyNear,Alive),Vel X
;x = 7.0

[State 1201, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1201, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1211, PP]
Type = playerpush
Trigger1 = 1
Value = 1

[State 21220, PA]
Type = PosAdd
trigger1 = numenemy
Trigger1 = P2BodyDist X != [0,5]
X = P2BodyDist X

[State 21220, PA]
Type = PosAdd
trigger1 = numenemy
Trigger1 = P2Dist X < 0
X = P2Dist X - 20

[State 21220, PA]
Type = PosAdd
trigger1 = numenemy
Trigger1 = RootDist X < P2Dist X
X = P2Dist X + 20

[State 21220, Turn]
Type = Turn
trigger1 = numenemy
Trigger1 = RootDist X < 0
Trigger1 = P2Dist X < 0

[State 1200, Zeeky]
type = Destroyself
trigger1 = var(10)<=1 && time>=16
trigger2 = var(10)=2 && time>=8
trigger3 = root,stateno != 1200

;---------------------------------------------------------------------------
; [2]8 Foot Bellows
[Statedef 1300]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1300+1*(var(10)=2)+2*(var(10)>=3)
poweradd = 30
ctrl = 0
sprpriority = 1
facep2 = 1

[State 1300, STS]
type = statetypeset
trigger1 = animelemtime(4)=0
statetype = A
physics = N
ignorehitpause = 1

[State 1300, VS]
type = velset
trigger1 = animelemtime(4)=0
x = 3.5+2.5*(var(10)=2)+5.0*(var(10)>=3)
y = -6.5

[State 1300, Grav]
type = veladd
trigger1 = animelemtime(4)>0
y = 0.625

[State 1100, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1301
ctrl = 0

;---------------------------------------------------------------------------
; [2]8 Foot Bellows
[Statedef 1301]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1310
poweradd = 0
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1301, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1200, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 1300,10

[State 1100, Proj]
type = helper
trigger1 = animelemtime(1)=0
helpertype = normal
name = "Dust"
ID = 21300
pos = 0,0
postype = p1
stateno = 21300
ownpal = 1
facing = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(1)=0
Time = 20
Freq = 120
Ampl = -6

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(5*ln(2)) + 0.5)),0,1)
trigger1 = animelemtime(2)>=0 && animelemtime(3)<0
trigger1 = !movecontact && !movereversed
attr = S,SA
damage = ceil(100*fvar(11)*ifelse(var(42),1.25,1.0)),20
animtype = Heavy
guardflag = L
hitflag = MAFD
priority = 4,Hit
pausetime = 4,4
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-20
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 24+3*(var(42))
ground.hittime = 24+3*(var(42))
air.hittime = 24+3*(var(42))
guard.slidetime = 17
guard.hittime = 17
ground.velocity = 0.0,-5.5
guard.velocity = -7.5*cond(p2dist x<0,-1,1)
air.type = Low
air.velocity = 0.0,-5.5
airguard.velocity = -7.5*cond(p2dist x<0,-1,1),-5.5
down.velocity = 0.0,-5.5
getpower = 80,80
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
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 1000, STS]
type = statetypeset
trigger1 = animelemtime(3)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stomping Dust
[Statedef 21300]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21300
sprpriority = 5

[State 20620, ASS]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 21000, ASS]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 21000, AD]
Type = AngleDraw
Trigger1 = 1
Scale = 0.75+(0.25*time/12.0),0.75-(0.25*time/12.0)
ignorehitpause = 1

[State 11000, T]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 256-floor(256.0*time/12.0),256
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.0)||1
anim = 21301
ID = 21300
pos = 0,0
postype = p1
facing = -1
removetime = 50
vel = 10*cos(fvar(0)*pi/180.0),4*sin(fvar(0)*pi/180.0)
accel = -10*cos(fvar(0)*pi/180.0)/50.0,-4*sin(fvar(0)*pi/180.0)/50.0
pausemovetime = 0
scale = 1.0,1.0
sprpriority = 5
removeongethit = 0
[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=45.0)||1
anim = 21301
ID = 21300
pos = 0,0
postype = p1
facing = -1
removetime = 50
vel = 10*cos(fvar(0)*pi/180.0),4*sin(fvar(0)*pi/180.0)
accel = -10*cos(fvar(0)*pi/180.0)/50.0,-4*sin(fvar(0)*pi/180.0)/50.0
pausemovetime = 0
scale = 1.0,1.0
sprpriority = 5
removeongethit = 0
[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=90.0)||1
anim = 21301
ID = 21300
pos = 0,0
postype = p1
facing = -1
removetime = 50
vel = 10*cos(fvar(0)*pi/180.0),4*sin(fvar(0)*pi/180.0)
accel = -10*cos(fvar(0)*pi/180.0)/50.0,-4*sin(fvar(0)*pi/180.0)/50.0
pausemovetime = 0
scale = 1.0,1.0
sprpriority = 5
removeongethit = 0
[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=135.0)||1
anim = 21301
ID = 21300
pos = 0,0
postype = p1
facing = -1
removetime = 50
vel = 10*cos(fvar(0)*pi/180.0),4*sin(fvar(0)*pi/180.0)
accel = -10*cos(fvar(0)*pi/180.0)/50.0,-4*sin(fvar(0)*pi/180.0)/50.0
pausemovetime = 0
scale = 1.0,1.0
sprpriority = 5
removeongethit = 0
[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=180.0)||1
anim = 21301
ID = 21300
pos = 0,0
postype = p1
facing = -1
removetime = 50
vel = 10*cos(fvar(0)*pi/180.0),4*sin(fvar(0)*pi/180.0)
accel = -10*cos(fvar(0)*pi/180.0)/50.0,-4*sin(fvar(0)*pi/180.0)/50.0
pausemovetime = 0
scale = 1.0,1.0
sprpriority = 5
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=225.0)||1
anim = 21301
ID = 21300
pos = 0,0
postype = p1
facing = -1
removetime = 50
vel = 10*cos(fvar(0)*pi/180.0),4*sin(fvar(0)*pi/180.0)
accel = -10*cos(fvar(0)*pi/180.0)/50.0,-4*sin(fvar(0)*pi/180.0)/50.0
pausemovetime = 0
scale = 1.0,1.0
sprpriority = -1
removeongethit = 0
[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=270.0)||1
anim = 21301
ID = 21300
pos = 0,0
postype = p1
facing = -1
removetime = 50
vel = 10*cos(fvar(0)*pi/180.0),4*sin(fvar(0)*pi/180.0)
accel = -10*cos(fvar(0)*pi/180.0)/50.0,-4*sin(fvar(0)*pi/180.0)/50.0
pausemovetime = 0
scale = 1.0,1.0
sprpriority = -1
removeongethit = 0
[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=315.0)||1
anim = 21301
ID = 21300
pos = 0,0
postype = p1
facing = -1
removetime = 50
vel = 10*cos(fvar(0)*pi/180.0),4*sin(fvar(0)*pi/180.0)
accel = -10*cos(fvar(0)*pi/180.0)/50.0,-4*sin(fvar(0)*pi/180.0)/50.0
pausemovetime = 0
scale = 1.0,1.0
sprpriority = -1
removeongethit = 0

[State 21300, MEX]
type = modifyexplod
trigger1 = time
id = 21300
trans = addalpha
alpha = 256-floor(256.0*time/50.0),256
ignorehitpause = 1

[State 21000, Zeeky]
type = destroyself
trigger1 = time>=50;12

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
id = 21900
stateno = 21900
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
value = 1100

;-----------------------
; Guard Cancel Use Effect
[Statedef 21900]
anim = 1999
velset = 0,0
sprpriority = 3

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