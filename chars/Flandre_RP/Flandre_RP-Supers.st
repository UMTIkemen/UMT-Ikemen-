
;---------------------------------------------------------------------------
; Taboo "Laevatein"
[Statedef 2000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1000+1*(var(10)=2)
ctrl = 0
sprpriority = 1
facep2=1

[State 200, SuperCancel Damage Dampen]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10) = fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time <= 40
value = SCA,AA,AP,AT
time = 1;40
ignorehitpause = 1

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

[State 1000, STS]
type = statetypeset
trigger1 = animelemtime(3)=0
statetype = A
physics = N

[State 0, PlayerPush]
type = PlayerPush
trigger1 = animelemtime(3)>=0
value = 0
ignorehitpause = 1

[State 2000, PSND]
type = playsnd
trigger1 = time = 0
value = 2000,0
channel = 0

[State 2000, SP]
type = SndPan
trigger1 = 1
channel = 0
pan = 0

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1000,10

[State 1000, VS]
type = velset
trigger1 = animelemtime(3)=0
trigger1 = var(10)<=1
x = -15;-(backedgedist/7.0)
y = -16

[State 1000, VS]
type = velset
trigger1 = animelemtime(3)=0
trigger1 = var(10)>=2
x = 15;(frontedgedist/7.0)
y = -16

[State 1000, VA]
type = veladd
trigger1 = animelemtime(3)>0
trigger1 = vel y < 0
y = 0.5

[State 1000, VS]
type = velset
trigger1 = animelemtime(3)>0
trigger1 = vel y < 0
trigger1 = pos y <= -160
y = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1
;persistent = 


[State 1000, CS]
type = ChangeState
triggerall = animelemtime(7)>0
trigger1 = anim = 1000
trigger1 = backedgedist<20
trigger2 = anim = 1001
trigger2 = frontedgedist<20
value = 2001

;---------------------------------------------------------------------------
; Taboo "Laevatein"
[Statedef 2001]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 2000+0*(var(6):=0)
ctrl = 0
sprpriority = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AP
time = 1
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = animelemtime(3)<=0
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 1001, VS]
type = velset
trigger1 = animelemtime(3)>0
x = 20;15;2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = animelemtime(3)>=0
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 1001, T]
type = turn
trigger1 = time = 0
trigger1 = var(10)>=2

[State 1001, NULL]
type = posset
trigger1 = animelemtime(2)<0
x = -floor(gamewidth/2.0)*facing

[State 2001, PSND]
type = playsnd
trigger1 = time = 0
value = 2000,10

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Sword"
id = 22000
stateno = 22000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40
size.xscale=0.75
size.yscale=0.75

[State 2001, PSND]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 2000,11

[State 200, 1]
type = HitDef
trigger1 = movecontact=0 && movereversed=0;var(6)<10
trigger1 = animelemtime(3)>=0
;persistent = 4
attr = A, HA                     ;Attribute: Standing, Normal Attack
;damage = 10, 3                   ;Damage that move inflicts, guard damage
damage = ceil(270.0*fvar(11)*ifelse(var(42),1.25,1.0)),54                   ;Damage that move inflicts, guard damage
animtype = Hard                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAFD                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -10, -50+floor(p2dist y)
hitsound = s1,10                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 26+3*((var(42)=1))
ground.hittime  = 26+3*((var(42)=1))
air.hittime = 26+3*((var(42)=1))
ground.velocity = -12,-1             ;Velocity at which opponent is pushed
airguard.velocity = -12,-1     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -12,-1
Ground.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Down.CornerPush.VelOff = 0
getpower = 0,0
givepower = 300,300
y.accel = 0.5
p2facing = 1
fall = 1
fall.recover = 0
id = 2000
palfx.time = 20
palfx.add = 96,-84,-216
palfx.sinadd = 48,20,16,10
palfx.invertall = 1
palfx.color = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 =p2statetype= A && movehit && (p2stateno!=[6020,6110])
value =6020
ID =2000
ignorehitpause =1

[State 21220, PVS]
type = varset
trigger1 = movehit=1
trigger1 = (var(6):=var(6)+1)||1
fvar(10) = fvar(10)*0.46;925


[State 1001, CS]
type = changestate
trigger1 = animelemtime(3)>0
trigger1 = frontedgedist < 20
value = 2002


;---------------------------------------------------------------------------
; Laevatein
[Statedef 2002]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1006
ctrl = 0
facep2 = 1
sprpriority = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 1002, VA]
type = veladd
trigger1 = time
y = 0.5

[State 1002, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2003

;---------------------------------------------------------------------------
; Laevatein
[Statedef 2003]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1007
ctrl = 0
sprpriority = 1
facep2 = 1

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
; Laevatein Sword
[Statedef 22000]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 22000
sprpriority = -5

[State 22000, VA]
type = varadd
trigger1 = time
trigger1 = var(0)<16
var(0)=1

[State 22000, Scale]
type = angledraw
trigger1 = 1
value = -100
scale = 1.0,var(0)/16.0
ignorehitpause = 1

[State 22000, BTR]
type = bindtoroot
trigger1 = 1
pos = 8,-13
ignorehitpause = 1

[State 22000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22000, ALPH]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 22000, Flame FX]
type = Explod
trigger1 = root,animelemtime(2)>0
trigger1 = var(0)>=16
persistent = 3
anim = 22001+(random%2)
ID = 22001
pos = -8,50
postype = p1
Accel = -0.025*(random%9),-0.05625*(random%9)
;bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 0

[State 22000, Flame FX]
type = Explod
trigger1 = root,animelemtime(2)>0
trigger1 = var(0)>=16
persistent = 3
anim = 22001+(random%2)
ID = 22001
pos = -17,100
postype = p1
Accel = -0.025*(random%9),-0.05625*(random%9)
;bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 0

[State 22000, Flame FX]
type = Explod
trigger1 = root,animelemtime(2)>0
trigger1 = var(0)>=16
persistent = 3
anim = 22001+(random%2)
ID = 22001
pos = -26,150
postype = p1
Accel = -0.025*(random%9),-0.05625*(random%9)
;bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 0

[State 22000, CS]
type = changestate
trigger1 = root,stateno != 2001
value = 22001

;---------------------------------------------------------------------------
; Laevatein Sword
[Statedef 22001]
type    = A
movetype= I
physics = N
velset = 0,0
sprpriority = -5

[State 22000, VA]
type = varadd
trigger1 = time
trigger1 = var(0)>0
var(0)=-1

[State 22000, Scale]
type = angledraw
trigger1 = time
value = -100
scale = 1.0,var(0)/16.0
ignorehitpause = 1

