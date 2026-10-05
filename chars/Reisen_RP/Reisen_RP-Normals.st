

;---------------------------------------------------------------------------
; Standing Weak Attack
[Statedef 200]
type    = S
movetype= A
physics = S
ctrl = 0
;velset = 0,0
anim = 200
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(0*ln(2)) + 0.5)),2,0) ;use Juggle
facep2 = 1

[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)>0
trigger1 = anim = 200
trigger1 = animelemtime(animelemno(0))=0
value = 10200
elem = animelemno(0)
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)<=0
trigger1 = anim = 10200
trigger1 = animelemtime(animelemno(0))=0
value = 200
elem = animelemno(0)

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(0*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 0, 0

[State 200, 1]
type = HitDef
trigger1= (p2stateno != [5020, 5040])
trigger1 = animelemtime(5)>=0
trigger1 = animelemtime(6)<0
trigger1 = (movecontact=0&&movereversed=0)
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 20, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-55
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+1*(var(42))             ;Time that the opponent slides back
ground.hittime  = 13+1*(var(42))             ;Time opponent is in hit state
air.hittime  = 13+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -4.0             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-4.0;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 40,40
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(6) = 0
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
; Standing Medium Attack
[Statedef 210]
type    = S
movetype= A
physics = S
ctrl = 0
;velset = 0,0
;anim = 210
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(1*ln(2)) + 0.5)),2,0) ;use Juggle
facep2 = 1

[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)>0
trigger1 = anim = 210
trigger1 = animelemtime(animelemno(0))=0
value = 10210
elem = animelemno(0)
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)<=0
trigger1 = anim = 10210
trigger1 = animelemtime(animelemno(0))=0
value = 210
elem = animelemno(0)

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 210, Cancel Illusion Trick?]
type = varset
trigger1 = time = 0
var(10) = cond((prevstateno=200||prevstateno=400),1,0)

[State 210, Invis]
type = assertspecial
trigger1 = time = 0
trigger1 = (prevstateno=200||prevstateno=400)
flag = invisible
ignorehitpause = 1

[State 215, Cancel Illusion Trick?]
type = Helper
trigger1 = time=0
trigger1 = (prevstateno=200||prevstateno=400)
trigger1 = (var(10):=animelemno(0))||1
helpertype = normal ;player
name = "SparkFX"
ID = cond(prevstateno=200,20200,20400)
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 210, Cancel Illusion Trick?]
type = trans
trigger1 = (prevstateno=200||prevstateno=400)
trigger1 = animelemtime(6)<0
trans = addalpha
alpha = floor(256.0*animelemtime(1)/6.0),256-floor(256.0*animelemtime(1)/6.0)
ignorehitpause = 1

[State 210, CA]
type = changeanim
trigger1 = time = 0
value = 210

[State 210, PA];Compensation for sprite alignment
type = posadd
trigger1 = animelemtime(2)=0
x = 12

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 210,10

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(4)=0
helpertype = normal ;player
name = "SparkFX"
ID = 20210
stateno = 20210
;pos = -13,-52
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[State 215, Projectile]
type = Helper
trigger1 = var(21)>0
trigger1 = animelemtime(4)=0
helpertype = normal ;player
name = "SparkFX"
ID = 20211;10200
stateno = 20210
;pos = -13,-52
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[State 200, 1]
type = HitDef
trigger1= (p2stateno != [5020, 5040])
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 55, 0                   ;Damage that move inflicts, guard damage
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-46
hitsound = s1,1                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 16+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 16+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 16+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -4.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-4.0;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 60,60
givepower = 30,30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.90
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
; Standing Medium FX
[Statedef 20210]
type    = A
movetype= I
physics = N
ctrl = 0
;velset = 0,0
anim = 20210
sprpriority = 5

[State 20210, CVS]
type = null
triggerall = root,stateno = 210
trigger1 = root,animelemtime(4)=0
trigger1 = (var(1):=48)||1 ;X pos
trigger1 = (var(2):=-42)||1 ;Y pos
trigger2 = root,animelemtime(5)=0
trigger2 = (var(1):=51)||1 ;X pos
trigger2 = (var(2):=-92)||1 ;Y pos
trigger3 = root,animelemtime(6)=0
trigger3 = (var(1):=19)||1 ;X pos
trigger3 = (var(2):=-98)||1 ;Y pos

