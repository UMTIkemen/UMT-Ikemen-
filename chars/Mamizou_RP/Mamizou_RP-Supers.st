;---------------------------------------------------------------------------
; "Bunbuku Hot Soup Bathtub"
[Statedef 2000]
type = S
movetype = A
physics = S
velset = 0,0
anim = 2000+0*floor(var(57):=0)
ctrl = 0
sprpriority = 1
facep2 = 1

[State 2000, Startup Invuln];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 46
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

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 2000,10
channel = 1

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
size.xscale = 2.0
size.yscale = 2.0

[State 200, 1]
type = HitDef
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
trigger1 = !movecontact && !movereversed
attr = S,HA
damage = ceil(50.0*(fvar(11)/cond(var(57)=2,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),48
animtype = Back
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 0,8
guard.pausetime=10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,cond(numenemy,ceil(p2dist y+enemynear,const(size.mid.pos.y)),-50)
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 23+3*(var(42))
ground.hittime = 23+3*(var(42))
air.hittime = 23+3*(var(42))
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -0.0*cond(p2dist x<0,-1,1),-10.0
guard.velocity = -6.0*cond(p2dist x<0,-1,1)
air.type = High
air.velocity = -0.0*cond(p2dist x<0,-1,1),-10.0
airguard.velocity = -6.0*cond(p2dist x<0,-1,1),-10.0
getpower = 0,0
givepower = 40,300
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 2000

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(2000)
trigger1 = target(2000),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 2;Change index
ignorehitpause = 1
persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit=1 && (p2stateno!=[6020,6110])
value = 6020
ID = 2000
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.9*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State 2000, CS]
type = changestate
trigger1 = movehit
trigger1 = numtarget(2000)
trigger1 = target(2000),ishelper=0
value = 2001
ignorehitpause = 1

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(4)=0
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; "Bunbuku Hot Soup Bathtub"
[Statedef 2001]
type = A
movetype = A
physics = N
velset = 0,0
anim = 2001
ctrl = 0
sprpriority = 2
facep2 = 0

[State 0, AssertSpecial]
type = assertspecial
trigger1 = time >= 0
flag = nojugglecheck
flag2 = timerfreeze
ignorehitpause = 1

[State 2001, PA]
type = posadd
trigger1 = time = 0
y = -64

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(2)=0
helpertype = normal
name = "PotS_style_Pot"
id = 22000
stateno = 22000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(8)=0
value = 2000,11
channel = 1

[State 2001, MHR]
type = movehitreset
triggerall = movecontact||animelemtime(9)=0
trigger1 = animelemtime(10)=0||animelemtime(11)=0||animelemtime(12)=0||animelemtime(13)=0
trigger2 = animelemtime(14)=0||animelemtime(15)=0||animelemtime(16)=0||animelemtime(17)=0
trigger3 = animelemtime(18)=0||animelemtime(19)=0||animelemtime(20)=0||animelemtime(21)=0||animelemtime(9)=0

[State 200, 1]
type = HitDef
trigger1 = animelemtime(9)>=0 && animelemtime(22)<0
trigger1 = !movecontact && !movereversed
attr = A,HA
damage = ceil(22.0*(fvar(11)/cond(var(57)=2,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),3;25,3
animtype = Back
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 6,6
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -10,cond(numenemy,ceil(p2dist y+enemynear,const(size.mid.pos.y)),1)
hitsound = s1,1
guardsound = s2,0
ground.type = High
ground.slidetime = 23+3*(var(42))
ground.hittime = 23+3*(var(42))
air.hittime = 23+3*(var(42))
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -0.0*cond(p2dist x<0,-1,1),-5.0
guard.velocity = -6.0*cond(p2dist x<0,-1,1)
air.type = High
air.velocity = -0.0*cond(p2dist x<0,-1,1),-5.0
airguard.velocity = -6.0*cond(p2dist x<0,-1,1),-5.0
getpower = 0,0
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 2000

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(2000)
trigger1 = target(2000),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 2;Change index
ignorehitpause = 1
persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit=1 && (p2stateno!=[6020,6110])
value = 6020
ID = 2000
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,fvar(30),1.0)
;ignorehitpause = 1
;persistent = 0

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(22)=0
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 2002
ctrl = 0

;---------------------------------------------------------------------------
; "Bunbuku Hot Soup Bathtub"
[Statedef 2002]
type = A
movetype = I
physics = N
velset = 0,-4
anim = 2002
ctrl = 0
sprpriority = 1
facep2 = 0
movehitpersist=1

[State 2002, Grav]
type = veladd
trigger1 = time
y = 0.5

[State 1000, Air CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2003
ctrl = 0

;---------------------------------------------------------------------------
; "Bunbuku Hot Soup Bathtub"
[Statedef 2003]
type = S
movetype = I
physics = S
ctrl = 0
anim = 2003
sprpriority = 1
velset = 0,0
movehitpersist = 1
facep2 = 0

[State 106, PSND]
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

;--------------------------
; 214214x/y/z DIC SOUPCAN FX
[Statedef 22000]
type = A
movetype = I
physics = N
juggle = 0
anim = 22000
sprpriority = -1

[State 621, CA]
type = changeanim
trigger1 = root,stateno = 2001
trigger1 = animelemno(0)!=root,animelemno(0)
value = anim
elem = root,animelemno(0)

[State 21100, BTR]
type = bindtoroot
trigger1 = root,stateno=2001
pos = 0,97+24*(animelemtime(9)>=0);64

[State 22000, AD]
type = angledraw
trigger1 = 1
scale = 0.9-0.1*(animelemtime(9)>=0),0.85+0.15*(animelemtime(9)>=0);1.0,1.0
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = animelemtime(3)>=0 && animelemtime(7)<0
time = 2
add = floor(64.0*animelemtime(3)/16.0),0,0
mul = 256,256-floor(32.0*animelemtime(3)/16.0),256-floor(32.0*animelemtime(3)/16.0)
invertall = 0
color = 256

[State 0, PalFX]
type = PalFX
trigger1 = animelemtime(7)>=0 && animelemtime(10)<0
time = 2
add = 64,0,0
mul = 256,224,224
invertall = 0
color = 256

[State 0, PalFX]
type = PalFX
trigger1 = animelemtime(10)>=0 && animelemtime(22)<0
time = 2
add = 64-floor(64.0*var(0)/16.0),0,0
mul = 256,224+floor(32.0*var(0)/24.0),224+floor(32.0*var(0)/24.0)
invertall = 0
color = 256
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = animelemtime(22)>=0
time = 0
color = 256
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(9)=0
persistent=0
anim = 22001
ID = 22001
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 4.0,6.0
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
trans = addalpha
alpha = 224,256
ignorehitpause = 1
;persistent =
;supermove = 0
;pausemove = 0

[State 22000, MEX]
type = modifyExplod
trigger1 = time
id = 22001
trans = addalpha
alpha = 224-floor(224.0*var(0)/24.0),256
ignorehitpause = 1


[State 2000, PSND]
type = playsnd
trigger1 = animtime = 0
trigger2 = root,stateno != 2001
value = 2000,10
channel = 1

[State 1100, Proj]
type = helper
trigger1 = animtime = 0
trigger2 = root,stateno != 2001
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,-70
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 2.5
size.yscale = 2.5

[State 22000, Zeeky]
type = removeexplod
trigger1 = animtime = 0
trigger2 = root,stateno != 2001
trigger3 = animelemtime(22)=0

[State 22000, Zeeky]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,stateno != 2001

[State 22000, Timer]
type = varadd
trigger1 = animelemtime(10)>=0
trigger1 = !(root,hitpausetime)
var(0) = 1

;---------------------------------------------------------------------------
; "Youkai World Gate of 100 Demons"
[Statedef 2100]
type = U;S
movetype = A
physics = N;S
velset = 0,0
anim = 2100+0*floor(var(57):=0)
ctrl = 0
sprpriority = 1
facep2 = 0;1

[State 2000, STS]
type = statetypeset
trigger1 = time=0
trigger1 = statetype!=A
statetype=S
physics=S

[State 2000, Facep2]
type = turn
trigger1 = time = 0
trigger1 = statetype!=A
trigger1 = p2dist x < 0

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

[State 2100, Aya Stop Following Me Vertically you stupid Tengu Bitch!]
type = ScreenBound
trigger1 = time>=0
value = 1
movecamera = 1,0
ignorehitpause = 1
;persistent = 

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

[State 2100, STS]
type = statetypeset
trigger1 = animelemtime(3)=0
statetype = A
physics = N
ignorehitpause = 1

[State 2100, VS]
type = velset
trigger1 = statetype!=A
trigger1 = animelemtime(3)=0
x = 0.0
y = -12.0

[State 2100, VS]
type = velset
trigger1 = statetype=A
trigger1 = animelemtime(3)=0
trigger1 = pos y >= -150
x = 0.0
y = -12.0*((150-abs(pos y))/150.0)

[State 2100, Grav]
type = veladd
trigger1 = animelemtime(3)>0 && animelemtime(8)<0
trigger1 = vel y < 0
trigger1 = pos y >= -150
y = 0.5

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(8)=0
value = 2000,10
channel = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = animelemtime(8)>=0
value = 0
ignorehitpause = 1


[State 2000, Snap]
type = velset
trigger1 = animelemtime(8)=0
y = 0.0
[State 2000, Snap]
type = posset
trigger1 = animelemtime(8)=0
y = -150

[State 1100, Proj]
type = helper
trigger1 = animelemtime(8)=0
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,0
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 2.0
size.yscale = 2.0

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(8)=0
helpertype = normal
name = "Torii_Gate"
id = 22100
stateno = 22100
pos = 0,-floor(pos y)
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 2100, PSND]
type = playsnd
trigger1 = animelemtime(14)=0
value = 2100,10
channel = 7

[State 2000, Spellcard Effect]
type = helper
;trigger1 = animelemtime(14)=0||animelemtime(18)=0||animelemtime(22)=0||animelemtime(26)=0||animelemtime(30)=0
;trigger2 = animelemtime(34)=0||animelemtime(38)=0||animelemtime(42)=0||animelemtime(46)=0||animelemtime(50)=0
trigger1 = animelemtime(14)=0||animelemtime(14)=10||animelemtime(14)=20||animelemtime(14)=30||animelemtime(14)=40
trigger2 = animelemtime(14)=50||animelemtime(14)=60||animelemtime(14)=70||animelemtime(14)=80||animelemtime(14)=90
helpertype = normal
name = "PotS_style_Pot"
id = 22110
stateno = 22110
pos = -20,-floor(pos y)
postype = p1
ownpal = 1
facing = 1

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(14)=1
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 2002
ctrl = 0

;--------------------------
; 236236x/y/z Gate
[Statedef 22100]
type = A
movetype = I
physics = N
juggle = 0
anim = 22100
sprpriority = -1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = time>=0
time = 1
pos = 0,-floor(root,pos y)
ignorehitpause = 1
;persistent = 

[State 21100, Ass]
type = null;assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22000, AD]
type = angledraw
trigger1 = time>=0
scale = 0.825,0.825;0.9-0.1*(animelemtime(9)>=0),0.85+0.15*(animelemtime(9)>=0);1.0,1.0
ignorehitpause = 1

[State 2000, PSND]
type = playsnd
trigger1 = root,stateno != 2100
value = 2000,10
channel = 1

[State 1100, Proj]
type = helper
trigger1 = root,stateno != 2100
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,-200
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 2.0
size.yscale = 2.0

[State 22000, Zeeky]
type = destroyself
trigger1 = root,stateno != 2100

;--------------------------
; Some Random ass Youkai NiBBa
[Statedef 22110]
type = A
movetype = A
physics = N
juggle = 0
anim = 1998
sprpriority = 4

[State 22110, VS]
type = varset
trigger1 = time = 0
var(10) = 22110+floor(18.0*random/1000.0);

[State 22110, Funtime]
type = varset
trigger1 = time = 0
trigger1 = root,var(16)=69
trigger1 = random%100<2
var(10) = 22128;

[State 22110, CA]
type = changeanim
trigger1 = time = 0
value = var(10)
ignorehitpause = 1

[State 22110, ScaleMe]
type = null
triggerall = time = 0
trigger1 = var(10)=22110
trigger1 = (fvar(20):=0.75)||1
trigger2 = var(10)=22111
trigger2 = (fvar(20):=0.65)||1
trigger3 = var(10)=22112
trigger3 = (fvar(20):=0.6)||1
trigger4 = var(10)=22113
trigger4 = (fvar(20):=0.7)||1
trigger5 = var(10)=22114
trigger5 = (fvar(20):=0.65)||1
trigger6 = var(10)=22115
trigger6 = (fvar(20):=0.75)||1
trigger7 = var(10)=22116
trigger7 = (fvar(20):=0.75)||1
trigger8 = var(10)=22117
trigger8 = (fvar(20):=0.75)||1
trigger9 = var(10)=22118
trigger9 = (fvar(20):=0.65)||1
trigger10 = var(10)=22119
trigger10 = (fvar(20):=0.75)||1
trigger11 = var(10)=22120
trigger11 = (fvar(20):=0.75)||1
trigger12 = var(10)=22121
trigger12 = (fvar(20):=0.65)||1
trigger13 = var(10)=22122
trigger13 = (fvar(20):=0.65)||1
trigger14 = var(10)=22123
trigger14 = (fvar(20):=0.75)||1
trigger15 = var(10)=22124
trigger15 = (fvar(20):=0.65)||1
trigger16 = var(10)=22125
trigger16 = (fvar(20):=0.7)||1
trigger17 = var(10)=22126
trigger17 = (fvar(20):=0.7)||1
trigger18 = var(10)=22127
trigger18 = (fvar(20):=0.75)||1
trigger19 = var(10)=22128
trigger19 = (fvar(20):=0.45)||1

[State 21000, VS]
type = velset
trigger1 = time = 0
x = 6.0

[State 21000,Scaleme]
type = angledraw
trigger1 = time>=0
scale = (0.2+(0.8*time/8.0))*fvar(20),(0.2+(0.8*time/8.0))*fvar(20)
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
Attr = SCA,AA,AP;,AT
slot = 0
time = -1
Stateno = 22112
IgnoreHitPause = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time=8
time = 10
freq = 60
ampl = -2
;phase = 90
ignorehitpause = 1
persistent = 0

[State 21000, CS]
type = changestate
trigger1 = time>=8
value = 22111

;--------------------------
; Actually a Tanuki
[Statedef 22111]
type = A
movetype = A
physics = N
juggle = 0
sprpriority = 4
movehitpersist=1

[State 21000, VS]
type = velset
trigger1 = time = 0
x = 7.0

[State 21000,Scaleme]
type = angledraw
trigger1 = time
scale = fvar(20),fvar(20)
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP;,AT
slot = 0
time = -1
Stateno = 22112
IgnoreHitPause = 1

[State 21000, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time
persistent = 3
anim = 25200
ID = 52001
pos = 0,0
postype = p1
facing = -1
removetime = -2
vel = -1.0,0
accel = 0,-0.2
pausemovetime = 0
scale = 0.75,0.75
sprpriority = 5
removeongethit = 0

[State 200, 1]
type = HitDef
trigger1 = !movecontact && !movereversed
attr = S,HP
damage = ceil(30.0*(root,fvar(11)/cond(root,var(57)=3,(root,fvar(30)),1))),5
animtype = Back
guardflag = MA
hitflag = MAFD
priority = 4,Hit
pausetime = 0,6
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-70
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 23
ground.hittime = 23
air.hittime = 23
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -2.0,-3.0
air.type = Low
air.velocity = -2.0,-2.75
getpower = 0,0
givepower = 30,30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p1sprpriority = 4
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
p2facing = 1
ID = 2100

[State 220, First Combo Hit]
type = parentvarset
triggerall = numtarget(2100)
trigger1 = target(2100),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 3;Change index
ignorehitpause = 1
persistent = 0

[State 2100, Hard Knockdown]
type = TargetState
trigger1 = movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 2100
ignorehitpause = 1

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = root,fvar(10)*0.95*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 21000, CS]
type = changestate
trigger1 = frontedgedist <= -50
value = 999;22112

;--------------------------
; Hitstate
[Statedef 22112]
type = A
movetype = I
physics = N
juggle = 0
;anim = 1998
velset = 0,0
sprpriority = 4
movehitpersist=1

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

[State 21002, CS]
type = changestate
trigger1 = time=0
value = 22111

;---------------------------------------------------------------------------
; "Prosperity of Infinite Tanuki"
[Statedef 2200]
type = S
movetype = I
physics = S
velset = 0,0
anim = 2200
ctrl = 0
poweradd = -1000
sprpriority = 1
facep2 = 1

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 2000, Startup Invuln];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = animelemtime(6) = 0
value = SCA,AA,AP,AT
time = 100
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = time=0
value = 2000,0
channel = 0

