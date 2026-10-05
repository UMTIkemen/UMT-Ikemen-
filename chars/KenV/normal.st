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
sparkno = -1+0*(var(33):=8022)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10+0*(var(35):=75),var(36):=-82
hitsound = s1,0
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 7+5
ground.hittime = 7+5
guard.hittime = 7+2
air.hittime = 120
ground.velocity = -5*const(size.xscale),0
air.velocity = -5*const(size.xscale),-7.5*const(size.xscale)
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 70,35
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
sparkno = -1+0*(var(33):=8032)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10+0*(var(35):=80),var(36):=-77
hitsound = s1,1
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 15+3
ground.hittime = 15+3
guard.hittime = 15+2
air.hittime = 120
ground.velocity = -7.5*const(size.xscale)
air.velocity = -3.5*const(size.xscale), -7.5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 150,75
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
sparkno = -1+0*(var(33):=8032)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=65), var(36):=-86
hitsound = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 20+5
ground.hittime = 20+5
guard.hittime = 20-3
air.hittime = 120
ground.velocity = -9*const(size.xscale),0
air.velocity = -3.5*const(size.xscale),-7.5*const(size.yscale)
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 200,100
givepower = 100,50
id = 220

[State 240, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 7*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = 3*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = 4*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = 4*const(size.xscale)
persistent = 0

[State 240, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -5*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(10) = 0
x = -2*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(11) = 0
x = -11*const(size.xscale)

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
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
sparkno = -1+0*(var(33):=8022)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=75), var(36):=-20
hitsound = s1,3
guardsound = s2,0
ground.type = Low
air.type = Low
ground.slidetime = 9+3
ground.hittime = 9+3
guard.hittime = 9-1
air.hittime = 120
ground.velocity = -5*const(size.xscale), 0
air.velocity = -6.5*const(size.xscale), -5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 70,35
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
sparkno = -1+0*(var(33):=8031)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=73), var(36):=-92
hitsound = s1,4
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 19+1
ground.hittime = 19+1
guard.hittime = 19-1
air.hittime = 120
ground.velocity = -7.5*const(size.xscale), 0
air.velocity = -6*const(size.xscale),-5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 150,75
givepower = 75,37
forcestand = 1
id = 240

[State 240, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = 5*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 5*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = 5*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(5) = 0
x = 5*const(size.xscale)
ignorehitpause = 1

[State 240, posadd]
type = posadd
trigger1 = animelemtime(13) = 0
trigger2 = animelemtime(14) = 0
x = 5*const(size.xscale)
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 240, 5]
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
sparkno = -1+0*(var(33):=8032)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=76), var(36):=-50
hitsound = s1,5
guardsound = s2,0
ground.type = Low
air.type = Low
ground.slidetime = 26+3
ground.hittime = 26+3
guard.hittime = 26-3
air.hittime = 120
ground.velocity = -10.5*const(size.xscale), 0
air.velocity = -6.5*const(size.xscale), -5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 200,100
givepower = 100,50
id = 250

