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
trigger1 = animelemtime(4)=0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 0,0

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(0*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(18*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-45
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
air.velocity = -4.0,-2.0           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.98*cond(fvar(10)>=1.0,(fvar(30)),1.0)
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
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Attack
[Statedef 210]
type = S
movetype = A
physics = S
ctrl = 0
anim = 210+0*floor(var(35):=0)+0*floor(var(57):=0)
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
trigger1 = animelemtime(6)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 210,10

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(6)=0
helpertype = normal ;player
name = "FX"
ID = 20210
stateno = 20210
pos = 50,-54
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 210, MHR]
type = movehitreset
trigger1 = animelemtime(7)=0 || animelemtime(8)=0

[State 200, 1]
type = HitDef
triggerall = ifelse((var(33)&floor(exp(1*ln(2)) + 0.5)),0,1) || var(35)
triggerall = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089])) || var(35)
triggerall = !movecontact && !movereversed
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger2 = animelemtime(7)>=0 && animelemtime(8)<0
trigger3 = animelemtime(8)>=0 && animelemtime(9)<0
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(18*(fvar(11)/cond(var(57)=1,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),0
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 6,6                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-45
hitsound = s1,1                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 16+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 16+3*(var(42))             ;Time opponent is in hit state
air.hittime = 16+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -4.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-2.0           ;(X,Y)-velocity at which opponent is pushed
getpower = 20,20
givepower = 10,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(555) && movehit
trigger1 = target(555),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 1;Change index
ignorehitpause = 1
persistent = 0

[State 210, VS]
type = varset
trigger1 = movecontact
var(35) = 1
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger1 = movehit
fvar(10) = fvar(10)*0.96*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
trigger1 = movehit
fvar(10) = fvar(10)*0.96*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(8)>=0 && animelemtime(9)<0
trigger1 = movehit
fvar(10) = fvar(10)*0.96*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(9)=0
trigger2 = animelemtime(8)>=0 && animelemtime(9)<0
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
; 5Y Ice FX
[Statedef 20210]
type = S
movetype = A
physics = N
juggle = 0
anim = 20210
sprpriority = 5

[State 20210, BTR]
type = bindtoroot
trigger1 = 1
pos = 50,-54
ignorehitpause = 1

[State 20210, AD]
type = AngleDraw
trigger1 = 1
scale = 0.25*(1+ceil(time%4<2)),0.25*(1+ceil(time%4<2))
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

[State 20210, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 20210, Frost]
type = Explod
trigger1 = time
persistent=4
anim = 20211+floor(4.0*random/1000.0)
ID = 20211
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
sprpriority = 5
pausemovetime = 0
supermovetime = 0
scale = 0.4,0.4
vel = -1.5+0.15*(Random%21),1+0.1*(Random%10)
accel = 0,0.05
ignorehitpause = 1

[State 20210, Frost]
type = Explod
trigger1 = time = 1 || time = 2
trigger2 = time = 3 || time = 4
anim = 20209
ID = 20209
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
sprpriority = 5
pausemovetime = 0
supermovetime = 0
scale = 0.2,0.2
vel = 2*cos((115-15*time)*Pi/180.0),-4*sin((115-15*time)*Pi/180.0)
accel = 0,0.25
ignorehitpause = 1

[State 20210, Frost]
type = Explod
trigger1 = time = 1 || time = 2
trigger2 = time = 3 || time = 4
anim = 20209
ID = 20209
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
sprpriority = 5
pausemovetime = 0
supermovetime = 0
scale = 0.2,0.2
vel = -2*cos((115-15*time)*Pi/180.0),-4*sin((115-15*time)*Pi/180.0)
accel = 0,0.25
ignorehitpause = 1

[State 20210, Zeeky]
type = destroyself
trigger1 = root,stateno != 210

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

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 210,10

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=0
anim = 20209
ID = 20209
pos = -30,-50
postype = p1 ;p2,front,back,left,right
vel = -1.0-0.1*(random%10),2.0+0.1*(random%10)
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=0
anim = 20209
ID = 20209
pos = -30,-50
postype = p1 ;p2,front,back,left,right
vel = 1.0+0.1*(random%10),2.0+0.1*(random%10)
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=0
anim = 20209
ID = 20209
pos = -30,-50
postype = p1 ;p2,front,back,left,right
vel = -1.0-0.1*(random%10),-2.0-0.1*(random%10)
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=0
anim = 20209
ID = 20209
pos = -30,-50
postype = p1 ;p2,front,back,left,right
vel = 1.0+0.1*(random%10),-2.0-0.1*(random%10)
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=0
anim = 20215
ID = 20215
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = animelemtime(6)>=0
ID = 20215
pos = 10,0
postype = p1 ;p2,front,back,left,right
scale = 0.667,1.0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 215,0
channel = 0

[State 215, VS]
type = velset
trigger1 = animelemtime(5)=0
x = 5.0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 0,1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(2*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemno(0)=6
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(72*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = H                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-45
hitsound = s1,1                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 19+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 19+3*(var(42))             ;Time opponent is in hit state
air.hittime = 19+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 15
guard.hittime = 15
ground.velocity = -10.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -10.0,-4.5           ;(X,Y)-velocity at which opponent is pushed
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
forcestand=1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
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
trigger1 = animelemtime(5)=0
value = 220,0
channel = 0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(5)=0
anim = 20220
ID = 20220
pos = 28,-57
postype = p1 ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 210,10

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(3*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(63*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-50
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 21+3*(var(42)>0)             ;Time that the opponent slides back
ground.hittime = 21+3*(var(42)>0)             ;Time opponent is in hit state
air.hittime = 21+3*(var(42)>0)             ;Time opponent is in hit state
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -6.0,0.0;-6.0*(var(42)>0)             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -6.0,-6.0           ;(X,Y)-velocity at which opponent is pushed
getpower = 90,90
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0;+1*(var(42)>0)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
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
var(33) = var(33) | floor(exp(4*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
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

[State 210, EX]
type = Explod
trigger1 = animelemtime(3)=0
anim = 20209
ID = 20209
pos = 30,0
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
ontop = 1
sprpriority = 5
facing = 1
scale = 0.7,0.7
vel = 0.8,-0.4
accel = -0.01,0.02
ignorehitpause = 1
persistent = 0

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(4*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
trigger1 = !movecontact && !movereversed
attr = C,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(27*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-10
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
air.velocity = -4.0,-3.0           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
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
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Attack
[Statedef 410]
type = C
movetype = A
physics = C
ctrl = 0
anim = 410+0*floor(var(26):=0)+0*floor(var(57):=0)
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
trigger1 = animelemtime(5)=0
value = 215,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 210,10

[State 210, EX]
type = Explod
trigger1 = animelemtime(6)=0
anim = 20209
ID = 20209
pos = 33,0
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
ontop = 1
sprpriority = 5
facing = 1
scale = 0.7,0.7
vel = 0.8,-0.4
accel = -0.01,0.02
ignorehitpause = 1
persistent = 0

[State 210, EX]
type = Explod
trigger1 = animelemtime(6)=0
anim = 20209
ID = 20209
pos = 33,0
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
ontop = 1
sprpriority = 5
facing = -1
scale = 0.7,0.7
vel = 0.9,0.42
accel = -0.01,0
ignorehitpause = 1
persistent = 0

[State 210, EX]
type = Explod
trigger1 = animelemtime(6)=0
anim = 20209
ID = 20209
pos = 33,0
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
ontop = 1
sprpriority = 5
facing = 1
vfacing = -1
scale = 0.7,0.7
vel = -0.5,-1
accel = 0,0.01
ignorehitpause = 1
persistent = 0

[State 210, EX]
type = Explod
trigger1 = animelemtime(6)=0
anim = 20209
ID = 20209
pos = 33,0
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
ontop = 1
sprpriority = 5
facing = -1
vfacing = -1
scale = 0.7,0.7
vel = -0.4,0.4
accel = 0,0
ignorehitpause = 1
persistent = 0

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(6)=0
helpertype = normal ;player
name = "FX"
ID = 20410
stateno = 20410
pos = 33,-5
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = 0.4
size.yscale = 0.4
supermovetime = 0
pausemovetime = 0

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(6)=0
helpertype = normal ;player
name = "FX"
ID = 20411
stateno = 20410
pos = 33,-5
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = 0.4
size.yscale = 0.4
supermovetime = 0
pausemovetime = 0

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(6)=0
helpertype = normal ;player
name = "FX"
ID = 20412
stateno = 20410
pos = 33,-5
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = 0.4
size.yscale = 0.4
supermovetime = 0
pausemovetime = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(6)=1
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;--------------------------
; 5Y Ice FX
[Statedef 20410]
type = A
movetype = A
physics = N
juggle = 0
anim = 20410
sprpriority = 5

[State 20410, AngleSet]
type = null
triggerall = time = 0
trigger1 = ishelper(20410)
trigger1 = (fvar(0):=-60)||1
trigger2 = ishelper(20411)
trigger2 = (fvar(0):=-71)||1
trigger3 = ishelper(20412)
trigger3 = (fvar(0):=-49)||1

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
attr = SCA,AA,AP
slot = 0
stateno = 20411
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
value = 20411

;--------------------------
; 5Y Ice FX
[Statedef 20411]
type = A
movetype = A
physics = N
juggle = 0
sprpriority = 5
movehitpersist = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,AA,AP
slot = 0
stateno = 20412
time = -1
ignorehitpause = 1

[State 20210, AD]
type = AngleDraw
trigger1 = 1
value = -fvar(0)
ignorehitpause = 1

[State 20411, VS]
type = velset
trigger1 = time = 0
X = 8.5*cos(fvar(0)*Pi/180)
Y = 8.5*sin(fvar(0)*Pi/180)

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

[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(32) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(32)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(32) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = root,var(33) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 230, 2]
type = HitDef
trigger1 = (root,var(33)&floor(exp(5*ln(2)) + 0.5)) && (root,var(26)=0)
trigger2 = !(!movecontact && !movereversed)
Attr = S,NP
HitFlag = 

[State 200, 1]
type = HitDef
trigger1 = !(root,var(33)&floor(exp(5*ln(2)) + 0.5)) || root,var(26)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = !movecontact && !movereversed
attr = C,NP                     ;Attribute: Standing, Normal Attack
damage = ceil(18*(root,fvar(11)/cond(root,var(57)=2,(root,fvar(30)),1))),3                   ;Damage that move inflicts, guard damage
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 0,6                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,0
hitsound = s1,12                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = Low               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 17             ;Time that the opponent slides back
ground.hittime = 17            ;Time opponent is in hit state
air.hittime = 17             ;Time opponent is in hit state
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -3.0             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3.0,-6.5           ;(X,Y)-velocity at which opponent is pushed
getpower = 20,20
givepower = 10,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 220, First Combo Hit]
type = parentvarset
triggerall = numtarget(555)
trigger1 = target(555),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 2;Change index
ignorehitpause = 1
persistent = 0

[State 20411, Hitflag]
type = parentvarset
trigger1 = movecontact
var(26) = 1
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.95*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

;-------FORCE GROUND RECOVERY-------
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

;--------RESET--------
[State -2, P2 Recovery] ;Notice how ID 200 is being used. ID must match those Hitdefs
type= targetstate
trigger1 = numtarget(555)
trigger1 = (target(555),stateno=5020) && (target(555),alive) && (target(555),hitfall) ;Hit out of the air while alive and already falling
ID = 555
value = 5085
ignorehitpause = 1

[State 20411, CS]
type = changestate
value = 20412
trigger1 = FrontEdgeBodyDist <= -32
trigger2 = MoveContact||movereversed
trigger3 = screenpos y < -10

;--------------------------
; 5Y Ice FX
[Statedef 20412]
type = A
movetype = I
physics = N
juggle = 0
velset = 0,0
anim = 1998
sprpriority = 5
movehitpersist = 1

[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(32) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(32)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(32) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = root,var(33) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

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

;-------FORCE GROUND RECOVERY-------
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

;--------RESET--------
[State -2, P2 Recovery] ;Notice how ID 200 is being used. ID must match those Hitdefs
type= targetstate
trigger1 = numtarget(555)
trigger1 = (target(555),stateno=5020) && (target(555),alive) && (target(555),hitfall) ;Hit out of the air while alive and already falling
ID = 555
value = 5085
ignorehitpause = 1

[State 20415, CS]
type = changestate
trigger1 = time>5
value = 999

;---------------------------------------------------------------------------
; DownForward Medium Attack
[Statedef 415]
type = C
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 415+0*floor(var(57):=0)
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

[State 425, VS]
type = velset
trigger1 = animelemtime(10)>=0
x = 3.0

[State 0, Width]
type = Width
trigger1 = animelemtime(10)>=0
edge = 40,0
ignorehitpause = 1
;persistent = 

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(7)=0
trigger1 = (var(10):=999999)||1
name = "Snowball"
; Snowballing or snowdropping is the human sexual practice in which one person takes someone else's
; semen into his or her mouth and then passes it to the mouth of the other, usually through kissing.
; The term was originally used only by gay and bisexual men. Researchers who surveyed over 1,200 
; gay or bisexual men at New York LGBT community events in 2004 found that around 20% said they had
; engaged in snowballing at least once. In heterosexual couples, a woman who has performed fellatio
; may afterwards return the semen to her partner's mouth, mixed with saliva; the couple or other
; partners may then exchange the fluid several times, causing its volume to increase (hence "snowballing").
; Most heterosexual men are uncomfortable with the practice. ~ Wikipedia
ID = 20415
stateno = 20415
pos = 28,0
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 200, Hitdef1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(7*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(10)>=0
trigger1 = !movecontact && !movereversed
attr = C,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(72*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAFD                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-40
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 21+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 21+3*(var(42))             ;Time opponent is in hit state
air.hittime = 21+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 18
guard.hittime = 18
ground.velocity = -8.0;,-4.0
down.velocity = 0.0,0.0
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -8.0,-4.0           ;(X,Y)-velocity at which opponent is pushed
getpower = 80,80
givepower = 40,40
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
triggerall = animelemtime(10)>=2
trigger1 = movecontact||movereversed
trigger2 = animelemtime(14)>2
trigger2 = command!="holdy"
trigger3 = time >= 120
trigger4 = numhelper(20415)=0
value = 416

;---------------------------------------------------------------------------
; DownForward Heavy Attack
[Statedef 416]
type = C
movetype = I
physics = C
ctrl = 0
anim = 416
sprpriority = 1
movehitpersist = 1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = 415,0
channel = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;--------------------------
; 3Y Ice FX
[Statedef 20415]
type = S
movetype = I
physics = N
juggle = 0
anim = 20415
sprpriority = 5

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,AA,AP
slot = 0
stateno = 20417
time = -1
forceair = 0
ignorehitpause = 1
;persistent = 

[State 20210, BTR]
type = bindtoroot
trigger1 = 1
pos = 28,0
ignorehitpause = 1

[State 20415, VS]
type = varadd
trigger1 = root,stateno = 415
trigger1 = root,animelemtime(10)>=0
var(0) = -6

[State 21501, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21501, NHB]
type = nothitby
trigger1 = root,stateno = 415
trigger1 = root,animelemtime(10)<0
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21501, NHB]
type = nothitby
trigger1 = root,stateno = 415
trigger1 = root,animelemtime(10)>=0
value = ,AA,AT
ignorehitpause = 1

[State 240, 1]
type = PlaySnd
trigger1 = root,stateno = 415
trigger1 = root,animelemtime(10)>=0
value = 415,10
channel = 3
persistent = 0

[State 20210, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 20415, CS]
type = changestate
trigger1 = root,stateno = 416
trigger1 = root,movecontact=0
value = 20416

[State 20415, CS]
type = changestate
trigger1 = root,stateno != 415
trigger2 = root,stateno = 415
trigger2 = root,movecontact
value = 20417

[State 20415, VS]
type = varadd
trigger1 = root,stateno = 415
trigger1 = root,animelemtime(10)>=0
trigger1 = fvar(0)<1.0
fvar(0) = 0.05

[State 20210, AD]
type = AngleDraw
trigger1 = 1
value = var(0)
scale = 0.25+0.1*fvar(0),0.25+0.1*fvar(0)
ignorehitpause = 1

;--------------------------
; 3Y Ice FX
[Statedef 20416]
type = S
movetype = A
physics = N
juggle = 0
anim = 20418
sprpriority = 5

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,AA,AP
slot = 0
stateno = 20417
time = -1
forceair = 0
ignorehitpause = 1
;persistent = 

[State 20416, VS]
type = velset
trigger1 = 1
x = 3.0

[State 20415, VS]
type = varadd
trigger1 = 1
var(0) = -6

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

[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(32) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(32)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(32) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = root,var(33) | floor(exp(7*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 230, 2]
type = HitDef
trigger1 = (root,var(33)&floor(exp(7*ln(2)) + 0.5))
trigger2 = !(!movecontact && !movereversed)
Attr = S,NP
HitFlag = 

[State 200, Proj Hitdef]
type = HitDef
trigger1 = !(root,var(33)&floor(exp(7*ln(2)) + 0.5))
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = !movecontact && !movereversed
attr = S,NP                     ;Attribute: Standing, Normal Attack
damage = ceil(54*(root,fvar(11))),11                   ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAFD                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 0,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-40
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 14             ;Time that the opponent slides back
ground.hittime = 14             ;Time opponent is in hit state
air.hittime = 14             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -8.0;,-4.0
down.velocity = 0.0,0.0
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -8.0,-4.0           ;(X,Y)-velocity at which opponent is pushed
getpower = 80,80
givepower = 40,40
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.85*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

;-------FORCE GROUND RECOVERY-------
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

[State 20415, CS]
type = changestate
trigger1 = movecontact||movereversed
trigger2 = frontedgedist<20
value = 20417

[State 20415, VS]
type = varadd
trigger1 = fvar(0)<1.0
fvar(0) = 0.05

[State 20210, AD]
type = AngleDraw
trigger1 = 1
value = var(0)
scale = 0.25+0.1*fvar(0),0.25+0.1*fvar(0)
ignorehitpause = 1

;--------------------------
; 3Y Ice FX
[Statedef 20417]
type = S
movetype = I
physics = N
juggle = 0
anim = 1998
sprpriority = 5
movehitpersist=1

[State 240, 1]
type = PlaySnd
trigger1 = time=0
value = 415,11
channel = 3

[State 21501, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 18,-24
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 9*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = fvar(0),fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 18,-24
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 9*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = fvar(0),fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 18,-24
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 9*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = fvar(0),fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 18,-24
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 9*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = fvar(0),fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (fvar(0):=0.3+0.015*floor(11.0*random/1000.0))||1
anim = 20416+(random%2)
ID = 20416
pos = 18,-24
postype = p1
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 9*cos((45+floor(90.0*random/1000.0))*pi/180.0),-7*sin((45+floor(90.0*random/1000.0))*pi/180.0)
accel = 0.0,0.6
removetime = -2
scale = fvar(0),fvar(0)
sprpriority = 5
ownpal = 0
ignorehitpause = 1

[State 20416, Zeeky]
type = changestate;destroyself
trigger1 = time >= 20
value = 999

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
var(33) = var(33) | floor(exp(6*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 0,1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 420,0
channel = 0

[State 440, Velset]
type = velset
trigger1 = animelemtime(7)=0
x = 8.5

[State 440, Custom Physics]
type = statetypeset
trigger1 = animelemtime(7)=0
physics = N
[State 440, Custom Friction]
type = velmul
trigger1 = animelemtime(7)>2
x = 0.9

[State 215, Projectile]
type = Helper
trigger1 = animelemtime(4)=0
helpertype = normal ;player
name = "FX"
ID = 20420
stateno = 20420
pos = 2,-56
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(6*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(7)>=0 && animelemtime(10)<0
trigger1 = !movecontact && !movereversed
attr = C,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(63*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-20
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = Low               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 25+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 25+3*(var(42))             ;Time opponent is in hit state
air.hittime = 25+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -5.5,-4.5             ;Velocity at which opponent is pushed
guard.velocity = -7.5
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -5.5,-4.5           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.75*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(10)=0
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

;--------------------------
; 5Y Ice FX
[Statedef 20420]
type = A
movetype = A
physics = N
juggle = 0
anim = 20420
sprpriority = 5

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

[State 20420, VS]
type = varset
trigger1 = time < 4
fvar(0) = 0.125*time
ignorehitpause = 1

[State 20420, VS]
type = varset
trigger1 = time = 4
fvar(0) = 0.5

[State 20420, VS]
type = varset
trigger1 = root,anim=420
trigger1 = root,animelemtime(10)=0
var(1) = 1
persistent = 0

[State 20420, VS]
type = varset
trigger1 = var(1)
fvar(0) = 0.92*fvar(0)

[State 20420, Scale]
type = angledraw
trigger1 = 1
scale = fvar(0),fvar(0)
ignorehitpause = 1

[State 315]
type = BindtoRoot
trigger1 = root,Anim = 420
trigger1 = root,animelemtime(5)<0
pos = 2,-56
ignorehitpause = 1

[State 315]
type = BindtoRoot
trigger1 = root,Anim = 420
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
pos = 12,-63
ignorehitpause = 1

[State 315]
type = BindtoRoot
trigger1 = root,Anim = 420
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
pos = 40,-20
ignorehitpause = 1

[State 315]
type = BindtoRoot
trigger1 = root,Anim = 420
trigger1 = root,animelemtime(7)>=0
pos = 54,0
ignorehitpause = 1

[State 20210, Trans]
type = trans
trigger1 = !var(1)
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 20210, Trans]
type = trans
trigger1 = var(1)
trans = addalpha
alpha = 256-floor(256.0*var(2)/9.0),256
ignorehitpause = 1

[State 20420, Zeeky]
type = destroyself
trigger1 = root,stateno != 420
trigger2 = var(2) > 9

[State 20420, VS]
type = varadd
trigger1 = var(1)
var(2) = 1

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
trigger1 = animelemtime(4)=0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 0,0

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(8*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(4)>=0 && animelemtime(6)<0
trigger1 = !movecontact && !movereversed
attr = A,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(36*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-40
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
air.velocity = -4.0,-2.0           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(6)=0
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
value = 220,0
channel = 0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(5)=0
anim = 20220
ID = 20610
pos = 28,-57
postype = p1 ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 210,10

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(9*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(5)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = A,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(45*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -15,-55
hitsound = s1,1                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 13+3*(var(42))             ;Time opponent is in hit state
air.hittime = 13+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -6.5             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -6.5,-2.5           ;(X,Y)-velocity at which opponent is pushed
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
fvar(10) = fvar(10)*0.9*cond(fvar(10)>=1.0,(fvar(30)),1.0)
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

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 620,0
channel = 0

[State 620, VS]
type = velset
trigger1 = animelemtime(3)<0
x = 0
y = 0

[State 620, STS]
type = statetypeset
trigger1 = animelemtime(3)=0
physics = N

[State 620, VS]
type = velset
trigger1 = animelemtime(3)=0
x = 6.0
y = -6.0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0,1

[State 620, VS]
type = velmul
trigger1 = animelemtime(4)>0 && animelemtime(7)<0
x = 0.9
y = 0.9

[State 620, STS]
type = statetypeset
trigger1 = animelemtime(7)=0
physics = A

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(0*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(3)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = A,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(72*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                ;Time attacker pauses, time opponent shakes
sparkno = S8020+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-55
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+3*(var(42)>0)             ;Time that the opponent slides back
ground.hittime = 13+3*(var(42)>0)             ;Time opponent is in hit state
air.hittime = 13+3*(var(42)>0)             ;Time opponent is in hit state
guard.slidetime = 18
guard.hittime = 18
ground.velocity = -8.0,-8.0            ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -8.0,-8.0           ;(X,Y)-velocity at which opponent is pushed
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
ID = 620

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
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
; Aerial Fwd Heavy Attack
[Statedef 625]
type = A
movetype = A
physics = N
ctrl = 0
anim = 625+0*floor(var(24):=0)+0*floor(var(57):=0)
sprpriority = 1
velset = 1.0*(vel x),0.5*(vel y)
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
value = 625,0
channel = 0
persistent = 0

[State 215, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 625,10
channel = 1
persistent = 0

[State 625, Grav]
type = veladd
trigger1 = 1
y = cond(animelemtime(17)<0,0.15,0.5)

[State 0, MoveHitReset]
type = MoveHitReset
triggerall = var(24)<4
trigger1 = animelemtime(6)=0||animelemtime(7)=0
trigger2 = animelemtime(8)=0||animelemtime(9)=0
trigger3 = animelemtime(10)=0||animelemtime(11)=0

[State 625, FX]
type = Helper
trigger1 = animelemtime(5)>=0
trigger1 = animelemtime(13)<0
persistent = 3
name = "625FX"
stateno = 20625
id = 20625
postype = p1
pos = -5+floor(42.0*random/1000.0),-45+floor(42.0*random/1000.0)
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 200, 1]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(1*ln(2)) + 0.5)),0,1) || var(24)
triggerall = p2stateno != 5040
triggerall = !movecontact && !movereversed
triggerall = var(24)<4
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
trigger2 = animelemtime(6)>=0 && animelemtime(7)<0
trigger3 = animelemtime(7)>=0 && animelemtime(8)<0
trigger4 = animelemtime(8)>=0 && animelemtime(9)<0
trigger5 = animelemtime(9)>=0 && animelemtime(10)<0
trigger6 = animelemtime(10)>=0 && animelemtime(11)<0
trigger7 = animelemtime(11)>=0 && animelemtime(12)<0
attr = A,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(18*(fvar(11)/cond(var(57)=3,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),0
animtype = Heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 4,4                ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-10
hitsound = s1,1                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 18+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 18+3*(var(42))             ;Time opponent is in hit state
air.hittime = 18+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 15
guard.hittime = 15
ground.velocity = -2.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.0,-2.0           ;(X,Y)-velocity at which opponent is pushed
getpower = 24,24
givepower = 12,12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(555) && movehit
trigger1 = target(555),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 3;Change index
ignorehitpause = 1
persistent = 0

[State 210, VS]
type = varadd;set
trigger1 = movecontact=1
var(24) = 1
;ignorehitpause = 1
;persistent=0

[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
trigger1 = movehit=1
fvar(10) = fvar(10)*0.94*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger1 = movehit=1
fvar(10) = fvar(10)*0.94*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
trigger1 = movehit=1
fvar(10) = fvar(10)*0.94*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(8)>=0 && animelemtime(9)<0
trigger1 = movehit=1
fvar(10) = fvar(10)*0.94*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(9)>=0 && animelemtime(10)<0
trigger1 = movehit=1
fvar(10) = fvar(10)*0.94*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(10)>=0 && animelemtime(11)<0
trigger1 = movehit=1
fvar(10) = fvar(10)*0.94*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(11)>=0 && animelemtime(12)<0
trigger1 = movehit=1
fvar(10) = fvar(10)*0.94*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(12)=0
trigger2 = var(24)>=4
movetype = I
ignorehitpause = 1
persistent = 0

[State -2, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 626
persistent = 0

;---------------------------------------------------------------------------
; Aerial Down Heavy Attack Land
[Statedef 626]
type = S
physics = S
ctrl = 0
anim = 47
movehitpersist = 1

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
ignorehitpause = 1
persistent = 0

[State 52, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 5Y Ice FX
[Statedef 20625]
type = S
movetype = A
physics = N
juggle = 0
anim = 20210
sprpriority = 5

[State 20210, AD]
type = AngleDraw
trigger1 = 1
scale = 0.25*(1+ceil(time%4<2)),0.25*(1+ceil(time%4<2))
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

[State 20210, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 20210, Frost]
type = Explod
trigger1 = time = 0
anim = 20211+floor(4.0*random/1000.0)
ID = 20211
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
sprpriority = 5
pausemovetime = 0
supermovetime = 0
scale = 0.6,0.6
vel = 2+0.1*(Random%10),-2+0.1*(Random%10)
ignorehitpause = 1

[State 20210, Frost]
type = Explod
trigger1 = time = 0
anim = 20211+floor(4.0*random/1000.0)
ID = 20211
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
sprpriority = 5
pausemovetime = 0
supermovetime = 0
scale = 0.6,0.6
vel = 1-0.1*(Random%10),-1.8-0.1*(Random%10)
ignorehitpause = 1

[State 20210, Frost]
type = Explod
trigger1 = time = 0
anim = 20211+floor(4.0*random/1000.0)
ID = 20211
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
sprpriority = 5
pausemovetime = 0
supermovetime = 0
scale = 0.6,0.6
vel = 2+0.1*(Random%10),2+0.1*(Random%10)
ignorehitpause = 1

[State 20210, Frost]
type = Explod
trigger1 = time = 0
anim = 20211+floor(4.0*random/1000.0)
ID = 20211
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
sprpriority = 5
pausemovetime = 0
supermovetime = 0
scale = 0.6,0.6
vel = -1.5-0.1*(Random%10),2+0.1*(Random%10)
ignorehitpause = 1

[State 20210, Zeeky]
type = destroyself
trigger1 = time > 5

;---------------------------------------------------------------------------
;Throw
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
anim = 800
sprpriority = 1
juggle = 0

[State 800, CS]
type = changestate
trigger1 = numtarget(800)
trigger1 = movehit
value = 810;+(var(10))
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
trigger1 = animelemtime(3)=0
value = 210,0
channel = 0

[State 800, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0,1

[State IDDQD]
type = HitDef
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
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

[State 800, Flag Idle]
type = statetypeset
trigger1 = animelemtime(4)=0
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
;Air Throw
[Statedef 801]
type = A
movetype = A
physics = N
ctrl = 0
anim = 801
sprpriority = 1
juggle = 0

[State 800, CS]
type = changestate
trigger1 = numtarget(800)
trigger1 = movehit
value = 810;+(var(10))
ignorehitpause = 1
persistent = 0

[State 800, Tech Reset]
type = varset
trigger1 = 1
var(14) = 0

[State 800, Tech Set]
type = varset
trigger1 = numenemy
trigger1 = enemynear(0),statetype = A
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
trigger1 = animelemtime(3)=0
value = 210,0
channel = 0

[State 800, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0,1

[State IDDQD]
type = HitDef
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
trigger1 = var(30)=0 ;Throw Limited
attr = A,NT
hitflag = A-
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

[State 800, Flag Idle]
type = statetypeset
trigger1 = animelemtime(4)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State ASS]
type = AttackDist
trigger1 = 1
value = 0

[State 810, Grav]
type = veladd
trigger1 = time
y = 0.5

[State IDCLIP]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 802

;---------------------------------------------------------------------------
;Throw Part 2
[Statedef 810]
type = U
movetype = A
physics = N
ctrl = 0
anim = 810+1*(statetype = A)
velset = 0,0
sprpriority = 1
juggle = 0

[State 810, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S

[State 810, Set Throw Flag for dampener]
type = varset
trigger1 = time = 0
var(4) = 1

[State 801, Tech Success]
type = ChangeState
triggerall = numtarget
triggerall = var(14)>0
trigger1 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger1 = (target,AILevel=0)&&(target,command = "x" || target,command = "y" || target,command = "z")
trigger2 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger2 = (target,AILevel=0)&&(target,command = "a" || target,command = "b" || target,command = "c")
trigger3 = (target,AILevel>0)&&(random<=floor(100*AIlevel*AIlevel/64.0))
value = 890+2*(statetype=A)

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(14)>0
var(14) = -1

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

[State 801, TF]
type = targetfacing
trigger1 = time = 0
trigger2 = animelemtime(2)=0
value = -1
id = 800

[State 801, TB]
type = targetbind
trigger1 = time = 0
trigger2 = animelemtime(2)=0
id = 800
pos = 38,0

[State 810, TS]
type = TargetState
trigger1 = time = 0
value = 850

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 800,0
channel = 0

[State 810, Cloud]
type = Explod
trigger1 = animelemtime(8)=0
trigger1 = (var(10):=0)||1
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
vel = 10.0*cos(var(10)*pi/180.0),-10.0*sin(var(10)*pi/180.0)
accel = -0.27*cos(var(10)*pi/180.0),0.27*sin(var(10)*pi/180.0)
sprpriority = 5
scale = 0.75,0.75
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 810, Cloud]
type = Explod
trigger1 = animelemtime(8)=0
trigger1 = (var(10):=45)||1
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
vel = 10.0*cos(var(10)*pi/180.0),-10.0*sin(var(10)*pi/180.0)
accel = -0.27*cos(var(10)*pi/180.0),0.27*sin(var(10)*pi/180.0)
sprpriority = 5
scale = 0.75,0.75
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 810, Cloud]
type = Explod
trigger1 = animelemtime(8)=0
trigger1 = (var(10):=90)||1
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
vel = 10.0*cos(var(10)*pi/180.0),-10.0*sin(var(10)*pi/180.0)
accel = -0.27*cos(var(10)*pi/180.0),0.27*sin(var(10)*pi/180.0)
sprpriority = 5
scale = 0.75,0.75
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 810, Cloud]
type = Explod
trigger1 = animelemtime(8)=0
trigger1 = (var(10):=135)||1
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
vel = 10.0*cos(var(10)*pi/180.0),-10.0*sin(var(10)*pi/180.0)
accel = -0.27*cos(var(10)*pi/180.0),0.27*sin(var(10)*pi/180.0)
sprpriority = 5
scale = 0.75,0.75
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 810, Cloud]
type = Explod
trigger1 = animelemtime(8)=0
trigger1 = (var(10):=180)||1
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
vel = 10.0*cos(var(10)*pi/180.0),-10.0*sin(var(10)*pi/180.0)
accel = -0.27*cos(var(10)*pi/180.0),0.27*sin(var(10)*pi/180.0)
sprpriority = 5
scale = 0.75,0.75
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 810, Cloud]
type = Explod
trigger1 = animelemtime(8)=0
trigger1 = (var(10):=225)||1
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
vel = 10.0*cos(var(10)*pi/180.0),-10.0*sin(var(10)*pi/180.0)
accel = -0.27*cos(var(10)*pi/180.0),0.27*sin(var(10)*pi/180.0)
sprpriority = 5
scale = 0.75,0.75
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 810, Cloud]
type = Explod
trigger1 = animelemtime(8)=0
trigger1 = (var(10):=270)||1
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
vel = 10.0*cos(var(10)*pi/180.0),-10.0*sin(var(10)*pi/180.0)
accel = -0.27*cos(var(10)*pi/180.0),0.27*sin(var(10)*pi/180.0)
sprpriority = 5
scale = 0.75,0.75
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 810, Cloud]
type = Explod
trigger1 = animelemtime(8)=0
trigger1 = (var(10):=315)||1
anim = 20209
ID = 20209
pos = 0,-50
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
vel = 10.0*cos(var(10)*pi/180.0),-10.0*sin(var(10)*pi/180.0)
accel = -0.27*cos(var(10)*pi/180.0),0.27*sin(var(10)*pi/180.0)
sprpriority = 5
scale = 0.75,0.75
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 810, TS]
type = TargetState
trigger1 = animelemtime(8)=0
value = 853

[State 810, PSND]
type = playsnd
trigger1 = animelemtime(8)=0
value = 800,10

[State 810, Hitspark]
type = Explod
trigger1 = animelemtime(8)=0
anim = 8020+(random%2)
ID = 8000
pos = 40,-60
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 810, PSND]
type = playsnd
trigger1 = animelemtime(8)=0
value = 1,2

[State 810, TLA]
type = targetlifeadd
trigger1 = animelemtime(8)=0
id = 800
value = -81

[State 810, PA]
type = poweradd
trigger1 = animelemtime(8)=0
value = 80

[State 810, TPA]
type = targetpoweradd
trigger1 = animelemtime(8)=0
value = 40

[State 810, Additional Proration]
type = varset
trigger1 = animelemtime(8)=0
fvar(10)=fvar(10)*0.9

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(14)=0
value = 800,1
channel = 0

[State 801, IKEMEN Safeguard] ;I Really didn't want to implement this but the alternative would be much messier
type = ChangeState
trigger1 = !numtarget(800)
trigger1 = animelemtime(8)<0
value = 891

[State 810, CS]
type = ChangeState
trigger1 = statetype != A
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 810, CS]
type = Statetypeset
trigger1 = statetype = A
trigger1 = animelemtime(22)=0
movetype = I

[State 810, Grav]
type = veladd
trigger1 = statetype = A
trigger1 = animelemtime(22)>=0
y = 0.5

[State 810, CS]
type = Changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 802

;---------------------------------------------------------------------------
; Throw Land
[Statedef 802]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1102
velset = 0,0
sprpriority = 1 

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
ignorehitpause = 1
persistent = 0

[State 52, 5]
type = ChangeState
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
type = U;S
physics = N
movetype = A;I
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
value = 890,10

[State 890, PSND]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = 890,0
channel = 0

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