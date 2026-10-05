;=================================== STAND =====================================
[Statedef 0]
type = S
physics = S
sprpriority = 0
anim = 1
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 1 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 1

[State 0, Dead]
type = changestate
trigger1 = !alive
value = 5050

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050
;============================ STAND TO CROUCH  =================================
[Statedef 10]
type = C
physics = C
sprpriority = 0
anim = 10
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 10, 1]
type = VelMul
trigger1 = Time = 0
x = .75

[State 10, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
;============================ CROUCHING ========================================
[Statedef 11]
type = C
physics = C
sprpriority = 0
anim = 11
velset = 0,0

[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
value = 11
;============================ CROUCH TO STAND ==================================
[Statedef 12]
type = S
physics = S
sprpriority = 0
anim = 12
velset = 0,0

[State 12, 1]
type = ChangeState
trigger1 = AnimTime = 0
;trigger1 = command != "holddown"
value = 0
;============================ WALK =============================================
[Statedef 20]
type = S
physics = S
sprpriority = 0
ctrl = 1

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = command = "holdfwd"
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = command = "holdback"
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 0, ChangeState]
type = ChangeState
trigger1 = command != "holdback" && command !="holdfwd"&&!AILevel
value = 0
ctrl = 1
;============================ JUMP START =======================================
[Statedef 40]
type = S
physics = N
movetype = I
sprpriority = 0
anim = ifelse(prevstateno = 100,45,40)
ctrl = 0
velset = 0, 0
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimTime = 0
value = s40,0
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7100
ID = 7100
pos = 8,2
postype = p1
bindtime = 1
removetime = -2
scale = .5,.75
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 175,256

[State 40, Var]
type = varset
trigger1 = !time
var(13) = ifelse(prevstateno = 100, 3, 1)

[State 40, Var]
type = varset
trigger1 = !AIlevel
trigger1 = var(13) != 3 && command != "holdup"
var(13) = 2

[State 40, Var]
type = varset
trigger1 = AIlevel
trigger1 = var(13) != 3
var(13) = 1

[State 40, Direction]
type = varset
trigger1 = !AIlevel
sysvar(1) = ifelse(!time, 0, ifelse(command = "holdfwd", 1, ifelse(command = "holdback", -1, sysvar(1))))

[State 40, Direction]
type = varset
trigger1 = AIlevel
sysvar(1) = ifelse((enemynear, movetype != A || backedgebodydist <= 10), 1, ifelse((enemynear, movetype = A), -1, 0))

[State 40, Vel]
type = velset
trigger1 = !animtime && var(13) != 3
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = ifelse(var(13) = 2, 0.7, 1) * const(velocity.jump.y)

[State 40, Vel]
type = velset
trigger1 = !animtime && var(13) = 3
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, 1.5 * const(velocity.jump.fwd.x), 1.5 * const(velocity.jump.back.x)))
y = ifelse(var(13) = 2, 0.7, 1.1) * const(velocity.jump.y)

[State 40, Vel]
type = velset
trigger1 = !animtime && var(13) = 3 && sysvar(1)
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, 1.5 * const(velocity.jump.fwd.x), 1.5 * const(velocity.jump.back.x)))
y = ifelse(var(13) = 2, 0.7, 1.1) * const(velocity.jump.y)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;============================= AIR JUMP START ==================================
[Statedef 45]
type = A
physics = N
movetype = I
sprpriority = 0
ctrl = 0
velset = 0,0

