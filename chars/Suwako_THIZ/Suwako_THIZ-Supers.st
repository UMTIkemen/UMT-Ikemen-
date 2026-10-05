;---------------------------------------------------------------------------
; Lvl 1: Moriya's Iron Ring
[Statedef 2000]
type    = U
movetype = A
physics = N
ctrl = 0
velset = 0, 0
anim = 2000+1*(statetype=A)+0*cond((prevstateno!=2002),floor(var(19):=cond((var(57)>0 && var(52)=2)||(prevstateno=[2000,2999]),1,0)),0)
sprpriority = 1
facep2 = 0
juggle = 0

[State 2000, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S

[State 2000, Facep2]
type = turn
trigger1 = time = 0
trigger1 = prevstateno!=2002
trigger1 = statetype != A
trigger1 = p2dist x < 0

[State 2000, IKEMEN BUGFIX]
type = NotHitBy
trigger1 = time<=50
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

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
pausemovetime = 50
supermovetime = 50

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
pausemovetime = 50
supermovetime = 50

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 50
anim = -1
sound = S4,0
p2defmul = 1
poweradd = -1000*!(var(57)>0 && var(52)=1)*!(var(57)>0 && var(52)=2)*(prevstateno!=2002)
unhittable = 1
movetime = 50
darken = 0

[State 2000, Spell Trance Power Cost]
type = varadd
trigger1 = time = 0 && (prevstateno!=2002)
trigger1 = (var(57)>0 && var(52)=1)
var(57)=-250
[State 2000, Spell Rage/Overdrive End]
type = varset
triggerall = time = 0 && (prevstateno!=2002)
trigger1 = (var(57)>0 && var(52)=2)
var(57)=0

;---System Stuff end---

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(5)=0
statetype = A
physics = N

[State 2000, VS]
type = velset
trigger1 = anim=2000
trigger1 = animelemtime(5)=0
x = 1.0
y = -4.0

[State 2000, VS]
type = velset
trigger1 = anim=2001
trigger1 = animelemtime(6)=0
x = -1.5
y = -4.0

[State 2000, Grav]
type = veladd
trigger1 = anim=2000
trigger1 = animelemtime(5)>0
trigger2 = anim=2001
trigger2 = animelemtime(6)>0
y = 0.2

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 2000,10
channel = 1

[State 2000, Helper]
type = helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Iron Ring"
id = 22000
stateno = 22000
pos = cond(anim=2000,43,21),cond(anim=2000,-63,-13)
postype = p1
ownpal = 1
facing = 1


[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(6) = 2
movetype = I

[State 2002, CS]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2001
ctrl = 0

;---------------------------------------------------------------------------
; Iron Ring Land
[Statedef 2001]
type    = S                     
movetype= I           
physics = S                    
ctrl = 0                      
anim = 2005
velset = 0,0
poweradd = 0
sprpriority = 1 
movehitpersist=1

[State 1002, PSND]
type = playsnd
trigger1 = time = 0
value = 40,0

[State 1002, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1002, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Lvl 1: Moriya's Iron Ring
[Statedef 2002]
type    = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
anim = 2002+0*floor(var(19):=cond((var(57)>0 && var(52)=2)||(prevstateno=[2000,2999]),1,0))
poweradd = -1000*!(var(57)>0 && var(52)=1)*!(var(57)>0 && var(52)=2)
sprpriority = 1
facep2 = 0
juggle = 0

[State 2000, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S

[State 2000, Facep2]
type = turn
trigger1 = time = 0
trigger1 = statetype != A
trigger1 = p2dist x < 0

[State 2000, IKEMEN BUGFIX]
type = NotHitBy
trigger1 = time<=50
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 2000, Spell Trance Power Cost]
type = varadd
trigger1 = time = 0 ;&& (prevstateno!=2002)
trigger1 = (var(57)>0 && var(52)=1)
var(57)=-250
[State 2000, Spell Rage/Overdrive End]
type = varset
triggerall = time = 0; && (prevstateno!=2002)
trigger1 = (var(57)>0 && var(52)=2)
var(57)=0

;---System Stuff end---

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 625,11

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(3)=0
helpertype = normal ;player
name = "Splash"
ID = 20626
stateno = 20626
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 2002, STS]
type = statetypeset
trigger1 = animelemtime(4)=0
statetype = A
physics = N

[State 2002, VS]
type = velset
trigger1 = animelemtime(4)=0
x = 0.0
y = -8.0

[State 2002, VS]
type = veladd
trigger1 = animelemtime(4)>0
y = 0.4

[State 1002, CS]
type = changestate
trigger1 = animtime = 0
value = 2000
ctrl = 0

;----------------------
;Iron Ring Projectile
[Statedef 22000]
type    = A
movetype= A
physics = N
anim = 22000
juggle  = 0
sprpriority = 5
; Var Usage
; ---
; Var(0) - Timer
; Var(1) - Angle
; Var(2)/Var(3) - X/Y bounce Flag
; Var(4) - Bounce Count
; Var(5) - Hit Count
; Var(6) - Destroy Flag
; Var(10) - Version
; Var(11) - Damage
; Var(12) - Chip Damage
; Var(19) - Spell Overdrive Flag

[State 22110, VS]
type = varset
trigger1 = time=0
var(10) = root,var(10)

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=50)||1
trigger1 = (var(12):=8)||1
trigger1 = (var(2):=1)||(var(3):=1)||1
[State 22110, VS]
type = varset
trigger1 = time=0
var(19) = root,var(19)

[State 22110, VS]
type = null
triggerall = time = 0
trigger1 = var(10)<=1
trigger1 = (var(1):=-15)||1
trigger2 = var(10)=2
trigger2 = (var(1):=-40)||1
trigger3 = var(10)=3
trigger3 = (var(1):=-65)||1
trigger4 = var(10)=4
trigger4 = (var(1):=25)||1
trigger5 = var(10)=5
trigger5 = (var(1):=50)||1
trigger6 = var(10)>=6
trigger6 = (var(1):=75)||1

[State 1215, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1211, HitOverride]
type = HitOverride
trigger1 = time = 0 
attr = SCA,AA,AP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 22002
time = -1

[State 1210, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AT
ignorehitpause = 1

[State 22001, CS]
type = changestate
trigger1 = 1
value = 22001

;----------------------
;Iron Ring Projectile
[Statedef 22001]
type    = A
movetype= A
physics = N
juggle  = 0
sprpriority = 5
;movehitpersist = 1

[State 1000, Helper]
type = Helper
triggerall = var(0)%3=0
trigger1 = time
trigger2 = prevstateno!=[22001,22002]
trigger2 = time>=0
helpertype = normal
name = "Afterimage"
ID = 22005
pos = 0,0
postype = p1
stateno = 22005
keyctrl = 0
ownpal = 1
supermovetime = 1


[State ASSASSIN]
type = VelSet
trigger1 = 1
x = 9.0*cos(var(1)*pi/180.0)*var(2)
y = 9.0*sin(var(1)*pi/180.0)*var(3)

[State 1211, HitOverride]
type = HitOverride
trigger1 = time = 0 
attr = SCA,AA,AP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 22002
time = -1

[State 1210, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State Hitdef]
type = HitDef
trigger1 = movecontact = 0 && movereversed = 0
attr = A,HP
animtype  = heavy
damage = ceil(var(11)*root,fvar(11)*cond(var(19)=1,0.85,1.0)),ceil(var(12)*root,fvar(11)*cond(var(19)=1,0.85,1.0))
hitflag = MAF
guardflag = MA
getpower = 0,0
givepower = ceil(var(11)*0.8*root,fvar(11)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.2*cond(var(19)=1,0.85,1.0))
sparkno = s8010+(random%2)
guard.sparkno = S8030
pausetime = 1,6
guard.pausetime = 1,6
sparkxy = -10,0
hitsound   = s1,7
guardsound = s2,0
ground.type = High
air.type = High
ground.velocity = -3.0,-5.5
guard.velocity = -3.0
air.velocity = -3.0,-5.5
airguard.velocity = -3.0,-5.5
p1sprpriority=5
yaccel = 0.5
ground.slidetime = cond((var(32):=22+root,var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=22+root,var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=18+root,var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=18+root,var(34))<=1,1,var(32))
air.hittime = cond((var(32):=24+root,var(34))<=1,1,var(32))
fall = 1
air.fall = 1
fall.recover = 0
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0
p2facing = 1
id = 2000

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = movecontact || movereversed
movetype = I
ignorehitpause = 1

[State 2011, Invalid Combo Flag]
type = parentvarset
trigger1 = MoveHit=1
trigger1 = p2stateno != [120,159]
var(35)=2
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Increase]
type = parentvaradd
trigger1 = root,var(52)=2 ;Type-C Only
trigger1 = movecontact
trigger1 = root,var(54)<ceil(root,lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*root,fvar(11)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1

[State 200, Damage Proration]
type = parentvarset
trigger1 = Movehit
fvar(10) = (root,fvar(10))*0.93
ignorehitpause = 1
persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 =p2statetype= A && movehit && (p2stateno!=[6020,6110])
value =6020
ID = 2000
ignorehitpause =1

[State 22000, Bounce]
type = playsnd
triggerall = var(4)<5
trigger1 = vel x > 0 
trigger1 = frontedgedist < 16
trigger2 = vel x < 0 
trigger2 = backedgedist < 16
trigger3 = vel y > 0 
trigger3 = Pos y > -26
trigger4 = vel y < 0 
trigger4 = ScreenPos y < 24
value = 2000,11

[State 22000, Bounce]
type = changestate
triggerall = var(4)<5
trigger1 = vel x > 0 
trigger1 = frontedgedist < 16
trigger1 = (var(2):=-var(2))||1
trigger1 = (var(4):=var(4)+1)||1
trigger2 = vel x < 0 
trigger2 = backedgedist < 16
trigger2 = (var(2):=-var(2))||1
trigger2 = (var(4):=var(4)+1)||1
trigger3 = vel y > 0 
trigger3 = Pos y > -26
trigger3 = (var(3):=-var(3))||1
trigger3 = (var(4):=var(4)+1)||1
trigger4 = vel y < 0 
trigger4 = ScreenPos y < 24
trigger4 = (var(3):=-var(3))||1
trigger4 = (var(4):=var(4)+1)||1
value = 22001

[State 22000, Destruct]
type = changestate
trigger1 = movecontact||movereversed
trigger2 = root,movetype=H
trigger2 = root,stateno!=[120,155]
trigger3 = root,alive=0
value = 22002

[State 22000, Destruct]
type = changestate
triggerall = var(4)>=5
trigger1 = frontedgedist <= -50
trigger2 = backedgedist <= -40
trigger3 = pos y >= 200
trigger4 = screenpos y <= -100
value = 999

[State 1215, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 2011, AS]
type = angleadd
trigger1 = time>=0
value = -22.5
ignoreHitPause = 1

[State 22001, AD]
type = angledraw
trigger1 = time>=0
ignorehitpause = 1

[State 22001, Timer]
type = varadd
trigger1 = time>=0
var(0) = 1

;----------------------
; Iron Ring Projectile
[Statedef 22002]
type    = A
movetype= I
physics = N
juggle  = 0
sprpriority = 5
movehitpersist = 1

[State 1215, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21405, VA]
type = varadd
trigger1 = time = 0
var(5) = 1

[State 21405, VS]
type = varset
trigger1 = var(5)>=5
trigger2 = root,movetype=H
trigger2 = root,stateno!=[120,155]
trigger3 = root,alive=0
var(6)=1

[State 21105, VS]
type = posfreeze
trigger1 = var(6)=0
ignorehitpause = 1

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

;[State 21405, CA]
;type = changeanim
;trigger1 = var(13)=1
;trigger1 = time = 0
;trigger1 = anim != 21001
;value = 21001

[State 21105, CS]
type = changestate
triggerall = time>=5
trigger1 = var(6)=0
value = 22001

[State 1015, Destroyself]
type = changestate
trigger1 = var(6)=1
trigger1 = time>=18
value = 999


[State 22002, VS]
type = velset
trigger1 = var(6)=1
trigger1 = time = 0
x = -4.5
y = -4.5

[State 22002, Grav]
type = veladd
trigger1 = var(6)=1
trigger1 = time
y = 0.3

[State 2011, AS]
type = angleadd
trigger1 = var(6)=1
trigger1 = time>=0
value = -20.0
ignoreHitPause = 1

[State 22001, AD]
type = angledraw
trigger1 = time>=0
scale = 1.0-cond(var(6)=1,time/18.0,0),1.0
ignorehitpause = 1


;-----------------------
; Iron Ring FX
[Statedef 22005]
type = A
movetype = I
physics = N
anim = 22001
sprpriority = 5
velset = 0,0

[State 1010, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 22005, PFX]
type = palfx
trigger1 = 1
time = 1
add = 0,0,0
mul = 256-floor(256*time/16.0),256-cond(time<8,floor(256*time/8.0),256),256-cond(time<8,floor(256*time/8.0),256)
invertall = 0
color = 256
ignorehitpause = 1

[State 1010, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1210, VS]
type = destroyself
trigger1 = time>=16

[State 1200, AD]
type = angledraw
trigger1 = 1
value = time*5
scale = 0.5+(time*0.025),0.5+(time*0.025)
ignorehitpause = 1

;---------------------------------------------------------------------------
; Lvl 1: Moriya God
[Statedef 2100]
type    = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
anim = 2100+0*floor(var(19):=cond((var(57)>0 && var(52)=2)||(prevstateno=[2000,2999]),1,0))
sprpriority = 1
facep2 = 1
juggle = 0

[State 210, PSND]
type = playsnd
trigger1 = time = 0
value = 2100,0
channel = 0

[State 2000, IKEMEN Nothitby]
type = NotHitBy
trigger1 = time<=74
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

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
pausemovetime = 50
supermovetime = 50

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
pausemovetime = 50
supermovetime = 50

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 50
anim = -1
sound = S4,0
p2defmul = 1
poweradd = -1000*!(var(57)>0 && var(52)=1)*!(var(57)>0 && var(52)=2)
unhittable = 1
movetime = 50
darken = 0

[State 2000, Spell Trance Power Cost]
type = varadd
trigger1 = time = 0
trigger1 = (var(57)>0 && var(52)=1)
var(57)=-250
[State 2000, Spell Rage/Overdrive End]
type = varset
triggerall = time = 0
trigger1 = (var(57)>0 && var(52)=2)
var(57)=0
;---System Stuff end---

[State 2100, Damage Calc]
type = Null
trigger1 = time = 0
trigger1 = (var(11):=30)||1
trigger1 = (var(12):=4)||1

[State 1010, Effect]
type =helper
trigger1 = !ishelper
trigger1 = animelemtime(6)=0
helpertype = normal
name = "Outline"
ID = 22100
pos = 0,0
postype = p1
stateno = 22100
ownpal = 1
facing = 1

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 1200,10

[State 0, MoveHitReset]
type = MoveHitReset
trigger1 = animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0||animelemtime(15)=0
trigger2 = animelemtime(17)=0||animelemtime(19)=0||animelemtime(21)=0||animelemtime(23)=0||animelemtime(25)=0

;==========
; HITDEF
;==========
[State 2100, Hitdef]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1 = animelemno(0)=7||animelemno(0)=9||animelemno(0)=11||animelemno(0)=13||animelemno(0)=15
trigger2 = animelemno(0)=17||animelemno(0)=19||animelemno(0)=21||animelemno(0)=23||animelemno(0)=25
attr = S,HA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(12)*fvar(11)*cond(var(19)=1,0.85,1.0));35,5
animtype = Back                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 0,6                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-40
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=34+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.velocity = -2.0-10.0*(animelemtime(25)>=0),-2.0-7.5*(animelemtime(25)>=0)
air.velocity = -2.0-10.0*(animelemtime(25)>=0),-2.0-7.5*(animelemtime(25)>=0)
down.velocity = -2.0-10.0*(animelemtime(25)>=0),-2.0-7.5*(animelemtime(25)>=0)
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
Ground.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Down.CornerPush.VelOff = 0
getpower = 0,0
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.2*cond(var(19)=1,0.85,1.0))
yaccel = 0.5
p2facing = 1
fall = 1
fall.recover = 0
id = 2100
p2stateno = cond(animelemno(0)=25&&sysvar(4)=0,260,-1)
p2getp1state = cond(animelemno(0)=25&&sysvar(4)=0,1,0)

