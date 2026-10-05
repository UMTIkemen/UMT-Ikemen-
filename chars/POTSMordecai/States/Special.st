; _________________________________________
;| Character by JStudios2k                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
;Zankou
[Statedef 1000]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1010, 1020))

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 5000,0
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,15
channel = 1

[State 1410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4
x = 5

[State 1410, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = ifElse(var(10) = 0, 2, ifElse(var(10) = 1, 4, 5))

[State 1200, Hit]
type=hitdef
trigger1= !var(16) && (var(15) < 4 || var(20)) && !numtarget(1020)
trigger1= AnimElem = 3 && var(10)=2
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1, 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.61, -6.89)
guard.cornerpush.veloff = 0
air.velocity = -1, -2
air.cornerPush.velOff = 0
yaccel = .45
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=1002)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-50
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120
[State 1200, Hit]
type=hitdef
trigger1= !var(16) && (var(15) < 4+HitCount || var(20)) && (!numtarget(1001) || numtarget(1000))
trigger1= AnimElem = 4
ID = 1000 + (var(10)>0)
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18 - var(10)*3
air.hittime = 120
ground.velocity = ifelse(var(20), -3.61, -3.89), -4 - 4*(var(10)=2)
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.61, -6.89)
guard.cornerpush.veloff = 0
air.velocity = -3 + 2*(var(10)=2), -4 - 4.6777*(var(10)=2)
air.cornerPush.velOff = 0
yaccel = .45
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=1002)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-62
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 1000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Zankou
[Statedef 1050]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1010

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -31, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1000, Resist Projectiles]
type = NotHitBy
trigger1 = AnimElemTime (6) < 0
time = 1
value = SCA,NP,SP

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 5000,0
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,15
channel = 1

[State 1410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4
x = 5

[State 1410, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 10

[State 1200, Hit 1]
type=hitdef
trigger1= !var(16) && (var(15) < 1 || var(20)) && !numtarget(1020)
trigger1= AnimElem = 2
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifElse(fvar(11) * 31 < 7, 7, fvar(11) * 31)), 7
getpower = 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1, -2
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.61, -6.89)
guard.cornerpush.veloff = 0
air.velocity = -1, -2
air.cornerPush.velOff = 0
yaccel = .45
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=1001)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-50
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.ampl = 6
envShake.freq = 120

[State 1200, Hit 2]
type=hitdef
trigger1= !var(16) && (var(15) < 1+HitCount || var(20)) && !numtarget(1020)
trigger1= AnimElem = 4
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifElse(fvar(11) * 45 < 7, 7, fvar(11) * 45)), 7
getpower = 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1, -2
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.61, -6.89)
guard.cornerpush.veloff = 0
air.velocity = -1, -2
air.cornerPush.velOff = 0
yaccel = .45
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=1001)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-55
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.ampl = 6
envShake.freq = 120

[State 1200, Hit 2]
type=hitdef
trigger1= !var(16) && (var(15) < 1+HitCount || var(20)) && !numtarget(1020)
trigger1= AnimElem = 5
ID = 1020
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifElse(fvar(11) * 69 < 7, 7, fvar(11) * 69)), 7
getpower = 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1, -12
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.61, -6.89)
guard.cornerpush.veloff = 0
air.velocity = -1, -12
air.cornerPush.velOff = 0
yaccel = .45
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=3000)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-55
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.ampl = 6
envShake.freq = 120

[State 1000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Tumbler
[Statedef 1100]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[state 1100,Posset]
type=posset
trigger1=!time
y=0

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2BodyDist x = [0, 16]), 2, ifElse((P2BodyDist x = [17, 33]), 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1100

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 190, 2
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,9+random%2
channel = 1
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 40,0

[State 1100, HitDef]
type = HitDef
triggerall = P2bodydist X = [-const(size.ground.front),ifelse(var(10)=0,45,ifelse(var(10)=1,33,16))]
triggerall = p2movetype != H && P2StateNo != [150,155]
trigger1 = AnimElem = 1
attr = S, ST
hitflag = M-
ID = 1100
priority = 3, Dodge
pausetime = 0, 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 1101
guard.dist = 0
numhits = 0
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 1100, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;I'M NOT GONNA SUGARCOAT IT: 360+P
[Statedef 1101]
type = S
physics = S
movetype = I
anim = 1101
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 1105
ID = 1100
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1000, BOOM]
type = PlaySnd
trigger1 = animelem = 2
value = 1, 999
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 800

