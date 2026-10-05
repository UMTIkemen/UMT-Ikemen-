;=============================== POWER WAVE ====================================
[Statedef 1080]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1080
sprpriority = 2
juggle  = 1

;---------------------------------
[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)
;---------------------------------

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1082
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1005, Anim]
type = changeanim
trigger1 = anim != 1080
value = 1080

[State 1005, Button]
type = varset
trigger1 = !time && !prevstateno
var(10) = root, var(10)

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 3, 13, ifelse(var(10) = 2, 10, 7))
y = 0

[State 1005, Trans]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 1005, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag =
sparkxy = -10, 0

[State 1005, Hit]
type = hitdef
trigger1 = 1
animtype = Hard
air.animtype = Back
fall.animtype = Back
attr = S, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(75*fvar(12)),0
pausetime = 0,12
ground.type = Low
air.type = Low
hitsound = -1
guardsound = s2,1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -32
ground.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 120
ground.velocity = -20*const(size.xscale), 0
air.velocity = -9*const(size.xscale), -10*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1.16
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 22
forcestand = 1
getpower = 140*var(21),70*var(21)
givepower = 70,35
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
sprpriority = 3
id = 1080

;hit detection for combos -----------
[State 1005, Comboflag]
type = varset
trigger1 = movehit && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
;------------------------------------

;hit detection for dampener ---------
[State 1005, Comboflag]
type = varset
trigger1 = movehit && numtarget
trigger1 = !(target, ishelper)
var(4) = 1
ignorehitpause = 1
;------------------------------------

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 1081
ignorehitpause = 1

[State 1005, End]
type = destroyself
trigger1 = pos x != [ -600, 620]


;=============================== HIT PAUSE =====================================
[Statedef 1081]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 2
movehitpersist = 1

[State 1006, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = s1080,1
channel = 6
persistent = 0
ignorehitpause = 1

[State 1006, Spark]
type = helper
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = ifelse(moveguarded, 8305, 8030)
ID = 8000
name = "Spark"
postype = p1
pos = -10, 0
facing = ifelse(moveguarded,-1,ifelse(random < 500,1,-1))
ownpal = 1
size.xscale = .9
size.yscale = .9
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1006, End]
type = changestate
trigger1 = time >= 0
value = 1082


;================================= VANISH ======================================
[Statedef 1082]
type = A
physics = N
movetype = A
anim = 9741
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

;hit detection 2----------------------
[State 1005, Comboflag]
type = varset
trigger1 = time = 1
var(4) = 0
ignorehitpause = 1
;------------------------------------

[State 0, Explod]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 1085
ID = 1085
pos = -5,5
postype = p1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = add

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0
y = 0
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = time = 8
;========================= POWER DUNK 1ST INCLINE ==============================
[Statedef 1401]
type = A
physics = N
anim = 1401
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -20
scale = 1*root,Const(size.xscale),1*root,Const(size.yscale)
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -15