[State 20210, CVS]
type = null
triggerall = root,stateno = 220
trigger1 = root,animelemtime(3)=0
trigger1 = (var(1):=34)||1 ;X pos
trigger1 = (var(2):=-94)||1 ;Y pos
trigger2 = root,animelemtime(4)=0
trigger2 = (var(1):=47)||1 ;X pos
trigger2 = (var(2):=-76)||1 ;Y pos
trigger3 = root,animelemtime(5)=0
trigger3 = (var(1):=44)||1 ;X pos
trigger3 = (var(2):=-21)||1 ;Y pos

[State 20210, CVS]
type = null
triggerall = root,stateno = 620
trigger1 = root,animelemtime(5)=0
trigger1 = (var(1):=-19)||1 ;X pos
trigger1 = (var(2):=-44)||1 ;Y pos
trigger2 = root,animelemtime(6)=0
trigger2 = (var(1):=-22)||1 ;X pos
trigger2 = (var(2):=-59)||1 ;Y pos
trigger3 = root,animelemtime(7)=0
trigger3 = (var(1):=76)||1 ;X pos
trigger3 = (var(2):=-55)||1 ;Y pos

[State 621, CA]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno(-1)

[State 621, CA]
type = varset
trigger1 = !(root,hitpausetime)
var(5) = floor(360.0*random/1000.0)

[State 621, AD]
type = angledraw
trigger1 = 1
value = var(5)
ignorehitpause = 1

[State 20210, BTR]
type = bindtoroot
trigger1 = 1
pos = var(1)+100*(ishelper(20211)||ishelper(20221)||ishelper(20621)),var(2)
ignorehitpause = 1

[State 20210, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20210, #TheTransMugencode] ;Only TCR listeners will get this joke
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-cond(var(0)<5,0,floor(256.0*(var(0)-5)/12.0)),256
ignorehitpause = 1

[State 20210, Zeeky]
type = destroyself
triggerall = ishelper(20210)||ishelper(20211)
trigger1 = var(0) >= 27
trigger2 = root,stateno != 210

[State 20210, Zeeky]
type = destroyself
triggerall = ishelper(20220)||ishelper(20221)
trigger1 = var(0) >= 27
trigger2 = root,stateno != 220

[State 20210, Zeeky]
type = destroyself
triggerall = ishelper(20620)||ishelper(20621)
trigger1 = var(0) >= 27
trigger2 = root,stateno != 620

[State 20210, Custom Timer]
type = varadd
trigger1 = !(root,hitpausetime)
var(0) = 1

;---------------------------------------------------------------------------
; Standing Medium FX
[Statedef 20211]
type    = S
movetype= I
physics = N
ctrl = 0
;velset = 0,0
anim = 1998
sprpriority = 0

[State 20211, VS]
type = varset
trigger1 = time = 0
var(10) = root,var(10)

[State 621, CA]
type = changeanim
trigger1 = 1
value = cond(ishelper(20200),200,cond(ishelper(20210),210,cond(ishelper(20400),400,410)))
elem = var(10)

[State 20210, BTR]
type = bindtoroot
trigger1 = time = 0
pos = 0,0
ignorehitpause = 1

[State 20210, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20210, #TheTransMugencode] ;Only TCR listeners will get this joke
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/6.0),floor(256.0*time/6.0)
ignorehitpause = 1

[State 20210, Zeeky]
type = destroyself
trigger1 = time >= 6

;---------------------------------------------------------------------------
; 6y Attack
[Statedef 215]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 215
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(1*ln(2)) + 0.5)),2,0) ;use Juggle
facep2 = 1

[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)>0
trigger1 = anim = 215
trigger1 = animelemtime(animelemno(0))=0
value = 10215
elem = animelemno(0)
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)<=0
trigger1 = anim = 10215
trigger1 = animelemtime(animelemno(0))=0
value = 215
elem = animelemno(0)

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 210, Invis]
type = assertspecial
trigger1 = animelemtime(8)<=0
flag = invisible
ignorehitpause = 1

[State 215, Cancel Illusion Trick?]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "FakeReisen"
ID = 20215
stateno = 20215
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 215, Cancel Illusion Trick?]
type = Helper
trigger1 = var(21)>0
trigger1 = time=0
helpertype = normal ;player
name = "FakeReisen"
ID = 10200
stateno = 20215
pos = 100,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 215, STS]
type = statetypeset
trigger1 = animelemtime(2)=0
statetype = A
physics = N

[State 215, VS]
type = velset
trigger1 = animelemtime(2)=0
y = -5.0