[State 4000, Effect]
type = helper
trigger1 = animelemtime(6) = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 100
supermovetime = 100

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(6) = 0
helpertype = normal
name = "Spellcard_FX"
id = 1999
stateno = 20000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 100
supermovetime = 100

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = animelemtime(6) = 0
time = 100
anim = -1
sound = S4,0;2
p2defmul = 1
poweradd = 0
unhittable = 1
movetime = 100
darken = 0

[State 2200, PowerLock]
type = varset
trigger1 = time = 0
var(17)=power

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(19)=0
value = 4000,10
channel = 1

[State 2000, Tanuki Effect]
type = helper
trigger1 = animelemtime(12)=0
helpertype = normal
name = "Tanuki"
id = 22200
stateno = 22200
pos = -30,0
postype = p1
ownpal = 1
facing = 1
pausemovetime = 99999999
supermovetime = 99999999

[State 2000, Tanuki Effect]
type = helper
trigger1 = animelemtime(17)=0
helpertype = normal
name = "Tanuki"
id = 22200
stateno = 22200
pos = 30,0
postype = p1
ownpal = 1
facing = 1
pausemovetime = 99999999
supermovetime = 99999999

[State 2000, PSND]
type = varset
trigger1 = animelemtime(19)=0
;var(50)=120+cond(var(47)>4,600,150*var(47));270~720
var(50)=160+cond(var(47)>4,480,80*var(47));240~480
[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(19)=0
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
value = 0
ctrl = 1

;--------------------------
; Belly Drumming Tanuki
[Statedef 22200]
type = A
movetype = I
physics = N
juggle = 0
anim = 22200
sprpriority = 0

[State 1100, Proj]
type = helper
trigger1 = time=0
trigger2 = time=60
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

[State 2000, PSND]
type = playsnd
trigger1 = time=0
trigger2 = time=60
value = 2000,10
channel = 1

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(2)=0||animelemtime(4)=0||animelemtime(6)=0
value = 625,10
channel = 1

[State 24100, Zeeky]
type = destroyself
trigger1 = time>=60

;---------------------------------------------------------------------------
; "Band of 808 Tanuki"
[Statedef 4000]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4000
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

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 4000,10
channel = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(8)=0
anim = 7000
ID = 7000
pos = 20,0
postype = p1 ;p2,front,back,left,right
facing = 1
vel = 0,0
removetime = -2
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 2000, Startup Invuln];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = animelemtime(7)>=0 && animelemtime(9)<0
value = ,AP
time = 1
ignorehitpause = 1

