;========================== STAND LIGHT PUNCH ==================================
[Statedef 200]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
ctrl = 0
anim = 200
sprpriority = 1
facep2 = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 500
trigger1 = time = 1
value = S3,0+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,0
channel = 1

[State 200, Hit]
type = hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = S, NA
damage = 30,0
animtype = Light
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 8,8
sparkno = -1+0*(var(33):=8020)
guard.sparkno = -1+0*(var(34):=8300)
sparkxy = -10+0*(var(35):=140),var(36):=-168
hitsound = s1,0
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 5+5
ground.hittime = 5+5
guard.hittime = 5+2
air.hittime = 120
ground.velocity = -5*2*const(size.xscale),0
air.velocity = -5*2*const(size.xscale),-7.5*2*const(size.xscale)
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = ifelse(var(21)=0,1,0)
fall.recover = 1
fall.recovertime = 120
getpower = 70*var(21),35*var(21)
givepower = 35,17
id = 200

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;========================== STAND MEDIUM PUNCH =================================
[Statedef 210]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
ctrl = 0
anim = 210
sprpriority = 1
facep2 = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 600
trigger1 = time = 1
value = S3,3+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,1
channel = 1

[State 205, Hit]
type = hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = S, NA
damage = 60,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = -1+0*(var(33):=8020)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10+0*(var(35):=190),var(36):=-160
hitsound = s1,1
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 14+3
ground.hittime = 14+3
guard.hittime = 14+2
air.hittime = 120
ground.velocity = -7.5*2*const(size.xscale)
air.velocity = -3.5*2*const(size.xscale), -7.5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = ifelse(var(21)=0,1,0)
fall.recover = 1
fall.recovertime = 120
getpower = 150*var(21),75*var(21)
givepower = 75,37
id = 210

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;========================== STAND STRONG PUNCH =================================
[Statedef 220]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
ctrl = 0
anim = 220
sprpriority = 1
facep2 = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 700
trigger1 = time = 1
value = S3,6+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,2
channel = 1

[State 3001, Width]
type = Width
trigger1 = 1
player = -5,-5

[State 210, Hit]
type = hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = S, NA
damage = 80,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = -1+0*(var(33):=8020)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10+0*(var(35):=115),var(36):=-180
hitsound = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 23+5
ground.hittime = 23+5
guard.hittime = 23-3
air.hittime = 120
ground.velocity = -9*2*const(size.xscale),0
air.velocity = -3.5*2*const(size.xscale),-7.5*2*const(size.yscale)
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = ifelse(var(21)=0,1,0)
fall.recover = 1
fall.recovertime = 120
getpower = 200*var(21),100*var(21)
givepower = 100,50
id = 220

[State 215, 1]
type = posadd
trigger1 = AnimElem = 2
x = 28*Const(size.xscale)*2*.9

[State 215, 1]
type = posadd
trigger1 = AnimElem = 3
x = 24*Const(size.xscale)*2*.9

[State 215, 1]
type = posadd
trigger1 = AnimElem = 4
x = 20*Const(size.xscale)*2*.9

[State 215, 1]
type = posadd
trigger1 = AnimElem = 5
x = 15*Const(size.xscale)*2*.9

[State 215, 1]
type = posadd
trigger1 = AnimElem = 6
x = 2*Const(size.xscale)*2*.9

[State 215, 1]
type = posadd
trigger1 = AnimElem = 8
x = -7*Const(size.xscale)*2*.9

[State 215, 1]
type = posadd
trigger1 = AnimElem = 9
x = -9*Const(size.xscale)*2*.9

[State 215, 1]
type = posadd
trigger1 = AnimElem = 10
x = -16*Const(size.xscale)*2*.9

[State 215, 1]
type = posadd
trigger1 = AnimElem = 11
x = -9*Const(size.xscale)*2*.9

[State 215, 1]
type = posadd
trigger1 = AnimElem = 12
x = -16*Const(size.xscale)*2*.9

[State 215, 1]
type = posadd
trigger1 = AnimElem = 13
x = -8*Const(size.xscale)*2*.9

[State 215, 1]
type = posadd
trigger1 = AnimElem = 14
x = -20*Const(size.xscale)*2*.9

[State 215, 1]
type = posadd
trigger1 = AnimElem = 15
x = -4*Const(size.xscale)*2*.9

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;========================== STAND LIGHT KICK ===================================
[Statedef 230]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
ctrl = 0
anim = 230
sprpriority = 1
facep2 = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 500
trigger1 = time = 1
value = S3,0+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,3
channel = 1