;==========
; /HITDEF
;==========

[State 2000, Hard Knockdown]
type = TargetState
trigger1 =p2statetype= A && movehit && (p2stateno!=[6020,6110])
value =6020
ID = 2100
ignorehitpause =1

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[7,8]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[9,10]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[11,12]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[13,14]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[15,16]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[17,18]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[19,20]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[21,22]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[23,24]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemtime(25)>=0
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[7,8]
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[9,10]
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[11,12]
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[13,14]
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[15,16]
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[17,18]
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[19,20]
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[21,22]
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[23,24]
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemtime(25)>=0
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(26)>=0
trigger2 = animelemno(0)=25
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1

[State 2002, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;--------------------------
; 214214p Moriya God FX
[Statedef 22100]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 21200
sprpriority = 5

[State 21200, CVS]
type = null
triggerall = time = 0
trigger1 = (fvar(0):=1.5)||1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=2100
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
trigger1 = root,stateno = 2100
trigger1 = root,time<=1
trigger2 = root,movetype=H
trigger2 = root,stateno!=[120,155]
trigger3 = root,stateno!=2100

[State 1310, Detonate]
type = ChangeState
trigger1 = root,stateno=2100
trigger1 = root,animelemtime(27)>=0
value = 22101

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(0),fvar(0)
ignorehitpause = 1

;--------------------------
; 214214p Moriya God FX
[Statedef 22101]
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
trigger1 = root,stateno=2100
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
; Type A: Spell Trance
[Statedef 3000]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
anim = 3000+0*floor(var(57):=0)
sprpriority = 1
facep2 = 1

[State 1900, Decrease Spirit]
type = varset
trigger1 = time = 0
var(54) = 0;

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time<=70
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time = 0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 2999
stateno = 1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
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
pausemovetime = 70
supermovetime = 70

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 70
anim = -1
sound = S4,0
p2defmul = 1
;poweradd = -2000
unhittable = 1
movetime = 70

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
trigger1 = (var(57):=power)||1
helpertype = normal
name = "Spell Trance"
id = 23000
stateno = 23000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 9999970
supermovetime = 9999970

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Type C: Spell Overdrive
[Statedef 3010]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
anim = 3000+0*floor(var(57):=0)
sprpriority = 1
facep2 = 1

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time<=70
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time = 0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 4999
stateno = 1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
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
pausemovetime = 70
supermovetime = 70

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 70
anim = -1
sound = S4,0
p2defmul = 1
poweradd = -1000
unhittable = 1
movetime = 70

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
trigger1 = (var(57):=480)||1
helpertype = normal
name = "Spell Overdrive"
id = 23010
stateno = 23000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 9999970
supermovetime = 9999970
[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spell Overdrive"
id = 23010
stateno = 30010
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 9999970
supermovetime = 9999970

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------
; Spell Trance/Rage/Overdrive Helper
[StateDef 23000]
Type = A
MoveType = I
Physics = N
SprPriority = -1
anim = 1998
velset = 0,0

[State 23000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 30000, Spirit]
type = varset
trigger1 = ishelper(23010)||ishelper(23005)
trigger1 = time = 0
var(10) = root,power

[State 23000, T]
type = turn
trigger1 = facing != root,facing 

[State 23000, CA]
type = changeanim
trigger1 = root,movetype != H
value = root,anim
elem = root,animelemno(0)
ignorehitpause = 1

[State 23000, Angleset]
type = angleset
trigger1 = 1
value = 0
ignorehitpause = 1

[State 23000, Flicker]
type = angledraw
trigger1 = 1
scale = 1.05+0.05*(time%2=0),1.05+0.05*(time%2=0)
ignorehitpause = 1

[State 23000, Invis]
type = assertspecial
trigger1 = root,movetype = H
trigger2 = time=0
flag = invisible
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = ishelper(23000)
time = -1
add = 256,256,256
mul = 256,0,0
invertall = 0
color = 0
ignorehitpause = 1
[State 0, PalFX]
type = PalFX
trigger1 = ishelper(23005)
time = -1
add = 256,256,256
mul = 0,256,0
invertall = 0
color = 0
ignorehitpause = 1
[State 0, PalFX]
type = PalFX
trigger1 = ishelper(23010)
time = -1
add = 256,256,256
mul = 256,256,0
invertall = 0
color = 0
ignorehitpause = 1

[State 30000, Deplete Spirit]
type = parentvaradd
triggerall = root,var(52)=1
triggerall = root,var(57)>0
trigger1 = root,stateno!=[3000,3010]
trigger1 = !(root,stateno=2000 && root,time<=50)
trigger1 = !(root,stateno=2100 && root,time<=50)
trigger1 = !(root,stateno=2200 && root,time<=50)
trigger1 = !(root,stateno=2300 && root,time<=50)
var(57)=-3

[State 30000, Deplete Spirit]
type = parentvaradd
triggerall = root,var(52)=2||root,var(52)=2
triggerall = root,var(57)>0
trigger1 = root,stateno!=[3000,3010]
trigger1 = !(root,stateno=2000 && root,time<=50)
trigger1 = !(root,stateno=2100 && root,time<=50)
trigger1 = !(root,stateno=2200 && root,time<=50)
trigger1 = !(root,stateno=2300 && root,time<=50)
var(57)=-1

[State 30000, Spirit]
type = powerset
trigger1 = ishelper(23000)
value = root,var(57)

[State 30000, Spirit]
type = powerset
trigger1 = ishelper(23010);||ishelper(23010)
trigger1 = root,power>var(10)
value = var(10)

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, BTR]
type = bindtoroot
trigger1 = 1
ignorehitpause = 1
pos = 0,0

[State 23000, Zeeky]
type = destroyself
trigger1 = root,var(57)<=0
;trigger1 = root,stateno!=4000
trigger1 = root,stateno!=[2000,2299]

[State 0, Offset]
type = Offset
triggerall = root,stateno=21
triggerall = root,anim=22
trigger1 = root,animelemno(0)=[4,9]
y = floor(-2.0*(1+root,animelemtime(4))+0.0909091*root,animelemtime(4)**2);+0.05714*animelemtime(4)**2)
ignorehitpause = 1

