;---------------------------------------------------------------------------
; Mind Explosion
[Statedef 1000]
type    = U
movetype= A
physics = N
velset = 0,0
anim = 1000+1*(var(10)>=2)+10*(statetype=A)
poweradd = 20;15
ctrl = 0
sprpriority = 1
;facep2 = 1

[State 1000, Air Flag]
type = varset
trigger1 = time = 0
var(11) = cond(statetype=A,1,0)

[State 1000, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S

[State 1000, facep2]
type = turn
trigger1 = statetype != A
trigger1 = time = 0
trigger1 = p2dist x < 0

[State 1000, Yo Good Thing We Bought The Glock]
type = Helper
trigger1 = animelemtime(5)=0
helpertype = normal ;player
name = "Shot"
ID = 21000
stateno = 21000
pos = 37-3*(var(10)>=2)+cond(var(21)>0,100,0),-46+cond(statetype=A,-14+12*(var(10)>=2),0-13*(var(10)>=2))
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
[State 1000, It's a block party, niggas just bust shots]
type = Helper
trigger1 = animelemtime(5)=0
helpertype = normal ;player
name = "Shot FX"
ID = 21010
stateno = 21010
pos = 37-3*(var(10)>=2)+cond(var(21)>0,100,0),-46+cond(statetype=A,-14+12*(var(10)>=2),0-13*(var(10)>=2))
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
[State 1000, Thought you had props, with yo gangsta bop]
type = Helper
trigger1 = animelemtime(5)=0
trigger2 = animelemtime(5)=5
trigger3 = animelemtime(5)=10
helpertype = normal ;player
name = "Shot FX"
ID = 21011
stateno = 21011
pos = 37-3*(var(10)>=2)+cond(var(21)>0,100,0),-46+cond(statetype=A,-14+12*(var(10)>=2),0-13*(var(10)>=2))
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 1000, Recoil]
type = velset
trigger1 = statetype = A
trigger1 = animelemtime(5)=0
x = -3.0
y = -2.5

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 320
ignorehitpause = 1


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(6)=0
movetype = I        

[State 1000, Ground CS]
type = changestate
trigger1 = statetype != A
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1000, Air Grav]
type = veladd
trigger1 = statetype = A
trigger1 = animelemtime(5)>0
y = 0.3+0.2*(animelemtime(13)>=0)

[State 1000, Air CS]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1001

;---------------------------------------------------------------------------
; Aerial Down Strong Attack
[Statedef 1001]
type    = S
physics = S
ctrl = 0
anim = 47

[State 1020, PSND]
type = playsnd
trigger1 = time = 0
value = 40,0

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
[State 1000, VS]
type = varset
trigger1 = 1
var(1)=1

[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------
; 236xyz Min Explosion
[Statedef 21000]
type    = A
movetype= A
physics = N
juggle  = 0
anim = 21000
velset = 0,0
sprpriority = 5

[State 1420, PSND]
type = playsnd
trigger1 = time=0
value = 1000,10

[State 1420, VS]
type = varset
trigger1 = time = 0
var(10) = root,var(10)
[State 1420, VS]
type = varset
trigger1 = time = 0
var(11) = root,var(11)

[State 21000, AngleSet]
type = null
triggerall = 1
trigger1 = var(10)<=1
trigger1 = (fvar(0):=0.0)||1
trigger2 = var(10)=2 && var(11)=0
trigger2 = (fvar(0):=-30.0)||1
trigger3 = var(10)>=3 && var(11)=0
trigger3 = (fvar(0):=-60.0)||1
trigger4 = var(10)=2 && var(11)=1
trigger4 = (fvar(0):=30.0)||1
trigger5 = var(10)>=3 && var(11)=1
trigger5 = (fvar(0):=60.0)||1

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1420, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.65,0.65
ignorehitpause = 1
;persistent = 


[State 1420, VelSet]
type = velset
trigger1 = time=0
x = 2.0

[State 1420, CS]
type = changestate
trigger1 = 1
value = 21001

;--------------------------
; 236xyz Min Explosion
[Statedef 21001]
type    = A
movetype= A
physics = N
juggle  = 0
sprpriority = 5
movehitpersist = 1

[State 21001, Home in slightly]
type = Varadd
trigger1 = var(0)
trigger1 = numenemy
trigger1 = p2dist y+enemynear,const(size.mid.pos.y) != 0
trigger1 = p2dist x != 0
trigger1 = atan((p2dist y+enemynear,const(size.mid.pos.y))/(p2dist x))*180.0/pi > fvar(0)
fvar(0) = 0.25*ifelse(p2dist x > 0,1,-1)*1.5

[State 21001, Home in pls?]
type = Varadd
trigger1 = var(0)
trigger1 = numenemy
trigger1 = p2dist y+enemynear,const(size.mid.pos.y) != 0
trigger1 = p2dist x != 0
trigger1 = atan((p2dist y+enemynear,const(size.mid.pos.y))/(p2dist x))*180.0/pi < fvar(0)
fvar(0) = -0.25*ifelse(p2dist x > 0,1,-1)*1.5

[State 1420, VelSet]
type = velset
trigger1 = 1
x = (2.0+(var(0)*0.2))*cos(fvar(0)*pi/180)
y = (2.0+(var(0)*0.2))*sin(fvar(0)*pi/180)

[State 2100, PVS]
type = parentvarset
trigger1 = var(0)%2=0
fvar(17) = fvar(0)
;ignorehitpause = 1

[State 1000, Yo Good Thing We Bought The Glock]
type = Helper
trigger1 = var(0)%2=0
helpertype = normal ;player
name = "Smoke Weed Erry Day"
ID = 21020
stateno = 21020
pos = -floor(cos(fvar(0)*pi/180)*27.5),-floor(sin(fvar(0)*pi/180)*27.5)
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -fvar(0)
scale = 0.65,0.65
ignorehitpause = 1
;persistent = 

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21501, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0 
attr = SCA,AA,AP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 21002
time = -1
ignorehitpause = 1
;persistent = 

[State 21001, Trans]
type = trans ;I find this statecontroller to be highly offensive that it
trigger1=1;s me.
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State Movehitoner (From None's Beavis)]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
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
var(34) = root,var(34) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1211, HitDef]
type = HitDef
triggerall = !((root,var(34))&floor(exp(2*ln(2)) + 0.5))
trigger1 = movecontact = 0 && movereversed = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
priority = 4,Hit
damage = ceil(30.0*root,fvar(11)),5
pausetime = 0,6
getpower = 30,30;80,80
givepower = 15,15;40
sparkno=s8010+(random%2)
guard.sparkno = s8030
sparkxy = -10,-20
hitsound = -1;S1,9
guardsound = -1;S2,0
ground.type = High
ground.slidetime = 24
guard.slidetime = 10
ground.hittime = 24
guard.hittime = 10
air.hittime = 24
yaccel = 0.5
p1sprpriority = 5
ground.velocity = -2.5,-4.5
guard.velocity = -2.5
air.velocity = -2.5,-4.5
airguard.velocity = -2.5,-4.5
;fall.xvelocity = -1
;fall.yvelocity = -13
p2facing = 1
;down.bounce = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 1;
fall.recovertime = 120
id = 1000

[State 200, Damage Proration]
type = parentvarset
trigger1 = Movehit
fvar(10) = (root,fvar(10))*0.93;5
ignorehitpause = 1
persistent = 0

[State 21001, PSND]
type = playsnd
trigger1 = movehit=1
value = 1,9
channel = 3
[State 21001, PSND]
type = playsnd
trigger1 = movecontact=1 && !movehit=1
value = 2,0
channel = 2

[State 1420, CS]
type = Changeanim
trigger1 = movecontact
value = 21001

[State 1420, CS]
type = ChangeState
trigger1 = movecontact
value = 21002

[State 1420, CS]
type = ChangeState
trigger1 = frontedgedist < -60
trigger2 = backedgedist < -60
trigger3 = screenpos y < -60
trigger4 = screenpos y >= 300
value = 999

[State 1000, Timer]
type = varadd
trigger1 = 1
var(0) = 1

;--------------------------
; 236xyz Min Explosion
[Statedef 21002]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
sprpriority = 5
movehitpersist = 1

[State 21002, VS]
type = varadd;set
trigger1 = movecontact=1
var(41)=1
persistent = 0

[State 21002, CA]
type = changeanim
trigger1 = anim != 21001
value = 21001
ignorehitpause = 1

[State 1000, Im out of Wu-Tang Clan Lyrics]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Is this blood?"
ID = 21030
stateno = 21030
pos = 0,0
postype = p1
facing = 1
ownpal = 0
[State 1000, Im out of Wu-Tang Clan Lyrics]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Is this blood?"
ID = 21030
stateno = 21030
pos = 0,0
postype = p1
facing = 1
ownpal = 0
[State 1000, Im out of Wu-Tang Clan Lyrics]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Is this blood?"
ID = 21030
stateno = 21030
pos = 0,0
postype = p1
facing = 1
ownpal = 0
[State 1000, Im out of Wu-Tang Clan Lyrics]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Is this blood?"
ID = 21030
stateno = 21030
pos = 0,0
postype = p1
facing = 1
ownpal = 0
[State 1000, Im out of Wu-Tang Clan Lyrics]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Is this blood?"
ID = 21030
stateno = 21030
pos = 0,0
postype = p1
facing = 1
ownpal = 0
[State 1000, Im out of Wu-Tang Clan Lyrics]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Is this blood?"
ID = 21030
stateno = 21030
pos = 0,0
postype = p1
facing = 1
ownpal = 0


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
var(34) = root,var(34) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 21002, MHR]
type = movehitreset
trigger1 = var(41)<5
trigger1 = var(1) = 6 || var(1) = 12; || var(1) = 18 || var(1)=24

