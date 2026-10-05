;=============================== V-SKILL =======================================
[Statedef 4000]
type = S
movetype = A
physics = S
anim = 4000
velset=0,0
ctrl=0
sprpriority = 1
facep2 = 1
poweradd = 0
juggle = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S4000,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S100,0
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S0,5
channel = 2
volumescale = 150

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(7) >=0
trigger1 = animelemtime(11) <=0
value = SCA,NP,SP
time = 1
ignorehitpause = 1
persistent = 1

[State 200]
type = StatetypeSet
trigger1 = AnimElem =5
statetype =A
physics = N

[State 200]
type = VelSet
trigger1 = AnimElem=5,=1
x = 4
y = -17.5

[State 200]
type = VelAdd
trigger1 = AnimElemTime(5)>=1
y = (.48*ifelse(AnimElem=7,>0,4.0,1.0))*2

[State 200]
type = VelSet
trigger1 = AnimElem=1
x = 4

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 7103
ID = 7103
pos = -50,10
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1,1.125
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 1200, hitb]
type = hitdef
trigger1 = animelem = 11
attr = A, SA
damage = 60,0
animtype = Hard
guardflag = A
hitflag = AF
priority = 4, Hit
pausetime = 12,12
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=60), var(36):=-80
hitsound   = S1,5
guardsound = S2,1
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -8,0
air.velocity = -2,-14.5
air.type = Low
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 30,15
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
yaccel = 1.1
forcestand = 1
airguard.cornerpush.veloff = 0
id = 4000
persistent = 0

[State 1200, hitb]
type = hitdef
trigger1 = movehit = 0
trigger1 = animelem = 12
attr = A, SA
damage = 60,0
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=65), var(36):= -60
hitsound   = S1,5
guardsound = S2,1
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -8,0
air.velocity = -2,-15.5
air.type = Low
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 30,15
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
yaccel = 1.1
forcestand = 1
airguard.cornerpush.veloff = 0
id = 4000
persistent = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = animelemtime(6) >= 0
trigger1 = Pos Y >= 20 && Vel Y > 0
value = 4050
;================================== LAND =======================================
[Statedef 4050]
type = S
movetype = I
physics = S
ctrl = 0
anim = 4050
velset = 0,0
sprpriority = 1

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

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

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=============================== SHINRYUKEN ====================================
[Statedef 4100]
type = S
movetype = A
physics = S
anim = 4100
velset = 0, 0
ctrl = 0
sprpriority = 1
juggle = 0
poweradd = 0

[State 3000, Superpause]
type = superpause
trigger1 = time = 0
time = 7
movetime = 7
p2defmul = 1
unhittable = 1
anim = -1
sound = -1
darken = 0
poweradd = -1500

[State 3000, carga]
type=helper
trigger1=time = 0
helpertype=normal
stateno=8400
ID=8400
name="Carga"
postype=p1
pos = 0,-100
ownpal = 1
persistent = 0
supermovetime = 9999
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = time <= 10
time = 1
add = 240-(time*24),200-(time*20),200-(time*20)
invertall = 0
color = 0+(time*25)
ignorehitpause = 1