[State 215, Hit]
type = hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = S, NA
damage = 30,0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = -1+0*(var(33):=8020)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=180), var(36):=-110
hitsound = s1,3
guardsound = s2,0
ground.type = Low
air.type = Low
ground.slidetime = 8+3
ground.hittime = 8+3
guard.hittime = 8-1
air.hittime = 120
ground.velocity = -5*2*const(size.xscale), 0
air.velocity = -6.5*2*const(size.xscale), -5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = ifelse(var(21)=0,1,0)
fall.recover = 1
fall.recovertime = 120
getpower = 70*var(21),35*var(21)
givepower = 35,17
id = 230

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;========================== STAND MEDIUM KICK ==================================
[Statedef 240]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
ctrl = 0
anim = 240
sprpriority = 1
facep2 = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 600
trigger1 = time = 1
value = S3,3+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,4
channel = 1

[State 220, Hit]
type = hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = S, NA
damage = 60,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = -1+0*(var(33):=8020)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=155), var(36):=-185
hitsound = s1,4
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 14+1
ground.hittime = 14+1
guard.hittime = 14-1
air.hittime = 120
ground.velocity = -7.5*2*const(size.xscale), 0
air.velocity = -6*2*const(size.xscale),-5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = ifelse(var(21)=0,1,0)
fall.recover = 1
fall.recovertime = 120
getpower = 150*var(21),75*var(21)
givepower = 75,37
forcestand = 1
id = 240

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;========================== STAND STRONG KICK ==================================
[Statedef 250]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
ctrl = 0
anim = 250
sprpriority = 1
facep2 = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 700
trigger1 = time = 1
value = S3,6+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,5
channel = 1

[State 0, Width]
type = Width
trigger1 = anim=255
edge = 10,0

[State 225, Hit]
type = hitdef
triggerall = !var(19)
trigger1 = anim = 250 && time = 0
attr = S, NA
damage = 80,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1+0*(var(33):=8020)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=150), var(36):=-170
hitsound = s1,5
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 23+3
ground.hittime = 23+3
guard.hittime = 23-3
air.hittime = 120
ground.velocity = -10.5*2*const(size.xscale), 0
air.velocity = -6.5*2*const(size.xscale), -5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = ifelse(var(21)=0,1,0)
fall.recover = 1
fall.recovertime = 120
getpower = 200*var(21),100*var(21)
givepower = 100,50
id = 250

[State 250, 1]
type = PosAdd
trigger1 = AnimElem = 5
x = 18

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 710, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================= OVERHEAD =====================================
[Statedef 300]
type = S
movetype = A
physics = N
juggle = 10
anim = 300
velset = 0,0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 600
trigger1 = animelem = 3
value = S3,3+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S0,1
channel = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 1
statetype = A
movetype = A
physics = N

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 3*Const(size.xscale)
y = -3.75*2*Const(size.yscale)

[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(1) >= 1
y = .45*2*Const(size.yscale)

[State 205, Hit]
type = hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = S, NA
damage = 60,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = HA
priority = 4, Hit
pausetime = 10,10
sparkno = -1+0*(var(33):=8020)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=140), var(36):=-100
hitsound = s1,1
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 15+3
ground.hittime = 15+3
guard.hittime = 15+2
air.hittime = 120
ground.velocity = -7.5*2*const(size.xscale)
air.velocity = -3.5*2*const(size.xscale), -7.5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = ifelse(var(21)=0,1,0)
fall.recover = 1
fall.recovertime = 120
getpower = 150*var(21),75*var(21)
givepower = 75,37
id = 300

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = animelemtime(5) >= 0
trigger1 = Pos Y >= 15 && Vel Y > 0
value = 52
ctrl = 0
;========================= CROUCHING LIGHT PUNCH ===============================
[Statedef 400]
type = C
movetype = A
physics = C
juggle  = 10
ctrl = 0
anim = 400
sprpriority = 1
facep2 = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, VelAdd]
type = Velset
triggerall = prevstateno != 100
trigger1 = time = 0
x = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 500
trigger1 = time = 1
value = S3,0+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,0
channel = 1