[State 0, Offset]
type = Offset
triggerall = root,stateno=21
triggerall = root,anim=23
trigger1 = root,animelemno(0)=[4,9]
y = floor(-2.0*(1+root,animelemtime(4))+0.0909091*root,animelemtime(4)**2)
ignorehitpause = 1

;---------------------------------------------------------------------------
; Last Word: Mr. Mishaguchi
[Statedef 4000]
type    = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
anim = 4000+0*floor(var(11):=1)+0*floor(var(12):=0)+0*floor(var(19):=cond((var(57)>0 && var(52)=2),1,0))
sprpriority = 1
facep2 = 1
juggle = 0

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = animelemtime(24)<0
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time = 0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 2000, Spellcard Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Bomb_FX"
id = 24000
stateno = 24000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
[State 2000, Spellcard Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Bomb_FX"
id = 24001
stateno = 24000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
[State 2000, Spellcard Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Bomb_FX"
id = 24002
stateno = 24000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 4000;2999+1000*(var(52)=1)
stateno = 1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
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
pausemovetime = 70
supermovetime = 70

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 70
anim = -1
sound = S4,1
p2defmul = 1
poweradd = 0;-1000*(var(52)=1);Deplete Power only if Type-B
unhittable = 1
movetime = 70
darken=0

[State 2000, Spell Trance End]
type = varset
trigger1 = time = 0
trigger1 = (var(57)>0 && var(52)=1)
var(57)=0
[State 2000, Type-a Deplete Spirit]
type = varset
trigger1 = time = 0
trigger1 = var(52)=1
var(54)=0

;--End System Stuff---

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(9)=0
value = 4000,10

[State 0, Explod]
type = helper
trigger1 = animelemtime(9)=0
helpertype = normal
name = "Mist"
ID = 24010
pos = 0,2
postype = p1
stateno = 24010
ownpal = 1
facing = 1
[State 0, Explod]
type = helper
trigger1 = animelemtime(9)=0
helpertype = normal
name = "Mist"
ID = 24011
pos = 0,2
postype = p1
stateno = 24010
ownpal = 1
facing = 1

[State 800, No Fall Hitdef]
type = HitDef
trigger1 = numenemy
trigger1 = Animelemno(0)=[10,51]
trigger1 = var(30) = 0; Throw Limited;!Movecontact && !Movereversed ;Just in case 
attr = S,HT
hitflag = MAF
guardflag = 
fall.animtype = Diagup
priority = 7,Miss
damage = 0,0
pausetime = 0,0
sparkno = -1
hitsound = -1;s1,1
yaccel = 0.5
;ground.velocity = -1.5,-12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1facing = 1
p2facing = 1
p1stateno = 4001;+1*(var(10)=1)
fall = 1
fall.recover = 0
id = 4000
numhits = 1

[State ASS]
type = AttackDist
trigger1 = 1
value = 0

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(52)>=0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 2000, Land]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; "Mr. Mishaguchi"
[Statedef 4001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 4001;+0*(var(4):=1)
ctrl = 0
sprpriority = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, Explod]
type = helper
trigger1 = time=0
helpertype = normal
name = "MistBG"
ID = 24012
pos = 160,-120
postype = back
stateno = 24012
ownpal = 1
facing = 1

[State 1001, ST]
type = targetstate
trigger1 = time = 0
id = 4000
value = 4050

[State 1001, TB]
type = TargetBind
trigger1 = numenemy
trigger1 = time = 0
id = 4000
pos = floor(p2dist x),0

[State 200, PSND]
type = PlaySnd
trigger1 = time=0
value = 4000,11

[State 0, Explod]
type = helper
trigger1 = time=62
helpertype = normal
name = "Snake? SNAAAKE"
ID = 24020
pos = cond(numenemy,floor(p2dist x),0),0
postype = p1
stateno = 24020
ownpal = 1
facing = 1
[State 0, Explod]
type = helper
trigger1 = time=62
helpertype = normal
name = "Snake? SNAAAKE"
ID = 24021
pos = cond(numenemy,floor(p2dist x),0),0
postype = p1
stateno = 24020
ownpal = 1
facing = 1
[State 0, Explod]
type = helper
trigger1 = time=62
helpertype = normal
name = "Snake? SNAAAKE"
ID = 24022
pos = cond(numenemy,floor(p2dist x),0),0
postype = p1
stateno = 24020
ownpal = 1
facing = 1
[State 0, Explod]
type = helper
trigger1 = time=62
helpertype = normal
name = "Snake? SNAAAKE"
ID = 24023
pos = cond(numenemy,floor(p2dist x),0),0
postype = p1
stateno = 24020
ownpal = 1
facing = 1

[State 200, PSND]
type = PlaySnd
trigger1 = time=62 || time=67 || time=72 || time=77
value = 4000,12
channel = 7

[State 0, Explod]
type = helper
trigger1 = time=153
helpertype = normal
name = "Fade"
ID = 24021
pos = 160,-120
postype = back
stateno = 24021
ownpal = 1
facing = 1

[State 4001, PSND]
type = changeanim
trigger1 = time=176
value = 1998

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(4000)
trigger1 = time=184-1||time=192-1||time=200-1||time=208-1||time=216-1||time=224-1||time=232-1||time=240-1||time=248-1||time=256-1
trigger2 = time=264-1||time=272-1||time=280-1||time=288-1||time=296-1||time=304-1||time=312-1||time=320-1||time=328-1||time=336-1
value = 4051
ID = 4000

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(4000)
trigger1 = time=360
value = 4052
ID = 4000


[State 4001, TF]
type = targetfacing
triggerall = NumTarget(4000)
trigger1 = time=360
value = -1
ID = 4000

[State 4001, PSND]
type = playsnd
trigger1 = time=184||time=192||time=200||time=208||time=216||time=224||time=232||time=240||time=248||time=256
trigger2 = time=264||time=272||time=280||time=288||time=296||time=304||time=312||time=320||time=328||time=336
value = 1,2
channel = 7

[State 4001, PSND]
type = playsnd
trigger1 = time=360
value = 4000,13
channel = 7

[State 4001, HITADD]
type = hitadd
trigger1 = time=184||time=192||time=200||time=208||time=216||time=224||time=232||time=240||time=248||time=256
trigger2 = time=264||time=272||time=280||time=288||time=296||time=304||time=312||time=320||time=328||time=336
trigger3 = time=360
value = 1

[State 0, Explod]
type = Explod
triggerall = numenemy
trigger1 = time=184||time=192||time=200||time=208||time=216||time=224||time=232||time=240||time=248||time=256
trigger2 = time=264||time=272||time=280||time=288||time=296||time=304||time=312||time=320||time=328||time=336
;trigger3 = time=360
anim = 8020+(random%2)+5*(random%2=0)
ID = 8000
pos = 0,-50
postype = p2  ;p2,front,back,left,right
facing = 1
vel = 0,0
accel = 0,0
random = 50,50
removetime = -2
pausemovetime = 0
scale = 1.2,1.2
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;trans = sub

[State 4003, HitAdd]
type = targetlifeadd
trigger1 = time=184||time=192||time=200||time=208||time=216||time=224||time=232||time=240||time=248||time=256
trigger2 = time=264||time=272||time=280||time=288||time=296||time=304||time=312||time=320||time=328||time=336
id = 4000
value = -ceil(20.0*fvar(11)*cond(var(19)=1,0.85,1.0))
kill=0
[State 4003, HitAdd]
type = targetlifeadd
trigger1 = time=360
id = 4000
value = -ceil(375.0*fvar(11)*cond(var(19)=1,0.85,1.0))
kill=1

[State 4003, HitAdd]
type = targetpoweradd
trigger1 = time=184||time=192||time=200||time=208||time=216||time=224||time=232||time=240||time=248||time=256
trigger2 = time=264||time=272||time=280||time=288||time=296||time=304||time=312||time=320||time=328||time=336
id = 4000
value = ceil(20.0*0.8*fvar(11)*cond(var(19)=1,0.85,1.0))
[State 4003, HitAdd]
type = targetpoweradd
trigger1 = time=360
id = 4000
value = ceil(375.0*0.8*fvar(11)*cond(var(19)=1,0.85,1.0))

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = var(54)<ceil(lifemax*0.9)
trigger1 = time=184||time=192||time=200||time=208||time=216||time=224||time=232||time=240||time=248||time=256
trigger2 = time=264||time=272||time=280||time=288||time=296||time=304||time=312||time=320||time=328||time=336
var(54) = ceil(20.0*0.6*fvar(11)*cond(var(19)=1,0.85,1.0));*ifelse(var(42),1.25,1.0))
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = var(54)<ceil(lifemax*0.9)
trigger1 = time=360
var(54) = ceil(375.0*0.6*fvar(11)*cond(var(19)=1,0.85,1.0));*ifelse(var(42),1.25,1.0))
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = time=184||time=192||time=200||time=208||time=216||time=224||time=232||time=240||time=248||time=256
trigger2 = time=264||time=272||time=280||time=288||time=296||time=304||time=312||time=320||time=328||time=336
fvar(10) = fvar(10)*0.98
ignorehitpause = 1
[State 200, Damage Dampen]
type = varset
trigger1 = time=360
fvar(10) = fvar(10)*0.4
ignorehitpause = 1

