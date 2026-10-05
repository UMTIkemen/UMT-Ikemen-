

;---------------------------------------------------------------------------
; Standing Weak Attack
[Statedef 200]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 200
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(0*ln(2)) + 0.5)),2,0) ;use Juggle
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
trigger1 = time = 0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0, 0

[State 200, EX]
type = Explod
trigger1 = animelemtime(2)=0
anim = 20200
ID = 20200
pos = 18,-47
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=0

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1= ((p2stateno != [5020, 5040]) && (p2stateno != [5085, 5089]))
trigger1 = animelemno(0)=3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = ceil(30.0*fvar(11)*ifelse(var(42),1.25,1.0)), 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-45
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 14+1*(var(42))             ;Time that the opponent slides back
ground.hittime  = 14+1*(var(42))             ;Time opponent is in hit state
air.hittime  = 14+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -4.5             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.5,-2.5;-1.4,-3           ;X-velocity at which opponent is pushed,
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
fvar(10) = fvar(10)*0.96
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(4) = 0
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
velset = 0,0
anim = 210
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(1*ln(2)) + 0.5)),2,0) ;use Juggle
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

[State sas]
type = Explod
trigger1 = animelemtime(4)=0
anim = 20210
ID = 20210
pos = 18,-47
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=0

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1= ((p2stateno != [5020, 5040]) && (p2stateno != [5085, 5089]))
trigger1 = animelemno(0)=5
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = ceil(50.0*fvar(11)*ifelse(var(42),1.25,1.0)), 0                   ;Damage that move inflicts, guard damage
animtype = Medium                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8015+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-55
hitsound = s1,1                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 16+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 16+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 16+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -4.5             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.5,-2.5;-1.4,-3           ;X-velocity at which opponent is pushed,
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
[Statedef 220]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 220+0*floor(var(24):=0)
sprpriority = 1
juggle = 0;ifelse((var(33)&floor(exp(2*ln(2)) + 0.5)),2,0) ;use Juggle
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 220, PSND]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 220,0
channel = 0

[State 220, PSND]
type = PlaySnd
trigger1 = animelemtime(8)=0
value = 220,1
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
trigger2 = animelemtime(8)=0
value = 0,1

[State sas]
type = Explod
trigger1 = animelemtime(2)=0
anim = 20220
ID = 20220
pos = 18,-47
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=0

[State sas]
type = Explod
trigger1 = animelemtime(7)=0
anim = 20210
ID = 20220
pos = 18,-47
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=0

[State 210, PA];Compensation for sprite alignment
type = posadd
trigger1 = animelemtime(1)=0
trigger2 = animelemtime(7)=0
x = 8
[State 210, PA];Compensation for sprite alignment
type = posadd
trigger1 = animelemtime(3)=0
trigger2 = animelemtime(8)=0
x = 14

[State 220, MHR]
type = movehitreset
trigger1 = animelemtime(8)=0

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
triggerall = ifelse((var(33)&floor(exp(2*ln(2)) + 0.5)),0,1) || var(24)
triggerall= ((p2stateno != [5020, 5040]) && (p2stateno != [5085, 5089])) || uniqhitcount
trigger1 = animelemno(0)=3
trigger2 = animelemno(0)=8
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = ceil(42.0*fvar(11)*ifelse(var(42),1.25,1.0)), 0                   ;Damage that move inflicts, guard damage
animtype = Heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 6,6                 ;Time attacker pauses, time opponent shakes
sparkno = S8025+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-55
hitsound = s1,3                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 21+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 21+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 21+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -4.0             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-2.5;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
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

[State 210, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
trigger1 = movehit;=1
fvar(10) = fvar(10)*0.895
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(8)>=0 && animelemtime(9)<0
trigger1 = movehit;=1
fvar(10) = fvar(10)*0.895
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(9) = 0
trigger2 = animelemno(0)=9 && (movecontact||movereversed)
movetype = I
persistent = 0
ignorehitpause = 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Weak Attack
[Statedef 400]
type    = C
movetype= A
physics = C
ctrl = 0
velset = 0,0
anim = 400
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(3*ln(2)) + 0.5)),2,0) ;use Juggle
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
trigger1 = time = 0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0, 0

