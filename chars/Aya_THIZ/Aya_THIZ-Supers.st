;---------------------------------------------------------------------------
; Lvl 1: Wind of the Tengu Path
[Statedef 2000]
type    = U
movetype = A
physics = N;S
ctrl = 0
velset = 0, 0
anim = 2000+1*(statetype=A)+0*floor(var(19):=cond((var(57)>0 && var(52)=2)||(prevstateno=[2000,2999]),1,0))
sprpriority = 1
facep2 = 0;1
juggle = 0

[State 2000, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype!=A
statetype=S
physics=S

[State 2000, FaceP2]
type = turn
trigger1 = statetype!=A
trigger1 = p2dist x < 0
trigger1 = time = 0

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

[State 0, PosAdd]
type = PosAdd
trigger1 = statetype!=A
trigger1 = animelemtime(6)=0
x = 10
[State 0, PosAdd]
type = PosAdd
trigger1 = statetype!=A
trigger1 = animelemtime(7)=0
x = 8
[State 0, PosAdd]
type = PosAdd
trigger1 = statetype!=A
trigger1 = animelemtime(10)=0
x = -12
[State 0, PosAdd]
type = PosAdd
trigger1 = statetype!=A
trigger1 = animelemtime(11)=0
x = -6

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 2000,10

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(7)=0
helpertype = normal
name = "Gust"
id = 22000
stateno = 22000
pos = 57,-50
postype = p1
ownpal = 1
facing = 1


[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(7)>1
movetype = I
persistent = 0
ignorehitpause = 1

[State 2000, Land]
type = changestate
trigger1 = statetype!=A
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 2000, VelAdd]
type = veladd
trigger1 = statetype=A
trigger1 = animelemtime(11)>=0
y = 0.5

[State 2000, Land]
type = changestate
trigger1 = statetype=A
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2001
ctrl = 0

;---------------------------------------------------------------------------
; Tengu Path Landing
[Statedef 2001]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 1211
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


;-----------------------------
; Tengu Path Projectile
[Statedef 22000]
type = A
movetype = A
physics = N
ctrl = 0
anim = 22000
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer
; Var(10) - Hit Counter
; Var(11) - Damage per hit
; Var(12) - Chip damage per hit
; Var(13) - Air/Ground
; Var(19) - Overdrive Flag

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=24)||1
trigger1 = (var(12):=4)||1
[State 22110, VS]
type = varset
trigger1 = time=0
var(19) = root,var(19)

[State 22110, VS]
type = varset
trigger1 = time=0
var(13) = cond((root,statetype=A),1,0)

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
Stateno = 22002
IgnoreHitPause = 1

[State 21000, CS]
type = changestate
trigger1 = 1
value = 22001

;------------------------------
; Tengu Path Projectile
[StateDef 22001]
type    = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
sprpriority = 5
;movehitpersist=1

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 22200, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 22002
time = -1
ignorehitpause = 1

[State 22201, AttackDist]
type = AttackDist
trigger1 = 1
value = 120
ignorehitpause = 1

[State 22201, VelSet]
type = velset
trigger1 = 1
x = 12.0

[State 1012, HD REGULAR]
type = HitDef
trigger1 = movecontact = 0 && movereversed = 0
attr = A,HP
animtype  = heavy
damage = ceil(var(11)*root,fvar(11)*cond(var(19)=1,0.85,1.0)),ceil(var(12)*root,fvar(11)*cond(var(19)=1,0.85,1.0))
hitflag = MAF
guardflag = MA
getpower = 0,0
givepower = ceil(var(11)*0.8*root,fvar(11)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.2*cond(var(19)=1,0.85,1.0))
sparkno = s8020+(random%2)
guard.sparkno = S8030
pausetime = 1,8
guard.pausetime = 1,8
sparkxy = -10,0
hitsound   = -1;s1,10
guardsound = -1;s2,0
ground.type = High
air.type = High
ground.velocity = -10.0,-5.5
guard.velocity = -10.0
air.velocity = -10.0,-5.5
airguard.velocity = -10.0,-5.5
p1sprpriority=5
yaccel = 0.5
ground.slidetime = cond((var(32):=22+root,var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=22+root,var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=18+root,var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=18+root,var(34))<=1,1,var(32))
air.hittime = cond((var(32):=22+root,var(34))<=1,1,var(32))
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