[State 4001, CS]
type = changestate
trigger1 = time>=390
value = 4002


;---------------------------------------------------------------------------
; "Mr. Mishaguchi"
[Statedef 4002]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 4002;+0*(var(4):=1)
ctrl = 0
sprpriority = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 4001, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;---------------
[Statedef 4050]
type    = S
movetype= H
physics = S
velset = 0,0

[State 801, PP]
type = playerpush
trigger1 = 1
value = 0

[State 803, CA]
type = ChangeAnim2
Trigger1 = Time = 0
value = 4050

;---------------
[Statedef 4051]
type    = S
movetype= H
physics = S
velset = 0,0

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 0,0,0
mul = 0,0,0
invertall = 0
color = 0

[State 801, PP]
type = playerpush
trigger1 = 1
value = 0

[State 803, CA]
type = ChangeAnim2
Trigger1 = Time = 0
value = 4051+floor(4.0*random/1000.0)

[State 0, Turn]
type = Turn
trigger1 = time=0
trigger1 = random%2=0

;---------------
[Statedef 4052]
type    = A
movetype= H
physics = N
velset = 0,0

[State 803, CA]
type = ChangeAnim2
Trigger1 = Time = 0
value = 4055

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = -300
;ignorehitpause = 
;persistent = 


[State 4052, SB]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 4052, Grav]
type = veladd
trigger1 = time>30
y = 0.5

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 6100

