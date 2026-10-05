; _________________________________________
;| Adler by Saikou Shiva                   |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<SYSTEM STATES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
; STANDING
[Statedef 0]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 0, Remove Explods]
type = RemoveExplod
trigger1 = IsHelper

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 0

[State 0, Dead]
type = ChangeState
trigger1 = !Alive
value = 5050

;====================<CROUCHING>====================
;Stand to Crouch
[StateDef 10]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 12
value = 10
elem = 3 - AnimElemNo(0)

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10
value = 10

[State 10, End]
type = ChangeState
trigger1 = !AnimTime
value = 11


;Crouching
[StateDef 11]
type = C
physics = C
moveType = I
anim = 11
velSet = 0,0
sprPriority = 0

[State 11, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 6 && !AnimTime
value = 11


;Crouch to Stand
[StateDef 12]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 10
value = 12
elem = 3 - AnimElemNo(0)

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 12
value = 12

[State 12, End]
type = ChangeState
trigger1 = command = "holddown" && command != "holdup"
value = 10

[State 12, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;WALKING
[Statedef 20]
type = S
physics = S
movetype = I
sprpriority = 0

[State 20, Vel]
type = velset
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, Vel]
type = velset
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 120, 0

[State 20, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 120, 0

[State 20, Anim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 20

[State 20, Anim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 21


;JUMPING
[Statedef 40]
type = S
physics = S
movetype = I
anim = 40
ctrl = 0
velset = 0, 0
sprpriority = 1
facep2 = 1

[State 40, Direction]
type = varset
trigger1 = !AIlevel
sysvar(1) = ifelse(!time, 0, ifelse(command = "holdfwd", 1, ifelse(command = "holdback", -1, sysvar(1))))
[State 40, Direction]
type = varset
trigger1 = AIlevel
sysvar(1) = ifelse((enemynear, movetype != A || backedgebodydist <= 10), 1, ifelse((enemynear, movetype = A), -1, 0))

[State 40, High Jump]
type = varset
trigger1 = !time && !AIlevel
var(3) = ifelse(command = "highjump", 3, 0)
[State 40, High Jump]
type = varset
trigger1 = !time && AIlevel
var(3) = ifelse((p2bodydist x >= 160 || random < (125 * (AIlevel ** 2 / 64.0))), 3, 0)
[State 40, High Jump]
type = varset
trigger1 = !time && prevstateno = 100
var(3) = 3

[State 40, Low Jump]
type = varset
trigger1 = !AIlevel && command != "holdup" && (var(3) != [1, 2])
var(3) = ifelse((var(3) = 3 && sysvar(1)), 2, 1)
[State 40, Low Jump]
type = varset
trigger1 = AIlevel && (var(3) != [1, 2])
trigger1 = (enemynear, statetype = C) && random < 500
var(3) = ifelse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Snd]
type = playsnd
trigger1 = !animtime
value = ifElse((var(3) = [2,3]), 41, 40), 0
[State 40, Dust]
type = helper
trigger1 = !animtime
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 40, Velocity: Normal Jump]
type = VelSet
trigger1 = !AnimTime
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, Velocity: Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 1
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = 0.75 * const(velocity.jump.y)

[State 40, Velocity: Long Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 2
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = 0.75 * const(velocity.jump.y)

[State 40, Velocity: Long Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y))

[State 40, End]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1

;--------------------------------------------------------------
;IN-AIR
[Statedef 50]
type = A
physics = N
movetype = I
sprpriority = 1

[State 50, Anim]
type = changeanim
trigger1 = !time
value = ifelse(!vel x, 41, ifelse(vel x > 0, 42, 43)) + 10 * (var(3) = [1, 2])
persistent = 0

[State 50, No Guard]
type = assertspecial
trigger1 = var(3) = [1, 2]
flag = noairguard
ignoreHitPause = 1

[State 50, Grounded Frame]
type = posfreeze
trigger1 = time < 1 && prevstateno = 40
value = 1

[State 50, Accel]
type = gravity
trigger1 = time >= 1 || prevstateno != 40

[State 50, Land]
type = changestate
trigger1 = pos y > -vel y
value = 52

;--------------------------------------------------------------
;MID-AIR
[Statedef 51]
type = A
physics = N
movetype = I
sprpriority = 1
[State 51, Accel]
type = gravity
trigger1 = 1
[State 51, Land]
type = changestate
trigger1 = pos y > -vel y
value = 52

;--------------------------------------------------------------
;LANDING
[Statedef 52]
type = S
physics = S
movetype = I
anim = 47
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 52, anim 57]
type = changeanim
trigger1 = !time && (var(3) = 1 || var(3) = 2)
trigger1 = (prevstateno = [600, 699])
value = 57

[State 52, Pos]
type = posset
trigger1 = 1
y = 0

[State 52, Ctrl]
type = ctrlset
trigger1 = !time && (prevstateno != [600, 699])
trigger2 = time = 1 && anim != 57
value = 1

[State 52, Guard]
type = changestate
trigger1 = ctrl && command = "holdback"
trigger1 = inguarddist && (prevstateno != [600, 699])
value = 120

[State 52, No walking]
type = assertspecial
trigger1 = anim != 5
flag = nowalk
ignoreHitPause = 1

[State 52, Snd]
type = playsnd
trigger1 = !time
value = 52,0

[State 52, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 52, Turn]
type = changeanim
trigger1 = ctrl && p2dist x < 0
trigger1 = anim != 5
value = 5

[State 52, Turn]
type = turn
trigger1 = anim = 5 && animelem = 1

[State 52, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;RUN
[Statedef 100]
type = S
physics = N
movetype = I
anim = 100
ctrl = 0
sprpriority = 1

[State 100, Vel]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 1;(AnimElem = 3 || AnimElem = 6)
value = 100, 2;ifElse((AnimElem = 3), 0, 1)

[State 100, "Run" (Slide) Dust]
type = Explod
trigger1 = ifElse(time < 4, 0, (Time % 16))
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 100, Jump]
type = changestate
trigger1 = !AIlevel
trigger1 = command = "holdfwd" && command = "holdup"
value = 40

[State 100, Jump]
type = changestate
trigger1 = AIlevel && random < 25
value = 40

[State 100, End]
type = ChangeState
trigger1 = !AILevel && command != "holdfwd"
trigger2 = AILevel && P2BodyDist x <= 90
value = 101


;--- STOP ---
[Statedef 101]
type = S
physics = S
movetype = I
anim = 101
ctrl = 0
sprpriority = 1

[State 101, Snd]
type = playsnd
trigger1 = !time
value = 101,0

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

[State 101, Jump]
type = changestate
trigger1 = !AIlevel && command = "holdup"
value = 40

[State 101, End]
type = changestate
trigger1 = !animtime
value = ifelse(command = "holddown", 10, 0)
ctrl = 1

;--------------------------------------------------------------
;FORWARD DASH
[Statedef 102]
type = S
physics = N
movetype = I
anim = 102
ctrl = 0
sprpriority = 1

[State 102, Snd]
type = playsnd
trigger1 = !time
value = 110,0

[State 102, Dust]
type = helper
trigger1 = animelem = 2
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 102, Run]
type = varset
trigger1 = !time
sysvar(1) = 1

[State 102, Run]
type = varset
triggerall = AnimElemTime(2) <= 0
trigger1 = !AIlevel && command != "holdfwd"
sysvar(1) = 0

[State 102, Run]
type = changestate
triggerall = !AILevel
trigger1 = AnimElemTime(2) = 0 && sysvar(1)
value = 100