[State 240, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = 6*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 3*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = 4*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(5) = 0
x = 13*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(13) = 0
trigger2 = animelemtime(14) = 0
x = 5*const(size.xscale)

[State Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I

[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;============================== THUNDER KICK ===================================
[Statedef 300]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
ctrl = 0
anim = 300
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
trigger1 = time = 17
value = S3,6+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 17
value = S0,2
channel = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 240, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 26*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = 12*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = 25*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = 17*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(15) = 0
trigger2 = animelemtime(17) = 0
x = 8*const(size.xscale)

[State 207, Hit]
type = hitdef
triggerall = !var(19)
trigger1 = anim = 300 && time = 0
attr = S, NA
damage = 80,0
animtype = Heavy
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = -1 +0* (var(33):=8033)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=61), var(36):=-70
hitsound=s1,1
guardsound=s2,0
ground.type = Low
air.type = Low
ground.slidetime = 22+2
ground.hittime = 22+2
guard.hittime = 22-7
air.hittime = 120
ground.velocity = -10.5*const(size.xscale), 0
air.velocity = -6.5*const(size.xscale), -5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 200,100
givepower = 100,50
id = 300
persistent = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I

[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;============================== INAZUMA KICK ===================================
[Statedef 310]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
ctrl = 0
anim = 310
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
trigger1 = time = 19
value = S3,3+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 19
value = S0,4
channel = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 207, Hit]
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
sparkno = -1+0*(var(33):=8033)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=77), var(36):=-70
hitsound = s1,4
guardsound = s2,0
ground.type = Low
air.type = Low
ground.slidetime = 19+1
ground.hittime = 19+1
guard.hittime = 19-7
air.hittime = 120
ground.velocity = -10.5*const(size.xscale), 0
air.velocity = -6.5*const(size.xscale), -5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 150,75
givepower = 75,37
id = 310
persistent = 0

[State 240, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = 5*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 8*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = 7*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -4*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(10) = 0
x = -6*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(12) = 0
x = -7*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(10) = 0
x = -3*const(size.xscale)

[State Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I

[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;============================= CHIN BUSTER 1 ===================================
[Statedef 320]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
ctrl = 0
anim = 215
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
damage = 50,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = -1+0*(var(33):=8032)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10+0*(var(35):=50),var(36):=-58
hitsound = s1,1
guardsound = s2,0
ground.type = Low
air.type = Low
ground.slidetime = 15+0
ground.hittime = 15+0
guard.hittime = 15-2
air.hittime = 120
ground.velocity = -3*const(size.xscale)
air.velocity = -3*const(size.xscale),-7*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 150,75
givepower = 75,37
id = 320

[State 0, VelAdd]
type = Velset
trigger1 = animelemtime(1) = 0
x = 8

[State 0, VelAdd]
type = Velset
trigger1 = animelemtime(3) = 0
x = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;============================= CHIN BUSTER 2 ===================================
[Statedef 330]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
ctrl = 0
anim = 225
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
value = S3,2+(random%2)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,2
channel = 1

[State 210, Hit]
type = hitdef
;triggerall = !var(19)
trigger1 = enemynear,movetype = H && enemynear,statetype != A
trigger1 = time = 0
attr = S, NA
damage = 50,0
animtype = Up
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = -1+0*(var(33):=8031)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=57), var(36):=-85
hitsound = s1,2
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 18+6
ground.hittime = 18+6
guard.hittime = 18+0
air.hittime = 120
ground.velocity = -1*const(size.xscale),-7*const(size.yscale)
air.velocity = -1.5*const(size.xscale),-6.5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 200,100
givepower = 100,50
id = 330

[State 0, VelAdd]
type = Velset
trigger1 = animelemtime(1) = 0
x = 22

[State 0, VelAdd]
type = Velset
trigger1 = animelemtime(2) = 0
x = 0

[State 240, posadd]
type = posadd
trigger1 = anim = 220
trigger1 = animelemtime(2) = 0
x = 7*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = anim = 220
trigger1 = animelemtime(3) = 0
x = 3*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = anim = 220
trigger1 = animelemtime(4) = 0
x = 4*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = anim = 220
trigger1 = animelemtime(6) = 0
x = 4*const(size.xscale)
persistent = 0

[State 240, posadd]
type = posadd
trigger1 = anim = 220
trigger1 = animelemtime(8) = 0
x = -5*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = anim = 220
trigger1 = animelemtime(10) = 0
x = -2*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = anim = 220
trigger1 = animelemtime(11) = 0
x = -11*const(size.xscale)

[State Idle]
type = statetypeset
trigger1 = anim = 220 && animelemtime(9) >= 0
movetype = I

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;============================= LION BREAKER ====================================
[Statedef 340]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
ctrl = 0
anim = 340
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
value = S0,4
channel = 1

[State 220, Hit]
type = hitdef
trigger1 = time = 0
attr = S, NA
damage = 60,0
animtype = Diagup
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = -1+0*(var(33):=8031)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=71), var(36):=-100
hitsound = s1,4
guardsound = s2,0
ground.type = High
air.type = Low
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 23-6
air.hittime = 120
ground.velocity = -1.5*const(size.xscale),-7*const(size.yscale)
air.velocity = -1.5*const(size.xscale),-6.5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 200,100
givepower = 100,50
id = 340

;[State 0, VelAdd]
;type = Velset
;trigger1 = animelemtime(1) = 0
;x = 10

;[State 0, VelAdd]
;type = Velset
;trigger1 = animelemtime(2) = 0
;x = 0

[State 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(6) = 0
x = 6*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(5) = 0
x = 4*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(10) = 0
x = -4*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(11) = 0
x = -2*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(12) = 0
x = -6*const(size.xscale)

[State Idle]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
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
sparkno = -1 +0* (var(33):=8022)**0
guard.sparkno = -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=65), var(36):=-49
hitsound = s1,0
guardsound = s2,0
ground.type = Low
air.type = Low
ground.slidetime = 7+4
ground.hittime = 7+4
guard.hittime = 7+2
air.hittime = 120
ground.velocity = -4.5*const(size.xscale),0
air.velocity = -4.5*const(size.xscale),-7.5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 70,35
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
sparkno = -1 +0* (var(33):=8032)**0
guard.sparkno = -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=65), var(36):=-49
hitsound = s1,1
guardsound = s2,0
ground.type = Low
air.type = High
ground.slidetime = 12+5
ground.hittime = 12+5
guard.hittime = 12+2
air.hittime = 120
ground.velocity = -7.5*const(size.xscale)
air.velocity = -3.5*const(size.xscale), -7.5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 150,75
givepower = 75,37
id = 410

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
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
sparkno = -1 +0* (var(33):=8031)**0
guard.sparkno = -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=45), var(36):=-65
hitsound = s1,2
guardsound = s2,0
ground.type = Low
air.type = High
ground.slidetime = 22+2
ground.hittime = 22+2
guard.hittime = 22-9
air.hittime = 120
ground.velocity = -11.5*const(size.xscale),0
air.velocity = -4.5*const(size.xscale),-9*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 200,100
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
sparkno = -1 +0* (var(33):=8030)**0
guard.sparkno = -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=10), var(36):=-115
hitsound = s1,2
guardsound = s2,0
ground.type = Low
air.type = High
ground.slidetime = 22+2
ground.hittime = 22+2
guard.hittime = 22-9
air.hittime = 120
ground.velocity = -11.5*const(size.xscale),0
air.velocity = -4.5*const(size.xscale),-9*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 200,100
givepower = 100,50
id = 420