;-----------------------
; Last Word Effect
[Statedef 24000]
anim = 24000
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
type = varadd
trigger1 = time <= 20
var(0) = 1

[State 21920, AD]
type = angledraw
trigger1 = 1
value = cond(ishelper(24000),0,cond(ishelper(24001),45,-45))
scale = 0.75*(time*0.3)*0.667,0.35*(time*0.3)*0.667
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
; Mist
[Statedef 24010]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 24010+1*ishelper(24011)
ctrl = 0
sprpriority = -1+6*ishelper(24011)

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4000
pos = 0,2
ignorehitpause = 1

[State 24010, Scale]
type = varset
trigger1 = 1
fvar(0) = var(0)*0.025

[State 1215, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1210, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 24010, Trans]
type = trans
trigger1 = 1
trans = sub
ignorehitpause = 1

[State 22001, CS]
type = changestate
trigger1 = root,stateno!=4000
trigger2 = root,movetype=H
trigger2 = root,stateno!=[120,155]
trigger3 = root,alive = 0
trigger4 = time>=93
value = 24011

[State 24010, AD]
type = angledraw
trigger1 = 1
scale = fvar(0),fvar(0)*cond(ishelper(24011),1.0,0.072)
ignorehitpause = 1

[State 24010, Timer]
type = varadd
trigger1 = time>=0
var(0) = 1

