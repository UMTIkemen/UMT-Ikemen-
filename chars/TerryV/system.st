;============================== DODGE ROLL =====================================
[Statedef 4000]
type = S
physics = N
movetype = I
anim = 4000
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 710, Push]
type = playerpush
trigger1 = 1
value = 0

[State 710, HB]
type = hitby
trigger1 = animelemtime(7) < 0
value = SCA, AT
time = 1

[State 710, Snd]
type = playsnd
trigger1 = animelem = 1
value = s3,0
channel = 0
volumescale = 50

[State 710, Snd]
type = playsnd
trigger1 = animelem = 2
value = s100,0
channel = 1

[State 710, Vel]
type = velset
trigger1 = animelem = 2
x = 13

[State 710, Vel]
type = velset
trigger1 = animelem = 8
x = 0

[State 710, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================== TIME BREAKER ===================================
[Statedef 4100]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 4100
sprpriority = 1
facep2 = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 12
anim = -1
sound = -1
pos = 9999,9999
movetime = 12
darken = 0
p2defmul = 1
poweradd = -1000
unhittable = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 999

[State -3, Ex Flash]
type = palfx
trigger1 = time <= 10
time = 1
add = 200-(time*20),200-(time*20),200-(time*20)
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = s3,2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s4080,2
channel = 5
volumescale = 90

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8401
ID = 8401
pos = 20,-140
postype = p1
facing = 1
bindtime = 1
removetime = 7
supermovetime = 999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8401
scale = 1.5-(time*.175),1.5-(time*.175)
trans = add

[State 0, Explod]
type = Explod
trigger1 = time = 10
anim = 8400
ID = 8400
pos = -6,-121
postype = p1
facing = 1
bindtime = 1
removetime = 30
supermovetime = 999
scale = .75,.75
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 12
ID = 8400
scale = .375+((time-10)*.187),.375+((time-10)*.187)
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time =[13,25]
ID = 8400
scale = .75+((time-12)*.0003),.75+((time-12)*.0003)
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 25
ID = 8400
scale = .75+((time-12)*.0003),.75+((time-12)*.0003)
trans = addalpha
alpha = 256-((time-25)*25),256

[State 200, Hit]
type = hitdef
trigger1 = time = 0
attr = S, NA
damage = 0,0
animtype = Light
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 8,25;8,8;40
guard.pausetime = 8,25
sparkno = 9741;-1+0*(var(33):=8040)
guard.sparkno = -1+0*(var(34):=8305)
sparkxy = -10+0*(var(35):=130),var(36):= -180
hitsound = s900,0
guardsound = s2,1
ground.type = Low
air.type = Low
ground.slidetime = 5
ground.hittime = 5
guard.hittime = 5
air.hittime = 120
ground.velocity = -5*const(size.xscale),0
air.velocity = -5*const(size.xscale),-9*const(size.yscale)
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 0,0
palfx.time = 7
palfx.add = 200,250,200
palfx.mul = 256,256,256
palfx.sinadd = 150,150,150,10
;ignorehitpause = 0
;persistent = 1
id = 4100

[State 0, Helper]
type = Helper
trigger1 = movehit
trigger1 = numhelper(4150) = 0
trigger1 = numtarget(4100) = 1
trigger1 = time = [12,16]
helpertype = normal
name = "pauser"
ID = 4150
stateno = 4150
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;=============================== POWER CHARGE ==================================
[Statedef 4200]
type = S
physics = S
movetype = I
anim = 4200
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 730, Power]
type = poweradd
triggerall = power < const(data.power) && power < powermax
trigger1 = (command = "holdy" || command = "holdb")
value = ceil((2 + ifelse(time < 60, 0, (time -60) / 12))*1.5)

[State 730, Flash]
type = palfx
trigger1 = 1
time = 1
add = 75 + ceil(sin(time / 6.0 * pi) * 75), 25 + ceil(sin(time / 6.0 * pi) * 25), 0

