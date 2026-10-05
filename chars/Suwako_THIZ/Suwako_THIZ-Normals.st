;---------------------------------------------------------------------------
; 5x
[Statedef 200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
;velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1
juggle = 0

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=25)||1 
trigger1 = (var(12):=0+5*(var(52)=1))||1

[State 200, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 200, 0
channel = 0

[State 200, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0, 0

[State 200, 1]
type = HitDef
trigger1 = animelemno(0)=3
trigger1 = movecontact = 0 && movereversed = 0
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-45
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = Low               ;Type: High, Low, Trip (def: Normal)
ground.velocity = -3.5             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3.5,-4.5           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
yaccel = 0.5
ground.slidetime = cond((var(32):=14+2*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=14+2*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=12+2*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=12+2*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=16+2*(var(42)!=0)+var(34))<=1,1,var(32))
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4) ;160% & 40% of base damage
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2) ;80% & 20% of base damage
p2facing = 1
ground.cornerpush.veloff = 0
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=16+2*(var(42)!=0)+var(34))<=1,1,var(32))+8;hitstun+pausetime value
id = 555

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15)) ;60% & 15% of base damage
persistent=0
ignorehitpause = 1

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = animelemtime(5) = 0
trigger2 = movecontact || movereversed
movetype = I
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.92;5
ignorehitpause = 1
persistent = 0

[State 210, JUMP CANCEL]
type = changestate
trigger1 = (var(57)>0 && var(52)=2) ;Spell Overdrive only
trigger1 = movecontact=[1,5]
trigger1 = command = "holdup" || command = "up"
value = 40
ctrl = 0

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 5y
[Statedef 210]
type    = S
movetype= A
physics = S
ctrl = 0
sprpriority = 1
anim = 210
facep2 = 1
juggle = 0

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=50)||1 
trigger1 = (var(12):=0+10*(var(52)=1))||1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 210,0
channel = 0

[State 200, Envshake]
type = EnvShake
trigger1 = animelemtime(4)=0
time = 20
ampl = -2
freq = 180
phase = 200

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 0,1
[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 210,10

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(4)=0
helpertype = normal ;player
name = "Rock"
ID = 20210
stateno = 20210
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 210, 2]
type = HitDef
trigger1 = !movecontact && !movereversed
trigger1 = animelemno(0)=5
attr = S, NA
animtype  = Medium
priority = 4,Hit
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
hitflag = MAF
guardflag = L
pausetime = 10,10
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -15,-35
hitsound   = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=15+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=15+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=20+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.velocity = -4.0
guard.velocity = -4.0
air.velocity = -4.0,-5.0
airguard.velocity = -4.0,-5.0
air.type = High
y.accel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 0
fall.recover = 1
fall.recovertime = cond((var(32):=20+3*(var(42)!=0)+var(34))<=1,1,var(32))+10;hitstun+pausetime value
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4) ;160%/40%
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2) ;80%/20%
p2facing = 1
id = 555

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15)) ;60%/15%
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85;90
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = animelemtime(6) = 0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent=0

[State 210, JUMP CANCEL]
type = changestate
trigger1 = (var(57)>0 && var(52)=2) ;Spell Overdrive only
trigger1 = movecontact=[1,5]
trigger1 = command = "holdup" || command = "up"
value = 40
ctrl = 0

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
; 5y Rock
[Statedef 20210]
type = A
movetype = I
physics = N
ctrl = 0
anim = 20210
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer

[State 21000, Pause Anim]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno(-1)

[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Rock"
ID = 20211
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Rock"
ID = 20211
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Rock"
ID = 20211
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Rock"
ID = 20211
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = animelemtime(6)<0
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = animelemtime(6)>=0
trans = addalpha
alpha = 256-floor(256.0*animelemtime(6)/17.0),floor(256.0*animelemtime(6)/17.0)
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 20210, BTR]
type = bindtoroot
trigger1 = root,stateno=210
trigger1 = root,stateno!=1940
pos = 0,0

[State 21000, CS]
type = destroyself
trigger1 = ishelper(20210)
trigger1 = root,stateno!=210
trigger2 = animtime=0
trigger3 = ishelper(21940)
trigger3 = root,stateno!=1940

[State 20210, AD]
type = angledraw
trigger1 = 1
scale = 0.5,0.5
ignorehitpause = 1

;-----------------------------
; 5y Rock Debris
[Statedef 20211]
type = A
movetype = I
physics = N
ctrl = 0
anim = 20211+1*(random%2)
sprpriority = 5
; Variable Usage
;----------------
; Var(1) - Angle
; fVar(0) - Vel Z
; fVar(1) - Scale

[State 20211, MVS]
type = null
triggerall = time = 0
trigger1 = (var(1):=-30-floor(51.0*random/1000.0))||1
trigger1 = (fvar(0):=0.1*(20+floor(61.0*random/1000.0)))||1
trigger1 = (fvar(1):=0.2+0.15*floor(11.0*random/1000.0)/10.0)||1

[State 20211, VS]
type = velset
trigger1 = time=0
x = fvar(0)*cos(var(1)*pi/180.0)
y = fvar(0)*sin(var(1)*pi/180.0)

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = animelemtime(6)<0
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time**2/900.0),floor(256.0*time**2/900.0)
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21000, CS]
type = destroyself
trigger1 = time>=30

[State 20210, AD]
type = angledraw
trigger1 = 1
value = var(1)
scale = fvar(1),fvar(1)
ignorehitpause = 1

;---------------------------------------------------------------------------
; 6y
[Statedef 215]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 215+1*(prevstateno=200||prevstateno=210||prevstateno=220||prevstateno=400||prevstateno=410||prevstateno=420)
sprpriority = 1
facep2 = 1
juggle = 0

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=60)||1 
trigger1 = (var(12):=0+12*(var(52)=1))||1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 0,2

[State 230, 2]
type = HitDef
trigger1 = !movecontact && !movereversed
trigger1 = !(prevstateno=200||prevstateno=210||prevstateno=220||prevstateno=400||prevstateno=410||prevstateno=420)
trigger1 = animelemno(0)=6
attr = S, NA
animtype  = Hard
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
hitflag = MAF
guardflag = H
priority = 4,hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-45
hitsound   = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=24+3*(var(42)!=0)+var(34))<=1,1,var(32))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=24+3*(var(42)!=0)+var(34))<=1,1,var(32))+10;hitstun+pausetime value
ground.velocity = -7.0
air.velocity = -7.0,-4.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
y.accel = 0.5
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2)
p2facing = 1
id = 555
[State 230, 2]
type = HitDef
trigger1 = !movecontact && !movereversed
trigger1 = (prevstateno=200||prevstateno=210||prevstateno=220||prevstateno=400||prevstateno=410||prevstateno=420)
trigger1 = animelemno(0)=6
attr = S, NA
animtype  = Hard
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
hitflag = MAF
guardflag = M
priority = 4,hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-45
hitsound   = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=24+3*(var(42)!=0)+var(34))<=1,1,var(32))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=24+3*(var(42)!=0)+var(34))<=1,1,var(32))+10;hitstun+pausetime value
ground.velocity = -7.0
air.velocity = -7.0,-4.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
y.accel = 0.5
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2)
p2facing = 1
id = 555

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = animelemtime(7) = 0
trigger2 = movecontact || movereversed
movetype = I
ignorehitpause = 1
persistent=0

[State 210, JUMP CANCEL]
type = changestate
trigger1 = (var(57)>0 && var(52)=2) ;Spell Overdrive only
trigger1 = movecontact=[1,5]
trigger1 = command = "holdup" || command = "up"
value = 40
ctrl = 0

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 5z
[Statedef 220]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 220
sprpriority = 1
facep2 = 1
juggle = 0

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=42)||1 ;80
trigger1 = (var(12):=0+8*(var(52)=1))||1