[State 4000, VS]
type = velset
trigger1 = animelemtime(8)>=0 && animelemtime(9)<0
x = 8.0

[State 200, 1]
type = HitDef
trigger1 = animelemtime(8)>=0 && animelemtime(9)<0
trigger1 = !movecontact && !movereversed
attr = S,HA
damage = ceil(50*ifelse(var(42),1.25,1.0)),82
animtype = Back
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 0,8
guard.pausetime=10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-50
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 23+3*(var(42))
ground.hittime = 23+3*(var(42))
air.hittime = 23+3*(var(42))
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -6.0,-6.0
guard.velocity = -6.0
air.type = High
air.velocity = -6.0,-6.0
airguard.velocity = -6.0,-6.0
getpower = 0,0
givepower = 50,600
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 4000

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit=1 && (p2stateno!=[6020,6110])
value = 6020
ID = 4000
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.9*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State 2000, CS]
type = changestate
trigger1 = movehit
trigger1 = numtarget(4000)
trigger1 = target(4000),ishelper=0
value = 4001
ignorehitpause = 1

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(9)=0
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; "Band of 808 Tanuki"
[Statedef 4001]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4001
ctrl = 0
sprpriority = 1
facep2 = 0

[State 40001, TS]
type = targetstate
trigger1 = time = 0
id = 4000
value = 4050
ignorehitpause = 1