[State 22201, PSND]
type = playsnd
trigger1 = movehit && P2Movetype = H
value = 1,2
channel = 3
ignorehitpause = 1
persistent=0
[State 22201, PSND]
type = playsnd
trigger1 = moveguarded && P2Movetype = H
value = 2,0
channel = 3
ignorehitpause = 1
persistent=0

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

[State 0, Hard Knockdown]
type = TargetState
trigger1 =p2statetype= A && movehit && (p2stateno!=[6020,6110])
value =6020
ID = 2100
ignorehitpause =1

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit=1
fvar(10) = (root,fvar(10))*0.96
ignorehitpause = 1
persistent = 0

[State 22202, Zeeky]
type = changestate
trigger1 = movecontact||movereversed
value = 22002

;==END OF STATE==
[State 22202, Zeeky]
type = changestate
trigger1 = frontedgedist < -100
trigger2 = backedgedist < -100
trigger3 = var(0)>=800
value = 999

[State 2200, Effect]
type = helper
trigger1 = var(13)=0 ;Ground Only
trigger1 = (prevstateno != 22002) || (prevstateno = 22002 && time>0)
trigger1 = var(0)%6=2
helpertype = normal
name = "FX"
ID = 22010
stateno = 22010
pos = -100,50
postype = p1
ownpal = 0
facing = 1

[State 22201, Timer]
type = varadd
trigger1 = 1
var(0) = 1

;-----------------------
; Tengu Path Projectile
[Statedef 22002]
type = A
movetype = I
physics = N
sprpriority = 5
;velset = 0,0
movehitpersist = 1

[State 22202, VS]
type = varadd
trigger1 = time = 0
var(10) = 1

[State 21105, VS]
type = velset
trigger1 = time = 0
trigger1 = var(10)<10;20
x = 0

[State 21105, CS]
type = changestate
trigger1 = time>=7
trigger1 = var(10)<10;20
value = 22001

[State 1015, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 1015, T]
type = changeanim
trigger1 = var(10)=10
trigger1 = anim!=22001
value = 22001
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

[State 1015, Destroyself]
type = changestate
trigger1 = anim=22001
trigger1 = animtime=0
value = 999

[State 2200, Effect]
type = helper
trigger1 = var(13)=0 ;Ground Only
trigger1 = time>0
trigger1 = var(10)<10;20
trigger1 = var(0)%6=2
helpertype = normal
name = "FX"
ID = 22010
stateno = 22010
pos = -100,50
postype = p1
ownpal = 0
facing = 1

[State 22201, Timer]
type = varadd
trigger1 = 1
var(0) = 1

;------------------------------
; Tengu Path FX
[StateDef 22010]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 22010
ctrl = 0
sprpriority = 5

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 22211, Zeeky]
type = destroyself
trigger1 = animtime=0


;---------------------------------------------------------------------------
; Lvl 1: Sarutahiko's Guidance
[Statedef 2100]
type    = U;S
movetype = A
physics = N;S
ctrl = 0
velset = 0, 0
anim = 2100+1*(statetype=A)+0*floor(var(19):=cond((var(57)>0 && var(52)=2)||(prevstateno=[2000,2999]),1,0))
sprpriority = 1
facep2 = 0;
juggle = 0

[State 2000, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype!=A
statetype=S
physics=S

[State 2000, FaceP2]
type = turn
trigger1 = statetype!=A
trigger1 = p2dist x < 0
trigger1 = time = 0

[State 210, PSND]
type = playsnd
trigger1 = time = 0
value = 2100,0
channel = 0

[State 2000, IKEMEN Nothitby]
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

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=240)||1 
trigger1 = (var(12):=48)||1