[State 215, VS]
type = veladd
trigger1 = animelemtime(2)>0&&animelemtime(9)<0
trigger1 = vel y < 0
trigger2 = animelemtime(9)>0
y = 0.5

[State 215, VS]
type = velset
trigger1 = animelemtime(9)=0
x = 6.0
y = 2.0

[State 210, Cancel Illusion Trick?]
type = trans
trigger1 = animelemtime(8)>=0 && animelemtime(9)<0
trigger1 = var(20)<=0
trans = addalpha
alpha = floor(256.0*animelemtime(8)/4.0),256-floor(256.0*animelemtime(8)/4.0)
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(9)=0
value = 0,1

[State 200, 1]
type = HitDef
trigger1= (p2stateno != [5020, 5040])
trigger1 = animelemtime(9)>=0 && animelemtime(11)<0
trigger1 = !movecontact && !movereversed
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 70, 0                   ;Damage that move inflicts, guard damage
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = H                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-20
hitsound = s1,1                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 16+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 16+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 16+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 12
guard.hittime = 12
ground.velocity = -6.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -6.0,-4.0;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 80,80
givepower = 40,40
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.80
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(11) = 0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 215, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 216

;---------------------------------------------------------------------------
; Aerial Down Strong Attack
[Statedef 216]
type    = S
movetype = I
physics = S
ctrl = 0
movehitpersist = 1

[State 216, CA]
type = changeanim
trigger1 = time = 0
value = 215
elem = 14

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
; 6y FX
[Statedef 20215]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 20215
sprpriority = 0

[State 20210, BTR]
type = bindtoroot
trigger1 = time = 0;animelemtime(5) < 0
pos = 0+100*ishelper(10200),0;-floor(root,pos y)
ignorehitpause = 1

[State 20210, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1203, VelMul]
Type = Statetypeset
Trigger1 = animelemtime(5)=0
physics = N

[State 210, PSND]
type = velset
trigger1 = animelemtime(5) = 0
x = 7.0

;[State 1203, VelMul]
;Type = VelMul
;Trigger1 = time>=17
;X = 0.95

[State 20210, #TheTransMugencode]
type = trans
trigger1 = root,var(20)>0
;trigger1 = time>=17
trans = addalpha
alpha = 256-floor(256.0*((root,var(20)))/12.0),floor(256.0*((root,var(20)))/12.0)
ignorehitpause = 1

[State 20210, #TheTransMugencode]
type = trans
trigger1 = root,var(20)<=0
trigger1 = time>=17
trans = addalpha
alpha = 256-floor(256.0*(time-17)/6.0),floor(256.0*(time-17)/6.0)
ignorehitpause = 1

[State 20210, Zeeky]
type = destroyself
trigger1 = time >= 17+6

;---------------------------------------------------------------------------
; Standing Strong Attack
[Statedef 220]
type    = S
movetype= A
physics = S
ctrl = 0
;velset = 0,0
;anim = 220
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(3*ln(2)) + 0.5)),2,0) ;use Juggle
facep2 = 1

[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)>0
trigger1 = anim = 220
trigger1 = animelemtime(animelemno(0))=0
value = 10220
elem = animelemno(0)
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)<=0
trigger1 = anim = 10220
trigger1 = animelemtime(animelemno(0))=0
value = 220
elem = animelemno(0)

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 210, Cancel Illusion Trick?]
type = varset
trigger1 = time = 0
var(10) = cond((prevstateno=[200,410]),1,0)

[State 210, Invis]
type = assertspecial
trigger1 = time = 0
trigger1 = (prevstateno=[200,410])
flag = invisible
ignorehitpause = 1

[State 215, Cancel Illusion Trick?]
type = Helper
trigger1 = time=0
trigger1 = (prevstateno=[200,410])
trigger1 = (var(10):=animelemno(0))||1
helpertype = normal ;player
name = "SparkFX"
ID = 20200*(prevstateno=200)+20400*(prevstateno=400)+20210*(prevstateno=210)+20410*(prevstateno=410)
stateno = 20211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 210, Cancel Illusion Trick?]
type = trans
trigger1 = (prevstateno=[200,410])
trigger1 = animelemtime(4)<0
trans = addalpha
alpha = floor(256.0*animelemtime(1)/9.0),256-floor(256.0*animelemtime(1)/9.0)
ignorehitpause = 1

[State 210, CA]
type = changeanim
trigger1 = time = 0
value = 220

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 220,0
channel = 0