[State 4001, Width]
type = width
trigger1 = 1
value = 40,0

[State 4001, TB]
type = targetbind
trigger1 = time = 0
id = 4000
pos = 40,0
ignorehitpause = 1

[State 4001, Timer Freeze]
type = assertspecial
trigger1 = time>=0
flag = timerfreeze
ignorehitpause = 1

[State 4001, HitAdd]
type = hitadd
trigger1 = animelemtime(8)=0||animelemtime(14)=0||animelemtime(23)=0||animelemtime(29)=0
value = 1

[State 4001, HitSnd]
type = playsnd
trigger1 = animelemtime(8)=0
value = 1,0
[State 4001, Hitsparx]
type = Explod
trigger1 = animelemtime(8)=0
anim = 8000+(random%2)
ID = 8000
pos = 36,-60
postype = p1 ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
removetime = -2
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0

[State 4001, HitSnd]
type = playsnd
trigger1 = animelemtime(14)=0
value = 1,1
[State 4001, Hitsparx]
type = Explod
trigger1 = animelemtime(14)=0
anim = 8010+(random%2)
ID = 8000
pos = 55,-48
postype = p1 ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
removetime = -2
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0

[State 4001, HitSnd]
type = playsnd
trigger1 = animelemtime(23)=0
value = 1,1
[State 4001, Hitsparx]
type = Explod
trigger1 = animelemtime(23)=0
anim = 8010+(random%2)
ID = 8000
pos = 34,-53
postype = p1 ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
removetime = -2
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0

[State 4001, HitSnd]
type = playsnd
trigger1 = animelemtime(29)=0
value = 1,2
[State 4001, Hitsparx]
type = Explod
trigger1 = animelemtime(29)=0
anim = 8020+(random%2)
ID = 8000
pos = 45,-34
postype = p1 ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
removetime = -2
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0