[State 1100, STS]
type = statetypeset
trigger1 = animelemtime(7)=0
statetype = A
physics = N

[State 0, PosAdd]
type = PosAdd
trigger1 = anim=2100
trigger1 = animelemtime(7)=0
x = 0
y = -5

[State 1100, VelS]
type = velset
trigger1 = animelemtime(7)=0
x = 20.0

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 2100,10
channel = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = animelemno(0)=[7,20]
value = 0
ignorehitpause = 1

[State 1100, Friction]
type = velmul
trigger1 = animelemno(0)=[21,24]
x = 0.9

[State 0, PosAdd]
type = Posset
trigger1 = anim=2100
trigger1 = animelemtime(25)=0
y = 0

[State 1100, STS]
type = statetypeset
trigger1 = anim=2100
trigger1 = animelemtime(25)=0
statetype = S
physics = S

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(7)=0
helpertype = normal
name = "Wind"
ID = 22100
pos = 5,-35
postype = p1
stateno = 22100
ownpal = 1
facing = 1

[State 2100, NHB]
type = nothitby
trigger1 = animelemtime(7)>=0 && animelemtime(21)<0
value = ,AA,AP
ignorehitpause = 1

;==========
; HITDEF
;==========
[State 2100, Hitdef]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1 = animelemno(0)=[7,16]
attr = A,HA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(12)*fvar(11)*cond(var(19)=1,0.85,1.0));35,5
animtype = Back                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-70
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=34+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.velocity = -1.0,-16.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.0,-16.5     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.0,-15.5
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
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.70
ignorehitpause = 1
persistent = 0

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(17)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1

[State 52, 5]
type = ChangeState
trigger1 = anim = 2100
trigger1 = animtime=0
value = 0
ctrl = 1

[State 1000, Gravity]
type = veladd
trigger1 = anim=2101
trigger1 = animelemtime(25)>=0
y = 0.5

[State 1000, CS]
type = ChangeState
trigger1 = anim=2101
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2101

;---------------------------------------------------------------------------
; 46p: Domination Dash Landing
[Statedef 2101]
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
[Statedef 22100]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 22100
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
trigger1 = root,stateno != 2100

[State 21100, Zeeky]
type = changestate
trigger1 = root,stateno = 2100
trigger1 = root,animelemtime(21)>=0
value = 22101

;--------------------------
; [4]6p: Dominating Dash FX
[Statedef 22101]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 22001
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
; Lvl 1: Indication to the Divine
[Statedef 2200]
type    = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
anim = 2200+0*floor(var(19):=cond((var(57)>0 && var(52)=2)||(prevstateno=[2000,2999]),1,0))
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
trigger1 = time<=85
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

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=30)||1 
trigger1 = (var(12):=4)||1

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 2200,10
channel = 1

[State 2200, ESHAKE]
type = EnvShake
trigger1 = animelemtime(7)=0
time = 100
ampl = -7
freq = 150
phase = 160

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(7)=0
helpertype = normal
name = "Tornado"
ID = 22200
pos = 0,0
postype = p1
stateno = 22200
ownpal = 1
facing = 1

[State 0, MoveHitReset]
type = MoveHitReset
trigger1 = animelemtime(10)=0||animelemtime(12)=0||animelemtime(14)=0||animelemtime(16)=0||animelemtime(18)=0
trigger2 = animelemtime(20)=0||animelemtime(22)=0||animelemtime(24)=0||animelemtime(26)=0||animelemtime(28)=0||animelemtime(30)=0