[State 1211, HitDef]
type = HitDef
triggerall = !((root,var(34))&floor(exp(2*ln(2)) + 0.5)) || var(41)<5
trigger1 = movecontact = 0 && movereversed = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
priority = 4,Hit
damage = ceil(30.0*root,fvar(11)),5
pausetime = 0,6
getpower = 30,30;20,20
givepower = 15,15;10,10
sparkno=s8010+(random%2)
guard.sparkno = s8030
sparkxy = -10,0
hitsound = -1;S1,9
guardsound = -1;S2,0
ground.type = High
ground.slidetime = 24
guard.slidetime = 6
ground.hittime = 24
guard.hittime = 6
air.hittime = 24
yaccel = 0.5
p1sprpriority = 5
ground.velocity = -2.5,-4.5
guard.velocity = -2.5
air.velocity = -2.5,-4.5
airguard.velocity = -2.5,-4.5
p2facing = 1
;down.bounce = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
id = 1000

[State 200, Damage Proration]
type = parentvarset
trigger1 = Movehit=1
fvar(10) = (root,fvar(10))*0.93;5
;ignorehitpause = 1
;persistent = 0

[State 21001, PSND]
type = playsnd
trigger1 = movehit=1
value = 1,9
channel = 3
[State 21001, PSND]
type = playsnd
trigger1 = movecontact=1 && !movehit=1
value = 2,0
channel = 2

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1;time
trigger1 = var(1)<8
scale = (0.65*(var(1))/8.0),(0.65*(var(1))/8.0)
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1;time
trigger1 = var(1)>=8
scale = (0.65-cond(var(1)<13,0,(0.65*(var(1)-13)/8.0)))*cond(var(1)%2=0,1.0,1.05),(0.65-cond(var(1)<13,0,(0.65*(var(1)-13)/8.0)))*cond(var(1)%2=0,1.0,1.05)
ignorehitpause = 1

[State 1420, NHB]
type = nothitby
trigger1 = var(41)<5
trigger1 = var(1)<=24-12
value = ,AA,AT
ignorehitpause = 1

[State 21002, STS]
type = statetypeset
trigger1 = var(41)>=5
trigger2 = var(1)>24-12
movetype = I

[State 1420, NHB]
type = nothitby
trigger1 = var(41)>=5;var(0)>18
trigger2 = var(1)>24-12
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = var(1) = 0 
attr = SCA,AA,AP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 21002
time = -1
ignorehitpause = 1
;persistent = 

;Log does not custom stating correctly

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1


[State 1422, T]
type = Trans
trigger1 = 1;var(0) >= 32
trans = addalpha
alpha = 256,64
ignorehitpause = 1

[State 1420, CS]
type = ChangeState
trigger1 = var(1) >= 33-12
value = 999

[State 1000, Timer]
type = varadd
trigger1 = 1
var(1) = 1

;--------------------------
; 236xyz Min Explosion
[Statedef 21010]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 21010
velset = 0,0
sprpriority = 5

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1422, T]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/4.0),256
ignorehitpause = 1

[State 21010, AD]
type = angledraw
trigger1 = 1
value = floor(360.0*random/1000.0)
scale = 1.5*cond(time=0,1.0,(1.0/(2+time))),1.5*cond(time=0,1.0,(1.0/(2+time)))
ignorehitpause = 1

[State 21010, Zeeky]
type = destroyself
trigger1 = time >= 4

;--------------------------
; 236xyz Min Explosion
[Statedef 21011]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 21011
velset = 0,0
sprpriority = 5

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21011, VS]
type = varset
trigger1 = time = 0
var(10) = root,var(10)
[State 21011, VS]
type = varset
trigger1 = time = 0
var(11) = root,var(11)