[State 4001, Hitsparx]
type = Explod
trigger1 = animelemtime(6)>=0 && animelemtime(47)<0
persistent = 16
anim = 24000
ID = 24000
pos = -320+40,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
vel = 16,0
removetime = 20
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0

[State 4001, Hitsparx]
type = Explod
trigger1 = animelemtime(6)>=8 && animelemtime(47)<0
persistent = 16
anim = 24000
ID = 24000
pos = 320+40,0
postype = p1 ;p2,front,back,left,right
facing = -1
vfacing = 1
vel = -16,0
removetime = 20
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0

[State 4001, HitSnd]
type = playsnd
trigger1 = animelemtime(6)>=25 && animelemtime(47)<24
persistent = 8
value = 1,floor(3.0*random/1000.0)

[State 4001, HitSnd]
type = playsnd
trigger1 = animelemtime(47)=-32
persistent = 8
value = 4000,13

[State 4001, HitSnd]
type = playsnd
trigger1 = animelemtime(47)=8
persistent = 8
value = 4000,14

[State 4001, HitAdd]
type = hitadd
trigger1 = animelemtime(6)>=25 && animelemtime(47)<24
persistent = 8
value = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(8)>=4 && animelemtime(53)<0
persistent=6
anim = 24001
ID = 24001
pos = -25+10*floor(8.0*random/1000.0),-30-35+10*floor(8.0*random/1000.0)
postype = p2 ;p2,front,back,left,right
facing = 1
bindtime = -1
vel = 0,0
accel = 0,0
removetime = -2
pausemovetime = 0
scale = 4.0,4.0
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0

[State 40001, TS]
type = targetstate
trigger1 = animtime = 0
id = 4000
value = 4051
ignorehitpause = 1

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 4002

;---------------------------------------------------------------------------
; "Band of 808 Tanuki"
[Statedef 4002]
type = A
movetype = A
physics = N
velset = 0,0
anim = 4002
ctrl = 0
sprpriority = 1
facep2 = 0
movehitpersist=1

[State 4002, VS]
type = velset
trigger1 = time = 0
y = -12.5

[State 4002, Timer Freeze]
type = assertspecial
trigger1 = time >= 0
flag = timerfreeze
ignorehitpause = 1

[State 1100, Proj]
type = helper
trigger1 = animelemtime(6)=0
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,-105
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 1.5
size.yscale = 1.5
[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 2000,10
channel = 1

[State 1100, Proj]
type = helper
trigger1 = animelemtime(6)=0
helpertype = normal
name = "BallsofSteel"
ID = 24000
pos = 0,-105
postype = p1
stateno = 24000
ownpal = 1
facing = 1
;size.xscale = 0.5
;size.yscale = 0.5

[State 4002, Grav]
type = veladd
trigger1 = animelemtime(9)<0
trigger1 = vel y < 0
y = 0.5

[State 4001, HitSnd]
type = playsnd
trigger1 = animelemtime(11)=0
value = 0,1
[State 4001, HitSnd]
type = playsnd
trigger1 = animelemtime(11)=-1
value = 4000,11
channel = 1

[State 4002, VS]
type = velset
trigger1 = animelemtime(12)=0
x = -4.0
y = -4.0

[State 4002, Grav]
type = statetypeset
trigger1 = animelemtime(12)=0
movetype = I

[State 4001, HitSnd]
type = playsnd
trigger1 = animelemtime(13)=8
value = 4000,12
channel = 2
[State 40001, SSND]
type = stopsnd
trigger1 = animelemtime(13)=12
channel = 1
[State 4001, HitSnd]
type = playsnd
trigger1 = animelemtime(13)=8
value = 1,8

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(13)=8
time = 20
freq = 60
ampl = 24
;phase = 90
;ignorehitpause = 
;persistent = 

[State 4001, HitAdd]
type = hitadd
trigger1 = animelemtime(13)=8
value = 1
[State 4001, TLA]
type = targetlifeadd
trigger1 = animelemtime(13)=8
id = 4000
value = -360
[State 4001, TPA]
type = targetpoweradd
trigger1 = animelemtime(13)=8
id = 4000
value = 550
[State 4001, Scaleme]
type = varset
trigger1 = animelemtime(13)=8
fvar(10) = fvar(10)*0.1*cond(fvar(10)>=1.0,fvar(30),1.0) ;10% Prorate is how it was in 13.5, so might as well...
[State 40001, TS]
type = targetstate
trigger1 = animelemtime(13)=8
id = 4000
value = 4052
ignorehitpause = 1

[State 4002, Grav]
type = veladd
trigger1 = animelemtime(12)>0
y = 0.5

[State 4002, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2003

;---------------------------------------------------------------------------
; 808 Grabbed
[Statedef 4050]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
;ignorehitpause = 
;persistent = 

[State 4150, CA2]
type = changeanim2
trigger1 = time = 0
value = 4050

;---------------------------------------------------------------------------
; 808 Grabbed
[Statedef 4051]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
;ignorehitpause = 
;persistent = 

[State 4150, CA2]
type = changeanim;2
trigger1 = selfanimexist(5300)
trigger1 = time = 0
value = 5300
[State 4150, CA2]
type = changeanim2
trigger1 = !selfanimexist(5300)
trigger1 = time = 0
value = 4051

;---------------------------------------------------------------------------
; 808 Grabbed
[Statedef 4052]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 4150, CA2]
type = changeanim2
trigger1 = time = 0
value = 4052

[State 4052, VS]
type = velset
trigger1 = time = 10
x = -10.0
y = -10.0

[State 4150, CA2]
type = changestate
trigger1 = time = 10
value = 6020

;--------------------------
; Bomb
[Statedef 24000]
type = A
movetype = I
physics = N
juggle = 0
anim = 24011
sprpriority = 2

[State 21100, Ass]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22000, AD]
type = angledraw
trigger1 = time>=0
scale = 1.0,1.0
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1
pos = -4,-144
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(9)<0
trigger2 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1
pos = -19,-142
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1
pos = -28,-136
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(11)=0
time = 1
pos = 48,-10
ignorehitpause = 1