[State 102, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N

[State 105, 1]
type = VelSet
trigger1 = AnimElem = 2
x = 7.0
y = -4

[State 105, 1]
type = VelMul
trigger1 = AnimElemTime(2) > 0
x = .98

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.65

[State 102, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = pos y > -vel y
value = 103


;--- LAND ---
[Statedef 103]
type = S
physics = S
ctrl = 1
anim = 103
velset = 0, 0

[State 103, Pos]
type = posset
trigger1 = 1
y = 0

[State 103, Snd]
type = playsnd
trigger1 = !time
value = 100,0

[State 103, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 103, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;--------------------------------------------------------------
;BACK DASH
[Statedef 105]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 105
ctrl = 0
sprpriority = 1

[State 105, Snd]
type = playsnd
trigger1 = animelem = 2
value = 115,0

[State 105, Dust]
type = helper
trigger1 = animelem = 2
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 105, Vel]
type = velset
trigger1 = animelem = 2
x = const(velocity.run.back.x)
;y = const(velocity.run.back.y)

[State 105, 1]
type = VelMul
trigger1 = AnimElemTime(2) > 0
x = .98

;[State 105, 1]
;type = VelAdd
;trigger1 = AnimElemTime(2) > 0
;y = 0.75

;[State 110, Type]
;type = StateTypeSet
;trigger1 = AnimElemTime(2) >= 0
;stateType = A
;physics = N

;[State 105, Land]
;type = changestate
;trigger1 = animelemtime(2) >= 0
;trigger1 = pos y > -vel y
;value = 106

[State 105, Land]
type = ChangeState
trigger1 = time = 15
value = 106


;--- STOP ---
[Statedef 106]
type = S
physics = S
ctrl = 0
anim = 106
velset = 0, 0

[State 106, Pos]
type = posset
trigger1 = 1
y = 0

;[State 106, Snd]
;type = playsnd
;trigger1 = !time
;value = 100,1

;[State 106, Dust]
;type = explod
;trigger1 = !time
;anim = 8102
;sprpriority = -3
;postype = p1
;scale = 0.5, 0.5
;pausemovetime = -1
;supermovetime = -1
;ownpal = 1

[State 106, Ctrl]
type = ctrlset
trigger1 = time >= 2
value = 1

[State 106, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;EVADE
[Statedef 700]
type = S
physics = S
movetype = I
anim = 700
ctrl = 0
velset = 0, 0
sprpriority = -2

[State 700, Snd]
type = playsnd
trigger1 = !time
value = 4,0
channel = 0

[State 700, Snd]
type = playsnd
trigger1 = animelem = 1
value = 1, 3
channel = 1

[State 700, Push]
type = playerpush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 700, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1

[State 700, Attack]
type = changestate
trigger1 = !AIlevel && (time = [15, 25])
trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
value = ifelse((command = "x" || command = "y" || command = "z"), 221, 250)

[State 700, Attack]
type = changestate
trigger1 = AIlevel && (time = [15, 25]) && numenemy
trigger1 = (enemynear, movetype != A) && (p2bodydist x = [ -60, 60]) && (p2dist y >= -60)
value = ifelse(random < 666, 221, 250)

[State 700, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;ROLL Forward 
[Statedef 710]
type = S
physics = N
movetype = I
anim = 710
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 710, Push]
type = playerpush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 710, HB]
type = hitby
trigger1 = animelemtime(2) > 0
trigger1 = animelemtime(3) < 0
value = SCA, AT
time = 1

[State 710, Snd]
type = playsnd
trigger1 = !time
value = 4,0
channel = 0

[State 710, Snd]
type = playsnd
trigger1 = !time
value = 110,0
channel = 1

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 4.5

[State 810, Velocity]
type = VelSet
trigger1 = !AnimTime
x = 0

[State 710, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;ROLL Backward 
[Statedef 715]
type = S
physics = N
movetype = I
anim = 715
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 715, Push]
type = playerpush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 715, HB]
type = HitBy
trigger1 = AnimElemTime(5) < 0
value = SCA,AT
time = 1

[State 715, Snd]
type = playsnd
trigger1 = !time
value = 4,0
channel = 0

[State 715, Snd]
type = playsnd
trigger1 = !time
value = 110,0
channel = 1

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = -4.5

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 715, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;POWER CHARGE
[Statedef 730]
type = S
physics = S
movetype = I
anim = 730
velset = 0, 0
ctrl = 0

[State 730, Power]
type = poweradd
triggerall = power < const(data.power) && power < powermax
trigger1 = !AIlevel && (command = "holdb" && command = "holdy")
trigger2 = AIlevel
value = 2 + ifelse(time < 60, 0, (time -60) / 12)

[State 730, Snd]
type = playsnd
trigger1 = !time
value = 730,1
channel = 0

[State 730, Flash]
type = palfx
trigger1 = 1
time = 1
add = 75 + ceil(sin(time / 6.0 * pi) * 75), 25 + ceil(sin(time / 6.0 * pi) * 25), 0

[State 730, FX]
type = helper
trigger1 = !numhelper(8330)
stateno = 8330
ID = 8330
name = "Power Charge"
postype = p1
pos = 0,0
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 730, FX]
type = helper
trigger1 = !numhelper(8331)
stateno = 8331
ID = 8331
name = "Particles"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 730, End]
type = changestate
trigger1 = power >= const(data.power) || power >= powermax || roundstate != 2
trigger2 = !AIlevel && (command != "holdb" || command != "holdy")
trigger3 = AIlevel && (inguarddist || p2bodydist x <= 120)
value = 731
ctrl = 1


;POWER CHARGE END
[Statedef 731]
type = S
physics = S
movetype = I
anim = 731
velset = 0, 0
ctrl = 1

[State 5336, 1]
type=removeexplod
trigger1= anim=731
ID=6058

[State 731, Stop Snd]
type = stopsnd
trigger1 = !time
channel = 0