[State 230, hit]
type=hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = C,NA
damage = 30,0
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = back
fall.animtype = back
priority = 2,Hit
pausetime = 8,8
sparkno = -1 +0* (var(33):=8020)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=134), var(36):=-125
hitsound = s1,0
guardsound = s2,0
ground.type = Low
air.type = Low
ground.slidetime = 6+4
ground.hittime = 6+4
guard.hittime = 6+2
air.hittime = 120
ground.velocity = -4.5*2*const(size.xscale),0
air.velocity = -4.5*2*const(size.xscale),-7.5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = ifelse(var(21)=0,1,0)
fall.recover = 1
fall.recoverTime = 120
getpower = 70*var(21),35*var(21)
givepower = 35,17
id = 400

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;======================== CROUCHING MEDIUM PUNCH ===============================
[Statedef 410]
type = C
movetype = A
physics = C
juggle  = 10
ctrl = 0
anim = 410
sprpriority = 1
facep2 = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, VelAdd]
type = Velset
triggerall = prevstateno != 100
trigger1 = time = 0
x = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 600
trigger1 = time = 1
value = S3,3+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,1
channel = 1

[State 235, hit]
type=hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = C,NA
damage = 60,0
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = back
fall.animtype = back
priority = 3,Hit
pausetime = 10,10
sparkno = -1 +0* (var(33):=8020)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=170), var(36):=-120
hitsound = s1,1
guardsound = s2,0
ground.type = Low
air.type = High
ground.slidetime = 10+5
ground.hittime = 10+5
guard.hittime = 10+2
air.hittime = 120
ground.velocity = -7.5*2*const(size.xscale)
air.velocity = -3.5*2*const(size.xscale), -7.5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = ifelse(var(21)=0,1,0)
fall.recover = 1
fall.recoverTime = 120
getpower = 150*var(21),75*var(21)
givepower = 75,37
id = 410

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;======================== CROUCHING STRONG PUNCH ===============================
[Statedef 420]
type = C
movetype = A
physics = C
juggle  = 10
ctrl = 0
anim = 420
sprpriority = 1
facep2 = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, VelAdd]
type = Velset
triggerall = prevstateno != 100
trigger1 = time = 0
x = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 700
trigger1 = time = 1
value = S3,6+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,2
channel = 1

[State 240, hit]
type=hitdef
triggerall = !var(19)
trigger1 = animelem = 3
attr = C,NA
damage = 90,0
hitflag = MAF
guardflag = MA
animtype = Heavy
air.animtype = up
fall.animtype = up
priority = 4,Hit
pausetime = 12,12
sparkno = -1 +0* (var(33):=8020)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=105), var(36):=-180
hitsound = s1,2
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 20+2
ground.hittime = 20+2
guard.hittime = 20-9
air.hittime = 120
ground.velocity = -11.5*2*const(size.xscale),0
air.velocity = -4.5*2*const(size.xscale),-9*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = ifelse(var(21)=0,1,0)
fall.recover = 1
fall.recoverTime = 120
getpower = 200*var(21),100*var(21)
givepower = 100,50
id = 420

[State 240, hit]
type=hitdef
triggerall = !var(19)
trigger1 = animelem = 4
trigger1 = !movecontact && !movereversed
attr = C,NA
damage = 70,0
hitflag = MAF
guardflag = MA
animtype = Heavy
air.animtype = up
fall.animtype = up
priority = 4,Hit
pausetime = 12,12
sparkno = -1 +0* (var(33):=8020)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=70), var(36):=-280
hitsound = s1,2
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 20+2
ground.hittime = 20+2
guard.hittime = 20-9
air.hittime = 120
ground.velocity = -11.5*2*const(size.xscale),0
air.velocity = -4.5*2*const(size.xscale),-9*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = ifelse(var(21)=0,1,0)
fall.recover = 1
fall.recoverTime = 120
getpower = 200*var(21),100*var(21)
givepower = 100,50
id = 420

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;========================= CROUCHING LIGHT KICK ================================
[Statedef 430]
type = C
movetype = A
physics = C
juggle = 10
ctrl = 0
anim = 430
sprpriority = 1
facep2 = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, VelAdd]
type = Velset
triggerall = prevstateno != 100
trigger1 = time = 0
x = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 500
trigger1 = time = 1
value = S3,0+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,0
channel = 1