[State 24000, CS]
type = changestate
trigger1 = root,animelemtime(11)=0
value = 24001

[State 22000, Zeeky]
type = destroyself
trigger1 = root,stateno != 4002

;--------------------------
; Bomb
[Statedef 24001]
type = A
movetype = I
physics = N
juggle = 0
anim = 24011
sprpriority = 2

[State 21100, Ass]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22000, AD]
type = angledraw
trigger1 = time>=0
scale = 1.0,1.0
ignorehitpause = 1

[State 24001, VS]
type = velset
trigger1 = time=0
x = 0.0
y = 8.0

[State 24001, Grav]
type = veladd
trigger1 = time 
y = 0.5

[State 24000, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 24002

;--------------------------
; Bomb
[Statedef 24002]
type = A
movetype = I
physics = N
juggle = 0
anim = 24012+1*ishelper(24002)
velset = 0,0
sprpriority = 5
movehitpersist=1

[State 24002, Moon HitSnd]
type = playsnd
trigger1 = ishelper(24100)
trigger1 = time = 0
value = 4000,12

[State 1100, Proj]
type = helper
trigger1 = time=0
trigger1 = !ishelper(24002)
helpertype = normal
name = "BallsofSteel"
ID = 24002
pos = 0,0
postype = p1
stateno = 24002
ownpal = 1
facing = 1

[State 1315, AD]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1315, AD]
type = angledraw
trigger1 = !ishelper(24002)
trigger1 = time>=0
scale = 2.0+0.5*time,2.0+0.5*time
ignorehitpause = 1
[State 1315, AD]
type = angledraw
trigger1 = ishelper(24002) ;Great Luck Fireworks
scale = 1.5*ifelse(time<=25,0.5+0.06*time,2.0+0.005*(time-25)),1.5*ifelse(time<=25,0.5+0.06*time,2.0+0.005*(time-25))
ignorehitpause = 1

[State 1315, Trans]
type = trans
trigger1 = !ishelper(24002)
trans = addalpha
alpha = 256-floor(256.0*time/12.0),256
ignorehitpause = 1

[State 1315, Trans]
type = trans
trigger1 = ishelper(24002)
trigger1 = time <= 40
trans = addalpha
alpha = 256-64*(time%4<2),256
ignorehitpause = 1
[State 1315, Trans]
type = trans
trigger1 = ishelper(24002)
trigger1 = time > 40
trans = addalpha
alpha = 256-floor(256.0*(time-40)/20.0),256
ignorehitpause = 1

[State 1315, Moon Zeeky]
type = changestate
trigger1 = ishelper(24100)
trigger1 = time >= 8
value = 999

[State 1315, Zeeky]
type = destroyself
trigger1 = !ishelper(24002) && !ishelper(24100)
trigger1 = time >= 8
trigger2 = ishelper(24002) && !ishelper(24100)
trigger2 = time >= 60

;---------------------------------------------------------------------------
; "Full Moon Pompokolin"
[Statedef 4100]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4100
ctrl = 0
sprpriority = 1
facep2 = 1

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

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

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 4000,10
channel = 1

[State 2000, Tanuki Effect]
type = helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "Moon"
id = 24100
stateno = 24100
pos = -16,-170
postype = p1
ownpal = 1
facing = 1
supermovetime = 10

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 4000,11

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(7)=1
movetype = I
ignorehitpause = 1
persistent = 0

[State 0, AttackDist]
type = AttackDist
trigger1 = animelemtime(7)<=1
value = 320
ignorehitpause = 1

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; Full Moon
[Statedef 24100]
type = A
movetype = I
physics = N
juggle = 0
anim = 24100
sprpriority = 4

[State 24100, BTR]
type = bindtoroot
triggerall = root,stateno=4100
trigger1 = root,animelemno(0)=4
trigger1 = (var(1):=5)||1
pos = -16,-169
ignorehitpause = 1
[State 24100, BTR]
type = bindtoroot
triggerall = root,stateno=4100
trigger1 = root,animelemno(0)=5
trigger1 = (var(1):=6)||1
pos = -18,-169
ignorehitpause = 1
[State 24100, BTR]
type = bindtoroot
triggerall = root,stateno=4100
trigger1 = root,animelemno(0)=6
trigger1 = (var(1):=-27)||1
pos = 77,-151
ignorehitpause = 1

[State 2000, PSND]
type = playsnd
trigger1 = time=0
value = 2000,10
channel = 1

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
size.xscale = 2.0
size.yscale = 2.0

