; _________________________________________
;| Character by JStudios2k                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<NORMAL MOVES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
; Standing Light Punch
[Statedef 200]
type    = S
physics = S
movetype= A
ctrl = 0
velset = 0,0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 200, Anim]
type=changeanim
trigger1=!time
value=200

[State 200,Posset]
type=posset
trigger1=!time
y=0

[State 200, Snd]
type=playsnd
trigger1= !time && random<200
value= 4, 0
channel=0

[State 200, Snd]
type=playsnd
trigger1= !time
value=1,0
channel=1

[State 200, Hit]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forcenofall = !var(20)
priority = 4, Hit
attr = S, NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * var(9)
ground.slidetime = 12 + 2 * var(9)
guard.hittime = 12
air.hittime = 120
ground.velocity = ifelse(var(20), -1.20, -2.41), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -1.20, -2.41)
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = 0.4
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 0)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -67
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 200, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
[Statedef 210]
type    = S
physics = S
movetype= A
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 210, Anim]
type=changeanim
trigger1=!time
value=210

[State 210,Posset]
type=posset
trigger1=!time
y=0

[State 210, Snd]
type=playsnd
trigger1= animelem=2 && random<350
value= 4, ifelse(random<500, 0, 1)
channel=0

[State 210, Snd]
type=playsnd
trigger1= animelem=2
value=1,1
channel=1

[State 210, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3*var(9)
ground.slidetime = 15 + 3*var(9)
guard.hittime = 15
air.hittime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-75
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 210, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Far Strong Punch
[Statedef 220]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 220, Anim]
type=changeanim
trigger1=!time
value=220

[State 220,Posset]
type=posset
trigger1=!time
y=0

[State 220, Snd]
type=playsnd
trigger1= animelem=2 ;&& random<500
value= 4, 0
channel=0

[State 220, Snd]
type=playsnd
trigger1= animelem=2
value=1,2
channel=1

[State 220, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*70<7, 7, fvar(11)*70)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 15
air.hittime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 200, Gief three-tap]
type=ChangeState
triggerall= animelemtime(4)>=0 || movecontact
trigger1= !AILevel && command = "z"
trigger2= AILevel && random<(500+200*(P2MoveType=H)) && numenemy
trigger2= (enemynear, Movetype = A || enemynear, Movetype = H) && p2bodydist x <= 35 && (p2bodydist y = [-50,0])
value=StateNo+1

[State 200, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 220, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Second Strong Punch
[Statedef 221]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 220, Anim]
type=changeanim
trigger1=!time
value=221

[State 220,Posset]
type=posset
trigger1=!time
y=0

[State 220, Inching]
type=velset
trigger1=!time
x=6
[State 220, Advantage]
type=posadd
trigger1=animelem=3 && numtarget
x=ifElse((P2BodyDist x = [0,36]), 10, 0)

[State 220, Snd]
type=playsnd
trigger1= animelem=2 ;&& random<500
value= 4, 1
channel=0

[State 220, Snd]
type=playsnd
trigger1= animelem=2
value=1,2
channel=1

[State 220, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*30<7, 7, fvar(11)*30)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 15
air.hittime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 200, Gief three-tap]
type=ChangeState
triggerall= animelemtime(4)>=0 || movecontact
trigger1= !AILevel && command = "z"
trigger2= AILevel && random<(500+200*(P2MoveType=H)) && numenemy
trigger2= (enemynear, Movetype = A || enemynear, Movetype = H) && p2bodydist x <= 35 && (p2bodydist y = [-50,0])
value=StateNo+1

[State 200, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 220, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Third Strong Punch
[Statedef 222]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 220, Anim]
type=changeanim
trigger1=!time
value=222

[State 220,Posset]
type=posset
trigger1=!time
y=0

[State 220, Inching]
type=velset
trigger1=!time
x=6
[State 220, Advantage]
type=posadd
trigger1=animelem=3 && numtarget
x=ifElse((P2BodyDist x = [0,36]), 10, 0)

[State 220, Snd]
type=playsnd
trigger1= animelem=2 ;&& random<500
value= 4, 2
channel=0

[State 220, Snd]
type=playsnd
trigger1= animelem=2
value=1,2
channel=1

[State 220, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
attr = S,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*ifElse(PrevStateNo=700, 55, 45)<7, 7, fvar(11)*ifElse(PrevStateNo=700, 55, 45))), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 15
air.hittime = 120
ground.velocity = -6.46, -5.25
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = -5
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=10)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State WHAMMY]
type = Explod
trigger1 = movehit = 1
anim = 300
pos = ifelse(p2dist x + 13 >= 66, 66, floor(p2dist x + 13)),-59
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.7,0.7
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 200, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 220, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------
; Hit by Fast Kung Fu Palm - shaking from the hit
; (a custom gethit state)
; See State 1020 for details
[Statedef 225]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 225

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 226

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 226]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1026, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 1026, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 227

[State 1026, Hit ground]
type = SelfState
trigger1 = vel y + pos y >= 10
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 227]
type    = A
movetype= H
physics = N

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 8
freq = 240
ampl = -8

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 227

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,1
[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,2
[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F5,4
freqmul = 1.2

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 228

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 228]
type    = A
movetype= H
physics = N

;[State 1028, 1]
;type = NotHitBy
;trigger1 = 1
;value = , NA, NP

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -6

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = vel y + pos y >= 10
value = 5100

;---------------------------------------------------------------------------
; Standing Light Kick
[Statedef 230]
type    = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 230, Anim]
type=changeanim
trigger1=!time
value=230

[State 230,Posset]
type=posset
trigger1=!time
y=0

[State 230, Snd]
type=playsnd
trigger1= !time && random<500
value= 4, 0
channel=0

[State 230, Snd]
type=playsnd
trigger1= !time
value=1,3
channel=1

[State 230, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
priority = 5, Hit
damage = ceil(ifelse(fvar(11)*35<7, 7, fvar(11)*35)), 0
getpower = 72*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2*var(9)
ground.slidetime = 12 + 2*var(9)
guard.hittime = 12
air.hittime = 120
ground.velocity = ifElse(var(20), -1.20, -2.41), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -1.20, -2.41)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=3)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=61), var(36):=-22
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 230, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
[Statedef 240]
type    = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 240, Anim]
type=changeanim
trigger1=!time
value=240

[State 240,Posset]
type=posset
trigger1=!time
y=0

[State 240, Snd]
type=playsnd
trigger1= animelem=3 && random<350
value= 4, ifelse(random<500, 0, 1)
channel=0

