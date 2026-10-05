;================================= HADOKEN =====================================
[Statedef 1080]
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
x = ifelse(var(10) = 3, 13, ifelse(var(10) = 2, 10, 8))
y = 0

[State 1005, Trans]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1081
ID = 10800
os = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = 200
scale = .9125,1.025
sprpriority = -4
removeongethit = 1
trans = sub

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
damage = ceil(60*fvar(12)),0
pausetime = 0,12
ground.type = High
air.type = Low
hitsound = -1
guardsound = s2,1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -32
ground.slidetime = 22
ground.hittime = 22
guard.hittime = 22
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
getpower = 140,80
givepower = 80,40
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
id = 1080

;hit detection ----------------------
[State 1005, Comboflag]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
;------------------------------------

;hit detection 2----------------------
[State 1005, Comboflag]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(4) = 1
ignorehitpause = 1
;------------------------------------

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = movecontact
trigger2 = pos x != [ -600, 620]
id = 10800

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
stateno = ifelse(moveguarded, 8305, 8042)
ID = 8000
name = "Spark"
postype = p1
pos = 10, 0
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
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
pos = -10,0
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,1.125
sprpriority = 4
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = add

[State 0, Explod]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 1085
ID = 1085
pos = -10,0
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,1.0125
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = addalpha
alpha = 200,256

[State 0, Explod]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 1086
ID = 1086
pos = -10,0
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,1.0125
sprpriority = 3
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = sub

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0
y = 0
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = time = 6

;================================ TATSU FX =====================================
[Statedef 1270]
physics = N
anim = 1270
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 22
scale = 1.35*.5,.25*.75
ignorehitpause =  1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 230,-205
ignorehitpause = 1

[State 1005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 175,256
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !animtime
trigger2 = parent,stateno !=1210

[State 1006, End]
type = destroyself
trigger1 = !animtime
trigger2 = parent,stateno !=1210
;================================= HADOKEN =====================================
[Statedef 1480]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1480
sprpriority = 2

;---------------------------------
[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)
;---------------------------------

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1482
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1005, Anim]
type = changeanim
trigger1 = anim != 1480
value = 1480

[State 1005, Button]
type = varset
trigger1 = !time && !prevstateno
var(10) = root, var(10)

[State 1055, vel]
type=velset
trigger1=1
x=ifelse(parent,var(10)=3,5.7*2,ifelse(parent,var(10)=2,4.3*2,2.9*2.2))
y=ifelse(parent,var(10)=3,4*2,ifelse(parent,var(10)=2,3*2,2*2.2))

[State 1005, Trans]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1481
ID = 14800
os = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = 200
scale = .95,.95;.9125,1.025
sprpriority = -4
removeongethit = 1
trans = sub

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
damage = ceil(60*fvar(12)),0
getpower = 140,80
givepower = 80,40
pausetime = 0,12
ground.type = High
air.type = Low
hitsound = -1
guardsound = s2,1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -32
ground.slidetime = 22
ground.hittime = 22
guard.hittime = 22
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
getpower = 140,80
givepower = 80,40
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
id = 1480

;hit detection ----------------------
[State 1005, Comboflag]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
;------------------------------------

;hit detection 2----------------------
[State 1005, Comboflag]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(4) = 1
ignorehitpause = 1
;------------------------------------

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = movecontact
trigger2 = pos x != [ -600, 620]
trigger3 = Pos Y >= 0 && Vel Y > 0
id = 14800

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Pos Y >= 0 && Vel Y > 0
value = S1080,3
channel = 4

[State 1005, End]
type = changestate
trigger1 = movecontact
trigger2 = Pos Y >= 0 && Vel Y > 0
value = 1481
ignorehitpause = 1

[State 1005, End]
type = destroyself
trigger1 = pos x != [ -600, 620]
trigger2 = Pos Y >= 0 && Vel Y > 0

;=============================== HIT PAUSE =====================================
[Statedef 1481]
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
stateno = ifelse(moveguarded, 8305, 8043)
ID = 8000
name = "Spark"
postype = p1
pos = -5, 5
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1006, End]
type = changestate
trigger1 = time >= 0
value = 1482


;================================= VANISH ======================================
[Statedef 1482]
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
anim = 1485
ID = 1485
pos = -10,0
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,1.125
sprpriority = 4
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = add

[State 0, Explod]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 1485
ID = 1485
pos = -10,0
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,1.0125
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = addalpha
alpha = 200,256

[State 0, Explod]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 1486
ID = 1486
pos = -10,0
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,1.0125
sprpriority = 3
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = sub

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0
y = 0
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = time = 6

;============================ EX HADOKEN COLOR =================================
[Statedef 2077]
physics = N
anim = 1270
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 22
scale = 1.35*.5,.25*.75
ignorehitpause =  1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 230,-205
ignorehitpause = 1