[State 200, EX]
type = Explod
trigger1 = animelemtime(2)=0
anim = 20200
ID = 20400
pos = 25,-20
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=0

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1= ((p2stateno != [5020, 5040]) && (p2stateno != [5085, 5089]))
trigger1 = animelemno(0)=3
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage = ceil(30.0*fvar(11)*ifelse(var(42),1.25,1.0)), 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8005+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-25
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+1*(var(42))             ;Time that the opponent slides back
ground.hittime  = 13+1*(var(42))             ;Time opponent is in hit state
air.hittime  = 13+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -4.5             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.5,-2.5;-1.4,-3           ;X-velocity at which opponent is pushed,
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
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Attack
[Statedef 410]
type    = C
movetype= A
physics = C
ctrl = 0
velset = 0,0
anim = 410
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(4*ln(2)) + 0.5)),2,0) ;use Juggle
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(4*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 410, VelS]
type = velset
trigger1 = animelemtime(3)=0
x = 5.0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0,1

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(3)=0
helpertype = normal
name = "Kick"
id = 20410
stateno = 20600
pos = 0,-75
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1= ((p2stateno != [5020, 5040]) && (p2stateno != [5085, 5089]))
trigger1 = !movecontact && !movereversed
trigger1 = animelemno(0)=3
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage = ceil(50.0*fvar(11)*ifelse(var(42),1.25,1.0)), 0                   ;Damage that move inflicts, guard damage
animtype = Medium                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-55
hitsound = s1,1                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 16+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 16+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 16+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -4.5             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.5,-5.5;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
getpower = 60,60
givepower = 30,30
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
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(4) = 0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; DF Medium Attack
[Statedef 415]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 415+0*floor(fvar(13):=0.0)
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(5*ln(2)) + 0.5)),2,0) ;use Juggle
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
value = 415,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 1000,10

[State 415, STS]
type = statetypeset
trigger1 = animelemtime(5)=0
statetype = S
physics = N

;[STate 415, PP]
;type = playerpush
;trigger1 = animelemtime(5)>=0
;value = 0
;ignorehitpause = 1

[State 415, VS]
type = velset
trigger1 = AnimElemtime(5)=0
trigger1 = (fvar(13):=-5.0)||1
x = 5.6
;y = -5

[State 415, Grav]
type = varadd;veladd
trigger1 = animelemtime(5)>0
fvar(13) = -5.0+0.5*animelemtime(5)

[State 415, Offset]
type = offset
trigger1 = animelemtime(5)>=0
y = floor(fvar(13))
ignorehitpause = 1

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(10)=0
value = 1100,10

[State sas]
type = Explod
trigger1 = animelemtime(10)=0
anim = 21020
ID = 20415
pos = 15,-30
postype = p1
bindtime = -1
removetime = -2
;scale = 2.3,2.0
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=0

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1 = !(prevstateno=200||prevstateno=400)
trigger1= (p2stateno != [5040, 5040])
trigger1 = animelemno(0)=10
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = ceil(70.0*fvar(11)*ifelse(var(42),1.25,1.0)), 0                   ;Damage that move inflicts, guard damage
animtype = Medium                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = H                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8015+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-15
hitsound = s1,6                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 19+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 19+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 19+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 16
guard.hittime = 16
ground.velocity = -4.5             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.5,-5.5;-1.4,-3           ;X-velocity at which opponent is pushed,
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

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1 = (prevstateno=200||prevstateno=400)
trigger1= (p2stateno != [5040, 5040])
trigger1 = animelemno(0)=10
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = ceil(70.0*fvar(11)*ifelse(var(42),1.25,1.0)), 0                   ;Damage that move inflicts, guard damage
animtype = Medium                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8015+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-15
hitsound = s1,6                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 19+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 19+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 19+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 16
guard.hittime = 16
ground.velocity = -4.5             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.5,-5.5;-1.4,-3           ;X-velocity at which opponent is pushed,
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
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(11) = 0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 240, 4]
type = ChangeState
trigger1 = animelemtime(5)>0;vel y > 0
trigger1 = fvar(13)>=0;pos y >= -(vel y)
value = 416
ctrl = 0

;---------------------------------------------------------------------------
; DF Medium Attack
[Statedef 416]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 416
sprpriority = 1
movehitpersist=1

[State 416, PS]
type = posset
trigger1 = time = 0
y = 0