[State 240, Snd]
type=playsnd
trigger1= animelem=3
value=1,4
channel=1

[State 240, Hit 1]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= animelem = 2
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*32<7, 7, fvar(11)*32)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3*var(9)
ground.slidetime = 15 + 3*var(9)
guard.hittime = 15
air.hittime = 120
ground.velocity = -4, 0
guard.velocity = -4
air.velocity = 0, -2 ;-6.46, -5.25
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=4)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=85), var(36):=-30
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
[State 240, Hit 2]
type=hitdef
trigger1= !var(16) && (var(15)<1+HitCount || var(20))
trigger1= animelem = 3
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*ifElse(HitCount=0, 60, 35)<7, 7, fvar(11)*ifElse(HitCount=0, 60, 35))), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3*var(9)
ground.slidetime = 15 + 3*var(9)
guard.hittime = 11
air.hittime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = -3
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = -3
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=4)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=85), var(36):=-53
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 240, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Forward Gief Knee
[Statedef 241]
type    = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 240, Anim]
type=changeanim
trigger1=!time
value=241

[State 240,Posset]
type=posset
trigger1=!time
y=0

[State 240, Snd]
type=playsnd
trigger1= animelem=1 && random<500
value= 4, 2
channel=0

[State 240, Snd]
type=playsnd
trigger1= animelem=3
value=1,9+random%2
channel=1

[State 40, Dust]
type = helper
trigger1 = animelem=2
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 16
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A       ;S,A,C,L
physics = A         ;A,C,S,N
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 2.7
y = -4.8

[State 210, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<6 || var(20)) && !numtarget(241)
trigger1= !Time
forcenofall = !var(20)
forcestand = 1
ID = 241
attr = A,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3*var(9)
ground.slidetime = 15 + 3*var(9)
guard.hittime = 13
air.hittime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -3.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=13)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-75
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 8
envshake.ampl = -7
envshake.freq = 235

[State 200, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I


;---------------------------------------------------------------------------
; Standing Strong Kick
[Statedef 250]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 250, Reset]
type = VarSet
trigger1 = !time
var(10) = 0

[State 250, Anim]
type=changeanim
trigger1=!time && prevstateno!=stateno
value=250

[State 0, PalFX]
type = PalFX
triggerall = anim = 250
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = -1
trigger3 = animelemtime(3) = -1
time = 2
add = 256,0,0
mul = 256,256,256
invertall = 0
color = 256

[State 250, Power settings]
type = VarSet
triggerall = anim=250
trigger1 = animelem = 2
var(10) = 1
[State 250, Power settings]
type = VarSet
triggerall = anim=250
trigger1 = animelem = 3
var(10) = 2

[State 250, Anim 2]
type=changeanim
triggerall=anim!=[251,252]
trigger1=command!="holdc"
trigger2=anim=250 && !animtime
trigger3=prevstateno=700
value=ifElse(var(10)=2,252,251)

[State 250,Posset]
type=posset
trigger1=!time
y=0

[State 250, Snd]
type=playsnd
trigger1= animelem=2 && anim!=250
value=1,5
channel=1

[State 250, NOPE]
type = HitOverride
trigger1 = anim = 250
attr = SCA, NA, SA, NP, SP
slot = 0
stateno = 251

[State 250, Width]
type= Width
trigger1=anim!=250 && animelem = 2
player = 30,0
edge = 35,0

[State 250, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20)) && anim = 251
trigger1= animelem = 2
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*91<7, 7, fvar(11)*91)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 12
air.hittime = 120
ground.velocity = ifElse(PrevStateNo = 700, -6.46, ifElse(var(20), -4.86, -10.52)), ifElse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -6.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=5+7*var(9))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=81), var(36):=-37
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 250, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20)) && anim = 252
trigger1= animelem = 2
forcenofall = !var(20)
ID = 250*var(9)
attr = C,NA
hitflag = MAF
guardflag = H
priority = 5, Hit
damage = ceil(ifelse(fvar(11)*100<7, 7, fvar(11)*100)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 14
air.hittime = 120
ground.velocity = ifElse(var(20), -4.86, -5.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -5.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=5+7*var(9))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=81), var(36):=-37
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State WHAMMY]
type = Explod
trigger1 = movehit = 1 && numhelper(8290)
anim = 300
pos = var(35),-37
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.7,0.7
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 450, TargetState]
type = TargetState
trigger1 = MoveHit && NumHelper(8290) && NumTarget
trigger1 = P2StateType != A
value = 260
;ID = 25
ignoreHitPause = 1
persistent = 0

[State 200, Type]
type=statetypeset
trigger1= animelemtime(3)>= 0 && (Anim = 251 || Anim = 252)
movetype=I

[State 250, 5]
type = ChangeState
trigger1 = !AnimTime && (Anim = 251 || Anim = 252)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; NOPE
[Statedef 251]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 250, Chip damage]
type=lifeadd
trigger1=!time
value=-30

[State 250, Anim]
type=changeanim
trigger1=!time
value=251

[State 250,Posset]
type=posset
trigger1=!time
y=0

[State 250, Snd]
type=playsnd
trigger1= animelem=2
value=1,5
channel=1

[State 250, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*80<7, 7, fvar(11)*80)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = ifElse(PrevStateNo = 700, -6.46, ifElse(var(20), -4.86, -10.52)), ifElse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=81), var(36):=-37
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 200, Type]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 250, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;OUCH!
[Statedef 260]
type    = C
movetype= H
physics = N
ctrl = 0
sprpriority = 2

[State 903, OUCH!]
type = ChangeAnim2
trigger1 = time = 0
value = 260

[State 903, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = -6.777
[State 0, VelSet]
type = VelMul
trigger1 = animelemtime(1) >= 0
x = 0.9

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 0

[State 903, Hitoverride if hit by non-fall move]
type = HitOverride
trigger1 = stateno = 260
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 5020
time = 1
forceair = 1

[State 903, Return to their own states]
type = SelfState
trigger1 = !animtime
value = 5110
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
[Statedef 400]
type = C
physics = C
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 400, Anim]
type=changeanim
trigger1=!time
value=400

[State 400,Posset]
type=posset
trigger1=!time
y=0

[State 400, Snd]
type=playsnd
trigger1= !Time && random<200
value= 4, 0
channel=0

[State 400, Snd]
type=playsnd
trigger1= !time
value=1,0
channel=1