[State 220, Offset]
type = posadd
trigger1 = animelemtime(5)=0
x = 10
[State 220, Offset]
type = posadd
trigger1 = animelemtime(6)=0
x = 5
[State 220, Offset]
type = posadd
trigger1 = animelemtime(9)=0
x = -5
[State 220, Offset]
type = posadd
trigger1 = animelemtime(10)=0
x = -10

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(6)=0
helpertype = normal ;player
name = "Tree"
ID = 20220
stateno = 20220
pos = 40,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 220,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 0,2

[State 410, MHR]
type = movehitreset
trigger1 = animelemtime(8)=0

[State 230, 2]
type = HitDef
trigger1 = !movecontact && !movereversed
trigger1 = animelemno(0)=7||animelemno(0)=8
attr = S, NA
animtype  = Hard
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
hitflag = MAF
guardflag = M
priority = 4,hit
pausetime = 8,8
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-70
hitsound   = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=24+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=24+20+3*(var(42)!=0)+var(34))<=1,1,var(32))+8;hitstun+pausetime value
ground.velocity = -4.0,0;-5.0
air.velocity = -4.0,-8.0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
y.accel = 0.5
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2)
p2facing = 1
id = 555

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=7
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)>=8
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)=7
fvar(10) = fvar(10)*0.92
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemno(0)>=8
fvar(10) = fvar(10)*0.92
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = animelemtime(9) = 0
trigger2 = animelemtime(8)>=0
trigger2 = movecontact || movereversed
movetype = I
ignorehitpause = 1
persistent=0

[State 210, JUMP CANCEL]
type = changestate
trigger1 = movecontact=[1,5]
trigger1 = command = "holdup" || command = "up"
value = 40
ctrl = 0

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
; 5z Tree
[Statedef 20220]
type = A
movetype = I
physics = N
ctrl = 0
anim = 20220
sprpriority = 5
; Variable Usage
;----------------
; FVar(0) - Scale

[State 21000, Pause Anim]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno(-1)

[State 20220, ScaleMe]
type = null
trigger1 = animelemno(0)=1
trigger1 = (fvar(0):=0.25)||1
trigger2 = animelemno(0)=2
trigger2 = (fvar(0):=0.35)||1
trigger3 = animelemno(0)=3
trigger3 = (fvar(0):=0.45)||1
trigger4 = animelemno(0)=4
trigger4 = (fvar(0):=0.55)||1
trigger5 = animelemno(0)=5
trigger5 = (fvar(0):=0.65)||1
trigger6 = animelemno(0)=6
trigger6 = (fvar(0):=0.75)||1
trigger7 = animelemno(0)>=7
trigger7 = (fvar(0):=0.75)||1

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = animelemtime(9)<0
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = animelemtime(9)>=0
trans = addalpha
alpha = 256-floor(256.0*animelemtime(9)/10.0),floor(256.0*animelemtime(9)/10.0)
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 20210, BTR]
type = bindtoroot
trigger1 = root,stateno=220
trigger1 = root,animelemno(0)<9
pos = 40,0

[State 21000, CS]
type = destroyself
trigger1 = root,stateno!=220
trigger2 = animtime=0

[State 20210, AD]
type = angledraw
trigger1 = 1
value = -18
scale = fvar(0),fvar(0)
ignorehitpause = 1




;---------------------------------------------------------------------------
; 2x
[Statedef 400]
type    = C
movetype= A
physics = C
ctrl = 0
anim = 400
sprpriority = 1
facep2 = 1
juggle = 0;ifelse((var(33)&floor(exp(5*ln(2)) + 0.5)),2*!(var(57)>0 && var(52)=2),0) ;use Juggle

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=25)||1 
trigger1 = (var(12):=0+5*(var(52)=1))||1

[State -2, Lilypad]
type = helper
trigger1 = numhelper(30050)=0
trigger1 = time=0
name = "Lilypad"
ID = 30050
pos = 0,0
postype = p1
stateno = 30050
ownpal = 1
facing = 1
ignorehitpause = 1
supermovetime = 999999999
pausemovetime = 999999999

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0,0

[State 400, 2]
type = HitDef
trigger1 = animelemno(0)=3
trigger1 = movecontact = 0 && movereversed = 0
attr = C, NA
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
priority  = 4,hit
animtype  = Light
hitflag = MAF
guardflag = M
pausetime = 8,8
sparkno = S8000+(random%2)
guard.sparkno = S8030
sparkxy = -10,-85
hitsound   = s1,0
guardsound = s2,0
ground.type = High
air.type = Low
ground.velocity = -3.5
air.velocity = -3.5,-5.0
yaccel = 0.5
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2)
p2facing = 1
ground.cornerpush.veloff = 0
ground.slidetime = cond((var(32):=14+2*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=14+2*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=12+2*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=12+2*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=16+2*(var(42)!=0)+var(34))<=1,1,var(32))
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=16+2*(var(42)!=0)+var(34))<=1,1,var(32))+8;hitstun+pausetime value
id = 555
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.95;2
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = animelemtime(4) = 0
trigger2 = movecontact || movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 210, JUMP CANCEL]
type = changestate
trigger1 = movecontact=[1,5]
trigger1 = command = "holdup" || command = "up"
value = 40
ctrl = 0

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; 2y
[Statedef 410]
type    = C
movetype= A
physics = C
ctrl = 0
anim = 410
sprpriority = 1
facep2 = 1
juggle = 0;ifelse((var(33)&floor(exp(6*ln(2)) + 0.5)),2*!(var(57)>0 && var(52)=2),0) ;use Juggle

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=31)||1 
trigger1 = (var(12):=0+5*(var(52)=1))||1

[State -2, Lilypad]
type = helper
trigger1 = numhelper(30050)=0
trigger1 = time=0
name = "Lilypad"
ID = 30050
pos = 0,0
postype = p1
stateno = 30050
ownpal = 1
facing = 1
ignorehitpause = 1
supermovetime = 999999999
pausemovetime = 999999999

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(9)=0
value = 210,0
channel = 0

[State 200, Envshake]
type = EnvShake
trigger1 = animelemtime(9)=0
time = 20
ampl = -2
freq = 180
phase = 200

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(9)=0
helpertype = normal ;player
name = "Rock"
ID = 20410
stateno = 20410
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(9)=0
value = 210,10
channel = 1

[State 410, MHR]
type = movehitreset
trigger1 = animelemtime(11)=0

[State 210, 2]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1 = animelemno(0)=10||animelemno(0)=11
attr = C, NA
animtype  = Medium
priority = 4,hit
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
hitflag = MAF
guardflag = M
pausetime = 8,8
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -15,-45
hitsound   = s1,2
guardsound = s2,0
ground.type = High
ground.velocity = -4.0
guard.velocity = -4.0
airguard.velocity = -4.0,-6.5
air.type = Low
air.velocity = -4.0,-6.5
y.accel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.slidetime = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=15+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=15+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=20+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=20+3*(var(42)!=0)+var(34))<=1,1,var(32))+8;hitstun+pausetime value
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4) ;160%/40%
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2) ;80%/20%
p2facing = 1
id = 555

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=10
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemtime(11)>=0
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = animelemno(0)=10
trigger1 = movehit
fvar(10) = fvar(10)*0.948;85
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(11)>=0
trigger1 = movehit
fvar(10) = fvar(10)*0.948;85
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = animelemtime(12)=0
trigger2 = animelemtime(11)>=0
trigger2 = (movecontact||movereversed)
movetype = I
ignorehitpause = 1
persistent = 0

[State 210, JUMP CANCEL]
type = changestate
trigger1 = (var(57)>0 && var(52)=2) ;Spell Overdrive only
trigger1 = movecontact=[1,5]
trigger1 = command = "holdup" || command = "up"
value = 40
ctrl = 0

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-----------------------------
; 2y Rock
[Statedef 20410]
type = A
movetype = I
physics = N
ctrl = 0
anim = 20410
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer

[State 21000, Pause Anim]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno(-1)