[State 21001, CVS]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (fvar(0):=0.0)||1
trigger2 = var(10)=2 && var(11)=0
trigger2 = (fvar(0):=30.0)||1
trigger3 = var(10)>=3 && var(11)=0
trigger3 = (fvar(0):=60.0)||1
trigger4 = var(10)=2 && var(11)=1
trigger4 = (fvar(0):=-30.0)||1
trigger5 = var(10)>=3 && var(11)=1
trigger5 = (fvar(0):=-60.0)||1

[State 21000, Randomify?]
type = varadd
trigger1 = time = 0
fvar(0) = -20+floor(41.0*random/1000.0)

[State 21000, Randomify?]
type = varset
trigger1 = time = 0
var(0) = 20+floor(21.0*random/1000.0)
[State 21000, Randomify?]
type = varset
trigger1 = time = 0
var(1) = 40+floor(21.0*random/1000.0)
[State 21000, Randomify?]
type = varset
trigger1 = time = 0
var(2) = 1+floor(60.0*random/1000.0)

[State 21000, CA]
type = changeanim
trigger1 = 1
value = 21012
elem = var(2)

[State 21000, AD]
type = AngleDraw
trigger1 = 1
value = fvar(0)
scale = var(0)*0.01*(1+time*0.15),var(1)*0.01*(1+time*0.15)
ignorehitpause = 1

[State 1422, T]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/26.0),256
ignorehitpause = 1

[State 21010, Zeeky]
type = destroyself
trigger1 = time >= 26

;--------------------------
; 236xyz Min Explosion
[Statedef 21020]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 21011
velset = 0,0
sprpriority = 5

[State 1420, VS]
type = varset
trigger1 = time = 0
var(10) = root,var(10)
[State 1420, VS]
type = varset
trigger1 = time = 0
var(11) = root,var(11)

[State 21000, AngleSet]
type = null
triggerall = 1
trigger1 = var(10)<=1
trigger1 = (fvar(0):=0.0)||1
trigger2 = var(10)=2 && var(11)=0
trigger2 = (fvar(0):=-30.0)||1
trigger3 = var(10)>=3 && var(11)=0
trigger3 = (fvar(0):=-60.0)||1
trigger4 = var(10)=2 && var(11)=1
trigger4 = (fvar(0):=30.0)||1
trigger5 = var(10)>=3 && var(11)=1
trigger5 = (fvar(0):=60.0)||1

[State 21020, VS]
type = varset
trigger1 = time = 0
fvar(0) = root,fvar(17);cond((root,numhelper(21000)),(parent,fvar(0)),fvar(0))
ignorehitpause = 1

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1420, VelSet]
type = velset
trigger1 = time = 0
x = -5*cos(fvar(0)*pi/180)
y = -5*sin(fvar(0)*pi/180)

[State 21020, Friction]
type = velmul
trigger1 = time
x = 0.98
y = 0.98

[State 1422, T]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/16.0),256
ignorehitpause = 1

[State 21010, AD]
type = angledraw
trigger1 = 1
value = fvar(0)
scale = 0.55*(1.0+time*0.02),0.55*(1.0+time*0.02)
ignorehitpause = 1

[State 21010, Zeeky]
type = destroyself
trigger1 = time >= 16

;--------------------------
; 236xyz Min Explosion
[Statedef 21030]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 21013
velset = 0,0
sprpriority = 5

[State 21030, VS]
type = varset
trigger1 = time = 0
fvar(0) = floor(360.0*random/1000.0)
ignorehitpause = 1

[State 1420, VelSet]
type = bindtoparent
trigger1 = time = 0
pos = floor(25*cos(fvar(0)*pi/180)),floor(25*sin(fvar(0)*pi/180))

[State 1420, VelSet]
type = velset
trigger1 = time = 0
x = 5*cos(fvar(0)*pi/180)
y = 5*sin(fvar(0)*pi/180)

[State 21030, Frict]
type = velmul
trigger1 = 1
x = 0.98
y = 0.98

[State 1422, T]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/33.0),64+floor(192.0*time/33.0)
ignorehitpause = 1

[State 21010, AD]
type = angledraw
trigger1 = 1
value = fvar(0)
scale = (0.325-cond(var(1)<25,0,(0.325*(var(1)-25)/8.0))),(0.325-cond(var(1)<25,0,(0.325*(var(1)-25)/8.0)))
ignorehitpause = 1

[State 1420, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1420, CS]
type = destroyself
trigger1 = var(1) >= 33

[State 1000, Timer]
type = varadd
trigger1 = 1
var(1) = 1

;---------------------------------------------------------------------------
; Ultrared/Ultraviolet Field
[Statedef 1100]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1100
poweradd = 0;15
ctrl = 0
sprpriority = 1
juggle = ifelse((var(34)&floor(exp(3*ln(2)) + 0.5)),ifelse((prevstateno=[1100,1102]),0,2),0) ;use Juggle

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 1100,10

[State 1000, Redness]
type = Helper
trigger1 = animelemtime(6)=0
helpertype = normal ;player
name = "Field"
ID = 21100+10*(var(10)=[3,4])
stateno = 21100
pos = 0+floor(p2dist x)*cond(var(10)=1||var(10)=3,1,0),-58+floor(p2dist y)*cond(var(10)=1||var(10)=3,1,0)
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 1100, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 623xy Ultrared/violet
[Statedef 21100]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 21100+1*ishelper(21110)
velset = 0,0
sprpriority = 5

[State 21100, Type Set]
type = varset
trigger1 = time = 0
var(10) = parent,var(10)

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1420, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1000, Redness]
type = Helper
trigger1 = time > 10
trigger1 = time%15 = 3
helpertype = normal ;player
name = "Field"
ID = 21102+8*ishelper(21110)
stateno = 21101
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 21101, ScaleMe]
type = varset
trigger1 = 1
fvar(0) = cond(time<16,(1.33*time/16.0),1.33)*cond((var(10)=2||var(10)=4),1.675,1.2)

[State 21101, AD]
type = angledraw
trigger1 = 1
scale = fvar(0),fvar(0)
ignorehitpause = 1

[State 21100, Trans]
type = trans
trigger1 = time<42
trans = addalpha
alpha = 256-cond(time<18,0,floor(256.0*(time-17)/25.0)),256
ignorehitpause = 1

[State 21100, Trans]
type = trans
trigger1 = time>=42
trans = addalpha
alpha = 0,256
ignorehitpause = 1

[State 21100, Math shit that makes your head hurt]
type = Varset
triggerall = numenemy
trigger1 = p2dist y+enemynear,const(size.mid.pos.y) != 0
trigger1 = p2dist x != 0
fvar(1) = atan((p2dist y+enemynear,const(size.mid.pos.y))/(p2dist x))*180/pi+ifelse(p2dist x > 0,0,180)
[State 21100, Math shit that makes your head hurt]
type = Varset
triggerall = numenemy
trigger1 = p2dist y+enemynear,const(size.mid.pos.y) = 0
fvar(1) = ifelse(p2dist x >= 0, 0, 180)
[State 21100, Math shit that makes your head hurt]
type = Varset
triggerall = numenemy
trigger1 = p2dist x = 0
fvar(1) = ifelse(p2dist y+enemynear,const(size.mid.pos.y) >= 0, 90, 270)