[State 416, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Attack
[Statedef 420]
type    = C
movetype= A
physics = C
ctrl = 0
velset = 0,0
anim = 420
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
trigger1 = animelem = 5
value = 220,1
channel = 0

[State sas]
type = Explod
trigger1 = animelemtime(5)=0
anim = 20420
ID = 20420
pos = 40,0
postype = p1
bindtime = -1
removetime = -2
scale = 0.4,0.4;0.5,0.5
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 0,1

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1= ((p2stateno != [5020, 5040]) && (p2stateno != [5085, 5089]))
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage = ceil(85.0*fvar(11)*ifelse(var(42),1.25,1.0)), 0                   ;Damage that move inflicts, guard damage
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
guard.slidetime = 11
guard.hittime = 11
ground.velocity = -4.0,-7.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-7.0;-1.4,-3           ;X-velocity at which opponent is pushed,
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
trigger1 = animelemtime(8) = 0
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
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Weak Attack
[Statedef 600]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 600+0*floor(var(24):=0)
sprpriority = 1
juggle = 0;ifelse((var(33)&floor(exp(7*ln(2)) + 0.5)),2,0) ;use Juggle

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(7*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 200,0
channel = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 220,0
channel = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
trigger2 = animelemtime(7)=0
value = 0, 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(4)=0
trigger2 = animelemtime(7)=0
helpertype = normal
name = "Kick"
id = 20600+1*(animelemtime(7)=0)
stateno = 20600
pos = 0,-75
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 600, MHR]
type = movehitreset
trigger1 = animelemtime(7)=0

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
triggerall = ifelse((var(33)&floor(exp(7*ln(2)) + 0.5)),0,1) || var(24)
triggerall = (p2stateno != [5040, 5040])
trigger1 = animelemno(0)=4
trigger2 = animelemno(0)=7
attr = A, NA                     ;Attribute: Standing, Normal Attack
damage = ceil(25.0*fvar(11)*ifelse(var(42),1.25,1.0)), 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 6,6                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-45
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+1*(var(42))             ;Time that the opponent slides back
ground.hittime  = 13+1*(var(42))             ;Time opponent is in hit state
air.hittime  = 13+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -4.5             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.5,-2.5;-1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
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

[State 210, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = movehit;=1
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
trigger1 = movehit;=1
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(8) = 0
trigger2 = animelemtime(7)>=0
trigger2 = movecontact || movereversed
movetype = I
persistent = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Aerial Weak FX
[Statedef 20600]
type = A
movetype = I
physics = N
anim = 20600
sprpriority = 5

[State 20600, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20600, Tran]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[State 20600, BTR]
type = bindtoroot
trigger1 = 1
time = 1
pos = 42+10*(ishelper(20601)),-40
ignorehitpause = 1


[State 20600, AD]
type = angledraw
trigger1 = 1
value = 75*ifelse(ishelper(20600)||ishelper(20410),1,-1)
scale = 1.0+(1.0*time/8.0),1.0-(1.0*time/16.0)
ignorehitpause = 1

[State 20600, Zeeky]
type = destroyself
trigger1 = time >= 16
trigger2 = !ishelper(20410) && root,stateno != 600
trigger3 = root,movetype = H
trigger4 = ishelper(20410) && root,stateno != 410

;---------------------------------------------------------------------------
; Aerial Medium Attack
[Statedef 610]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 610
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(8*ln(2)) + 0.5)),2,0) ;use Juggle

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
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 0,1

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(3)=0
helpertype = normal
name = "Slash"
id = 20610
stateno = 20610
pos = 0,-75
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1= (p2stateno != [5040, 5040])
trigger1 = animelemno(0)=4
attr = A, NA                     ;Attribute: Standing, Normal Attack
damage = ceil(65.0*fvar(11)*ifelse(var(42),1.25,1.0)), 0                   ;Damage that move inflicts, guard damage
animtype = Medium                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8015+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-40
hitsound = s1,3                 ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 14+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 14+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 14+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -6.5             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -6.5,-2.5;-1.4,-3           ;X-velocity at which opponent is pushed,
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
trigger1 = animelemtime(5) = 0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Aerial Medium FX
[Statedef 20610]
type = A
movetype = I
physics = N
anim = 21020
sprpriority = 5

[State 20600, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20600, Tran]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[State 20600, BTR]
type = bindtoroot
trigger1 = 1
time = 1
pos = 30,-40
ignorehitpause = 1


[State 20600, AD]
type = angledraw
trigger1 = 1
value = 90
scale = 1.0,1.25
ignorehitpause = 1

[State 20600, Zeeky]
type = destroyself
trigger1 = animtime=0
trigger2 = root,stateno != 610
trigger3 = root,movetype = H

;---------------------------------------------------------------------------
; Aerial Strong Attack
[Statedef 620]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 620
sprpriority = 1
juggle = ifelse((var(33)&floor(exp(9*ln(2)) + 0.5)),2,0) ;use Juggle

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
trigger1 = animelem = 5
value = 220,1
channel = 0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 1100,10