[State 1005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 175,256
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !animtime
trigger2 = parent,stateno !=1210

[State 1006, End]
type = destroyself
trigger1 = !animtime
trigger2 = parent,stateno !=1210


;================================ EX HADOKEN ===================================
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

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1081
ID = 10800
os = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = 200
scale = .9125,1.025
sprpriority = -4
removeongethit = 1
trans = sub

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
damage = ceil(45*fvar(12)),0
pausetime = 0,12
ground.type = High
air.type = Low
hitsound = -1
guardsound = s2,1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -32
ground.slidetime = 24
ground.hittime = 24
guard.hittime = 24
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
id = 2080

;hit detection ----------------------
[State 1005, Comboflag]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
;------------------------------------

;hit detection 2---------------------
[State 1005, Comboflag]
type = varset
trigger1 = movecontact && numtarget
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
x = 1

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
stateno = ifelse(moveguarded, 8305, 8042)
ID = 8000
name = "Spark"
postype = p1
pos = 10, 0
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1006, End]
type = changestate
trigger1 = time >= 3
value = ifelse(var(2) < (2), 2080, 2082);2082


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
trigger1 = time = 0
var(6) = 1
ignorehitpause = 1
;------------------------------------

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1085
ID = 1085
pos = -10,0
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,1.125
sprpriority = 4
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = add

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1085
ID = 1085
pos = -10,0
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,1.0125
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = addalpha
alpha = 200,256

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1086
ID = 1086
pos = -10,0
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,1.0125
sprpriority = 3
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = sub

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0
y = 0
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = time = 1
;============================== EX AIR HADOKEN =================================
[Statedef 2480]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1480
sprpriority = 2

;---------------------------------
[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)
;---------------------------------

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1482
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1005, Anim]
type = changeanim
trigger1 = anim != 1480
value = 1480

;[State 1005, Vel]
;type = velset
;trigger1 = 1
;x = ifelse(var(10) = 3, 10, ifelse(var(10) = 2, 7, 5))
;y = ifelse(var(10) = 3, 11, ifelse(var(10) = 2, 9, 6))

[State 1055, vel]
type=velset
trigger1=1
x = 6.4
y = 4.5

[State 1005, Trans]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1481
ID = 14800
os = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = 200
scale = .95,.95;.9125,1.025
sprpriority = -4
removeongethit = 1
trans = sub

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
damage = ceil(45*fvar(12)),0
pausetime = 0,12
ground.type = High
air.type = Low
hitsound = -1
guardsound = s2,1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -32
ground.slidetime = 22
ground.hittime = 22
guard.hittime = 22
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
id = 2480

;hit detection ----------------------
[State 1005, Comboflag]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
;------------------------------------

;hit detection 2----------------------
[State 1005, Comboflag]
type = varset
trigger1 = movecontact && numtarget
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
stateno = 2481;ifelse(var(2) < (2), 2080, 2081)
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Pos Y >= 0 && Vel Y > 0
value = S1080,3
channel = 4

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = movecontact
trigger2 = pos x != [ -600, 620]
trigger3 = Pos Y >= 0 && Vel Y > 0
id = 14800

[State 1005, End]
type = changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
trigger2 = movecontact
value = 2481
ignorehitpause = 1

[State 1005, End]
type = destroyself
trigger1 = pos x != [ -600, 620]
trigger2 = Pos Y >= 0 && Vel Y > 0

;=============================== HIT PAUSE =====================================
[Statedef 2481]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 2
movehitpersist = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = 1
y = 1

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
stateno = ifelse(moveguarded, 8305, 8043)
ID = 8000
name = "Spark"
postype = p1
pos = -5, 5
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1006, End]
type = changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 2482;ifelse(var(2) < (2), 2480, 2482);2082

[State 1006, End]
type = changestate
trigger1 = time >= 3
value = ifelse(var(2) < (2), 2480, 2482);2082


;================================= VANISH ======================================
[Statedef 2482]
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
trigger1 = time = 0
var(6) = 1
ignorehitpause = 1
;------------------------------------

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1485
ID = 1485
pos = -10,0
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,1.125
sprpriority = 4
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = add

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1485
ID = 1485
pos = -10,0
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,1.0125
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = addalpha
alpha = 200,256

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1486
ID = 1486
pos = -10,0
postype = p1
bindtime = 1
removetime = -2
scale = 1.125,1.0125
sprpriority = 3
ownpal = 1
removeongethit = 1
pausemovetime = 999
supermovetime = 999
trans = sub

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0
y = 0
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = time = 1
;================================ TATSU FX =====================================
[Statedef 3070]
physics = N
anim = 1270
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 32
scale = 1.5*.5,.4*.5
ignorehitpause =  1

;scale = 1.5,.4

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 220,-220
ignorehitpause = 1

[State 1005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 156,256
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !animtime
trigger2 = parent,stateno != [3002,3004]

[State 1006, End]
type = destroyself
trigger1 = !animtime
trigger2 = parent,stateno != [3002,3004]