[State 45, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(44)
value = 44

[State 45, 2]
type = ChangeAnim
trigger1 = !SelfAnimExist(44)
value = 41

[State 45, 3]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 45, 4]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 45, 5]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 45, 6]
type = VelSet
trigger1 = Time = 2
x = ifelse(sysvar(1) = 0, const(velocity.airjump.neu.x), ifelse(sysvar(1)=1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
y = const(velocity.airjump.y)*.7

[State 45, 7]
type = ChangeState
trigger1 = Time = 2
value = 50
ctrl = 1
;================================ JUMP UP ======================================
[Statedef 50]
type = A
physics = N
movetype = I
sprpriority = 0

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

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
trigger1 = Pos Y >= 10 && Vel Y > 0
value = 52

;======================= JUMP DOWN (COMPATIBILITY) =============================
[Statedef 51]
type = A
physics = A

[State 51, 1]
type = Null
trigger1 = 1
;=============================== JUMP LAND =====================================
[Statedef 52]
type = S
physics = S
movetype = I
sprpriority = 0
ctrl = 0
anim = 47
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S52,0
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7100
ID = 7100
pos = 0,5
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,.75
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 170,256

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, stop]
type = velset
trigger1 = time = 0
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
trigger1 = command = "holddown"
value = 48

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 48
statetype = C

;[State 52, 1]
;type = changeanim
;trigger1 = !time&&(prevstateno = 310||(prevstateno = [1200,1250])|| prevstateno = 3200 || prevstateno = 2200)
;value = ifelse(command = "holddown", 48, 47)

[State 52, ctrl]
type=ctrlset
trigger1 = time >= 3
value = 1

[State 52, 4]
type = ChangeState
triggerall = animtime = 0
trigger1 = anim = 48
trigger2 = anim = 6
value = 11
ctrl = 1

[State 52, end]
type=changestate
;trigger1 = anim = 47
trigger1 = !animtime
value = 0
ctrl = 1
;================================ RUN ==========================================
[Statedef 100]
type = S
physics = S
movetype = I
sprpriority = 0
velset = 0, 0
anim = 100
ctrl = 1

[State 100, steps]
type = playsnd
trigger1 = anim = 100 && animelem = 3
value = s100,2
channel = 20

[State 100, steps]
type = playsnd
trigger1 = anim = 100 && animelem = 6
value = s100,3
channel = 19

[State 100, Assert]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = noautoturn

[State 100, Vel]
type = velset
trigger1 = anim = 100
x = const(velocity.run.fwd.x)

[State 100, change]
type = changeanim
triggerall = time > 7 && anim = 100
trigger1 = command != "holdfwd"&& !AILevel
trigger2 = AILevel&&roundstate!=2
value = 101
persistent = 0

[State 100, steps]
type = playsnd
trigger1 = anim = 101 && animelemtime(1) = 0
value = s100,1
channel = -1

[State 0, Explod]
type = Explod
trigger1 = anim = 101 && animelemtime(1) = 0
anim = 7101
ID = 7101
pos = 80,10
postype = p1
bindtime = 1
removetime = -2
scale = .65,.35
sprpriority = 2
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 256,256

[State 100, End]
type = changestate
trigger1 = anim = 101 && !animtime
value = 0
ctrl = 1
;=============================== DASH FWD ======================================
[Statedef 102]
type = S
physics = S
movetype = I
sprpriority = 0
velset = 0,0
anim = 102
ctrl = 0

[State 102, Vel]
type = velset
trigger1 = animelem = 1
x = -1.75 * const(velocity.run.back.x)
y = 0

[State 102, Vel]
type = velset
trigger1 = animelem = 3
x = 0
y = 0

[State 102, Snd]
type = playsnd
trigger1 = animelem = 2
value = s100,0
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S52,0
channel = -1
volumescale = 50

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7101
ID = 7101
pos = 5,10
postype = p1
bindtime = 1
removetime = -2
scale = .5,.375
sprpriority = 2
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 256,256

[State 52, ctrl]
type=ctrlset
trigger1 = time > 18
value = 1

;[State 102, End]
;type = changestate
;triggerall = (animelemtime(2) > 4) && (animelemtime(3) < 0)
;trigger1 = command = "holdfwd"&&!AIlevel
;trigger2 = AIlevel
;value = 100

[State 102, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;=============================== BACK DASH =====================================
[Statedef 105]
type = A
physics = S
movetype = I
sprpriority = 0
velset = 0,0
anim = 105
ctrl = 0

[State 105, Vel]
type = velset
trigger1 = animelem = 1
x = 1.75*const(velocity.run.back.x)
y = 0

[State 102, Vel]
type = velset
trigger1 = animelem = 4
x = 0
y = 0

[State 105, Snd]
type = playsnd
trigger1 = animelem = 2
value = s100,0
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S52,0
channel = -1
volumescale = 50

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 7100
ID = 7100
pos = 0,5
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,.75
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 170,256

[State 105, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================= WIN STATE DECIDER ===============================
[Statedef 180]
type = S

[State 180, winSGS]
type=changestate
trigger1 = time = 0
value = 181

;================================== WINPOSE ====================================
[Statedef 181]
type = S
sprpriority = 2
ctrl = 0
anim = 181
velset = 0,0

[State 351, win]
type = assertspecial
trigger1 = time < 200
flag = roundnotover

[State 801, Grab Sound]
type = PlaySnd
trigger1 = animelem = 1
value = s180,0
channel = 0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;=============================== PRE INTRO =====================================
[Statedef 190]
type = S
ctrl = 0
anim = 190
velset = 0,0
sprpriority = 1

[State 190, 1] ;Freeze animation until PreIntro is over
type = ChangeState
trigger1 = RoundState = 0
value = 191

[State 190, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, 4] ;Change to stand state
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;=================================== INTRO =====================================
[Statedef 191]
type = S
ctrl = 0
anim = 190;ifelse(random<500,190,191)
velset = 0,0
sprpriority = 1

[State 191, Anim]
type = ChangeAnim
trigger1 = RoundState = 0
value = 190;ifelse(random<500,190,191)
persistent = 0

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 3
value = s190,0
channel = 0

[State 191, Assert]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;=================================== TAUNT =====================================
[Statedef 195]
type = S
physics = S
movetype = I
ctrl = 0
anim = 195
velset = 0,0
sprpriority = 2

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 1
value = s195,0
channel = 0

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