[State sas]
type = Explod
trigger1 = animelemtime(4)=0
anim = 21020
ID = 20620
pos = 15,-30
postype = p1
bindtime = -1
removetime = -2
;scale = 2.3,2.0
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=0

[State 200, 1]
type = HitDef
triggerall= (p2stateno != [5040, 5040])
trigger1 = animelemtime(5)>=0
trigger1 = animelemtime(7)<0
trigger1 = movecontact=0&&movereversed=0
attr = A, NA                     ;Attribute: Standing, Normal Attack
damage = ceil(80.0*fvar(11)*ifelse(var(42),1.25,1.0)), 0                   ;Damage that move inflicts, guard damage
animtype = Heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = S8025+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-55
hitsound = s1,3                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 14+3*(var(42))             ;Time that the opponent slides back
ground.hittime  = 14+3*(var(42))             ;Time opponent is in hit state
air.hittime  = 14+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -8.0+16.0*(p2dist x<0)
air.velocity = -8.0+16.0*(p2dist x<0),8.0
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
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
ID = 620;555

[State 220, TS]
type = targetstate
trigger1 = movehit
trigger1 = var(42)
trigger1 = var(15)=0
trigger1 = (var(15):=1) || 1
trigger1 = (fvar(10):=fvar(10)*0.85)||1
persistent = 0
ignorehitpause = 1
value = 450

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.80
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(7) = 0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

;----------------
;Throw
[Statedef 800]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 800
velset=0,0
sprpriority = 1

[State 800, Tech Reset]
type = varset
trigger1 = 1
var(14) = 0

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