;---------------------------------------------------------------------------
; Mist
[Statedef 24011]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = -1+6*ishelper(24011)

[State 24010, Scale]
type = varset
trigger1 = 1
fvar(0) = var(0)*0.025

[State 1215, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1210, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 24010, Trans]
type = trans
trigger1 = 1
trans = sub
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = time>=0
time = 1
mul = 256-floor(256.0*time/32.0),256-floor(256.0*time/32.0),256-floor(256.0*time/32.0)
invertall = 0
color = 256
ignorehitpause = 1

[State 22001, CS]
type = destroyself
trigger1 = time>=32

[State 24010, AD]
type = angledraw
trigger1 = 1
scale = fvar(0),fvar(0)*cond(ishelper(24011),1.0,0.072)
ignorehitpause = 1

[State 24010, Timer]
type = varadd
trigger1 = time>=0
var(0) = 1

;---------------------------------------------------------------------------
; Mist BG
[Statedef 24012]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 24012
ctrl = 0
sprpriority = -5

[State 1215, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1210, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 24010, Trans]
type = trans
trigger1 = time<176
trans = sub
ignorehitpause = 1

[State 24010, Trans]
type = trans
trigger1 = time>=176
trans = addalpha
alpha = cond(time<360,48,256)-cond(time<390,0,floor(256.0*(time-390)/16.0)),256
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = time>=0
time = 1
mul = 256-cond(time<16,floor(256.0*time/16.0),0),256-cond(time<16,floor(256.0*time/16.0),0),256-cond(time<16,floor(256.0*time/16.0),0)
invertall = 0
color = 256
ignorehitpause = 1