[State 21100, This is the part where Reisen goes full blown MK Chameleon Mode]
type = parentvaradd
triggerall = ishelper(21100)
triggerall = time>=18
triggerall = root,var(20)<12
triggerall = root,movetype != H
triggerall = numenemy
triggerall = p2dist y+enemynear,const(size.mid.pos.y) = [-60*fvar(0),60*fvar(0)]
trigger1 = p2dist x = [cos(fvar(1)*pi/180)*60*fvar(0),-cos(fvar(1)*pi/180)*60*fvar(0)]
trigger2 = p2dist x = [-cos(fvar(1)*pi/180)*60*fvar(0),cos(fvar(1)*pi/180)*60*fvar(0)]
var(20) = 1
[State 21100, This is the part where Reisen goes full blown MK Chameleon Mode]
type = parentvaradd
triggerall = ishelper(21100)
triggerall = time>=18
triggerall = root,var(20)>0
triggerall = numenemy
trigger1 = !(p2dist y+enemynear,const(size.mid.pos.y) = [-60*fvar(0),60*fvar(0)])
trigger2 = !(p2dist x = [cos(fvar(1)*pi/180)*60*fvar(0),-cos(fvar(1)*pi/180)*60*fvar(0)])
trigger2 = !(p2dist x = [-cos(fvar(1)*pi/180)*60*fvar(0),cos(fvar(1)*pi/180)*60*fvar(0)])
trigger3 = root,movetype = H
var(20) = -1

[State 21100, This is the part where Reisen goes full blown MK Chameleon Mode]
type = parentvaradd
triggerall = ishelper(21110)
triggerall = time>=18
triggerall = root,var(21)<12
triggerall = root,movetype != H
triggerall = numenemy
triggerall = p2dist y+enemynear,const(size.mid.pos.y) = [-60*fvar(0),60*fvar(0)]
trigger1 = p2dist x = [cos(fvar(1)*pi/180)*60*fvar(0),-cos(fvar(1)*pi/180)*60*fvar(0)]
trigger2 = p2dist x = [-cos(fvar(1)*pi/180)*60*fvar(0),cos(fvar(1)*pi/180)*60*fvar(0)]
var(21) = 1
[State 21100, This is the part where Reisen goes full blown MK Chameleon Mode]
type = parentvaradd
triggerall = ishelper(21110)
triggerall = time>=18
triggerall = root,var(21)>0
triggerall = numenemy
trigger1 = !(p2dist y+enemynear,const(size.mid.pos.y) = [-60*fvar(0),60*fvar(0)])
trigger2 = !(p2dist x = [cos(fvar(1)*pi/180)*60*fvar(0),-cos(fvar(1)*pi/180)*60*fvar(0)])
trigger2 = !(p2dist x = [-cos(fvar(1)*pi/180)*60*fvar(0),cos(fvar(1)*pi/180)*60*fvar(0)])
trigger3 = root,movetype = H
var(21) = -1

[State 21100, Zeeky]
type = destroyself
trigger1 = var(10)=1||var(10)=3
trigger1 = time>=160
trigger2 = var(10)=2||var(10)=4
trigger2 = time>=240
trigger3 = root,stateno = 1100
trigger3 = root,time<=1
trigger4 = root,alive = 0

;--------------------------
; 623xy Ultrared/violet
[Statedef 21101]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 21100+1*ishelper(21110)
velset = 0,0
sprpriority = 5

[State 21100, Type Set]
type = varset
trigger1 = time = 0
var(10) = parent,var(10)

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1420, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21101, ScaleMe]
type = varset
trigger1 = 1
fvar(0) = cond((var(10)=2||var(10)=4),1.675,1.2)

[State 21101, AD]
type = angledraw
trigger1 = 1
scale = 1.32*fvar(0)*(0.8125+time*0.0125),1.32*fvar(0)*(0.8125+time*0.0125)
ignorehitpause = 1

[State 21100, Trans]
type = trans
trigger1 = time<15
trans = addalpha
alpha = floor(256.0*(time)/15.0),256
ignorehitpause = 1

[State 21100, Trans]
type = trans
trigger1 = time>=15
trans = addalpha
alpha = 256-floor(256.0*(time-15)/15.0),256
ignorehitpause = 1

[State 21101, Zeeky]
type = destroyself
trigger1 = time >= 30

;---------------------------------------------------------------------------
; Undersense Break
[Statedef 1110]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1101
poweradd = 45*(prevstateno!=1900)
ctrl = 0
sprpriority = 1
juggle = ifelse((var(34)&floor(exp(2*ln(2)) + 0.5)),2,0) ;use Juggle

[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)>0
trigger1 = anim = 1101
trigger1 = animelemtime(animelemno(0))=0
value = 1102
elem = animelemno(0)
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)<=0
trigger1 = anim = 1102
trigger1 = animelemtime(animelemno(0))=0
value = 1101
elem = animelemno(0)

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(7)<0
trigger2 = prevstateno=1900
trigger2 = animelemtime(9)<0
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 1100,11

[State 1000, Redness]
type = Helper
trigger1 = animelemtime(6)=0
helpertype = normal ;player
name = "Field"
ID = 21120
stateno = 21120
pos = 1,-58
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
[State 1000, Redness]
type = Helper
trigger1 = var(21)>0
trigger1 = animelemtime(6)=0
helpertype = normal ;player
name = "Field"
ID = 21122
stateno = 21120
pos = 101,-58
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 1000, Redness]
type = Helper
trigger1 = animelemtime(6)=0||animelemtime(6)=8||animelemtime(6)=16||animelemtime(6)=24
helpertype = normal ;player
name = "Laser"
ID = 21121
stateno = 21121
pos = 1,-58
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
[State 1000, Redness]
type = Helper
trigger1 = var(21)>0
trigger1 = animelemtime(6)=0||animelemtime(6)=8||animelemtime(6)=16||animelemtime(6)=24
helpertype = normal ;player
name = "Laser"
ID = 21123
stateno = 21121
pos = 101,-58
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 1110, MHR]
type = movehitreset
trigger1 = animelemtime(8)=0||animelemtime(10)=0||animelemtime(12)=0
trigger2 = animelemtime(14)=0||animelemtime(16)=0||animelemtime(18)=0