[State 240, hit]
type=hitdef
triggerall = !var(19)
trigger1 = animelem = 5
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
sparkno = -1 +0* (var(33):=8030)**0
guard.sparkno = -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=10), var(36):=-115
hitsound = s1,2
guardsound = s2,0
ground.type = Low
air.type = High
ground.slidetime = 22+2
ground.hittime = 22+2
guard.hittime = 22-9
air.hittime = 120
ground.velocity = -11.5*const(size.xscale),0
air.velocity = -4.5*const(size.xscale),-9*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 200,100
givepower = 100,50
id = 420

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
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
sparkno = -1 +0* (var(33):=8022)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=75), var(36):=-5
hitsound = s1,4
guardsound = s2,0
ground.type = Low
air.type = High
ground.slidetime = 7+4
ground.hittime = 7+4
guard.hittime = 7-1
air.hittime = 120
ground.velocity = -5*const(size.xscale), 0
air.velocity = -6.5*const(size.xscale), -5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 70,35
givepower = 35,17
id = 430

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 430, 5]
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
sparkno = -1 +0* (var(33):=8032)**0
guard.sparkno = -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=75), var(36):=-10
hitsound = s1,5
guardsound = s2,0
ground.type = Low
air.type = High
ground.slidetime = 14+2
ground.hittime = 14+2
guard.hittime = 14-4
air.hittime = 120
ground.velocity = -7.5*const(size.xscale), 0
air.velocity = -6*const(size.xscale),-5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 150,75
givepower = 75,37
id = 440

[State 240, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = 16*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 12*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(9) = 0
x = -4*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(11) = 0
trigger2 = animelemtime(12) = 0
x = -12*const(size.xscale)

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 440, 5]
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
sparkno = -1 +0* (var(33):=8032)**0
guard.sparkno = -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=85), var(36):=-10
hitsound = s1,5
guardsound = s2,0
ground.type = Trip
air.type = High
ground.slidetime = 28
ground.hittime = 28
guard.hittime = 28
air.hittime = 120
ground.velocity = -1*const(size.xscale),-6.5*const(size.yscale)
air.velocity = -1*const(size.xscale),-8.5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
getpower = 200,100
givepower = 100,50
id = 450