;---------------------------------
[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1
;---------------------------------

[State 3001, Width]
type = Width
trigger1 = 1
player = 4,0
edge = 1,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = S4100,1
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = S4100,0
volumescale = 200
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s1080,2
channel = 3

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 1
StateType = A
physics = N

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(6) = 0
y = -8

[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(21) >= 0
y = 1

[State 1200, 1]
type = PlayerPush
trigger1 = (animelemtime(5) >= 0) && (animelemtime(24) < 0)
value = 0
ignorehitpause = 1
persistent = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 20
value = SCA,NP,SP,HP
time = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 18
value = SCA,NT,ST
time = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 11
value = A,NA,SA
time = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(3) = 0
anim = 4180
ID = 4180
pos = -4,-16
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = .5*const(size.xscale),.5*const(size.xscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0
supermovetime = 999
trans = add

[State 0, Explod]
type = Explod
trigger1 = animelemtime(3) = 0
anim = 4181
ID = 4181
pos = -4,-16
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = .5*const(size.xscale),.5*const(size.xscale)
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 0
supermovetime = 999
trans = sub

[State 0, Explod]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 4182
ID = 4182
pos = -10,-280
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = .5*Const(size.xscale),.5*Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = add

[State 0, Explod]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 4183
ID = 4183
pos = -10,-280
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = .5*Const(size.xscale),.5*Const(size.yscale)
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = sub

[State 200, Hit]
type = hitdef
triggerall = numtarget(4101) = 0
trigger1 = animelem = 4
attr = S, HA
damage = 10,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
snap = 30,0
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 4,1
sparkno = -1+0*(var(33):=8030)**0
guard.sparkno= -1+0*(var(34):=8300)
sparkxy = -10+0*(var(35):=20),var(36):=-45
hitsound = s1,0
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime = 20
guard.hittime = 7
ground.velocity = 3,0
ground.cornerpush.veloff = 0
air.hittime = 120
air.velocity = 3,-9
air.cornerpush.veloff = 0
yaccel = 1
fall = 0
fall.recover = 1
fall.recovertime = 120
getpower = 0,0
givepower = 20,10
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0
id = 4100

[State 1100, HitDef]
type = HitDef
triggerall = numtarget(4101) = 0
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
trigger6 = AnimElem = 16
trigger7 = AnimElem = 18
;trigger8 = AnimElem = 20
attr = S, HA
animtype  = up
air.animtype  = up
damage = 7,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 3,2
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=15), var(36):=-115
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 4*ifelse(p2dist X<0,-1,1)*const(size.xscale),-6.5*const(size.yscale)
guard.velocity = -5.5*const(size.xscale)
air.velocity = 4*ifelse(p2dist X<0,-1,1)*const(size.xscale),-5.5*const(size.yscale)
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .75
getpower = 0,0
givepower = 20,10
forcestand = 1
persistent = 1
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0
fall.envshake.time = 10
fall.envshake.ampl = 3
id = 4100

[State 1100, HitDef]
type = HitDef
triggerall = command = "x" || command = "y" || command = "z" || command = "holdp"
trigger1 = AnimElem = 7
trigger2 = AnimElem = 9
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 15
trigger6 = AnimElem = 17
;trigger8 = AnimElem = 20
attr = S, HA
animtype  = up
air.animtype  = up
damage = 10,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 3,3
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=5), var(36):=-115
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 4*ifelse(p2dist X<0,-1,1)*const(size.xscale),-5.5*const(size.yscale)
guard.velocity = -5.5*const(size.xscale)
air.velocity = 4*ifelse(p2dist X<0,-1,1)*const(size.xscale),-6.5*const(size.yscale)
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .75
getpower = 0,0
givepower = 20,10
forcestand = 1
persistent = 1
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0
id = 4100

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 20
attr = S, HA
animtype  = up
air.animtype  = up
damage = 44,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 3,2
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=10), var(36):=-115
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -1.75,-7.75*const(size.yscale)
guard.velocity = -5.5*const(size.xscale)
air.velocity = -1.75,-6.75*const(size.yscale)
airguard.velocity = -13,-2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .75
getpower = 0,0
givepower = 20,10
forcestand = 1
persistent = 1
palfx.time = 32
palfx.add = 220,110,-40
palfx.mul = 256,192,128
palfx.sinadd = -20,-20,-20,4
palfx.color = 0
id = 4101

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(6) >= 2
value = 1107
;============================== POWER CHARGE ================================
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
trigger1 = (command = "holdx" || command = "holdy" || command = "holdz" || command = "holda" || command = "holdb" || command = "holdc")
value = (2 + ifelse(time < 60, 0, (time -60) / 12))*2

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

;[State 730, Flash]
;type = palfx
;trigger1 = 1
;time = 1
;add = 40 + ceil(sin(time / 6.0 * pi) * 75), 15 + ceil(sin(time / 6.0 * pi) * 25), 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4280
ID = 4280
pos = 0,2
postype = p1
bindtime = -1
facing = 1
removetime = 999
supermovetime = 999
pausemovetime = 999
scale = .85*Const(size.xscale),.45*Const(size.yscale)
sprpriority = 2
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 200,256

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4280
ID = 4281
pos = 0,2
postype = p1
bindtime = -1
facing = 1
removetime = 999
supermovetime = 999
pausemovetime = 999
scale = .85*Const(size.xscale),.45*Const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 56,256

;[State 0, Explod]
;type = Explod
;trigger1 = time = 0
;anim = 4280
;ID = 4281
;pos = 0,2
;postype = p1
;bindtime = -1
;facing = 1
;removetime = 999
;supermovetime = 999
;pausemovetime = 999
;scale = .85*Const(size.xscale),.45*Const(size.yscale)
;sprpriority = -1
;ownpal = 1
;removeongethit = 1
;trans = sub