[State 1007, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,movetype = h
;========================= POWER DUNK 2ND INCLINE ==============================
[Statedef 1402]
type = A
physics = N
anim = 1402
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = time <= 31
time = 1
pos = 0,0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -40
scale = 1*root,Const(size.xscale),1*root,Const(size.yscale)
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = time = 33
trigger2 = root,movetype = h
;========================= POWER DUNK 1ST INCLINE ==============================
[Statedef 1411]
type = A
physics = N
anim = 1411
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -20
scale = 1*root,Const(size.xscale),1*root,Const(size.yscale)
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -15

[State 1007, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,movetype = h
;========================= POWER DUNK 2ND INCLINE ==============================
[Statedef 1412]
type = A
physics = N
anim = 1412
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = time <= 31+4
time = 1
pos = 0,0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -40
scale = 1*root,Const(size.xscale),1*root,Const(size.yscale)
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = time = 33+4
trigger2 = root,movetype = h
;========================= POWER DUNK 1ST INCLINE ==============================
[Statedef 1421]
type = A
physics = N
anim = 1421
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -20
scale = 1*root,Const(size.xscale),1*root,Const(size.yscale)
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -15

[State 1007, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,movetype = h
;========================= POWER DUNK 2ND INCLINE ==============================
[Statedef 1422]
type = A
physics = N
anim = 1422
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = time <= 31+8
time = 1
pos = 0,0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -40
scale = 1*root,Const(size.xscale),1*root,Const(size.yscale)
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = time = 33+8
trigger2 = root,movetype = h
;========================= POWER DUNK 1ST BLUE =================================
[Statedef 1481]
type = A
physics = N
anim = 1481
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 205,-50
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -40
scale = 1*root,Const(size.xscale),1*root,Const(size.yscale)
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = root,stateno != [1400,1420]
trigger2 = root,movetype = h
;========================= POWER DUNK 2ND BLUE =================================
[Statedef 1482]
type = A
physics = N
anim = 1482
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 202,-35
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -40
scale = .75*root,Const(size.xscale),1*root,Const(size.yscale)
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,movetype = h
;============================== EX POWER WAVE ==================================
[Statedef 2080]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1080
sprpriority = 2

;---------------------------------
[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)
;---------------------------------

;[State 1005, HitOverride]
;type = hitoverride
;trigger1 = 1
;attr = SCA, AA, AP, AT
;time = -1
;stateno = 2082
;ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1005, Anim]
type = changeanim
trigger1 = anim != 1080
value = 1080

[State 1005, Vel]
type = velset
trigger1 = 1
x = 13

[State 1005, Trans]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 1005, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag =
sparkxy = -10, 0

[State 1005, Hit]
type = hitdef
trigger1 = 1
animtype = Hard
air.animtype = Back
fall.animtype = Back
attr = S, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(50*fvar(12)),0
pausetime = 0,12
ground.type = Low
air.type = Low
hitsound = -1
guardsound = s2,1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -32
ground.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 120
ground.velocity = -20*const(size.xscale), 0
air.velocity = -9*const(size.xscale), -10*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1.16
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 22
forcestand = 1
getpower = 0,0
givepower = 80,40
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
id = 2090

;hit detection for combos -----------
[State 1005, Comboflag]
type = varset
trigger1 = movehit && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
;------------------------------------

;hit detection for dampener ---------
[State 1005, Comboflag]
type = parentvarset
trigger1 = movehit && numtarget
trigger1 = !(target, ishelper)
var(40) = 1
ignorehitpause = 1

;hit detection for dampener ---------
[State 1005, Comboflag]
type = varset
trigger1 = movehit && numtarget
trigger1 = !(target, ishelper)
var(4) = 1
ignorehitpause = 1
;------------------------------------

[State 1025, hitvar]
type = varadd
trigger1 = !time
var(2) = 1

[State 1025, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 2081
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = movecontact
trigger2 = pos x != [ -600, 620]
;trigger3 = var(2) = 2
id = 10800

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 2081
ignorehitpause = 1

[State 1005, End]
type = destroyself
trigger1 = pos x != [ -600, 620]

;=============================== HIT PAUSE =====================================
[Statedef 2081]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 2
movehitpersist = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = .5

;[State 1006, Freeze]
;type = posfreeze
;trigger1 = 1
;value = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = s1080,1
channel = 6
persistent = 0
ignorehitpause = 1

[State 1006, Spark]
type = helper
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = ifelse(moveguarded, 8305, 8030)
ID = 8000
name = "Spark"
postype = p1
pos = -10, 0
facing = ifelse(moveguarded,-1,ifelse(random < 500,1,-1))
ownpal = 1
size.xscale = .9
size.yscale = .9
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1006, End]
type = changestate
trigger1 = time >= 5
value = ifelse(var(2) < (3), 2080, 2082);2082


;================================= VANISH ======================================
[Statedef 2082]
type = A
physics = N
movetype = A
anim = 9741
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

;hit detection 2---------------------
[State 1005, Comboflag]
type = varset
trigger1 = movehit
trigger1 = time = 0
var(6) = 1
ignorehitpause = 1
;------------------------------------

[State 0, Explod]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 1085
ID = 1085
pos = -5,5
postype = p1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = add

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0
y = 0
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = time = 1

;============================== EX POWER WAVE ==================================
[Statedef 2083]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1080
sprpriority = 2

;---------------------------------
[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)
;---------------------------------

;[State 1005, HitOverride]
;type = hitoverride
;trigger1 = 1
;attr = SCA, AA, AP, AT
;time = -1
;stateno = 2082
;ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1005, Anim]
type = changeanim
trigger1 = anim != 1080
value = 1080

[State 1005, Vel]
type = velset
trigger1 = 1
x = 13

[State 1005, Trans]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 1005, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag =
sparkxy = -10, 0

[State 1005, Hit]
type = hitdef
trigger1 = 1
animtype = Hard
air.animtype = Back
fall.animtype = Back
attr = S, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(50*fvar(12)),0
pausetime = 0,12
ground.type = Low
air.type = Low
hitsound = -1
guardsound = s2,1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -32
ground.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 120
ground.velocity = -20*const(size.xscale), 0
air.velocity = -9*const(size.xscale), -10*const(size.yscale)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1.16
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 22
forcestand = 1
getpower = 0,0
givepower = 80,40
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
id = 2090

;hit detection for combos -----------
[State 1005, Comboflag]
type = varset
trigger1 = movehit && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
;------------------------------------

;hit detection for dampener ---------
[State 1005, Comboflag]
type = varset
trigger1 = movehit && numtarget
trigger1 = !(target, ishelper)
var(4) = 1
ignorehitpause = 1
;------------------------------------

[State 1025, hitvar]
type = varadd
trigger1 = !time
var(2) = 1

[State 1025, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 2081
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = movecontact
trigger2 = pos x != [ -600, 620]
;trigger3 = var(2) = 2
id = 10800

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 2081
ignorehitpause = 1

[State 1005, End]
type = destroyself
trigger1 = pos x != [ -600, 620]



;========================= POWER DUNK 1ST INCLINE ==============================
[Statedef 2401]
type = A
physics = N
anim = 2401
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -20
scale = 1*root,Const(size.xscale),1*root,Const(size.yscale)
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -15

[State 1007, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,movetype = h
;========================= POWER DUNK 2ND INCLINE ==============================
[Statedef 2402]
type = A
physics = N
anim = 2402
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = time <= 31+4
time = 1
pos = 0,0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -40
scale = 1*root,Const(size.xscale),1*root,Const(size.yscale)
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = time = 33+4
trigger2 = root,movetype = h
;========================= POWER DUNK 1ST BLUE =================================
[Statedef 2481]
type = A
physics = N
anim = 1481
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 205,-50
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -40
scale = 1*root,Const(size.xscale),1*root,Const(size.yscale)
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = root,stateno != 2400
trigger2 = root,movetype = h
;============================ TRINITY GEYSER ===================================
[StateDef 3090]
type = S
physics = N
movetype = A
anim = 3081
sprpriority = 4
juggle = 0
movehitpersist = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s3080,1
channel = 6

[State 0, Explod]
type = Explod
;trigger1 = numexplod(3081) = 0
trigger1 = time = 0
anim = 3081
ID = 3081
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = 1,1.2
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 1
trans = addalpha
alpha = 30,256

[State 0, Explod]
type = Explod
;trigger1 = numexplod(3081) = 0
trigger1 = time = 0
anim = 3081
ID = 3081
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = 1,1.2
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 1
trans = add

[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = s3090,2
channel = -1
volumescale = 100

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2100, Wolf]
type = EnvShake
trigger1 = time = 0
time = 8
ampl = -12
ignorehitpause = 1

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
stateno = 3281
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = movecontact = 0
animtype = heavy
air.animtype = Back
fall.animtype = Back
attr = S, HP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(102*fvar(12)),0
pausetime = 0,2
ground.type = High
air.type = High
hitsound = s1,0
guardsound = s2,1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -32
ground.slidetime = 22
ground.hittime = 22
guard.hittime = 22
air.hittime = 120
ground.velocity = -17*const(size.xscale),-17*const(size.yscale)
air.velocity = -17*const(size.xscale), -16*const(size.yscale)
guard.velocity = -22
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1.1
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
getpower = 0,0
givepower = 105,52
fall.envshake.time = 12
fall.envshake.ampl = -2
sprpriority = 3
id = 3090

[State 1000, End]
type = destroyself
trigger1 = !animtime
;============================== POWER GEYSER ===================================
[Statedef 3280]
type = S
physics = N
movetype = A
ctrl = 0
anim = 3280
sprpriority = 3
hitcountpersist = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s3080,0
channel = 5

[State 0, Explod]
type = Explod
;trigger1 = numexplod(3280) = 0
trigger1 = time = 0
anim = 3280
ID = 3280
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 1
trans = add

[State 0, Explod]
type = Explod
;trigger1 = numexplod(3280) = 0
trigger1 = time = 0
anim = 3280
ID = 3280
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 1
trans = addalpha
alpha = 100,256

;---------------------------------
[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)
;---------------------------------

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 3281
ignorehitpause = 1

[State 3005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 3005, Anim]
type = changeanim
trigger1 = anim != 3280
value = 3280

[State 1005, Trans]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 14
freq = 60
ampl = -16

;[State 0, BindToParent]
;type = BindToParent
;trigger1 = 1
;time = 1
;pos = 130,0
;facing = 1

[State 1005, Hit]
type = hitdef
trigger1 = movecontact = 0
;animtype = Up
air.animtype = Back
fall.animtype = Back
attr = S, HP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(205*fvar(12)),0
pausetime = 0,2
ground.type = High
air.type = High
hitsound = -1
guardsound = s2,1
sparkno = -1
guard.sparkno= -1
sparkxy = -10,-10
ground.slidetime = 22
ground.hittime = 22
guard.hittime = 22
air.hittime = 120
ground.velocity = -6*const(size.xscale),-22*const(size.yscale)
air.velocity = -6*const(size.xscale), -21*const(size.yscale)
guard.velocity = -22
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1.2
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
getpower = 0,0
givepower = 280,140
fall.envshake.time = 12
fall.envshake.ampl = -2
sprpriority = 3
id = 3280

;hit detection for combos -----------
[State 1005, Comboflag]
type = varset
trigger1 = movehit && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
;------------------------------------

;hit detection for dampener ---------
[State 1005, Comboflag]
type = varadd
trigger1 = movehit && numtarget
trigger1 = !(target, ishelper)
var(4) = 1
ignorehitpause = 1
;------------------------------------

[State 1005, End]
type = changestate;destroyself
trigger1 = animtime = 0
trigger2 = root,movetype = H
trigger3 = var(4) = 2
value = 3281
;================================= VANISH ======================================
[Statedef 3281]
type = S
physics = N
movetype = A
ctrl = 0
anim = 9741

;hit detection ----------------------
[State 1005, Comboflag]
type = varset
trigger1 = 1
var(4) = 0
ignorehitpause = 1
;------------------------------------

[State 1005, End]
type = destroyself
trigger1 = time = 20
trigger2 = root,movetype = H
;============================= BUSTER HELPER ===================================
[Statedef 3380]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 9741
sprpriority = 3

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 12
freq = 60
ampl = -16

;------------------------------------
[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)
;------------------------------------

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3380
ID = 3380
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
pausemovetime = 999
scale = 1.125,1.125
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3380
ID = 3380
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
pausemovetime = 999
scale = 1.125,1.125
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = s1080,0
channel = 5

[State 1000, Proj]
type = Projectile
trigger1 = time = 6
projanim = 33800
Projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 10
projhits = 1
offset = 0, 0
projpriority = 7
projsprpriority = 4
velocity = 0
attr = S, HP
damage = ceil(150*fvar(12)),0
animtype = heavy
hitflag = MAF
guardflag = MA
pausetime = 2,4
sparkno = -1+0*(var(33):=8040)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=163), var(36):=-152
hitsound = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
air.hittime = 30
ground.velocity = -14, -13
guard.velocity = -16
air.velocity = -14, -12
yaccel = 1.1
fall = 1
fall.recover = 0
air.fall = 1
ProjID = 3380
getpower = 0,0
givepower = 140,70
fall.envshake.time = 10
fall.envshake.ampl = -6
id = 3381

;hit detection for combos -----------
[State 1005, Comboflag]
type = varset
trigger1 = time >= 7
var(3) = 1
ignorehitpause = 1
;------------------------------------

;hit detection for dampener ---------
[State 1005, Comboflag]
type = varadd
trigger1 = movehit && numtarget
trigger1 = !(target, ishelper)
var(4) = 1
ignorehitpause = 1
;------------------------------------

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = time > 20
;============================ EX POWER GEYSER ==================================
[Statedef 3480]
type = S
physics = N
movetype = A
ctrl = 0
anim = 3280
sprpriority = 3
hitcountpersist = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s3080,0
channel = 5

[State 0, Explod]
type = Explod
trigger1 = numexplod(3280) = 0
trigger1 = time = 0
anim = 3280
ID = 3280
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = 1*root,fvar(10),1*root,fvar(10)
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 1
trans = add

;---------------------------------
[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)
;---------------------------------

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 3281
ignorehitpause = 1

[State 3005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 3005, Anim]
type = changeanim
trigger1 = anim != 3280
value = 3280

[State 1005, Trans]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 14
freq = 60
ampl = -16

;[State 0, BindToParent]
;type = BindToParent
;trigger1 = 1
;time = 1
;pos = 130,0
;facing = 1

[State 1005, Hit]
type = hitdef
trigger1 = movecontact = 0
;animtype = Up
air.animtype = Back
fall.animtype = Back
attr = S, HP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(102*fvar(12)),0
pausetime = 0,2
ground.type = High
air.type = High
hitsound = -1
guardsound = s2,1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -32
ground.slidetime = 22
ground.hittime = 22
guard.hittime = 22
air.hittime = 120
ground.velocity = -9*const(size.xscale),-20*const(size.yscale)
air.velocity = -9*const(size.xscale), -19*const(size.yscale)
guard.velocity = -22
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 1.2
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
getpower = 0,0
givepower = 116,58
fall.envshake.time = 12
fall.envshake.ampl = -2
sprpriority = 3
id = 3480

;hit detection for combos -----------
[State 1005, Comboflag]
type = varset
trigger1 = movehit && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
;------------------------------------

;hit detection for dampener ---------
[State 1005, Comboflag]
type = varadd
trigger1 = movehit && numtarget
trigger1 = !(target, ishelper)
var(4) = 1
ignorehitpause = 1
;------------------------------------

[State 1005, End]
type = changestate;destroyself
trigger1 = animtime = 0
trigger2 = root,movetype = H
trigger3 = var(4) = 2
value = 3281
;============================= BUSTER HELPER ===================================
[Statedef 3580]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 9741
sprpriority = 3

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 16
freq = 60
ampl = -15

;------------------------------------
[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)
;------------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = s1080,0
channel = 5

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3380
ID = 3380
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
pausemovetime = 999
scale = .9,.9;1,1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3380
ID = 3380
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
pausemovetime = 999
scale = .9,.9;1,1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = addalpha
alpha = 106,256

[State 1000, Proj]
type = Projectile
trigger1 = time = 6
projanim = 33800
Projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 10
projhits = 1
offset = 0, 0
projpriority = 7
projsprpriority = 4
velocity = 0
attr = S, HP
damage = ceil(120*fvar(12)),0
animtype = heavy
hitflag = MAF
guardflag = MA
pausetime = 2,2
sparkno = -1+0*(var(33):=8040)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=163), var(36):=-152
hitsound = S1,2
guardsound = S2,1
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
air.hittime = 30
ground.velocity = -1, 0
guard.velocity = -1
air.velocity = -1, 0
yaccel = 1.1
fall = 0
fall.recover = 0
air.fall = 1
ProjID = 3380
getpower = 0,0
givepower = 105,52
fall.envshake.time = 10
fall.envshake.ampl = -6

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = time > 30
;============================= BUSTER HELPER ===================================
[Statedef 3581]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 9741
sprpriority = 3

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 8
time = 16
freq = 60
ampl = -28

;------------------------------------
[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)
;------------------------------------

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3581
ID = 3581
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
pausemovetime = 999
scale = 1.25,1.25
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = addalpha
alpha = 256,256

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3580
ID = 3580
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
pausemovetime = 999
scale = 1.25,1.25
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3580
ID = 3580
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
pausemovetime = 999
scale = 1.25,1.25
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = addalpha
alpha = 50,256

[State 1000, Proj]
type = Projectile
trigger1 = time = 8
projanim = 33800
Projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 10
projhits = 1
offset = 0, 0
projpriority = 7
projsprpriority = 4
velocity = 0
attr = S, HP
damage = ceil(120*fvar(12)),0
animtype = heavy
hitflag = MAF
guardflag = MA
pausetime = 2,10
sparkno = -1+0*(var(33):=8040)**0
guard.sparkno= -1+0*(var(34):=8305)
sparkxy = -10 + 0*(var(35):=163), var(36):=-152
hitsound = s3080,1
guardsound = S2,1
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
air.hittime = 30
ground.velocity = -14, -13
guard.velocity = -16
air.velocity = -14, -12
getpower = 0,0
givepower = 105,52
yaccel = 1.1
fall = 1
fall.recover = 0
air.fall = 1
ProjID = 3581
getpower = 0,0
givepower = 200,100
fall.envshake.time = 10
fall.envshake.ampl = -6

[State 0, Explod]
type = Explod
trigger1 = time = 10
anim = 9600
ID = 9600
pos = 0,0
postype = p1
bindtime = 1
removetime = 1
supermovetime = 999
pausemovetime = 999
scale = 10,10
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = time > 30

;========================== TIME BREAKER PAUSER ================================
[Statedef 4150]
type = A
physics = N
movetype = I
anim = 9741

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s4080,3
channel = 16

[State 1000, Strength]
type = varset
trigger1 = time = 0
var(21) = 1
ignorehitpause = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = time >= 120+23
trigger2 = root, stateno = [3000,3999]
trigger3 = roundstate != 2
trigger4 = enemynear,movetype != h
trigger5 = enemynear,stateno = 5110
channel = 16
ignorehitpause =  1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time >= 120+23
trigger2 = root, stateno = [3000,3999]
trigger3 = roundstate != 2
trigger4 = enemynear,movetype != h
trigger5 = enemynear,stateno = 5110
ignorehitpause = 1