[State 1000, Woosh]
type = Explod
trigger1 = animelem = 3
anim = 1106
ID = 1106
pos = 0,ceil(-150*const(size.yscale))
postype = p1 
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.5,0.5
sprpriority = 1
ontop = 1
ownpal = 1

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
pos = ceil(40 * const(size.xscale)), 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(7) >= 0 && AnimElemTime(9) < 0
pos = ceil(60 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0
trigger2 = AnimElemTime(9) >= 0 && AnimElemTime(11) < 0
pos = ceil(-60 * const(size.xscale)), 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger3 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
pos = ceil(30 * const(size.xscale)), ceil(-145 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger3 = AnimElemTime(20) >= 0 && AnimElemTime(21) < 0
pos = ceil(30 * const(size.xscale)), ceil(-140 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
trigger2 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
trigger3 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
pos = ceil(-30 * const(size.xscale)), ceil(-145 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger2 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
trigger3 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
pos = ceil(-30 * const(size.xscale)), ceil(-140 * const(size.yscale))

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 23
pos = ceil(45 * const(size.xscale)), ceil(-40 * const(size.yscale))

[State 0, YEET]
type = TargetState
trigger1 = animelem = 23 && NumTarget
value = 1106
ID = 1100
ignorehitpause = 1

[State 1000, woosh]
type = PlaySnd
trigger1 = animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11
trigger2 = animelem = 13 || animelem = 15 || animelem = 17 || animelem = 19
trigger3 = animelem = 21
value = 1, 5
channel = 1
[State 1000, woosh]
type = PlaySnd
trigger1 = animelem = 23
value = 1, 15

[State 8330, Dust]
type = explod
trigger1 = animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11
trigger2 = animelem = 13 || animelem = 15 || animelem = 17 || animelem = 19
trigger3 = animelem = 21
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 23
value = -ceil(185) * fvar(11)
[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 23
time = 8
ampl = -7
freq = 235
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 1
value = 1

[State 820, Juggle]
type = varadd
trigger1 =numtarget && animelem = 23
var(15) = 1
[State 820, Damage]
type = varadd
trigger1 =numtarget && animelem = 23
var(13) = 1
[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1= animelem = 23
value = 72

[State 1100, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

; Tumbler (HOLD)
[Statedef 1105]
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
value = 1105

[State 902, 1]
type = AngleSet
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(30) < 0
value = 90

[State 902, 2]
type = AngleDraw
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(30) < 0

[State 902, Turn]
type = turn
trigger1 = animelem=20
trigger2 = animelem=22
trigger3 = animelem=24
trigger4 = animelem=26
trigger5 = animelem=28
;trigger6 = animelem=30

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 3005, Safety]
type = SelfState
trigger1 = time = 165 ;!gethitvar(isbound)
value = 5050

; YEEOOOOUCH!
[StateDef 1106]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 10, -6.5
sprPriority = 2

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

[State 816, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;---------------------------------------------------------------------------
;EX Tumbler
[Statedef 1150]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1100

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -31, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 190, 2
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,9+random%2
channel = 1
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 40,0

[State 1100, HitDef]
type = HitDef
triggerall = P2bodydist X = [-const(size.ground.front),45]
triggerall = p2movetype != H && P2StateNo != [150,155]
trigger1 = AnimElem = 1
attr = S, ST
hitflag = M-
ID = 1100
priority = 3, Dodge
pausetime = 0, 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 1151
guard.dist = 0
numhits = 0
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 1100, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;I'M NOT GONNA SUGARCOAT IT: 360+PP
[Statedef 1151]
type = S
physics = S
movetype = I
anim = 1151
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 1155
ID = 1100
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1000, BOOM]
type = PlaySnd
trigger1 = animelem = 2
value = 1, 1000
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 800

[State 1000, YEAAAAAAA]
type = PlaySnd
trigger1 = animelem = 1
value = 5, 2
channel = 0
[State 1000, OOOOOOOOOOOOOOOOOOOOO]
type = PlaySnd
trigger1 = time = 35
value = 5, 3
channel = 0

[State 1000, Woosh]
type = Explod
trigger1 = animelem = 3
anim = 1156
ID = 1106
pos = 0,ceil(-150*const(size.yscale))
postype = p1 
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.5,0.5
sprpriority = 1
ontop = 1
ownpal = 1

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
pos = ceil(40 * const(size.xscale)), 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(7) >= 0 && AnimElemTime(9) < 0
pos = ceil(60 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0
trigger2 = AnimElemTime(9) >= 0 && AnimElemTime(11) < 0
pos = ceil(-60 * const(size.xscale)), 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger3 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
trigger4 = AnimElemTime(23) >= 0 && AnimElemTime(24) < 0
trigger5 = AnimElemTime(27) >= 0 && AnimElemTime(28) < 0
trigger6 = AnimElemTime(31) >= 0 && AnimElemTime(32) < 0
trigger7 = AnimElemTime(35) >= 0 && AnimElemTime(36) < 0
pos = ceil(30 * const(size.xscale)), ceil(-145 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger3 = AnimElemTime(20) >= 0 && AnimElemTime(21) < 0
trigger4 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
trigger5 = AnimElemTime(28) >= 0 && AnimElemTime(29) < 0
trigger6 = AnimElemTime(32) >= 0 && AnimElemTime(33) < 0
trigger7 = AnimElemTime(36) >= 0 && AnimElemTime(37) < 0
pos = ceil(30 * const(size.xscale)), ceil(-140 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
trigger2 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
trigger3 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
trigger4 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
trigger5 = AnimElemTime(29) >= 0 && AnimElemTime(30) < 0
trigger6 = AnimElemTime(33) >= 0 && AnimElemTime(34) < 0
trigger7 = AnimElemTime(37) >= 0 && AnimElemTime(38) < 0
pos = ceil(-30 * const(size.xscale)), ceil(-145 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger2 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
trigger3 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
trigger4 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
trigger5 = AnimElemTime(30) >= 0 && AnimElemTime(31) < 0
trigger6 = AnimElemTime(34) >= 0 && AnimElemTime(35) < 0
trigger7 = AnimElemTime(38) >= 0 && AnimElemTime(39) < 0
pos = ceil(-30 * const(size.xscale)), ceil(-140 * const(size.yscale))

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 39
pos = ceil(45 * const(size.xscale)), ceil(-40 * const(size.yscale))

[State 0, YEET]
type = TargetState
trigger1 = animelem = 39 && NumTarget
value = 1106
ID = 1100
ignorehitpause = 1

[State 1000, woosh]
type = PlaySnd
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16
trigger2 = animelem = 20 || animelem = 24 || animelem = 28 || animelem = 32
trigger3 = animelem = 36
value = 1, 5
channel = 1
[State 1000, woosh]
type = PlaySnd
trigger1 = animelem = 39
value = 1, 15

[State 0, StopSnd]
type = StopSnd
trigger1 = animelem = 39
channel = 0

[State 8330, Dust]
type = explod
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16
trigger2 = animelem = 20 || animelem = 24 || animelem = 28 || animelem = 32
trigger3 = animelem = 36
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 39
value = -ceil(215 * fvar(11))
[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 39
time = 8
ampl = -7
freq = 235
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 1
value = 1

[State 820, Juggle]
type = varadd
trigger1 =numtarget && animelem = 39
var(15) = 1
[State 820, Damage]
type = varadd
trigger1 =numtarget && animelem = 39
var(13) = 1
[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1= animelem = 39
value = 72

[State 1100, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

; EX Tumbler (HOLD)
[Statedef 1155]
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
value = 1155

[State 902, 1]
type = AngleSet
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(46) < 0
value = 90

[State 902, 2]
type = AngleDraw
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(46) < 0

[State 902, Turn]
type = turn
trigger1 = animelem=20
trigger2 = animelem=22
trigger3 = animelem=24
trigger4 = animelem=26
trigger5 = animelem=28
trigger6 = animelem=30
trigger7 = animelem=32
trigger8 = animelem=34
trigger9 = animelem=36
trigger10 = animelem=38
trigger11 = animelem=40
trigger12 = animelem=42
trigger13 = animelem=44
;trigger14 = animelem=46

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 3005, Safety]
type = SelfState
trigger1 = time = 180
value = 5050

;---------------------------------------------------------------------------
;Touchdown
[Statedef 1200]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1210, 1220))

[State 1000, SIUUUUU!]
type = PlaySnd
trigger1 = animelemtime(3) = -2
value = 5,2
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1,10
channel = 1

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 5 + 2*(var(10)=2)

[State 100, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 6 || AnimElem = 9)
value = 100, ifElse((AnimElem = 9), 0, 1)

[State 0, HitDef]
type = HitDef
trigger1 = P2StateNo != [150,155]
trigger1 = P2bodydist X = [-const(size.ground.front),18]
trigger1 = AnimElem = 1
attr = S, ST
hitflag = M-
priority = 3, Dodge
pausetime = 0, 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 1205
guard.dist = 0
numhits = 0
ID = 1200

[State 0, HitDef]
type = HitDef
trigger1 = P2StateNo != [150,155]
trigger1 = P2bodydist X = [-const(size.ground.front),28]
trigger1 = movetype = A
trigger1 = AnimElemTime(5) >= 3
attr = S, ST
hitflag = M-
priority = 3, Dodge
pausetime = 0, 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 1210
guard.dist = 0
numhits = 0
ID = 1200

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(5) != [0, ifElse(var(10)=0, 12, ifElse(var(10)=1, 15, 16))]
trigger1 = AnimElemTime(5) >= 0
value = 1201
ctrl = 0

;I ran too far
[Statedef 1201]
type=S
physics=S
movetype=I
ctrl=0
velset=4.5,0
sprpriority=1

[State 210, Anim]
type=changeanim
trigger1=!time
value=1201

[State 101, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = 3
postype = p1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 101, Snd]
type = playsnd
trigger1 = !time
value = 101,0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5000,0+random%2
channel = 0

[State 200, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; Lineman Toss - SECRET THROW!!!11!1ONE!
[Statedef 1205]
type = S
physics = S
movetype = I
anim = 1205
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 1206
ID = 1200
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1200, StopSnd?]
type = PlaySnd
trigger1 = !Time
value = 1,18
channel = 0
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 2, 800

[State 1000, WOOSH]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 10
[State 1000, YEAT]
type = PlaySnd
trigger1 = animelem = 3
value = 1, 22

[State 1000, OOOHHHHHHHHHHHHHH!]
type = PlaySnd
trigger1 = animelem = 7
value = 5, 3
channel = 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = ceil(55 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(50 * const(size.xscale)), 0
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(10 * const(size.xscale)), ceil(-110 * const(size.yscale))

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 4
pos = ceil(12 * const(size.xscale)), ceil(-255 * const(size.yscale))

[State 0, YEET]
type = TargetState
trigger1 = AnimElem = 4 && NumTarget
value = 1207+(var(10)=3)
ID = 1200
ignorehitpause = 1

[State 820, Juggle]
type = varadd
trigger1 =numtarget && animelem = 4
var(15) = 1
[State 820, Damage]
type = varadd
trigger1 =numtarget && animelem = 4
var(13) = 1
[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1= animelem = 4
value = 60

[State 0, StopSnd]
type = StopSnd
trigger1 = animelem = 24
channel = 0

[State 200, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; Lineman Toss (HOLD)
[Statedef 1206]
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
value = 1206

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 3005, Safety]
type = SelfState
trigger1 = time = 99 ;!gethitvar(isbound)
value = 5050

;Lineman Toss (YEET)
[StateDef 1207]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -1, -18
sprPriority = 2

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 816, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.53

[State 816, Fall Damage]
type = LifeAdd
trigger1 = vel y > 0 && pos y >= 0
value = -125

[State 816, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 16
ampl = -12
freq = 255

[State 816, End]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 0
value = 1209

;Lineman Toss (EX YEET)
[StateDef 1208]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -1, -18
sprPriority = 2

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 816, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.53

[State 816, Fall Damage]
type = LifeAdd
trigger1 = vel y > 0 && pos y >= 0
value = -150

[State 816, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 16
ampl = -12
freq = 255

[State 816, End]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 0
value = 1209

; Custom Downed get-hit (hit ground from fall)
[Statedef 1209]
type    = L
movetype= H
physics = N

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
type = SelfState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;Downed get-hit (lying down)

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
type = SelfState
trigger1 = AnimTime = 0
value = 5101 ;Downed get-hit (bounce off ground)

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20


;I'M NOT GONNA SUGARCOAT IT: HCF+K
[Statedef 1210]
type = S
physics = S
movetype = I
anim = 1215
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 1216
ID = 1200
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1200, StopSnd?]
type = PlaySnd
trigger1 = !Time
value = 1,18
channel = 0
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 800
[State 1000, kracc]
type = PlaySnd
trigger1 = animelem = 3
value = 1, 21

[State 1200, ???]
type = PlaySnd
trigger1 = !Time
value = 5,4
channel = 2
[State 1200, DAMN]
type = PlaySnd
trigger1 = animelemtime(4) = -4
value = 1,8
channel = 2

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
pos = ceil(40 * const(size.xscale)), 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
pos = ceil(30 * const(size.xscale)), 0

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 6
pos = ceil(40 * const(size.xscale)), ceil(-10 * const(size.yscale))

[State 0, Flash]
type = AllPalFX
trigger1 = numtarget
trigger1 = AnimElem = 6
time = 2
sinadd = random%256,random%256,random%256,10
add = random%256,random%256,random%256
mul = random%256,random%256,random%256
invertall = random%2
color = random%256
ignorehitpause = 1

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8013
ID = 8001
name = "Spark"
posType = P1
pos = ceil(95*const(size.xscale)), ceil(-105*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State WHAMMY]
type = Explod
trigger1 = NumTarget
trigger1 = AnimElem = 6
anim = 300
pos = ceil(95*const(size.xscale)), ceil(-105*const(size.yscale))
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
trigger1 = animelem = 6
value = -ceil(ifElse(var(10)=0, 50, ifElse(var(10)=1, 50, ifElse(var(10)=2, 50, 80))) * fvar(11))
[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 6
time = 8
ampl = -7
freq = 235
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 6
value = 1

[State 820, Juggle]
type = varadd
trigger1 =numtarget && animelem = 6
var(15) = 2 - (var(10)=3)
[State 820, Damage]
type = varadd
trigger1 =numtarget && animelem = 6
var(13) = 1
[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1= animelem = 6
value = 40

[State 0, YEET]
type = TargetState
trigger1 = animelem = 6 && NumTarget
value = 1217
ID = 1200
ignorehitpause = 1

[State 200, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; Touchdown (HOLD, run mode)
[Statedef 1216]
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
value = 1216

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 3005, Safety]
type = SelfState
trigger1 = time = 100 ;!gethitvar(isbound)
value = 5050

; Touchdown (Fly away, run mode)
[StateDef 1217]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -9, -10
sprPriority = 2

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 816, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.45

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

;---------------------------------------------------------------------------
;EX Touchdown
[Statedef 1250]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1250

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -31, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1210, Reversal]
type=ReversalDef
trigger1= animelemTime(2) >= 0 && animelemTime(5) < 0
reversal.attr= SCA, NA, SA
pauseTime=4,6
sparkNo=-1 + 0 * (var(33) := Ifelse(prevstateno=1250,0,8001))
sparkXY=-10 + 0 * (var(35) := 30), (var(36) := -60)
hitSound=S3,0
numHits=0
p1stateno=1251
ignorehitpause=1

[State 1000, SIUUUUU!]
type = PlaySnd
trigger1 = animelemtime(3) = -2
value = 5,2
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1,10
channel = 1

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 7.5

[State 100, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 6 || AnimElem = 9 || AnimElem = 12)
value = 100, ifElse((AnimElem = 9), 0, 1)

[State 0, HitDef]
type = HitDef
trigger1 = P2StateNo != [150,155]
trigger1 = P2bodydist X = [-const(size.ground.front),25]
trigger1 = AnimElem = 1
attr = S, ST
hitflag = M-
priority = 3, Dodge
pausetime = 0, 0
sparkno =-1 + 0 * (var(33) := -1)
p1facing = 1
p2facing = 1
p1stateno = 1205
guard.dist = 0
numhits = 0
ID = 1200

[State 0, HitDef]
type = HitDef
trigger1 = P2StateNo != [150,155]
trigger1 = P2bodydist X = [-const(size.ground.front),30]
trigger1 = movetype = A
trigger1 = AnimElemTime(5) >= 3
attr = S, ST
hitflag = M-
priority = 3, Dodge
pausetime = 0, 0
sparkno =-1 + 0 * (var(33) := -1)
p1facing = 1
p2facing = 1
p1stateno = 1210
guard.dist = 0
numhits = 0
ID = 1200

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime || FrontEdgeBodyDist < 10
value = 1201
ctrl = 0

; NEVER BACK DOWN NEVER WHAT?!
[Statedef 1251]
type=S
physics=N
movetype=A
ctrl=0
sprpriority=1
facep2=1

[State 250, Chip damage]
type=lifeadd
trigger1=!time
value=-15

[State 1210, Reversal]
type=ReversalDef
trigger1= animelemTime(2) >= 0 && animelemTime(5) < 0
reversal.attr= SCA, NA, SA
pauseTime=4,6
sparkNo=-1 + 0 * (var(33) := Ifelse(prevstateno=1251,0,8001))
sparkXY=-10 + 0 * (var(35) := 30), (var(36) := -60)
hitSound=S3,0
numHits=0
p1stateno=1251
ignorehitpause=1

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 7.5

[State 100, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 6 || AnimElem = 9 || AnimElem = 12)
value = 100, ifElse((AnimElem = 9), 0, 1)

[State 0, HitDef]
type = HitDef
trigger1 = P2StateNo != [150,155]
trigger1 = P2bodydist X = [-const(size.ground.front),30]
trigger1 = movetype = A
trigger1 = AnimElemTime(5) >= 3
attr = S, ST
hitflag = M-
priority = 3, Dodge
pausetime = 0, 0
sparkno = -1 + 0 * (var(33) := -1)
p1facing = 1
p2facing = 1
p1stateno = 1210
guard.dist = 0
numhits = 0
ID = 1200

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime || FrontEdgeBodyDist < 10
value = 1201
ctrl = 0

;---------------------------------------------------------------------------
;Air Tumbler
[Statedef 1300]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1300

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 190, 2
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,9+random%2
channel = 1
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 40,0

[State 1100, HitDef]
type = HitDef
triggerall = P2bodydist X = [-const(size.ground.front),33]
;triggerall = p2movetype != H && P2StateNo != [150,155]
trigger1 = AnimElem = 1
attr = S, ST
hitflag = AF
ID = 1300
priority = 3, Dodge
pausetime = 0, 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 1305
guard.dist = 0
numhits = 0

[State 1100, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
moveType = I

[State 0, VelAdd]
type = VelSet
trigger1 = AnimElemTime(2) >= 0
y = .5

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 1301
ctrl = 0

[State 1000, TOO CLOSE TO GROUND]
type=ChangeState
trigger1= pos y>-vel y
value=5100

;I MISSED?!
[Statedef 1301]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1301

[State 620, Gravity]
type = Gravity
trigger1 = 1

[State 816, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 14
ampl = 4
freq = 120

[State 1000, XP]
type=ChangeState
trigger1= pos y>-vel y
value=5100

;I'M NOT GONNA SUGARCOAT IT: 360+P
[Statedef 1305]
type = A
physics = N
movetype = I
anim = 1305
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1000, Freeze Pos]
type=PosFreeze
trigger1=!time
value = 1

[State 0, TargetState]
type = TargetState
trigger1 = time = 0 && NumTarget
value = 1306
ID = 1300
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1
[State 801, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 2, 800

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8013
ID = 8001
name = "Spark"
posType = P1
pos = ceil(55*const(size.xscale)), ceil(-155*const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 1000, BOOM]
type = PlaySnd
triggerall = numtarget 
trigger1 = animelem = 3
value = 1, 999 + (var(10)=3)
[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 3
time = 8
ampl = -7
freq = 235
[State 820, Damage]
type = targetlifeadd
triggerall = numtarget 
trigger1 = animelem = 3
value = -ceil(40 * fvar(11))

[State 1000, Woosh]
type = Explod
trigger1 = animelem = 8
anim = 1307
ID = 1307
pos = 0,ceil(-150*const(size.yscale))
postype = p1 
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.5,0.5
sprpriority = 1
ontop = 1
ownpal = 1

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
pos = ceil(30 * const(size.xscale)), ceil(-165 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
pos = ceil(50 * const(size.xscale)), ceil(-165 * const(size.yscale))

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(8) < 0
trigger2 = AnimElemTime(10) >= 0 && AnimElemTime(12) < 0
pos = ceil(25 * const(size.xscale)), ceil(-0 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(10) < 0
pos = ceil(-25 * const(size.xscale)), ceil(-0 * const(size.yscale))

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
pos = ceil(-30 * const(size.xscale)), ceil(-175 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
trigger2 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
pos = ceil(-30 * const(size.xscale)), ceil(-170 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
pos = ceil(30 * const(size.xscale)), ceil(-175 * const(size.yscale))
[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
pos = ceil(30 * const(size.xscale)), ceil(-170 * const(size.yscale))

[State 820, Bind Target]
type = targetbind
triggerall = numtarget 
trigger1 = AnimElem = 18
pos = ceil(30 * const(size.xscale)), ceil(-200 * const(size.yscale))

[State 0, YEET]
type = TargetState
trigger1 = animelem = 18 && NumTarget
value = 1307
ID = 1300
ignorehitpause = 1

[State 1000, woosh]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14
trigger3 = animelem = 16
value = 1, 5
channel = 1
[State 1000, woosh]
type = PlaySnd
trigger1 = animelem = 18
value = 1, 15

[State 8330, Dust]
type = explod
trigger1 = animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11
trigger2 = animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14
trigger3 = animelem = 16
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 820, Damage]
type = targetlifeadd
triggerall = numtarget && var(10)!=3
trigger1 = animelem = 18
value = -ceil(ifElse(var(13)=0, 145, 84) * fvar(11))
[State 820, Damage]
type = targetlifeadd
triggerall = numtarget && var(10)=3
trigger1 = animelem = 18
value = -ceil(ifElse(var(13)=0, 175, 154) * fvar(11))
[State 816, EnvShake]
type = EnvShake
triggerall = numtarget 
trigger1 = animelem = 18
time = 8
ampl = -7
freq = 235
[State 820, HitAdd]
type = HitAdd
triggerall = numtarget 
trigger1 = animelem = 3
value = 1

[State 820, Juggle]
type = varadd
trigger1 =numtarget && animelem = 18
var(15) = 2
[State 820, Damage]
type = varadd
trigger1 =numtarget && animelem = 18
var(13) = 2
[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1= animelem = 18
value = 72

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 20
x = -3
y = -5.5
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 20
statetype = A
physics = A

;Air Tumbler (HOLD)
[Statedef 1306]
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
value = 1306

[State 902, 1]
type = AngleSet
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(17) < 0
value = 90

[State 902, 2]
type = AngleDraw
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(17) < 0

[State 902, Turn]
type = turn
trigger1 = animelem=11
trigger2 = animelem=13
trigger3 = animelem=15
;trigger4 = animelem=17

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 2]
type = SelfState
trigger1 = time = 165 ;!gethitvar(isbound)
value = 5050

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 1307]
type    = A
movetype= H
physics = N
velset = 7.2,15
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
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1209 ;Hit ground

;---------------------------------------------------------------------------
;EX Air Tumbler
[Statedef 1350]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1300

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -31, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 190, 2
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,9+random%2
channel = 1
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 40,0

[State 1100, HitDef]
type = HitDef
triggerall = P2bodydist X = [-const(size.ground.front),40]
;triggerall = p2movetype != H && P2StateNo != [150,155]
trigger1 = AnimElem = 1
attr = S, ST
hitflag = AF
ID = 1300
priority = 3, Dodge
pausetime = 0, 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 1305
guard.dist = 0
numhits = 0

[State 1100, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
moveType = I

[State 0, VelAdd]
type = VelSet
trigger1 = AnimElemTime(2) >= 0
y = .5

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 1301
ctrl = 0

[State 1000, TOO CLOSE TO GROUND]
type=ChangeState
trigger1= pos y>-vel y
value=5100

;---------------------------------------------------------------------------
;Multi-Tool
[Statedef 1400]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(((P2MoveType = H && (P2BodyDist x = [0, 39]) && var(15)<6) || Random < 500), 1, ifElse(P2BodyDist x >= 43, 2, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1400, ifElse(var(10) = 1, 1410, 1420))

[State 210, Snd]
type=playsnd
trigger1= animelem=1
value=1,25

;LIGHT
[State 210, Snd]
type=playsnd
trigger1= animelem=2 && var(10)=0
value=1,13
[State 210, Snd]
type=playsnd
trigger1= animelem=2 && var(10)=0
value=1,24
channel=1

[State 450, Helper]
type = Helper
trigger1 =animelem=2 && var(10)=0
helpertype = normal ;player
name ="woosh"
ID = 1404
stateno = 1404
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
postype = p1
ownpal = 1
persistent=0
[State 1000, Hitbox]
type = helper
trigger1 = animelemtime(3) = 0 && var(10)=0
helpertype = normal
stateno = 1405
ID = 1405
name = "Hitbox"
postype = p1
pos = 0, 0
ownpal = 1

[State 1000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0 && var(10)=0
moveType = I

;MEDIUM
[State 210, Snd]
type=playsnd
trigger1= animelemtime(3)=-2 && var(10)=1
trigger2= animelemtime(6)=-2 && var(10)=1
trigger3= animelemtime(9)=-2 && var(10)=1
value=1,13
channel = 1
[State 210, Snd]
type=playsnd
trigger1= animelem=3 && var(10)=1
trigger2= animelem=6 && var(10)=1
trigger3= animelem=9 && var(10)=1
value=1,9+random%2

[State 0, woosh]
type = Explod
trigger1= animelemtime(3)=-2 && var(10)=1
anim = 1414
pos = ceil(-15*const(size.xscale)), ceil(15*const(size.yscale))
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
[State 0, woosh]
type = Explod
trigger1= animelemtime(6)=-2 && var(10)=1
anim = 1414
pos = ceil(-15*const(size.xscale)), ceil(15*const(size.yscale))
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

[State 0, woosh]
type = Explod
trigger1= animelemtime(9)=-2 && var(10)=1
anim = 1415
pos = ceil(-15*const(size.xscale)), ceil(15*const(size.yscale))
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

[State 1001, 1]
type = HitDef
triggerall = !var(16) && (var(15) < 6 || var(20)) && var(10)=1
trigger1 = animelem = 3
trigger2 = animelem = 6
attr = S, SA
damage = ceil(ifelse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 4
getpower =14 * !var(20), 12 * !var(20)
givepower = 12, 12
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 16
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60), var(36) := -67
hitsound = -1 + 0 * (var(31) := 10)
guardsound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = 0,-1
air.hittime = 12
palFX.time = 10
palFX.mul = 192,100,100
palFX.sinAdd = 96, 96, 96, 4
palFX.invertall = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 90

[State 1001, 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 6+HitCount || var(20)) && var(10)=1
trigger1 = animelem = 9
ID = 1410
attr = S, SA
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getpower =14 * !var(20), 12 * !var(20)
givepower = 12, 12
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 16
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60), var(36) := -67
hitsound = -1 + 0 * (var(31) := 11)
guardsound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -5,-3
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = -5,-3
air.hittime = 12
fall = 1
palFX.time = 30
palFX.mul = 192,100,100
palFX.sinAdd = 96, 96, 96, 4
palFX.invertall = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 90

[State WHAMMY]
type = Explod
trigger1 = movehit = 1 && numtarget(1410)
anim = 300
pos = var(35), ceil(-135 * const(size.yscale))
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

[State 1000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0 && var(10)=1
moveType = I

;HEAVY - TIME TO GUESS!
[State 210, Snd]
type=playsnd
trigger1= animelem=2 && var(10)=2
value=1,13
[State 210, Snd]
type=playsnd
trigger1= animelem=2 && var(10)=2
value=1,24
channel=1

[State 450, Helper]
type = Helper
trigger1 =animelem=1 && var(10)=2
helpertype = normal ;player
name ="woosh"
ID = 1424
stateno = 1424
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
postype = p1
ownpal = 1
persistent=0
[State 450, Helper]
type = Helper
trigger1 =animelem=3 && var(10)=2
helpertype = normal ;player
name ="shot"
ID = 1425
stateno = 1425
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
postype = p1
ownpal = 1
persistent=0

[State 1200, Hit]
type=hitdef
trigger1= !var(16) && (var(15) < 1 || var(20))
trigger1= !Time && var(10)=2
ID = 1420
attr = S,SP
hitflag = MAF
guardflag = M
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 28
ground.slidetime = 28
guard.hittime = 25
air.hittime = 120
ground.velocity = 10.5, 0
ground.cornerpush.veloff = 0
guard.velocity = 10.5
guard.cornerpush.veloff = 0
air.velocity = 3, -5
air.cornerPush.velOff = 0
yaccel = .45
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=6)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=200), var(36):=-67
palFX.time = 30
palFX.mul = 192,100,100
palFX.sinAdd = 96, 96, 96, 4
palFX.invertall = 1
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 450, Helper]
type = Helper
trigger1 =movehit = 1 && var(10)=2 && numtarget(1420)
helpertype = normal ;player
name ="shot"
ID = 1426
stateno = 1426
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
postype = p1
ownpal = 1
persistent=0

[State WHAMMY]
type = Explod
trigger1 = movehit = 1 && numtarget(1420)
anim = 300
pos = P2Dist x, ceil(-135 * const(size.yscale))
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

[State 1000, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime && var(10)=2
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(13) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 1420
elem = 13
ignoreHitPause = 1

[State 1000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(13) >= 0 && var(10)=2
moveType = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Multi-Tool
[Statedef 1450]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1450

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 37

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -31, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 200, Snd]
type=playsnd
trigger1= !time && random<500
value= 5, 1
channel=0

[State 210, Snd]
type=playsnd
trigger1= animelem=2
value=1,25
[State 210, Snd]
type=playsnd
trigger1= animelem=5
value=1,26

[State 450, Helper]
type = Helper
trigger1 =animelem=4
helpertype = normal ;player
name ="woosh"
ID = 1451
stateno = 1451
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
postype = p1
ownpal = 1
persistent=0

[State 250, Width]
type= Width
trigger1=animelem = 5
player = 30,0
edge = 35,0

[State 6000, 5]
type = HitDef
trigger1 = Timemod = 4,0
attr = S, SP
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
damage = ceil(ifelse(fvar(11)*37<7, 7, fvar(11)*37)), 7
pausetime = 2, 4
hitsound = -1 + 0*(var(31):=11)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=300), var(36):=-65
getpower = 0
givepower = 36, 36
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -9,-1
airguard.velocity = -5,-3
air.type = High
air.velocity = -5,-3
air.hittime = 12
fall = 1
envshake.time = 15
envshake.ampl = 7
fall.envshake.time = 15
fall.envshake.ampl = -7
palFX.time = 40
palFX.mul = 192,100,100
palFX.sinAdd = 96, 96, 96, 4
palFX.invertall = 1
palfx.color = 0

[State WHAMMY]
type = Explod
trigger1 = movehit
anim = 300
pos = P2Dist x, ceil(-130 * const(size.yscale))
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

[State 3000, METER BURN SUPER]
type=ChangeState
triggerall= (animelemtime(5)>=0 && animelemtime(9)<0) || movecontact
triggerall= power >= 500
trigger1= !AILevel && command = "GENSUPER"
trigger2= AILevel && random<(50+340*(HitCount>=2&&P2MoveType=H)) && numenemy
value= 3000

[State 1000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Help Wanted
[Statedef 1499]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-250
facep2=1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -250

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H && Random < 500), 0, ifElse(Random < 500, 1, 2))

[State -3, Ex Flash]
type = palfx
trigger1 = !(gametime % 2) && (time = [0,20])
time = 1
color = 0
mul = 0, 120, 256
add = 128, 128, 128
ignorehitpause = 1

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -31, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1001

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1499

[State 1000, Pops]
type = Helper
trigger1 = animelem = 2 && var(10)=0
trigger1 = !numhelper(1500) && !numhelper(7000)
helpertype = normal ;player
name = "Pops"
ID = 1500
stateno = 1500
pos = -50,-250
postype = back
ownpal = 1

[State 1002, Muscle Man]
type = Helper
trigger1 = animelem = 2 && var(10)=1
trigger1 = !numhelper(1510) && !numhelper(7000)
helpertype = normal ;player
name = "Muscle Man"
ID = 1510
stateno = 1510
pos = -50,0
postype = back
ownpal = 1

[State 1005, Benson]
type = Helper
trigger1 = animelem = 2 && var(10)=2
trigger1 = !numhelper(1520) && !numhelper(7000)
helpertype = normal ;player
name = "Benson"
ID = 1520
stateno = 1520
pos = 20,0
postype = p1
ownpal = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 5,4
channel = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;MAX Trigger: Skeet Shot
[Statedef 1600]
type=S
physics=S
movetype=I
ctrl=0
velset=0,0
sprpriority=1
;poweradd=72*!var(20)
facep2=1

[State -2, MAX Mode Time]
type = VarAdd
trigger1 = var(53) > 0 
ignorehitpause = 1
var(53) = -(2 + random%2)
[State -2, MAX Mode Damaged]
type = VarAdd
trigger1 = var(53) > 0 
trigger1= !time && PrevStateNo = StateNo
ignorehitpause = 1
var(53) = -20

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && (PrevStateNo != [1600, 1602])
value = 1600

[State 250, Chip damage]
type=lifeadd
trigger1=!time && PrevStateNo = StateNo
value= -20

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = PrevStateNo = 1601
trigger1 = Anim != 1603 && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 1603

[State 52, Turn]
type = changeanim
trigger1 = p2dist x < 0
trigger1 = anim != 5
value = 5

[State 52, Turn]
type = turn
trigger1 = anim = 5 && animelem = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3 && Anim != 5
value = 1,28
channel = 1

[State 1210, Reversal]
type=ReversalDef
trigger1= 1
reversal.attr= SCA, NA, SA
pauseTime=4,6
sparkNo=-1 + 0 * (var(33) := 8001)
sparkXY=-10 + 0 * (var(35) := 30), (var(36) := -60)
hitSound=S3,0
numHits=0
p1stateno=StateNo
ignorehitpause=1

[State 200, Move]
type=ChangeState
triggerall= (animelemtime(3)>=0 && Anim = 1600) || Anim = 1603 || Anim = 1604
trigger1= !AILevel && (command = "holdfwd" || command = "holdback")
trigger2= AILevel && NumEnemy && Random < (50 * (AILevel ** 2 / 64.0))
value=1601

[State 200, Shoot]
type=ChangeState
triggerall= (animelemtime(3)>=0 && Anim = 1600) || Anim = 1603 || Anim = 1604
trigger1= !AILevel && command = "pp"
trigger2= AILevel && NumEnemy && Random < (50+300*(P2MoveType = A || P2MoveType = H || !inGuardDist) * (AILevel ** 2 / 64.0))
value=1602

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AILevel && command = "kk"
trigger2 = AILevel && NumEnemy && Random < (IfElse(p2bodydist x <= 60, 200,100) * (AILevel ** 2 / 64.0))
trigger3 = !var(53)
trigger4 = WinKO || Roundstate != 2
value = 0
ctrl = 1

;POWER WALK
[Statedef 1601]
type=S
physics=S
movetype=I
ctrl=0
velset=0,0
sprpriority=1
;poweradd=72*!var(20)
facep2=1

[State -2, MAX Mode Time]
type = VarAdd
trigger1 = var(53) > 0 
ignorehitpause = 1
var(53) = -(2 + random%2)
[State -2, MAX Mode Damaged]
type = VarAdd
trigger1 = var(53) > 0 
trigger1= !time && PrevStateNo = StateNo
ignorehitpause = 1
var(53) = -25

[State 250, Chip damage]
type=lifeadd
trigger1=!time && PrevStateNo = StateNo
value=-25

[State 105, 5]
type = AfterImage
trigger1 = time%25 = 0
time = 25
trans = add1
timegap = 0
framegap = 0
length = 16
palbright = 12,12,12
palcontrast = 256,256,256
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1

[State 1210, Reversal]
type=ReversalDef
trigger1= 1
reversal.attr= SCA, NA, SA
pauseTime=4,6
sparkNo=-1 + 0 * (var(33) := 8001)
sparkXY=-10 + 0 * (var(35) := 30), (var(36) := -60)
hitSound=S3,0
numHits=0
p1stateno=StateNo
ignorehitpause=1

[State 100, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 100, ifElse((Random<500), 0, 1)

[State 1000, AI Power setting for movement]
type = VarSet
trigger1 = (TimeMod = 25, 0) && AILevel
var(10) = ifElse(Random<500, 1, 0)

[State 52, Turn]
type = changeanim
trigger1 = p2dist x < 0
trigger1 = anim != 5
value = 5

[State 52, Turn]
type = turn
trigger1 = anim = 5 && animelem = 1

[State 20, Vel]
type = velset
trigger1 = !AILevel && command = "holdfwd"
trigger2 = AILevel && NumEnemy && var(10) = 0
x = 1.5

[State 20, Vel]
type = velset
trigger1 = !AILevel && command = "holdback"
trigger2 = AILevel && NumEnemy && var(10) = 1
x = -1.5

[State 20, Anim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 1601 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 1601

[State 20, Anim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 1602 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 1602

[State 200, Shoot]
type=ChangeState
trigger1= !AILevel && command = "pp"
trigger2= AILevel && NumEnemy && Random < (50+300*(P2MoveType = A || P2MoveType = H || !inGuardDist) * (AILevel ** 2 / 64.0))
value=1602

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AILevel && !(command = "holdfwd" || command = "holdback")
trigger2 = AILevel && NumEnemy && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = TimeMod = 25, 0
value = 1600

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AILevel && command = "kk"
trigger2 = AILevel && NumEnemy && Random < (IfElse((p2bodydist x = [30, 120]), 100, 200) * (AILevel ** 2 / 64.0))
trigger3 = !var(53)
trigger4 = WinKO || Roundstate != 2
value = 0
ctrl = 1

;F I R E !
[Statedef 1602]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
;poweradd=72*!var(20)
facep2=1

[State 200, Anim]
type = ChangeAnim
trigger1 = !time
value = 1604

[State -2, MAX Mode Time]
type = VarAdd
trigger1 = var(53) > 0 
ignorehitpause = 1
var(53) = -(1 - random%2)
[State -2, MAX Mode Time]
type = VarAdd
trigger1 = var(53) > 0 && !time
ignorehitpause = 1
var(53) = -144

[State 250, Width]
type= Width
trigger1= time = 1
player = 45,0
edge = 50,0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 1,29
channel = 1
[State 1000, Helper]
type = Helper
trigger1 = time = 1
helpertype = normal
stateno = 1605
ID = 1605
name = "Gunfire"
postype = p1
pos = ceil(110 * const(size.xscale)), ceil(-145 * const(size.yscale))
pausemovetime = 9999
supermovetime = 9999
size.xscale = 0.3
size.yscale = 0.25
ownpal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = ifElse(var(53)<=0, 0, 1600)
ctrl = ifElse(var(53)<=0, 1, 0)

;---------------------------------------------------------------------------
;Ragedrive: Deathfist
[Statedef 1610]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500;72*!var(20)
facep2=1

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1610

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Rage spent]
type = VarSet
trigger1 = !Time
trigger1 = var(41) = 1
var(41) = 2
[State 1500, RageFX]
type = varset
trigger1 = !time
var(45) = 44

[State 1500, RageFX]
type = explod
trigger1 = !time
anim = 8211
sprpriority = 3
postype = p1
pos = 0, 0
scale = 0.6, 0.6
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1300, Ragesnd]
type=PlaySnd
trigger1 =!time
value=0,1002

[State 1300, change]
type=PlaySnd
trigger1 = animelem = 2
value=1,25

[State 1300, woooosh]
type=PlaySnd
trigger1 = animelem = 3
value=1,32
channel = 1

[State 1300, DAMN]
type=PlaySnd
trigger1 = animelem = 8
value=1,999
[State 1300, WHAP]
type=PlaySnd
trigger1 = animelem = 8
value=2,3000
channel = 1

[State 1200, Hit]
type=hitdef
trigger1= AnimElemTime(8) >= 0 && !numtarget(1610)
ID = 1610
attr = S,SP
hitflag = MAFD
guardflag = M
damage = ceil(ifElse(fvar(11) * 99 < 15, 15, fvar(11) * 99)), 15
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime =0, 6
guard.pausetime =0, 6
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1, -20
ground.cornerpush.veloff = 0
guard.velocity = -6
guard.cornerpush.veloff = 0
air.velocity = -1, -20
air.cornerPush.velOff = 0
yaccel = .45
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=12)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=300), var(36):=-62
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 8
envshake.ampl = -7
envshake.freq = 235

[State WHAMMY]
type = Explod
trigger1 = movehit = 1
anim = 300
pos = p2dist x, -62
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

[State 1000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
moveType = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1









;PUNCH ZERO COUNTER
[STATEDEF 2900]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
faceP2 = 1

[STATE 2900,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2900,ANIM]
type=changeanim
trigger1=!time
value=2900

[STATE 2900,DUST]
type = helper
trigger1 = Animelem=3
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[STATE 2900,WIDTH]
type = Width
trigger1 = 1
edge = 30,0

[STATE 2900,NOT HIT BY]
type = NotHitBy
trigger1 = Anim = 2900
trigger1 = AnimElemNo(0) = [1,5]
value = SCA
time = 1

[STATE 2900,HIT]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= AnimElem = 3
ID = 2900
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 7
getpower = 0
givepower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animtype = Heavy
air.animtype = Heavy
fall.animtype = Diagup
ground.type = hIGH
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 9 - var(10)
air.hittime = 120
ground.velocity = 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = 0, -1
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
[STATE 2900,HIT]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= AnimElem = 5
ID = 2900
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 7
getpower = 0
givepower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animtype = Heavy
air.animtype = Heavy
fall.animtype = Diagup
ground.type = hIGH
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 9 - var(10)
air.hittime = 120
ground.velocity = -3,-7.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2,-7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[STATE 2900,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[STATE 2900,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
 
;KICK ZERO COUNTER
[STATEDEF 2910]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0

[STATE 2910,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2910,ANIM]
type=changeanim
trigger1=!time
value=2910

[STATE 2910,NOT HIT BY]
type = nothitby
trigger1 = animelemtime(6) < 0
value = SCA
time = 1
ignorehitpause = 1

[STATE 2910,WIDTH]
type = Width
trigger1 = 1
edge = 40,0

[STATE 2910,HIT]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
ID = 2910
attr = S, SA
hitFlag = MAF
guardFlag = M
damage =ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getPower = 0, 0
givePower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animType = Back
air.animType = Back
fall.animType = Diagup
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6,-5.5
ground.cornerPush.velOff = 0
guard.velocity = -6
guard.cornerPush.velOff = 0
air.velocity = -6.46, -4.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=76), var(36):=-37
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[STATE 2910,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[STATE 2910,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1