[State 22001, CS]
type = destroyself
trigger1 = time>=406

[State 24010, AD]
type = angledraw
trigger1 = 1
scale = 2.5,2.5
ignorehitpause = 1

[State 24010, Timer]
type = varadd
trigger1 = time>=0
var(0) = 1


;---------------------------------------------------------------------------
; Snek
[Statedef 24020]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1998;24020
ctrl = 0
sprpriority = 5

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(24020) && time=0
trigger2 = ishelper(24021) && time=5
trigger3 = ishelper(24022) && time=10
trigger4 = ishelper(24023) && time=15
value = 24020

[State 24010, Scale]
type = null
triggerall = time = 0
trigger1 = ishelper(24020)||ishelper(24021)
trigger1 = (fvar(0):=0.57)||1
trigger2 = ishelper(24022)||ishelper(24023)
trigger2 = (fvar(0):=1.14)||1

[State 24020, PS]
type = posadd
trigger1 = time = 0
x = -80*ishelper(24020)+80*ishelper(24021)+140*ishelper(24022)-140*ishelper(24023)
y = -5*(ishelper(24020)||ishelper(24021))+5*(ishelper(24022)||ishelper(24023))

[State 24020, T]
type = turn
trigger1 = time = 0
trigger1 = ishelper(24021)||ishelper(24022)