[State 215, Projectile]
type = Helper
trigger1 = animelemtime(3)=0
helpertype = normal ;player
name = "SparkFX"
ID = 20220
stateno = 20210
;pos = -13,-52
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5
[State 215, Projectile]
type = Helper
trigger1 = var(21)>0
trigger1 = animelemtime(3)=0
helpertype = normal ;player
name = "SparkFX"
ID = 20221;10200
stateno = 20210
;pos = -13,-52
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 220,10

[State 200, 1]
type = HitDef
trigger1= (p2stateno != [5020, 5040])
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
trigger1 = !movecontact && !movereversed
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 70, 0                   ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-75
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 20+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 20+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 20+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -4.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-6.0;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 90,90
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(6) = 0
trigger2 = movecontact || movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Forward Strong Attack
[Statedef 225]
type    = S
movetype= A
physics = S
ctrl = 0
;velset = 0,0
anim = 225+0*floor(var(11):=0)
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(4*ln(2)) + 0.5)),2,0) ;use Juggle
facep2 = 1

[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)>0
trigger1 = anim = 225
trigger1 = animelemtime(animelemno(0))=0
value = 10225
elem = animelemno(0)
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)<=0
trigger1 = anim = 10225
trigger1 = animelemtime(animelemno(0))=0
value = 225
elem = animelemno(0)

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(4*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 225, STS]
type = statetypeset
trigger1 = animelemtime(4)=0
physics = N
ignorehitpause = 1

[State 225, Flag Hit]
type = varset
trigger1 = animelemtime(4)=[0,1]
trigger1 = movecontact||movereversed
var(11) = 1;cond((movecontact||movereversed),1,0)
persistent=0
ignorehitpause = 1

[State 225, PS]
type = posadd
trigger1 = animelemtime(4)=1
trigger1 = !movecontact && !movereversed
x = -150*cond(var(10)=1,1,-1)

[State 225, T]
type = turn
trigger1 = animelemtime(4)=1
trigger1 = var(10)=2
trigger1 = !movecontact && !movereversed

[State 225, VS]
type = velset
trigger1 = animelemtime(4)=1
x = 9.0

[State 225, Fade In]
type = trans
trigger1 = animelemtime(4)>=1&&animelemtime(4)<10
trigger1 = var(11)=0
trans = addalpha
alpha = floor(256.0*animelemtime(4)/10.0),256-floor(256.0*animelemtime(4)/10.0)

[State 225, Friction]
type = velmul
trigger1 = animelemtime(7)>0
x = 0.85

[State 225, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 0,1

[State 200, 1]
type = HitDef
trigger1= (p2stateno != [5020, 5040])
trigger1 = animelemtime(4)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 80, 0                   ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-45
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 31+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 31+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 31+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 25
guard.hittime = 25
ground.velocity = -8.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -8.0,-6.0;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 90,90
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 225, Invis]
type = assertspecial
trigger1 = animelemtime(4)=[0,1]
trigger1 = !movecontact && !movereversed
flag = invisible
ignorehitpause = 1

[State 215, Cancel Illusion Trick?]
type = Helper
trigger1 = animelemtime(4)=0
trigger1 = !movecontact && !movereversed
helpertype = normal ;player
name = "TrickReisen"
ID = 20225
stateno = 20225
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 215, Cancel Illusion Trick?]
type = Helper
trigger1 = var(21)>0
trigger1 = animelemtime(4)=0
trigger1 = !movecontact && !movereversed
helpertype = normal ;player
name = "TrickReisen"
ID = 20225
stateno = 20225
pos = 100,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.80
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(7) = 0
trigger2 = movecontact || movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 226, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 6Z FX
[Statedef 20225]
type    = S
movetype= A
physics = N
juggle  = 0
anim = 20225
sprpriority = 0

[State 20210, ASS]
type = null;assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20210, #TheTransMugencode] ;Only TCR listeners will get this joke
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/6.0),floor(256.0*time/6.0)
ignorehitpause = 1

[State 20210, Zeeky]
type = destroyself
trigger1 = time >= 6

;---------------------------------------------------------------------------
; Crouching Weak Attack
[Statedef 400]
type    = C
movetype= A
physics = C
ctrl = 0
velset = 0,0
anim = 400
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(5*ln(2)) + 0.5)),2,0) ;use Juggle
facep2 = 1