[State 400, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*21<7, 7, fvar(11)*21)), 0
getpower = 72*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2*var(9)
ground.slidetime = 12 + 2*var(9)
guard.hittime = 12
air.hittime = 120
ground.velocity = ifElse(var(20), -1.20, -2.41), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -1.20, -2.41)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=0)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=62), var(36):=-45
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 400, 5]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
[Statedef 410]
type = C
physics = C
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 410, Anim]
type=changeanim
trigger1=!time
value=410

[State 410,Posset]
type=posset
trigger1=!time
y=0

[State 410, Snd]
type=playsnd
trigger1= !time && random<350
value= 4, ifelse(random<500, 0, 1)
channel=0

[State 410, Snd]
type=playsnd
trigger1= !time
value=1,1
channel=1

[State 410, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*63<7, 7, fvar(11)*63)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3*var(9)
ground.slidetime = 15 + 3*var(9)
guard.hittime = 15
air.hittime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=60), var(36):=-52
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 410, 5]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 420]
type = C
physics = C
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 420, Anim]
type=changeanim
trigger1=!time
value=420

[State 420,Posset]
type=posset
trigger1=!time
y=0

[State 420, Snd]
type=playsnd
trigger1= !time ;&& random<500
value= 4, 0
channel=0

[State 420, Snd]
type=playsnd
trigger1= !time
value=1,2
channel=1

[State 420, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*70<7, 7, fvar(11)*70)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = ifElse(var(20), -4.86, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=34), var(36):=-45
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 200, Gief three-tap]
type=ChangeState
triggerall= animelemtime(4)>=0 || movecontact
trigger1= !AILevel && command = "z"
trigger2= AILevel && random<(500+200*(P2MoveType=H)) && numenemy
trigger2= (enemynear, Movetype = A || enemynear, Movetype = H) && p2bodydist x <= 35 && (p2bodydist y = [-50,0])
value=StateNo+1

[State 420, 5]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Second Strong Punch
[Statedef 421]
type = C
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 220, Anim]
type=changeanim
trigger1=!time
value=421

[State 220,Posset]
type=posset
trigger1=!time
y=0

[State 220, Inching]
type=velset
trigger1=!time
x=6
[State 220, Advantage]
type=posadd
trigger1=animelem=3 && numtarget
x=ifElse((P2BodyDist x = [0,36]), 10, 0)

[State 220, Snd]
type=playsnd
trigger1= animelem=2 ;&& random<500
value= 4, 1
channel=0

[State 220, Snd]
type=playsnd
trigger1= animelem=2
value=1,2
channel=1

[State 220, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*40<7, 7, fvar(11)*40)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 15
air.hittime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-45
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 200, Gief three-tap]
type=ChangeState
triggerall= animelemtime(4)>=0 || movecontact
trigger1= !AILevel && command = "z"
trigger2= AILevel && random<(500+200*(P2MoveType=H)) && numenemy
trigger2= (enemynear, Movetype = A || enemynear, Movetype = H) && p2bodydist x <= 35 && (p2bodydist y = [-50,0])
value=StateNo+1

[State 200, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 220, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Third Strong Punch
[Statedef 422]
type = C
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 220, Anim]
type=changeanim
trigger1=!time
value=422

[State 220,Posset]
type=posset
trigger1=!time
y=0

[State 220, Inching]
type=velset
trigger1=!time
x=6
[State 220, Advantage]
type=posadd
trigger1=animelem=3 && numtarget
x=ifElse((P2BodyDist x = [0,36]), 10, 0)

[State 220, Snd]
type=playsnd
trigger1= animelem=2 ;&& random<500
value= 4, 2
channel=0

[State 220, Snd]
type=playsnd
trigger1= animelem=2
value=1,2
channel=1

[State 220, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
attr = S,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*45<7, 7, fvar(11)*45)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 15
air.hittime = 120
ground.velocity = -6.46, -5.25
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = -5
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=10)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-45
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State WHAMMY]
type = Explod
trigger1 = movehit = 1
anim = 300
pos = ifelse(p2dist x + 13 >= 66, 66, floor(p2dist x + 13)),-45
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.7,0.7
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 200, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 220, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
[Statedef 430]
type = C
physics = C
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 430, Anim]
type=changeanim
trigger1=!time
value=430

[State 430,Posset]
type=posset
trigger1=!time
y=0

[State 430, Snd]
type=playsnd
trigger1= !time && random<200
value= 4, 0
channel=0
[State 430, Snd]
type=playsnd
trigger1= !time
value=1,3
channel=1

[State 430, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1=  !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*28<7, 7, fvar(11)*28)), 0
getpower = 72*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2*var(9)
ground.slidetime = 12 + 2*var(9)
guard.hittime = 12
air.hittime = 120
ground.velocity = ifElse(var(20), -1.20, -2.41), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -1.20, -2.41)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=3)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=64), var(36):=-1
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 430, 5]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Crouching Medium Kick
[Statedef 440]
type = C
physics = C
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 440, Anim]
type=changeanim
trigger1=!time
value=440

[State 440,Posset]
type=posset
trigger1=!time
y=0

[State 440, Snd]
type=playsnd
trigger1= animelem=2 && random<350
value= 4, ifelse(random<500, 1, 2)
channel=0

[State 440, Snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 440, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<4 || var(20)) && !numtarget(440)
trigger1= !Time
;forcenofall = !var(20)
ID = 440
attr = C,NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*56<7, 7, fvar(11)*56)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3*var(9)
ground.slidetime = 15 + 3*var(9)
guard.hittime = 15
air.hittime = 120
ground.velocity = -1.87, -11.67
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -1.87, -8.324
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=4)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=76), var(36):=-42
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 440, Jump Cancel]
type = ChangeState
triggerall= animelemtime(4)>=0 || movecontact
trigger1= !AILevel && (command = "up" || command = "holdup")
trigger2= AILevel && random<(500+200*(P2MoveType=H && P2StateType=A)) && numenemy
value = 40
ctrl = 1

[State 440, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 440, 5]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Strong Kick
[Statedef 450]
type = C
physics = C
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 450, Reset]
type = VarSet
trigger1 = !time
var(10) = 0

[State 450, Anim]
type=changeanim
trigger1=!time && prevstateno!=stateno
value=450

[State 0, PalFX]
type = PalFX
triggerall = anim = 450
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = -1
trigger3 = animelemtime(3) = -1
time = 2
add = 256,0,0
mul = 256,256,256
invertall = 0
color = 256