[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Rock"
ID = 20211
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Rock"
ID = 20211
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Rock"
ID = 20211
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Rock"
ID = 20211
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = animelemtime(7)<0
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = animelemtime(7)>=0
trans = addalpha
alpha = 256-floor(256.0*animelemtime(7)/10.0),floor(256.0*animelemtime(7)/10.0)
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 20210, BTR]
type = bindtoroot
trigger1 = root,stateno=410
pos = 0,0

[State 21000, CS]
type = destroyself
trigger1 = root,stateno!=410
trigger2 = animtime=0

[State 20210, AD]
type = angledraw
trigger1 = 1
scale = 0.85,0.85;1.0,1.0
ignorehitpause = 1

;---------------------------------------------------------------------------
; 2z
[Statedef 420]
type    = C
movetype= A
physics = C
ctrl = 0
anim = 420
sprpriority = 1
facep2 = 1
juggle = 0;ifelse((var(33)&floor(exp(7*ln(2)) + 0.5)),2*!(var(57)>0 && var(52)=2),0) ;use Juggle

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=80)||1 
trigger1 = (var(12):=0+16*(var(52)=1))||1

[State -2, Lilypad]
type = helper
trigger1 = numhelper(30050)=0
trigger1 = time=0
name = "Lilypad"
ID = 30050
pos = 0,0
postype = p1
stateno = 30050
ownpal = 1
facing = 1
ignorehitpause = 1
supermovetime = 999999999
pausemovetime = 999999999

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(9)=0
value = 210,0
channel = 0

[State 200, Envshake]
type = EnvShake
trigger1 = animelemtime(9)=0
time = 20
ampl = -3
freq = 180
phase = 200

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(9)=0
helpertype = normal ;player
name = "Rock"
ID = 20420
stateno = 20420
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
[State 215, Projectile]
type = Helper
trigger1 = animelemtime(9)=0
helpertype = normal ;player
name = "Rock"
ID = 20420
stateno = 20420
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = -1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(9)=0
value = 0,2
channel = 1

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(9)=0
value = 210,10
channel = 1

[State 430, 2]
type = HitDef
trigger1 = animelemno(0)=10
trigger1 = !movecontact && !movereversed
attr = C, NA
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
animtype = Heavy
hitflag = MAF
guardflag = L
priority = 4,hit
pausetime = 10,10
sparkno = s8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-20
hitsound   = s1,2
guardsound = s2,0
ground.type = Low;trip
ground.velocity = -3.5,-4.5
guard.velocity = -7.5
airguard.velocity = -7.5,-4.5
air.type = Low
air.velocity = -3.5,-4.5
y.accel = 0.7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.slidetime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=29+3*(var(42)!=0)+var(34))<=1,1,var(32))
fall = 1
fall.recover = 0
fall.yvelocity = 0
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2)
p2facing = 1
p2stateno = cond(sysvar(4)=0,470,-1)
p2getp1state = cond(sysvar(4)=0,1,0)
id = 420
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.75
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = AnimElemTime(11) = 0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 210, JUMP CANCEL]
type = changestate
trigger1 = (var(57)>0 && var(52)=2) ;Spell Overdrive only
trigger1 = movecontact=[1,5]
trigger1 = command = "holdup" || command = "up"
value = 40
ctrl = 0

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-----------------------------
; 2z Rock
[Statedef 20420]
type = A
movetype = I
physics = N
ctrl = 0
anim = 20210
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer

[State 21000, Pause Anim]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno(-1)

[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Rock"
ID = 20211
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Rock"
ID = 20211
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Rock"
ID = 20211
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Rock"
ID = 20211
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = animelemtime(6)<0
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = animelemtime(6)>=0
trans = addalpha
alpha = 256-floor(256.0*animelemtime(6)/17.0),floor(256.0*animelemtime(6)/17.0)
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 20210, BTR]
type = bindtoroot
trigger1 = root,stateno=420
pos = 0,0

[State 21000, CS]
type = destroyself
trigger1 = root,stateno!=420
trigger2 = animtime=0

[State 20210, AD]
type = angledraw
trigger1 = 1
scale = 0.5,0.5
ignorehitpause = 1

;---------------------------------------------------------------------------
; 3z
[Statedef 425]
type    = C
movetype= A
physics = C
ctrl = 0
anim = 425+1*(prevstateno=200||prevstateno=210||prevstateno=220||prevstateno=400||prevstateno=410||prevstateno=420)
sprpriority = 1
facep2 = 1
juggle = 0

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=70)||1 
trigger1 = (var(12):=0+14*(var(52)=1))||1

[State -2, Lilypad]
type = helper
trigger1 = numhelper(30050)=0
trigger1 = time=0
name = "Lilypad"
ID = 30050
pos = 0,0
postype = p1
stateno = 30050
ownpal = 1
facing = 1
ignorehitpause = 1
supermovetime = 999999999
pausemovetime = 999999999

[State 425, STS]
type = statetypeset
trigger1 = animelemtime(6)=0
statetype=A
physics=N

[State 425, PA]
type = posadd
trigger1 = animelemtime(6)=0
y = -13

[State 425, VelS]
type = velset
trigger1 = animelemtime(6)=0
x = 5.0
y = -4.0

[State 425, VelS]
type = veladd
trigger1 = animelemtime(6)>0
y = 0.4

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 210,0
channel = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 40,10


[State 430, 2]
type = HitDef
trigger1 = anim=425
trigger1 = animelemno(0)>=8
trigger1 = !movecontact && !movereversed
attr = A, NA
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
animtype = Heavy
hitflag = MAF
guardflag = HA
priority = 4,hit
pausetime = 10,10
sparkno = s8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-30
hitsound   = s1,2
guardsound = s2,0
ground.type = High
ground.velocity = -10.5,-3.5
guard.velocity = -10.5
airguard.velocity = -10.5,-3.5
air.type = High
air.velocity = -10.5,-3.5
y.accel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.slidetime = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=29+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=29+20+3*(var(42)!=0)+var(34))<=1,1,var(32))+10;hitstun+pausetime value
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2)
p2facing = 1

[State 430, 2]
type = HitDef
trigger1 = anim=426
trigger1 = animelemno(0)>=8
trigger1 = !movecontact && !movereversed
attr = A, NA
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
animtype = Heavy
hitflag = MAF
guardflag = MA
priority = 4,hit
pausetime = 10,10
sparkno = s8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-30
hitsound   = s1,2
guardsound = s2,0
ground.type = High
ground.velocity = -10.5,-3.5
guard.velocity = -10.5
airguard.velocity = -10.5,-3.5
air.type = High
air.velocity = -10.5,-3.5
y.accel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.slidetime = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=29+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=29+20+3*(var(42)!=0)+var(34))<=1,1,var(32))+10;hitstun+pausetime value
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2)
p2facing = 1

id = 420
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.80
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 230, 3]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 426

;---------------------------------------------------------------------------
; 3z
[Statedef 426]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 427
sprpriority = 1
facep2 = 0
juggle = 0
movehitpersist=1

[State -3, Landing Sound]
type = PlaySnd
trigger1 = time=0
value = s40, 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; j5x
[Statedef 600]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 600
sprpriority = 1
juggle = 0

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=15)||1 
trigger1 = (var(12):=0+3*(var(52)=1))||1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0||animelemtime(6)=0||animelemtime(8)=0
value = 0,0

[State 0, MoveHitReset]
type = MoveHitReset
trigger1 = animelemtime(6)=0||animelemtime(8)=0

[State 400, 2]
type = HitDef
trigger1 = animelemno(0)=4||animelemno(0)=6||animelemno(0)=8
trigger1 = !movecontact && !movereversed
attr = A, NA
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
priority  = 4,hit
animtype  = Light
hitflag = MAF
guardflag = HA
pausetime = 6,6
sparkno = S8000+(random%2)
guard.sparkno = S8030
sparkxy = -10,-20
hitsound   = s1,0
guardsound = s2,0
ground.type = High
ground.velocity = -3.5
air.velocity = -3.5,-2.0
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2)
p2facing = 1
ground.slidetime = cond((var(32):=18+2*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=18+2*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=14+2*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=14+2*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=20+2*(var(42)!=0)+var(34))<=1,1,var(32))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=20+1*(var(42)!=0)+var(34))<=1,1,var(32))+6;hitstun+pausetime value
id = 555

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=4
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=6
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=8
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = animelemno(0)=4
trigger1 = movehit
fvar(10) = fvar(10)*0.973
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemno(0)=6
trigger1 = movehit
fvar(10) = fvar(10)*0.973
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemno(0)=8
trigger1 = movehit
fvar(10) = fvar(10)*0.973
ignorehitpause = 1
persistent = 0