[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)>0
trigger1 = anim = 400
trigger1 = animelemtime(animelemno(0))=0
value = 10400
elem = animelemno(0)
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)<=0
trigger1 = anim = 10400
trigger1 = animelemtime(animelemno(0))=0
value = 400
elem = animelemno(0)

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0,0

[State 200, 1]
type = HitDef
trigger1= (p2stateno != [5020, 5040])
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
trigger1 = !movecontact && !movereversed
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage = 25, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-20
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+1*(var(42))             ;Time that the opponent slides back
ground.hittime  = 13+1*(var(42))             ;Time opponent is in hit state
air.hittime  = 13+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -3.0             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3.0,-5.0;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 40,40
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.92
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(4) = 0
trigger2 = movecontact || movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Crouching Medium Attack
[Statedef 410]
type    = C
movetype= A
physics = C
ctrl = 0
;velset = 0,0
anim = 410
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(6*ln(2)) + 0.5)),2,0) ;use Juggle
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(6*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0||animelemtime(7)=0
value = 410,10
channel = 1

[State 410, Bullet]
type = Helper
trigger1 = animelemtime(4)=0||animelemtime(7)=0
helpertype = normal ;player
name = "FlashBangGrenade"
ID = 20415
stateno = 20415
pos = 35,-30
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 410, Bullet]
type = Helper
trigger1 = animelemtime(4)=0||animelemtime(7)=0
helpertype = normal ;player
name = "AnalSuppository"
ID = 20410
stateno = 20410
pos = 35,-30
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 410, Bullet]
type = Helper
trigger1 = var(21)>0
trigger1 = animelemtime(4)=0||animelemtime(7)=0
helpertype = normal ;player
name = "FlashBangGrenade"
ID = 20415
stateno = 20415
pos = 135,-30
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 410, Bullet]
type = Helper
trigger1 = var(21)>0
trigger1 = animelemtime(4)=0||animelemtime(7)=0
helpertype = normal ;player
name = "AnalSuppository"
ID = 20410
stateno = 20410
pos = 135,-30
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

;[State 200, 1]
;type = HitDef
;trigger1= (p2stateno != [5020, 5040])
;trigger1 = animelemtime(4)>=0 && animelemtime(6)<0
;attr = C, NA                     ;Attribute: Standing, Normal Attack
;damage = 70, 0                   ;Damage that move inflicts, guard damage
;animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
;guardflag = L                   ;Flags on how move is to be guarded against
;hitflag = MAF                    ;Flags of conditions that move can hit
;priority = 4, Hit
;pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
;sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
;guard.sparkno = S8030
;sparkxy = -10,-86
;hitsound = s1,2                  ;Sound to play on hit
;guardsound = s2,0                ;Sound to play on guard
;ground.type = High               ;Type: High, Low, Trip (def: Normal)
;ground.slidetime = 16+3*(var(42))             ;Time that the opponent slides back
;ground.hittime  = 16+3*(var(42))             ;Time opponent is in hit state
;air.hittime  = 16+3*(var(42))             ;Time opponent is in hit state
;guard.slidetime = 13
;guard.hittime = 13
;ground.velocity = -6.0             ;Velocity at which opponent is pushed
;air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
;air.velocity = -6.0,-6.5;-1.4,-3           ;X-velocity at which opponent is pushed,
;;Y-velocity at which opponent is pushed
;getpower = 80,80
;givepower = 40,40
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;yaccel = 0.5
;air.fall = 1
;fall.recover = 1
;fall.recovertime = 120
;p2facing = 1
;ID = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(7) = 1
trigger2 = movecontact || movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State -2, FLAG RECOVERY FRAMES]
type = varset
trigger1 = animelemtime(7) >= 1
var(1)=1
ignorehitpause = 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Attack FX
[Statedef 20410]
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
stateno = 20411
time = -1
;ignorehitpause = 
;persistent = 

[State 20410, VS]
type = varset
trigger1 = time = 0
fvar(0)=-4.0+floor(9.0*random/1000.0)

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
triggerall = !((root,var(34))&floor(exp(2*ln(2)) + 0.5))
trigger1 = movecontact = 0 && movereversed = 0
attr = A,NP
hitflag = MAFP
guardflag = MA
animtype = Medium
air.animtype = Medium
priority = 4,Hit
damage = ceil(30.0*root,fvar(11)),2
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
guard.hittime = 11
guard.slidetime = 11
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
trigger2 = time>=8
value = 20411