[State 245, hit]
type=hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = C,NA
damage = 20,0
hitflag = MAF
guardflag = LA
animtype = Light
air.animtype = back
fall.animtype = back
priority = 2,Hit
pausetime = 8,8
sparkno = -1 +0* (var(33):=8020)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=135), var(36):=0
hitsound = s1,4
guardsound = s2,0
ground.type = Low
air.type = High
ground.slidetime = 6+4
ground.hittime = 6+4
guard.hittime = 6-1
air.hittime = 120
ground.velocity = -5*2*const(size.xscale), 0
air.velocity = -6.5*2*const(size.xscale), -5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = ifelse(var(21)=0,1,0)
fall.recover = 1
fall.recoverTime = 120
getpower = 70*var(21),35*var(21)
givepower = 35,17
id = 430

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;======================== CROUCHING MEDIUM KICK ================================
[Statedef 440]
type = C
movetype = A
physics = C
juggle = 10
ctrl = 0
anim = 440
sprpriority = 1
facep2 = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, VelAdd]
type = Velset
triggerall = prevstateno != 100
trigger1 = time = 0
x = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 600
trigger1 = time = 1
value = S3,3+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,1
channel = 1

[State 250, hit]
type=hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = C,NA
damage = 50,0
hitflag = MAF
guardflag = LA
animtype = Medium
air.animtype = back
fall.animtype = back
priority = 3,Hit
pausetime =  10,10
sparkno = -1 +0* (var(33):=8020)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=135), var(36):=0
hitsound = s1,5
guardsound = s2,0
ground.type = Low
air.type = High
ground.slidetime = 13+2
ground.hittime = 13+2
guard.hittime = 13-4
air.hittime = 120
ground.velocity = -7.5*2*const(size.xscale), 0
air.velocity = -6*2*const(size.xscale),-5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
air.fall = ifelse(var(21)=0,1,0)
fall.recover = 1
fall.recoverTime = 120
getpower = 150*var(21),75*var(21)
givepower = 75,37
id = 440

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;========================= CROUCHING STRONG KICK ===============================
[Statedef 450]
type = C
movetype = A
physics = C
juggle = 10
ctrl = 0
anim = 450
sprpriority = 1
facep2 = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, VelAdd]
type = Velset
triggerall = prevstateno != 100
trigger1 = time = 0
x = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 700
trigger1 = time = 1
value = S3,6+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,2
channel = 1

[State 255, hit]
type=hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = C,NA
damage = 90,0
hitflag = MAF
guardflag = LA
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 4,Hit
pausetime = 12,12
sparkno = -1 +0* (var(33):=8020)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=200), var(36):=-110
hitsound = s1,5
guardsound = s2,0
ground.type = Trip
air.type = High
ground.slidetime = 21
ground.hittime = 21
guard.hittime = 21
air.hittime = 120
ground.velocity = -1*2*const(size.xscale),-6.5*2*const(size.yscale)
air.velocity = -1*2*const(size.xscale),-8.5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
getpower = 200*var(21),100*var(21)
givepower = 100,50
id = 450

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;========================= JUMPING LIGHT PUNCH =================================
[Statedef 600]
type = A
movetype = A
physics = N
juggle = 10
ctrl = 0
anim = 600
sprpriority = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 500
trigger1 = time = 1
value = S3,0+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,0
channel = 1

[State 260, hit]
type = hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = A,NA
damage = 40,0
hitflag = MAF
guardflag = HA
animtype = Light
air.animtype = back
fall.animtype = back
priority = 2,Hit
pausetime = 8,8
sparkno = -1 +0* (var(33):=8020)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=105), var(36):=-150
hitsound = s1,0
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 12
ground.hittime = 12
guard.hittime = 12
air.hittime = 120
ground.velocity = -4.5*2*const(size.xscale),0
air.velocity = -4.5*2*const(size.xscale),-7.5*2*const(size.xscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 70*var(21),35*var(21)
givepower = 35,17
id = 600

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = vel x < (const(velocity.jump.fwd.x))
x = .115

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = vel x > (const(velocity.jump.back.x))
x = -.115

[State 920, 0]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52
;========================= JUMPING MEDIUM PUNCH ================================
[Statedef 610]
type = A
movetype = A
physics = N
juggle = 10
ctrl = 0
anim = 610
sprpriority = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 600
trigger1 = time = 1
value = S3,3+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,1
volume = 0
channel = 2

[State 265, hit]
type=hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = A,NA
damage = 70,0
hitflag = MAF
guardflag = HA
animtype = Medium
air.animtype = up
fall.animtype = up
priority = 3,Hit
pausetime = 10,10
sparkno = -1 +0* (var(33):=8020)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=130), var(36):=-130
hitsound = s1,1
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -7.5*2*const(size.xscale)
air.velocity = -3.5*2*const(size.xscale), -7.5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 150*var(21),75*var(21)
givepower = 75,37
id = 610

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = vel x < (const(velocity.jump.fwd.x))
x = .115

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = vel x > (const(velocity.jump.back.x))
x = -.115