[State 22000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22000, ALPH]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 22000, CS]
type = destroyself
trigger1 = var(0)<=0

;---------------------------------------------------------------------------
; Taboo "Four of a Kind"
[Statedef 2100]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 2100
ctrl = 0
sprpriority = 1
facep2=1

[State 200, SuperCancel Damage Dampen]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10) = fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 2100, PSND]
type = playsnd
trigger1 = time = 0
value = 2100,0
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

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 40
ignorehitpause = 1

[State 1000, STS]
type = statetypeset
trigger1 = animelemtime(6)=0
statetype = S
physics = N

[State 1000, VS]
type = velset
trigger1 = animelemtime(6)=0
x = 12

[State 1000, VM]
type = velmul
trigger1 = vel x
trigger1 = animelemtime(9)>=0
x = 0.82

[State 1000, VS]
type = velset
trigger1 = animelemtime(9)>0
trigger1 = vel x < 1
x = 0

[State 2100, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 0,1

[State 200, 1]
type = HitDef
trigger1 = movecontact=0 && movereversed=0
trigger1 = animelemtime(6)>=0
trigger1 = animelemtime(9)<0
attr = S, HA                     ;Attribute: Standing, Normal Attack
;damage = 10, 3                   ;Damage that move inflicts, guard damage
damage = ceil(18.0*fvar(11)*ifelse(var(42),1.25,1.0)),52                   ;Damage that move inflicts, guard damage
animtype = Hard                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 0, 10                 ;Time attacker pauses, time opponent shakes
guard.pausetime = 10,10
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -10, -50
hitsound = s1,2                 ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 26+3*((var(42)=1))
ground.hittime  = 26+3*((var(42)=1))
air.hittime = 26+3*((var(42)=1))
ground.velocity = -1,-5             ;Velocity at which opponent is pushed
airguard.velocity = -1,-10     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1,-5
Ground.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Down.CornerPush.VelOff = 0
getpower = 0,0
givepower = 6,300
y.accel = 0.5
p2facing = 1
fall = 1
fall.recover = 0
id = 2100

[State 21220, PVS]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.925
persistent=0
ignorehitpause = 1

[State 2100, CS]
type = changestate
trigger1 = movehit
trigger1 = numtarget(2100)
value = 2101

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(9) = 0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 1000, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Taboo "Four of a Kind"
[Statedef 2101]
type    = S
movetype= A
physics = S
anim = 2101
ctrl = 0
sprpriority = 1

[State 2101, TS]
type = targetstate
trigger1 = time = 0
id = 2100
value = 2150

[State 2101, VS]
type = varset
trigger1 = time = 0
var(10) = target(2100),id

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 1000, VM]
type = velmul
trigger1 = vel x
x = 0.82

[State 1000, VS]
type = velset
trigger1 = vel x < 1
x = 0

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Clone1"
ID = 22100
pos = -50,-70
postype = p1
stateno = 22100
ownpal = 1
facing = 1

[State 4000, Effect]
type = helper
trigger1 = time = 20
helpertype = normal
name = "Clone2"
ID = 22101
pos = 70,-120
postype = p1
stateno = 22100
ownpal = 1
facing = -1

[State 4000, Effect]
type = helper
trigger1 = time = 40
helpertype = normal
name = "Clone3"
ID = 22102
pos = -50,-170
postype = p1
stateno = 22100
ownpal = 1
facing = 1

[State 2101, TLA]
type = targetlifeadd
trigger1 = time >= 20
trigger1 = time < 40
persistent = 6
value = ceil(-10*fvar(11))

[State 2101, TLA]
type = targetlifeadd
trigger1 = time >= 40
trigger1 = time < 60
persistent = 4
value = ceil(-10*fvar(11))

[State 2101, TLA]
type = targetlifeadd
trigger1 = time >= 60
trigger1 = time < 140
persistent = 2
value = ceil(-10*fvar(11))

[State 2101, TLA]
type = targetpoweradd
trigger1 = time >= 20
trigger1 = time < 40
persistent = 6
value = 6

[State 2101, TLA]
type = targetpoweradd
trigger1 = time >= 40
trigger1 = time < 60
persistent = 4
value = 6

[State 2101, TLA]
type = targetpoweradd
trigger1 = time >= 60
trigger1 = time < 140
persistent = 2
value = 6

[State 2101, TLA]
type = hitadd
trigger1 = time >= 20
trigger1 = time < 40
persistent = 6
value = 1
[State 2101, TLA]
type = hitadd
trigger1 = time >= 40
trigger1 = time < 60
persistent = 4
value = 1
[State 2101, TLA]
type = hitadd
trigger1 = time >= 60
trigger1 = time < 140
persistent = 2
value = 1

[State 2101, TLA]
type = varset
trigger1 = time >= 20
trigger1 = time < 140
persistent = 5
fvar(10)=fvar(10)*0.96

[State 22110, PSND]
type = playsnd
trigger1 = time >= 20
trigger1 = time < 40
persistent = 6
value = 1,2
channel = 5
[State 22110, PSND]
type = playsnd
trigger1 = time >= 40
trigger1 = time < 60
persistent = 4
value = 1,2
channel = 5
[State 22110, PSND]
type = playsnd
trigger1 = time >= 60
trigger1 = time < 140
persistent = 2
value = 1,2
channel = 5

[State sas]
type = Explod
trigger1 = time >= 20
trigger1 = time < 40
persistent=6
anim = 8000+(random%2)
ID = 8000
pos = 10-floor(21.0*random/1000.0),-50-floor(21.0*random/1000.0)
postype = p2
bindtime = -1
removetime = -2
;scale = 2.3,2.0
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause=1
[State sas]
type = Explod
trigger1 = time >= 40
trigger1 = time < 60
persistent=4
anim = 8000+(random%2)
ID = 8000
pos = 10-floor(21.0*random/1000.0),-50-floor(21.0*random/1000.0)
postype = p2
bindtime = -1
removetime = -2
;scale = 2.3,2.0
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause=1
[State sas]
type = Explod
trigger1 = time >= 60
trigger1 = time < 140
persistent=2
anim = 8000+(random%2)
ID = 8000
pos = 10-floor(21.0*random/1000.0),-50-floor(21.0*random/1000.0)
postype = p2
bindtime = -1
removetime = -2
;scale = 2.3,2.0
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause=1

[State 2101, TS]
type = targetstate
trigger1 = animelemtime(2) = 10
id = 2100
value = 6020