[State 800, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 800,0
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
hitsound = s1,0
yaccel = 0.5
;ground.velocity = -1.5,-12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1facing = 1;
p2facing = 1
p1stateno = 810+1*(var(10)=1)
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
anim = 811
velset = 0, 0
sprpriority = 1

[State 800, PSND]
type = playsnd
trigger1 = time = 0
value = 800,1
channel = 0

[State 810, STS]
type = statetypeset
trigger1 = animelemtime(5)=0
statetype = A
physics = N

[State 0, Width]
type = Width
trigger1 = 1
edge = 40,0
ignorehitpause = 1
;persistent = 

[State 801, TS]
type = targetstate
trigger1 = time = 0
id = 800
value = 850

[State 801, TF]
type = targetfacing
trigger1 = time = 0
trigger2 = animelemtime(10)=0
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
trigger4 = (target,name="Training")&&(target,var(16)=1)
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(14) > 0
var(14) = -1

[State 801, TB]
type = targetbind
trigger1 = time = 0
id = 800
pos = 34,0

[State 801, VS]
type = velset
trigger1 = animelem = 4
x = 0
y = -7

[State 100, VA]
type = veladd
trigger1 = animelem = 4, > 0
trigger1 = animelem = 6, <0
y = 1.1

[State 801, PSND]
type = playsnd
trigger1 = animelem = 11
value = 800,2
channel = 0

[State 801, VS]
type = velset
trigger1 = animelem = 9
x = 0
y = -4

[State 100, VA]
type = veladd
trigger1 = animelem = 9, > 0
y = 0.5

;[State 801, T]
;type = turn
;trigger1 = animelem = 6
;persistent = 0

[State 801, PSND]
type = playsnd
trigger1 = animelem = 10
value = s1,9

[State 220, Kaboom]
Type = Helper
Trigger1 = AnimElem = 10
StateNo = 20820
ID = 20820
Name = "Kaboom"
Pos = 41,-23
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1.25
Size.YScale = 1.25

[State 811, TLA]
type = targetlifeadd
trigger1 = animelemtime(10)=0
trigger1 = (var(4):=1)||1
id = 800
value = -110

[State 811, TPA]
type = targetpoweradd
trigger1 = animelemtime(10)=0
id = 800
value = 40

[State 811, TPA]
type = poweradd
trigger1 = animelemtime(10)=0
value = 80

[State 801, TS]
type = targetstate
trigger1 = animelemtime(10)=0
id = 800
value = 851

[State 810, Prorate]
type = varset
trigger1 = animelemtime(10)=0
fvar(10) = fvar(10)*0.85
persistent = 0

[State 801, IKEMEN Safeguard] ;I Really didn't want to implement this but the alternative would be much messier
type = ChangeState
trigger1 = !NumTarget(800)
trigger1 = animelemtime(10)<0
value = 891

[State 801 CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -(vel y)
value = 812

;---------------------------------------------------------------------------
; Back Throw
[Statedef 811]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 810
velset = 0, 0
sprpriority = 1

[State 811, PSND]
type = playsnd
trigger1 = time = 0
value = 800,1
channel = 0

[State 810, STS]
type = statetypeset
trigger1 = animelemtime(5)=0
statetype = A
physics = N

[State 0, Width]
type = Width
trigger1 = 1
edge = 78,0
ignorehitpause = 1
;persistent = 

[State 801, TS]
type = targetstate
trigger1 = time = 0
id = 800
value = 850

[State 801, TF]
type = targetfacing
trigger1 = time = 0
trigger2 = animelemtime(10)=0
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

[State 801, TB]
type = targetbind
trigger1 = time = 0
id = 800
pos = 34,0

[State 801, VS]
type = velset
trigger1 = animelem = 4
x = const(velocity.run.fwd.x);+2.3
y = -7

[State 100, VA]
type = veladd
trigger1 = animelem = 4, > 0
trigger1 = animelem = 6, <0
y = 1.1

[State 801, PSND]
type = playsnd
trigger1 = animelem = 11
value = 800,2
channel = 0

[State 801, VS]
type = velset
trigger1 = animelem = 9
x = -1.5
y = -4

[State 100, VA]
type = veladd
trigger1 = animelem = 9, > 0
y = 0.5

[State 801, T]
type = turn
trigger1 = animelem = 6
persistent = 0

[State 801, PSND]
type = playsnd
trigger1 = animelem = 10
value = s1,9

[State 220, Kaboom]
Type = Helper
Trigger1 = AnimElem = 10
StateNo = 20820
ID = 20820
Name = "Kaboom"
Pos = 41,-23
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1.25
Size.YScale = 1.25

[State 811, TLA]
type = targetlifeadd
trigger1 = animelemtime(10)=0
trigger1 = (var(4):=1)||1
id = 800
value = -110

[State 811, TPA]
type = targetpoweradd
trigger1 = animelemtime(10)=0
id = 800
value = 40

[State 811, TPA]
type = poweradd
trigger1 = animelemtime(10)=0
value = 80

[State 801, TS]
type = targetstate
trigger1 = animelemtime(10)=0
id = 800
value = 851

[State 810, Prorate]
type = varset
trigger1 = animelemtime(10)=0
fvar(10) = fvar(10)*0.85
persistent = 0

[State 801, IKEMEN Safeguard] ;I Really didn't want to implement this but the alternative would be much messier
type = ChangeState
trigger1 = !NumTarget(800)
trigger1 = animelemtime(10)<=0
value = 891

[State 801 CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -(vel y)
value = 812

;-------------------
[Statedef 812]
Type     = S
MoveType = I
Physics  = S
anim = 47
Ctrl = 0
velset = 0,0

[State 802, PS]
type = posset
trigger1 = time = 0
y = 0

;[State 802, CtS]
;type = ctrlset
;trigger1 = time = 3
;value = 1

[State 802, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; S.Strong Burst
[Statedef 20820]
Movetype=A
ctrl = 0
anim = 20820
sprpriority = 5

[State 221, VS]
type = varset
trigger1 = time = 0
fvar(10) = 1.0

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
Anim = 20821
ID = 20821
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
id = 20821
scale = 0.125+(time*0.025),0.5+(time*0.1)
trans = addalpha
alpha = 256-time*16,256

[State 221, VS]
type = varset
trigger1 = time < 5
fvar(0) = 2.0-0.25*time

[State 221, VS]
type = varset
trigger1 = time >= 5
fvar(0) = 1.0-0.02*(time-5)

[State 221, AD]
Type = AngleDraw
Trigger1 = 1
Scale = -fvar(0)*fvar(10)*ifelse((time%4<2),1.0,0.8),-fvar(0)*fvar(10)*ifelse((time%4<2),1.0,0.8)
ignorehitpause = 1

[State 221, Explod]
Type = RemoveExplod
trigger1 = time >= 50
trigger2 = root,movetype = H
trigger3 = fvar(10) > 2
trigger3 = time >= 25
ID = 20821

[State 221, Zeeky]
type = DestroySelf
trigger1 = time >= 50;fvar(0) <= 0
trigger2 = root,movetype = H
trigger3 = fvar(10) > 2
trigger3 = time >= 25

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
value = cond(statetype!=A,0,50)
ctrl = cond(statetype!=A,1,0)

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