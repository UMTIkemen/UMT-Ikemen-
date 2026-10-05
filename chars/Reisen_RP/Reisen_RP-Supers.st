
;---------------------------------------------------------------------------
; "X-Wave"
[Statedef 2000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 2000+0*floor(var(11):=0)
ctrl = 0
sprpriority = 1
facep2 = 1

[State 200, PSND]
type = PlaySnd
trigger1 = time=0
value = 2000,0
channel = 0

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(9)<0;time=0
value = SCA,AA,AP,AT
time = 1;55
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
stateno = 1999
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
trigger1 = animelemtime(6)=0
value = 1100,11
channel = 2

[State 4000, Effect]
type = helper
trigger1 = animelemtime(8)=0
helpertype = normal
name = "Wave"
ID = 22000
pos = 1,-58
postype = p1
stateno = 22000
ownpal = 1
facing = 1

[State 4000, Effect]
type = helper
trigger1 = animelemtime(8)=0
helpertype = normal
name = "Wave"
ID = 22001
pos = 1,-58
postype = p1
stateno = 22001
ownpal = 1
facing = 1

[State 4000, Effect]
type = helper
trigger1 = animelemtime(8)=0||animelemtime(10)=0||animelemtime(12)=0
trigger2 = animelemtime(14)=0
helpertype = normal
name = "Wave"
ID = 22002
pos = 1,-58
postype = p1
stateno = 22002
ownpal = 1
facing = 1

[State 1110, MHR]
type = movehitreset
trigger1 = animelemtime(8)=0||animelemtime(10)=0||animelemtime(12)=0
trigger2 = animelemtime(14)=0||animelemtime(16)=0||animelemtime(18)=0

[State 200, 1]
type = HitDef
triggerall = (movecontact=0&&movereversed=0)
trigger1 = animelemtime(6)=0||animelemtime(8)=0||animelemtime(10)=0||animelemtime(12)=0
trigger2 = animelemtime(14)=0||animelemtime(16)=0||animelemtime(18)=0
attr = S,HA                     ;Attribute: Standing, Normal Attack
damage = 34,6                   ;Damage that move inflicts, guard damage
animtype = Back                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 0,5                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
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
ground.velocity = -10.0,-6.0             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -10.0,-6.0;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 0,0
givepower = 43,43
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 2000

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

[State 2000, Hitflag]
type = varset
trigger1 = movehit
var(11) = 1
ignorehitpause = 1
persistent = 0

[State 2000, VS]
type = varset
trigger1 = var(10)<=2
trigger1 = var(11)>0
trigger1 = animelemtime(19)>0
var(16) = 480

[State 2000, VS]
type = varset
trigger1 = var(10)>=3
trigger1 = var(11)>0
trigger1 = animelemtime(19)>0
;var(16) = 480
var(18) = 480+floor(var(20):=12)

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.96
;ignorehitpause = 1
;persistent = 0

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(19)=0
movetype = I

[State 2002, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; X-Wave Ring
[Statedef 22000]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 22000
ctrl = 0
sprpriority = 5

[State 22001, BTR]
type = bindtoroot
trigger1 = root,stateno = 2000
pos = 1,-58
ignorehitpause = 1

[State 22000, Scaleme]
type = null
trigger1 = time = 0
trigger1 = (fvar(0):=0.7)||1
trigger2 = time=[1,7]
trigger2 = (fvar(0):=(0.8634*(time**0.2485)))||1
trigger3 = time > 7
trigger3 = (fvar(0):=fvar(0)+0.01)||1

[State 22000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22000, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 22000, AD]
type = angledraw
trigger1 = 1
scale = fvar(0),fvar(0)
ignorehitpause = 1

[State 22000, CA]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/52.0),256
ignorehitpause = 1

[State 22000, CS]
type = Destroyself
trigger1 = time >= 52

;---------------------------------------------------------------------------
; X-Wave Ring
[Statedef 22001]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 22001
ctrl = 0
sprpriority = 5

[State 22001, BTR]
type = bindtoroot
trigger1 = root,stateno = 2000
pos = 1,-58
ignorehitpause = 1

[State 22001, Supersize Me]
type = Varset
trigger1 = 1
fvar(0) = ifelse((time+1)%4 < 2, 1.25, 1)

[State 22000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22000, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 22000, AS]
type = angleset
trigger1 = 1
persistent = 2
value = floor(360.0*random/1000.0)
ignorehitpause = 1

[State 22000, AD]
type = angledraw
trigger1 = 1
scale = fvar(0),fvar(0)
ignorehitpause = 1

[State 22000, CA]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 22000, CS]
type = Destroyself
trigger1 = animtime = 0
trigger2 = root,stateno != 2000