;==========
; HITDEF
;==========
[State 2100, Hitdef]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1 = animelemno(0)=8||animelemno(0)=10||animelemno(0)=12||animelemno(0)=14||animelemno(0)=16||animelemno(0)=18
trigger2 = animelemno(0)=20||animelemno(0)=22||animelemno(0)=24||animelemno(0)=26||animelemno(0)=28||animelemno(0)=30
attr = S,HA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(12)*fvar(11)*cond(var(19)=1,0.85,1.0));35,5
animtype = Back                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 0,4                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-50+cond(numenemy,floor(p2dist y),0)
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=34+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.velocity = -0.5,-13.5             ;Velocity at which opponent is pushed
airguard.velocity = -0.5,-7.5     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -0.5,-13.5
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
id = 2200
;==========
; /HITDEF
;==========

[State 2000, Hard Knockdown]
type = TargetState
trigger1 =p2statetype= A && movehit && (p2stateno!=[6020,6110])
value =6020
ID = 2200
ignorehitpause =1

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[8,9]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[10,11]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[12,13]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[14,15]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[16,17]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[18,19]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[20,21]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[22,23]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[24,25]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[26,27]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[28,29]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemtime(30)>=0
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[8,9]
fvar(10) = fvar(10)*0.93
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[10,11]
fvar(10) = fvar(10)*0.93
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[12,13]
fvar(10) = fvar(10)*0.93
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[14,15]
fvar(10) = fvar(10)*0.93
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[16,17]
fvar(10) = fvar(10)*0.93
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[18,19]
fvar(10) = fvar(10)*0.93
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[20,21]
fvar(10) = fvar(10)*0.93
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[22,23]
fvar(10) = fvar(10)*0.93
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[24,25]
fvar(10) = fvar(10)*0.93
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[26,27]
fvar(10) = fvar(10)*0.93
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=[28,29]
fvar(10) = fvar(10)*0.93
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemtime(30)>=0
fvar(10) = fvar(10)*0.93
ignorehitpause = 1
persistent = 0

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(31)=0
trigger2 = animelemno(0)=30
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1

[State 52, 5]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1

;--------------------------
; [1]318p: IttD FX
[Statedef 22200]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 22200
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
pos = 0,0

[State 21100, Zeeky]
type = destroyself
trigger1 = root,stateno != 2200

[State 21100, Zeeky]
type = changestate
trigger1 = root,stateno = 2200
trigger1 = root,animelemtime(32)>=0
value = 22201

[State 21100, Angles]
type = AngleDraw
trigger1 = 1
scale = 2.0,2.0
ignorehitpause = 1

;--------------------------
; [1]318p: IttD FX
[Statedef 22201]
type    = A
movetype= I
physics = N
juggle  = 0
anim = 22201
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

[State 21100, Zeeky]
type = destroyself
trigger1 = animtime=0


[State 21100, Angles]
type = AngleDraw
trigger1 = 1
scale = 2.0,2.0
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
trigger2 = root,stateno=1200
trigger3 = time=0
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

;---------------------------------------------------------------------------
; Last Word: Illusionary Dominance
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
trigger1 = animelemtime(8)<0
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
id = 4000;2999+1000*(var(52)=2)
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
poweradd = 0;Deplete Power only if Type-B
unhittable = 1
movetime = 70

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
trigger1 = animelemtime(7)=0
value = 1200,10

[State 2100, PP]
type = playerpush
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
value = 0
ignorehitpause = 1

[State 2100, STS]
type = statetypeset
trigger1 = animelemtime(7)=0
statetype = A
physics = N
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7)=0
anim = 20000
ID = 20000
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vel = 0,0
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 2100, PA]
type = velset
trigger1 = animelemtime(7)=0
x = 30.0
y = -8.0

[State 4000, Friction]
type = Velmul
trigger1 = animelemtime(8)=0
x = 0.1
y = 0.2

[State 4000, Grav]
type = veladd
trigger1 = animelemtime(8)>0
y = 0.5

[State 2000, Spellcard Effect]
type = null;helper
trigger1 = animelemtime(7)=0
helpertype = normal
name = "DashFX"
id = 22100
stateno = 22100
pos = 0,-22
postype = p1
ownpal = 1
facing = 1

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=150)||1
trigger1 = (var(12):=111)||1