[State 200, 1]
type = HitDef
triggerall = (movecontact=0&&movereversed=0)
trigger1 = animelemtime(6)=0||animelemtime(8)=0||animelemtime(10)=0||animelemtime(12)=0
trigger2 = animelemtime(14)=0||animelemtime(16)=0||animelemtime(18)=0
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage = 22,4                   ;Damage that move inflicts, guard damage
animtype = Back                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 0,5                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-55
hitsound = -1;s1,0                  ;Sound to play on hit
guardsound = -1;s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 23+1*(var(42))             ;Time that the opponent slides back
ground.hittime  = 23+1*(var(42))             ;Time opponent is in hit state
air.hittime  = 23+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 15
guard.hittime = 15
guard.velocity = -5,0
ground.velocity = -10.0,-6.0             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -10.0,-6.0;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 12*(prevstateno!=1900),12*(prevstateno!=1900)
givepower = 6,6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 1110

[State 1110, Hitsound]
type = playsnd
trigger1 = movehit=1
value = 1,2
channel = 3
[State 1110, Hitsound]
type = playsnd
trigger1 = moveguarded=1
value = 2,0
channel = 3

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.94
;ignorehitpause = 1
;persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(19) = 0
movetype = I
persistent = 0
ignorehitpause = 1

[State 1100, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 623z FX
[Statedef 21120]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 21110
velset = 0,0
sprpriority = 5

[State 21120, ScaleMe]
type = Varset
trigger1 = 1
fvar(0) = ifelse((time+3)%4 < 2, 1.5, 0.5)

[State 21120, BTR]
type = bindtoroot
trigger1 = 1
pos = 1+100*ishelper(21122),-58
ignorehitpause = 1

[State 21120, SCaleMe]
type = angledraw
trigger1 = 1
value = floor(360.0*random/1000.0)
scale = fvar(0),fvar(0)
ignorehitpause = 1

[State 21120, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21120, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21120, ZEEKY]
type = destroyself
trigger1 = root,stateno != 1110
trigger2 = animtime = 0

;--------------------------
; 623z FX
[Statedef 21121]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 21111
velset = 0,0
sprpriority = 5

[State 21121, VS]
type = null ;Gen 7 Pokemon memes
trigger1 = time = 0
trigger1 = (var(0):=floor(360.0*random/1000.0))||1
trigger1 = (var(1):=(random%2))||1
trigger1 = (fvar(2):=2.0+floor(4.0*random/1000.0))||1
trigger1 = (fvar(0):=(4+floor(3.0*random/1000.0))*0.1)||1
trigger1 = (fvar(1):=(5+floor(2.0*random/1000.0))*0.1)||1

[State 21120, BTR]
type = bindtoroot
trigger1 = 1
pos = 1+100*ishelper(21123),-58
ignorehitpause = 1

[State 21120, SCaleMe]
type = angledraw
trigger1 = 1
value = var(0)+time*0.1*fvar(2)*cond(var(1)=0,1,-1)
scale = fvar(0)*(1+time*0.2)*ifelse((root,time+2)%4 < 2, 1, 0.5),fvar(1)*ifelse((root,time+2)%4 < 2, 1, 0.5)
ignorehitpause = 1

[State 21120, Scaleme]
type = null
trigger1 = 1
trigger1 = (fvar(0):=fvar(0)*0.975)||1
trigger1 = (fvar(1):=fvar(1)*0.975)||1

[State 21120, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21120, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/25.0),256
ignorehitpause = 1

[State 21120, ZEEKY]
type = destroyself
trigger1 = root,stateno != 1110
trigger2 = time>=25

;---------------------------------------------------------------------------
; Illusionary Blast
[Statedef 1200]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1200+1*(var(10)=2)+2*(var(10)>=3)
poweradd = 20
ctrl = 0
sprpriority = 1
facep2 = 1

[State 1000, Move that makes even Scott Summers jealous]
type = Helper
trigger1 = animelemtime(9)=0
helpertype = normal ;player
name = "Optic Blast"
ID = 21200
stateno = 21200
pos = 30+2*(var(10)<=1)-21*(var(10)>=3),-52+29*(var(10)<=1)-19*(var(10)>=3)
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = 3.0
size.yscale = 2.5
supermovetime = 0
pausemovetime = 0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(9)>=0 && animelemtime(20)<0
anim = 21201+1*(animelemtime(9)%6>3)
ID = 21200
pos = 30+2*(var(10)<=1)-21*(var(10)>=3),-52+29*(var(10)<=1)-19*(var(10)>=3)
postype = p1  ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
bindtime = -1
removetime = 1
pausemovetime = 9999
scale = cond(animelemtime(9)%6<2,1.25,cond(animelemtime(9)%6<4,0.45,0.4)),cond(animelemtime(9)%6<2,1.25,cond(animelemtime(9)%6<4,0.45,0.4))
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1200, PSND]
type = playsnd
trigger1 = animelemtime(9)=0
value = 1200,10
ignorehitpause = 1

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 320
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(16)=0
movetype = I        

[State 1000, Ground CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Optic Blast FX
[Statedef 21200]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 21200
sprpriority=5
ctrl = 0

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP,At
slot = 0
time = -1
Stateno = 21202
IgnoreHitPause = 1

[State 21100, VS]
type = varset
trigger1 = time = 0
var(10)=root,var(10)

[State 21220, CA]
type = changeanim
trigger1 = time = 0
trigger1 = var(10)>=3
value = 21220

[State 21300, BTR]
type = bindtoroot
trigger1 = 1
pos = 30+2*(var(10)<=1)-21*(var(10)>=3),-52+29*(var(10)<=1)-19*(var(10)>=3)
ignorehitpause = 1

[State 21200, AS]
type = angleset
trigger1 = var(10)>=3
value = 40
ignorehitpause = 1
[State 21200, AD]
type = angledraw
trigger1 = 1
ignorehitpause = 1

[State 21100, VS]
type = varset
trigger1 = time = 0
var(21) = 8;ifelse(var(10)<=1,1,ifelse(var(10)=2,2,3))

[State 21000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21000, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21300, CS]
type = changestate
trigger1 = 1
value = 21201

;---------------------------------------------------------------------------
; Optic Blast FX
[Statedef 21201]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority=5
ctrl = 0
movehitpersist = 1

[State 21300, BTR]
type = bindtoroot
trigger1 = 1
pos = 30+2*(var(10)<=1)-21*(var(10)>=3),-52+29*(var(10)<=1)-19*(var(10)>=3)
ignorehitpause = 1

[State 21200, AD]
type = angledraw
trigger1 = time
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP,AT
slot = 0
time = -1
Stateno = 21202
IgnoreHitPause = 1

[State 21000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21000, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21301, MHR]
type = movehitreset
trigger1 = var(20)=0
persistent = 0

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
var(34) = (root,var(34)) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1010, HitDef]
type = Hitdef
triggerall = !((root,var(34))&floor(exp(3*ln(2)) + 0.5)) || var(40)
trigger1 = var(20)=0
trigger1 = var(10)<=1
trigger1 = time
trigger1 = movecontact = 0; && movereversed = 0
attr = S, SP
animtype  = Hard
damage    = ceil(25*root,fvar(11)),5
priority  = 4,Hit
;guard.kill = 0
hitflag = MAF
guardflag = LA
pausetime = 0,5
sparkno = s8010+(random%2)
guard.sparkno = s8030
sparkxy = -10,0+cond(numenemy,(enemynear,const(size.mid.pos.y)),0)*(var(10)>=3)
p1sprpriority=5
hitsound   = -1;s1,2
guardsound = -1;s2,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
air.hittime  = 14
guard.slidetime = 11
guard.hittime = 11
ground.velocity = -12.0+5.0*(var(10)>=3),-3.0-5.5*(var(10)>=3)
guard.velocity = -12.0+5.0*(var(10)>=3)
air.velocity = -12.0+5.0*(var(10)>=3),-3.0-5.5*(var(10)>=3)
airguard.velocity = -12.0+5.0*(var(10)>=3),-3.0-5.5*(var(10)>=3)
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 18,18
givepower = 9,9
id = 1200
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0