[State 600, FLAG RECOVERY]
type = StateTypeSet
trigger1 = animelemtime(9) = 0
trigger2 = animelemtime(8) >= 0
trigger2 = movecontact||movereversed
movetype = I        ;I,A,H
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; j5y
[Statedef 610]
type    = A
movetype= A
physics = A;N
ctrl = 0
anim = 610
sprpriority = 1
juggle = 0

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=28)||1 
trigger1 = (var(12):=0+4*(var(52)=1))||1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0||animelemtime(9)=0||animelemtime(11)=0||animelemtime(13)=0
value = 0,0

[State 0, MoveHitReset]
type = MoveHitReset
trigger1 = animelemtime(11)=0

[State 210, 2]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1 = animelemno(0)=[7,8]
trigger2 = animelemno(0)=[11,12]
attr = A, NA
animtype  = Medium
priority = 4,hit
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
hitflag = MAF
guardflag = HA
pausetime = 8,8
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -15,-35
hitsound   = s1,1
guardsound = s2,0
ground.type = High
ground.velocity = -2.5
guard.velocity = -2.5
airguard.velocity = -2.5,-3.5
air.type = High
air.velocity = -2.5,-3.5
y.accel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.slidetime = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=14+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=14+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=20+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=20+3*(var(42)!=0)+var(34))<=1,1,var(32))+8;hitstun+pausetime value
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2)
p2facing = 1
id = 555

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)=[7,10]
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = animelemno(0)>=11
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = animelemno(0)=[7,10]
trigger1 = movehit
fvar(10) = fvar(10)*0.92
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemno(0)>=11
trigger1 = movehit
fvar(10) = fvar(10)*0.92
ignorehitpause = 1
persistent = 0

[State 610, STS]
type = statetypeset
trigger1 = animelemtime(13) = 0
trigger2 = animelemtime(11)>=0
trigger2 = (movecontact||movereversed)
movetype = I
ignorehitpause = 1

;---------------------------------------------------------------------------
; j5z
[Statedef 620]
type    = A
movetype= A
physics = A
ctrl = 0
;velset = 0,0
anim = 620
sprpriority = 1
juggle = 0

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=60)||1 
trigger1 = (var(12):=0+12*(var(52)=1))||1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 220,0
channel = 0

[State 620, VS]
type = Velset
trigger1 = animelemtime(7)=0
x = 1.0
y = -4.0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 0,2

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(7)=0
helpertype = normal ;player
name = "Tree"
ID = 20620
stateno = 20620
pos = 55,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 620, 1]
type = HitDef
triggerall = movecontact = 0 && movereversed = 0
trigger1 = animelemno(0)=8
attr = A, NA
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-75
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.velocity = -2.5,0.0
air.velocity = -2.5,-7.5
yaccel = 0.5
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2)
p2facing = 1
id = 555
ground.slidetime = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=18+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=14+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=14+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=20+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=20+20+3*(var(42)!=0)+var(34))<=1,1,var(32))+10;hitstun+pausetime value

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),var(11)*0.15)
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = animelemtime(9)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

;-----------------------------
; j5z Tree
[Statedef 20620]
type = A
movetype = A
physics = N
ctrl = 0
juggle = 1
anim = 20620
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer
; Var(11) - Damage
; Var(12) - Chip Dmg

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=60)||1
trigger1 = (var(12):=12)||1

[State 20620, PS]
type = posset
trigger1 = time = 0
y = 0

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,0
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
Stateno = 20622
IgnoreHitPause = 1

[State 1210, Activate]
type = ChangeState
trigger1 = 1
value = 20621

[State 20210, AD]
type = angledraw
trigger1 = 1
scale = 0.5,0.5
ignorehitpause = 1

;-----------------------------
; j5z Tree
[Statedef 20621]
type = A
movetype = A
physics = N
ctrl = 0
juggle = 1
velset = 0,0
sprpriority = 5
movehitpersist=1
; Variable Usage
;----------------
; Var(0) - Timer
; Var(11) - Damage
; Var(12) - Chip Dmg

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 20220, ScaleMe]
type = null
trigger1 = animelemno(0)=1
trigger1 = (fvar(0):=0.25)||1
trigger2 = animelemno(0)=2
trigger2 = (fvar(0):=0.35)||1
trigger3 = animelemno(0)=3
trigger3 = (fvar(0):=0.45)||1
trigger4 = animelemno(0)=4
trigger4 = (fvar(0):=0.55)||1
trigger5 = animelemno(0)=5
trigger5 = (fvar(0):=0.65)||1
trigger6 = animelemno(0)=6
trigger6 = (fvar(0):=0.75)||1
trigger7 = animelemno(0)>=7
trigger7 = (fvar(0):=0.75)||1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP;,AT
slot = 0
time = -1
Stateno = 20622
IgnoreHitPause = 1


[State 1012, HD]
type = HitDef
trigger1 = time
trigger1 = movecontact = 0 && movereversed = 0
attr = A,SP
animtype  = Back
damage = ceil(var(11)*root,fvar(11)),ceil(var(12)*root,fvar(11))
hitflag = MAF
guardflag = MA
getpower = ceil(var(11)*1.6*root,fvar(11)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*root,fvar(11)),ceil(var(11)*0.2)
sparkno = s8020+(random%2)
guard.sparkno = S8030
pausetime = 0,10
guard.pausetime = 0,10
sparkxy = -10,-75
hitsound   = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = cond((var(32):=22+20+root,var(34))<=1,1,var(32));27*2
ground.hittime  = cond((var(32):=22+20+root,var(34))<=1,1,var(32))
guard.slidetime = 22
guard.hittime = 22
air.hittime = cond((var(32):=24+20+root,var(34))<=1,1,var(32))
air.animtype = Back
ground.velocity = -2.0,-10.5
guard.velocity = -2.0
air.velocity = -2.0,-10.5
airguard.velocity = -2.0,-10.5
yaccel = 0.5
p1sprpriority=5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=24+20+root,var(34))<=1,1,var(32))+10;hitstun+pausetime value
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0
p2facing = 1
id = 620

[State 2011, Helper Hit Flag]
type = parentvarset
trigger1 = MoveHit=1
trigger1 = p2stateno != [120,159]
var(35)=2
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = movecontact || movereversed
movetype = I
ignorehitpause = 1

[State -2, Spirit Gauge Increase]
type = parentvaradd
triggerall = root,var(52)=2 ;Type-C Only
triggerall = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*root,fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.85
ignorehitpause = 1
persistent = 0

[State 1210, Activate]
type = ChangeState
trigger1 = movecontact||movereversed
trigger2 = animelemtime(6)=0
value = 20622

[State 20210, AD]
type = angledraw
trigger1 = 1
value = -18
scale = fvar(0),fvar(0)
ignorehitpause = 1

;-----------------------------
; j5z Tree
[Statedef 20622]
type = A
movetype = I
physics = N
ctrl = 0
juggle = 1
velset = 0,0
sprpriority = 5
movehitpersist=1
; Variable Usage
;----------------
; Var(0) - Timer
; Var(11) - Damage
; Var(12) - Chip Dmg

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = animelemtime(9)<0
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = animelemtime(9)>=0
trans = addalpha
alpha = 256-floor(256.0*animelemtime(9)/10.0),floor(256.0*animelemtime(9)/10.0)
ignorehitpause = 1