[State 24100, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
stateno = 24102
time = -1
ignorehitpause = 1

[State 24100, Zeeky]
type = changeanim
trigger1 = root,stateno=4100
trigger1 = root,animelemtime(7)>=0
value = 24101

[State 24100, Zeeky]
type = changestate
trigger1 = root,stateno=4100
trigger1 = root,animelemtime(7)>=0
trigger2 = anim=24101
value = 24101

[State 24100, Zeeky]
type = destroyself
trigger1 = root,stateno!=4100
trigger2 = root,movetype = H
trigger2 = root,stateno!=[120,155]
trigger3 = root,alive=0

[State 24100, Scaleme]
type = angledraw
trigger1 = 1
value = var(1)
scale = 0.25,0.25
ignorehitpause = 1

;--------------------------
; Full Moon Projectile
[Statedef 24101]
type = A
movetype = A
physics = N
juggle = 0
sprpriority = 5

[State 24100, BTR]
type = velset
trigger1 = time>=0
x = 15.72
y = 5.96;2.98

[State 24100, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = !movecontact && !movereversed
attr = S,HP
damage = 360,72
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 0,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,0
hitsound = s1,8
guardsound = s2,0
ground.type = High
ground.slidetime = 23
ground.hittime = 23
air.hittime = 23
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -12.0,-3.0
air.type = High
air.velocity = -12.0,-2.75
getpower = 0,0
givepower = 240,240;Total: 240+(20*3)=300,300
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p1sprpriority = 4
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
p2facing = 1
ID = 4100

[State 2100, Hard Knockdown]
type = TargetState
trigger1 = movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 4100
ignorehitpause = 1

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = root,fvar(10)*0.6*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 4100, Movehit]
type = changestate
trigger1 = movecontact
trigger2 = vel y > 0
trigger2 = pos y >= -(vel y)
value = 24102

[State 24100, Scaleme]
type = angledraw
trigger1 = 1
value = var(1)
scale = 0.25,0.25
ignorehitpause = 1

[State 24100, AngleAdd]
type = varadd
trigger1 = 1
var(1) = -8;-16

;--------------------------
; Full Moon Explode
[Statedef 24102]
type = A
movetype = I
physics = N
juggle = 0
anim = 24012+1*ishelper(24002)
velset = 0,0
sprpriority = 5
movehitpersist=1

[State 24002, Moon HitSnd]
type = playsnd
trigger1 = ishelper(24100)
trigger1 = time = 0
value = 4000,12

[State 1100, Proj]
type = helper
trigger1 = time=0
trigger1 = !ishelper(24002)
helpertype = normal
name = "BallsofSteel"
ID = 24002
pos = 0,0
postype = p1
stateno = 24102
ownpal = 1
facing = 1

[State 2000, PSND]
type = playsnd
trigger1 = time=0
trigger1 = !ishelper(24002)
value = 2000,10
channel = 1

[State 1100, Proj]
type = helper
trigger1 = time=0
trigger1 = !ishelper(24002)
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,0
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 2.0
size.yscale = 2.0

[State 1100, Froge]
type = helper
trigger1 = time=0
trigger1 = !ishelper(24002)
helpertype = normal
name = "Froge1"
ID = 24110;cond((root,var(47))%2=0,24110,24120)
pos = 0,0
postype = p1
stateno = 24110
ownpal = 1
facing = 1
[State 1100, Froge]
type = helper
trigger1 = time=0
trigger1 = !ishelper(24002)
trigger1 = root,var(47)>0 ;At least 1 Leaf
helpertype = normal
name = "Froge2"
ID = 24111;cond((root,var(47))%2=0,24111,24121)
pos = 0,0
postype = p1
stateno = 24110
ownpal = 1
facing = 1
[State 1100, Froge]
type = helper
trigger1 = time=0
trigger1 = !ishelper(24002)
trigger1 = root,var(47)>1 ;At least 2 Leaves
helpertype = normal
name = "Froge3"
ID = 24112;cond((root,var(47))%2=0,24112,24122)
pos = 0,0
postype = p1
stateno = 24110
ownpal = 1
facing = 1
[State 1100, Froge]
type = helper
trigger1 = time=0
trigger1 = !ishelper(24002)
trigger1 = root,var(47)>2 ;At least 3 Leaves
helpertype = normal
name = "Froge4"
ID = 24113;cond((root,var(47))%2=0,24113,24123)
pos = 0,0
postype = p1
stateno = 24110
ownpal = 1
facing = 1
[State 1100, Froge]
type = helper
trigger1 = time=0
trigger1 = !ishelper(24002)
trigger1 = root,var(47)>=4 ;Max Leaves
helpertype = normal
name = "Froge4"
ID = 24114;24114
pos = 0,0
postype = p1
stateno = 24110
ownpal = 1
facing = 1

[State 1315, AD]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1315, AD]
type = angledraw
trigger1 = !ishelper(24002)
trigger1 = time>=0
scale = 2.0+0.5*time,2.0+0.5*time
ignorehitpause = 1
[State 1315, AD]
type = angledraw
trigger1 = ishelper(24002) ;Great Luck Fireworks
scale = 1.5*ifelse(time<=25,0.5+0.06*time,2.0+0.005*(time-25)),1.5*ifelse(time<=25,0.5+0.06*time,2.0+0.005*(time-25))
ignorehitpause = 1

[State 1315, Trans]
type = trans
trigger1 = !ishelper(24002)
trans = addalpha
alpha = 256-floor(256.0*time/12.0),256
ignorehitpause = 1

[State 1315, Trans]
type = trans
trigger1 = ishelper(24002)
trigger1 = time <= 40
trans = addalpha
alpha = 256-64*(time%4<2),256
ignorehitpause = 1
[State 1315, Trans]
type = trans
trigger1 = ishelper(24002)
trigger1 = time > 40
trans = addalpha
alpha = 256-floor(256.0*(time-40)/20.0),256
ignorehitpause = 1

[State 1315, Moon Zeeky]
type = changestate
trigger1 = ishelper(24100)
trigger1 = time >= 8
value = 999

[State 1315, Zeeky]
type = destroyself
trigger1 = !ishelper(24002) && !ishelper(24100)
trigger1 = time >= 8
trigger2 = ishelper(24002) && !ishelper(24100)
trigger2 = time >= 60