[State 200, 1]
type = HitDef
trigger1 = animelemno(0)=7
trigger1 = !movecontact && !movereversed 
attr = A,HA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))
kill = 0
guard.kill = 1
animtype = Back                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M;A                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,cond(numenemy,ceil(p2dist y+enemynear,const(size.mid.pos.y)),-50)
hitsound = s1,2                 ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 32
ground.hittime  = 32
guard.slidetime = 27
guard.hittime = 27
air.hittime  = 34
ground.velocity = -0.0,-13.0             ;Velocity at which opponent is pushed
airguard.velocity = -2.5,-2.5     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -0.0,-13.0
Ground.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Down.CornerPush.VelOff = 0
getpower = 0,0
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*1.0)
yaccel = 0.5
p2facing = 1
fall = 1
fall.recover = 0
id = 4000

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.80
ignorehitpause = 1
persistent = 0

[State 4200, CS]
type = changestate
trigger1 = movehit
trigger1 = numenemy
trigger1 = numtarget(4000)
trigger1 = target(4000),ishelper=0
value = 4002

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 2000, Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4001
ctrl = 0

;---------------------------------------------------------------------------
; Tengu Path Landing
[Statedef 4001]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 1211
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
; Illusionary Dominance Success
[Statedef 4002]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 4001
movehitpersist=1
facep2 = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, TargetState]
type = TargetState
trigger1 = time=0
trigger1 = numtarget(4000)
value = 4050
ID = 4000
ignorehitpause = 1

[State 52, 5]
type = ChangeState
trigger1 = time=50
value = 4003
ctrl = 0

;---------------------------------------------------------------------------
; Illusionary Dominance Success
[Statedef 4003]
type    = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1998
movehitpersist=1
facep2 = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 4003, PS]
type = posset
trigger1 = time = 0
x = 0
y = -100

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=10)||1

[State 4003, PSND]
type = playsnd
trigger1 = time=0||time=28||time=56||time=82||time=108||time=132||time=156||time=178
trigger2 = time=200||time=220||time=240||time=258||time=276||time=292
value = 4000,10

[State 2000, Spellcard Effect]
type = helper
trigger1 = time=0||time=56||time=108||time=156||time=200||time=240||time=276
trigger1 = (var(12):=12-floor(25.0*random/1000.0))||1
helpertype = normal
name = "DashFX"
id = 24010
stateno = 24010
pos = floor(324.0*cos(var(12)*pi/180.0)),floor(p2dist y)+floor(324.0*sin(var(12)*pi/180.0))
postype = p1
ownpal = 0
facing = -1

[State 2000, Spellcard Effect]
type = helper
trigger1 = time=28||time=82||time=132||time=178||time=220||time=258||time=292
trigger1 = (var(12):=12-floor(25.0*random/1000.0))||1
helpertype = normal
name = "DashFX"
id = 24010
stateno = 24010
pos = -floor(324.0*cos(var(12)*pi/180.0)),floor(p2dist y)+floor(324.0*sin(var(12)*pi/180.0))
postype = p1
ownpal = 0
facing = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
;movecamera = 0,0
ignorehitpause = 1

[State 801, TF]
type = targetfacing
trigger1 = time=0+5||time=56+5||time=108+5||time=156+5||time=200+5||time=240+5||time=276+5
value = 1
id = 4000

[State 801, TF]
type = targetfacing
trigger1 = time=28+5||time=82+5||time=132+5||time=178+5||time=220+5||time=258+5||time=292+5
value = -1
id = 4000

[State 810, PSND]
type = playsnd
trigger1 = time=0+5||time=28+5||time=56+5||time=82+5||time=108+5||time=132+5||time=156+5||time=178+5
trigger2 = time=200+5||time=220+5||time=240+5||time=258+5||time=276+5||time=292+5
value = 1,2

