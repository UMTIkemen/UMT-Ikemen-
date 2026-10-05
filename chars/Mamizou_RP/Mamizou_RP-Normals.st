;---------------------------------------------------------------------------
; Standing Light Attack
[Statedef 200]
type = S
movetype = A
physics = S
ctrl = 0
anim = 200
sprpriority = 1
juggle = 0
facep2 = 1

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
trigger1 = animelemtime(3)=0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0,0

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(0*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(25*fvar(11)*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-60
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+1*(var(42))             ;Time that the opponent slides back
ground.hittime = 13+1*(var(42))             ;Time opponent is in hit state
air.hittime = 13+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -4.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-4.0           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(4)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Attack
[Statedef 210]
type = S
movetype = A
physics = S
ctrl = 0
anim = 210
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 0,1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(1*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(50*fvar(11)*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-60
hitsound = s1,1                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 16+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 16+3*(var(42))             ;Time opponent is in hit state
air.hittime = 16+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -5.0            ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -5.0,-4.5           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.9*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(6)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Forward Medium Attack
[Statedef 215]
type = S
movetype = A
physics = S
ctrl = 0
anim = 215
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 210, PA];Compensation for sprite alignment
type = posadd
trigger1 = animelemtime(6)=0
x = 10
[State 210, PA];Compensation for sprite alignment
type = velset
trigger1 = animelemtime(6)=0
x = 8.0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 0,1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(2*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(70*fvar(11)*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = H                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-48
hitsound = s1,2                 ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 20+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 20+3*(var(42))             ;Time opponent is in hit state
air.hittime = 20+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 16
guard.hittime = 16
ground.velocity = -4.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-3.0           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Heavy Attack
[Statedef 220]
type = S
movetype = A
physics = S
ctrl = 0
anim = 220
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 220,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 0,1

[State 1100, Proj]
type = helper
trigger1 = animelemtime(5)=0
helpertype = normal
name = "CatchthedamntrainCJ"
ID = 20220
pos = 30,-55
postype = p1
stateno = 20220
ownpal = 1
facing = 1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(3*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(70*fvar(11)*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-60
hitsound = s1,2                 ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 20+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 20+3*(var(42))             ;Time opponent is in hit state
air.hittime = 20+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 16
guard.hittime = 16
ground.velocity = -6.0             ;Velocity at which opponent is pushed
air.type = High                 ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -6.0,-4.0           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(7)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 5z Smoke
[Statedef 20220]
type = A
movetype = I
physics = N
juggle = 0
anim = 20220
sprpriority = 5

[State 621, CA]
type = varset
trigger1 = ishelper(20220)
trigger1 = !(root,hitpausetime && root,stateno=220)
var(11) = floor(360.0*random/1000.0)
[State 621, CA]
type = varset
trigger1 = ishelper(20420)
trigger1 = !(root,hitpausetime && root,stateno=420)
var(11) = floor(360.0*random/1000.0)
[State 621, CA]
type = varset
trigger1 = ishelper(20610)
trigger1 = !(root,hitpausetime && root,stateno=610)
var(11) = floor(360.0*random/1000.0)

[State 621, CA]
type = posadd
trigger1 = ishelper(20220)
trigger1 = !(root,hitpausetime && root,stateno=220)
x = 5.0-floor(5.0*var(10)/10.0)
y = -2.0
[State 621, CA]
type = posadd
trigger1 = ishelper(20420)
trigger1 = !(root,hitpausetime && root,stateno=420)
x = 4.0-floor(4.0*var(10)/10.0)
y = -1.0
[State 621, CA]
type = posadd
trigger1 = ishelper(20610)
trigger1 = !(root,hitpausetime && root,stateno=610)
x = 5.0-floor(5.0*var(10)/10.0)
y = -2.0

[State 20220, T]
type = trans
trigger1 = var(10)<5;1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 20220, T]
type = trans
trigger1 = var(10)>=5;1
trans = addalpha
alpha = 256-floor(256.0*(var(10)-5)/5.0),256
ignorehitpause = 1

[State 20220, AD]
type = angledraw
trigger1 = time>=0
value = var(11)
scale = 0.5+(0.05*var(10)),0.5+(0.05*var(10))

[State 21100, Ass]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20220, Zeeky]
type = destroyself
trigger1 = var(10)>=10

[State 621, CA]
type = varadd
trigger1 = ishelper(20220)
trigger1 = !(root,hitpausetime && root,stateno=220)
trigger2 = ishelper(20610)
trigger2 = !(root,hitpausetime && root,stateno=610)
trigger3 = ishelper(20420)
trigger3 = !(root,hitpausetime && root,stateno=420)
var(10) = 1

;---------------------------------------------------------------------------
; Forward Heavy Attack
[Statedef 225]
type = S
movetype = A
physics = S
ctrl = 0
anim = 225+0*floor(var(24):=0)+0*floor(cond(var(57)=1,var(57):=0,1))
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(6*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 220,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(6)=0
trigger2 = animelemtime(9)=0
value = 0,1

[State 210, PA];Compensation for sprite alignment
type = posadd
trigger1 = animelemtime(6)=0
x = 10
[State 210, PA];Compensation for sprite alignment
type = velset
trigger1 = animelemtime(6)>=0 && animelemtime(8)<0
x = 8.0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=0
anim = 20225
ID = 20225
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
bindtime = -1
vel = 0,0
removetime = -2
pausemovetime = 0
scale = 0.5,0.5
sprpriority = -1
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "HitChecker"
ID = 20225
postype = p1
stateno = 20225
ownpal = 1
facing = 1

[State 225, MEX]
type = modifyexplod
trigger1 = animelemtime(6)=0
id = 20225
sprpriority = 5

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(6*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(40.0*cond(var(50)>0,1.25,1.0)*(fvar(11)/cond(var(57)=1,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-60
hitsound = s1,2                 ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 20+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 20+3*(var(42))             ;Time opponent is in hit state
air.hittime = 20+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 16
guard.hittime = 16
ground.velocity = -4.0             ;Velocity at which opponent is pushed
air.type = High                 ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-2.0           ;(X,Y)-velocity at which opponent is pushed
getpower = 45,45
givepower = 22,22
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 225, MHR]
type = movehitreset
trigger1 = animelemtime(9)=0

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(6*ln(2)) + 0.5)),2,0) || var(24)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089])) || var(24)
trigger1 = animelemtime(9)>=0 && animelemtime(10)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(45.0*cond(var(50)>0,1.25,1.0)*(fvar(11)/cond(var(57)=1,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-60
hitsound = s1,2                 ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 20+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 20+3*(var(42))             ;Time opponent is in hit state
air.hittime = 20+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 16
guard.hittime = 16
ground.velocity = -2.0,-8.0;-12.0,-7.0             ;Velocity at which opponent is pushed
guard.velocity = -4.0
air.type = High                 ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.0,-8.0;-12.0,-7.0           ;(X,Y)-velocity at which opponent is pushed
airguard.velocity = -2.0,-8.0
getpower = 45,45
givepower = 22,22
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 225

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(555)
trigger1 = target(555),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 1;Change index
ignorehitpause = 1
persistent = 0

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(225)
trigger1 = target(225),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 1;Change index
ignorehitpause = 1
persistent = 0

;[State 0, Wallbounce]
;type = TargetState
;trigger1 = numtarget(225)
;trigger1 = p2statetype = A && (movehit = 1)
;value = 260
;ID = 225
;persistent = 0
;ignorehitpause = 1

[State 225, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemtime(7)>=0 && animelemtime(8)<1
fvar(10) = fvar(10)*0.925*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemtime(9)>=0 && animelemtime(10)<1
fvar(10) = fvar(10)*0.925*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(10)=0
trigger2 = animelemtime(9)>=0 && animelemtime(10)<0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 6z Hit Check
[Statedef 20225]
type = A
movetype = I
physics = N
juggle = 0
velset = 0,0
anim = 1998
sprpriority = 1

[State 21301, PVA]
; Deplete a leaf if Mamizou fucks up a combo and gets hit while riding.
type = parentvaradd
trigger1 = root,movetype = H
trigger1 = root,var(47)>0
trigger1 = (root,var(50))<=0
var(47) = -1
persistent = 0

[State 21100, Zeeky]
type = destroyself
triggerall = ishelper(20225)
trigger1 = root,stateno!=225
trigger2 = root,stateno=225
trigger2 = root,animelemtime(12)>=0

[State 21100, Zeeky]
type = destroyself
triggerall = ishelper(20625)
trigger1 = root,stateno!=625
trigger2 = root,stateno=626

;---------------------------------------------------------------------------
; Crouching Light Attack
[Statedef 400]
type = C
movetype = A
physics = C
ctrl = 0
anim = 400
sprpriority = 1
juggle = 0
facep2 = 1

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
trigger1 = animelemtime(4)=0
value = 0,0

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(5*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = C,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(25*fvar(11)*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-25
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = Low               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+1*(var(42))             ;Time that the opponent slides back
ground.hittime = 13+1*(var(42))             ;Time opponent is in hit state
air.hittime = 13+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -4.0             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-4.0           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(5)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Attack
[Statedef 410]
type = C
movetype = A
physics = C
ctrl = 0
anim = 410
sprpriority = 1
juggle = 0
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
trigger1 = animelemtime(3)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0,1
channel = 1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(6*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
trigger1 = !movecontact && !movereversed
attr = C,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(55*fvar(11)*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -15,-65
hitsound = s1,1                 ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 16+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 16+3*(var(42))             ;Time opponent is in hit state
air.hittime = 16+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 13;15
guard.hittime = 13;15
ground.velocity = -2.5             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.5,-6.0           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(6)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Heavy Attack
[Statedef 420]
type = C
movetype = A
physics = C
ctrl = 0
anim = 420
sprpriority = 1
juggle = 0
facep2 = 1

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
trigger1 = animelemtime(4)=0
value = 0,1

[State 1100, Proj]
type = helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "CatchthedamntrainCJ"
ID = 20420
pos = 30,-5
postype = p1
stateno = 20220
ownpal = 1
facing = 1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(7*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = C,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(75*fvar(11)*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-10
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = Low               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 25+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 25+3*(var(42))             ;Time opponent is in hit state
air.hittime = 25+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -2.0,-6.5             ;Velocity at which opponent is pushed
guard.velocity = -7.5
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.0,-6.5           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.75*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(5)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

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
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Light Attack
[Statedef 600]
type = A
movetype = A
physics = A
ctrl = 0
anim = 600
sprpriority = 1
juggle = 0

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
trigger1 = animelemtime(3)=0
value = 0,0

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(8*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(3)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = A,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(45*fvar(11)*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-20
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+1*(var(42))             ;Time that the opponent slides back
ground.hittime = 13+1*(var(42))             ;Time opponent is in hit state
air.hittime = 13+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -4.0*cond(p2dist x<0,-1,1)             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0*cond(p2dist x<0,-1,1),-4.0           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.9*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(5)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Aerial Medium Attack
[Statedef 610]
type = A
movetype = A
physics = A
ctrl = 0
anim = 610
sprpriority = 1
juggle = 0

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
trigger1 = animelemtime(5)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 0,1

[State 1100, Proj]
type = helper
trigger1 = animelemtime(5)=0
helpertype = normal
name = "Numbah9LargeExtraDip"
ID = 20220
pos = 30,-55
postype = p1
stateno = 20220
ownpal = 1
facing = 1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(9*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = A,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(55*fvar(11)*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -15,-55
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 13+3*(var(42))             ;Time opponent is in hit state
air.hittime = 13+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -5.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -5.0,-5.0           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(7)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Aerial Heavy Attack
[Statedef 620]
type = A
movetype = A
physics = A
ctrl = 0
anim = 620
sprpriority = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(0*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1100, Proj]
type = helper
trigger1 = animelemtime(1)=0
helpertype = normal
name = "GenericWaterElectrictype"
ID = 20620
pos = -22,-56
postype = p1
stateno = 20620
ownpal = 1
facing = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1100, Proj]
type = helper
trigger1 = animelemtime(6)=0
helpertype = normal
name = "Swingandamiss"
ID = 20621
pos = 0,-56
postype = p1
stateno = 20621
ownpal = 1
facing = 1
size.xscale = 0.75
size.yscale = 0.75

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 220,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 0,1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(0*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(6)>=0 && animelemtime(8)<0
trigger1 = !movecontact && !movereversed
attr = A,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(75*fvar(11)*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -15,cond(numenemy,ceil(p2dist y+enemynear,const(size.mid.pos.y)),-1)
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 13+3*(var(42))             ;Time opponent is in hit state
air.hittime = 13+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 18
guard.hittime = 18
ground.velocity = -4.0,-8.0             ;Velocity at which opponent is pushed
guard.velocity = -4.0
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-8.0           ;(X,Y)-velocity at which opponent is pushed
airguard.velocity = -4.0,-8.0
getpower = 90,90
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 620;555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

;--------------------------
; j5z Lantern
[Statedef 20620]
type = A
movetype = I
physics = N
juggle = 0
anim = 20620
sprpriority = -1

[State 20210, CA]
type = changeanim
trigger1 = root,stateno = 620
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = 20620
elem = 6
[State 20210, CA]
type = changeanim
trigger1 = root,stateno = 620
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = 20620
elem = 7
[State 20210, CA]
type = changeanim
trigger1 = root,stateno = 620
trigger1 = root,animelemtime(8)=0
value = 20620
elem = 8

[State 20620, AngleSet]
type = null
trigger1 = animelemno(0)=1
trigger1 = (var(0):=210)||1
trigger2 = animelemno(0)=2
trigger2 = (var(0):=220)||1
trigger3 = animelemno(0)=3
trigger3 = (var(0):=225)||1
trigger4 = animelemno(0)=4
trigger4 = (var(0):=230)||1
trigger5 = animelemno(0)=5
trigger5 = (var(0):=240)||1
trigger6 = animelemno(0)=6
trigger6 = (var(0):=0)||1
trigger7 = animelemno(0)=7
trigger7 = (var(0):=80)||1
trigger8 = animelemno(0)=8
trigger8 = (var(0):=120)||1
trigger9 = animelemno(0)=9
trigger9 = (var(0):=-45)||1
trigger10 = animelemno(0)=10
trigger10 = (var(0):=210)||1

[State 621, BTR]
type = bindtoroot
trigger1 = animelemno(0)=1
pos = -22,-56
ignorehitpause = 1
[State 621, BTR]
type = bindtoroot
trigger1 = animelemno(0)=2
pos = -18,-49
ignorehitpause = 1
[State 621, BTR]
type = bindtoroot
trigger1 = animelemno(0)=3
trigger2 = animelemno(0)=4
pos = -20,-46
ignorehitpause = 1
[State 621, BTR]
type = bindtoroot
trigger1 = animelemno(0)=5
pos = -12,-40
ignorehitpause = 1
[State 621, BTR]
type = bindtoroot
trigger1 = animelemno(0)=6
pos = 20,-79
ignorehitpause = 1
[State 621, BTR]
type = bindtoroot
trigger1 = animelemno(0)=7
pos = -15,-77
ignorehitpause = 1
[State 621, BTR]
type = bindtoroot
trigger1 = animelemno(0)=[8,9]
pos = -10,-69
ignorehitpause = 1
[State 621, BTR]
type = bindtoroot
trigger1 = animelemno(0)>=10
pos = -15,-65
ignorehitpause = 1

[State 20620, AD]
type = angledraw
trigger1 = time>=0
value = var(0)
ignorehitpause = 1

[State 20220, Zeeky]
type = destroyself
trigger1 = root,stateno != 620
trigger2 = animtime = 0

;--------------------------
; j5z Swing
[Statedef 20621]
type = A
movetype = I
physics = N
juggle = 0
anim = 20621
sprpriority = 5

[State 20210, CA]
type = changeanim
trigger1 = root,stateno = 620
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = 20621
elem = 1
[State 20210, CA]
type = changeanim
trigger1 = root,stateno = 620
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = 20621
elem = 2
[State 20210, CA]
type = changeanim
trigger1 = root,stateno = 620
trigger1 = root,animelemtime(8)=0
value = 20621
elem = 3

[State 20620, AngleSet]
type = null
trigger1 = animelemno(0)=1
trigger1 = (var(0):=40)||1
trigger2 = animelemno(0)=2
trigger2 = (var(0):=90)||1
trigger3 = animelemno(0)=3
trigger3 = (var(0):=180)||1
trigger4 = animelemno(0)=4
trigger4 = (var(0):=230)||1

[State 621, BTR]
type = bindtoroot
trigger1 = time>=0
pos = 0,-75
ignorehitpause = 1

[State 20620, AD]
type = angledraw
trigger1 = time>=0
value = var(0)
ignorehitpause = 1

[State 20620, T]
type = trans
trigger1 = time>=0
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 20620, ASS]
type = assertspecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1 

[State 20220, Zeeky]
type = destroyself
trigger1 = root,stateno != 620
trigger2 = animtime = 0

;---------------------------------------------------------------------------
; Aerial Down Heavy Attack
[Statedef 625]
type = A
movetype = A
physics = N
ctrl = 0
anim = 625
sprpriority = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 220,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 0,1

[State 625, Wall youkai]
type = helper
trigger1 = animelemtime(6)=0
helpertype = normal
name = "Shaka, when this thing fell"
ID = 20625
pos = 0,-5
postype = p1
stateno = 20625
ownpal = 1
facing = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(6)=0
helpertype = normal
name = "HitChecker"
ID = 20625
postype = p1
stateno = 20225
ownpal = 1
facing = 1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(1*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(7)>=0
trigger1 = !movecontact && !movereversed
attr = A,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(80*cond(var(50)>0,1.25,1.0)*fvar(11)*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAFD                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-10
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 16+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 16+3*(var(42))             ;Time opponent is in hit state
air.hittime = 16+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 18
guard.hittime = 18
ground.velocity = -3.0*cond(p2dist x<0,-1,1),cond(var(42),5,0)             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3.0*cond(p2dist x<0,-1,1),5           ;(X,Y)-velocity at which opponent is pushed
down.velocity = 0.0,0.0
getpower = 90,90
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = cond(var(42),1,0);0
air.fall = 1
fall.recover = 0
p2facing = 1
ID = 625;555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.75*cond(fvar(10)>=1.0,fvar(30),1.0)
ignorehitpause = 1
persistent = 0

[State 220, TS]
type = targetstate
triggerall = numtarget(625)
trigger1 = movehit
trigger1 = var(42)
trigger1 = var(15):=1||1
trigger2 = !var(42)
trigger2 = p2statetype=A && movehit=1 && (p2stateno!=[6020,6110])
id = 625
value = 450+5570*(!var(42))
persistent = 0
ignorehitpause = 1

[State 625, Flag Recovery]
type = statetypeset
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 625, Grav]
type = veladd
trigger1 = time
y = 0.5

[State 625, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -(vel y)
value = 626

;---------------------------------------------------------------------------
; Aerial Down Heavy Attack
[Statedef 626]
type = S
movetype = I
physics = S
ctrl = 0
anim = 626
sprpriority = 1
velset = 0,0
movehitpersist = 1
facep2 = 0

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
; j2z The Wall
[Statedef 20625]
type = A
movetype = I
physics = N
juggle = 0
anim = 20625
sprpriority = 5

[State 20210, Is Mamizou a fan of Pink Floyd?]
type = changeanim
trigger1 = root,stateno = 625
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = 20625
elem = 1
[State 20210, CA]
type = changeanim
trigger1 = root,stateno = 625
trigger1 = root,animelemtime(7)=0
value = 20625
elem = 2

;[State 20620, AngleSet]
;type = null
;trigger1 = animelemno(0)=1
;trigger1 = (var(0):=210)||1
;trigger2 = animelemno(0)=2
;trigger2 = (var(0):=220)||1
;trigger3 = animelemno(0)=3
;trigger3 = (var(0):=225)||1
;trigger4 = animelemno(0)=4
;trigger4 = (var(0):=230)||1
;trigger5 = animelemno(0)=5
;trigger5 = (var(0):=240)||1
;trigger6 = animelemno(0)=6
;trigger6 = (var(0):=0)||1
;trigger7 = animelemno(0)=7
;trigger7 = (var(0):=80)||1
;trigger8 = animelemno(0)=8
;trigger8 = (var(0):=120)||1
;trigger9 = animelemno(0)=9
;trigger9 = (var(0):=-45)||1
;trigger10 = animelemno(0)=10
;trigger10 = (var(0):=210)||1

[State 621, BTR]
type = bindtoroot
trigger1 = time>=0
pos = 20,-5
ignorehitpause = 1

[State 20620, AD]
type = angledraw
trigger1 = time>=0
value = var(0)
ignorehitpause = 1

[State 20220, Zeeky]
type = changestate
trigger1 = root,stateno = 626
value = 20626

[State 20220, Zeeky]
type = destroyself
trigger1 = root,stateno != 625

;--------------------------
; j2z The Wall
[Statedef 20626]
type = A
movetype = I
physics = N
juggle = 0
anim = 20626
sprpriority = 5

[State 20626, PSND]
type = playsnd
trigger1 = time = 0
value = 625,10

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 8
freq = 60
ampl = -4

[State 20626, Mamizou harassed Mr Gorbachev one too many times]
type = posset
trigger1 = time = 0
y = 0

[State 20626, T]
type = trans
trigger1 = time>8
trans = addalpha
alpha = 256-floor(256.0*(time-8)/8.0),floor(256.0*(time-8)/8.0)
ignorehitpause = 1

[State 20220, Zeeky]
type = destroyself
trigger1 = time>16

;---------------------------------------------------------------------------
;Throw
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
anim = 800
sprpriority = 1

[State 800, CS]
type = changestate
trigger1 = numtarget(800)
trigger1 = movehit
value = 810
ignorehitpause = 1
persistent = 0

[State 800, Tech Reset]
type = varset
trigger1 = 1
var(14) = 0

[State 800, Tech Set]
type = varset
trigger1 = numenemy
trigger1 = enemynear(0),statetype != A
trigger1 = enemynear(0),stateno = [0,999]
trigger1 = enemynear(0),stateno != [200,799]
trigger1 = enemynear(0),stateno != [100,119]
var(14) = 15

[State 800, VS]
type = varset
trigger1 = AILevel <= 0
trigger1 = animelemtime(1)=0
var(10)=ifelse(command="holdback",1,0)

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 210,0
channel = 0

[State 800, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 0,1

[State 800, IDDQD]
type = HitDef
trigger1 = animelemtime(2)>=0 && animelemtime(3)<0
trigger1 = var(30)=0 ;Throw Limited
attr = S,NT
hitflag = M-
guardflag = 
fall.animtype = Diagup
priority = 7,Miss
damage = 0,0
pausetime = 0,0
sparkno = -1
hitsound = -1
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1facing = 1
p2facing = 1
id = 800
numhits = 0

[State 800, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(3)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State ASS]
type = AttackDist
trigger1 = 1
value = 0

[State IDCLIP]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Grab - Part 2
[Statedef 810]
type = S
movetype = A
physics = S
ctrl = 0
anim = 810
velset = 0,0
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
id = 800
pos = 38,0

[State 801, TF]
type = targetfacing
trigger1 = time = 0
trigger2 = animelemtime(2)=0
value = -1
id = 800

[State 801, Tech Success]
type = ChangeState
triggerall = numtarget
triggerall = var(14)>0
trigger1 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger1 = (target,AILevel=0)&&(target,command = "x" || target,command = "y" || target,command = "z")
trigger2 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger2 = (target,AILevel=0)&&(target,command = "a" || target,command = "b" || target,command = "c")
trigger3 = (target,AILevel>0)&&(random<=floor(100*AIlevel*AIlevel/64.0))
trigger4 = (target,name="Training")&&(target,var(16)=1)
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(14)>0
var(14) = -1

[State 801, TB]
type = targetbind
trigger1= animelemtime(2)=0
id = 800
pos = 16,-78
[State 801, TB]
type = targetbind
trigger1= animelemtime(3)=0
id = 800
pos = -8,-103
[State 801, TB]
type = targetbind
trigger1= animelemtime(4)=0
id = 800
pos = -15,-100
[State 801, TB]
type = targetbind
trigger1= animelemtime(5)=0
id = 800
pos = -17,-97
[State 801, TB]
type = targetbind
trigger1= animelemtime(6)=0
id = 800
pos = 35,-97

[State 801, TS]
type = targetstate
trigger1 = animelemtime(6)=0
id = 800
value = 853

[State 810, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 0,1
channel = 2

[State 810, PSND]
type = hitadd
trigger1 = animelemtime(6)=0
value = 1

[State 810, PSND]
type = targetlifeadd
trigger1 = animelemtime(6)=0
value = -80
id = 800
kill = 1

[State 810, PSND]
type = targetpoweradd
trigger1 = animelemtime(6)=0
value = 40
id = 800

[State 810, PSND]
type = poweradd
trigger1 = animelemtime(6)=0
value = 80

[State 810, Prorate]
type = varset
trigger1 = animelemtime(6)=0
trigger1 = (var(4):=1)||1;Set proration flag
fvar(10) = fvar(10)*0.9

[State 801, IKEMEN Safeguard] ;I Really didn't want to implement this but the alternative would be much messier
type = ChangeState
trigger1 = !numtarget(800)
trigger1 = animelemtime(6)<=0
value = 891

[State 1205, CS]
type = changestate
trigger1 = animtime = 0
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

[State 890, PSND]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 890,0
channel = 0

[State 890, PSND]
type = PlaySnd
trigger1 = time = 0
value = 890,10

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
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
persistent = 4
anim = 8020
ID = 8000
pos = 0,-70
postype = p1 ;p2,front,back,left,right
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
x = -8
y = 0

[State 890, VM]
type = veladd
trigger1 = time>=0
trigger1 = vel x < 0
x = 0.5

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
type = U
physics = N
movetype = A
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 891, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
ignorehitpause = 1

[State 890, PSND]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 890,0
channel = 0

[State 890, PSND]
type = PlaySnd
trigger1 = time = 0
value = 890,10

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
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
persistent = 4
anim = 8020
ID = 8000
pos = 0,-70
postype = p1 ;p2,front,back,left,right
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
value = cond(statetype!=A,0,50)
ctrl = cond(statetype!=A,1,0)

;---------------------------------------------------------------------------
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
value = ifElse(SelfAnimExist(5940),5940,130)

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
x = -8
y = 0

[State 890, VM]
type = veladd
trigger1 = time>=0
trigger1 = vel x < 0
x = 0.5

[State 895, CS]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1