;--------------------------
; Pompoko Frog
[Statedef 24110]
type = A
movetype = I
physics = N
juggle = 0
anim = 24110
sprpriority = 5

[State 24110, Leaf Count Initialize]
type = varset
trigger1 = time = 0
var(10)=root,var(47)

[State 21000, Initialize Spin]
type = varset
trigger1 = time=0
var(2) = floor(360.0*random/1000.0)

[State 24110, Launch Angle Initialize]
type = null
triggerall = time = 0
trigger1 = ishelper(24110)
trigger1 = var(10)<=0||var(10)=2||var(10)>=4
trigger1 = (var(1):=90+180*(var(10)>=4))||1
trigger2 = ishelper(24110)
trigger2 = var(10)=1
trigger2 = (var(1):=180)||1
trigger3 = ishelper(24110)
trigger3 = var(10)=3
trigger3 = (var(1):=117)||1;90+27
; Froge 2 (1 Leaf or more)
trigger4 = ishelper(24111)
trigger4 = var(10)=1
trigger4 = (var(1):=360)||1;180+180
trigger5 = ishelper(24111)
trigger5 = var(10)=2
trigger5 = (var(1):=210)||1;90+120
trigger6 = ishelper(24111)
trigger6 = var(10)=3
trigger6 = (var(1):=207)||1;117+90
trigger7 = ishelper(24111)
trigger7 = var(10)>=4
trigger7 = (var(1):=342)||1;270+72
; Froge 3 (2 Leaves or more)
trigger8 = ishelper(24112)
trigger8 = var(10)=2
trigger8 = (var(1):=330)||1;90+120+120
trigger9 = ishelper(24112)
trigger9 = var(10)=3
trigger9 = (var(1):=63)||1;117+90+90
trigger10 = ishelper(24112)
trigger10 = var(10)>=4
trigger10 = (var(1):=54)||1;270+72+72
; Froge 4 (3 Leaves or more)
trigger11 = ishelper(24113)
trigger11 = var(10)=3
trigger11 = (var(1):=333)||1;117+90+90+90
trigger12 = ishelper(24113)
trigger12 = var(10)>=4
trigger12 = (var(1):=126)||1;270+72+72+72
; Froge 5 (Max Leaves)
trigger13 = ishelper(24114)
trigger13 = var(10)>=4
trigger13 = (var(1):=198)||1;270+72+72+72+72

[State 24110, BTP]
type = bindtoparent
trigger1 = time = 0
pos = floor(50.0*cos(var(1)*pi/180.0)),floor(50.0*sin(var(1)*pi/180.0))

[State 24100, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
stateno = 24112
time = -1
ignorehitpause = 1

[State 24110, Velset]
type = velset
trigger1 = time = 0
;x = 0.0*ishelper(24110)-2.0*ishelper(24111)+2.0*ishelper(24112)-4.0*ishelper(24113)+4.0*ishelper(24114)
x = 2.0*cos(var(1)*pi/180.0)
y = 2.0*sin(var(1)*pi/180.0)

[State 24110, Velset]
type = veladd
trigger1 = time
y = 0.2

[State 21000, Ass]
type = assertspecial
trigger1 = time>=0
flag = noshadow
ignorehitpause = 1

[State 21001, Trans]
type = trans
trigger1 = time>=0
trans = addalpha
alpha = 256,128
ignorehitpause = 1

[State 24100, Zeeky]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 24111

[State 24100, Zeeky]
type = changestate
trigger1 = root,movetype = H || root,alive=0
value = 24112

[State 24100, Scaleme]
type = angledraw
trigger1 = 1
scale = 0.25*cos(var(2)*6.0*pi/180.0),0.25
ignorehitpause = 1

[State 21000, Spin Timer]
type = varadd
trigger1 = time>=0
var(2) = 1

;--------------------------
; Frogger on Commodore64
[Statedef 24111]
type = A
movetype = A
physics = N
anim = 24111
juggle = 0
sprpriority = 5
movehitpersist=1

[State 21000, VS]
type = velset
trigger1 = time = 0
x = 0.0
y = 0.0

[State 21000, VS]
type = posset
trigger1 = time = 0
y = 0

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
Stateno = 24112
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
alpha = 256,128
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = !movecontact &&! movereversed
attr = S,HP
damage = 10,2
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
getpower = 0,0
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
;fall.recovertime = 120
p2facing = 1
ID = 4100

[State 200, Damage Dampen]
type = Null;rootvarset
trigger1 = movehit=1
;fvar(10) = root,fvar(10)*0.95*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
trigger1 = root,cond(1,fvar(10):=(fvar(10)*0.95*cond(fvar(10)>=1.0,fvar(30),1.0)),0)||1
;ignorehitpause = 1
;persistent = 0

[State 2100, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 4100
ignorehitpause = 1

[State 21000, CS]
type = changestate
trigger1 = movecontact
trigger2 = var(0)>=90
trigger3 = root,movetype=H
trigger3 = root,stateno!=[120,155]
value = 24112

[State 21000,Scaleme]
type = angledraw
trigger1 = time>=0
scale = 0.25*cos(var(2)*6.0*pi/180.0),0.25
ignorehitpause = 1

[State 21000, Timer]
type = varadd
trigger1 = time>=0
var(0) = 1

[State 21000, Spin Timer]
type = varadd
trigger1 = time>=0
var(2) = 1

;--------------------------
; Frogger on Commodore64
[Statedef 24112]
type = A
movetype = I
physics = N
juggle = 0
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

[State 21000,Scaleme]
type = angledraw
trigger1 = time>=0
scale = 0.25*cos(var(2)*6.0*pi/180.0),0.25
ignorehitpause = 1