[State 2101, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; FoaK Clone Summon
[Statedef 22100]
type    = A
movetype= A
physics = N
anim = 22100
ctrl = 0
sprpriority = 1

[State 22100, VS]
type = varset
trigger1 = time = 0
var(11) = 1*ishelper(22100)+2*ishelper(22101)+3*ishelper(22102)

[State 22100, PSND]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 2100,1*ishelper(22100)+2*ishelper(22101)+3*ishelper(22102)
channel = 0

[State 22100, PSND]
type = playsnd
trigger1 = time = 0
value = 2100,10

[State 2100, Alpha]
type = trans
trigger1 = time<16
trans = addalpha
alpha = floor(256.0*time/16.0),256-floor(256.0*time/16.0)
ignorehitpause = 1

[State 22100, AD]
type = angledraw
trigger1 = time<16
scale = time/16.0,2.0-(time/16.0)
ignorehitpause = 1

[State 22100, CS]
type = changestate
trigger1 = animtime=0
value = 22101

;---------------------------------------------------------------------------
; FoaK Clone Attack
[Statedef 22101]
type    = A
movetype= A
physics = N
ctrl = 0
sprpriority = 1

[State 22110, PSND]
type = playsnd
trigger1 = time = 0
value = 2100,11

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Laser"
ID = 22110
pos = 22,-48
postype = p1
stateno = 22110
ownpal = 1
facing = 1

[State 21100, CS]
type = changestate
trigger1 = root,stateno = 2101
trigger1 = root,animelemtime(2)>=0
value = 22102

;---------------------------------------------------------------------------
; FoaK Clone Attack
[Statedef 22102]
type    = A
movetype= I
physics = N
ctrl = 0
sprpriority = 1

[State 2100, Alpha]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/16.0),floor(256.0*time/16.0)
ignorehitpause = 1

[State 22100, AD]
type = angledraw
trigger1 = 1
scale = 1.0-(time/16.0),1.0+(time/16.0)
ignorehitpause = 1

[State 22102, Zeeky]
type = destroyself
trigger1 = time>=16

;---------------------------------------------------------------------------
; FoaK Clone Laser
[Statedef 22110]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 22110
sprpriority = 5

[State 22110, VS]
type = varset
trigger1 = time = 0
trigger1 = (var(1):=parent,var(11))||1
var(0) = root,var(10)

[State 22110, MVS]
type = varset
trigger1 = time = 0
var(2) = ifelse(var(1)=1,45,ifelse(var(1)=3,-45,0))


[State 22110, AD]
type = angledraw
trigger1 = 1
scale = 3.0,1.0
value = var(2)
ignorehitpause = 1

[State 22110, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 22110, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 21100, CS]
type = changestate
trigger1 = root,stateno = 2101
trigger1 = root,animelemtime(2)>=0
value = 22111

;---------------------------------------------------------------------------
; FoaK Clone Laser
[Statedef 22111]
type    = A
movetype= I
physics = N
ctrl = 0
sprpriority = 5

[State 22110, AD]
type = angledraw
trigger1 = time
scale = 3.0,1.0-(1.0*time/16.0)
value = var(2)
ignorehitpause = 1

[State 22110, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 22110, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 22111, Zeeky]
type = destroyself
trigger1 = time>=16

;---------------------------------------------------------------------------
; FoaK custom hit
[Statedef 2150]
type = A
movetype = H
physics = N
velset = -1,-10
sprpriority = 0
ctrl = 0

[State 2150, CA2]
type = changeanim2
trigger1 = time = 0
value = 2150

[State 2150, VA]
type = veladd
trigger1 = time
trigger1 = vel y < 0
y = 0.5

[State 2150, VM]
type = velmul
trigger1 = 1
x = 0.85


;---------------------------------------------------------------------------
; Taboo "WMD"
[Statedef 4000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 4000
ctrl = 0
sprpriority = 1
facep2=1

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 64
ignorehitpause = 1

[State 200, SuperCancel Damage Dampen]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10) = fvar(10)*0.925
ignorehitpause = 1
persistent = 0

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
pausemovetime = 64
supermovetime = 64

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
pausemovetime = 64
supermovetime = 64

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 64
anim = -1
sound = S4,2
p2defmul = 1
poweradd = -3000
unhittable = 1
movetime = 64
darken = 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
name = "WMD"
id = 24000
stateno = 24000
pos = 25,-46
postype = p1
ownpal = 1
facing = 1
pausemovetime = 64
supermovetime = 64