[State 730, Snd]
type = playsnd
trigger1 = !time
value = s4200,0
channel = 0

[State 730, Snd]
type = playsnd
trigger1 = time = 0
value = s4080,1
channel = 5
volumescale = 75

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4280
ID = 4280
pos = 5,0
postype = p1
bindtime = -1
facing = 1
removetime = 999
;supermovetime = 999
;pausemovetime = 999
scale = .5*Const(size.xscale),.55*Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 176,256

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4280
ID = 4280
pos = 5,0
postype = p1
bindtime = -1
facing = 1
removetime = 999
;supermovetime = 999
;pausemovetime = 999
scale = .5*Const(size.xscale),.5*Const(size.yscale)
sprpriority = -2
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 80,256

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4281
ID = 4281
pos = 5,5
postype = p1
bindtime = -1
facing = 1
removetime = 999
supermovetime = 999
pausemovetime = 999
scale = .5*Const(size.xscale),.5*Const(size.yscale)
sprpriority = -3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 256,256

[State 730, End]
type = changestate
triggerall = time > 20
trigger1 = command != "holdbutton"
trigger2 = power >= const(data.power) || power >= powermax || roundstate != 2
value = 4205
ctrl = 0
;================================== END ========================================
[Statedef 4205]
type = S
physics = S
movetype = I
anim = 4205
velset = 0, 0
ctrl = 0

[State 731, Snd]
type = stopsnd
trigger1 = !time
channel = 0

[State 731, Snd]
type = stopsnd
trigger1 = !time
channel = 5

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 4280
trans = addalpha
alpha = 256-(time*50),256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 4281
trans = addalpha
alpha = 256-(time*50),256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time > 5

[State 730, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;================================ -2 STATES ====================================
[Statedef -2]
;=============================== KO SOUND ======================================
[State -2, KO snd]
type = varset
trigger1 = alive && var(18) > 0
trigger2 = !alive && var(18) < 2
var(18) = ifelse(alive, 0, var(18) + 1)
ignorehitpause = 1

[State -2, KO snd]
type = playsnd
trigger1 = !alive && var(18) = 1
trigger1 = var(18) := 2
value = 5500,0
;================================= DEBUG =======================================
[State -2, Debug]
type=displaytoclipboard
trigger1= 1
text="Damage=%f Power=%f Juggle=%f Terry by Vyn"
params= fvar(12), power,var(19)
ignorehitpause=1
;=============================== HITSPARKS =====================================
[State -2, Hit Detection]
type = VarSet
trigger1 = movecontact = 1 && var(30) < 0
var(30) = hitpausetime
ignorehitpause = 1

[State -2, Hit Sparks]
type = Helper
triggerall = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit = 1 && numenemy
trigger1= var(33) = [8020,8050]
trigger2 = moveguarded = 1 && numenemy
trigger2 = var(34) = 8300 || var(34) = 8305
helpertype = normal
stateno = ifelse(moveguarded, var(34), var(33))
ID = 8000
name = "HitSpark"
postype = p1
pos = ifelse(frontedgedist < (var(35)/2),(frontedgedist+3),ceil(var(35)*const(size.xscale))),ceil(var(36)*const(size.yscale))
facing = ifelse(moveguarded,-1,ifelse(random < 500,1,-1))
ownpal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
size.xscale = .9
size.yscale = .9

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
;============================== P2 FACING ======================================
[State -2, P2 Facing]
type = targetfacing
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover) && !(target, hitfall) && (target, time <= 1)
value = ifelse(p2dist x >= 0, -1, 1)
ignorehitpause = 1
;=============================== JUGGLE ========================================
[State -2, Juggle Flag]
type = VarSet
triggerall = NumEnemy && !var(19)
triggerall = numhelper(4150) = 0
trigger1 = !(EnemyNear, Ctrl) && (EnemyNear, StateNo = 5040)
trigger2 = (EnemyNear, Statetype = A) && (EnemyNear, Movetype = H)
var(19) = 1
ignorehitpause = 1