;---------------------------------------------------------------------------
; Crouching Medium Attack FX
[Statedef 20411]
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
; Crouching Medium Attack FX
[Statedef 20415]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 20411
sprpriority = 5

[State 20415, Yo Pinkman Scale Me Bitch]
type = varset
trigger1 = time = 0
var(0) = 40+floor(71.0*random/1000.0);Dont you just love how this provides a more even random spread than any other method in mugen?

[State 20415, AS]
type = angledraw
trigger1 = 1
value = floor(360.0*random/1000.0)
scale = 0.01*var(0),0.01*var(0)
ignorehitpause = 1

[State 21501, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 20415, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21000, ASS]
type = assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 20411, CS]
type = destroyself
trigger1 = time>=1


;---------------------------------------------------------------------------
; Crouching Strong Attack
[Statedef 420]
type    = C
movetype= A
physics = C
ctrl = 0
;velset = 0,0
anim = 420
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(7*ln(2)) + 0.5)),2,0) ;use Juggle
facep2 = 1

[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)>0
trigger1 = anim = 420
trigger1 = animelemtime(animelemno(0))=0
value = 10420
elem = animelemno(0)
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)<=0
trigger1 = anim = 10420
trigger1 = animelemtime(animelemno(0))=0
value = 420
elem = animelemno(0)

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(7*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 0,1

[State 1203, VelMul]
Type = Statetypeset
Trigger1 = animelemtime(5)=0
physics = N

[State 210, PSND]
type = velset
trigger1 = animelemtime(5) = 0
x = 7.0

[State 1203, VelMul]
Type = VelMul
Trigger1 = animelemtime(7)>=0
trigger1 = animelemtime(10)<0
X = 0.95

[State 1203, VelMul]
Type = Statetypeset
Trigger1 = animelemtime(10)=0
physics = C

[State 200, 1]
type = HitDef
trigger1= (p2stateno != [5020, 5040])
trigger1 = animelemtime(5)>=0&&animelemtime(9)<0
trigger1 = !movecontact && !movereversed
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage = 90, 0                   ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-15
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 25+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 25+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 25+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -2.0,-6.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.0,-6.0;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 90,90
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.75
fall = 1
fall.recover = 0
p2facing = 1
ID = 420

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.75
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(9) = 0
trigger2 = movecontact || movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 420, Custom Trip]
type = TargetState
triggerall = numtarget(420)
trigger1 = target,stateno!=[120,155]
trigger1 = movehit=1 && !movereversed
trigger1 = !target(420),ishelper
trigger1 = target(420),time=0 && target(420),movetype=H
value = 470
ID = 420
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Aerial Weak Attack
[Statedef 600]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 600
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(8*ln(2)) + 0.5)),2,0) ;use Juggle

;[State 600, Air Trajectory Cancel]
;type = velset
;trigger1 = time = 0
;trigger1 = prevstateno = 115
;y = 0
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)>0
trigger1 = anim = 600
trigger1 = animelemtime(animelemno(0))=0
value = 10600
elem = animelemno(0)
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)<=0
trigger1 = anim = 10600
trigger1 = animelemtime(animelemno(0))=0
value = 600
elem = animelemno(0)

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(8*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 0,0

[State 200, 1]
type = HitDef
trigger1= (p2stateno != [5040, 5040])
trigger1 = animelemtime(4)>=0 && animelemtime(6)<0
trigger1 = !movecontact && !movereversed
attr = A, NA                     ;Attribute: Standing, Normal Attack
damage = 40, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-46
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+1*(var(42))             ;Time that the opponent slides back
ground.hittime  = 13+1*(var(42))             ;Time opponent is in hit state
air.hittime  = 13+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -4.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-4.0;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 40,40
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.92
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(6) = 0
trigger2 = movecontact || movereversed
movetype = I
persistent = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Aerial Medium Attack
[Statedef 610]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 610
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(9*ln(2)) + 0.5)),2,0) ;use Juggle