[State 810, TLA]
type = targetlifeadd
trigger1 = time=0+5||time=28+5||time=56+5||time=82+5||time=108+5||time=132+5||time=156+5||time=178+5
trigger2 = time=200+5||time=220+5||time=240+5||time=258+5||time=276+5||time=292+5
id = 4000
kill = 0
value = -ceil(var(11)*fvar(11))

[State 810, Target Poweradd]
type = targetpoweradd
trigger1 = time=0+5||time=28+5||time=56+5||time=82+5||time=108+5||time=132+5||time=156+5||time=178+5
trigger2 = time=200+5||time=220+5||time=240+5||time=258+5||time=276+5||time=292+5
id = 4000
value = ceil(var(11)*0.8*fvar(11))

[State 0, HitAdd]
type = HitAdd
trigger1 = time=0+5||time=28+5||time=56+5||time=82+5||time=108+5||time=132+5||time=156+5||time=178+5
trigger2 = time=200+5||time=220+5||time=240+5||time=258+5||time=276+5||time=292+5
value = 1
ignorehitpause = 1

[State 810, TS]
type = targetstate
trigger1 = time=0+5||time=28+5||time=56+5||time=82+5||time=108+5||time=132+5||time=156+5||time=178+5
trigger2 = time=200+5||time=220+5||time=240+5||time=258+5||time=276+5||time=292+5
id = 4000
value = 4051

[State 810, PSND]
type = varset
trigger1 = time=0+5||time=28+5||time=56+5||time=82+5||time=108+5||time=132+5||time=156+5||time=178+5
trigger2 = time=200+5||time=220+5||time=240+5||time=258+5||time=276+5||time=292+5
fvar(10)=fvar(10)*0.99

[State 52, 5]
type = ChangeState
trigger1 = time=292+16
value = 4004
ctrl = 0

;---------------------------------------------------------------------------
; Illusionary Dominance Success
[Statedef 4004]
type    = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 4003
movehitpersist=1
facep2 = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 4003, PS]
type = posadd
trigger1 = time = 0
x = floor(p2dist x)
;y = -100-floor(p2dist y)

[State 4003, PS]
type = posset
trigger1 = time = 0
trigger1 = numtarget(4000)
y = -100+floor(target(4000),pos y)

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = time=0
helpertype = normal
name = "Gust";Reppuken
ID = 24000
pos = 9,-9
postype = p1
stateno = 24020
ownpal = 1
facing = 1

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=40)||1

[State 4003, PSND]
type = playsnd
trigger1 = time=0
value = 2000,10

[State 1220, VS]
type = velset
trigger1 = time=0
x = 0.0
y = 20.0

[State 810, TS]
type = targetstate
trigger1 = p2dist y <= -(vel y)
id = 4000
value = 4052
persistent=0

[State 801, TF]
type = targetfacing
trigger1 = p2dist y <= -(vel y)
value = -1
id = 4000
persistent=0

[State 0, TargetBind]
type = TargetBind
trigger1 = numtarget(4000)
trigger1 = target(4000),stateno=4052
time = 1
id = 4000
pos = 0,10


[State 810, PSND]
type = playsnd
trigger1 = p2dist y <= -(vel y)
value = 1,2
persistent=0

[State 0, Explod]
type = Explod
trigger1 = p2dist y <= -(vel y)
anim = 8020+(random%2)
ID = 8000
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1.0,1.0
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent=0

[State 810, TLA]
type = targetlifeadd
trigger1 = p2dist y <= -(vel y)
id = 4000
kill = 0
value = -ceil(var(11)*fvar(11))
persistent=0

[State 810, Target Poweradd]
type = targetpoweradd
trigger1 = p2dist y <= -(vel y)
id = 4000
value = ceil(var(11)*0.8*fvar(11))
persistent=0

[State 0, HitAdd]
type = HitAdd
trigger1 = p2dist y <= -(vel y)
value = 1
ignorehitpause = 1
persistent=0