[State 20220, ScaleMe]
type = null
trigger1 = animelemno(0)=1
trigger1 = (fvar(0):=0.25)||1
trigger2 = animelemno(0)=2
trigger2 = (fvar(0):=0.35)||1
trigger3 = animelemno(0)=3
trigger3 = (fvar(0):=0.45)||1
trigger4 = animelemno(0)=4
trigger4 = (fvar(0):=0.55)||1
trigger5 = animelemno(0)=5
trigger5 = (fvar(0):=0.65)||1
trigger6 = animelemno(0)=6
trigger6 = (fvar(0):=0.75)||1
trigger7 = animelemno(0)>=7
trigger7 = (fvar(0):=0.75)||1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1210, Activate]
type = ChangeState
trigger1 = animtime=0
value = 999

[State 20210, AD]
type = angledraw
trigger1 = 1
value = -18
scale = fvar(0),fvar(0)
ignorehitpause = 1

;---------------------------------------------------------------------------
; j5z
[Statedef 625]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 625
sprpriority = 1
juggle = 0

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=75)||1 
trigger1 = (var(12):=0+15*(var(52)=1))||1

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = 625,10

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(7)<0
persistent=5
helpertype = normal ;player
name = "Bubble"
ID = 20625
stateno = 20625
pos = 0,-45
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(7)=0
persistent=5
helpertype = normal ;player
name = "Bubble"
ID = 20626
stateno = 20625
pos = 0,-45
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(7)=0
persistent=5
helpertype = normal ;player
name = "Bubble"
ID = 20626
stateno = 20625
pos = 0,-45
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(7)=0
persistent=5
helpertype = normal ;player
name = "Bubble"
ID = 20626
stateno = 20625
pos = 0,-45
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(7)=0
persistent=5
helpertype = normal ;player
name = "Bubble"
ID = 20626
stateno = 20625
pos = 0,-45
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 1210, Activate]
type = ChangeState
trigger1 = animelemtime(7)=0
value = 626

;---------------------------------------------------------------------------
; j5z
[Statedef 626]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 626
sprpriority = 1
juggle = 0
facep2=0

[State 626, PS]
type = posset
trigger1 = time = 0
y = 0

[State 626, PS]
type = posadd
trigger1 = time = 0
x = -40

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=75)||1 
trigger1 = (var(12):=0+15*(var(52)=1))||1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 220,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 625,11

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(6)=0
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

[State 620, STS]
type = statetypeset
trigger1 = animelemtime(6)=0
statetype=A
physics=N

[State 625, Velset]
type = velset
trigger1 = animelemtime(6)=0
x = 7.0
y = -4.5

[State 625, Velset]
type = veladd
trigger1 = animelemtime(6)>0
y = 0.45;25

[State 620, 1]
type = HitDef
triggerall = movecontact = 0 && movereversed = 0
trigger1 = animelemno(0)=[6,7]
attr = A, NA
damage = ceil(var(11)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(12)*fvar(11))                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-60
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.velocity = -10.5,-6.5
air.velocity = -10.5,-6.5
yaccel = 0.5
getpower = ceil(var(11)*1.6*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.4)
givepower = ceil(var(11)*0.8*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(11)*0.2)
p2facing = 1
id = 555
ground.slidetime = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=22+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32))
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = cond((var(32):=27+20+3*(var(42)!=0)+var(34))<=1,1,var(32))+10;hitstun+pausetime value

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-C Only
trigger1 = movecontact
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*fvar(11)*ifelse(var(42),1.25,1.0)),var(11)*0.15)
persistent=0
ignorehitpause = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = animelemtime(8)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1210, Activate]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 627

;---------------------------------------------------------------------------
; j5z
[Statedef 627]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 627
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

;-----------------------------
; j2z Bubble
[Statedef 20625]
type = A
movetype = I
physics = N
ctrl = 0
anim = 20625
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer
; Var(1) - Angle
; fvar(0) - Scale
; fvar(1) - Velocity

[State 20625, VS]
type = null
triggerall = time = 0
trigger1 = (fvar(0):=0.01*(75+floor(36.0*random/1000.0)))||1
trigger1 = (var(1):=floor(360.0*random/1000.0))||1

[State 20625, VS]
type = null
triggerall = time = 0
trigger1 = ishelper(20625)
trigger1 = (fvar(1):=4.0+0.1*floor(31.0*random/1000.0))||1
trigger2 = !ishelper(20625)
trigger2 = (fvar(1):=8.0+0.2*floor(31.0*random/1000.0))||1

[State 20625, VS]
type = velset
trigger1 = time = 0
x = fvar(1)*cos(var(1)*pi/180.0)
y = fvar(1)*sin(var(1)*pi/180.0)

[State 20625, VS]
type = velmul
trigger1 = time
x = 0.9
y = 0.9

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/20.0),256
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1210, Activate]
type = Destroyself
trigger1 = time>=20

[State 20210, AD]
type = angledraw
trigger1 = 1
scale = fvar(0),fvar(0)
ignorehitpause = 1

;-----------------------------
; j2z Splash
[Statedef 20626]
type = A
movetype = I
physics = N
ctrl = 0
anim = 20626
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer
; Var(1) - Angle
; fvar(0) - X-Scale
; fvar(1) - Y-Scale

[State 20625, VS]
type = null
trigger1 = time = 0
trigger1 = (fvar(0):=1.5)||1
trigger1 = (fvar(1):=1.5)||1
trigger2 = time%4=1
trigger2 = (fvar(0):=fvar(0)+fvar(0)*(0.05+time*0.0015*2))||1
trigger2 = (fvar(1):=fvar(1)-fvar(1)*(0.05+time*0.001*2))||1
trigger3 = time%4=2
trigger3 = (fvar(0):=fvar(0)+fvar(0)*(0.01+time*0.0003*2))||1
trigger3 = (fvar(1):=fvar(1)-fvar(1)*(0.01+time*0.0002*2))||1
trigger4 = time%4=3
trigger4 = (fvar(0):=fvar(0)-fvar(0)*(0.1-time*0.003*2))||1
trigger4 = (fvar(1):=fvar(1)+fvar(1)*(0.1-time*0.002*2))||1
trigger5 = time && time%4=0
trigger5 = (fvar(0):=fvar(0)+fvar(0)*(0.1-time*0.003*2))||1
trigger5 = (fvar(1):=fvar(1)-fvar(1)*(0.1-time*0.002*2))||1

[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Splash"
ID = 20627
stateno = 20627
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Splash"
ID = 20627
stateno = 20627
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Splash"
ID = 20627
stateno = 20627
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Splash"
ID = 20627
stateno = 20627
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
[State 215, Projectile]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "Splash"
ID = 20627
stateno = 20627
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/45.0),256
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1210, Activate]
type = Destroyself
trigger1 = time>=45

[State 20210, AD]
type = angledraw
trigger1 = 1
scale = 1.05*fvar(0),1.05*fvar(1)
ignorehitpause = 1

;-----------------------------
; j2z Splash
[Statedef 20627]
type = A
movetype = I
physics = N
ctrl = 0
anim = 20627
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Sprite Angle
; Var(1) - Angle
; fvar(0) - Abs Vel

[State 20625, VS]
type = null
trigger1 = time = 0
trigger1 = (var(0):=floor(360.0*random/1000.0))||1
trigger1 = (var(1):=200+floor(141.0*random/1000.0))||1
trigger1 = (fvar(0):=5.0+(0.1*floor(51.0*random/1000.0)))||1


[State 20627, VA]
type = velset
trigger1 = time=0
x = fvar(0)*cos(var(1)*pi/180.0)
y = fvar(0)*sin(var(1)*pi/180.0)

[State 20627, Grav]
type = veladd
trigger1 = time
y = 0.15

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/40.0),256
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1210, Activate]
type = Destroyself
trigger1 = time>=40

[State 20210, AD]
type = angledraw
trigger1 = 1
value = var(0)
scale = 1.5,1.5
ignorehitpause = 1

;---------------------------------------------------------------------------
; Grab Attempt
[Statedef 800]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 800
sprpriority = 1
facep2 = 1
juggle = 0