;--------------------------
; 623z FX
[Statedef 22002]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 22002
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
pos = 1,-58
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
trigger1 = root,stateno != 2000
trigger2 = time>=25

;---------------------------------------------------------------------------
; "Lunacy Ray"
[Statedef 2100]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 2100+0*floor(var(35):=180)
ctrl = 0
sprpriority = 1
facep2 = 1

[State 2000, IKEMEN CANT HANDLE SUPERPAUSE'S UNHITTABLE FLAG PROPERLY]
type = NotHitBy
trigger1 = time=0
value = SCA,AA,AP,AT
time = 40

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
stateno = 1999
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
trigger1 = animelemtime(5)=0 || animelemtime(14)=0
value = 2100,10
channel = 2

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(5)=0 || animelemtime(14)=0
value = 1200,10
channel = 3

[State 4000, Effect]
type = helper
trigger1 = animelemtime(5)=0||animelemtime(14)=0
helpertype = normal
name = "Wave"
ID = 22100
pos = 12,-65
postype = p1
stateno = 22100
ownpal = 1
facing = 1

[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(10)=-1;||animelemtime(14)=0
fvar(10) = (fvar(10))*0.80
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(19)=-1;||animelemtime(14)=0
fvar(10) = (fvar(10))*0.80
ignorehitpause = 1
persistent = 0

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 320
ignorehitpause = 1 
;persistent = 


[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(19)=0
movetype = I

[State 2002, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Lunacy Ray FX
[Statedef 22100]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 22100
ctrl = 0
sprpriority = 5

[State 22001, BTR]
type = bindtoroot
trigger1 = root,stateno = 2100
trigger1 = !(root,animelemtime(10)>=0 && root,animelemtime(14)<0)
trigger1 = !(root,animelemtime(19)>=0)
pos = 12,-65
ignorehitpause = 1

[State 22001, BTR]
type = bindtoroot
triggerall = root,stateno = 2100
trigger1 = (root,animelemtime(10)>=0 && root,animelemtime(14)<0)
trigger2 = (root,animelemtime(19)>=0)
pos = -15,-72
ignorehitpause = 1

[State 22100, VS]
type = null
trigger1 = animelemtime(1) = 0
trigger1 = (var(20):=0)||1
trigger2 = animelemtime(10)=0
trigger2 = (var(20):=-10)||1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP,AT
slot = 0
time = -1
Stateno = 22102
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

[State 21300, CS]
type = changestate
trigger1 = 1
value = 22101

;---------------------------------------------------------------------------
; Lunacy Ray FX
[Statedef 22101]
type    = A
movetype= A
physics = N
velset = 0,0
;anim = 1998
ctrl = 0
sprpriority = 5
movehitpersist = 1

[State 22001, BTR]
type = bindtoroot
trigger1 = root,stateno = 2100
trigger1 = !(root,animelemtime(10)>=0 && root,animelemtime(14)<0)
trigger1 = !(root,animelemtime(19)>=0)
pos = 12,-65
ignorehitpause = 1

[State 22001, BTR]
type = bindtoroot
triggerall = root,stateno = 2100
trigger1 = (root,animelemtime(10)>=0 && root,animelemtime(14)<0)
trigger2 = (root,animelemtime(19)>=0)
pos = -15,-72
ignorehitpause = 1

[State 22100, VS]
type = null
trigger1 = animelemtime(1) = 0
trigger1 = (var(20):=0)||1
trigger2 = animelemtime(10)=0
trigger2 = (var(20):=-10)||1

[State 22100, VA]
type = varadd
trigger1 = animelemtime(10)>0
var(20)=10

[State 22100, AS]
type = angleset
trigger1 = 1
value = var(20)

[State 22100, AD]
type = angledraw
trigger1 = 1;time
trigger1 = var(20)<60
scale = 3.0,1.826087
ignorehitpause = 1

[State 22100, AD]
type = angledraw
trigger1 = 1;time
trigger1 = var(20)>=60
scale = 3.0,1.826087-(1.826087*var(0)/9.0)
ignorehitpause = 1

[State 22100, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = var(20)<60
anim = 21201+1*(animelemtime(1)%6>3)
ID = 21200
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
bindtime = -1
removetime = 1
pausemovetime = 9999
scale = cond(animelemtime(1)%6<2,1.25,cond(animelemtime(1)%6<4,0.45,0.4)),cond(animelemtime(1)%6<2,1.25,cond(animelemtime(1)%6<4,0.45,0.4))
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = !numtarget(2100);1
Attr = SCA,AA,AP,AT
slot = 0
time = -1
Stateno = 22101+1*(var(30)!=0)
IgnoreHitPause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = numtarget(2100);1
Attr = SCA,AA,AP,AT
slot = 0
time = -1
Stateno = 22102
IgnoreHitPause = 1

;[State 22000, MHR]
;type = movehitreset
;trigger1 = var(30)=0
;;ignorehitpause = 1

[State 1010, HitDef]
type = Hitdef
trigger1 = time; && var(30)=0
trigger1 = !numtarget(2100)
;trigger1 = movecontact = 0; && movereversed = 0
attr = S,HP
animtype  = Hard
damage    = ceil(135*root,fvar(11)),24
hitonce = 1
priority  = 4,Hit
;guard.kill = 0
hitflag = MAFDP
guardflag = MA
pausetime = 0,6
sparkno = s8020+(random%2)
guard.sparkno = s8030
sparkxy = -10,0+cond(numenemy,floor(enemynear,const(size.mid.pos.y))+floor(p2dist y),0)
p1sprpriority=5
hitsound   = s1,11
guardsound = s2,0
ground.type = High
ground.slidetime = 24
ground.hittime  = 24
air.hittime  = 24
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -2.0,-8.0
guard.velocity = -2.0
air.velocity = -2.0,-8.0
airguard.velocity = -2.0,-8.0
down.velocity = -2.0,-8.0
yaccel = 0.5
fall = 1
fall.recover = 0
p1sprpriority = 5
getpower = 0,0
givepower = 150,150
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ID = 2100
nochainID = 2100

[State 200, Safeguard]
type = varset
trigger1 = movecontact
trigger1 = numtarget(2100)
trigger1 = target(2100),ishelper=0
var(30) = 1
ignorehitpause = 1
persistent=0

;[State 200, Damage Dampen]
;type = parentvarset
;trigger1 = movehit
;trigger1 = numtarget(2100)
;trigger1 = target(2100),ishelper=0
;trigger1 = var(30)=1
;trigger1 = (var(30):=2)||1
;fvar(10) = (root,fvar(10))*0.80
;ignorehitpause = 1
;persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 =p2statetype= A && movehit && (p2stateno!=[6020,6110])
value =6020
ID = 2100
ignorehitpause =1

[State 22100, Zeeky]
type = changestate;destroyself
trigger1 = var(30)>=1
value = 22102
ignorehitpause = 1

[State 22100, Zeeky]
type = changestate;destroyself
trigger1 = var(0)>=9
value = 999

[State 22100, VA]
type = varadd
trigger1 = var(20)>=4
var(0) = 1

[State 22100, Zeeky]
type = destroyself
trigger1 = root,stateno != 2100

;---------------------------------------------------------------------------
; Lunacy Ray Projectile
[Statedef 22102]
type    = A
movetype= I
physics = N
velset = 0,0
sprpriority=5
ctrl = 0
movehitpersist = 1

[State 22001, BTR]
type = bindtoroot
trigger1 = root,stateno = 2100
trigger1 = !(root,animelemtime(10)>=0 && root,animelemtime(14)<0)
trigger1 = !(root,animelemtime(19)>=0)
pos = 12,-65
ignorehitpause = 1

[State 22001, BTR]
type = bindtoroot
triggerall = root,stateno = 2100
trigger1 = (root,animelemtime(10)>=0 && root,animelemtime(14)<0)
trigger2 = (root,animelemtime(19)>=0)
pos = -15,-72
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

[State 200, Safeguard]
type = varset
triggerall = movecontact
triggerall = numtarget(2100)
trigger1 = target(2100),ishelper=0
trigger1 = var(30)<=0
var(30) = 1
ignorehitpause = 1
persistent = 0

;[State 200, Damage Dampen]
;type = parentvarset
;trigger1 = movehit
;trigger1 = numtarget(2100)
;trigger1 = target(2100),ishelper=0
;trigger1 = var(30)=1
;trigger1 = (var(30):=2)||1
;fvar(10) = (root,fvar(10))*0.80
;ignorehitpause = 1
;persistent = 0

[State 22100, AD]
type = angledraw
trigger1 = time
trigger1 = var(20)<60
scale = 3.0,1.826087
ignorehitpause = 1

[State 22100, AD]
type = angledraw
trigger1 = time
trigger1 = var(20)>=60
scale = 3.0,1.826087-(1.826087*var(0)/9.0)
ignorehitpause = 1

[State 22100, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21302, CS]
type = changestate
trigger1 = 1
value = 22103

;---------------------------------------------------------------------------
; Lunacy Ray FX
[Statedef 22103]
type    = A
movetype= I
physics = N
velset = 0,0
;anim = 1998
ctrl = 0
sprpriority = 5
movehitpersist = 1

[State 22001, BTR]
type = bindtoroot
trigger1 = root,stateno = 2100
trigger1 = !(root,animelemtime(10)>=0 && root,animelemtime(14)<0)
trigger1 = !(root,animelemtime(19)>=0)
pos = 12,-65
ignorehitpause = 1

[State 22001, BTR]
type = bindtoroot
triggerall = root,stateno = 2100
trigger1 = (root,animelemtime(10)>=0 && root,animelemtime(14)<0)
trigger2 = (root,animelemtime(19)>=0)
pos = -15,-72
ignorehitpause = 1

[State 22100, VS]
type = null
trigger1 = animelemtime(1) = 0
trigger1 = (var(20):=0)||1
trigger2 = animelemtime(10)=0
trigger2 = (var(20):=-10)||1

[State 22100, VA]
type = varadd
trigger1 = animelemtime(10)>0
var(20)=10

[State 22100, AS]
type = angleset
trigger1 = 1
value = var(20)

[State 22100, AD]
type = angledraw
trigger1 = time
trigger1 = var(20)<60
scale = 3.0,1.826087
ignorehitpause = 1

[State 22100, AD]
type = angledraw
trigger1 = time
trigger1 = var(20)>=60
scale = 3.0,1.826087-(1.826087*var(0)/9.0)
ignorehitpause = 1

[State 22100, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = var(20)<60
anim = 21201+1*(animelemtime(1)%6>3)
ID = 21200
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
bindtime = -1
removetime = 1
pausemovetime = 9999
scale = cond(animelemtime(1)%6<2,1.25,cond(animelemtime(1)%6<4,0.45,0.4)),cond(animelemtime(1)%6<2,1.25,cond(animelemtime(1)%6<4,0.45,0.4))
sprpriority = 5
ownpal = 1
removeongethit = 1

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
Stateno = 22103
IgnoreHitPause = 1

[State 200, Safeguard]
type = varset
triggerall = movecontact
triggerall = numtarget(2100)
trigger1 = target(2100),ishelper=0
trigger1 = var(30)<1
var(30) = 1
ignorehitpause = 1
persistent = 0

;[State 200, Damage Dampen]
;type = parentvarset
;trigger1 = movehit
;trigger1 = numtarget(2100)
;trigger1 = target(2100),ishelper=0
;trigger1 = var(30)=1
;trigger1 = (var(30):=2)||1
;fvar(10) = (root,fvar(10))*0.80
;ignorehitpause = 1
;persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 =p2statetype= A && movehit && (p2stateno!=[6020,6110])
value =6020
ID = 2100
ignorehitpause =1

[State 22100, Zeeky]
type = changestate;destroyself
trigger1 = var(0)>=9
value = 999

[State 22100, VA]
type = varadd
trigger1 = var(20)>=4
var(0) = 1

[State 22100, Zeeky]
type = destroyself
trigger1 = root,stateno != 2100

;---------------------------------------------------------------------------
; Ricochet "Lunatic Echo"
[Statedef 2200]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 2200
ctrl = 0
sprpriority = 1
facep2 = 1

[State 2000, IKEMEN CANT HANDLE SUPERPAUSE'S UNHITTABLE FLAG PROPERLY]
type = NotHitBy
trigger1 = time=0
value = SCA,AA,AP,AT
time = 40

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
stateno = 1999
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

[State 2200, VS]
type = velset
trigger1 = animelemtime(5)=0
x = -0.5
y = -0.5

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(5)=0||animelemtime(7)=0||animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0
trigger2 = animelemtime(15)=0||animelemtime(17)=0||animelemtime(19)=0||animelemtime(21)=0||animelemtime(23)=0
trigger3 = animelemtime(25)=0||animelemtime(27)=0||animelemtime(29)=0||animelemtime(31)=0||animelemtime(33)=0
trigger4 = animelemtime(35)=0||animelemtime(37)=0||animelemtime(39)=0||animelemtime(41)=0||animelemtime(43)=0
value = 2200,10
channel = 2

[State 4000, Effect]
type = helper
trigger1 = animelemtime(5)=0||animelemtime(7)=0||animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0
trigger2 = animelemtime(15)=0||animelemtime(17)=0||animelemtime(19)=0||animelemtime(21)=0||animelemtime(23)=0
trigger3 = animelemtime(25)=0||animelemtime(27)=0||animelemtime(29)=0||animelemtime(31)=0||animelemtime(33)=0
trigger4 = animelemtime(35)=0||animelemtime(37)=0||animelemtime(39)=0||animelemtime(41)=0||animelemtime(43)=0
helpertype = normal
name = "Wave"
ID = 22200
pos = 27,-45
postype = p1
stateno = 22200
ownpal = 1
facing = 1
size.xscale = 0.4;5
size.yscale = 0.8;1.0

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 320
ignorehitpause = 1 
;persistent = 

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(43)=1
movetype = I

[State 2200, Grav]
type = veladd
trigger1 = animelemtime(45)>=0
y = 0.5

[State 2002, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2201
ctrl = 0

;---------------------------------------------------------------------------
; Lunatc Echo Land
[Statedef 2201]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 4002

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

[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------
;Echo Proj
[Statedef 22200]
type    = A
movetype= A
physics = N
juggle  = 0
anim = 22200
sprpriority = 5

[State 20410, AngleSet]
type = null
triggerall = time = 0
trigger1 = (fvar(0):=45)||1

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
attr = SCA,AA,AP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 22201
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
value = 22201

;--------------------------
; Air 236236xyz Proj
[Statedef 22201]
type    = A
movetype= A
physics = N
juggle  = 0
sprpriority = 5
movehitpersist = 1

[State 4000, Effect]
type = helper
trigger1 = var(0)%5 = 0
helpertype = normal
name = "Wave FX"
ID = 22210
pos = 0,0
postype = p1
stateno = 22210
ownpal = 0
facing = 1
size.xscale = 0.4;5
size.yscale = 0.8;1.0

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,AA,AP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 22203;2
time = -1
ignorehitpause = 1

[State 22201, AS]
type = angleset
trigger1 = 1
value = -45
ignorehitpause = 1

[State 20210, AD]
type = AngleDraw
trigger1 = 1;var(0)=0 && time=0
;trigger2 = var(0)>0 && time
value = -fvar(0)
scale = cond(var(0)>=6,1.0,0.3+(0.7*var(0)/6.0)),cond(var(0)>=6,1.0,0.3+(0.7*var(0)/6.0))
ignorehitpause = 1

[State 20411, VS]
type = velset
trigger1 = 1
X = 16.0*cos(fvar(0)*Pi/180.0)
Y = 16.0*sin(fvar(0)*Pi/180.0)

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
attr = A, HP                     ;Attribute: Standing, Normal Attack
damage = ceil(20*(root,fvar(11))),2                   ;Damage that move inflicts, guard damage
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAFD;P                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 0,9                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,0
hitsound = s1,9                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 14             ;Time that the opponent slides back
ground.hittime  = 14            ;Time opponent is in hit state
air.hittime  = 14             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -2.0,-6.5             ;Velocity at which opponent is pushed
down.velocity = 0.0,0.0
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.0,-6.5;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 0,0
givepower = 15,15
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 2200

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.94
ignorehitpause = 1
persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 =p2statetype= A && movehit && (p2stateno!=[6020,6110])
value =6020
ID = 2200
ignorehitpause =1

[State 20411, CS]
type = changestate
value = 22002
trigger1 = FrontEdgeBodyDist <= -100;32
trigger2 = screenpos y >= 400;< -10
;trigger3 = movecontact

[State 22201, Timer]
type = varadd
trigger1 = 1
var(0) = 1

;--------------------------
; Air 236xyz Proj
[Statedef 22202]
type    = A
movetype= I
physics = N
juggle  = 0
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

;--------------------------
; Air 236xyz Proj
[Statedef 22203]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
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
trigger1 = 1
value = 22201

;--------------------------
; Air 236236xyz FX
[Statedef 22210]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 22201
sprpriority = 5

[State 20210, AD]
type = AngleDraw
trigger1 = 1
value = -45
scale = cond(time>=6,1.0,0.3+(0.7*time/6.0)),cond(time>=6,1.0,0.3+(0.7*time/6.0))
ignorehitpause = 1

[State 20411, VS]
type = velset
trigger1 = time = 0
X = 0.5*cos(45*Pi/180.0)
Y = 0.5*sin(45*Pi/180.0)

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
alpha = 256-floor(256.0*time/16.0),256
ignorehitpause = 1

[State 20411, CS]
type = destroyself
trigger1 = time>=16


;---------------------------------------------------------------------------
; "Lunatic Red Eyes"
[Statedef 4000]
type    = U
movetype= A
physics = N
velset = 0,0
anim = 4000+1*(statetype = A)
ctrl = 0
sprpriority = 1
facep2 = 0

[State 2000, IKEMEN CANT HANDLE SUPERPAUSE'S UNHITTABLE FLAG PROPERLY]
type = NotHitBy
trigger1 = time=0
value = SCA,AA,AP,AT
time = 40

[State 4000, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S

[State 4000, Ground Turn]
type = turn
trigger1 = time = 0
trigger1 = statetype != A
trigger1 = p2dist x < 0

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
stateno = 1999
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

[State 4000, Effect]
type = playsnd
trigger1 = animelemtime(8)=0
value = 4000,10
channel = 7
ignorehitpause = 1

[State 4000, Effect]
type = playsnd
trigger1 = animelemtime(33)=0
value = 4000,11
channel = 7
ignorehitpause = 1

[State 4000, Effect]
type = helper
trigger1 = animelemtime(8)>=0 && animelemtime(33)<=0
persistent = 5
helpertype = normal
name = "Wave"
ID = 24000
pos = 0,-63
postype = p1
stateno = 24000
ownpal = 1
facing = 1

[State 1000, 5]
type = Projectile
trigger1 = animelemtime(8)>=3 && animelemtime(33)<3
persistent = 5
attr = A,HP
projanim = 24010
projid = 24000
projremove = 1
projremovetime = 4
projscale = 1.0,1.0
projpriority = 9999
velocity = 0
offset = 0,-63
animtype  = Hard
damage = 21,4
;damage    = 60-30*(var(10)=3),12
priority  = 4,Hit
hitflag = MAFP
guardflag = MA
pausetime = 0,10
sparkxy = floor(p2dist x),floor(p2dist y)-30
sparkno = s8010+(random%2)
guard.sparkno = s8030
hitsound   = -1;s1,6
guardsound = s2,0
ground.type = High
ground.slidetime = 29
ground.hittime  = 29
guard.slidetime = 11
ground.slidetime = 11
ground.velocity = -12.5*ifelse(p2dist x<0,-1,1),-7.5
guard.velocity = -12.5*ifelse(p2dist x<0,-1,1)
air.velocity = -12.5*ifelse(p2dist x<0,-1,1),-7.5
airguard.velocity = -12.5*ifelse(p2dist x<0,-1,1),-7.5
fall = 1
fall.recover=0;time = 30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 30,30
ownpal = 1
id = 4000
p2facing = 1

[State 200, Damage Dampen]
type = varset
trigger1 = projhit24000 = 1
fvar(10) = fvar(10)*0.96
ignorehitpause = 1
persistent = 0

[State 21300, Hitsound]
type = playsnd
trigger1 = projhit24000 =1
value = 1,8
channel = 3

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 200
ignorehitpause = 1 
;persistent = 

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(33)=4
movetype = I

[State 2002, CS]
type = changestate
trigger1 = statetype != A
trigger1 = animtime=0
value = 0
ctrl = 1

[State 4000, Grav]
type = veladd
trigger1 = statetype = A
trigger1 = animelemtime(50)>0
y = 0.5

[State 4000, Air Land]
type = changestate
trigger1 = anim = 4001
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4001

;---------------------------------------------------------------------------
; Lunatc Red Eyes Land
[Statedef 4001]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 4002

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

[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Lunatic Red Eyes FX
[Statedef 24000]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 24000
ctrl = 0
sprpriority = 5

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, AD]
type = angledraw
trigger1 = 1
scale = 0.225*(1+time*0.425),0.225*(1+time*0.425)
ignorehitpause = 1

[State 24000, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-cond(time<16,0,floor(256.0*(time-16)/9.0)),256
ignorehitpause = 1

[State 24000, Zeeky]
type = Destroyself
trigger1 = time >= 26

;---------------------------------------------------------------------------
; "TeleMesmerism"
[Statedef 4100]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 4100
ctrl = 0
sprpriority = 1
facep2 = 1

[State 2000, IKEMEN CANT HANDLE SUPERPAUSE'S UNHITTABLE FLAG PROPERLY]
type = NotHitBy
trigger1 = time=0
value = SCA,AA,AP,AT
time = 40

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
stateno = 1999
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

[State 4000, Effect]
type = helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "Laser"
ID = 24100
pos = 0,0
postype = p1
stateno = 24100
ownpal = 1
facing = 1
supermovetime = 40

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 320
ignorehitpause = 1 
;persistent = 

[State 2002, CS]
type = changestate
trigger1 = animelemtime(7) > 0
trigger1 = numhelper(24100)=0
trigger2 = numhelper(24100)
trigger2 = helper(24100),stateno = 24101
value = 4101
ctrl = 0

;---------------------------------------------------------------------------
; "TeleMesmerism"
[Statedef 4101]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 4101
ctrl = 0
sprpriority = 1
facep2 = 0

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 320
ignorehitpause = 1 

[State 4101, STS]
type = statetypeset
trigger1 = animelemtime(37)=0
movetype = I
ignorehitpause = 1

[State 2002, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Telemesmerism Proj
[Statedef 24100]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1998+0*Floor(var(11):=60)
ctrl = 0
sprpriority = 5

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24101, PSND]
type = playsnd
trigger1 = time = 0
value = 4100,11
channel = 6

[State 4000, Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Laser1"
ID = 24110
pos = 0,0
postype = p1
stateno = 24110
ownpal = 1
facing = 1
supermovetime = 40
[State 4000, Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Laser2"
ID = 24111
pos = 0,0
postype = p1
stateno = 24110
ownpal = 1
facing = 1
supermovetime = 40
[State 4000, Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Laser3"
ID = 24112
pos = 0,0
postype = p1
stateno = 24110
ownpal = 1
facing = 1
supermovetime = 40
[State 4000, Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Laser4"
ID = 24113
pos = 0,0
postype = p1
stateno = 24110
ownpal = 1
facing = 1
supermovetime = 40

[State 0, Explod]
type = Explod
trigger1 = 1
trigger1 = ((var(40):=(random%2)))||1
persistent = 3
anim = 24103
ID = 24103
pos = 0,-floor(screenpos y)
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1;-2*(var(40))
vel = 0,2+0.5*floor(9.0*random/1000.0)
accel = 0,0
random = 90,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = 1
trigger1 = ((var(40):=(random%2)))||1
persistent = 3
anim = 24103
ID = 24103
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = -1
vel = 0,-2-0.5*floor(9.0*random/1000.0)
accel = 0,0
random = 90,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 21000, PS]
type = posadd
trigger1 = 1;time = 0
x = floor(p2dist x)

[State 24100, VA]
type = varadd
triggerall = time > 9
trigger1 = time = 21 || time = 33 || time = 45 || time = 57 || time = 69
var(10)=1

[State 24100, Activate]
type = changestate
trigger1 = time > 9
trigger1 = root,stateno != 4100
value = 24102

[State 24100, Activate]
type = changestate
trigger1 = time > 9
trigger1 = !((root,command = "holdx" && root,command = "holdy" && root,command = "holdz")||(root,command="holdc"))
trigger2 = var(10)>=5
value = 24101

[State 24100, VA]
type = varadd
trigger1 = time > 9
var(11)=-1

;---------------------------------------------------------------------------
; Telemesmerism Proj
[Statedef 24101]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 24100
ctrl = 0
sprpriority = 5

[State 24101, PA]
type = posadd
trigger1 = time = 0
y = -512

[State 24101, PSND]
type = playsnd
trigger1 = time = 4
value = 2100,10
channel = 5
[State 24101, PSND]
type = playsnd
trigger1 = time = 4
value = 4100,10
channel = 6

[State 24100, VS]
type = varadd
trigger1 = time>4
trigger1 = fvar(0)<1
fvar(0)=0.2

[State 241010, AD]
type = angledraw
trigger1 = 1
scale = 1.75+(.175*(time%2=0)),2.0*fvar(0)

[State 24100, EXPLOD]
type = Explod
trigger1 = fvar(0)>=1.0
persistent = 0
anim = 24101
ID = 24101
pos = 0,512
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1.75,0.25
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 24100, MEX]
type = modifyexplod
trigger1 = 1
id = 24101
scale = 1.75+(.175*(time%2=0)),0.25


[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24100, T]
type = trans
trigger1 = 1
trans = addalpha
alpha= 256,256
ignorehitpause = 1

[State 1000, 5]
type = Projectile
triggerall = time>=8
trigger1 = var(10)<=0
trigger1 = time<128
trigger2 = var(10)=1
trigger2 = time<128+6
trigger3 = var(10)=2
trigger3 = time<128+12
trigger4 = var(10)=3
trigger4 = time<128+18
trigger5 = var(10)=4
trigger5 = time<128+24
trigger6 = var(10)=5
trigger6 = time<128+30
persistent = 6
attr = A,HP
projanim = 24110
projid = 24110
projremove = 0
projremovetime = 4
projscale = 1.0,1.0
projpriority = 9999
velocity = 0
offset = 0,512
animtype  = DiagUp;Back
damage = 19,4
;damage    = 60-30*(var(10)=3),12
priority  = 4,Hit
hitflag = MAFDP
guardflag = MA
pausetime = 0,10
sparkxy = 0,floor(p2dist y)-512+cond(numenemy,enemynear,const(size.mid.pos.y),0)
sparkno = s8010+(random%2)
guard.sparkno = s8030
hitsound   = -1;s1,9
guardsound = s2,0
ground.type = High
ground.slidetime = 29
ground.hittime  = 29
guard.slidetime = 11
ground.slidetime = 11
ground.velocity = 0.0,-10.5
guard.velocity = 0.0
air.velocity = 0.0,-10.5
airguard.velocity = -0.0,-10.5
fall = 1
fall.recover=0;time = 30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 25,25
ownpal = 1
id = 4100
p2facing = 1

[State 24101, CS]
type = changestate
triggerall = time>=8
trigger1 = var(10)<=0
trigger1 = time>=128
trigger2 = var(10)=1
trigger2 = time>=128+6
trigger3 = var(10)=2
trigger3 = time>=128+12
trigger4 = var(10)=3
trigger4 = time>=128+18
trigger5 = var(10)=4
trigger5 = time>=128+24
trigger6 = var(10)=5
trigger6 = time>=128+30
value = 24102

[State 24102, Zeeky]
type = destroyself
trigger1 = time < 8
trigger1 = root,stateno != [4100,4101]

;---------------------------------------------------------------------------
; Telemesmerism Proj
[Statedef 24102]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 5

[State 24100, VS]
type = varadd
trigger1 = time
fvar(0)=-0.1

[State 241010, AD]
type = angledraw
trigger1 = time
scale = (1.75+(.175*(time%2=0)))*fvar(0),2.0

[State 24100, MEX]
type = modifyexplod
trigger1 = time
id = 24101
scale = (1.75+(.175*(time%2=0)))*fvar(0),0.25

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24100, T]
type = trans
trigger1 = 1
trans = addalpha
alpha= 256,256
ignorehitpause = 1

[State 24102, REX]
type = removeexplod
trigger1 = time >= 10
id = 24101

[State 24102, Zeeky]
type = destroyself
trigger1 = time >= 10

;---------------------------------------------------------------------------
; Telemesmerism Proj
[Statedef 24110]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 24102+0*Floor(var(11):=60)
ctrl = 0
sprpriority = 5

[State 24110, Angle]
type = null
triggerall = time
trigger1 = ishelper(24110)
trigger1 = (var(1):=0)||1
trigger2 = ishelper(24111)
trigger2 = (var(1):=90)||1
trigger3 = ishelper(24112)
trigger3 = (var(1):=180)||1
trigger4 = ishelper(24113)
trigger4 = (var(1):=270)||1

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21000, PS]
type = bindtoparent
trigger1 = 1;time = 0
pos = floor(var(11)*cos((var(1)+time*6.0)*pi/180.0)),0

[State 24100, AD]
type = angledraw
trigger1 = 1
scale = 0.05,2.0
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = -1
mul = 256,0,0
invertall = 0
color = 256
ignorehitpause = 1
;persistent = 


[State 24100, T]
type = trans
trigger1 = 1
trans = addalpha
alpha= 256,256
ignorehitpause = 1

[State 24100, Activate]
type = destroyself
triggerall = time > 9
;trigger1 = !((root,command = "holdx" && root,command = "holdy" && root,command = "holdz")||(root,command="holdc"))
;trigger2 = var(11)<=0
trigger1 = parent,stateno != 24100

[State 24100, VA]
type = varadd
trigger1 = time > 9
var(11)=-1