;[State 600, Air Trajectory Cancel]
;type = velset
;trigger1 = time = 0
;trigger1 = prevstateno = 115
;y = 0
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)>0
trigger1 = anim = 610
trigger1 = animelemtime(animelemno(0))=0
value = 10610
elem = animelemno(0)
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)<=0
trigger1 = anim = 10610
trigger1 = animelemtime(animelemno(0))=0
value = 610
elem = animelemno(0)

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(9*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 0, 1

[State 200, 1]
type = HitDef
trigger1= (p2stateno != [5040, 5040])
trigger1 = animelemtime(5)>=0 && animelemtime(8)<0
trigger1 = !movecontact && !movereversed
attr = A, NA                     ;Attribute: Standing, Normal Attack
damage = 60, 0                   ;Damage that move inflicts, guard damage
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -15,-23
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+1*(var(42))             ;Time that the opponent slides back
ground.hittime  = 13+1*(var(42))             ;Time opponent is in hit state
air.hittime  = 13+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -4.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-4.0;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 60,60
givepower = 30,30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(8) = 0
trigger2 = movecontact || movereversed
movetype = I
persistent = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Aerial Strong Attack
[Statedef 620]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 620
sprpriority = 1
juggle = ifelse((var(34)&floor(exp(0*ln(2)) + 0.5)),2,0) ;use Juggle

;[State 600, Air Trajectory Cancel]
;type = velset
;trigger1 = time = 0
;trigger1 = prevstateno = 115
;y = 0
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)>0
trigger1 = anim = 620
trigger1 = animelemtime(animelemno(0))=0
value = 10620
elem = animelemno(0)
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)<=0
trigger1 = anim = 10620
trigger1 = animelemtime(animelemno(0))=0
value = 620
elem = animelemno(0)

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(0*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 220,0
channel = 0

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(5)=0
helpertype = normal ;player
name = "SparkFX"
ID = 20620
stateno = 20210
;pos = -13,-52
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5
[State 215, Projectile]
type = Helper
trigger1 = var(21)>0
trigger1 = animelemtime(5)=0
helpertype = normal ;player
name = "SparkFX"
ID = 20621
stateno = 20210
;pos = -13,-52
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5




[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 220,10


[State 200, 1]
type = HitDef
triggerall= (p2stateno != [5040, 5040])
triggerall = !movecontact && !movereversed
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
attr = A, NA                     ;Attribute: Standing, Normal Attack
damage = 75, 0                   ;Damage that move inflicts, guard damage
animtype = Heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10,10                ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-55
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 13+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 13+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 18
guard.hittime = 18
ground.velocity = -10.0,-6.0*(var(42)!=0)             ;Velocity at which opponent is pushed
guard.velocity = -6.0
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -8.0,-6.0;-1.4,-3           ;X-velocity at which opponent is pushed,
airguard.velocity = -6.0,-6.0
getpower = 90,90
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0+1*(var(42)!=0)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555+65*(var(42)!=0)

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.80
;ignorehitpause = 1
;persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(8) = 0
;trigger2 = movecontact || movereversed
movetype = I
persistent = 0
ignorehitpause = 1


;---------------------------------------------------------------------------
; Aerial Down Strong Attack
[Statedef 625]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 625
sprpriority = 1
;velset = 0.1*(vel x), 0.1*(vel y)
juggle = ifelse((var(34)&floor(exp(1*ln(2)) + 0.5)),2,0) ;use Juggle

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)>0
trigger1 = anim = 625
trigger1 = animelemtime(animelemno(0))=0
value = 10625
elem = animelemno(0)
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)<=0
trigger1 = anim = 10625
trigger1 = animelemtime(animelemno(0))=0
value = 625
elem = animelemno(0)

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 220,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(11)=0
value = 0,1

[State 200, 1]
type = HitDef
triggerall= (p2stateno != [5040, 5040])
triggerall = !movecontact && !movereversed
trigger1 = animelemtime(11)>=0 && animelemtime(12)<0
attr = A, NA                     ;Attribute: Standing, Normal Attack
damage = 70, 0                   ;Damage that move inflicts, guard damage
animtype = Heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10,10                ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-5
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 13+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 13+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 18
guard.hittime = 18
ground.velocity = -3.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3.0,10.0;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 90,90
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 625;555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit;=1
fvar(10) = fvar(10)*0.80
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(12) = 0
trigger2 = movecontact || movereversed
movetype = I
persistent = 0
ignorehitpause = 1


;---------------------------------------------------------------------------
; Aerial Down Strong Attack
[Statedef 626]
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

;----------------
;Throw
[Statedef 800]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 800
;velset=0,0
sprpriority = 1

[State 800, Tech Reset]
type = varset
trigger1 = 1
var(14) = 0

[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)>0
trigger1 = anim = 800
trigger1 = animelemtime(animelemno(0))=0
value = 10800
elem = animelemno(0)
[State 200, Clone Hitbox]
type = changeanim
trigger1 = var(21)<=0
trigger1 = anim = 10800
trigger1 = animelemtime(animelemno(0))=0
value = 800
elem = animelemno(0)