[State 240, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
x = 16*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(7) = 0
x = 4*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(10) = 0
x = -3*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(11) = 0
x = -11*const(size.xscale)

[State 240, posadd]
type = posadd
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(13) = 0
x = -13*const(size.xscale)

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 450, 5]
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
sparkno = -1 +0* (var(33):=8024)**0
guard.sparkno = -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=40), var(36):=-65
hitsound = s1,0
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 12
ground.hittime = 12
guard.hittime = 12
air.hittime = 120
ground.velocity = -4.5*const(size.xscale),0
air.velocity = -4.5*const(size.xscale),-7.5*const(size.xscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 70,35
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

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52
;========================= JUMPING MEDIUM PUNCH ================================
[Statedef 610]
type = A
movetype = A
physics = N
juggle  = 10
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
sparkno = -1 +0* (var(33):=8032)**0
guard.sparkno = -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=70), var(36):=-93
hitsound = s1,1
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -7.5*const(size.xscale)
air.velocity = -3.5*const(size.xscale), -7.5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 150,75
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
trigger1 = animelemtime(7) >= 0
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
sparkno = -1 +0* (var(33):=8033)**0
guard.sparkno = -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=78), var(36):=-53
hitsound = s1,2
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 24
ground.hittime = 24
guard.hittime = 24
air.hittime = 120
ground.velocity = -9*const(size.xscale),0
air.velocity = -3.5*const(size.xscale),-7.5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 200,100
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
trigger1 = animelemtime(7) >= 0
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
sparkno = -1 +0* (var(33):=8023)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=50), var(36):=-35
hitsound = s1,3
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 12
ground.hittime = 12
guard.hittime = 12
air.hittime = 120
ground.velocity = -5*const(size.xscale), 0
air.velocity = -6.5*const(size.xscale), -5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 70,35
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
trigger1 = animelemtime(8) >= 0
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
sparkno = -1 +0* (var(33):=8032)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=70), var(36):=-60
hitsound = s1,4
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -7.5*const(size.xscale), 0
air.velocity = -6*const(size.xscale),-5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 150,75
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
trigger1 = animelemtime(8) >= 0
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
sparkno = -1 +0* (var(33):=8032)**0
guard.sparkno= -1 + 0*(var(34):=8300)
sparkxy = -10 + 0*(var(35):=80), var(36):=-50
hitsound = s1,5
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 24
ground.hittime = 24
guard.hittime = 24
air.hittime = 120
ground.velocity = -9*const(size.xscale),0
air.velocity = -3.5*const(size.xscale),-7.5*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
getpower = 200,100
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
trigger1 = animelemtime(7) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52
;================================= THROW =======================================
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

[State 800, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 800, Hit]
type = hitdef
trigger1 = !time
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
hitsound = s800,0
p1facing = 1
p2facing = 1
p1stateno = ifelse(command = "holdback", 820, 805)
;p2stateno = 807;ifelse(command = "holdback", 820, 805)
guard.dist = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
id = 801

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 3
value = s0,0
channel = 1

[State 800, misssnd]
type = playsnd
trigger1 = random <= 500
trigger1 = animelem = 3
value = s800,2
channel = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;================================= THROW =======================================
[Statedef 801]
type = S
movetype = A
physics = S
anim = 801
ctrl = 0
sprpriority = 1
juggle = 15

[State Throw]
type = targetstate
trigger1 = !time
value = 802

[State Width]
type = width
trigger1 = 1
edge = 30, 0

[State 801, Bind 1]
type = targetbind
trigger1 = animelemtime(14) < 0
pos = ceil(43*const(size.xscale)), 0