[State 450, Power settings]
type = VarSet
triggerall = anim=450
trigger1 = animelem = 2
var(10) = 1
[State 450, Power settings]
type = VarSet
triggerall = anim=450
trigger1 = animelem = 3
var(10) = 2

[State 450, Anim 2]
type=changeanim
triggerall=anim!=[451,452]
trigger1=command!="holdc"
trigger2=anim=450 && !animtime
trigger3=prevstateno=700
value=ifElse(var(10)=2,452,451)

[State 450,Posset]
type=posset
trigger1=!time
y=0

[State 450, Snd]
type=playsnd
trigger1= animelem=2 && anim!=450
value=1,5
channel=1

[State 450, NOPE]
type = HitOverride
trigger1 = anim = 450
attr = SCA, NA, SA, NP, SP
slot = 0
stateno = 451

[State 450, Width]
type= Width
trigger1=anim!=450 && animelem = 2
player = 30,0
edge = 25,0

[State 450, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20)) && anim = 451
trigger1= animelem = 2
ID = 450
attr = C,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*91<7, 7, fvar(11)*91)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 12
air.hittime = 120
ground.velocity = ifElse(var(20), -4.86, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -6.52)
guard.cornerPush.velOff = 0
air.velocity = -1, -8.24
air.cornerPush.velOff = 0
yAccel = 0.677
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5+7*var(9))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-37
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 450, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20)) && anim = 452
trigger1= animelem = 2
ID = 450
attr = C,NA
hitflag = MAF
guardflag = L
priority = 5, Hit
damage = ceil(ifelse(fvar(11)*100<7, 7, fvar(11)*100)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 14
air.hittime = 120
ground.velocity = -1, -6.25 - 8*var(9)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -5.52)
guard.cornerPush.velOff = 0
air.velocity = -1, -8.24
air.cornerPush.velOff = 0
yAccel = 0.677
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5+7*var(9))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-37
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State WHAMMY]
type = Explod
trigger1 = movehit = 1 && numhelper(8290)
trigger2 = movehit = 1 && anim = 452
anim = 300
pos = var(35),-37
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.7,0.7
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 450, TargetState]
type = TargetState
trigger1 = MoveHit && NumHelper(8290) && NumTarget
trigger2 = MoveHit && NumTarget && Anim = 452
value = 455
ID = 450
ignoreHitPause = 1
persistent = 0

[State 450, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(3) >= 0 && (Anim = 451 || Anim = 452)
moveType = I

[State 450, 5]
type = ChangeState
trigger1 = !AnimTime && (Anim = 451 || Anim = 452)
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; NOPE
[Statedef 451]
type = C
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 250, Chip damage]
type=lifeadd
trigger1=!time
value=-30

[State 250, Anim]
type=changeanim
trigger1=!time
value=451

[State 250,Posset]
type=posset
trigger1=!time
y=0

[State 250, Snd]
type=playsnd
trigger1= animelem=2
value=1,5
channel=1

[State 250, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*80<7, 7, fvar(11)*80)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = ifElse(var(20), -4.86, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=81), var(36):=-37
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 200, Type]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 250, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Tripped get-hit (shaking)
[Statedef 455]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5070, 1]
type = ChangeAnim
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 456

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140


; Tripped get-hit (knocked away)
[Statedef 456]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = time > 0
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.trip.groundlevel)
type = SelfState
value = 5110


;---------------------------------------------------------------------------
; Jump Light Punch
[Statedef 600]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 600, Anim]
type=changeanim
trigger1=!time
value=600

[State 600, Snd]
type=playsnd
trigger1= animelem=2 && random<200
value= 4, ifelse(random<500, 0, 1)
channel=0

[State 600, Snd]
type=playsnd
trigger1= animelem=2
value=1,0
channel=1

[State 600, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 3
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*35<7, 7, fvar(11)*35)), 0
getpower = 72*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2*var(9)
ground.slidetime = 12 + 2*var(9)
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=0)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=47), var(36):=-52
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 600, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 600
elem = 4
ignoreHitPause = 1

[State 620, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 600, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type=changestate
trigger1= pos y>-vel y
value=52

;---------------------------------------------------------------------------
; Jump Medium Punch
[Statedef 610]
type = A
physics  = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 610, Anim]
type=changeanim
trigger1=!time
value=610

[State 610, Snd]
type=playsnd
trigger1= animelem=3 && random<350
value= 4, ifelse(random<500, 0, 1)
channel=0

[State 610, Snd]
type=playsnd
trigger1= animelem=3
value=1,1
channel=1

[State 610, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<5 || var(20))
trigger1= !time
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*63<7, 7, fvar(11)*63)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = High
ground.hittime = 12 + 3*var(9)
ground.slidetime = 12 + 3*var(9)
guard.hittime = 15
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -4.46, -4.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=42), var(36):=-100
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 610, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 610
elem = 4
ignoreHitPause = 1

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type=changestate
trigger1= pos y>-vel y
value=52

;---------------------------------------------------------------------------
; Jump Strong Punch
[Statedef 620]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 0, VelAdd]
type = VelSet
trigger1 = !time
y = .5

[State 620, Anim]
type=changeanim
trigger1=!time
value=620

[State 620, Snd]
type=playsnd
trigger1= animelem=1
value=1,11
channel=1

[State 620, Hit 1]
type=hitdef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1= animelem=3
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*42<7, 7, fvar(11)*42)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 4*var(9)
ground.slidetime = 12 + 4*var(9)
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -2.46, -2.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=55), var(36):=-82
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
[State 620, Hit 2]
type=hitdef
trigger1 = !var(16) && (var(15) < 5+HitCount || var(20))
trigger1= animelem=5
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
damage = ceil(ifelse(fvar(11)*45<7, 7, fvar(11)*45)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 4*var(9)
ground.slidetime = 12 + 4*var(9)
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, 13.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.68
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=55), var(36):=-82
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
fall.envshake.time = 6
fall.envshake.ampl = 6
fall.envshake.freq = 120

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 620, Gravity]
type = Gravity
trigger1 = AnimElemTime(7) >= 0

[State 620, End]
type=changestate
trigger1= pos y>-vel y
value=52

;---------------------------------------------------------------------------
; Jump Light Kick
[Statedef 630]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 630, Anim]
type=changeanim
trigger1=!time
value=630

[State 630, Snd]
type=playsnd
trigger1= animelem=2 && random<200
value= 4, ifelse(random<500, 0, 1)
channel=0

[State 630, Snd]
type=playsnd
trigger1= animelem=2
value=1,3
channel=1