[State 1010, HitDef]
type = Hitdef
triggerall = !((root,var(34))&floor(exp(3*ln(2)) + 0.5)) || var(40)
trigger1 = var(10)=2
trigger1 = var(20)=0
trigger1 = time
trigger1 = movecontact = 0; && movereversed = 0
attr = S, SP
animtype  = Hard
damage    = ceil(25*root,fvar(11)),5
priority  = 4,Hit
;guard.kill = 0
hitflag = MAF
guardflag = MA
pausetime = 0,5
sparkno = s8010+(random%2)
guard.sparkno = s8030
sparkxy = -10,0+cond(numenemy,(enemynear,const(size.mid.pos.y)),0)*(var(10)>=3)
p1sprpriority=5
hitsound   = -1;s1,2
guardsound = -1;s2,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 14
air.hittime  = 14
guard.slidetime = 11
guard.hittime = 11
ground.velocity = -12.0+5.0*(var(10)>=3),-3.0-5.5*(var(10)>=3)
guard.velocity = -12.0+5.0*(var(10)>=3)
air.velocity = -12.0+5.0*(var(10)>=3),-3.0-5.5*(var(10)>=3)
airguard.velocity = -12.0+5.0*(var(10)>=3),-3.0-5.5*(var(10)>=3)
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 18,18
givepower = 9,9
id = 1200
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 1010, HitDef]
type = Hitdef
triggerall = !((root,var(34))&floor(exp(3*ln(2)) + 0.5)) || var(40)
trigger1 = var(10)>=3
trigger1 = var(20)=0
trigger1 = time
trigger1 = movecontact = 0; && movereversed = 0
attr = S, SP
animtype  = Hard
damage    = ceil(25*root,fvar(11)),5
priority  = 4,Hit
;guard.kill = 0
hitflag = HAF
guardflag = HA
pausetime = 0,5
sparkno = s8010+(random%2)
guard.sparkno = s8030
sparkxy = -10,0+cond(numenemy,(enemynear,const(size.mid.pos.y)),0)*(var(10)>=3)
p1sprpriority=5
hitsound   = -1;s1,2
guardsound = -1;s2,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 14
air.hittime  = 14
guard.slidetime = 11
guard.hittime = 11
ground.velocity = -12.0+5.0*(var(10)>=3),-3.0-2.5*(var(10)>=3)
guard.velocity = -12.0+5.0*(var(10)>=3)
air.velocity = -12.0+5.0*(var(10)>=3),-3.0-2.5*(var(10)>=3)
airguard.velocity = -12.0+5.0*(var(10)>=3),-3.0-2.5*(var(10)>=3)
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 18,18
givepower = 9,9
id = 1200
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.975
ignorehitpause = 1
persistent = 0

[State 21300, Hitsound]
type = playsnd
trigger1 = movehit=1
value = 1,11
channel = 2

[State 21300, Hitsound]
type = playsnd
trigger1 = moveguarded=1
value = 2,0
channel = 2

[State 21301, Destroy]
type = changestate
trigger1 = var(20)=0
trigger1 = movecontact=1;||movereversed
value = 21202

[State 21301, Destroy]
type = changestate
trigger1 = root,stateno != 1200
trigger2 = root,movetype = H
trigger3 = var(11) >= 28
value = 21203

[State 21301, Custom Timer]
type = varadd
trigger1 = 1
var(11) = 1

[State 21201, AngleAdd]
type = angleadd
trigger1 = var(10)>=3
value = 0.25

[State 21301, VA]
type = varadd
trigger1 = var(20)>0
var(20) = -1

;---------------------------------------------------------------------------
; Optic Blast FX
[Statedef 21202]
type    = A
movetype= I
physics = N
velset = 0,0
sprpriority=5
ctrl = 0
movehitpersist = 1

[State 21200, AD]
type = angledraw
trigger1 = 1;time
ignorehitpause = 1

[State 21300, BTR]
type = bindtoroot
trigger1 = 1
pos = 30+2*(var(10)<=1)-21*(var(10)>=3),-52+29*(var(10)<=1)-19*(var(10)>=3)
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21302, Cooldown]
type = varset
trigger1 = time = 0
trigger1 = movecontact
var(20) = 4

[State 21302, Inc Counter]
type = varadd
trigger1 = time = 0
var(21) = -1

[State 21302, Inc Counter]
type = varadd
trigger1 = time = 0
var(40) = 1

[State 21000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21302, CS]
type = changestate
trigger1 = 1
value = ifelse(var(21)<=0,21203,21201)

[State 21201, AngleAdd]
type = angleadd
trigger1 = var(10)>=3
value = 0.25

;---------------------------------------------------------------------------
; Optic Blast FX
[Statedef 21203]
type    = A
movetype= I
physics = N
velset = 0,0
sprpriority=5
ctrl = 0
movehitpersist = 1

[State 21300, BTR]
type = bindtoroot
trigger1 = root,stateno = 1200
pos = 30+2*(var(10)<=1)-21*(var(10)>=3),-52+29*(var(10)<=1)-19*(var(10)>=3)
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21000, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256;256-floor(256.0*time/8.0),256
ignorehitpause = 1

[State 21303, Scale]
type = angledraw
trigger1 = time
scale = 1.0,1.0-(1.0*time/8.0)
ignorehitpause = 1

[State 1015, Destroyself]
type = changestate
trigger1 = time >= 8
value = 999

[State 21201, AngleAdd]
type = angleadd
trigger1 = var(10)>=3
value = 0.25

;---------------------------------------------------------------------------
; Disbelief Aspect
[Statedef 1300]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1300+1*(var(10)=2)
poweradd = 20
ctrl = 0
sprpriority = 1
facep2 = 1

[State 1300, STS]
type = statetypeset
triggerall = var(10)<=1
trigger1 = animelemtime(6)=0
statetype = A
physics = N
ignorehitpause = 1