[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 1
value = -1

[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 14
value = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 14
value = S1,4
channel = 3

[State 1000, Hadouken]
type = helper
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 14
helpertype = normal
stateno = 8032
ID = 8020
name = "hitspark"
postype = p1
pos = 120, -135
facing = -1
size.xscale = 1.85
size.yscale = 1.85
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 14
value = -120
ID = 801
kill = 1

[State 801, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================= THROW FORWARD ===================================
[Statedef 805]
type    = S
movetype= A
physics = N
anim = 805
poweradd = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S800,3
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S0,2
channel = 1

[State Throw]
type = targetstate
trigger1 = !time
value = 807

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 1200, 9]
type = Width
trigger1 = animelemtime(8) >= 0
trigger1 = animelemtime(12) < 0
edge = 80,0

[State 810, ScreenBound]
type = null
trigger1 = 1
value = 1
movecamera = 1,0

[State 801, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 60*const(size.xscale), 0*const(size.xscale)

[State 801, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 20*const(size.xscale), 0*const(size.xscale)

[State 801, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 3
pos = -20*const(size.xscale), -0*const(size.xscale)

[State 801, Bind 5]
type = TargetBind
trigger1 = AnimElem = 4
pos = -30*const(size.xscale), -90*const(size.xscale)

[State 801, Bind 6]
type = TargetBind
trigger1 = AnimElem = 5
pos = -35*const(size.xscale), -95*const(size.xscale)

[State 801, Bind 8]
type = TargetBind
trigger1 = AnimElem = 6
pos = -40*const(size.xscale), -96*const(size.xscale)

[State 801, Bind 9]
type = TargetBind
trigger1 = AnimElem = 7
pos = 5*const(size.xscale), -90*const(size.xscale)

[State 801, Bind 10]
type = TargetBind
trigger1 = AnimElem = 8
pos = 10*const(size.xscale), -50*const(size.xscale)

[State 801, Bind 11]
type = TargetBind
trigger1 = AnimElem = 9
pos = 15*const(size.xscale), -40*const(size.xscale)

[State 801, Bind 11]
type = TargetBind
trigger1 = AnimElem = 10
pos = 18*const(size.xscale), -30*const(size.xscale)

;[State 801, Hurt 11]
;type = TargetLifeAdd
;trigger1 = numtarget
;trigger1 = target, stateno = 5100 && target, time = 1
;value = -120
;persistent = 0

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 10
;trigger2 = animelem = 9
;trigger3 = animelem = 14
value = -120
ID = 801
kill = 1

[State 0, PowerAdd]
type = PowerAdd
trigger1 = animelem = 10
value = 70

[State 0, EnvShake]
type = EnvShake
trigger1 = numtarget
trigger1 = target, stateno = 5100 && target, time = 1
time = 10
freq = 60
ampl = -4
persistent = 0

[State 810, posadd]
type = posadd
trigger1 = AnimElem = 12
x = ceil(36*const(size.xscale))

[State 801, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------- TARGET ---------------------------------------
[Statedef 807]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, ScreenBound]
type = ScreenBound
trigger1 = 1;animelemtime(8) < 0
value = 0

[State 820, Vel]
type = Velset
trigger1 = time >= 38
x = 20
y = 10

[State 820, Pos]
type = Posadd
trigger1 = Pos Y >= -20 && Vel Y > 0 && time > 38
x = 80

[State 820, Vel]
type = Velset
trigger1 = Pos Y >= -20 && Vel Y > 0 && time > 38
x = 2

[State 820, turn]
type = turn
Trigger1 = time = 13

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 807

[State 820, End]
type = Selfstate
trigger1 = Pos Y >= -20 && Vel Y > 0 && time > 38
value = 5100

;=============================== BACK THROW ====================================
[Statedef 820]
type    = S
movetype = A
physics = N
anim = 820
SprPriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = S800,4
channel = 0
volumescale = 125

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = S0,2
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S100,1
channel = 2
volumescale = 50

[State -2, TargetState]
type = TargetState
Trigger1 = time = 0
value = 821

[State 820, ‰æ‘œ•\Ž¦—Dæ“x]
type = SprPriority
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 11
value = -1

[State 820, ‰æ‘œ•\Ž¦—Dæ“x]
type = SprPriority
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 13
value = 2

[State 820, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 810, 0]
type = null;ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1200, 9]
type = Width
trigger1 = animelemtime(11) >= 0
trigger1 = animelemtime(12) < 0
edge = 0,60

[State 820, PosAdd]
type = PosAdd
trigger1 = animelemtime(4) = 0
x = -24*const(size.xscale)

[State 820, PosAdd]
type = PosAdd
trigger1 = animelemtime(5) = 0
x = -15*const(size.xscale)

[State 820, PosAdd]
type = PosAdd
trigger1 = animelemtime(6) = 0
x = -15*const(size.xscale)

[State 820, PosAdd]
type = PosAdd
trigger1 = animelemtime(7) = 0
x = -30*const(size.xscale)

[State 820, PosAdd]
type = PosAdd
trigger1 = animelemtime(8) = 0
x = -25*const(size.xscale)

[State 820, PosAdd]
type = PosAdd
trigger1 = animelemtime(9) = 0
x = -10*const(size.xscale)

[State 820, AnimElem = 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = ceil(60*const(size.xscale)), 0

[State 820, AnimElem = 2]
type = TargetBind
trigger1 = AnimElem = 2 && target,StateNo = 821
pos = ceil(40*const(size.xscale)), 0

[State 820, AnimElem = 2]
type = TargetBind
trigger1 = AnimElem = 2 && target,StateNo = 822
pos = ceil(35*const(size.xscale)), 0

[State 820, AnimElem = 3]
type = TargetBind
trigger1 = AnimElem = 3 && target,StateNo = 821
pos = ceil(20*const(size.xscale)), 0

[State 820, AnimElem = 11]
type = TargetBind
trigger1 = AnimElem = 4 && target,StateNo = 821
pos = 0, 0

[State 820, AnimElem = 11]
type = TargetBind
trigger1 = AnimElem = 5 && target,StateNo = 821
pos = 0, ceil(-50*const(size.yscale))

[State 820, AnimElem = 11]
type = TargetBind
trigger1 = AnimElem = 6 && target,StateNo = 821
pos = ceil(-10*const(size.xscale)), ceil(-40*const(size.yscale))

[State 820, AnimElem = 11]
type = TargetBind
trigger1 = AnimElem = 7 && target,StateNo = 821
pos = ceil(-20*const(size.xscale)), ceil(-20*const(size.yscale))

[State 820, AnimElem = 11]
type = TargetBind
trigger1 = AnimElem = 8 && target,StateNo = 821
pos = 0, ceil(-15*const(size.yscale))

[State 820, AnimElem = 11]
type = TargetBind
trigger1 = AnimElem = 9 && target,StateNo = 821
pos = ceil(10*const(size.xscale)), ceil(-30*const(size.yscale))

[State 820, AnimElem = 11]
type = TargetBind
trigger1 = AnimElem = 10 && target,StateNo = 821
pos = ceil(20*const(size.xscale)), ceil(-50*const(size.yscale))

[State 820, AnimElem = 11]
type = TargetBind
trigger1 = AnimElem = 11 && target,StateNo = 821
pos = ceil(-20*const(size.xscale)), ceil(-50*const(size.yscale))

[State 820, AnimElem = 12]
type = TargetBind
trigger1 = AnimElem = 12 && target,StateNo = 821
pos = ceil(-60*const(size.xscale)), ceil(-70*const(size.yscale))

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 13
value = -120
ID = 801
kill = 1

[State 0, PowerAdd]
type = PowerAdd
trigger1 = animelem = 13
value = 70

[State 820, Turn]
type = Turn
trigger1 = AnimElem = 16

[State 820, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------- TARGET ---------------------------------------
[Statedef 821]
type = A
movetype = H
physics = N
velset = 0,0
facep2 = 1
ctrl = 0

[State 811, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 821

[State 810, 0]
type = ScreenBound
trigger1 = animelemtime(13) < 0
value = 0
movecamera = 0,0

[State 811, Vel]
type = Velset
trigger1 = animelemtime(13) = 0
x = 6.5*1.5
y = -7.0*2

[State 811, Veladd]
type = veladd
trigger1 = animelemtime(13) >= 0
y = .55*2

[State 811, Vel]
type = Velset
trigger1 = Pos Y >= -20 && Vel Y > 0 && animelemtime(13) > 0
x = 2.0

[State 811, SelfState]
type = Selfstate
trigger1 = Pos Y >= -20 && Vel Y > 0 && animelemtime(13) > 0
value = 5100