[State 730, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1



;ZERO COUNTER 
[Statedef 750]
type = S
physics = S
movetype = I
anim = 750
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = -1000
facep2 = 1

[State 750, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = (command = "412k")
ignorehitpause = 1

[State 750, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2statetype = A), 0, ifelse((p2statetype = C), 1, ifelse(random < 500, 0, 1)))
ignorehitpause = 1

[State 750, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 750, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 750, Snd]
type = playsnd
trigger1 = !time
value = 4,0
channel = 0

[State 750, SuperPause FX]
type = helper
trigger1 = !time
stateno = 8350
ID = 8350
name = "Zero Counter"
postype = p1
pos = 0, -75
supermovetime = 255
ownpal = 1

[State 750, Super Pause]
type = superpause
trigger1 = !time
time = 15
movetime = 15
p2defmul = 1
anim = -1
sound = s750,0
darken = 0

[State 750, End]
type = changestate
trigger1 = time >= 15
value = ifelse(var(10) = 1, 2910, 2900)

; S.MOVE ALPHA COUNTER
[StateDef 751]
type = S
physics = S
moveType = I
anim = 750
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000
faceP2 = 1

[State 750, Button (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2StateType = A), 1, ifElse((P2StateType = C), 1, ifElse(Random < 500, 1, 1)))
ignoreHitPause = 1

[State 750, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 750, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 750, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,2
channel = 0

[State 750, Zero Counter FX Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8350
ID = 8350
name = "Zero Counter"
posType = P1
pos = ceil(-20 * const(size.xScale)), ceil(-57 * const(size.yScale))
superMoveTime = 255
ownPal = 1

[State 750, SuperPause]
type = SuperPause
trigger1 = !Time
time = 15
moveTime = 15
p2DefMul = 1
anim = -1
sound = s750,0
darken = 0

[State 750, End]
type = ChangeState
trigger1 = Time >= 15
value = 2920

;====================<PARRY>====================
;Standing Parry
[StateDef 760]
type = S
physics = S
moveType = I
anim = 760
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 760, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 760, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 760, Stop]
type = PosFreeze
trigger1 = 1
value = 1

[State 760, No Walking]
type = VarSet
trigger1 = 1
var(26) = 7

[State 760, Voice]
type = PlaySnd
trigger1= !Time
value = 4,2
channel = 0

[State 760, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0
channel = 1

[State 760, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15

[State 760, FX]
type = Explod
trigger1 = !Time
anim = 8360
sprPriority = 5
posType = P1
pos = 29, -87
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownPal = 1

[State 760, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 760, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Crouching Parry
[StateDef 761]
type = C
physics = C
moveType = I
anim = 761
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 761, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 761, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 761, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 761, No Walk]
type = VarSet
trigger1 = 1
var(26) = 7

[State 761, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,2
channel = 0

[State 761, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0
channel = 1

[State 761, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 15

[State 761, Parry FX]
type = Explod
trigger1 = !Time
anim = 8360
sprpriority = 5
postype = P1
pos = 27, -56
pauseMovetime = -1
superMovetime = -1
scale = 0.5,0.5
ownpal = 1

[State 761, EnvShake]
type = EnvShake
trigger1 = !time
time = 0
ampl = 0

[State 761, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;Jumping Parry
[StateDef 762]
type = A
physics = N
moveType = I
anim = 762
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 762, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 762, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 762, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 762, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,2
channel = 0

[State 762, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0
channel = 1

[State 762, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15

[State 762, Parry FX]
type = Explod
trigger1 = !Time
anim = 8360
sprPriority = 5
posType = P1
pos = 27, -76
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownpal = 1

[State 762, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 762, End]
type = ChangeState
trigger1 = !AnimTime
value = 763
ctrl = 1

;Falling
[StateDef 763]
type = A
physics = N
movetype = I
anim = 763
ctrl = 1

[State 763, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(vel x > 2, 2, ifElse(vel x < -2, -2, vel x))
y = ifElse(vel y < -2, vel y, -2)

[State 763, Gravity]
type = Gravity
trigger1 = 1

[State 763, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;--------------------------------------------------------------
; Custom Combo Ground
[StateDef 900]
type = S
physics = S
moveType = A
anim = 900
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 900, Corner Push]
type = VarSet
trigger1 = Time = 4
fvar(5) = 0

[State 900, Unguardable]
type = VarSet
trigger1 = Time = 4 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 30

[State 900, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA
time = 38

[State 900, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 900, Custom Combo Time]
type = VarSet
trigger1 = Time >= 4
var(20) = 180

[State 900, Voice]
type = PlaySnd
trigger1 = Time = 4
value = 3000,0
channel = 0

[State 900, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo FX"
posType = P1
pos = 3, -80;ceil(-1 * const(size.xscale)), ceil(-80 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 900, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 30
moveTime = 30
anim = -1
sound = s900,0
p2DefMul = 1
darken = 0

[State 900, AfterImage]
type = AfterImage
trigger1= !AnimTime
time = 2
timeGap = 1
frameGap = 4
length = 13
palBright = 0,0,0
palContrast = 64,128,192
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = add1

[State 900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------
; Custom Combo Air
[Statedef 905]
type = A
physics = N
moveType = A
anim = 905
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 905, Corner Push]
type = VarSet
trigger1 = Time = 4
fvar(5) = 0

[State 905, Unguardable]
type = VarSet
trigger1 = Time = 4 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 30

[State 905, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 38

[State 905, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 905, Custom Combo Timer]
type = VarSet
trigger1 = Time >= 4
var(20) = 180

[State 905, Voice]
type = PlaySnd
trigger1 = Time = 4
value = 3000,0
channel = 0

[State 905, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo Startup"
posType = P1
pos = 3, -74;ceil(10 * const(size.xscale)), ceil(-101 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 905, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 30
moveTime = 30
anim = -1
sound = s900,0
p2DefMul = 1
darken = 0

[State 905, AfterImage]
type = AfterImage
trigger1 = !AnimTime
time = 2
timeGap = 1
frameGap = 4
length = 13
palBright = 0,0,0
palContrast = 64,128,192
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = add1

[State 905, End]
type = ChangeState
trigger1 = !AnimTime
value = 906
ctrl = 1

;Air Finish
[StateDef 906]
type = A
physics = N
moveType = I
anim = 906
ctrl = 1

[State 906, Gravity]
type = Gravity
trigger1 = 1

[State 906, Land]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;---------------------------------------------------------------------------
; Hit (P2 State)
[Statedef 950]
type    = A
movetype= H
physics = N
velset = 0,0

[State 950, ChangeAnim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 950;32005

[State 950, Velocity]
type = VelSet
trigger1 = AnimElem = 1
x = ifelse(gethitvar(xvel) <= 0,-1,1) * facing * 6
y = 12

[State 950, End]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 951;32006

;---------------------------------------------------------------------------
; Bounce (P2 State)
[Statedef 951]
type    = L
movetype= H
physics = N
velset = 0,0

[State 951, Change Anim 2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 951;32006

[State 951, Position Set]
type = PosSet
trigger1 = time = 0
y = 0

[State 951, Floor Shake]
type = EnvShake
trigger1 = Time = 0
time = 12
ampl = -6
freq = 90
phase = 90

[State 951, Pause]
type = PosFreeze
trigger1 = 1

[State 951, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 952;32007

;-------------------------------------------------------------
; Fall (P2 State)
[Statedef 952]
type    = A
movetype= H
physics = N

[State 952, Position Set]
type = PosSet
trigger1 = Time = 0
y = 0

[State 952, HitBy]
type = HitBy
trigger1 = 1
value = SCA, SA, HA, SP, HP

[State 952, Change Animation]
type = ChangeAnim2
trigger1 = time = 0
value = 952;32007

[State 952, Bounce Velocity]
type = VelSet
trigger1 = time = 0
x = ifelse(gethitvar(xvel) <= 0,-1,1) * facing * 2
y = -7

[State 952, Gravity]
type = VelAdd
trigger1 = 1
y = .4735

[State 952, Change State]
type = SelfState
trigger1 = Time >= 26
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

; TARGET SAFE FALL
[StateDef 5205]
type = A
physics = N
moveType = H

[State 5205, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
trigger1 = Anim = 5035
value = 5050

[State 5205, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 5205, SelfState (Ground)]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 5205, SelfState (Air)]
type = SelfState
trigger1 = Time >= 60
value = 5210

; FALL RECOVERY
[StateDef 5200]
type = A
moveType = H
physics = N

[State 5200, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5035 && !AnimTime
value = 5050

[State 5200, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 5200, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 10
value = 5201

[StateDef 5201]
type = S
moveType = I
physics = N
anim = 5200
ctrl = 0
faceP2 = 1

[State 5201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5201, VelSet]
type = VelSet
trigger1 = !Time
x = -8
y = 0

[State 5201, VelMul]
type = VelMul
trigger1 = 1
x = 0.9

[State 5201, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,1
channel = 0

[State 5201, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 5200,0
channel = 1

[State 5201, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5201, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = 0, ceil(-18 * const(size.yScale))
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 5201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Air Recover
[StateDef 5210]
type = A
moveType = I
physics = N
anim = 5210
ctrl = 0
faceP2 = 1

[State 5210, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.6

[State 5210, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse((command = "holdfwd" && command != "holdback"), 4, ifElse((command != "holdfwd" && command = "holdback"), -4, 0))
y = -7.55

[State 5210, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,1
channel = 0

[State 5210, Recover Sound]
type = PlaySnd
trigger1 = !Time
value  = 5200,0

[State 5210, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5210, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = ceil(8 * const(size.xscale)), ceil(-65 * const(size.yscale))
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 5210, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 5210, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(5) >= 0
value = 1

[State 5210, Land]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52

;===================<GUARD>================
;Guard Start
[StateDef 120]
type = U
physics = U
anim = 120 + (StateType = C) + (StateType = A) * 2

[State 120, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 120, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 120, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 120, VelSet]
type = VelSet
trigger1 = !Time && StateType != A
x = 0
y = 0

[State 120, Stand to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 120, Crouching to Stand]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 120, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 120, Change to Guard State]
type = ChangeState
trigger1 = !AnimTime || AILevel
value = 130 + (StateType = C) + (StateType = A) * 2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = (!AILevel && command != "holdback")
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

;Standing Guard
[StateDef 130]
type = S
physics = S

[State 130, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 130, Standing to Crouch]
type = ChangeState
trigger1 = !AILevel && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = (!AILevel && command != "holdback")
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

[State 130, Landing Sound]
type = PlaySnd
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
value = 52,0

[State 130, Landing Dust Expod]
type = Explod
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
anim = 8102
sprpriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

;Crouch Guarding
[StateDef 131]
type = C
physics = C

[State 131, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 131
value = 131

[State 131, Crouching to Standing]
type = ChangeState
trigger1 = !AILevel && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
value = 130

[State 131, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 131, Stop Guarding]
type = ChangeState
trigger1 = (!AILevel && command != "holdback")
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

;Air Guard
[StateDef 132]
type = A
physics = N

[State 132, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 132
value = 132

[State 132, VelAdd]
type = VelAdd
trigger1 = 1
y = const(movement.yAccel)

[State 132, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)

[State 132, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 132, Jumping to Standing]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && command = "holdback") || AILevel
value = 130

[State 132, Change to Falling]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = (!AILevel && command != "holdback")
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

;Guard End
[StateDef 140]
type = U
physics = U
ctrl = 1

[State 140, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 140 + (StateType = C) + (StateType = A) * 2

[State 140, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 140, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 140, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 140, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 140, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 140, End]
type = ChangeState
trigger1 = !AnimTime
value = (StateType = C) * 11 + (StateType = A) * 51

;Hit while Guarding (Standing)
[StateDef 150]
type = S
movetype = H
physics = N
velSet = 0,0

[State 150, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && command = "holddown") || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 150, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
stateType = C
physics = C

[State 150, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AIlevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

;Knocked Back while Guarding (Standing)
[StateDef 151]
type = S
moveType = H
physics = S
anim = 150

[State 151, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 151, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 151, CtrlSet]
type = CtrlSet
trigger1 = time = GetHitVar(CtrlTime)
value = 1

[State 151, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 151, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 151, End]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;Hit while Guarding (Crouching)
[StateDef 152]
type = C
moveType = H
physics = N
velSet = 0,0

[State 152, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && command = "holddown") || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 152, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && statetype = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 152, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

;Knocked Back while Guarding (Crouching)
[StateDef 153]
type = C
moveType = H
physics = C
anim = 151

[State 153, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 153, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 153, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 153, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 153, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 153, End]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

;Hit while Guarding (Jumping)
[StateDef 154]
type = A
moveType = H
physics = N
velSet = 0,0

[State 154, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, End]
type = ChangeState
trigger1 = HitShakeOver
value = 155

;Knocked Back while Guarding (Jumping)
[StateDef 155]
type = A
moveType = H
physics = N
anim = 152

[State 155, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 155, VelAdd]
type = VelAdd
trigger1 = 1
y = const(movement.yAccel)

[State 155, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 155, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)

[State 155, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, End]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && command = "holdback") || AILevel
value = 130

[State 155, End]
type = ChangeState
trigger1 = sysvar(0)
value = 52

;====================<LOSE>====================
[StateDef 170]
type = S
ctrl = 0
anim = 170
velSet = 0,0

[State 170, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 400
flag = RoundNotOver

;====================<DRAW GAME>====================
[StateDef 175]
type = S
ctrl = 0
velSet = 0,0

[State 175, ChangeState]
type = ChangeState
trigger1 = !Time
value = 170

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 0, Generic Win Quotes]
type = VictoryQuote
trigger1 = 1
value = (Random % 3)

[State 0, Win Quote vs. Wei]
type = VictoryQuote
trigger1 = Enemy, Name = "Wei"
trigger2 = Enemy, Name = "Wei Ye Lu"
value = 3

[State 0, Win Quote vs. Akatsuki]
type = VictoryQuote
trigger1 = Enemy, Name = "Akatsuki"
value = 4

[State 0, Win Quote vs. Fritz]
type = VictoryQuote
trigger1 = Enemy, Name = "Fritz"
value = 5

[State 0, Win Quote vs. Elektrosoldat]
type = VictoryQuote
trigger1 = Enemy, Name = "E-Soldat"
trigger2 = Enemy, Name = "Elektrosoldat"
value = 6

[State 0, Win Quote vs. Mycale / Perfecti]
type = VictoryQuote
trigger1 = Enemy, Name = "Mycale"
trigger2 = Enemy, Name = "Perfecti"
value = 7

[State 0, Win Quote vs. Blitztank]
type = VictoryQuote
trigger1 = Enemy, Name = "Blitztank"
value = 8

[State 0, Win Quote vs. Murakumo]
type = VictoryQuote
trigger1 = Enemy, Name = "Murakumo"
trigger2 = Enemy, Name = "Akatzuki-Zero"
value = 9

[State 180, 1]
type = ChangeState
trigger1 = time = 0
value = 181+(random%3)
;---------------------------------------------------------------------------
;Win Pose 1
[Statedef 181]
type = S
physics = S
ctrl = 0
velset = 0,0
anim = 180

[State 181,CAMERA (Win Pose)]
type = helper
triggerall = fvar(35)=5||fvar(35)=[1,2]
triggerall = !time
trigger1 = pos X != 0
name = "helper1"
id = 6001
pos = 0,0
postype = p1
stateno = 6001
helpertype = normal
ownpal = 1
keyctrl = 1

[State 181, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = s120, 0
channel = 12

[State 181, 2]
type = PlaySnd
trigger1 = Time = 60
value = s180, 0
channel = 13

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0, 270]
flag = RoundNotOver

;---------------------------------------------------------------------------
;Win Pose 2
[Statedef 182]
type = S
physics = S
ctrl = 0
velset = 0,0
anim = 181

[State 181,CAMERA (Win Pose)]
type = helper
triggerall = fvar(35)=5||fvar(35)=[1,2]
triggerall = !time
trigger1 = pos X != 0
name = "helper1"
id = 6001
pos = 0,0
postype = p1
stateno = 6001
helpertype = normal
ownpal = 1
keyctrl = 1

[State 182, 2]
type = PlaySnd
trigger1 = Time = 0
value = s190, 0
channel = 13

[State 182, 1]
type = AssertSpecial
trigger1 = Time = [0, 270]
flag = RoundNotOver

;---------------------------------------------------------------------------
;Win Pose 3
[Statedef 183]
type = S
physics = S
ctrl = 0
velset = 0,0
anim = 182

[State 182, Electricity 1]
type = Explod
trigger1 = AnimElem = 6
anim = 18200
pos = -5, -125
postype = p1
bindtime = 1
removetime = 999
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 182, Electricity 2]
type = Explod
trigger1 = AnimElem = 6
anim = 18201
pos = -5, -125
postype = p1
bindtime = 1
removetime = 999
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 182, Electricity 3]
type = Explod
trigger1 = AnimElem = 6
anim = 18202
pos = -5, -125
postype = p1
bindtime = 1
removetime = 999
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 182, Electricity 4]
type = Explod
trigger1 = AnimElem = 6
anim = 18203
pos = -5, -125
postype = p1
bindtime = 1
removetime = 999
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 182, Electricity 5]
type = Explod
trigger1 = AnimElem = 6
anim = 18204
pos = -5, -125
postype = p1
bindtime = 1
removetime = 999
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 182, Electricity Sphere]
type = Explod
trigger1 = AnimElem = 6
anim = 18205
pos = -5, -125
postype = p1
bindtime = 1
removetime = 999
scale = .5 + 0.2*((time % 3)=[2,3]), .5 + 0.2*((time % 3)=[2,3])
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 181,CAMERA (Win Pose)]
type = helper
triggerall = fvar(35)=5||fvar(35)=[1,2]
triggerall = !time
trigger1 = pos X != 0
name = "helper1"
id = 6001
pos = 0,0
postype = p1
stateno = 6001
helpertype = normal
ownpal = 1
keyctrl = 1

[State 183, 2]
type = PlaySnd
trigger1 = Time = 0
value = s190, 1
channel = 13

[State 183, 1]
type = AssertSpecial
trigger1 = Time = [0, 270]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Introduction Decider
[Statedef 190]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 190, 1]
type = ChangeState
trigger1 = Time = 0
value = 191+(random%2)
;---------------------------------------------------------------------------
; Introduction 1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, Voice]
type = PlaySnd
trigger1 = time = 45
value = S180,0
channel = 1

[State 191, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 120, 0

[State 191, Soldat - 1]
type = helper
trigger1 = Anim = 191
trigger1 = Time = 0
stateno = 19000
id = 19000
name = "Soldat 1"
pos = -30,0
postype = p1
facing = 1
helpertype = normal
keyctrl = 0
ownpal = 0
persistent = 0

[State 191, Soldat - 2]
type = helper
trigger1 = Anim = 191
trigger1 = Time = 0
stateno = 19001
id = 19001
name = "Soldat 2"
pos = 16,0
postype = p1
facing = 1
helpertype = normal
keyctrl = 0
ownpal = 0
persistent = 0

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Introduction 2
[Statedef 192]
type = S
physics = N
ctrl = 0
anim = 192
velset = 0,0

[State 192, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, Voice]
type = PlaySnd
trigger1 = time = 55
value = S180,0
channel = 1

[State 192, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 120, 0

[State 192, EnvShake]
type = EnvShake
trigger1 = AnimElem = 11
time = 16
ampl = 5

[State 192, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Soldat-1 Departing
[Statedef 19000]
type = S
movetype = I
physics = N
anim = 19000
sprpriority = 3
poweradd = 0
ctrl = 0
facep2 = 0

[State 19000, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 19000, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = -9
y = -7

[State 19000, Gravity]
type = Veladd
trigger1 = AnimElemTime(4) > 0
y = .6

[State 19000, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[state 19000, destroyself]
type = destroyself
triggerall = time > 1
trigger1 = pos x != [-300,300]

;---------------------------------------------------------------------------
; Soldat-2 Departing
[Statedef 19001]
type = S
movetype = I
physics = N
anim = 19000
sprpriority = 0
poweradd = 0
ctrl = 0
facep2 = 0

[State 19001, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 19001, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = -9
y = -7

[State 19001, Gravity]
type = Veladd
trigger1 = AnimElemTime(4) > 0
y = .6

[State 19001, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[state 19001, destroyself]
type = destroyself
triggerall = time > 1
trigger1 = pos x != [-300,300]

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S180,0
channel = 1

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; CHEAP K.O 
[StateDef 5950]
type = S
moveType = H
physics = S
anim = 5950
velSet = 0,0

[State 5950, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5950, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5950, Assert: NoKOsnd]
type = AssertSpecial
trigger1 = 1
flag = NoKOsnd

[State 5950, StopSnd]
type = StopSnd
trigger1 = !Time && !Alive
channel = 0

[State 5950, KO Sound]
type = PlaySnd
trigger1 = AnimElem = 2 && !Alive
value = 5950,0

[State 5981, Hitting the Floor Sound]
type = PlaySnd
trigger1 = AnimElem = 8 || AnimElem = 12
value = F7,0

[State 5981, Hitting the Floor Explod]
type = Explod
trigger1 = AnimElem = 8 || AnimElem = 12
anim = F60
scale = 0.8,0.8
posType = P1
pos = 0,0
sprPriority = -3

[State 5950, End]
type = ChangeState
trigger1= !AnimTime
value = ifElse(Alive, 5110, 5150)

;====================<CONTINUE?>====================
[StateDef 5500]
type = S
anim = 5300
velSet = 0,0
ctrl = 0

[State 5500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5300

;====================<INITIALIZE>====================
[StateDef 5901]
type = S

[State 5901, Turns Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
value = 6900

[State 5901, Adler Intro Decider]
type = ChangeState
trigger1 = RoundNo = 1
value = 190 + (Random % 1)

[State 5901, End]
type = ChangeState
trigger1 = 1
value = 0

;====================<CHEAP K.O.>==================== (Shiva code)
;[StateDef 5950]
;type = A
;movetype = H
;physics = N

;[State 5035, ChangeAnim]
;type = ChangeAnim
;trigger1 = !Time
;trigger1 = SelfAnimExist(5035)
;trigger1 = Anim = [5000,5029]
;value = 5035

;[State 5035, VelAdd]
;type = VelAdd
;trigger1 = 1
;y = GetHitVar(yAccel)

;[State 5035, Recover]
;type = ChangeState
;triggerAll = !HitFall
;trigger1 = HitOver
;trigger2 = !AnimTime
;trigger3 = vel y > 0 && pos y >= 10
;trigger4 = !Time
;trigger4 = Anim != 5035
;value = 5040

;[State 5035, Fall]
;type = ChangeState
;triggerAll = HitFall
;trigger1 = HitOver
;trigger2 = !AnimTime
;trigger3 = vel y > 0 && pos y >= 10
;trigger4 = !Time
;trigger4 = Anim != 5035
;value = 5050

;====================<AIR HIT TRANSITION>====================
[Statedef 5035]
type = A
movetype = H
physics = N

[State 5035, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5035)
trigger1 = Anim = [5000,5029]
value = 5035

[State 5035, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 5035, Recover]
type = ChangeState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = vel y > 0 && pos y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5040

[State 5035, Fall]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = vel y > 0 && pos y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5050

;===========================================================================
;===============================<-2 STATES>=================================
;===========================================================================
[StateDef -2]

[state -2, No Clones]
type = remappal
triggerall=numenemy && (var(55)=[2,22])
trigger1=var(56)&&!numhelper(256)&&matchno=1&&roundno=1
trigger1=enemy,authorname="Saikou Shiva"&&enemy,name="Ernst von Adler"&&enemy,var(55)=var(55) 
source = 1, 1
dest = 1, Ifelse(teamside!=1 && enemynear,Numhelper(256)=0,enemy,var(55)+teamside,var(55))
ignorehitpause = 1

[state -2, Palette]
type = varset
trigger1 = numhelper(256)
trigger1=helper(256),var(55)=[1,22]
var(55)= helper(256),var(55)
ignorehitpause = 1

[state -2, Palette Selection]
type = remappal
trigger1 = numhelper(256)
trigger1=helper(256),var(55)=[1,22]
source = 1, 1
dest = 1, var(55)
ignorehitpause = 1

[state -2, Continue Palette]
type = remappal
trigger1=var(56)&&!AILevel&&matchno>1
source = 1, 1
dest = 1, var(55)
ignorehitpause = 1

[State 256, Mode Selector on]
type=helper
triggerall= !numhelper(256) && var(51)=1 && roundstate<2 && !AILevel
triggerall= !numhelper(257) && ((stateno=[190,199])||stateno=0||(stateno=[6900,6901]))
trigger1= roundno = 1 && matchno=1 && !(teammode = simul) && !(enemy, teammode = simul)
trigger2=(teammode = turns)
trigger2=!roundsexisted && (enemy,roundsexisted)
id=257
stateno=257
facing=facing
ownpal=1
size.xscale =0.5
size.yscale =0.5
persistent=0

[State -2, Tritt Juggle Reset]
type = VarSet
trigger1 = var(11) != 0
trigger1 = EnemyNear,Movetype != H
var(11) = 0
ignorehitpause = 1

[State -2, Intro & Taunt StopSnd]
type = StopSnd
trigger1 = MoveType = H
trigger2 = StateNo != [190,199]
trigger2 = StateNo != 6901
trigger2 = StateNo != [16190,16199]
channel = 17

[State -2, Floor Impact Dust]
type = Helper
triggerall = P2Movetype = H
trigger1 = p2stateno = 32006
trigger1 = ((Enemy,Anim = 32006) || (Enemy,Anim = 32006)) && Enemy,AnimElem = 1
trigger2 = p2stateno = 32006 && enemy,time = 1
helperType = Normal
stateNo = 8110
ID = 8110
name = "Floor Impact Dust"
posType = P2
pos = 0, 0
ownPal = 1

[State -2, Enemy Ground Hit]
type = Explod
triggerall = P2Movetype = H
trigger1 = p2stateno = 32008
trigger1 = ((Enemy,Anim = 32006) || (Enemy,Anim = 32006)) && Enemy,AnimElem = 1
trigger2 = p2stateno = 32008 && enemy,time = 1
anim = 8102
postype = P2
scale = 0.45,0.45
pos = 0,0
sprpriority = -1
ownpal = 1

[State -2, Floor Impact Sound]
type = Helper
triggerall = P2Movetype = H
trigger1 = p2stateno = 32008
trigger1 = ((Enemy,Anim = 32006) || (Enemy,Anim = 32006)) && Enemy,AnimElem = 1
trigger2 = p2stateno = 32008 && enemy,time = 1
helperType = Normal
stateNo = 81000
ID = 81000
name = "Floor Impact Sound"
posType = P2
pos = 0, 0
ownPal = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact = 1 && var(30) < 0
var(30) = HitPauseTime
ignoreHitPause = 1

[State -2, Hit Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && var(31) >= 0
trigger1 = StateNo != 3501
value = 2, var(31)
channel = 2
ignoreHitPause = 1

[State -2, Guard Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveGuarded = 1 && var(32) >= 0
trigger1 = StateNo != 3501
value = 3, var(32)
channel = 2
ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8001
trigger1 = StateNo != 3501
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001
trigger2 = StateNo != 3501
trigger3 = MoveHit = 1 && NumEnemy
trigger3 = var(33) = 8015 || var(33) = 8016 || var(33) = 8017
trigger3 = StateNo != 3501
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
size.xscale = 1
size.yscale = 1
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Counter FX]
type = Helper
trigger1 = MoveHit = 1 && var(30) = HitPauseTime
trigger1 = NumEnemy && var(9)
trigger1 = !(HitDefAttr = SCA, AT) && (EnemyNear, MoveReversed != 1)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ceil(ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))) * const(size.xScale)), ceil(var(36) * const(size.yScale))
facing = -1
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -2, Counter Flag]
type = VarSet
trigger1 = NumEnemy
var(9) = (EnemyNear, MoveType = A)
ignoreHitPause = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = 1
var(30) = -1

[State -2, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 30
last = 36
value = -1
ignoreHitPause = 1

[State -2, P2 Facing]
type = TargetFacing
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver) && !(Target, HitFall) && (Target, Time <= 1)
trigger2 = MoveContact = 1 && NumTarget(1232)
trigger2 = !(Target, HitShakeOver) && (Target, Time <= 1)
value = ifElse(P2Dist x >= 0, -1, 1)
ignoreHitPause = 1

[State -2, P2 Safe Fall]
type = TargetState
trigger1 = NumTarget = 1
trigger1 = Target, command = "recovery"
trigger1 = Target, pos y >= -48 && Target, vel y > 0
trigger1 = Target, Alive && Target, HitFall && Target, GetHitVar(fall.recover)
trigger1 = Target, StateNo = 5030 || Target, StateNo = 5035 || Target, StateNo = 5050 || Target, StateNo = 5071
value = 5205
ignoreHitPause = 1

[State -2, Assert: UnGuardable]
type = AssertSpecial
trigger1 = var(17) > 0
trigger1 = var(17) := (var(17) - 1)
flag = UnGuardable
ignoreHitPause = 1

[State -2, Hit Count]
type = VarAdd
trigger1 = MoveHit = 1
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -2, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && var(13)
trigger1 = (EnemyNear, MoveType != H) && (EnemyNear, StateNo != 5300)
var(13) = 0
ignoreHitPause = 1

[State -2, Juggle Count]
type = VarAdd
trigger1 = MoveHit = 1
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State -2, Juggle Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(15)
trigger1 = (Enemy, StateType != A) && (Enemy, StateNo != [5100,5109]) && (Enemy, Time >= 1)
trigger2 = (Enemy, MoveType != H) || (Enemy, StateNo = [120,155]) || (Enemy, Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(15)
trigger1 = (EnemyNear(0), StateType != A) && (EnemyNear(0), Time >= 1)
trigger2 = (EnemyNear(0), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), StateType != A) && (EnemyNear(0), Time >= 1)
trigger4 = (EnemyNear(1), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Free Juggling]
type = VarSet
trigger1 = RoundState != 2
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Flag]
type = VarSet
trigger1 = NumEnemy && !var(16)
trigger1 = (EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl)
var(16) = 1
ignorehitpause = 1

[State -2, Juggle Flag Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(16)
trigger1 = (Enemy, MoveType != H) && (Enemy, StateNo != 5040)
trigger2 = !(Enemy, HitShakeOver) || (Enemy, StateType = L) || (Enemy, Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Juggle Flag Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(16)
trigger1 = (EnemyNear(0), MoveType != H) && (EnemyNear(0), StateNo != 5040)
trigger2 = !(EnemyNear(0), HitShakeOver) || (EnemyNear(0), StateType = L) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), MoveType != H) && (EnemyNear(1), StateNo != 5040)
trigger4 = !(EnemyNear(1), HitShakeOver) || (EnemyNear(1), StateType = L) || (EnemyNear(1), Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Custom Combo End]
type = VarSet
trigger1 = var(20) < 0
trigger2 = MoveType = H
trigger3 = RoundState != 2
trigger4 = (StateNo = [3000,4999])
var(20) = 0
ignoreHitPause = 1

[State -2, Custom Combo Time]
type = VarAdd
trigger1 = var(20) > 0
var(20) = -1
ignoreHitPause = 1

[State -2, Custom Combo Asserts]
type = AssertSpecial
trigger1 = var(20) > 0
flag = NoStandGuard
flag2 = NoCrouchGuard
flag3 = NoAirGuard
ignoreHitPause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) > 60
time = 2
add = 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32)
ignoreHitPause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) = [1,60]
time = 2
add = 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64)
ignoreHitPause = 1

[State -2, Throws Allowed]
type = VarSet
trigger1 = EnemyNear, MoveType != H
trigger1 = EnemyNear, StateNo != 140
trigger1 = (EnemyNear, ctrl && EnemyNear, Time >= 1) || (EnemyNear, Time >= 8)
trigger2 = EnemyNear, MoveType = A
trigger3 = (EnemyNear, StateNo != [0,52]) && (EnemyNear, StateNo != [120,155]) && (EnemyNear, StateNo != [5000,5120])
trigger4 = var(20) || var(21) || var(22)
var(38) = 0

[State -2, Throws Disallowed]
type = VarSet
triggerAll = NumEnemy
trigger1 = EnemyNear, StateNo = [150,155]
trigger2 = (EnemyNear, StateNo = 51 || EnemyNear, StateNo = 140) && (EnemyNear, PrevStateNo = [150, 155])
trigger3 = EnemyNear, MoveType = H && EnemyNear, StateType != A && !var(20) && !var(21) && !var(22)
trigger4 = (EnemyNear, StateNo = [5020,5040]) && EnemyNear, HitFall = 0
trigger5 = EnemyNear, StateNo = 40 && EnemyNear, PrevStateNo != 52 && (EnemyNear, Anim != [0, 29])
var(38) = 1
ignoreHitPause = 1

[State -2, Dampener]
type = varset
trigger1 = 1
fvar(10) = ifElse(var(13) < 6, 70, ifElse(var(13) >= 23, 1, 29 - var(13))) / 70.0
ignorehitpause = 1

[State -2, Dampener - Custom Combo]
type = varset
trigger1 = var(20)
fvar(10) = 0.72 * (10 - ifElse(var(13) >= 10, 10, var(13))) / 10.0
ignorehitpause = 1

[State -2, Dampener - Custom Combo Limiter]
type = varset
trigger1 = var(20)
trigger1 = StateNo = 250
fvar(10) = ifElse(var(13), 0, 0.72)
ignorehitpause = 1

[State -2, Dampener - Supers]
type = varset
trigger1 = (stateno = [3000, 4999])
fvar(10) = ifelse(var(22), 0.6, ifelse(var(21), 0.8, 1.0))
ignorehitpause = 1

[State -2, Dampener Limit]
type = varset
trigger1 = fvar(10) < 0
fvar(10) = 0
ignorehitpause = 1

[State -2, Root Dampener]
type = varset
trigger1 = 1
fvar(11) = fvar(10) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State -2, Back Charge Increment]
type = VarAdd
trigger1 = command = "holdback"
var(47) = 1

[State -2, Back Charge Reset]
type = VarSet
trigger1 = command != "holdback"
var(47) = 0

[State -2, Back Charge Buffer Activation]
type = VarSet
trigger1 = var(47) >= 45
var(48) = 32

[State -2, Back Charge Buffer Decrement]
type = VarAdd
trigger1 = var(47) < 45 && var(48) > 0
var(48) = -1

[State -2, Down Charge Increment]
type = VarAdd
trigger1 = command = "holddown"
var(49) = 1

[State -2, Down Charge Reset]
type = VarSet
trigger1 = command != "holddown"
var(49) = 0

[State -2, Down Charge Buffer Activation]
type = VarSet
trigger1 = var(49) >= 45
var(50) = 32

[State -2, Down Charge Buffer Decrement]
type = VarAdd
trigger1 = var(49) < 45 && var(50) > 0
var(50) = -1

[State -2, Voice Position]
type = SndPan
trigger1 = 1
channel = 0
pan = 0
ignoreHitPause = 1

[State -2, KO Sound Variable]
type = VarSet
triggerAll = StateNo != 5950
trigger1 = Alive && var(41) > 0
trigger2 = !Alive && var(41) < 2
var(41) = ifElse(Alive, 0, var(41) + 1)
ignoreHitPause = 1

[State -2, KO Sound]
type = PlaySnd
triggerAll = PrevStateNo != 5950
trigger1 = !Alive && var(41) = 1
trigger1 = var(41) := 2
value = 11, 1 + 2 * (StateNo = 5130)
ignoreHitPause = 1

[State -2, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "AI = %d Attack = %f Hits = %d Juggle = %d"
params = AILevel, fvar(11), var(13), var(15)
ignoreHitPause = 1

[State -2, Debug]
type = AppendToClipboard
trigger1 = 1
text = "\nBy Saikou Shiva"
ignoreHitPause = 1

[State -2, Wall Impact Dust]
type = Helper
triggerall = !numhelper(8111) && numenemy
trigger1 = P2movetype = H && P2StateNo = 1487 && Enemy, Time = 1
helperType = Normal
stateNo = 8111
ID = 8111
name = "Wall Impact Dust"
posType = p2
facing = -1
pos = floor(-5*const(size.xscale)),ceil(-70*const(size.yscale))
ownPal = 1
ignorehitpause = 1

;========== Special Explod Removals ==========
[State -2, RemoveExplod Blitz Charge FX]
type = RemoveExplod
trigger1 = StateNo != [1000, 1029]
ID = 1001
[State -2, RemoveExplod Blitz Electricity FX]
type = RemoveExplod
trigger1 = StateNo != [1000, 1029]
ID = 1008
[State -2, RemoveExplod Blitz Charge FX]
type = RemoveExplod
trigger1 = StateNo != [1030, 1039]
ID = 1031
[State -2, RemoveExplod Blitz Charge FX]
type = RemoveExplod
trigger1 = StateNo != [1030, 1039]
ID = 1038
[State -2, RemoveExplod Blitz Charge FX]
type = RemoveExplod
trigger1 = StateNo != [1050, 1054]
ID = 1051
[State -2, RemoveExplod Blitz Charge FX]
type = RemoveExplod
trigger1 = StateNo != [1050, 1054]
ID = 1058
[State -2, RemoveExplod Blitz Charge FX]
type = RemoveExplod
trigger1 = StateNo != [1080, 1099]
ID = 1081
[State -2, RemoveExplod Blitz Charge FX]
type = RemoveExplod
trigger1 = StateNo != [1080, 1099]
ID = 1088
[State -2, RemoveExplod Tritt FX]
type = RemoveExplod
trigger1 = StateNo != [1100, 1130]
ID = 1105
[State -2, RemoveExplod Tritt BG]
type = RemoveExplod
trigger1 = StateNo != [1100, 1130]
ID = 1107
[State -2, RemoveExplod Tritt FX]
type = RemoveExplod
trigger1 = StateNo!= 3000
ID = 1115
[State -2, RemoveExplod Tritt FX]
type = RemoveExplod
trigger1 = StateNo!= 3030
ID = 1125
[State -2, RemoveExplod Divekick FX]
type = RemoveExplod
trigger1 = StateNo != 1130
ID = 1135
[State -2, RemoveExplod Divekick FX]
type = RemoveExplod
trigger1 = StateNo != 3000
ID = 1145
[State -2, RemoveExplod Shock]
type = RemoveExplod
trigger1 = StateNo != [1200, 1230]
ID = 1201
[State -2, RemoveExplod COUNTER Tritt FX]
type = RemoveExplod
trigger1 = StateNo != 2920
ID = 2920
[State -2, RemoveExplod COUNTER Tritt BG]
type = RemoveExplod
trigger1 = StateNo != 2920
ID = 2925
[State -2, RemoveExplod Lv1 Tritt BG]
type = RemoveExplod
trigger1 = StateNo != [3000, 3030]
ID = 3005
[State -2, RemoveExplod Lv2 Tritt BG]
type = RemoveExplod
trigger1 = StateNo != [3000, 3030]
ID = 3035
[State -2, RemoveExplod Lv2 Divekick FX]
type = RemoveExplod
trigger1 = StateNo != 3030
ID = 3001
[State -2, RemoveExplod Shock]
type = RemoveExplod
trigger1 = StateNo != 3200
ID = 3201
[State -2, RemoveExplod Electricity 1]
type = RemoveExplod
trigger1 = StateNo != 3200
ID = 3202
[State -2, RemoveExplod Electricity 2 & 3]
type = RemoveExplod
trigger1 = StateNo != 3200
ID = 32002
[State -2, RemoveExplod Skull]
type = RemoveExplod
trigger1 = StateNo != 3200
ID = 3203
[State -2, RemoveExplod Target]
type = RemoveExplod
trigger1 = StateNo != 870
ID = 8700
;========== Special Explod Removals ==========

;=========== Geist Orb Maintenance ===========
[State -2, Geist Orb End]
type = varset
trigger1 = var(24) < 0
trigger2 = movetype = H
trigger3 = roundstate != 2
trigger4 = (stateno = [3000, 4999])
var(24) = 0
ignorehitpause = 1

[State -2, Geist Orb Time]
type = varadd
trigger1 = var(24) > 0
var(24) = -1
ignorehitpause = 1

[State -2, Meter Gain]
Type = PowerAdd
triggerall = NumHelper(3305) = 1
trigger1 = (GameTime % 1 = 0)
value = -100
ignorehitpause = 1
;=========== Geist Orb Maintenance ===========

;====== PANDORA MODE ======
[State -2, Infinite Meter]
Type = PowerSet
triggerall = var(55) = 21
triggerall = var(54) = 1
trigger1 = alive
value = PowerMax
ignorehitpause = 1

[State -2, Health Loss]
Type = LifeAdd
triggerall = !AILevel
triggerall = var(55) = 21
triggerall = var(54) = 1
trigger1 = alive
trigger1 = (GameTime % 8 = 0)
value = -2
ignorehitpause = 0
;======== GOLD MODE ========
[State -2, Stregth Increase]
Type = AttackMulSet
triggerall = var(55) = 22
triggerall = var(54) = 1
trigger1 = alive
value = 1.25
ignorehitpause = 1

[State -2, Defence Reducer]
Type = DefenceMulSet
triggerall = var(55) = 22
triggerall = var(54) = 1
trigger1 = alive
value = 0.75
ignorehitpause = 1

[State -2, Health Regen]
Type = LifeAdd
triggerall = var(55) = 22
triggerall = var(54) = 1
trigger1 = alive
trigger1 = (GameTime % 8 = 0)
value = 1
ignorehitpause = 1

[State -2, Meter Gain]
Type = PowerAdd
triggerall = var(55) = 22
triggerall = var(54) = 1
trigger1 = alive
trigger1 = Movetype != A
trigger1 = (GameTime % 3 = 0)
value = 10
ignorehitpause = 1
;===========================

;[State -2, Stregth Increase]
;Type = AttackMulSet
;trigger1 = 1
;value = ifElse(Power >= 3000, 1.45, ifElse (Power >= 2000, 1.3, ifElse (Power >= 1000,1.15,0)))
;ignorehitpause = 1

;===========================================================================
;===============================<-3 STATES>=================================
;===========================================================================
[StateDef -3]

[State -3, GameTime]
type = VarSet
trigger1 = 1
var(58) = GameTime
ignoreHitPause = 1

[State -3, ProjContact Reset]
type = VarSet
triggerAll = var(18)
trigger1 = (StateNo != [1000,1299])
trigger1 = (StateNo != [1300,1499])
trigger1 = (StateNo != [1500,1699])
trigger1 = StateNo != 3100
var(18) = 0

[State -3, Projectile Flag Off]
type = VarSet
trigger1 = 1
var(39) = 0
ignoreHitPause = 1

[State -3, Projectile Flag On]
type = VarSet
triggerAll = var(20) <= 0
trigger1 = NumHelper(1005)
trigger1 = Helper(1005), StateNo = 1005
trigger2 = NumHelper(1005)
trigger2 = Helper(1005), StateNo = 1015
trigger3 = NumHelper(1005)
trigger3 = Helper(1005), StateNo = 1025
trigger4 = NumHelper(1005)
trigger4 = Helper(1005), StateNo = 1035
trigger5 = NumHelper(3105)
trigger5 = Helper(3105), StateNo = 3105
var(39) = 1
ignoreHitPause = 1

[State -3, Chain Combo Reset]
type = VarSet
trigger1 = 1
var(4) = 0
ignoreHitPause = 1

[State -3, Chain Combo Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200,699]) && MoveContact
trigger2 = var(20) && (StateNo = [1000,2999]) && StateType != A && (MoveContact || var(18))
var(4) = 1
ignoreHitPause = 1

[State -3, Cancel Reset]
type = VarSet
trigger1 = 1
var(6) = 0
ignoreHitPause = 1

[State -3, Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200,699])
trigger2 = var(20) && (StateNo = [1000,2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200,699]) && Time <= 2
trigger4 = StateNo = 200 && MoveContact = [1,6]
trigger5 = StateNo = 210 && MoveContact = [1,6]
trigger6 = StateNo = 225 && MoveContact = [1,6]
trigger7 = StateNo = 230 && MoveContact = [1,6]
trigger8 = StateNo = 240 && MoveContact = [1,6]
trigger9 = StateNo = 400 && MoveContact = [1,6]
trigger10 = StateNo = 410 && MoveContact = [1,6]
trigger11 = StateNo = 430 && MoveContact = [1,6]
trigger12 = StateNo = 440 && MoveContact = [1,6]
var(6) = 1
ignoreHitPause = 1

[State -3, Super Cancel Reset]
type = VarSet
trigger1 = 1
var(7) = 0
ignoreHitPause = 1

[State -3, Super Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200,699])
trigger2 = var(20) && (StateNo = [1000,2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200,699]) && Time <= 2
trigger4 = StateNo = 200 && MoveContact = [1,6]
trigger5 = StateNo = 210 && MoveContact = [1,6]
trigger6 = StateNo = 225 && MoveContact = [1,6]
trigger7 = StateNo = 230 && MoveContact = [1,6]
trigger8 = StateNo = 240 && MoveContact = [1,6]
trigger9 = StateNo = 400 && MoveContact = [1,6]
trigger10 = StateNo = 410 && MoveContact = [1,6]
trigger11 = StateNo = 430 && MoveContact = [1,6]
trigger12 = StateNo = 440 && MoveContact = [1,6]
trigger13 = StateNo = (stateno = 1000 || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger14 = (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger15 = StateNo = (stateno = 1030 || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger16 = (StateNo = 1050 && (AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2)) && P2MoveType = H
trigger17 = StateNo = 1100 && MoveContact = [1,6]
trigger18 = StateNo = 1130 && MoveContact = [1,6]
trigger19 = StateNo = 1200 && MoveContact = [1,6]
trigger20 = StateNo = 1230 && MoveContact = [1,6]
var(7) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = 1
var(8) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Check]
type = VarSet
trigger1 = stateno = 3000 && MoveContact = [1,10]
trigger2 = stateno = 3001 && MoveContact = [1,10]
trigger3 = stateno = 3100 && MoveContact = [1,10]
trigger4 = (stateno = [1000, 3149]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) <= 5 && p2stateno = [5000,5020]
var(8) = 1
ignoreHitPause = 1

[State -3, Super Cancel Flag Reset]
type = VarSet
trigger1 = var(21)
trigger1 = (StateNo != [3000,4999]) || MoveType = H
var(21) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Flag Reset]
type = VarSet
trigger1 = var(22)
trigger1 = (StateNo != [3000,4999]) || MoveType = H
var(22) = 0
ignoreHitPause = 1

[State -3, Parry Detection]
type = Helper
triggerAll = RoundState = 2 && !NumHelper(765) && !var(20)
triggerAll = (MoveType = I && ctrl) || (StateNo = [760, 762]) || StateNo = 5120
triggerAll = (command != "rlsfwd" && command != "rlsback" && command != "rlsup" && command != "rlsdown") || AILevel
trigger1 = !AILevel && (StateType = S || StateType = C || StateNo = 5120) && (command = "fwd" || command = "down")
trigger2 = !AILevel && StateType = A && (var(3) != 1 && var(3) != 2) && command = "fwd"
trigger3 = AILevel && (StateNo != [760,762]) && InGuardDist && Random < 50
trigger4 = AILevel && (StateNo = [760,762]) && Time = 14 && Random < 667
helperType = Normal
stateNo = 765
ID = 765
name = "Parry Detection"
posType = P1
pauseMoveTime = 65535
superMoveTime = 65535

[State -3, Parry Attacks]
type = ChangeState
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = Helper(765), StateNo = 766
value = ifElse((Helper(765), Anim = 767), 762, ifElse((Helper(765), Anim = 766), 761, 760))
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 765)
attr = SA, AP
stateNo = 760
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 766)
attr = C, AP
stateNo = 761
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 767)
attr = SCA, AP
stateNo = 762
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Assert: NoWalk after Parry]
type = AssertSpecial
trigger1 = var(26) > 0
trigger1 = var(26) := (var(26)-1)
flag = NoWalk
ignoreHitPause = 1

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = NumTarget
trigger1 = Target, HitOver || (Target, GetHitVar(HitShakeTime) > 0 && Target, Time <= 0)
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
trigger1 = MoveContact = 1 && NumTarget
fvar(5) = Target, GetHitVar(xVel)
ignoreHitPause = 1

[State -3, Corner Push]
type = PosAdd
triggerAll = fvar(5)
triggerAll = (StateType = S || StateType = C) && NumTarget
triggerAll = !HitPauseTime && Target, GetHitVar(HitShakeTime) <= 0
triggerAll = (Target, StateType = S || Target, StateType = C) && !(Target, GetHitVar(yvel)) && !(Target, HitFall)
trigger1 = Target, FrontEdgeBodyDist <= abs(Target, vel x)
trigger1 = (Target, GetHitVar(xvel) * Target, Facing) > 0
trigger2 = Target, BackEdgeBodyDist <= abs(target, vel x)
trigger2 = (Target, GetHitVar(xvel) * Target, Facing) < 0
x = ifElse(Target, FrontEdgeBodyDist <= 0, -1, 1) * (Target, Facing) * fvar(5)

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
trigger1 = NumTarget
trigger1 = Target, GetHitVar(HitShakeTime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, EX FX Decrement]
type = VarAdd
trigger1 = var(25) > 0
var(25) = -1

[State -3, EX FX Reset]
type = VarSet
trigger1 = (StateNo != [1000,2999]) || MoveType = H
var(25) = 0

[State -3, EX Flash]
type = PalFX
trigger1 = !(GameTime % 2) && var(25)
time = 1
color = 0
mul = 256, 224, 0
add = 128, 128, 128
ignoreHitPause = 1

[State -3, Movement AfterImage]
type = AfterImage
triggerAll = Time = 1 && !var(20)
trigger1 = StateNo = 50 && (var(3) = 2 || var(3) = 3)
trigger2 = (StateNo = [700,715])
time = 2
timeGap = 1
frameGap = 4
length = 9
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1

[State -3, Level 1 Super AfterImage]
type = AfterImage
trigger1 = stateno = 3000 && time = 43
trigger2 = stateno = 3100 && time = 48
trigger3 = stateno = 3150 && time = 48
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 2 Super AfterImage]
type = AfterImage
trigger1 = stateno = 3030 && time = 43
trigger2 = stateno = 3130 && time = 48
trigger3 = stateno = 3180 && time = 48
trigger4 = stateno = 3200 && time = 45
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 32,32,160
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 3 Super AfterImage]
type = AfterImage
trigger1 = stateno = 3300 && time = 46
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 160,32,32
palPostBright = 0,0,0
palAdd = 0,0,0
palMul= 0.75,0.75,0.75
trans = Add1

[State -3, AfterImage Persist]
type = AfterImageTime
trigger1 = StateNo = 50 || (StateNo = [600,699])
trigger1 = (var(3) = 2 || var(3) = 3) && vel y < -1
trigger2 = var(20)
trigger3 = StateNo = [700,715]
trigger4 = (StateNo = [3000,4999])
time = 2

[State -3, Underground Juggle Prevention]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget && NumEnemy
trigger1 = (Target, Time = 0) && (Target, ID = EnemyNear, ID)
trigger1 = !(Target, HitShakeOver) && (Target, pos y > 0)
pos = ceil(P2Dist x), ceil(-pos y)
ignoreHitPause = 1

[State -3, Prevent Crossup]
type = Width
trigger1 = MoveType != H
edge = 8, 0
ignoreHitPause = 1

[State -3, Variable Height]
type = PlayerPush
triggerAll = StateType = A && MoveType != H && NumEnemy
triggerAll = P2BodyDist x = [-(EnemyNear, const(size.ground.back) + EnemyNear, const(size.ground.front)), 0]
trigger1 = P2StateType = S
trigger1 = P2Dist y >= (EnemyNear, const(size.height) - 12)
trigger2 = P2StateType = C
trigger2 = P2Dist y >= (EnemyNear, const(size.height) - 28)
trigger3 = P2StateType = L
trigger3 = P2Dist y >= 12
value = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerall = Alive && Time = 1
triggerall = StateNo = 5000 || StateNo = 5010
trigger1 = GetHitVar(AnimType) >= 2 && Random < 500
trigger2 = GetHitVar(AnimType) = 1 && Random < 375
trigger3 = GetHitVar(AnimType) = 0 && Random < (250 * (AILevel ** 2 / 64.0))
value = 5000,0+(Random % 3)
channel = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerAll = Alive && Time = 1
trigger1 = (StateNo = 5000 || StateNo = 5010) && NumEnemy
trigger1 = GetHitVar(fall) || (EnemyNear, HitDefAttr = SCA,SA,HA)
trigger2 = (StateNo = 5020 || StateNo = 5070 || StateNo = 5080)
trigger3 = (StateNo = 5050 || StateNo = 5100) && (PrevStateNo != [5000,5199])
value = 5000,0+(Random % 3)
channel = 0
ignoreHitPause = 1

[State -3, Cheap KO]
type = ChangeState
trigger1 = !Alive && (StateNo = [5000,5010])
trigger1 = (PrevStateNo = [130,131]) || (PrevStateNo = [140,141]) || (PrevStateNo = [150,153])
value = 5950
ignoreHitPause = 1

[State -3, Assert: NoKOsnd (Cheap KO)]
type = AssertSpecial
trigger1 = (StateNo = [5000,5010])
trigger1 = (PrevStateNo = [130,131]) || (PrevStateNo = [140,141]) || (PrevStateNo=[150,153])
flag = NoKOsnd
ignoreHitPause = 1

[State -3, Custom Combo Finish]
type = Helper
triggerAll = WinKO && var(20)
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = [1,4]
trigger2 = NumHelper(1005)
trigger2 = (Helper(1005), StateNo = [1005,1007]) && (Helper(1005), var(18))
trigger3 = NumHelper(1035)
trigger3 = (Helper(1035), StateNo = [1005,1007]) && (Helper(1005), var(18))
trigger4 = NumHelper(1305)
trigger4 = (Helper(1305), StateNo = [1305,1307]) && (Helper(1305), var(18))
trigger5 = NumHelper(1305)
trigger5 = (Helper(1305), StateNo = [1325,1327]) && (Helper(1305), var(18))
trigger6 = NumHelper(1355)
trigger6 = (Helper(1355), StateNo = [1355,1357]) && (Helper(1355), var(18))
trigger7 = NumHelper(1355)
trigger7 = (Helper(1355), StateNo = [1375,1377]) && (Helper(1355), var(18))
trigger8 = NumHelper(1505)
trigger9 = NumHelper(1510)
trigger10 = NumHelper(1535)
trigger11 = NumHelper(1540)
trigger12 = StateNo = 810
trigger13 = StateNo = 820
trigger14 = (StateNo = [1000,2999]) && movetype != H
helperType = Normal
stateNo = 8600
ID = 8600 + 0 * (var(23) := 900)
name = "Custom Combo Finish"
posType = left
pos = 160, -120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -3, Super Finish]
type = Helper
triggerAll = WinKO
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = 1 && (StateNo = [3000,4999])
trigger1 = var(23) := StateNo
trigger2 = (StateNo = [3000,3099])
trigger2 = var(23) := 3000
trigger3 = (StateNo = [3000,3099])
trigger3 = var(23) := 3030
trigger4 = (StateNo = [3100,3199])
trigger4 = var(23) := 3100
trigger5 = (StateNo = [3100,3199])
trigger5 = var(23) := 3130
trigger6 = (StateNo = [3100,3199])
trigger6 = var(23) := 3150
trigger7 = (StateNo = [3100,3199])
trigger7 = var(23) := 3155
trigger8 = (StateNo = [3100,3199])
trigger8 = var(23) := 3180
trigger9 = (StateNo = [3200,3299])
trigger9 = var(23) := 3200
trigger10 = (StateNo = [3300,3399])
trigger10 = var(23) := 3300
helperType = Normal
stateNo = 8600
ID = 8600
name = "Super Finish"
posType = left
pos = 160,-120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1