[State 630, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1 = !Time
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*35<7, 7, fvar(11)*35)), 0
getpower = 72*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2*var(9)
ground.slidetime = 12 + 2*var(9)
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=3)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-30
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 630, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 630
elem = 5
ignoreHitPause = 1

[State 630, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 630, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type=changestate
trigger1= pos y>-vel y
value=52


;---------------------------------------------------------------------------
; Jump Medium Kick
[Statedef 640]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 640, Anim]
type=changeanim
trigger1=!time
value=640

[State 640, Snd]
type=playsnd
trigger1= animelem=2 && random<350
value= 4, ifelse(random<500, 0, 1)
channel=0

[State 640, Snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 640, Hit]
type=hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*56<7, 7, fvar(11)*56)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 3*var(9)
ground.slidetime = 12 + 3*var(9)
guard.hittime = 15
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=4)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=54), var(36):=-75
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 640, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 640
elem = 5
ignoreHitPause = 1

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 640, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 640, End]
type=changestate
trigger1= pos y>-vel y
value=52

;---------------------------------------------------------------------------
; Jump Strong Kick
[Statedef 650]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 650, Anim]
type=changeanim
trigger1=!time
value=650

[State 650, Snd]
type=playsnd
trigger1= animelem=2
value=1,5
channel=1

[State 650, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= animelem=2
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*90<7, 7, fvar(11)*90)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 4*var(9)
ground.slidetime = 12 + 4*var(9)
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=64), var(36):=-55
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 650, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 650, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 650, End]
type=changestate
trigger1= pos y>-vel y
value=52

;===========<Throw Attempt>==========
[Statedef 800]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=18*!var(20)
facep2=1

[State 800, Anim]
type=changeanim
trigger1=!time
value=800

[State 800,Posset]
type=posset
trigger1=!time
y=0

[State 800, Button]
type=varset
trigger1= !time && !AILevel
var(10)= (command="kk")+2*(command="holddown")

[State 800, Button AI]
type=varset
trigger1= !time && AILevel
var(10)= (random<500)

[State 800, Tech Hit]
type = varset
trigger1 = 1
var(19) = 0

[State 800, Tech Hit]
type = varset
trigger1 = numenemy
trigger1 = enemynear, statetype != A
trigger1 = (enemynear, stateno = [0, 999]) && (enemynear, stateno != [100, 119]) && (enemynear, stateno != [200, 799])
var(19) = 7

[State 800, Guard Dist]
type=attackdist
trigger1= 1
value=0

[State 800, Hit]
type=hitdef
trigger1= animelem=2 && (var(10)=0 || var(10)=2)
trigger1 = P2BodyDist x < 55
trigger1= !var(38)
attr=S,NT
hitflag=M-
priority = 1, Miss
getpower=0,0
givepower=0,0
sparkno = -1 +0*(var(33):=0)
guard.sparkno = -1 +0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=40), var(36):=-50
hitsound = -1 +0*(var(31):=800)
guardsound = -1 +0*(var(32):=0)
fall=1
fall.recover=1
numhits=0
p1stateno=ifelse(command="holdback",805,ifelse(command="holddown",830,810))

[State 800, Hit]
type=hitdef
trigger1= animelem=2 && (var(10)=1 || var(10)=3)
trigger1= !var(38)
trigger1 = P2BodyDist x < 55
attr=S,NT
hitflag=M-
priority = 1, Miss
getpower=0,0
givepower=0,0
sparkno = -1 +0*(var(33):=0)
guard.sparkno = -1 +0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=40), var(36):=-50
hitsound = -1 +0*(var(31):=800)
guardsound = -1 +0*(var(32):=0)
fall=1
fall.recover=1
numhits=0
p1stateno=ifelse(command="holdback",ifelse(command="holddown",840,820),805)

[State 800, Hit]
type=hitdef
trigger1= animelem=2 && (var(10)=0 || var(10)=2)
trigger1 = P2BodyDist x < 55
trigger1= !var(38) && numtarget(3200)
attr=S,NT
hitflag=M
priority = 1, Miss
getpower=0,0
givepower=0,0
sparkno = -1 +0*(var(33):=0)
guard.sparkno = -1 +0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=40), var(36):=-50
hitsound = -1 +0*(var(31):=800)
guardsound = -1 +0*(var(32):=0)
fall=1
fall.recover=1
numhits=0
p1stateno=ifelse(command="holdback",805,ifelse(command="holddown",830,810))

[State 800, Hit]
type=hitdef
trigger1= animelem=2 && (var(10)=1 || var(10)=3)
trigger1= !var(38) && numtarget(3200)
trigger1 = P2BodyDist x < 55
attr=S,NT
hitflag=M
priority = 1, Miss
getpower=0,0
givepower=0,0
sparkno = -1 +0*(var(33):=0)
guard.sparkno = -1 +0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=40), var(36):=-50
hitsound = -1 +0*(var(31):=800)
guardsound = -1 +0*(var(32):=0)
fall=1
fall.recover=1
numhits=0
p1stateno=ifelse(command="holdback",ifelse(command="holddown",840,820),805)

[State 800, Snd]
type=playsnd
trigger1= animelem=4
value=800,0
channel=0

[State 800, Snd]
type=playsnd
trigger1= animelem=2
value=1,0
channel=1

[State 800, Type]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 800, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;---------------------------------------------------------------------------
; M.G.K.
[Statedef 810]
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = 0
anim = 810
ctrl = 0

[State 800,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 811
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AT, AP
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, Throw Escape]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 210, Snd]
type=playsnd
trigger1= animelem=2 && random<350
value= 5, 1
channel=0