[State 730, End]
type = changestate
triggerall = time > 25
trigger1 = command != "holdbutton"
trigger2 = power >= const(data.power) || power >= powermax || roundstate != 2
value = 4205
ctrl = 0
;================================= END ====================================
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
alpha = 100-(time*12),256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 4281
trans = addalpha
alpha = 156-(time*19),256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !animtime

[State 730, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================ -2 STATES ========================================
[Statedef -2]

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
text="Damage=%f Power=%f Juggle=%f Ken by Vyn"
params= fvar(12), power,var(19)
ignorehitpause=1
;================================ HITSPARKS ====================================
[State -2, Hit Detection]
type = VarSet
trigger1 = movecontact = 1 && var(30) < 0
var(30) = hitpausetime
ignorehitpause = 1

[State -2, Sparks]
type=helper
triggerall = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit=1 && numenemy
;trigger1 = var(33) = 8100 || var(33) = 8110 || var(33) = 8120
trigger1 = var(33) = [8020,8052]
trigger2 = moveguarded=1 && numenemy
trigger2 = var(34)=8300 || var(34)=8305
helpertype = normal
stateno = ifelse(moveguarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = p1
pos = ifelse(p2dist x <-20,p2dist x, ifelse(frontedgedist < (var(35)/2),(frontedgedist+3),ceil(var(35)*const(size.xscale)))),ceil(var(36)*const(size.yscale))
facing = ifelse(p2dist x <-20,1,-1);-1;ifelse(moveguarded,-1,(ifelse(random<500,1,-1)))
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
ignorehitpause = 1
size.xscale = .85
size.yscale = .85

[State -2, Hit Detection]
type = varset
trigger1 = 1
var(30) = -1

[State -2, Hit Detection]
type = varrangeset
trigger1 = movetype = I
trigger2 = movetype = H && time
first = 30
last = 36
value = -1
ignorehitpause = 1
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

;============================= -3 STATES =======================================
[Statedef -3]

;========================= SFIV DAMAGE DAMPENER ================================
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
trigger1 = stateno = 1100 && hitcount <= 1
trigger2 = stateno = 1101 && (animelemtime(4) >= 0)
trigger3 = stateno = 1102 && (animelemtime(5) >= 0)
trigger4 = stateno = 1200 && (animelemtime(7) >= 0)
trigger5 = stateno = 1205 && (animelemtime(13) >= 0)
trigger6 = stateno = 1210 && (animelemtime(20) >= 0)
trigger7 = stateno = 1220 && hitcount <= 1
fvar(12) = fvar(12) -.10
ignorehitpause = 0

[state -3];SPECIAL PROJECTILES
type = varset
triggerall = (fvar(12)) > .10
trigger1 = numhelper(1090)
trigger1 = helper(1090),var(4)
trigger2 = numhelper(1490)
trigger2 = helper(1490),var(4)
fvar(12) = fvar(12) -.10
ignorehitpause = 0
persistent = 0

[state -3];EX ATTACKS
type = varset
triggerall = (fvar(12)) > .10
triggerall = movehit = 1
trigger1 = stateno = 2100 && (animelemtime(18) >= 1)
trigger2 = stateno = 2200 && (animelemtime(17) >= 1)
trigger3 = stateno = 2210 && hitcount <= 1
fvar(12) = fvar(12) -.15
ignorehitpause = 0

[state -3];EX PROJECTILES
type = varset
triggerall = (fvar(12)) > .10
;triggerall = movehit = 1
trigger1 = numhelper(2090)
trigger1 = helper(2090),var(6) = 1
trigger2 = numhelper(2490)
trigger2 = helper(2490),var(6) = 1
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
persistent = 0

[state -3];V-SKILL ATTACKS
type = varset
triggerall = (fvar(12)) > .10
triggerall = movehit = 1
trigger1 = stateno = 4000 && hitcount <= 1
fvar(12) = fvar(12) -.10
ignorehitpause = 0

[state -3];V-TRIGGER ATTACKS
type = varset
triggerall = (fvar(12)) > .10
triggerall = movehit = 1
trigger1 = stateno = 4100 && (animelemtime(20) >= 0)
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
;=============================== EX AFTERIMAGE =================================
;[State -3, AfterImage]
;type=afterimage
;trigger1 = stateno = 2000 && time = 1
;trigger2 = stateno = 2100 && time = 1
;trigger3 = stateno = 2200 && time = 1
;trigger4 = stateno = 2210 && time = 1
;trigger5 = stateno = 2400 && time = 1
;time = 1
;timegap = 1
;framegap = 2
;length = 6
;palbright = 1,1,1
;palcontrast = 560,256,0
;paladd=0,0,0
;palmul=.5,.5,.5
;trans=add
;palcolor = 0
;============================ TRIGGER AFTERIMAGE ===============================
[State -3, AfterImage]
type=afterimage
trigger1 = stateno = 4100 && time = 8
time = 1
timegap = 1
framegap = 9
length = 25
palbright = 1,1,1
palcontrast = 136,136,136
paladd = 0,0,0
;palmul=.5,.5,.5
trans = add1
palcolor = 150
;=========================== SUPER LVL1 AFTERIMAGE =============================
[State -3, AfterImage]
type=afterimage
trigger1 = stateno = 3000 && time = 61
time = 1
timegap = 1
framegap = 9
length = 25
;palbright = 1,1,1
palcontrast = 40,40,126
paladd = 0,0,0
;palmul=.5,.5,.5
trans = add1
palcolor = 100
;=========================== SUPER LVL2 AFTERIMAGE =============================
[State -3, AfterImage]
type=afterimage
trigger1 = stateno = 3200 && time = 59
trigger2 = stateno = 3100 && time = 66
time = 1
timegap = 1
framegap = 9
length = 25
palcontrast = 116,0,116
paladd = 0,0,0
trans = add1
palcolor = 100
;=========================== SUPER LVL3 AFTERIMAGE =============================
[State -3, AfterImage]
type=afterimage
trigger1 = stateno = 3301 && time = 1
trigger2 = stateno = 3303 && time = 165
time = 1
timegap = 1
framegap = 9
length = 25
palcontrast = 186,20,20
paladd = 0,0,0
trans = add1
palcolor = 100
;============================ AFTERIMAGE PERSIST ===============================
[State -3, AfterImage Persist Supers]
type=afterimagetime
trigger1 = stateno = 3000 && time > 60
trigger2 = stateno = [3001,3004]
trigger3 =(stateno = 3005) && (animelemtime(32) <= 0)
trigger4 = stateno = 3100 && time > 60
trigger5 = stateno = 3200 && time > 60
trigger6 = stateno = [3201,3204]
trigger7 = stateno = 3301 && time <= 10
trigger8 = stateno = 3303 && time >=165
time = 2
ignorehitpause=1

[State -3, AfterImage Persist System]
type=afterimagetime
trigger1 = stateno = 4100 && time > 7
time = 2
ignorehitpause=1
;================================= CORNER PUSH =================================
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
trigger1 = gametime % 4 = 0
time = 1
add = 180,56,0
;add = 0,76,254
color = 256
ignorehitpause = 1

[State -3, Ex Flash]
type = palfx
trigger1 = time <= 45
trigger1 = stateno = [2000,2900]
trigger1 = gametime % 4 = 1
time = 1
add = 70,0,0
;add = 0,36,184
color = 256
ignorehitpause = 1
;================================= PATCHES =====================================
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

[State -3, RemoveExplod];Shoryu
type = RemoveExplod
trigger1 = stateno != 1102
id = 1170
ignorehitpause = 1
persistent = 1

[State -3, RemoveExplod];Shoryu
type = RemoveExplod
trigger1 = stateno != 1102
id = 1171
ignorehitpause = 1
persistent = 1

[State -3, RemoveExplod];Tatsu
type = RemoveExplod
trigger1 = stateno != [1200,1220]
id = 1270
ignorehitpause = 1
persistent = 1

[State -3, RemoveExplod];Shoryu
type = RemoveExplod
trigger1 = stateno != 2100
id = 2170
ignorehitpause = 1
persistent = 1

[State -3, RemoveExplod];Shoryu
type = RemoveExplod
trigger1 = stateno != 2100
id = 2171
ignorehitpause = 1
persistent = 1

[State -3, RemoveExplod];Shoryu
type = RemoveExplod
trigger1 = stateno != 2100
id = 2172
ignorehitpause = 1
persistent = 1

[State -3, RemoveExplod];Shoryu
type = RemoveExplod
trigger1 = stateno != 2100
id = 2173
ignorehitpause = 1
persistent = 1