[State 810, PSND]
type = varset
trigger1 = p2dist y <= -(vel y)
fvar(10)=fvar(10)*0.98
persistent=0

[State 52, 5]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4005
ctrl = 0

;---------------------------------------------------------------------------
; Illusionary Dominance Success
[Statedef 4005]
type    = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 4004
movehitpersist=1
facep2 = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 2200, ESHAKE]
type = EnvShake
trigger1 = time=0
time = 20
ampl = -7
freq = 150
phase = 160

[State 4003, PS]
type = posset
trigger1 = time = 0
y = -10

[State 610, Helper]
Type = Helper
Trigger1 = time = 0
OwnPal = 1
PosType = P1
Name = "Dust"
Pos = 0,10
ID = 24021
StateNo = 24021
ignorehitpause = 1
persistent=0

[State 1202, VS]
type = velset
trigger1 = animelemtime(9)=0
x = -2.0
y = -5.5

[State 1202, VS]
type = veladd
trigger1 = animelemtime(9)>0
y = 0.5

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=390)||1

[State 4003, PSND]
type = playsnd
trigger1 = time=0
value = 2000,10

[State 810, TS]
type = targetstate
trigger1 = time=0
id = 4000
value = 4053
persistent=0

[State 801, TF]
type = targetfacing
trigger1 = time=0
value = -1
id = 4000
persistent=0

[State 0, TargetBind]
type = TargetBind
trigger1 = time=0
time = 1
id = 4000
pos = 0,0
persistent = 0

[State 810, PSND]
type = playsnd
trigger1 = time=0
value = 1,11
persistent=0

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 8020+(random%2)
ID = 8000
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1.0,1.0
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent=0

[State 810, TLA]
type = targetlifeadd
trigger1 = time=0
id = 4000
kill = 1
value = -ceil(var(11)*fvar(11))
persistent=0

[State 810, Target Poweradd]
type = targetpoweradd
trigger1 = time=0
id = 4000
value = ceil(var(11)*0.8*fvar(11))
persistent=0

[State 0, HitAdd]
type = HitAdd
trigger1 = time=0
value = 1
ignorehitpause = 1
persistent=0

[State 810, PSND]
type = varset
trigger1 = time=0
fvar(10)=fvar(10)*0.98
persistent=0

[State 52, 5]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4006
ctrl = 0

;---------------------------------------------------------------------------
; Tengu Drum - Whiff Landing
[Statedef 4006]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 1211
movehitpersist=1
facep2 = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State -3, Landing Sound]
type = PlaySnd
trigger1 = time=0
value = s40, 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 810, TS]
type = targetstate
trigger1 = time=2
id = 4000
value = 4054
persistent=0

[State 52, 5]
type = ChangeState
triggerall = !ishelper
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------
; Illusionary Dominance Hitstate
[Statedef 4050]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 2]
type = HitVelSet
trigger1 = HitShakeOver
x = 1
y = 1
persistent = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 52, 1]
type = posfreeze
trigger1 = !HitShakeOver

[State 4050, Grav]
type = Veladd
trigger1 = HitShakeOver
y = 0.45;0.35;GetHitVar(yaccel)

[State 4050, CA]
type = Changeanim
trigger1 = !HitShakeOver
value = 5002

[State 4050, CA]
type = Changeanim2
trigger1 = HitShakeOver
value = 4050

[State 4050, AS]
type = Angleset
trigger1 = !time
value = 0

[State 4050, AA]
type = Angleadd
trigger1 = HitShakeOver
value = 30

[State 4050, AD]
type = AngleDraw
trigger1 = HitShakeOver

[State 4050, AS]
type = Angleset
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 0

[State 4050, CS]
type = Changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 6100

[State 4050, Offset]
type = Offset
trigger1 = HitShakeOver
y = Const(size.mid.pos.y)

;---------------
; Illusionary Dominance Hitstate
[Statedef 4051]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 4050, Grav]
type = Veladd
trigger1 = time>10
y = 0.4;GetHitVar(yaccel)