[State 800, CS]
type = changestate
trigger1 = numtarget(800)
trigger1 = movehit
value = 801
ignorehitpause = 1
persistent = 0

[State 800, CS]
type = changestate
trigger1 = animtime=0
value = 220;+5*(var(10)=2);Change to s.HP if throw whiffs

[State 800, Throw]
type = varset
trigger1 = AILevel <= 0
trigger1 = time = 0
var(10)=cond((command="holdback"&&command!="holdfwd"),1,cond((command!="holdback"&&command="holdfwd"),2,0))
[State 800, Tech Reset]
type = varset
trigger1 = 1
var(13) = 0
[State 800, Tech Set]
type = varset
trigger1 = numenemy > 0
trigger1 = enemynear(0),statetype != A
trigger1 = (enemynear(0),stateno = [0,999]) || enemynear(0),movetype = H
trigger1 = enemynear(0),stateno != [200,799]
trigger1 = enemynear(0),stateno != [100,119]
var(13) = 15+12*(enemynear(0),movetype = H)
[State 800, HD]
type = HitDef
trigger1 = var(30) = 0 ;ONLY WHEN THROWS ARE ALLOWED
trigger1 = time=0
trigger1 = var(10)!=0
attr = S, NT
hitflag = M;-
priority = 7, Miss
sparkno = -1
guard.sparkno = -1
hitsound = s1,0
guardsound = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
;p1stateno = 801;+(var(10)=1)
guard.dist = 0
;fall = 1
;fall.recover = 0
y.accel = 0.5
getpower = 0,0
givepower = 0,0
guard.dist = 0
ID = 800
numhits = 1

;[State 800, CS]
;type = changestate
;trigger1 = animtime=0
;value = 220+5*(var(10)=2);Change to s.HP if throw whiffs

;---------------------------------------------------------------------------
;Fwd Grab - Part 2
[Statedef 801]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 801+0*floor(var(6):=0);Tech Flag
velset = 0, 0
sprpriority = 1

[State 801, TS]
type = targetstate
trigger1 = time = 0
id = 800
value = 850

[State 801, TF]
type = targetfacing
trigger1 = time = 0
value = -1
id = 800

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = var(13)>0
anim = 890
ID = 20890
pos = 0,-120
postype = p2
facing = 1
bindtime = -1
vel = 0,0
removetime = var(13)
pausemovetime = 0
scale = 0.25,0.25
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = var(13)>16
anim = 890
ID = 20890
pos = 20,-120
postype = p2
facing = 1
bindtime = -1
vel = 0,0
removetime = var(13)
pausemovetime = 0
scale = 0.25,0.25
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1

[State 801, Tech Success]
type = varset;ChangeState
triggerall = NumTarget
triggerall = var(13)>0
trigger1 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger1 = (target,AILevel=0)&&(target,command = "x" || target,command = "y" || target,command = "z")
trigger2 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger2 = (target,AILevel=0)&&(target,command = "a" || target,command = "b" || target,command = "c")
trigger3 = (target,AILevel>0)&&(random<=floor(100*AIlevel*AIlevel/64.0))
;value = 890
var(6)=1

[State 801, Tech Success]
type = changestate
trigger1 = var(6)=1
trigger1 = time=28;
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(13) > 0
var(13) = -1

[State 810, TS]
type = targetstate
trigger1 = time = 0
value = 850

[State 801, TF]
type = targetfacing
trigger1 = time = 0
;trigger2 = animelemtime(5)=0
;trigger2 = var(10)=1
value = -1
id = 800

[State 810, T]
type = turn
trigger1 = animelemtime(2)=0
trigger1 = var(10)=1

[State 801, TF]
type = targetfacing
trigger1 = animelemtime(2)=0
trigger1 = var(10)=1
value = -1
id = 800

[State 801, PP]
type = playerpush
trigger1 = 1
value = 0

[State 810, Bind]
type = TargetBind
trigger1 = time = 0
pos = 25,0;36, 0

[State 810, Bind]
type = TargetBind
trigger1 = animelemtime(2)=0
trigger1 = var(10)=1
pos = 25,0;36, 0
;===============
; END SYSTEM FX
;===============

[State 810, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 800,0
channel = 0

[State 810, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 800,10

[State 0, Helper]
type = Helper
trigger1 = animelemtime(4)=0||animelemtime(4)=6||animelemtime(4)=12||animelemtime(4)=18||animelemtime(4)=24
trigger2 = animelemtime(4)=3||animelemtime(4)=9||animelemtime(4)=15||animelemtime(4)=21||animelemtime(4)=27
name = "River"
ID = 20800+1*(animelemtime(4)>0)
stateno = 20800
pos = -320,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 810, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=10||animelemtime(4)=16||animelemtime(4)=22||animelemtime(4)=28||animelemtime(4)=34
value = S1,11
;channel = 3

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=10||animelemtime(4)=16||animelemtime(4)=22||animelemtime(4)=28||animelemtime(4)=34
anim = 8020+(random%2)
ID = 8000
pos = 45,-35
random = 30,40
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

[State 810, TS]
type = targetstate
trigger1 = animelemtime(4)=10||animelemtime(4)=16||animelemtime(4)=22||animelemtime(4)=28;||animelemtime(4)=34
value = 855

[State 810, TLA]
type = targetlifeadd
trigger1 = animelemtime(4)=10||animelemtime(4)=16||animelemtime(4)=22||animelemtime(4)=28||animelemtime(4)=34
id = 800
kill = 0+1*(animelemtime(4)>=34)
value = -ceil(15.0*fvar(11))

[State 810, Poweradd]
type = poweradd
trigger1 = animelemtime(4)=10||animelemtime(4)=16||animelemtime(4)=22||animelemtime(4)=28||animelemtime(4)=34
value = ceil(15.0*1.6*fvar(11))

[State 810, Target Poweradd]
type = targetpoweradd
trigger1 = animelemtime(4)=10||animelemtime(4)=16||animelemtime(4)=22||animelemtime(4)=28||animelemtime(4)=34
value = ceil(15.0*0.8*fvar(11))

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = var(54)<ceil(lifemax*0.9)
trigger1 = animelemtime(4)=10||animelemtime(4)=16||animelemtime(4)=22||animelemtime(4)=28||animelemtime(4)=34
var(54) = ceil(15.0*0.6*fvar(11))
persistent=0
ignorehitpause = 1

[State 810, PSND]
type = varset
trigger1 = animelemtime(4)=10||animelemtime(4)=16||animelemtime(4)=22||animelemtime(4)=28||animelemtime(4)=34
fvar(10)=fvar(10)*0.96

[State 0, HitAdd]
type = HitAdd
trigger1 = animelemtime(4)=10||animelemtime(4)=16||animelemtime(4)=22||animelemtime(4)=28;||animelemtime(4)=34
trigger2 = animelemtime(4)=34
trigger2 = (var(4):=1)||1
value = 1
ignorehitpause = 1
;persistent=0

[State 810, TS]
type = targetstate
trigger1 = animelemtime(4)=34
value = 851

[State 801, IKEMEN Safeguard] ;I Really didn't want to implement this but the alternative would be much messier
type = ChangeState
trigger1 = !NumTarget(800)
trigger1 = animelemtime(4)<34
value = 891

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
; Jade River FX
[Statedef 20800]
type = A
movetype = I
physics = N
ctrl = 0
anim = 20800+1*ishelper(20801)
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer

[State 20800, VelS]
type = velset
trigger1 = time>=0
x = 32.0

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

[State 20800, Zeeky]
type = destroyself
trigger1 = frontedgedist <= -160
trigger2 = time>=240

[State 1210, Destroy]
type = ChangeState
trigger1 = root,stateno!=801
value = 20801

[State 20800, AD]
type = angledraw
trigger1 = 1
scale = 1.0,1.0;;2.0,2.0;1.0+1.0*ishelper(20801),1.0+1.0*ishelper(20801)
ignorehitpause = 1

;-----------------------------
; Jade River FX
[Statedef 20801]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = 5
; Variable Usage
;----------------
; Var(0) - Timer

[State 20800, VelS]
type = velset
trigger1 = time>=0
x = 32.0

[State 21210, Ass]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/10.0),256
ignorehitpause = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 20800, Zeeky]
type = destroyself
trigger1 = frontedgedist <= -160
trigger2 = time>=10