[State 4000, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 4000,0
channel = 0

[State 4000, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 4000,10

[State 4000, PSND]
type = playsnd
trigger1 = animelemtime(21)=0
value = 4000,1
channel = 0

[State 4000, PSND]
type = playsnd
trigger1 = animelemtime(21)=0
value = 4000,11

[State 4000, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; WMD Projectile
[Statedef 24000]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 24000
sprpriority = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause = 1
;persistent = 

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,AA,AP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 24002
time = -1
ignorehitpause = 1
;persistent = 

[State 200, EX]
type = Explod
trigger1 = time=0
trigger1 = numexplod(24010)=0
anim = 24010
ID = 24010
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause=1

[State 24000, VA]
type = varadd
trigger1 = var(0)<32
var(0)=1

[State 24000, MEX]
type = modifyexplod
trigger1 = 1
id = 24010
scale = (var(0)/32.0)*ifelse(time%4=1||time%4=3,1.0,ifelse(time%4=0,0.9,1.1)),(var(0)/32.0)*ifelse(time%4=1||time%4=3,1.0,ifelse(time%4=0,0.9,1.1))

[State 24000, AD]
type = angledraw
trigger1 = 1
scale = (var(0)/32.0),(var(0)/32.0)
ignorehitpause = 1

[State 24000, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, CS]
type = changestate
trigger1 = root,stateno = 4000
trigger1 = root,animelemtime(21)>=0
value = 24001

[State 24000, CS]
type = changestate
trigger1 = root,stateno != 4000
trigger2 = root,movetype = H
trigger3 = root,alive = 0
value = 24004

;---------------------------------------------------------------------------
; WMD Projectile
[Statedef 24001]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = ,AA,AT
time = -1
ignorehitpause = 1

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 200, EX]
type = Explod
trigger1 = numexplod(24010)=0
anim = 24010
ID = 24010
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause=1

[State 24000, MEX]
type = modifyexplod
trigger1 = 1
id = 24010
scale = (var(0)/32.0)*ifelse(time%4=1||time%4=3,1.0,ifelse(time%4=0,0.9,1.1)),(var(0)/32.0)*ifelse(time%4=1||time%4=3,1.0,ifelse(time%4=0,0.9,1.1))

[State 24000, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 24000, CS]
type = velset
trigger1 = 1
x = 2.0;1.5

[State 4012, HitDef]
Type = HitDef
Trigger1 = MoveContact = 0 && movereversed = 0
;trigger1 = prevstateno != 24005
Attr = A, HP
HitFlag = MAF;P
GuardFlag = MA
AnimType = Hard
Air.AnimType = Back
Priority = 7, Hit
Damage = 45,7;13
GetPower = 0, 0
GivePower = 60, 60
hitsound = -1;s1,10
guardsound = -1;s2,0
sparkno = s8020+(random%2)
guard.sparkno = s8030
sparkxy = -10,0
PauseTime = 0, 10
Ground.Type = High
Ground.SlideTime = 40
Ground.HitTime = 40
air.hittime = 40
Guard.slideTime = 22
Guard.hitTime = 22
Guard.Dist = 50
Ground.Velocity = -8, -9
Guard.Velocity = -6
Air.Velocity = -8,-9
AirGuard.Velocity = -3,-4
y.accel = 0.5
Fall = 1
Fall.Recover = 0
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0
id = 4000

[State #, Hard Knockdown]
type = TargetState
trigger1 =p2statetype= A && movehit && (p2stateno!=[6020,6110])
value =6020
ID = 4000
ignorehitpause =1

[State 24001, PVS]
type = parentvarset
trigger1 = movehit
fvar(10)=(root,fvar(10))*0.9
ignorehitpause = 1
persistent = 0

[State 24000, CS]
type = changestate
trigger1 = movecontact
value = 24002
ignorehitpause = 1

[State 24000, REX]
type = removeexplod
trigger1 = frontedgedist < -100
id = 24010

[State 24000, CS]
type = changestate
trigger1 = frontedgedist < -100
value = 999

;---------------------------------------------------------------------------
; WMD Explosion
[Statedef 24002]
type    = A
movetype= I
physics = N
velset = 0,0
sprpriority = 5
movehitpersist=1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 24
freq = 60
ampl = -4
;phase = 90
;ignorehitpause = 
;persistent = 

[State 24000, CS]
type = velset
trigger1 = 1
x = 2.0;1.5

[State 2400, CA]
type = changeanim
trigger1 = time = 16
value = 1998

[State 24002, PSND]
type = playsnd
trigger1 = time = 0
value = 4000,12
channel = 3

[State 24002, PSND]
type = playsnd
trigger1 = time = 0
value = 4000,13
channel = 4

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,AA,AT
time = -1
ignorehitpause = 1

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 200, EX]
type = Explod
trigger1 = time = 0
trigger1 = numexplod(24010)=0
anim = 24010
ID = 24010
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause=1

[State 24000, MEX]
type = modifyexplod
trigger1 = 1
id = 24010
scale = 1.0+0.5*time,1.0+0.5*time
trans = addalpha
alpha = 256-floor(256.0*time/16.0),256

[State 24000, REX]
type = removeexplod
trigger1 = time = 16
id = 24010

[State 24000, T]
type = trans
trigger1 = time<16
trans = addalpha
alpha = 256-floor(256.0*time/16.0),256
ignorehitpause = 1

[State 24000, AD]
type = angledraw
trigger1 = time<16
scale = 1.0+0.5*time,1.0+0.5*time
ignorehitpause = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = time>=4
trigger1 = time<40
persistent = 4
helpertype = normal
name = "WMD"
id = 24003
stateno = 24003
pos = floor(161.0*random/1000.0)-80,floor(161.0*random/1000.0)-80
postype = p1
ownpal = 0
facing = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = time>=4
trigger1 = time<40
persistent = 4
helpertype = normal
name = "WMD"
id = 24003
stateno = 24003
pos = floor(241.0*random/1000.0)-120,floor(241.0*random/1000.0)-120
postype = p1
ownpal = 0
facing = 1

[State 1000, 5]
type = Projectile
trigger1 = time>=4
trigger1 = time<40
persistent = 4
attr = A, HP
projanim = 24001
projid = 24001
projremove = 1
projremovetime = 3
projscale = 1.0,1.0
projpriority = 9999
velocity = 0
offset = 0,0;floor(p2dist x),floor(p2dist y)
animtype  = Hard
damage = 49,10;45,13
;damage    = 60-30*(var(10)=3),12
priority  = 7,Hit
hitflag = MAFP
guardflag = MA
pausetime = 0,4;3
sparkxy = 0,floor(p2dist y)-50
sparkno = s8010+(random%2)
guard.sparkno = s8030
hitsound   = -1;s1,8
guardsound = -1;s2,0
ground.type = High
ground.slidetime = 29
ground.hittime  = 29
guard.slidetime = 11
ground.slidetime = 11
ground.velocity = -12.5,-5.5
guard.velocity = -12
air.velocity = -12.5, -5.5
airguard.velocity = -12.5, -5.5
fall = 1
fall.recover=0;time = 30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 20,20
ownpal = 1
id = 22000
guard.dist = 320
p2facing = 1

[State 2400, CA]
type = changeanim
trigger1 = time = 16
value = 1998

[State 24000, CS]
type = changestate
trigger1 = time>=40
value = 999

;---------------------------------------------------------------------------
; WMD Explosion
[Statedef 24003]
type    = A
movetype= I
physics = N
velset = 0,0
sprpriority = 5
anim = 24010

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/16.0),256
ignorehitpause = 1

[State 24000, AD]
type = angledraw
trigger1 = 1
scale = 1.0+0.5*time,1.0+0.5*time
ignorehitpause = 1

[State 24000, CS]
type = destroyself
trigger1 = time>=16

;---------------------------------------------------------------------------
; WMD Projectile Destroy
[Statedef 24004]
type    = A
movetype= I
physics = N
velset = 0,0
sprpriority = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 24000, MEX]
type = modifyexplod
trigger1 = 1
id = 24010
scale = (var(0)/32.0)*ifelse(time%4=1||time%4=3,1.0,ifelse(time%4=0,0.9,1.1)),(var(0)/32.0)*ifelse(time%4=1||time%4=3,1.0,ifelse(time%4=0,0.9,1.1))
trans = addalpha
alpha = 256-floor(256.0*time/16.0),256

[State 24000, AD]
type = angledraw
trigger1 = 1
scale = (var(0)/32.0),(var(0)/32.0)
ignorehitpause = 1

[State 24000, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/16.0),256
ignorehitpause = 1

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, REX]
type = removeexplod
trigger1 = time>=16
id = 24010