[State 920, 0]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52

;========================= JUMPING STRONG PUNCH ================================
[Statedef 620]
type = A
movetype = A
physics = N
juggle = 10
ctrl = 0
anim = 620
sprpriority = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 700
trigger1 = time = 1
value = S3,6+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S0,2
volume = 0
channel = 2

[State 270, hit]
type=hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = A,NA
damage = 90,0
hitflag = MAF
guardflag = HA
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 4,Hit
pausetime = 12,12
sparkno = -1 +0* (var(33):=8020)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=130), var(36):=-130
hitsound = s1,2
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 24
ground.hittime = 24
guard.hittime = 24
air.hittime = 120
ground.velocity = -9*2*const(size.xscale),0
air.velocity = -3.5*2*const(size.xscale),-7.5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 200*var(21),100*var(21)
givepower = 100,50
id = 620

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = vel x < (const(velocity.jump.fwd.x))
x = .115

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = vel x > (const(velocity.jump.back.x))
x = -.115

[State 920, 0]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52

;========================= JUMPING LIGHT KICK ==================================
[Statedef 630]
type = A
movetype = A
physics = N
juggle = 10
ctrl = 0
anim = 630
sprpriority = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 500
trigger1 = time = 1
value = S3,0+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,0
channel = 1

[State 275, hit]
type=hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = A,NA
damage = 40,0
hitflag = MAF
guardflag = HA
animtype = Light
air.animtype = back
fall.animtype = back
priority = 2,Hit
pausetime = 8,8
sparkno = -1 +0* (var(33):=8020)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=130), var(36):=-230
hitsound = s1,3
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 12
ground.hittime = 12
guard.hittime = 12
air.hittime = 120
ground.velocity = -5*2*const(size.xscale), 0
air.velocity = -6.5*2*const(size.xscale), -5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 70*var(21),35*var(21)
givepower = 35,17
id = 630

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = vel x < (const(velocity.jump.fwd.x))
x = .115

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = vel x > (const(velocity.jump.back.x))
x = -.115

[State 920, 0]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52


;======================== JUMPING MEDIUM KICK ==================================
[Statedef 640]
type = A
movetype = A
physics = N
juggle = 10
ctrl = 0
anim = 640
sprpriority = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 600
trigger1 = time = 1
value = S3,3+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,1
volume = 0
channel = 2

[State 280, hit]
type = hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = A,NA
damage = 60,0
hitflag = MAF
guardflag = HA
animtype = Medium
air.animtype = back
fall.animtype = back
priority = 3,Hit
pausetime = 10,10
sparkno = -1 +0* (var(33):=8020)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=135), var(36):=-110
hitsound = s1,4
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -7.5*2*const(size.xscale), 0
air.velocity = -6*2*const(size.xscale),-5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 150*var(21),75*var(21)
givepower = 75,37
id = 640

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = vel x < (const(velocity.jump.fwd.x))
x = .115

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = vel x > (const(velocity.jump.back.x))
x = -.115

[State 920, 0]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52

;========================= JUMPING STRONG KICK =================================
[Statedef 650]
type = A
movetype = A
physics = N
juggle = 10
ctrl = 0
anim = 650
sprpriority = 1

;---------------------------------
[State 0, Dampener]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 700
trigger1 = time = 1
value = S3,6+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S0,2
volume = 0
channel = 2

[State 285, hit]
type = hitdef
triggerall = !var(19)
trigger1 = time = 0
attr = A,NA
damage = 90,0
hitflag = MAF
guardflag = HA
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 4,Hit
pausetime = 12,12
sparkno = -1 +0* (var(33):=8020)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=120), var(36):=-180
hitsound = s1,5
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 24
ground.hittime = 24
guard.hittime = 24
air.hittime = 120
ground.velocity = -9*2*const(size.xscale),0
air.velocity = -3.5*2*const(size.xscale),-7.5*2*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 200*var(21),100*var(21)
givepower = 100,50
id = 650

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = vel x < (const(velocity.jump.fwd.x))
x = .115

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = vel x > (const(velocity.jump.back.x))
x = -.115

[State 920, 0]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52
;============================ THROW CONTROLLER ================================
[Statedef 800]
type = S
movetype = A
physics = S
juggle = 15
velset = 0, 0
ctrl = 0
anim = 800
sprpriority = 1
facep2 = 1
poweradd = 0