[State -2, Juggle Flag Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(19)
trigger1 = (Enemy, MoveType != H) && (Enemy, StateNo != 5040)
trigger2 = !(Enemy, HitShakeOver) || (Enemy, StateType = L) || (Enemy, Ctrl)
var(19) = 0
ignoreHitPause = 1

;================================ -3 STATES ====================================
[Statedef -3]

[State -3, Proj Reset]
type = VarSet
trigger1 = enemynear,movetype != H
var(40) = 0

;============================ DAMAGE DAMPENER ==================================
[state -3];NORMAL ATTACKS
type = varset
triggerall = (fvar(12)) > .10
triggerall = movehit = 1
trigger1 = (stateno = [200,650]) && hitcount <= 1
fvar(12) = fvar(12) -.10
ignorehitpause = 0
persistent = 0

[state -3];SPECIAL ATTACKS
type = varset
triggerall = (fvar(12)) > .10
triggerall = movehit = 1
trigger1 = (stateno = [1100,1120]) && hitcount <= 1
trigger2 = stateno = 1200 && (animelemtime(10) >= 0)
trigger3 = stateno = 1210 && (animelemtime(14) >= 0)
trigger4 = stateno = 1220 && (animelemtime(16) >= 0)
trigger5 = (stateno = [1300,1330]) && hitcount <= 1
trigger6 = (stateno = [1400,1420]) && (animelemtime(8) >= 0)
trigger7 = (stateno = [1500,1520]) && hitcount <= 1
;trigger8 = (stateno = 4100) && hitcount <= 1 ; <=========== Time Breaker
fvar(12) = fvar(12) -.10
ignorehitpause = 0

[state -3];SPECIAL PROJECTILES
type = varset
triggerall = (fvar(12)) > .10
trigger1 = (stateno = 1000) && (numhelper(1090))
trigger1 = helper(1090),var(4)
fvar(12) = fvar(12) -.10
ignorehitpause = 0

[state -3];EX ATTACKS
type = varset
triggerall = (fvar(12)) > .10
triggerall = movehit = 1
trigger1 = stateno = 2100 && hitcount <= 1
trigger2 = stateno = 2200 && (animelemtime(17) >= 0)
trigger3 = stateno = 2300 && hitcount <= 1
trigger4 = stateno = 2400 && (animelemtime(8) >= 0)
trigger5 = stateno = 2500 && hitcount <= 1
fvar(12) = fvar(12) -.15
ignorehitpause = 0

[state -3];EX PROJECTILES
type = varset
triggerall = (fvar(12)) > .10
trigger1 = numhelper(2090)
trigger1 = helper(2090),var(6) = 1
fvar(12) = fvar(12) -.15
ignorehitpause = 0

[state -3];SUPER ATTACKS
type = varset
triggerall = (fvar(12)) > .10
triggerall = movehit = 1
trigger1 = stateno = 3005 && (animelemtime(25) >= 0)
trigger2 = stateno = 3100 && (animelemtime(16) >= 0)
trigger3 = stateno = 3202 && hitcount <= 1
fvar(12) = fvar(12) -.20
ignorehitpause = 0

[state -3];SUPER PROJECTILES
type = varset
triggerall = (fvar(12)) > .10
trigger1 = (stateno = 3200) && (numhelper(3280))
trigger1 = helper(3280),var(4)
trigger2 = (stateno = 3301) && (ProjContact(3380) = 1)
trigger3 = (stateno = 3400) && (numhelper(3481))
trigger3 = helper(3481),var(4)
trigger4 = (stateno = 3501) && (ProjContact(3581) = 1) && (animelemtime(7) >= 0)
fvar(12) = fvar(12) -.20
ignorehitpause = 0

[state -3];STAY AT .10
type = varset
triggerall = (fvar(12)) < .10
trigger1 = 1
fvar(12) = .10
ignorehitpause = 1

[State -3, Reset var when the opponent recovers]
type=varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
fvar(12) = 1

;============================== GET HIT SOUNDS =================================
[State -3, GetHit Snd];usar canal cero para voz
type = playsnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 700
trigger2 = gethitvar(animtype) = 1 && random < 700
trigger3 = gethitvar(animtype) = 0 && random < 700
value= 5000,(0+(random%4))
channel = 0
ignorehitpause = 1
volumescale = 150

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
value= 5000,(0+(random%4))
channel = 0
ignorehitpause = 1
volumescale = 150

[State 0, StopSnd]; usar canales 5 y 6 para efectos
type = StopSnd
trigger1 = movetype = h
channel = 5
ignorehitpause = 1
persistent = 1

[State 0, StopSnd]; usar canales 5 y 6 para efectos
type = StopSnd
trigger1 = movetype = h
channel = 6
ignorehitpause = 1
persistent = 1
;=============================== CORNER PUSH ===================================
[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = NumTarget
trigger1 = Target, HitOver || (Target, GetHitVar(HitShakeTime) > 0 && Target, Time <= 0)
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
triggerAll = MoveType != H
trigger1 = MoveContact = 1 && NumTarget
fvar(5) = Target, GetHitVar(xVel)
ignoreHitPause = 1

[State -3, Corner Push]
type = PosAdd
triggerall = stateno != [0,105]
triggerall = stateno != [1000,1999]
triggerall = stateno != [2000,2999]
triggerall = stateno != [3000,3999]
triggerall = stateno != [4000,4999]
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
;=============================== EX EFFECT =====================================
[State -3, Ex Flash]
type = palfx
trigger1 = time <= 45
trigger1 = stateno = [2000,2900]
trigger1 = gametime % 3 = 0
time = 1
add = 110,100,0
;add = 0,76,254
color = 256
ignorehitpause = 1
persistent = 100
pausemovetime = 999

[State -3, Ex Flash]
type = palfx
trigger1 = time <= 45
trigger1 = stateno = [2000,2900]
trigger1 = gametime % 3 = 1
time = 1
add = 60,50,0
;add = 0,36,184
color = 256
ignorehitpause = 1
persistent = 100
pausemovetime = 999
;============================ TIME BREAKER =====================================
[State -3, Pauser];ON
type = varset
trigger1 = numhelper(4150)
trigger1 = helper(4150),var(21)
var(21) = 0
ignorehitpause = 1

[State -3, Pauser];OFF
type = varset
trigger1 = numhelper(4150) = 0
var(21) = 1
ignorehitpause = 1

[State -3, Pauser]
type = Pause
triggerall = stateno != [3000,3999]
triggerall = var(21) = 0
trigger1 = stateno != [1400,1420]
trigger1 = stateno != 2400
trigger1 = movetype != h
trigger1 = gametime%3 = 1
trigger1 = stateno != [800,899]
time = 1
movetime = 1
ignorehitpause = 1
pausebg = 1

[State -3, Pauser]
type = BGPalFX
triggerall = stateno != [3000,3999]
trigger1 = var(21) = 0
time = 15
invertall = 1
mul = 210,210,210
color = 0
ignorehitpause = 1

;============================ PATCHES ==========================================
[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -3, Underground Juggle Prevention]
type = targetbind
trigger1 = movecontact = 1
trigger1 = numtarget && numenemy
trigger1 = (target, time = 0) && (target, ID = enemynear, ID)
trigger1 = !(target, hitshakeover) && (target, pos y > 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1

[State -3, Rmvsnd]
type = StopSnd
trigger1 = stateno != 100
channel = 15
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[1100,1150]
id = 1180
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[1100,1150]
id = 1181
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[1100,1150]
id = 1182
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[1100,1150]
id = 1183
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[1300,1330]
id = 1310
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[1300,1330]
id = 1315
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=2100
id = 2181
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[4200,4205]
id = 4280
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[4200,4205]
id = 4281
ignorehitpause = 1