[State 24000, Zeeky]
type = destroyself
trigger1 = time >=16

;---------------------------------------------------------------------------
; Secret Barrage "And Then Will There Be None?"
[Statedef 4100]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 4100
ctrl = 0
sprpriority = 1
facep2=1

[State 200, SuperCancel Damage Dampen]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10) = fvar(10)*0.925
ignorehitpause = 1
persistent = 0

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

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 40
ignorehitpause = 1

[State 4100, PSND]
type = playsnd
trigger1 = time = 0
value = 4100,0
channel = 0

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 1000,10

[State 4100, NHB]
type = nothitby
trigger1 = animelemtime(5)>=0
trigger1 = animelemtime(8)<0
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = animelemtime(5)>=0
trigger1 = animelemtime(8)<0
value = 0
ignorehitpause = 1
;persistent = 


[State 4100, VS]
type = velset
trigger1 = animelemtime(5)>=0
trigger1 = animelemtime(10)<0
x = 7

[State 200, 1]
type = HitDef
trigger1 = movecontact=0 && movereversed=0
trigger1 = animelemtime(5)>=0
trigger1 = animelemtime(7)<0
attr = S,HA                     ;Attribute: Standing, Normal Attack
;damage = 10, 3                   ;Damage that move inflicts, guard damage
damage = 40,200;27, 3                   ;Damage that move inflicts, guard damage
animtype = Hard                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
kill = 0
priority = 4, Hit
pausetime = 0,10                 ;Time attacker pauses, time opponent shakes
guard.pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10, -50
hitsound = s1,2                 ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 26+3*((var(42)=1))
ground.hittime  = 26+3*((var(42)=1))
air.hittime = 26+3*((var(42)=1))
ground.velocity = -1,-10             ;Velocity at which opponent is pushed
airguard.velocity = -1,-10     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1,-10
Ground.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Down.CornerPush.VelOff = 0
getpower = 0,0
givepower = 25,25
p1stateno=4101
y.accel = 0.5
p2facing = 1
numhits=0
fall = 1
fall.recover = 0
id = 4100

[State 21220, PVS]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.90
persistent=0
ignorehitpause = 1

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(7) = 0
movetype = I
persistent = 0
ignorehitpause = 1