[State 20800, AD]
type = angledraw
trigger1 = 1
scale = 1.0,1.0;2.0,2.0;1.0+1.0*ishelper(20801),1.0+1.0*ishelper(20801)
ignorehitpause = 1

;---------------------------------------------------------------------------
; Air Grab Attempt
[Statedef 810]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 800
sprpriority = 1
facep2 = 1
juggle = 0

[State 800, CS]
type = changestate
trigger1 = numtarget(810)
trigger1 = movehit
value = 811
ignorehitpause = 1
persistent = 0

[State 800, CS]
type = changestate
trigger1 = animtime=0
value = 620+5*(command="holddown");Change to s.HP if throw whiffs

[State 800, Throw]
type = varset
trigger1 = AILevel <= 0
trigger1 = time = 0
var(10)=cond((command="holdback"&&command!="holdfwd"),1,cond((command!="holdback"&&command="holdfwd"),2,0))
[State 800, Tech Reset]
type = varset
trigger1 = 1
var(13) = 0
[State 800, Tech Set]
type = varset
trigger1 = numenemy > 0
trigger1 = enemynear(0),statetype = A
trigger1 = (enemynear(0),stateno = [0,999]) || enemynear(0),movetype = H
trigger1 = (enemynear(0),stateno != [200,799]) || enemynear(0),movetype = H  
trigger1 = enemynear(0),stateno != [100,119]
var(13) = 15+12*(enemynear(0),movetype = H)
[State 800, HD]
type = HitDef
trigger1 = var(30) = 0 ;ONLY WHEN THROWS ARE ALLOWED
trigger1 = time=0
trigger1 = var(10)!=0
attr = A, NT
hitflag = AF;-
priority = 7, Miss
sparkno = -1
guard.sparkno = -1
hitsound = s1,0
guardsound = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
;p1stateno = 811;11;+(var(10)=1)
guard.dist = 0
;fall = 1
;fall.recover = 0
y.accel = 0.5
getpower = 0,0
givepower = 0,0
guard.dist = 0
ID = 810
numhits = 1

;---------------------------------------------------------------------------
;AIR Grab - Part 2
[Statedef 811]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 811+0*floor(var(6):=0);Tech Flag
velset = 0, 0
sprpriority = 1

[State 801, TS]
type = targetstate
trigger1 = time = 0
id = 810
value = 870

[State 801, TF]
type = targetfacing
trigger1 = time = 0
value = -1
id = 810

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = var(13)>0
anim = 890
ID = 20890
pos = 0,-120
postype = p2
facing = 1
bindtime = -1
vel = 0,0
removetime = var(13)
pausemovetime = 0
scale = 0.25,0.25
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = var(13)>16
anim = 890
ID = 20890
pos = 20,-120
postype = p2
facing = 1
bindtime = -1
vel = 0,0
removetime = var(13)
pausemovetime = 0
scale = 0.25,0.25
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1

[State 801, Tech Success]
type = varset;ChangeState
triggerall = NumTarget
triggerall = var(13)>0
trigger1 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger1 = (target,AILevel=0)&&(target,command = "x" || target,command = "y" || target,command = "z")
trigger2 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger2 = (target,AILevel=0)&&(target,command = "a" || target,command = "b" || target,command = "c")
trigger3 = (target,AILevel>0)&&(random<=floor(100*AIlevel*AIlevel/64.0))
;value = 890
var(6)=1

[State 801, Tech Success]
type = changestate
trigger1 = var(6)=1
trigger1 = time=28;
value = 892

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(13) > 0
var(13) = -1

[State 810, TS]
type = targetstate
trigger1 = time = 0
value = 870

[State 801, TF]
type = targetfacing
trigger1 = time = 0
;trigger2 = animelemtime(5)=0
;trigger2 = var(10)=1
value = -1
id = 810

[State 810, T]
type = turn
trigger1 = animelemtime(2)=0
trigger1 = var(10)=1

[State 801, TF]
type = targetfacing
trigger1 = animelemtime(2)=0
trigger1 = var(10)=1
value = -1
id = 810

[State 801, PP]
type = playerpush
trigger1 = 1
value = 0

[State 810, Bind]
type = TargetBind
trigger1 = time = 0
pos = 25,0;36, 0

[State 810, Bind]
type = TargetBind
trigger1 = animelemtime(2)=0
trigger1 = var(10)=1
pos = 25,0;36, 0
;===============
; END SYSTEM FX
;===============

[State 810, Bind]
type = TargetBind
trigger1 = animelemno(0)=4
pos = 44,-66
[State 810, Bind]
type = TargetBind
trigger1 = animelemno(0)=5
pos = 43,-51
[State 810, Bind]
type = TargetBind
trigger1 = animelemno(0)=6
pos = 41,-38
[State 810, Bind]
type = TargetBind
trigger1 = animelemno(0)=7
pos = 38,-23
[State 810, Bind]
type = TargetBind
trigger1 = animelemno(0)=[8,12]
pos = 32,-5