[State 0, Width]
type = Width
trigger1 = time = 0 && NumTarget
edge = 80, 0
ignorehitpause = 1

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = ceil(90 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(45 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(15 * const(size.xscale)), 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(150 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(15 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = ceil(150 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(10) < 0
pos = ceil(40 * const(size.xscale)), 0

[State 0, TargetState]
type = TargetState
trigger1 = AnimElemTime(4) = 0 && NumTarget
trigger2 = AnimElemTime(6) = 0 && NumTarget
value = 812
ignorehitpause = 1

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 10
pos = ceil(130 * const(size.xscale)), 0

[State 0, YEET]
type = TargetState
trigger1 = animelem = 10 && NumTarget
value = 813
ignorehitpause = 1

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 4 || AnimElem = 6 || AnimElem = 10
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = ceil(120*const(size.xscale)), ceil(-60*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State WHAMMY]
type = Explod
trigger1 = NumTarget
trigger1 = AnimElem = 10
anim = 300
pos = ceil(120*const(size.xscale)), ceil(-60*const(size.yscale))
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.7,0.7
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 820, woosh]
type = playsnd
trigger1 = animelem = 4
trigger2 = animelem = 6
value = 1, 9+random%2
[State 820, woosh]
type = playsnd
trigger1 = animelem = 10
value = 1, 5

[State 820, hitsnd]
type = playsnd
trigger1 = animelem = 4
trigger2 = animelem = 6
value = 2, 43
[State 820, hitsnd]
type = playsnd
trigger1 = animelem = 10
value = 2, 12

[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 4
trigger2 = animelem = 6
value = -ceil(30 * fvar(11))
[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 10
value = -ceil(60 * fvar(11))
[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 10
time = 8
ampl = -7
freq = 235
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 4
trigger2 = animelem = 6
trigger3 = animelem = 10
value = 1

[State 820, Juggle]
type = varadd
trigger1 =numtarget && animelem = 10
var(15) = 1
[State 820, Damage]
type = varadd
trigger1 =numtarget && animelem = 10
var(13) = 3
[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1= animelem = 10
value = 36

[State 800, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1

; M.G.K. (Freeze)
[Statedef 811]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 820, On Ground]
type = PosSet
trigger1 = !Time
y = 0

[State 820, Screenbound]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time 
value = 811

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 3005, Safety]
type = SelfState
trigger1 = time = 60
value = 0

;OUCH!
[Statedef 812]
type = S
physics = N
movetype = H
ctrl = 0
velset = 0,0

[State 3008, NotHitBy Safety]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT

[State 3008, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0

[State 3008, PosSet]
type = posset
trigger1 = time = 0
y = 0

[State 3008, 2]
type = Velset
trigger1 = !gethitvar(isbound)
x = 0

[State 3008, ChangeAnim2]
type = ChangeAnim
trigger1 = time = 0
value = 5012

[State 3008, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5012 && !animtime
value = 5017

[State 3008, Safety]
type = SelfState
trigger1 = time = 150
value = 0

; M.G.K. (Fly away)
[StateDef 813]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -6, -6
sprPriority = 2

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 813

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 816, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5

[State 816, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 14
ampl = 4
freq = 120

[State 816, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 816, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;---------------------------------------------------------------------------
; Hambonin'
[Statedef 820]
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = 0
anim = 820
ctrl = 0

[State 800,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 811
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AT, AP
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, Throw Escape]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 0, Width]
type = Width
trigger1 = time = 0 && NumTarget
edge = 80, 0
ignorehitpause = 1

[State 210, Snd]
type=playsnd
trigger1= animelem=2 && random<350
value= 5, 0
channel=0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
pos = ceil(50 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(21) < 0
pos = ceil(80 * const(size.xscale)), 0

[State 0, TargetState]
type = TargetState
trigger1 = AnimElemTime(5) = 0 && NumTarget
trigger2 = AnimElemTime(8) = 0 && NumTarget
trigger3 = AnimElemTime(12) = 0 && NumTarget
value = 821
ignorehitpause = 1
[State 0, TargetState]
type = TargetState
trigger1 = AnimElemTime(16) = 0 && NumTarget
value = 812
ignorehitpause = 1

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 21
pos = ceil(130 * const(size.xscale)), 0

[State 0, YEET]
type = TargetState
trigger1 = animelem = 21 && NumTarget
value = 813
ignorehitpause = 1

[State 820, woosh]
type = playsnd
trigger1 = animelem = 4 || animelem = 8 || animelem = 12
value = 1, 9+random%2
channel = 1
[State 820, woosh]
type = playsnd
trigger1 = animelem = 16
value = 1, 4
channel = 1
[State 820, woosh]
type = playsnd
trigger1 = animelem = 21
value = 1, 5
channel = 1

[State 820, hitsnd]
type = playsnd
trigger1 = animelem = 5 || animelem = 8 || animelem = 12
value = 2, 10
[State 820, hitsnd]
type = playsnd
trigger1 = animelem = 16
value = 2, 13
[State 820, hitsnd]
type = playsnd
trigger1 = animelem = 21
value = 2, 12

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8011
ID = 8001
name = "Spark"
posType = P1
pos = ceil(90*const(size.xscale)), ceil(-100*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 8011
ID = 8001
name = "Spark"
posType = P1
pos = ceil(90*const(size.xscale)), ceil(-104*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8011
ID = 8001
name = "Spark"
posType = P1
pos = ceil(100*const(size.xscale)), ceil(-160*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 16
helperType = Normal
stateNo = 8011
ID = 8001
name = "Spark"
posType = P1
pos = ceil(70*const(size.xscale)), ceil(-75*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 21
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = ceil(120*const(size.xscale)), ceil(-60*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State WHAMMY]
type = Explod
trigger1 = NumTarget
trigger1 = AnimElem = 21
anim = 300
pos = ceil(120*const(size.xscale)), ceil(-60*const(size.yscale))
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.7,0.7
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 5
trigger2 = animelem = 8
trigger3 = animelem = 12
trigger4 = animelem = 16
value = -ceil(20 * fvar(11))
[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 21
value = -ceil(40 * fvar(11))
[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 5 || animelem = 21
time = 6
ampl = 6
freq = 120
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 5
trigger2 = animelem = 8
trigger3 = animelem = 12
trigger4 = animelem = 16
trigger5 = animelem = 21
value = 1

[State 820, Juggle]
type = varadd
trigger1 =numtarget && animelem = 21
var(15) = 1
[State 820, Damage]
type = varadd
trigger1 =numtarget && animelem = 21
var(13) = 5
[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1= animelem = 21
value = 36

[State 800, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;OUCH!
[Statedef 821]
type = S
physics = N
movetype = H
ctrl = 0
velset = 0,0

[State 3008, NotHitBy Safety]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT

[State 3008, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0

[State 3008, PosSet]
type = posset
trigger1 = time = 0
y = 0

[State 3008, 2]
type = Velset
trigger1 = !gethitvar(isbound)
x = 0

[State 3008, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5002

[State 3008, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5002 && !animtime
value = 5007

[State 3008, Safety]
type = SelfState
trigger1 = time = 150
value = 0

;---------------------------------------------------------------------------
; Blonde Brofist
[Statedef 830]
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = 0
anim = 830
ctrl = 0

[State 800,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 831
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AT, AP
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, Throw Escape]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 210, Snd]
type=playsnd
trigger1= animelem=2 && random<350
value= 5, 1
channel=0

[State 0, Width]
type = Width
trigger1 = time = 0 && NumTarget
edge = 90, 0
ignorehitpause = 1

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
pos = ceil(70 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(65 * const(size.xscale)), 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 5
pos = ceil(60 * const(size.xscale)), 0

[State 0, yeet?]
type = TargetState
trigger1 = animelem = 5 && NumTarget
value = 832
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 3.35

[State 210, Snd]
type=playsnd
trigger1= animelem=9
value=1,25

[State 0, YEET]
type = TargetState
trigger1 = animelem = 10 && NumTarget
value = 833
ignorehitpause = 1

[State 0, woosh]
type = Explod
trigger1 = AnimElem = 9
anim = 831
pos = ceil(-10*const(size.xscale)), ceil(15*const(size.yscale))
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.45,0.45
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8011
ID = 8001
name = "Spark"
posType = P1
pos = ceil(45*const(size.xscale)), ceil(-70*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = ceil(90*const(size.xscale)), ceil(-135*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State WHAMMY]
type = Explod
trigger1 = NumTarget
trigger1 = AnimElem = 10
anim = 300
pos = ceil(90*const(size.xscale)), ceil(-135*const(size.yscale))
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.7,0.7
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 820, woosh]
type = playsnd
trigger1 = animelem = 4
value = 1, 9+random%2
[State 820, woosh]
type = playsnd
trigger1 = animelem = 10
value = 1, 13

[State 820, hitsnd]
type = playsnd
trigger1 = animelem = 5
value = 2, 13
[State 820, hitsnd]
type = playsnd
trigger1 = animelem = 10
value = 2, 22

[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 5
trigger2 = animelem = 10
value = -ceil(60 * fvar(11))
[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 5
trigger2 = animelem = 10
time = 8
ampl = -7
freq = 235
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 5
trigger2 = animelem = 10
value = 1

[State 820, Juggle]
type = varadd
trigger1 =numtarget && animelem = 10
var(15) = 1
[State 820, Damage]
type = varadd
trigger1 =numtarget && animelem = 10
var(13) = 2
[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1= animelem = 10
value = 36

[State 800, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1

; Blonde Brofist/Boss Broom (Stuck)
[Statedef 831]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1
facep2 = 1

[State 820, On Ground]
type = PosSet
trigger1 = !Time
y = 0

[State 820, Screenbound]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time 
value = 832

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 3005, Safety]
type = SelfState
trigger1 = time = 60
value = 0

;OUCH!
[Statedef 832]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0,0

[State 3008, NotHitBy Safety]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT

[State 3008, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = -6.777

[State 3008, PosSet]
type = posset
trigger1 = !time
y = 0

[State 3008, ChangeAnim2]
type = ChangeAnim
trigger1 = time = 0
value = 5012

[State 3008, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5012 && !animtime
value = 5017

[State 3008, Safety]
type = SelfState
trigger1 = time = 150
value = 0

; Blonde Brofist (Fly away)
[StateDef 833]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -6, -6
sprPriority = 2

[State 830, PalFX]
type = PalFX
trigger1 = !time
time = 32
add = 0,0,0
mul = 192,100,100
sinadd = 128,128,128,4
invertall = 1
color = 256

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 813

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 816, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5

[State 816, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 14
ampl = 4
freq = 120

[State 816, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 816, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;---------------------------------------------------------------------------
; Boss Broom
[Statedef 840]
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = 0
anim = 840
ctrl = 0

[State 800,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 831
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AT, AP
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, Throw Escape]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 210, Snd]
type=playsnd
trigger1= animelem=2 && random<350
value= 5, 0
channel=0

[State 0, Width]
type = Width
trigger1 = time = 0 && NumTarget
edge = 90, 0
ignorehitpause = 1

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
pos = ceil(70 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(65 * const(size.xscale)), 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 5
pos = ceil(60 * const(size.xscale)), 0

[State 0, yeet?]
type = TargetState
trigger1 = animelem = 5 && NumTarget
value = 832
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 3.35

[State 0, YEET]
type = TargetState
trigger1 = animelem = 10 && NumTarget
value = 813
ignorehitpause = 1

[State 0, Benson]
type = Explod
trigger1 = AnimElem = 9
anim = 841
pos = 0, 0
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.5, 0.5
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8011
ID = 8001
name = "Spark"
posType = P1
pos = ceil(45*const(size.xscale)), ceil(-70*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = ceil(P2Dist X*const(size.xscale)), ceil(-135*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State WHAMMY]
type = Explod
trigger1 = NumTarget
trigger1 = AnimElem = 10
anim = 300
pos = ceil(P2Dist X*const(size.xscale)), ceil(-135*const(size.yscale))
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.7,0.7
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 820, woosh]
type = playsnd
trigger1 = animelem = 4
value = 1, 9+random%2
[State 820, woosh]
type = playsnd
trigger1 = animelem = 9
value = 41, 0
[State 820, AAAAAAAAAAAAAAAAAAAAAAAA]
type = playsnd
trigger1 = animelem = 9
value = 1, 12

[State 820, hitsnd]
type = playsnd
trigger1 = animelem = 5
value = 2, 13
[State 820, hitsnd]
type = playsnd
trigger1 = animelem = 10
value = 2, 25

[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 5
trigger2 = animelem = 10
value = -ceil(60 * fvar(11))
[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 5
trigger2 = animelem = 10
time = 8
ampl = -7
freq = 235
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 5
trigger2 = animelem = 10
value = 1

[State 820, Juggle]
type = varadd
trigger1 =numtarget && animelem = 10
var(15) = 1
[State 820, Damage]
type = varadd
trigger1 =numtarget && animelem = 10
var(13) = 2
[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1= animelem = 10
value = 36

[State 800, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;===========<Air Throw Attempt>==========
[Statedef 849]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 600, Anim]
type=changeanim
trigger1=!time
value=849

[State 800, Tech Hit]
type = varset
trigger1 = 1
var(19) = 0

[State 800, Tech Hit]
type = varset
trigger1 = numenemy
;trigger1 = enemynear, statetype != A
trigger1 = (enemynear, stateno = [0, 999]) && (enemynear, stateno != [100, 119]) && (enemynear, stateno != [200, 799])
var(19) = 7

[State 800, Guard Dist]
type=attackdist
trigger1= 1
value=0

[State 800, Hit]
type=hitdef
trigger1= animelem=2
trigger1 = P2BodyDist x < 55
trigger1= !var(38)
attr=S,NT
hitflag=A-
priority = 1, Miss
getpower=0,0
givepower=0,0
sparkno = -1 +0*(var(33):=0)
guard.sparkno = -1 +0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=40), var(36):=-50
hitsound = -1 +0*(var(31):=800)
guardsound = -1 +0*(var(32):=0)
fall=1
fall.recover=1
numhits=0
p1stateno=850

[State 800, Snd]
type=playsnd
trigger1= animelem=2
value=1,0
channel=1

[State 800, Type]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 600, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type=changestate
trigger1= pos y>-vel y
value=52

;---------------------------------------------------------------------------
; Green'd Slam
[Statedef 850]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 1
anim = 850
ctrl = 0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 851
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AT, AP
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 0, VelSet]
type = VelMul
trigger1 = time = 0
x = 0.15
y = ifelse(vel y>0,-0.15,0.15)

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 13
x = -3
y = -5.5
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 13
statetype = A
physics = A

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = ceil(30 * const(size.xscale)), ceil(-200 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(40 * const(size.xscale)), ceil(-200 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(50 * const(size.xscale)), ceil(-160 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
pos = ceil(60 * const(size.xscale)), ceil(-150 * const(size.yscale))

[State 210, Snd]
type=playsnd
trigger1= animelem=7
value=1,25

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(13) < 0
pos = ceil(40 * const(size.xscale)), ceil(-20 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 13
pos = ceil(50 * const(size.xscale)), ceil(-140 * const(size.yscale))

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8011
ID = 8001
name = "Spark"
posType = P1
pos = ceil(55*const(size.xscale)), ceil(-115*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 13
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = ceil(180*const(size.xscale)), ceil(-105*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State WHAMMY]
type = Explod
trigger1 = NumTarget
trigger1 = AnimElem = 13
anim = 300
pos = ceil(180*const(size.xscale)), ceil(-105*const(size.yscale))
postype = p1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 0.7,0.7
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, YEET]
type = TargetState
trigger1 = AnimElem = 13 && NumTarget
value = 852
ignorehitpause = 1

[State 820, woosh]
type = playsnd
trigger1 = animelem = 3
value = 1, 9+random%2
[State 820, woosh]
type = playsnd
trigger1 = animelem = 10
value = 1, 14

[State 820, hitsnd]
type = playsnd
trigger1 = animelem = 5
value = 2, 13
[State 820, hitsnd]
type = playsnd
trigger1 = animelem = 13
value = 2, 3000

[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 5
value = -ceil(32 * fvar(11))
[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 13
value = -ceil(100 * fvar(11))

[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 5
trigger2 = animelem = 13
time = 8
ampl = -7
freq = 235
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 5
trigger2 = animelem = 13
value = 1

[State 820, Juggle]
type = varadd
trigger1 =numtarget && animelem = 13
var(15) = 1
[State 820, Damage]
type = varadd
trigger1 =numtarget && animelem = 13
var(13) = 2
[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1= animelem = 13
value = 36

;Green'd Slam (HOLD)
[Statedef 851]
type    = A
movetype= H
physics = N
velset = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 851

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 2]
type = SelfState
trigger1 = !gethitvar(isbound);
value = 5050

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 852]
type    = A
movetype= H
physics = N
velset = -7.2,15
poweradd = 60

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 852

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 821, 1] ;Gravity
type = VelAdd
trigger1 = time > 8
y = .61

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;---PLAYER TURNS---
[Statedef 805]
type=S
movetype=A
physics=S
ctrl=0
sprpriority=0

[State 805, Anim]
type=changeanim
trigger1=!time
value=805

[State 805,Posset]
type=posset
trigger1=!time
y=0

[State 805, Throw]
type=targetstate
trigger1= !time && numtarget
value=806

[State 805, Throw]
type=targetfacing
trigger1= !time && numtarget
value=-1

[State 805, Width]
type=width
trigger1= 1
edge=24,24
ignoreHitPause = 1

[State 805, Turn]
type=turn
trigger1 = AnimElem = 4

[State 805, facing]
type=targetfacing
trigger1= 1
value=-1

[State 805, Escape]
type=changestate
trigger1= numtarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback") && Target, command != "holdup" && Target, command != "holddown"
trigger1= (target,command="b" || target,command="c" || target,command="y" || target,command="z")
value=890

[State 805, Escape]
type=varadd
trigger1= var(19)>0
var(19)=-1

[State 805, TargetBind 1]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 42,0

[State 805, TargetBind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger2 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 11,0

[State 805, TargetBind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 0,0

[State 805, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(5) >= 0
value = 1

[State 805, SprPriority 2]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
value = -1

[State 805, End]
type=changestate
trigger1= !numtarget
value=0
ctrl=1

[State 805, End]
type=changestate
trigger1= animelemtime(5)>=0
value=ifelse(var(10)=1,820, ifelse(var(10)=2, 830, ifelse(var(10)=3, 840, 810)))



;---TARGET---
[Statedef 806]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 806, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 806, NHB]
type=nothitby
trigger1= 1
value=SCA
time=1

[State 806, Anim]
type=changeanim2
trigger1= !time
value=806

[State 806, Camera]
type=screenbound
trigger1= 1
value=0
movecamera=1,1
ignoreHitPause = 1

[State 806, Safety]
type=selfstate
trigger1= time>=60
value= ifelse(pos y<0, 5040, 0)
ctrl=1

;butterfingers
[StateDef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 890, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 0,0

[State 890, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 895

[State 890, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 890, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 890, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 890, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0
value = 1

[State 890, SprPriority -1]
type = SprPriority
trigger1 = AnimElemTime(2) <= 0
value = -1

[State 890, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 890, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 890, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 800,2
channel = 0

[State 890, Escape Sound]
type = PlaySnd
trigger1= !Time
value = 130,0

[State 890, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
PosType = P1
pos = 0, -54
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 890, End]
type = ChangeState
trigger1 = Time >= 27
value = 0
ctrl = 1

;Target Escape
[StateDef 895]
type = S
physics = N
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time
value = ifElse(SelfAnimExist(5940), 5940, 130)

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && SelfAnimExist(5940)
value = 5940

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time && !SelfAnimExist(5945) && !SelfAnimExist(5940) && SelfAnimExist(5910)
value = 5910

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 20 && Anim = 130
value = 140

[State 895, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 895, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 895, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 895, End]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1