[State 800, Strength]
type = varset
trigger1 = !time
var(10) = 2

[State 800, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random <= 500
trigger1 = animelem = 3
value = S3,2
channel = 0

[State 800, Hit]
type = hitdef
trigger1 = !time ;&& var(10) = 3
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
hitsound = s800,0
p1facing = 1
p2facing = 1
p1stateno = ifelse(command = "holdback", 801, 805)
guard.dist = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
ID = 800

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 1
value = s0,1
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=============================== BACK THROW  ===================================
[Statedef 810]
type = S
movetype = A
physics = S
juggle = 15
velset = 0, 0
ctrl = 0
anim = 800
sprpriority = 1
facep2 = 1
poweradd = 0

[State 800, Strength]
type = varset
trigger1 = !time
var(10) = 2

[State 800, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 800, Hit]
type = hitdef
trigger1 = !time ;&& var(10) = 3
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
hitsound = s800,0
p1facing = 1
p2facing = 1
p1stateno = 801
guard.dist = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
ID = 800

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 1
value = s0,1
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;-------------------------------- PLAYER ---------------------------------------
[Statedef 801]
type = S
movetype = A
physics = S
anim = 801
ctrl = 0
sprpriority = 1

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 4
value = s0,2
channel = 2

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 4
value = s3,0
channel = 0

[State Throw]
type = targetstate
trigger1 = !time
value = 802

[State 0, TargetFacing]
type = TargetFacing
trigger1 = 1
value = -1
ID = 801

[State 0, PosAdd]
type = PosAdd
trigger1 = backedgedist < 40
x = 10

[State Width]
type = width
trigger1 = 1
edge = 20, 0

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 45*2*Const(size.xscale), -105*2*Const(size.yscale)

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 35*2*Const(size.xscale), -110*2*Const(size.yscale)

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 25*2*Const(size.xscale), -115*2*Const(size.yscale)

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 10*2*Const(size.xscale), -115*2*Const(size.yscale)

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = -15*2*Const(size.xscale), -125*2*Const(size.yscale)

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = -55*2*Const(size.xscale), -20*2*Const(size.yscale)

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
pos = -105*2*Const(size.xscale), 0

[State 0, PowerAdd]
type = PowerAdd
trigger1 = animelemtime(7) = 0
value = 200*var(21)

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(7) = 0
value = -90
kill = 1

[State 2100, Wolf]
type = EnvShake
trigger1 = animelemtime(7) = 0
time = 15
ampl = -5
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(7) = 0
x = -2*2*Const(size.yscale)

[State 0, Turn]
type = Turn
trigger1 = !animtime
persistent = 0

[State 801, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;---------------------------------- TARGET -----------------------------------
[Statedef 802]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 802, Anim]
type = changeanim2
trigger1 = !time
value = 802


[State 806, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 809, Accel]
type = gravity
trigger1 = 1

[State 809, hitground]
type = selfstate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 5100
;-------------------------------- PLAYER ---------------------------------------
[Statedef 805]
type = S
movetype = A
physics = S
anim = 805
ctrl = 0
sprpriority = 1

[State 800, misssnd]
type = playsnd
trigger1 = animelem =6
value = s0,2
channel = 2

[State Throw]
type = targetstate
trigger1 = !time
value = 806

[State 0, PosAdd]
type = PosAdd
trigger1 = frontedgedist < 50
x = -10*2*Const(size.xscale)

[State Width]
type = width
trigger1 = 1
edge = 20, 0

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 45*2*Const(size.xscale),0

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 25*2*Const(size.xscale),0

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 5*2*Const(size.xscale),0

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = -25*2*Const(size.xscale),0

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(5) >= 0
pos = -40*2*Const(size.xscale),0

[State 0, Turn]
type = Turn
trigger1 = !animtime

[State 801, End]
type = changestate
trigger1 = !animtime
value = 801
ctrl = 0
;---------------------------------- TARGET -----------------------------------
[Statedef 806]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
;anim = 806

[State 802, Anim]
type = changeanim2
trigger1 = !time
value = 806

[State 0, SprPriority]
type = SprPriority
trigger1 = animelemtime(2) = 0
value = 2

[State 806, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 809, hitground]
type = changestate;selfstate
trigger1 = !animtime
;trigger1 = vel y > 0
;trigger1 = pos y >= -9
value = 802