[State 800, Tech Set]
type = varset
trigger1 = numenemy > 0
trigger1 = enemynear(0),statetype != A
trigger1 = enemynear(0),stateno = [0,999]
trigger1 = enemynear(0),stateno != [200,799]
trigger1 = enemynear(0),stateno != [100,119]
var(14) = 7

[State Asshole]
type = StateTypeSet
trigger1 = animelemtime(4)=0
movetype = I

[State 800, VS]
type = varset
trigger1 = AILevel <= 0
trigger1 = animelemtime(1) = 0
var(10)=ifelse(command="holdback",1,0)

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 210,0
channel = 0

[State 800, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0,1

[State 800, IDDQD]
type = HitDef
trigger1 = Animelemtime(3)=0
trigger1 = var(30) = 0; Throw Limited;!Movecontact && !Movereversed ;Just in case 
attr = S,NT
hitflag = M-
guardflag = 
fall.animtype = Diagup
priority = 7,Miss
damage = 0,0
pausetime = 0 ,0
sparkno = -1
hitsound = 1,1
yaccel = 0.5
;ground.velocity = -1.5,-12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1facing = 1;
p2facing = 1
p1stateno = 810;+1*(var(10)=1)
fall = 1
fall.recover = 0
id = 800
numhits = 0

[State ASS]
type = AttackDist
trigger1 = 1
value = 0

[State IDCLIP]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Grab - Part 2
[Statedef 810]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 810+0*floor(var(4):=1);Set proration flag
velset = 0, 0
sprpriority = 1

[State 810, PSND]
type = playsnd
trigger1 = time = 0
value = 1,0

[State 810, T]
type = turn
trigger1 = animelemtime(2)=0
trigger1 = var(10)=1

[State 0, Width]
type = Width
trigger1 = 1
edge = 38,38
ignorehitpause = 1
;persistent = 

[State 801, TS]
type = targetstate
trigger1 = time = 0
id = 800
value = 850

[State 801, TB]
type = targetbind
trigger1 = time = 0
;trigger2 = animelemtime(2) = 0
id = 800
pos = 38,0

[State 801, TB]
type = targetbind
trigger1= animelemtime(2) = 0
id = 800
pos = 20,-77

[State 801, TB]
type = targetbind
trigger1= animelemtime(3) = 0
id = 800
pos = -24,-86

[State 801, TB]
type = targetbind
trigger1= animelemtime(5) = 0
id = 800
pos = 4,-85

[State 801, TB]
type = targetbind
trigger1= animelemtime(6) = 0
id = 800
pos = 26,-74

[State 801, TB]
type = targetbind
trigger1= animelemtime(7) = 0
id = 800
pos = 36,0

[State 801, TF]
type = targetfacing
trigger1 = time = 0
trigger2 = animelemtime(2) = 0
value = -1
id = 800

[State 801, Tech Success]
type = ChangeState
triggerall = NumTarget
triggerall = var(14)>0
trigger1 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger1 = (target,AILevel=0)&&(target,command = "x" || target,command = "y" || target,command = "z")
trigger2 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger2 = (target,AILevel=0)&&(target,command = "a" || target,command = "b" || target,command = "c")
trigger3 = (target,AILevel>0)&&(random<=floor(100*AIlevel*AIlevel/64.0))
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(14) > 0
var(14) = -1

[State 801, TS]
type = targetstate
trigger1 = animelemtime(7)=0
id = 800
value = 853

[State 810, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 0,1
channel = 2

[State 810, PSND]
type = hitadd
trigger1 = animelemtime(7)=0
value = 1

[State 810, PSND]
type = targetlifeadd
trigger1 = animelemtime(7)=0
value = -90
id = 800
kill = 1

[State 810, PSND]
type = targetpoweradd
trigger1 = animelemtime(7)=0
value = 40
id = 800

[State 810, PSND]
type = varset
trigger1 = animelemtime(7)=0
fvar(10)=fvar(10)*0.9

[State 810, PSND]
type = poweradd
trigger1 = animelemtime(7)=0
value = 80

[State 801, IKEMEN Safeguard] ;I Really didn't want to implement this but the alternative would be much messier
type = ChangeState
trigger1 = !NumTarget(800)
trigger1 = animelemtime(7)<0
value = 891

[State 1205, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Throw Tech Success
[StateDef 890]
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

;------------------------
;Target Throw Escape
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