[State 810, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 800,0
channel = 0

[State 810, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 40,10


[State 801, IKEMEN Safeguard] ;I Really didn't want to implement this but the alternative would be much messier
type = ChangeState
trigger1 = !NumTarget(810)
trigger1 = animelemtime(4)<34
value = 892

[State 0, VelAdd]
type = Velset
trigger1 = animelemtime(4)=0
x = 2.0
y = -4.0

[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(4)>0
x = 0
y = 0.5
;ignorehitpause = 
;persistent = 

[State 800, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y);animtime = 0
value = 812
ctrl = 0

;---------------------------------------------------------------------------
; Air Grab
[Statedef 812]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 812;47
ctrl = 0
sprpriority = 1

[State 810, PSND]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = S1,11
;channel = 3

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(1)=0
time = 20
freq = 180
ampl = 8
phase = 90
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(1)=0
anim = 8020+(random%2)
ID = 8000
pos = 45,0
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

[State 810, TS]
type = targetstate
trigger1 = animelemtime(1)=0
value = 871

[State 810, TLA]
type = targetlifeadd
trigger1 = animelemtime(1)=0
id = 810
kill = 1
value = -ceil(70.0*fvar(11))

[State 810, Poweradd]
type = poweradd
trigger1 = animelemtime(1)=0
value = ceil(70.0*1.6*fvar(11))

[State 810, Target Poweradd]
type = targetpoweradd
trigger1 = animelemtime(1)=0
value = ceil(70.0*0.8*fvar(11))

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = var(52)=2 ;Type-C Only
triggerall = var(54)<ceil(lifemax*0.9)
trigger1 = animelemtime(1)=0
var(54) = ceil(70.0*0.6*fvar(11))
persistent=0
ignorehitpause = 1

[State 810, PSND]
type = varset
trigger1 = animelemtime(1)=0
fvar(10)=fvar(10)*0.8

[State 0, HitAdd]
type = HitAdd
trigger1 = animelemtime(1)=0
trigger1 = (var(4):=1)||1
value = 1
ignorehitpause = 1
;persistent=0

[State 4111, PS]
type = posset
trigger1 = time = 0
y = 0

[State -3, Landing Sound]
type = PlaySnd
trigger1 = time=0
value = 40, 0

[State 812, STS]
type = statetypeset
trigger1 = animelemtime(2)=0
movetype = I
ignorehitpause = 1

[State 1002, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;---------------
[Statedef 850]
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
value = 850

;---------------
[Statedef 855]
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
value = 855

;---------------
; Back Throw
[Statedef 860]
type    = S
movetype= H
physics = S
velset = 0,0
sprpriority = 3

[State 801, PP]
type = playerpush
trigger1 = 1
value = 0

[State 803, CA]
type = ChangeAnim2
Trigger1 = Time = 0
value = 850


;---------------
[Statedef 851]
type    = A
movetype= H
physics = N
velset = 0,0

[State 803, CA]
type = ChangeAnim2
Trigger1 = Time = 0
value = 851

[State 810, Bind]
type = velset
trigger1 = animelemtime(2)=0
x = -13.5
y = -4.5

[State 807, Accel]
type = veladd;gravity
trigger1 = animelemtime(2)>0
y = 0.5

[State 851, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -(vel y)
value = 852

;---------------
[Statedef 861]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 803, CA]
type = ChangeAnim2
Trigger1 = Time = 0
value = 851

[State 851, VS]
type = velset
trigger1 = time = 0
x = -8.0
y = -4.0

[State 851, VA]
type = veladd
trigger1 = time
y = 0.5

[State 851, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -(vel y)
value = 852


;---------------------------------------------------------------------------
; Downed get-hit (hit ground from fall)
[Statedef 852]
type    = L
movetype= H
physics = N

[State 5100, 2004.04.14 behavior]
type = null;VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x < -1
x = -1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 854;5110 ;Downed get-hit (lying down)

[State 5100, 8]
type = Explod
trigger1 = Time = 1
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprpriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 853;5101 ;Downed get-hit (bounce off ground)

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20



;---------------------------------------------------------------------------
; Downed get-hit (bounce off ground)
[Statedef 853]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = Const(movement.down.bounce.offset.y)

[State 5101, 5]
type = PosAdd
trigger1 = Time = 0
x = Const(movement.down.bounce.offset.x)

[State 5101, 6] ;Acceleration
type = VelAdd
trigger1 = 1
y = Const(movement.down.bounce.yaccel)

[State 5101, 7] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
type = ChangeState
value = 854;5110


;-------------------------------------------
; Hard Knockdown
[Statedef 854]
type    = L
movetype = H
physics = N
velset = 0,0
sprpriority = 1

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5110, 7]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprpriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = Selfstate;ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5110, 15]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 16]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

[State 852, SS]
type = selfstate
trigger1 = alive
trigger1 = time >= 11
value = 5120

;---------------
[Statedef 870]
type    = A
movetype= H
physics = N
velset = 0,0

[State 801, PP]
type = playerpush
trigger1 = 1
value = 0

[State 803, CA]
type = ChangeAnim2
Trigger1 = Time = 0
value = 870

[State 870, SprPriority]
type = SprPriority
trigger1 = animelemtime(4)=0
value = -1
;ignorehitpause = 
;persistent = 


;---------------
[Statedef 871]
type    = A
movetype= H
physics = N
velset = 0,0

[State 803, CA]
type = ChangeAnim2
Trigger1 = Time = 0
value = 851

[State 810, Bind]
type = velset
trigger1 = animelemtime(2)=0
x = -4.5
y = -4.5

[State 807, Accel]
type = veladd;gravity
trigger1 = animelemtime(2)>0
y = 0.5

[State 851, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -(vel y)
value = 852

;---------------------------------------------------------------------------
;Throw Tech Success - Ground
[StateDef 890]
type = S
physics = N
movetype = A;I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 890, PSND]
type = null;PlaySnd
trigger1 = AnimElemtime(2) = 0
value = 890,0
channel = 0

[State 890, PSND]
type = PlaySnd
trigger1= time = 0
value = 3,1

[State 890, T]
type = null;turn
trigger1 = time = 0

[State 890, PA]
type = PosAdd
trigger1 = time = 0
x = 24

[State 890, PS]
type = PosSet
trigger1 = time = 0
y = 0

[State 890, TB]
type = TargetBind
trigger1 = time = 0
trigger1 = numtarget
pos = 0,0

[State 890, TS]
type = TargetState
trigger1 = time = 0
trigger1 = numtarget
value = 895

[State 890, TF]
type = TargetFacing
trigger1 = time = 0
trigger1 = numtarget
value = -1

[State 890, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PP]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
persistent = 4
anim = 8020
ID = 8000
pos = 0,-70
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
pausemovetime = 999999
supermovetime = 999999

[State 890, VS]
type = VelSet
trigger1 = time = 0
x = -8;-6.14
y = 0

[State 890, VM]
type = veladd;mul
trigger1 = time>=0
trigger1 = vel x < 0
x = 0.5;85

[State 890, PA]
type = posadd
triggerall = numtarget
trigger1 = target,frontedgebodydist <= abs(target,vel x + target,const(size.ground.front))
trigger1 = target,vel x > 0.0
trigger2 = target,backedgebodydist <= abs(target,vel x - target,const(size.ground.back))
trigger2 = target,vel x < 0.0
x = cond((target,pos x - pos x) * facing > 0, -abs(target,vel x), abs(target,vel x))


[State 890, CS]
type = ChangeState
trigger1 = time >= 27
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw Escape Failsafe
[StateDef 891]
type = S
physics = N
movetype = A;I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 800, REX]
type = removeexplod
trigger1 = animelemtime(1)=0
id =20800

[State 890, PSND]
type = PlaySnd
trigger1 = AnimElemtime(2) = 0
value = 890,0
channel = 0

[State 890, PSND]
type = PlaySnd
trigger1= time = 0
value = 890,10

[State 890, T]
type = null;turn
trigger1 = time = 0

[State 890, PA]
type = PosAdd
trigger1 = time = 0
x = 24

[State 890, PS]
type = PosSet
trigger1 = time = 0
y = 0

[State 890, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PP]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
persistent = 4
anim = 8020
ID = 8000
pos = 0,-70
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
pausemovetime = 999999
supermovetime = 999999

[State 890, CS]
type = ChangeState
trigger1 = time >= 27
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Throw Tech Success - Air
[StateDef 892]
type = A
physics = N
movetype = A;I
anim = 5040
ctrl = 0
velset = 0,0
sprPriority = 1

[State 890, PSND]
type = PlaySnd
trigger1= time = 0
value = 3,1

[State 890, T]
type = null;turn
trigger1 = time = 0

[State 890, TB]
type = TargetBind
trigger1 = time = 0
trigger1 = numtarget
pos = 30,0

[State 890, TS]
type = TargetState
trigger1 = time = 0
trigger1 = numtarget
value = 896

[State 890, TF]
type = TargetFacing
trigger1 = time = 0
trigger1 = numtarget
value = -1

[State 890, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PP]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
persistent = 4
anim = 8020
ID = 8000
pos = 0,-70
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
pausemovetime = 999999
supermovetime = 999999

[State 890, VS]
type = VelSet
trigger1 = time = 0
x = -3.0
y = -8.0

[State 890, VM]
type = veladd;mul
trigger1 = time
y = 0.5;85

[State 890, CS]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 52
ctrl = 0

;------------------------
;Target Throw Escape - Ground
[StateDef 895]
type = S
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 895, PS]
type = PosSet
trigger1 = time = 0
y = 0

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
value = ifElse(SelfAnimExist(5940), 5940, 130)

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
trigger1 = !selfanimexist(5945)
trigger1 = selfanimexist(5940)
value = 5940

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
trigger1 = !selfanimexist(5945)
trigger1 = !selfanimexist(5940)
trigger1 = selfanimexist(5910)
value = 5910

[State 895, CA]
type = ChangeAnim
trigger1 = time >= 20
trigger1 = anim = 130
value = 140

[State 895, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PP]
type = PlayerPush
trigger1 = 1
value = 0

[State 890, VS]
type = VelSet
trigger1 = time = 0
x = -8;-6.14
y = 0

[State 890, VM]
type = veladd;mul
trigger1 = time>=0
trigger1 = vel x < 0
x = 0.5;85

[State 895, CS]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1

;------------------------
;Target Throw Escape - Air
[StateDef 896]
type = A
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
value = 5040

[State 895, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PP]
type = PlayerPush
trigger1 = 1
value = 0

[State 890, VS]
type = VelSet
trigger1 = time = 0
x = -3.0
y = -8.0

[State 890, VM]
type = veladd;mul
trigger1 = time
y = 0.5;85

[State 890, CS]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 52
ctrl = 0