[State 1215, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1210, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 24010, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256;-cond(time<91,0,floor(256.0*(time-91)/25.0)),256
ignorehitpause = 1

[State 24020, Zeeky]
type = destroyself
trigger1 = time >= 116

[State 24010, AD]
type = angledraw
trigger1 = 1
scale = fvar(0),fvar(0)
ignorehitpause = 1

;---------------------------------------------------------------------------
; Mist FG
[Statedef 24021]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1998;24012
ctrl = 0
sprpriority = -5

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 24012
ID = 24021
pos = 160,120
postype = left
facing = 1
bindtime = -1
vel = 0,0
removetime = -1
pausemovetime = 0
scale = 2.5,2.5
sprpriority = 5
ontop = 1
ownpal = 0
removeongethit = 0
ignorehitpause = 1

[State 1215, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1210, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 24010, Trans]
type = trans
trigger1 = 1
trans = sub
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
triggerall = time>=0
trigger1 = var(0)=0
time = 1
mul = cond(time<25,floor(256.0*time/25.0),256),cond(time<16,floor(256.0*time/25.0),256),cond(time<16,floor(256.0*time/25.0),256)
color = 256
ignorehitpause = 1

[State 24021, Flash Timer]
type = varset
;((time=[30,33])||(time=[38,41]))
trigger1 = time=184-154||time=192-154||time=200-154||time=208-154||time=216-154||time=224-154||time=232-154||time=240-154||time=248-154||time=256-154
trigger2 = time=264-154||time=272-154||time=280-154||time=288-154||time=296-154||time=304-154||time=312-154||time=320-154||time=328-154||time=336-154
var(0) = 2

[State 0, PalFX]
type = PalFX
triggerall = time>=0
trigger1 = var(0)
time = 1
mul = 0,0,0
color = 256
ignorehitpause = 1

[State 0, PalFX]
type = removeexplod
trigger1 = time >= 360-154
id = 24021
ignorehitpause = 1

[State 22001, CS]
type = destroyself
trigger1 = time >= 360-154

[State 24010, Timer]
type = varadd
trigger1 = var(0)>0
var(0) = -1