[State 1300, Recoil]
type = velset
triggerall = var(10)<=1
trigger1 = animelemtime(6)=0
x = -1.5
y = -6.0

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 1300,10

[State 1000, Lol Fake and Gay]
type = Helper
trigger1 = animelemtime(6)=0
helpertype = normal ;player
name = "Fake"
ID = 21300;+1*(var(10)=2)
stateno = 21300+1*(var(10)=2)
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 320
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(6)=0
movetype = I        

[State 1000, Ground CS]
type = changestate
triggerall = var(10)>=2
trigger1 = statetype != A
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1000, Air Grav]
type = veladd
triggerall = var(10)<=1
trigger1 = statetype = A
trigger1 = animelemtime(6)>0
y = 0.2+0.3*(animelemtime(12)>=0)

[State 1000, Air CS]
type = changestate
triggerall = var(10)<=1
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1301

;---------------------------------------------------------------------------
; Aerial Down Strong Attack
[Statedef 1301]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 1305

[State 1020, PSND]
type = playsnd
trigger1 = time = 0
value = 40,0

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
[State 1000, VS]
type = varset
trigger1 = 1
var(1)=1

[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Disbelief Aspect X
[Statedef 21300]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 21300
ctrl = 0
sprpriority = 1

[State 1111, VS]
type = null;varset
triggerall = 1
triggerall = (var(21):=-ceil(rootdist y))||1
trigger1 = root,facing = facing
trigger1 = (var(20):=-ceil(rootdist x))||1
trigger2 = root,facing != facing
trigger2 = (var(20):=ceil(rootdist x))||1
ignorehitpause = 1

[State -2, Chameleon Mode]
type = trans
trigger1 = root,var(20)
trans = addalpha
alpha = 256-floor(256.0*(root,var(20))/12.0),floor(256.0*(root,var(20))/12.0)
ignorehitpause = 1

[State 21300, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(10)=0||animelemtime(13)=0||animelemtime(16)=0
value = 410,10
channel = 1

[State 21300, PVS]
type = parentvarset
trigger1 = animelemtime(10)=0||animelemtime(13)=0||animelemtime(16)=0
var(13) = 1301

[State 21300, Trans]
type = trans
trigger1 = root,var(20)<=0
trigger1 = animelemtime(18)>=0
trans = addalpha
alpha = 256-floor(256.0*animelemtime(18)/25.0),floor(256.0*animelemtime(18)/25.0)
ignorehitpause = 1

[State 21300, Zeeky]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Disbelief Aspect Y
[Statedef 21301]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 21301
ctrl = 0
sprpriority = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1
;persistent = 

[State -2, Chameleon Mode]
type = trans
trigger1 = root,var(20)
trans = addalpha
alpha = 256-floor(256.0*(root,var(20))/12.0),floor(256.0*(root,var(20))/12.0)
ignorehitpause = 1

[State 1111, VS]
type = null;varset
triggerall = 1
triggerall = (var(21):=-ceil(rootdist y))||1
trigger1 = root,facing = facing
trigger1 = (var(20):=-ceil(rootdist x))||1
trigger2 = root,facing != facing
trigger2 = (var(20):=ceil(rootdist x))||1
ignorehitpause = 1

[State 21300, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1300, Recoil]
type = velset
trigger1 = animelemtime(1)=0
x = -1.0
y = -6.0

[State 1000, Air Grav]
type = veladd
trigger1 = statetype = A
trigger1 = animelemtime(1)>0
y = 0.2-0.05*(animelemtime(6)>=0)

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(8)=0||animelemtime(11)=0||animelemtime(14)=0
value = 410,10
channel = 1

[State 21300, PVS]
type = parentvarset
trigger1 = animelemtime(8)=0||animelemtime(11)=0||animelemtime(14)=0
var(13) = 1302

[State 21300, Trans]
type = trans
trigger1 = root,var(20)<=0
trigger1 = animelemtime(16)>=0
trans = addalpha
alpha = 256-floor(256.0*animelemtime(16)/25.0),floor(256.0*animelemtime(16)/25.0)
ignorehitpause = 1

[State 21300, Zeeky]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Disbelief Aspect Bullet
[Statedef 21305]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 20410
sprpriority = 5

[State 21501, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0 
attr = SCA,AA,AP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 21306
time = -1
;ignorehitpause = 
;persistent = 

[State 20410, VS]
type = varset
trigger1 = time = 0
trigger1 = ishelper(21306)
fvar(0)=-45.0

[State 20410, VS]
type = varset
trigger1 = time = 0
fvar(0)=fvar(0)-4.0+floor(9.0*random/1000.0)

[State 20410, VS]
type = velset
trigger1 = time = 0
x = 12.0*cos(fvar(0)*pi/180.0)
y = -12.0*sin(fvar(0)*pi/180.0)

[State 20410, AD]
type = angledraw
trigger1 = 1
value = fvar(0)
ignorehitpause = 1

[State 21000, ASS]
type = assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 21000, Trans]
type = trans
trigger1=1
trans = addalpha
alpha = 256,0
ignorehitpause=1

[State 1211, HitDef]
type = HitDef
triggerall = !((root,var(34))&floor(exp(4*ln(2)) + 0.5))
trigger1 = movecontact = 0 && movereversed = 0
attr = A,SP
hitflag = MAFP
guardflag = MA
animtype = Medium
air.animtype = Medium
priority = 4,Hit
damage = ceil(30.0*root,fvar(11)),6
pausetime = 0,6
getpower = 30,30
givepower = 15,15
sparkno=s8000+(random%2)
guard.sparkno = s8030
sparkxy = -10,0
hitsound = S1,2
guardsound = S2,0
ground.type = High
ground.slidetime = 14
ground.hittime = 14
guard.hittime = 9
guard.slidetime = 9
air.hittime = 14
yaccel = 0.5
ground.velocity = -4.0;,-4.0
guard.velocity = -4.0
air.velocity = -4.0,-4.0
airguard.velocity = -4.0,-4.0
p2facing = 1
;down.bounce = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
id = 555

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.92
ignorehitpause = 1
persistent = 0

[State 20410, CS]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist < -40
trigger3 = pos y > 300
value = 21306

;---------------------------------------------------------------------------
; Disbelief Aspect Bullet
[Statedef 21306]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 20410
sprpriority = 5
movehitpersist=1

[State 21000, ASS]
type = assertspecial
trigger1=movecontact
flag=invisible
ignorehitpause=1

[State 21501, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21000, ASS]
type = assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 20410, VS]
type = velset
trigger1 = time = 0
x = 12.0*cos(fvar(0)*pi/180.0)
y = -12.0*sin(fvar(0)*pi/180.0)

[State 20410, AD]
type = angledraw
trigger1 = time
value = fvar(0)
ignorehitpause = 1

[State 20411, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/6.0),floor(256.0*time/6.0)
ignorehitpause = 1

[State -2, P2 Safe Fall]
type= targetstate
;triggerall = var(40)!=1
;triggerall = ishelper(1510)+ishelper(1511)+ishelper(1410)+ishelper(1420)+ishelper(1430)+ishelper(1411)+ishelper(1421)+ishelper(1431)+ishelper(1412)+ishelper(1422)+ishelper(1432)+ishelper(1413)+ishelper(1423)+ishelper(1433)+ishelper(1414)+ishelper(1424)+ishelper(1434)
triggerall= numtarget=1; Just to prevent Simul mode shenanigans
triggerall= target,pos y>=-20 && target,vel y>0
triggerall= target,alive && target,hitfall && target,gethitvar(fall.recover)
triggerall= target,stateno=5030 || target,stateno=5035 || target,stateno=5050 || target,stateno=5071
trigger1 = target,AILevel <= 0
trigger1 = target,command="recovery"
trigger2 = target,AILevel > 0
trigger2 = random%100 <= 10*ceil((target,AILevel)*(target,AILevel)/64.0)
value= 5205
ignorehitpause= 1

[State 20411, CS]
type = changestate
trigger1 = time>=6
value = 999

;---------------------------------------------------------------------------
; Spell Breaking Drug
[Statedef 1310]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1310
poweradd = 20
ctrl = 0
sprpriority = 1
facep2 = 1

[State 1000, Sound]
type = Playsnd
trigger1 = animelemtime(1)=0
trigger1 = (var(47):=(var(47)-1))||1
value = 1310,12

[State 1000, Sound]
type = Playsnd
trigger1 = animelemtime(6)=0
value = 1310,10

[State 1000, Lol Fake and Gay]
type = Helper
trigger1 = animelemtime(6)=0
helpertype = normal ;player
name = "Vial"
ID = 21310;+1*(var(10)=2)
stateno = 21310
pos = 37,-44
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 320
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(6)=2
movetype = I        

[State 1000, Ground CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 214z Vial
[Statedef 21310]
type    = A
movetype= A
physics = N
juggle  = 0
anim = 21310
velset = 0,0
sprpriority = 5

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1420, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 21312
time = -1

[State 1420, VelSet]
type = velset
trigger1 = time=0
x = 6.0
y = -2.0

[State 1420, CS]
type = changestate
trigger1 = 1
value = 21311

;--------------------------
; 214z Vial
[Statedef 21311]
type    = A
movetype= A
physics = N
juggle  = 0
sprpriority = 5
movehitpersist = 1

[State 1420, VelSet]
type = veladd
trigger1 = 1
y = 0.25

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -var(0)*50
ignorehitpause = 1
;persistent = 

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21501, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0 
attr = SCA,AA,AP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 21312
time = -1
;ignorehitpause = 
;persistent = 

[State Movehitoner (From None's Beavis)]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
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
var(34) = root,var(34) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1211, HitDef]
type = HitDef
triggerall = !((root,var(34))&floor(exp(5*ln(2)) + 0.5))
trigger1 = movecontact = 0 && movereversed = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
priority = 4,Hit
damage = ceil(40.0*root,fvar(11)),8
pausetime = 0,8
getpower = 60,60
givepower = -1000,30
sparkno=s8010+(random%2)
guard.sparkno = s8030
sparkxy = -10,-20
hitsound = S1,1
guardsound = s2,0
ground.type = High
ground.slidetime = 24
guard.slidetime = 10
ground.hittime = 24
guard.hittime = 10
air.hittime = 24
yaccel = 0.5
p1sprpriority = 5
ground.velocity = -4.0,0.0
guard.velocity = -4.0
air.velocity = -4.0,-4.5
airguard.velocity = -4.0,-4.5
;fall.xvelocity = -1
;fall.yvelocity = -13
p2facing = 1
;down.bounce = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 1;
fall.recovertime = 120
id = 1310

[State 200, Damage Proration]
type = parentvarset
trigger1 = Movehit
fvar(10) = (root,fvar(10))*0.85
ignorehitpause = 1
persistent = 0

[State 1420, CS]
type = ChangeState
trigger1 = movecontact
trigger2 = vel y > 0
trigger2 = pos y >= -(vel y)
value = 21312

[State 1420, CS]
type = ChangeState
trigger1 = frontedgedist < -60
trigger2 = backedgedist < -60
trigger3 = screenpos y < -60
trigger4 = screenpos y >= 300
value = 999

[State 1000, Timer]
type = varadd
trigger1 = 1
var(0) = 1

;--------------------------
; 214z Vial
[Statedef 21312]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
anim = 1998
sprpriority = 5
movehitpersist = 1

[State 21312, PSND]
type = playsnd
trigger1 = time = 0
value = 1310,11

[State 220, Effect]
Type = Explod
Trigger1 = AnimElemtime(1) = 0
Anim = 21311
ID = 1212
Scale = 0.5,0.5
PosType = P1
Pos = 0, 0
vel = 6.0*cos(15*pi/180),-6.0*sin(15*pi/180)
accel = 0,0.5
SprPriority = 5
Ownpal = 1
RemoveTime = -2
RemoveOnGetHit = 0
[State 220, Effect]
Type = Explod
trigger1 = var(10)<=1
Trigger1 = AnimElemtime(1) = 0
Anim = 21311
ID = 1212
Scale = 0.5,0.5
PosType = P1
Pos = 0, 0
vel = -6.0*cos(15*pi/180),-6.0*sin(15*pi/180)
accel = 0,0.5
SprPriority = 5
Ownpal = 1
RemoveTime = -2
RemoveOnGetHit = 0
[State 220, Effect]
Type = Explod
trigger1 = var(10)<=1
Trigger1 = AnimElemtime(1) = 0
Anim = 21311
ID = 1212
Scale = 0.5,0.5
PosType = P1
Pos = 0, 0
vel = 6.0*cos(60*pi/180),-6.0*sin(60*pi/180)
accel = 0,0.5
SprPriority = 5
Ownpal = 1
RemoveTime = -2
RemoveOnGetHit = 0
[State 220, Effect]
Type = Explod
trigger1 = var(10)<=1
Trigger1 = AnimElemtime(1) = 0
Anim = 21311
ID = 1212
Scale = 0.5,0.5
PosType = P1
Pos = 0, 0
vel = -6.0*cos(60*pi/180),-6.0*sin(60*pi/180)
accel = 0,0.5
SprPriority = 5
Ownpal = 1
RemoveTime = -2
RemoveOnGetHit = 0

[State 1211, MEX]
type = modifyexplod
trigger1 = numexplod(1212)
id = 1212
scale = 0.5+0.05*time,0.5+0.05*(time)

[State 1420, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21505, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1420, CS]
type = ChangeState
trigger1 = time>=20
value = 999

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
value = 1110

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