[State 4000, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Secret Barrage "And Then Will There Be None?"
[Statedef 4101]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1998
ctrl = 0
sprpriority = 1
facep2=1
movehitpersist=1

[State 2000, Spellcard Effect]
type = helper
trigger1 = movehit
trigger1 = numtarget(4100)
trigger1 = target(4100),ishelper = 0
helpertype = normal
name = "Jukebox"
id = 24300
stateno = 24300
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
persistent = 0

[State 1220, TS]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(4100)
trigger1 = target(4100),ishelper = 0
persistent = 0
value = 4150

[State 1220, TS]
type = targetbind
trigger1 = movehit
trigger1 = numtarget(4100)
trigger1 = target(4100),ishelper = 0
persistent = 0
pos = -10,0

[State 4110, SB]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0,0

[State 4110, PS]
type = posset
trigger1 = time = 0
x = (target(4100),pos x) + 50*facing
y = 0

[State 4110, ASS]
type = assertspecial
trigger1 = 1
flag = nofg
flag2 = nobg
ignorehitpause = 1

[State 4110, ASS]
type = assertspecial
trigger1 = 1
flag = nobardisplay
flag2 = timerfreeze
ignorehitpause = 1


[State 4110, PSND]
type = playsnd
trigger1 = time = 0
trigger2 = time = 60 || time = 90 || time = 120 || time = 150
trigger3 = time = 160 || time = 175 || time = 190 || time = 205 || time = 220 || time = 235
trigger4 = time = 245 || time = 255 || time = 265 || time = 275
trigger5 = time = 285 || time = 290 || time = 295 || time = 300
trigger6 = time >= 305
trigger6 = (time-5)%2 = 0
trigger6 = time <= 385
trigger7 = anim = 4110 && ((AnimElem=4)||(AnimElem=9)||(AnimElem=14))
value = 1,6
abspan = 0
channel = 1

[State 4110, PSND]
type = hitadd
trigger1 = time = 0
trigger2 = time = 60 || time = 90 || time = 120 || time = 150
trigger3 = time = 160 || time = 175 || time = 190 || time = 205 || time = 220 || time = 235
trigger4 = time = 245 || time = 255 || time = 265 || time = 275
trigger5 = time = 285 || time = 290 || time = 295 || time = 300
trigger6 = time >= 305
trigger6 = (time-5)%2 = 0
trigger6 = time <= 385
trigger7 = anim = 4110 && ((AnimElem=4)||(AnimElem=9)||(AnimElem=14))
value = 1+((time>=305)*(time <= 385))

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 60 || time = 90 || time = 120 || time = 150
trigger2 = time = 160 || time = 175 || time = 190 || time = 205 || time = 220 || time = 235
trigger3 = time = 245 || time = 255 || time = 265 || time = 275
trigger4 = time = 285 || time = 290 || time = 295 || time = 300
trigger5 = time >= 305
trigger5 = (time-5)%2 = 0
trigger5 = time <= 385
helpertype = normal
name = "Slash"
id = 4111
stateno = 4111
pos = -15+(random%31),(target(4100),const(size.mid.pos.y))-15+(random%31)
postype = p2
ownpal = 1
facing = 1-2*(random%2=0)
pausemovetime = 40
supermovetime = 40
size.xscale = 2.0
size.yscale = 2.0

[State 2000, Explod]
type = null;Explod
trigger1 = time = 60 || time = 90 || time = 120 || time = 150
trigger2 = time = 160 || time = 175 || time = 190 || time = 205 || time = 220 || time = 235
trigger3 = time = 245 || time = 255 || time = 265 || time = 275
trigger4 = time = 285 || time = 290 || time = 295 || time = 300
trigger5 = time >= 305
trigger5 = (time-5)%2 = 0
trigger5 = time <= 385
anim = 4125
id = 4125
pos = 0,(target(4100),const(size.mid.pos.y))-15+(random%31)
postype = p2
scale = 1.0,1.0
sprpriority = 6
ownpal = 1
supermovetime = 999999
removetime = 22

[State 4110, ASS]
type = assertspecial
trigger1 = anim = 4110
trigger1 = (gametime%3=[1,2])
flag = invisible

[State 4110, CA]
type = changeanim
trigger1 = time = 386
value = 4110

[State 210, FX]
Type = Explod
triggerall = anim = 4110
Trigger1 = AnimElem = 3
Trigger2 = AnimElem = 8
Trigger3 = AnimElem = 13
Anim = 24110
ID = 24110
Pos = 20,-51
PosType = P1
Scale = 2.3,2.0
Ownpal = 1
SprPriority = 10
RemoveOnGetHit = 1

[State 210, FX]
Type = Explod
triggerall = anim = 4110
Trigger1 = AnimElem = 4
Trigger2 = AnimElem = 9
Trigger3 = AnimElem = 14
Anim = 8005+(random%2)
Pos = 0,-51
PosType = P2
Scale = 0.5,0.5
;Ownpal = 1
SprPriority = 10
RemoveOnGetHit = 1

[State 200, PSND]
Type = PlaySnd
triggerall = anim = 4110
Trigger1 = AnimElem = 4
Trigger2 = AnimElem = 9
Trigger3 = AnimElem = 14
Value = 1,11

[State 4110, PS]
type = posset
trigger1 = anim = 4110
trigger1 = animelem = 6
x = (target(4100),pos x) + 50*facing;120

[State 4110, PS]
type = posset
trigger1 = anim = 4110
trigger1 = animelem = 11
x = (target(4100),pos x) + 50*facing;120
y = -90

[State 4110, T]
type = turn
triggerall = anim = 4110
trigger1 = animelem = 1
trigger2 = animelem = 6
trigger3 = animelem = 11

[State 4110, TF]
type = TargetFacing
triggerall = anim = 4110
Trigger1 = AnimElem = 4
Trigger2 = AnimElem = 9
Trigger3 = AnimElem = 14
value = -1
ID = 4100

[State 4110, TS]
type = targetstate
triggerall = anim = 4110
Trigger1 = AnimElem = 14
id = 4100
value = 4151

[State 4110, CS]
type = changestate
trigger1 = numtarget(4100)
trigger1 = target(4100),stateno = 4152
value = 4102

;----------------------------
; ATWTBN success - Part 2
[Statedef 4102]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 1998

[State 4112, PS]
type = posset
trigger1 = time = 0
y = 0

[State 4110, SB]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0,0

[State 4110, ASS]
type = assertspecial
trigger1 = 1
flag = nofg
flag2 = nobg
ignorehitpause = 1

[State 4110, ASS]
type = assertspecial
trigger1 = 1
flag = nobardisplay
flag2 = timerfreeze
ignorehitpause = 1

[State 4110, PSND]
type = playsnd
trigger1 = 1;(time-5)%2 = 0
trigger1 = time <= 138
value = 1,6
abspan = 0
channel = 1

[State 4110, PSND]
type = hitadd
trigger1 = 1;(time-5)%2 = 0
trigger1 = time <= 138
value = 3-(2*time%5=0)

[State 2000, Spellcard Effect]
type = helper
trigger1 = 1;(time-5)%2 = 0
trigger1 = time <= 138
helpertype = normal
name = "Slash"
id = 4111
stateno = 4111
pos = -15+(random%31),(target(4100),const(size.mid.pos.y))-15+(random%31)
postype = p2
ownpal = 1
facing = 1-2*(random%2=0)
pausemovetime = 40
supermovetime = 40
size.xscale = 2.0
size.yscale = 2.0

[State 4112, PS]
type = posset
trigger1 = time = 139
x = -40
y = target(4100),pos y

[State 4110, CS]
type = changestate
trigger1 = time = 139
value = 4103

;----------------------------
; ATWTBN success - Part 3
[Statedef 4103]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 4111
facep2 = 1

[State 4112, PS]
type = posset
trigger1 = time = 0
y = target(4100),pos y

[State 4110, SB]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0,0

[State 4110, ASS]
type = assertspecial
trigger1 = animelem = 8, < 0
flag = nofg
flag2 = nobg
ignorehitpause = 1

[State 4110, ASS]
type = assertspecial
trigger1 = animelem = 8, < 0
flag = nobardisplay
flag2 = timerfreeze
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nokoslow

[State 4110, PSND]
type = playsnd
trigger1 = time = 0
value = 1,3
abspan = 0
channel = 1

[State 2000, Explod]
type = Explod
trigger1 = time = 0
anim = 8010+(random%2)
id = 8000
pos = 44,-47
postype = p1
scale = 1.0,1.0
sprpriority = 8
ownpal = 1
facing = 1

;[State 2000, Explod]
;type = Explod
;trigger1 = time = 0
;anim = 4124
;id = 4125
;pos = 44,-47
;postype = p1
;scale = 2.3,1.0
;sprpriority = 6
;ownpal = 1
;facing = -1
;supermovetime = 999999
;removetime = 22

[State 4110, TF]
type = TargetFacing
trigger1 = time = 0
value = -1
ID = 4100

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 30
freq = 60
ampl = -10
phase = 90

[State 4110, PSND]
type = hitadd
trigger1 = time = 0
value = 1

[State 4110, PSND]
type = playsnd
trigger1 = time = 30
value = 4100,10
abspan = 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 30
helpertype = normal
name = "Eye"
id = 4112
stateno = 4120
pos = 0,(target(4100),const(size.mid.pos.y))
postype = p2
ownpal = 1
facing = facing
pausemovetime = 40
supermovetime = 40
size.xscale = 0.2
size.yscale = 0.2

[State 4110, PSND]
type = null;playsnd
trigger1 = animelem = 5,=10
value = s1200,0
channel = 0

[State 4110, PSND]
type = playsnd
trigger1 = animelem = 7, = 1
value = s10,33
abspan = 0

[State 4110, PSND]
type = playsnd
trigger1 = animelem = 7, = 1
value = s10,33
abspan = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 8
time = 15
freq = 60
ampl = 30
phase = 100

[State 4110, PSND]
type = null;playsnd
trigger1 = animelem = 8
value = 4100,4
abspan = 0
[State 4110, PSND]
type = null;playsnd
trigger1 = animelem = 8
value = 4100,4
abspan = 0

;[State 2000, Explod]
;type = Explod
;trigger1 = animelem = 8
;anim = 4126
;id = 4126
;pos = 40,(target(4100),const(size.mid.pos.y))
;postype = p1;p2
;scale = 3.0,3.0
;sprpriority = 6
;ownpal = 1
;supermovetime = 999999
;removetime = 14

[State 4103, AllPalFX]
type = AllPalFX
trigger1 = time = [119,149]
time = 2
add = 256-floor(256.0*(time-119)/30.0),-256+floor(256.0*(time-119)/30.0),-256+floor(256.0*(time-119)/30.0)
;mul = 256,0,0
ignorehitpause = 1

[State 4103, EnvColor]
type = EnvColor
trigger1 = time = 120
value = 255,0,0
time = 5
under = 1
ignorehitpause = 1

[State 4103, PSND]
type = playsnd
trigger1 = animelem = 8
value = 195,1
channel = 0

[State 4110, PSND]
type = playsnd
trigger1 = animelem = 8
value = s1,8
abspan = 0
[State 4110, PSND]
type = playsnd
trigger1 = animelem = 8
value = s1,8
abspan = 0

[State 4110, PSND]
type = hitadd
trigger1 = animelem = 8
persistent = 0
value = 1

[State 4110, TLS]
type = targetlifeadd
trigger1 = animelem = 8
trigger1 = !((enemynear(0),name = "Mokou_RP") || (enemynear(0),name = "Mokou Fujiwara") || (enemynear(0),name = "Kaguya Houraisan"))
trigger1 = enemynear,name!="Kaguya Houraisan"
persistent = 0
value = -99999
ID = 4100
kill = ifelse(((enemynear(0),name = "Mokou_RP") || (enemynear(0),name = "Mokou Fujiwara") || (enemynear(0),name = "Kaguya Houraisan")),0,1);1
absolute = 1

[State 4110, TLS]
type = varset
trigger1 = animelem = 8
fvar(10)=fvar(10)*0.1
ignorehitpause = 1

[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelem = 8
trigger1 = !((enemynear(0),name = "Mokou_RP") || (enemynear(0),name = "Mokou Fujiwara") || (enemynear(0),name = "Kaguya Houraisan"))
persistent = 0
value = 3000
ID = 4100

[State 4110, TS]
type = targetstate
trigger1 = animelem = 8
persistent = 0
id = 4100
value = 4153

[State 4110, VQ]
type = victoryquote
trigger1 = time = 0
value = 6+(random%2)

[State 4110, VQ]
type = varset
trigger1 = time = 0
var(33)=1

[State 4110, CS]
type = changestate
trigger1 = time >= 220
value = 4104

;----------------------------------------------------------
;Q.E.D. "Ripples of 495 Years" -END
[Statedef 4104]
type = A
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 4112
poweradd = 0

[State 4002, VA]
type = veladd
trigger1 = animelem = 3, >= 0
y = 0.45

[State 4002, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4105
ctrl = 0

;----------------------------------------------------------
;Q.E.D. "Ripples of 495 Years" -END
[Statedef 4105]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 47
poweradd = 0

[State -3, Landing Sound]
type = PlaySnd
trigger1 = Time = 0
value = 40, 0

[State 4002, VA]
type = posset
trigger1 = time = 0
y = 0

[State 4002, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;----------------------------
; ATWTBN Slash
[Statedef 4111]
MoveType = I
Physics  = N
Anim     = 20200
SprPriority = 5

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 5
freq = 60
ampl = -4
phase = 90
;ignorehitpause =
;persistent =


;[State 4111, T]
;type = turn
;trigger1 = time = 0
;trigger1 = random%2 = 0

[State 4111, VS]
type = null
trigger1 = time = 0
trigger1 = (var(0):=(-140+(random%141))) || 1
trigger1 = (var(1):=floor((enemynear(0),pos x)-(pos x))) || 1
trigger1 = (fvar(0):= 0.75+0.5*((random%101)/100.0)) || 1

[State 4111, AS]
type = angleset
trigger1 = time = 0
value = var(0)

[State 4111, AD]
type = angledraw
trigger1 = 1
ignorehitpause = 1

[State 4111, CA]
type = changeanim
trigger1 = animelemno(1) > animelemno(0)
value = 20200
elem = animelemno(2)

[State 4111, T]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

;[State 2000, Explod]
;type = Explod
;trigger1 = time = 1
;anim = 4125
;id = 4125
;pos = var(1)*facing,floor(-sin(var(1)*180.0/pi))
;postype = p1
;scale = fvar(0),fvar(0)
;sprpriority = 0
;facing = 1
;ownpal = 1
;supermovetime = 999999
;removetime = 11;22

[State 210, FX]
Type = Explod
Trigger1 = time = 1
Anim = 8005+(random%2)
ID = 8000
Pos = var(1)*facing,floor(-sin(var(1)*180.0/pi))
PosType = P1
Scale = 0.5,0.5
;Ownpal = 1
SprPriority = 8
RemoveOnGetHit = 1

[State 4111, Zeeky]
type = destroyself
trigger1 = animtime >= 0
trigger2 = time >= 5

;----------------------------
; ATWTBN Eye
[Statedef 4120]
MoveType = I
Physics  = N
Anim     = 4130
SprPriority = 5

[State 4112, VS]
type = null
triggerall = time = 0
trigger1 = (fvar(0):=(root,pos x - pos x)*facing) || 1
trigger1 = (fvar(1):=(root,pos y - 110 - pos y)) || 1
trigger1 = (fvar(2):=((fvar(0)**2)+(fvar(1)**2))**0.5) || 1

[State 4112, T]
type = trans
trigger1 = 1
trans = add

[State 4112, AD]
type = angledraw
trigger1 = 1
value = time*3
scale = ifelse(time<16,time/16.0,1.0),ifelse(time<16,time/16.0,1.0)

[State 4112, VS]
type = velset
trigger1 = time >= 52
trigger1 = time < 82
x = fvar(0)/30.0
y = fvar(1)/30.0

[State 4112, VS]
type = velset
trigger1 = time >=82
x = 0
y = 0

[State 4112, CS]
type = changestate
trigger1 = time >= 87
value = 4121

;--------------------------
; S.Strong Burst
[Statedef 4121]
ctrl = 0
anim = 24010
sprpriority = 10

[State 221, T]
Type = Trans
Trigger1 = 1
Trans = Add

[State 221, ASS]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
ignorehitpause = 1

[State 221, Explod]
Type = Explod
Trigger1 = time = 0;time = [0,16]
Anim = 24111
ID = 24111
Pos = 0,0
PosType = P1
Scale = 0.125,0.5
Ownpal = 1
SprPriority = 3
removetime = 16
Trans = AddAlpha
Alpha = 256-Time*16,256

[State 221, MEX]
type = modifyexplod
trigger1 = time = [1,16]
id = 24111
scale = 0.25+(time*0.05),1.0+(time*0.2)
trans = addalpha
alpha = 256-time*16,256

[State 221, AD]
Type = AngleDraw
Trigger1 = 1
Scale = time*2,time*2
ignorehitpause = 1

[State 221, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-time*16,256

[State 221, Explod]
Type = RemoveExplod
trigger1 = time >= 16
ID = 222

[State 221, Zeeky]
type = DestroySelf
trigger1 = time >= 16

;------------------------------------------
; And Then will there be None?
[Statedef 4150]
type    = S
movetype = H
physics = S
velset = 0,0
sprpriority = 1

[State 4150, REX]
type = RemoveExplod
trigger1 = ishelper
ignorehitpause = 1

[State 4150, Zeeky]
type = destroyself
trigger1 = ishelper

[state 4250, CA2]
type = changeanim2
trigger1 = time = 0
value = 4150

[State 4250, SB]
type = screenbound
trigger1 = 1
value = 0
ignorehitpause = 0

[state 4150, PP]
type = playerpush
trigger1 = 1
value = 0

[State 4150, CA]
type = changeanim2
trigger1 = time = 60 || time = 90 || time = 120 || time = 150
trigger2 = time = 160 || time = 175 || time = 190 || time = 205 || time = 220 || time = 235
trigger3 = time = 245 || time = 255 || time = 265 || time = 275
trigger4 = time = 285 || time = 290 || time = 295 || time = 300
trigger5 = time >= 305
trigger5 = (time-5)%2 = 0
trigger5 = time <= 385
value = ifelse(anim=4150,4151,4150)

;------------------------------------------
; Groundslam
[Statedef 4151]
type    = A
movetype= H
physics = N
velset = 0,0

[State 4151, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA
ignorehitpause = 1

[State 251, PS]
type = posset
trigger1 = time = 0
y = 0

[State 251, Shake]
type = envshake
trigger1 = time = 0
time = 15
freq = 100
phase = 100
ampl = 8

[State 251, CA]
Type = ChangeAnim
Trigger1 = Time < 3
Trigger1 = SelfAnimExist(5035)
Value = 5035

[state 4150, PP]
type = playerpush
trigger1 = 1
value = 0

[State 251, PF]
Type = PosFreeze
Trigger1 = Time < 4

[State 1451, LA]
type = lifeadd
trigger1 = time = 0
value = -5
kill = 0

[state 4250, CA2]
type = changeanim2
trigger1 = time = 3
value = 250

[State 1112]
type = VelSet
trigger1 = Time = 0
x = 0;-1.0
y = -6.0

[State 251, VA]
type = VelAdd
trigger1 = time > 4
y = .3

[State 251, VA]
type = Velset
trigger1 = time >= 3
persistent = 0
x = ((gamewidth/2.0)-(screenpos x))*facing*1.0/20.0

[State 251, AD]
Type = AngleDraw
Trigger1 = Time > 3
trigger1 = Pos Y < 0
Value = Time*30

[State 251, OS]
Type = OffSet
Trigger1 = anim = 250
trigger1 = pos y < 0
Y = Const(Size.Mid.Pos.Y)

[State 4151, CS]
type = changestate
trigger1 = time > 3
trigger1 = vel y >= 0
value = 4152

;------------------------------------------
; And Then will there be None?
[Statedef 4152]
type    = A
movetype = H
physics = N
sprpriority = 1
velset = 0,0

[state 4250, CA2]
type = changeanim2
trigger1 = time = 0
value = 4150

[State 4152, PS]
type = posset
trigger1 = time = 0
x = 0

[State 4250, SB]
type = screenbound
trigger1 = 1
value = 0
ignorehitpause = 0

[state 4150, PP]
type = playerpush
trigger1 = 1
value = 0

[State 4150, CA]
type = changeanim2
trigger1 = (time)%2 = 0
trigger1 = time <= 138
value = ifelse(anim=4150,4151,4150)

[State 4150, CA]
type = changeanim2
trigger1 = time = 139
value = 4151

;------------------------------------------
; And Then will there be None?
[Statedef 4153]
type    = S
movetype = H
physics = N
sprpriority = 1
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2= noshadow

[State 4153, PS]
type = Null;posset
trigger1 = time = 0
y = 9999

[State 4153, LS]
type = lifeset
trigger1 = time = 0
;trigger1 = !(name="Mokou_RP")
;trigger1 = !name="Mokou Fujiwara"
;trigger1 = !name="Kaguya Houraisan"
value = 0;+1*((name="Mokou_RP")&&(var(37)=1))

[State 4153, SS]
type = changestate;state
triggerall = time >= 20
trigger1 = name="Mokou_RP"
trigger2 = name="Mokou Fujiwara"
trigger3 = name="Kaguya Houraisan"
trigger4 = name="Eirin_RP"||name="Eirin_Yagokoro"||name="Yagokoro_Eirin"
trigger5 = alive
trigger5 = time>=60
value = 4155;5050

[State 4153, SS]
type = changestate
trigger1 = !alive
trigger1 = time >= 60
value = 4154;5150

;------------------------------------------
; And Then will there be None?
[Statedef 4154]
type    = S
movetype = H
physics = N
sprpriority = 1
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2= noshadow

[State 4154, PS]
type = posset
trigger1 = time = 0
y = 9999

[State 4153, SS]
type = selfstate
trigger1 = !alive
trigger1 = time >= 60
value = 5150

;------------------------------------------
; And Then will there be None?
[Statedef 4155]
type    = A
movetype = H
physics = N
sprpriority = 1
velset = 0,0

[State 4155, PS]
type = posset
trigger1 = time = 0
y = -300

[State 4155, CS]
type = changestate
trigger1 = 1
value = 6020

;---------------------------
; Last Word BGM
[Statedef 24300]
type = A
movetype = I
physics = N
sprpriority = 0
anim = 1998
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1

[State 24300, PSND]
type = PlaySnd
trigger1 = time = 0
value = S4200,20
channel = 7
loop = 1
abspan = 0 
ignorehitpause = 1 

;[State 24300, CS]
;type = changestate
;;trigger1 = root,stateno != [4100,4199]
;;trigger2 = root,stateno = 4207
;value = 24301

;---------------------------
; Last Word BGM
[Statedef 24301]
type = A
movetype = I
physics = N
sprpriority = 0
anim = 1998
velset = 0,0

[State 24300, PSND]
type = stopSnd
trigger1 = time = 0
channel = 7
ignorehitpause = 1 

[State 24300, CS]
type = destroyself
trigger1 = time

;---------------------------
; Last Word BGM
[Statedef 24301]
type = A
movetype = I
physics = N
sprpriority = 0
anim = 1998
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1

[State 24300, PSND]
type = stopSnd
trigger1 = time = 30
channel = 7 

[State 24300, CS]
type = destroyself
trigger1 = time >= 30