[State 4050, CA]
type = Changeanim2
trigger1 = time=0
value = 4053

[State 4050, AS]
type = Angleset
trigger1 = !time
value = 0

[State 52, 1]
type = velset
trigger1 = time=10
x = 0
y = -4.0

[State 4050, AD]
type = AngleDraw
trigger1 = 1
ignorehitpause = 1

[State 4050, AS]
type = Angleset
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 0

[State 4050, CS]
type = Changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 6100

;---------------
; Illusionary Dominance Hitstate
[Statedef 4052]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 4050, CA]
type = Changeanim2
trigger1 = time=0
value = 4051

[State 4050, AS]
type = Angleset
trigger1 = !time
value = 0

;---------------
; Illusionary Dominance Hitstate
[Statedef 4053]
type    = L
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 4050, CA]
type = Changeanim
trigger1 = time=0
value = 5110

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 4050, AS]
type = Angleset
trigger1 = !time
value = 0

[State 4053, PS]
type = posset
trigger1 = time = 0
y = 0

;---------------
; Illusionary Dominance Hitstate
[Statedef 4054]
type    = L
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 4050, CA]
type = selfstate
trigger1 = time=0
trigger1 = !alive
value = 5150

[State 4050, CA]
type = selfstate
trigger1 = time=0
trigger1 = alive
value = 5120


;-----------------------
; Last Word Effect
[Statedef 24000]
anim = 24000
velset = 0,0
sprpriority = 5

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


;-----------------------
; Illusionary Dominance FX
[Statedef 24010]
anim = 4002
velset = 0,0
sprpriority = 0

[State 1999, Angleset]
type = varset
trigger1 = time=0
var(0) = root,var(12)

[State 2000, Spellcard Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "DashFX"
id = 24011
stateno = 24011
pos = 0,0
postype = p1
ownpal = 1
facing = 1


[State 1999, Varadd]
type = velset
trigger1 = 1
x = 54.0*cos(var(0)*pi/180.0)
y = -54.0*sin(var(0)*pi/180.0)

[State 0, Explod]
type = Explod
trigger1 = time=5
anim = 8020+(random%2)
ID = 8000
pos = floor(p2dist x)-20,-5
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1.0,1.0
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 12

[State 21920, AD]
type = angledraw
trigger1 = 1
value = var(0)
ignorehitpause = 1

;-----------------------
; Illusionary Dominance FX
[Statedef 24011]
anim = 24010
velset = 0,0
sprpriority = 5

[State 1999, Angleset]
type = varset
trigger1 = time=0
var(0) = parent,var(0)

[State 1999, Varadd]
type = velset
trigger1 = 1
x = 36.0*cos(var(0)*pi/180.0);36.0
y = -36.0*sin(var(0)*pi/180.0);36.0

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 24;12

[State 21920, AD]
type = angledraw
trigger1 = 1
value = var(0)
scale = 2.0,1.25
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

;-----------------------------
; Tengu Downburst FX
[Statedef 24020]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21210
sprpriority = 5

[State 21210, VS]
type = bindtoroot
trigger1 = root,stateno=4004
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
trigger1 = root,stateno!=4004

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 20
ignorehitpause = 1

;---------------------------------------------------------------------------
; Stomping Dust
[Statedef 24021]
type    = A
movetype= I
physics = N;A
ctrl = 0
anim = 1998
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
anim = 24020
ID = 24020
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
anim = 24020
ID = 24020
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
anim = 24020
ID = 24020
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
anim = 24020
ID = 24020
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
anim = 24020
ID = 24020
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
anim = 24020
ID = 24020
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
anim = 24020
ID = 24020
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
anim = 24020
ID = 24020
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
id = 24020
trans = addalpha
alpha = 256-floor(256.0*time/50.0),256
ignorehitpause = 1

[State 21000, Zeeky]
type = destroyself
trigger1 = time>=50;12

