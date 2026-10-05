; _________________________________________
;| Chun-Li by Jmorphman                    |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

[Statedef 1009]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
poweradd = 70
sprpriority = 5


[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 1000
ctrl = 1

[State 1009, aa] 
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 1009, bb] 
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn


[State 1009, dd]
type = PlaySnd
trigger1 = time%14 = 0
value = 6, 3
channel = 6
ignorehitpause = 1
volume = 250

[State 777, es]
type = Explod 
trigger1 = !time
sprpriority = 10
anim = 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 1009, aa2]
type = Explod 
trigger1 = !time
sprpriority = 6
id = 1001
anim = 1001
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1


[State 1009, aa3]
type = Explod 
trigger1 = !time
sprpriority = 7
id = 1002
anim = 1002
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1009, dd1]
type = ChangeState
trigger1 = command != "holdx"
trigger1 = command != "holdz"
trigger1 = command != "holdy"
trigger2 = animtime = 0
value = 1000
ctrl = 0

;------------------------------------------------------------------
[Statedef 10091]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
poweradd = 70
sprpriority = 5

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 1000
ctrl = 1

[State 10091, aa] 
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 10091, bb] 
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn


[State 1009, dd]
type = PlaySnd
trigger1 = time%14 = 0
value = 6, 3
channel = 6
ignorehitpause = 1
volume = 250

[State 777, es]
type = Explod 
trigger1 = !time
sprpriority = 10
anim = 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 10091, aa2]
type = Explod 
trigger1 = !time
sprpriority = 6
id = 1001
anim = 1001
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1


[State 10091, aa3]
type = Explod 
trigger1 = !time
sprpriority = 7
id = 1002
anim = 1002
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 10091, dd1]
type = ChangeState
trigger1 = time=30 
trigger2 = p2bodydist X <= 60 && P2statetype != L
value = 1000
ctrl = 0

;========================<normallasso>=============================
[Statedef 1000]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 0
sprpriority = 1
juggle = 4
velset = 0,0

[State 1000, A4]
type = PlaySnd
trigger1 = animelem=3
value = 50,ifelse(random<499,9,1)
channel = 0
persistent = 0

[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1005
ctrl = 1

[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1005
ctrl = 1

[State 1000, aa]
type = removeexplod
trigger1 = !time
id = 1001

[State 1000, a1]
type = removeexplod
trigger1 = !time
id = 1002

[State 1000, A4]
type = PlaySnd
trigger1 = AnimElem = 1
value = 6,5
channel = 9


[State 1000, aa2];SHINY
type = Explod 
trigger1 = !time
sprpriority = 6
id = 1006
anim = 1006
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
;removetime = -1

[State 1000, aa3];UP
type = Explod 
trigger1 = !time
sprpriority = 7
id = 1007
anim = 1007
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8000, 8000)
ID=8000
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1

[State 1000, close]
type = HitDef
Trigger1 = AnimElem =6 || AnimElem =7
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 6,hit
damage = 15,5
pausetime = 0,6
sparkno = -1;Sifelse(random>500,8500,8501) 
guard.sparkno =ifelse(!var(55),-1,40) 
sparkxy = -10,-70
hitsound = S6,0
guardsound = S7,1
ground.type = High
ground.slidetime = 30
ground.hittime = 30
guard.hittime = 12
ground.velocity = 0,0
guard.velocity = -10
guard.pausetime = 0,4
air.velocity = 0,0
air.hittime = 0
p2facing = 1
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.dist = 320
getpower  = 40
givepower = 20
p1stateno = 1007
p2stateno = 1020


[State 1000, mid]
type = HitDef
Trigger1 = AnimElem =8
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 6,hit
damage = 15,5
pausetime = 0,6
sparkno = -1;Sifelse(random>500,8500,8501) 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -10,-70
hitsound = S6,0
guardsound = S7,1
ground.type = High
ground.slidetime = 30
ground.hittime = 30
guard.hittime = 12
ground.velocity = 0,0
guard.velocity = -10
air.velocity = 0,0
air.hittime = 0
p2facing = 1
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.dist = 320
getpower  = 40
givepower = 20
p1stateno = 1008
p2stateno = 1020

[State 1000, far]
type = HitDef
Trigger1 = AnimElem =9
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 6,hit
damage = 15,5
pausetime = 0,6
sparkno = -1;Sifelse(random>500,8500,8501) 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -10,-70
hitsound = S6,0
guardsound = S7,1
ground.type = High
ground.slidetime = 30
ground.hittime = 30
guard.hittime = 12
ground.velocity = 0,0
guard.velocity = -10
air.velocity = 0,0
air.hittime = 0
p2facing = 1
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.dist = 320
getpower  = 40
givepower = 20
p1stateno = 1010
p2stateno = 1020

[State 1000, ee]
type = Changestate
trigger1 = moveguarded
Trigger1 = AnimElem =6 || AnimElem =7
value = 1030
ctrl = 0

[State 1000, ee]
type = Changestate
trigger1 = moveguarded
Trigger1 = AnimElem =8 || AnimElem =9
value = 1035
ctrl = 0

[State 1000, ee]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1


;===============================================
[Statedef 1007]
type = S
movetype = A
physics = N
ctrl = 0
sprpriority = -3
velset = 0,0
poweradd = 0

[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1010
ctrl = 1
[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1010
ctrl = 1



[State 777, hsp]
type = helper
trigger1 = time=4
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =0,-5 ;(target ,const(size.mid.pos.x)),(target ,const(size.mid.pos.y))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1



[State 1010, aa3];arc effect
type = Explod 
trigger1 = animelem =5
sprpriority = -8
id = 1025
anim = 1025
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1007, 1]
type = Turn
trigger1 = AnimElem = 13

[State 1007, b2]
type = PlayerPush
trigger1 = 1
value = 0

[State 1007, voz]
type = PlaySnd
trigger1 = animelem=5
value = 50,7
channel = 8

[State 1007, b3]
type = PlaySnd
trigger1 = animelem = 4
value = 40,7

[State 1007, ro]
type = PlaySnd
trigger1 = animelem = 9
value = 40,8

[State 1007, aa]
type = removeexplod
trigger1 = !time
id = 1006

[State 1007, aa]
type = removeexplod
trigger1 = !time
id = 1007

[State 1007, aa3];UP
type = Explod 
trigger1 = !time
sprpriority = 2
id = 1015
anim = 1015
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1007, aa2];SHINY
type = Explod 
trigger1 = !time
sprpriority = 1
id = 1016
anim = 1016
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
;removetime = -1



[State 1007, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 139, -65
;time = 6
[State 1007, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 136, -77
;time = 4
[State 1007, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 126, -87
;time = 4
[State 1007, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 135, -82
;time = 9
[State 1007, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 67, -152
;time = 8
[State 1007, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = -22, -163
;time = 7
[State 1007, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7 
trigger1 = p2stateno != 1022
pos = -110, -149
;time = 6
[State 1007, Bind 8];
type = TargetBind
trigger1 = AnimElem = 8
trigger1 = p2stateno != 1022
pos = -166, -67
;time = 5
[State 1007, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9
trigger1 = p2stateno != 1022
pos = -166, 3


[State 1007, 1]
type = TargetState
trigger1 = Animelem = 7
value = 1021

[State 1007, a4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1007, a5]
type = Helper
trigger1 = animelem = 5
helpertype = Normal
name = "camera"
postype = P1
ID = 1050
pos = 0,0
stateno = 1050
ownpal = 1
persistent = 0

[State 1007, a4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1007, b2]
type = EnvShake
trigger1 = AnimElem = 9
time = 25
ampl = -5

[State 1007, p2] ;explodpedr
type = helper
trigger1 = p2stateno != 1022
trigger1 = AnimElem = 9
helpertype = normal
stateno = 8706
ID = 8796
name = "ground"
postype = p2
pos = 0,78
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 1007, p2] ;explodpedr
type = Explod
trigger1 = p2stateno = 1022
anim = 8677
id=8677
postype = p2
pos = 0,10
sprpriority = 7
removetime = -2
persistent = 0

[State 1007, ee]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;==========================================
[Statedef 1008]
type = S
movetype = A
physics = N
ctrl = 0
sprpriority = -3
velset = 0,0
poweradd = 0

[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1010
ctrl = 1

[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1010
ctrl = 1

[State 777, hsp]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos = 0,-5
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1



[State 1008, aa3];arc
type = Explod 
trigger1 = animelem =5
sprpriority = -8
id = 1025
anim = 1025
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1


[State 1008, 1]
type = Turn
trigger1 = AnimElem = 13


[State 1008, b2]
type = PlayerPush
trigger1 = 1
value = 0

[State 1008, voz]
type = PlaySnd
trigger1 = animelem=5
;trigger1 = random <= 300
value = 50,7
channel = 8

[State 1008, b3]
type = PlaySnd
trigger1 = animelem = 4
value = 40,7

[State 1008, ro]
type = PlaySnd
trigger1 = animelem = 9
value = 40,8

[State 1008, aa]
type = removeexplod
trigger1 = !time
id = 1006

[State 1008, aa]
type = removeexplod
trigger1 = !time
id = 1007


[State 1008, aa2];SHINY
type = Explod 
trigger1 = !time
sprpriority = 1
id = 1014
anim = 1014
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
;removetime = -1

[State 1008, aa3];UP
type = Explod 
trigger1 = !time
sprpriority = 2
id = 1013
anim = 1013
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1008, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 184, -60
[State 1008, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 181, -70
[State 1008, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 171, -81
[State 1008, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 172, -76
[State 1008, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 79, -164
[State 1008, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = -16, -178
[State 1008, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
trigger1 = p2stateno != 1022
pos = -119, -164
[State 1008, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8
trigger1 = p2stateno != 1022
pos = -183, -75
[State 1008, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9
trigger1 = p2stateno != 1022
pos = -183, -5


[State 1008, 1]
type = TargetState
trigger1 = Animelem = 7
value = 1021


[State 1008, a4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1008, a5]
type = Helper
trigger1 = animelem = 5
helpertype = Normal
name = "camera"
postype = P1
ID = 1050
pos = 0,0
stateno = 1050
ownpal = 1
persistent = 0

[State 1008, a4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1008, b2]
type = EnvShake
trigger1 = AnimElem = 9
time = 25
ampl = -5

[State 1008, p2] ;explodpedr
type = helper
trigger1 = p2stateno != 1022
trigger1 = AnimElem = 9
helpertype = normal
stateno = 8706
ID = 8706
name = "hitspark6"
postype = p2
pos = 0,78
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 1008, p2] ;explodpedr
type = Explod
trigger1 = p2stateno = 1022
anim = 8677
postype = p2
pos = 0,10
sprpriority = 7
removetime = -2
persistent = 0


[State 1008, ee]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------
[Statedef 1010]
type = S
movetype = A
physics = N
ctrl = 0
sprpriority = -3
velset = 0,0
poweradd = 0

[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1010
ctrl = 1
[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1010
ctrl = 1

[State 777, hsp]
type = helper
trigger1 = time=4
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos = 0,-5
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 1010, aa3];arc rastro
type = Explod 
trigger1 = animelem =5
sprpriority = -8
id = 1025
anim = 1025
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1010, 1]
type = Turn
trigger1 = AnimElem = 13

[State 1010, b2]
type = PlayerPush
trigger1 = 1
value = 0

[State 1010, voz]
type = PlaySnd
trigger1 = animelem=5
value = 50,7
channel = 8

[State 1010, b3]
type = PlaySnd
trigger1 = animelem = 4
value = 40,7

[State 1010, ro]
type = PlaySnd
trigger1 = animelem = 9
value = 40,8

[State 1010, aa]
type = removeexplod
trigger1 = !time
id = 1006

[State 1010, aa]
type = removeexplod
trigger1 = !time
id = 1007

[State 1010, aa2];SHINY
type = Explod 
trigger1 = !time
sprpriority = 1
id = 1012
anim = 1012
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
;removetime = -1

[State 1010, aa3];UP
type = Explod 
trigger1 = !time
sprpriority = 2
id = 1011
anim = 1011
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1010, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 233, -57
[State 1010, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 233, -65
[State 1010, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 225, -73
[State 1010, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 225, -74
[State 1010, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 95, -182
[State 1010, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = -16, -184
[State 1010, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
trigger1 = p2stateno != 1022
pos = -124, -175
[State 1010, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8
trigger1 = p2stateno != 1022
pos = -208, -75
[State 1010, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9
trigger1 = p2stateno != 1022
pos = -208, -10


[State 1010, 1]
type = TargetState
trigger1 = Animelem = 7
value = 1021


[State 1010, a4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1010, b2]
type = EnvShake
trigger1 = AnimElem = 9
time = 25
ampl = -5

[State 1010, p2] ;explodpedr
type = helper
trigger1 = p2stateno != 1022
trigger1 = AnimElem = 9
helpertype = normal
stateno = 8706
ID = 8706
name = "hitspark6"
postype = p2
pos = 0,78
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State 1010, p2] ;explodpedr
type = Explod
trigger1 = p2stateno = 1022
anim = 8677
postype = p2
pos = 0,10
sprpriority = 7
removetime = -2
persistent = 0

[State 1010, a5]
type = Helper
trigger1 = animelem = 5
helpertype = Normal
name = "camera"
postype = P1
ID = 1050
pos = 0,0
stateno = 1050
ownpal = 1
persistent = 0

[State 1010, ee]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------
[Statedef 1030]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 1
poweradd = 0

[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1030
ctrl = 1
[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1030
ctrl = 1



[State 1030, aa]
type = removeexplod
trigger1 = !time
id = 1006

[State 1030, aa]
type = removeexplod
trigger1 = !time
id = 1007

[State 1030, aa3];UP
type = Explod 
trigger1 = !time
sprpriority = 2
id = 1032
anim = 1032
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1030, aa2];SHINY
type = Explod 
trigger1 = !time
sprpriority = 1
id = 1031
anim = 1031
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1030, ee]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------

[Statedef 1035]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 1

[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1035
ctrl = 1
[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1035
ctrl = 1


[State 1035, aa]
type = removeexplod
trigger1 = !time
id = 1006

[State 1035, aa]
type = removeexplod
trigger1 = !time
id = 1007

[State 1035, aa3];UP
type = Explod 
trigger1 = !time
sprpriority = 2
id = 1037
anim = 1037
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1035, aa2];SHINY
type = Explod 
trigger1 = !time
sprpriority = 1
id = 1036
anim = 1036
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1035, ee]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------
[Statedef 1020]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = -7
ctrl=0

[State 1020, a1]
type = ChangeAnim2
trigger1 = !Time 
value = 1020

[State 1020, a2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera =1,0;1,0

[State 1020, aa]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 1020, a3];safe
type = SelfState
trigger1 = time = 200 ;!gethitvar(isbound)
value = 5050

[State 1020, safe]
type = SelfState
trigger1 = p2movetype = H
value = 5050

[State 1020, bb]
type = PalFX
trigger1 = !Time
time = 70
add = 60,40,5
sinadd = 10,10,10,60
;-------------------------------------------------------------------------

[Statedef 1021]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = -7
ctrl=0
poweradd = 0

[State 1021, 1]
type = Turn
trigger1 = !time

[State 1021, a1]
type = ChangeAnim2
trigger1 = !Time 
value = 1021

[State 1021, a2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera =1,0;1,0

[State 1021, aa]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 1021, a3];safe
type = SelfState
trigger1 = time = 200 ;!gethitvar(isbound)
value = 5050

[State 1021, safe]
type = SelfState
trigger1 = p2movetype = H
value = 5050


[State 1021, bb]
type = PalFX
trigger1 = !Time
time = 90
add = 60,40,5
sinadd = 60,40,5,100


[State 1021, a4]
type = Changestate
trigger1 = BackEdgeBodyDist <= 0
value = 1022
ctrl = 0

[State 821, a3]
type = LifeAdd
trigger1 = Time = 10
value = -90
persistent = 0

[State 1021, 1]
type = Turn
trigger1 = animelem = 2 

[State 1021, a5]
type = SelfState
trigger1 = time = 15 
value = 5100
;-------------------------------------------------------------------------
[Statedef 1022]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = -7
ctrl=0

[State 1022, a1]
type = ScreenBound
trigger1 = 1
value = 1
;movecamera =1

[State 1022, a3]
type = LifeAdd
trigger1 = !Time
value = -90
persistent = 0
kill=1

[State 1022, a2]
type = ChangeAnim2
trigger1 = !Time 
value = 1022

[State 1022, av] 
type = VelAdd
trigger1 = Time > 10
y = .3

[State 1022, a3]
type = PosFreeze
trigger1 = BackEdgeBodyDist <= 0 
value = 8
persistent = 0

[State 1022, a4]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 1022, a5]
type = SelfState
;trigger1 = Time = 20
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
;------------------------------------------------------------------------- 

[Statedef 1050]
type    = S
movetype= I
physics = N
velset = -13,0
anim = 8787
ctrl=0

[State 1050, 1] 
type = VelAdd
trigger1 = parent, stateno = 1007
trigger1 = time > 0
x = .56

[State 1050, 1] 
type = VelAdd
trigger1 = parent, stateno = 1008
trigger1 = time > 0
x = .49

[State 1050, 1] 
type = VelAdd
trigger1 = parent, stateno = 1010
trigger1 = time > 0
trigger2 = parent, stateno = 3005
trigger2 = time > 0
x = .37

[State 1050, 1] 
type = Velset
trigger1 = parent, stateno = 3005
trigger1 = parent,Var(15) = 1
x=13
[State 1050, 1] 
type = Velset
trigger1 = parent, stateno = 3005
trigger1 = parent,Var(15) = 2
x=-13
[State 1050, 1] 
type = Velset
trigger1 = parent, stateno = 3005
trigger1 = parent,Var(15) = 3
x=13


[State 1050, 2]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = NoShadow

[State 1050, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1050, 4]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 1050, 5]
type = DestroySelf
trigger1 = Parent, Stateno = 0
trigger2 = Parent, Stateno = 3010
trigger3 = time = 300 ;safe


;========================<HYAKURETSUKYAKU>=============================
;Startup
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1100, Tap Kick Buffer Set]
type = VarSet
trigger1 = !Time && !AILevel
var(46) = ifElse(NumExplod(90000250) || NumExplod(90000255), 8, ifElse(NumExplod(90000240) || NumExplod(90000245), 10, 12))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
trigger1 = !NumEnemy
var(10) = 2

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
trigger1 = NumEnemy
var(10) = ifElse((EnemyNear, GetHitVar(HitTime) > 6 || P2Dist x > 80), 2, 1)

[State 1100, Tap Kick Buffer Set (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(46) = ifElse(var(10) = 2, 8, ifElse(var(10), 10, 12))

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 1101


;Looping
[StateDef 1101]
type = S
physics = N
moveType = A
anim = 1101
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1101, Button Detect]
type = VarSet
trigger1 = !Time
var(11) = var(10)

[State 1101, Button Detect]
type = VarSet
trigger1 = !AILevel
;;command = "a" || command = "b" || command = "c"
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
;;ifElse(command = "c", 2, ifElse(command = "b", 1, 0))
var(11) = ifElse(NumExplod(90000250), 2, ifElse(NumExplod(90000240), 1, 0))

[State 1101, Button Detect (AI)]
type = VarSet
trigger1 = AILevel
trigger1 = Time && AnimElem = 5
var(11) = ifElse(Random < 500, 2, ifElse(Random < 500, 1, 0))

[State 1101, Tap Kick Buffer (AI)]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = P2StateType != A && (P2BodyDist x = [0,58])
var(46) = 10

[State 1101, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1121, ifElse(var(10) = 1, 1111, 1101))

[State 1101, Loop]
type = ChangeAnim
triggerAll = var(46) > 0
trigger1 = !AnimTime
value = ifElse(var(11) = 2, 1121, ifElse(var(11) = 1, 1111, 1101))
elem = 1

[State 1101, Spark XY]
type = Null
trigger1 = AnimElem = 1
trigger1 = var(35) := 59 || var(36) := -44
trigger2 = AnimElem = 4
trigger2 = var(35) := 56 || var(36) := -100
trigger3 = AnimElem = 7
trigger3 = var(35) := 66 || var(36) := -65
trigger4 = AnimElem = 10
trigger4 = var(35) := 64 || var(36) := -84

[State 1101, Hit Low]
type = HitDef
trigger1 = !var(16) && (var(15) < ifElse(1 + HitCount < 4, 1 + HitCount, 1) || var(20))
trigger1 = AnimElem = 1 || AnimElem = 7
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Hard
air.animType = Low
fall.animType = Low
ground.type = Low
air.type = Low
ground.hitTime = ifElse(var(10) = 2, 20, ifElse(var(10), 17, 15))
ground.slideTime = ifElse(var(10) = 2, 20, ifElse(var(10), 17, 15))
guard.hitTime = ifElse(var(10) = 2, 12, ifElse(var(10), 10, 15))
air.hitTime = 120
ground.velocity = ifElse(var(10) = 2, -2.56, ifElse(var(10), -2.76, -3.06)), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(10) = 2, -2.56, ifElse(var(10), -2.76, -3.06))
guard.cornerPush.velOff = 0
air.velocity = -7.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1101, Hit High]
type = HitDef
trigger1 = !var(16) && (var(15) < ifElse(1 + HitCount < 4, 1 + HitCount, 1) || var(20))
trigger1 = AnimElem = 4 || AnimElem = 10
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Hard
air.animType = High
fall.animType = High
ground.type = High
air.type = High
ground.hitTime = ifElse(var(10) = 2, 20, ifElse(var(10), 17, 15))
ground.slideTime = ifElse(var(10) = 2, 20, ifElse(var(10), 17, 15))
guard.hitTime = ifElse(var(10) = 2, 12, ifElse(var(10), 10, 15))
air.hitTime = 120
ground.velocity = ifElse(var(10) = 2, -2.56, ifElse(var(10), -2.76, -3.06)), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(10) = 2, -2.56, ifElse(var(10), -2.76, -3.06))
guard.cornerPush.velOff = 0
air.velocity = -7.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1101, End]
type = ChangeState
trigger1 = var(46) <= 0
trigger1 = (AnimElemTime(2) >= 0 && AnimElemTime(3) < 0) || (AnimElemTime(5) >= 0 && AnimElemTime(6) < 0) || (AnimElemTime(8) >= 0 && AnimElemTime(9) < 0) || (AnimElemTime(11) >= 0 && AnimElemTime(12) < 0)
value = 1102

[State 1101, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,2
channel = 0

[State 1101, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
value = 1,3


;End
[Statedef 1102]
type = S
physics = N
moveType = I
anim = 1102
ctrl = 0
sprPriority = 1
moveHitPersist = 1

[State 1102, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX HYAKURETSUKYAKU>=============================
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1130
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 16

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 19, -71
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1130, Voice]
type = PlaySnd
trigger1 = !Time
value = 1130,0
channel = 0

[State 1130, PosAdd]
type = PosAdd
trigger1 = !Time
x = 32

[State 1130, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 12
value = 4,2
channel = 0

[State 1130, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
value = 1,1

[State 1130, Spark XY]
type = Null
trigger1 = AnimElem = 3
trigger1 = var(35) := 59 || var(36) := -44
trigger2 = AnimElem = 6
trigger2 = var(35) := 56 || var(36) := -100
trigger3 = AnimElem = 9
trigger3 = var(35) := 66 || var(36) := -65
trigger4 = AnimElem = 12
trigger4 = var(35) := 64 || var(36) := -84

[State 1130, Hit Low]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 9
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Low
fall.animType = Low
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -0.75, -5.5
ground.cornerPush.velOff = 0
guard.velocity = -3.06
guard.cornerPush.velOff = 0
air.velocity = -0.75, -5.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Hit High]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = High
fall.animType = High
ground.type = High
air.type = High
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -0.75, -5.5
ground.cornerPush.velOff = 0
guard.velocity = -3.06
guard.cornerPush.velOff = 0
air.velocity = -0.75, -5.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(27) && AnimElem = 13
var(15) = 0

[State 1130, VarAdd]
type = VarAdd
trigger1 = MoveHit && AnimElem = 13
var(27) = 1
persistent = 0

[State 1130, Juggle Flag]
type = VarSet
trigger1 = var(27) = 2
var(16) = 1

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(13) >= 0
movetype = I

[State 1130, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;=====================<HAZANSHU>==========================

[Statedef 1600]
type    = S
movetype= A
physics = S
juggle  = 15
velset = 0,0
sprpriority = 4
ctrl = 0
poweradd = 70


[State 777, a02]
type = ChangeAnim
trigger1 =  !time && prevstateno != 9000
value = 1300
ctrl = 1

[State 777, 0]
type = StopSnd
trigger1 = !time
channel = 10
ignorehitpause = 0


[State 777, es]
type = Explod 
trigger1 = !time
sprpriority = 10
anim = 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 1300, a2]
type = StateTypeSet
trigger1 = animelem = 5
statetype = A
movetype = A
physics = A

[State 1300, b1];wh
type = PlaySnd
trigger1 = !time
value = 500, 4
channel = 0

[State 1300, b1];wh
type = PlaySnd
trigger1 = animelem = 2
value = 6,6;40, 7
channel = 9


[State 1300, cc]
type = NotHitBy
trigger1 = animelemtime(7)<=0
value = SCA
ignorehitpause = 1

[State 1300, dd]
type = velset
trigger1 = animelem = 5
x = 5;2.5
y = -8;-6.5

[State 1300, dd]
type = velset
trigger1 = animelem = 6
x = 2.5

[State 1300, d1]
type = velset
trigger1 = animelem = 7
x = 1.2

[State 1300, d1]
type = velset
trigger1 = animelem = 8
x = 0

[State 1320, d2]
type = veladd
trigger1 = animelemtime(5)>=0
y = .1;.20


[State 1300, dust];sobe
type = Explod
triggerall = Time<=25 
trigger1= timemod=6,2 
anim = 8730  
postype = p1
sprpriority = 7
ownpal = 1
pos = 10, -5
scale = .3,.3
random = 10,0
supermovetime = 9999
pausemovetime = 9999
ownpal=1
ownpal=1

[State 1300, ee]
type = HitDef
trigger1 = !time
attr = S, SA
animtype  = hard
damage    = 100, 7
priority  = 6, hit
hitflag = MAFP 
guardflag = MA
pausetime = 4,4;2,1
sparkno = -1 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -20+(enemy ,const(size.mid.pos.x)),-30+(enemy ,const(size.head.pos.y))
hitsound   = S5,4
guardsound = S7,1
ground.type = high
air.type = high
ground.slidetime = 14
ground.hittime  = 10
air.hittime  = 10
ground.velocity = -2.23463687151, -10
air.velocity = -2.23463687151, -10
guard.hittime = 10
airguard.hittime = 10
guard.velocity = -10.52
airguard.ctrltime = 26
airguard.velocity = -2, 0
guard.pausetime = 0,4
ground.cornerpush.veloff = -12
guard.cornerpush.veloff = -18
air.cornerpush.veloff = -12
airguard.cornerpush.veloff = -18
yaccel=.65
fall = 1
palfx.time = 40
palfx.add= 60,40,5     
palfx.sinadd= 60,40,5,50
getpower  = 40
givepower = 20

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8000, 8000)
ID=8000
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1

[State 777, hsp]
type = helper
trigger1 = !var(55)&& movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =-20+(const(size.mid.pos.x)),-30+(const(size.head.pos.y))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 1300, lnd];safe
type = ChangeState
trigger1 = Pos Y >= 0 
trigger1 = Vel Y > 0
value = 52
;-------------------------------------------------------------

[Statedef 1610]
type    = S
movetype= A
physics = S
juggle  = 15
velset = 0,0
sprpriority = 4
ctrl = 0
poweradd = 70

[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1310
ctrl = 1

[State 777, 0]
type = StopSnd
trigger1 = !time
channel = 10
ignorehitpause = 0


[State 777, es]
type = Explod 
trigger1 = !time
sprpriority = 10
anim = 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 1310, a2]
type = StateTypeSet
trigger1 = animelem = 5
statetype = A
movetype = A
physics = A

[State 1310, b1];wh
type = PlaySnd
trigger1 = !time
value = 500, 4
channel = 0

[State 1310, b1];wh
type = PlaySnd
trigger1 = animelem = 2
value = 6,6;40, 7
channel = 9

[State 1310, b1];wh
type = PlaySnd
trigger1 = animelem = 11
value = 6,6
channel = 9


[State 1310, cc]
type = NotHitBy
trigger1 = animelemtime(7)<=0
value = SCA

[State 1310, dd]
type = velset
trigger1 = animelem = 5
x = 5.6;3.7
y = -11;-8.5;-7.7

[State 1310, dd]
type = velset
trigger1 = animelem = 8
x = 3


[State 1310, d1]
type = velset
trigger1 = animelem = 11
x = 0

[State 1310, d2]
type = veladd
trigger1 = animelemtime(10)>=0
y = .1;.20

[State 1300, dust];sobe
type = Explod
triggerall = Time<=30
trigger1= timemod=6,2 
anim = 8730  
postype = p1
sprpriority = 7
ownpal = 1
pos = 10, -5
scale = .3,.3
random = 10,0
supermovetime = 9999
pausemovetime = 9999
ownpal=1
[State 1310, v]
type = VarSet
trigger1 = !Time
v = 10
value = 0
[State 1310, v1]
type = VarAdd
trigger1 = Movehit
v = 10
value = 2

[State 1310, ee]
type = HitDef
trigger1 = animelem = 4||AnimElem = 7 || AnimElem = 9 || AnimElem = 12;|| AnimElem = 14
attr = S, SA
animtype  = high
damage    = ifelse(Var(10) > 0, 5, 100), 7
priority  = 6, hit
hitflag = MAFP 
guardflag = MA
pausetime =3,3
sparkno = Sifelse(random>500,8520,8521) 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -50+(enemy ,const(size.mid.pos.x)),-10+(enemy ,const(size.head.pos.y))
hitsound   = S5,4
guardsound = S7,1
ground.type = high
air.type = high
ground.slidetime = 14
ground.hittime  = 10
air.hittime  = 10
ground.velocity = -2.23463687151, -10
air.velocity = -2.23463687151, -10
guard.hittime = 10
airguard.hittime = 10
guard.velocity = -10.52
airguard.ctrltime = 26
airguard.velocity = -2, 0
guard.pausetime = 0,4
ground.cornerpush.veloff = -1
guard.cornerpush.veloff = -18
air.cornerpush.veloff = -12
airguard.cornerpush.veloff = -18
fall = 1
yaccel=.65
palfx.time = 40
palfx.add= 60,40,5     
palfx.sinadd= 60,40,5,50
getpower  = 40
givepower = 20

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8000, 8000)
ID=8000
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1

[State 777, hsp]
type = helper
trigger1 = !var(55)&& movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =-20+(const(size.mid.pos.x)),-30+(const(size.head.pos.y))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 1300, lnd];safe
type = ChangeState
trigger1 = Pos Y >= 0 
trigger1 = Vel Y > 0
value = 52
;------------------------------------------------------------------------
[Statedef 1620]
type    = S
movetype= A
physics = S
juggle  = 15
velset = 0,0
sprpriority = 4
ctrl = 0
poweradd = 70


[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1320
ctrl = 1

[State 777, 0]
type = StopSnd
trigger1 = !time
channel = 10
ignorehitpause = 0

[State 1320, b1];wh
type = PlaySnd
trigger1 = !time
value = 500, 5
channel = 0


[State 777, es]
type = Explod 
trigger1 = !time
sprpriority = 10
anim = 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 1320, a2]
type = StateTypeSet
trigger1 = animelem = 5
statetype = A
movetype = A
physics = A


[State 1320, b1];wh
type = PlaySnd
trigger1 = animelem = 2
value = 6,5;40, 7
channel = 9
[State 1320, b1];wh
type = PlaySnd
trigger1 = animelem = 11
value = 6,5
channel = 9
[State 1320, b1];wh
type = PlaySnd
trigger1 = animelem = 18
value = 6,5;40, 7
channel = 9
[State 1320, b1];wh
type = PlaySnd
trigger1 = animelem = 24
value = 6,5
channel = 9


[State 1320, cc]
type = NotHitBy
triggerall =(prevStateNo != [6000,6100])
trigger1 = animelemtime(7)<=0
value = SCA

[State 1320, dd]
type = velset
trigger1 = animelem = 5
x = 12;6.5;3.7
y = -15;-11

;[State 1320, dd]
;type = velset
;trigger1 = animelem = 9
;x = 4.5

[State 1100, vel]
type=velmul
trigger1 = animelemtime(5)>=0 && animelemtime(13)<=0
x=.9
[State 1320, d1]
type = velset
trigger1 = animelem = 14
x = 0

[State 1320, d2]
type = veladd
trigger1 = animelemtime(14)>=0
y = .15;.20


[State 1300, dust];sobe
type = Explod
triggerall = Time<=35
trigger1= timemod=6,2 
anim = 8730  
postype = p1
sprpriority = 7
ownpal = 1
pos = 10, -5
scale = .3,.3
random = 10,0
supermovetime = 9999
pausemovetime = 9999
ownpal=1

[State 1320, v]
type = VarSet
trigger1 = !Time
v = 10
value = 0
[State 1320, v1]
type = VarAdd
trigger1 = Movehit
v = 10
value = 2

[State 1320, ee]
type = HitDef
trigger1 = animelem = 4||AnimElem = 7 || AnimElem = 12 || AnimElem = 15 || AnimElem = 19|| AnimElem = 21
attr = S, SA
animtype  = high
damage    = ifelse(Var(10) > 0, 7, 100), 7
priority  = 6, hit
hitflag = MAFP 
guardflag = MA
pausetime =3,3
sparkno = Sifelse(random>500,8520,8521) 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -50+(enemy ,const(size.mid.pos.x)),-10+(enemy ,const(size.head.pos.y))
hitsound   = S5,4
guardsound = S7,1
ground.type = high
air.type = low
ground.slidetime = 30
ground.hittime  = 10
air.hittime  = 10
ground.velocity = -2.23463687151, -10
air.velocity = -2.23463687151, -10
guard.hittime = 10
guard.velocity = -10.52
airguard.ctrltime = 26
airguard.velocity = -5
guard.pausetime = 0,4
ground.cornerpush.veloff = -12
guard.cornerpush.veloff = -5
air.cornerpush.veloff = -12
airguard.cornerpush.veloff = -5
fall = 1
yaccel=.65
palfx.time = 40
palfx.add= 60,40,5     
palfx.sinadd= 60,40,5,50
getpower  = 40
givepower = 20

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8000, 8000)
ID=8000
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1

[State 777, hsp]
type = helper
trigger1 = !var(55)&& movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =-20+(const(size.mid.pos.x)),-30+(const(size.head.pos.y))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 1300, lnd];safe
type = ChangeState
trigger1 = Pos Y >= 0 
trigger1 = Vel Y > 0
value = 52

;========================<SLAMMED AGAINST THE GROUND>=============================
;Being Slammed (Standing)
[StateDef 5420]
type = U
moveType = H
physics = N
velset = 0,0

[State 5420, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = ifElse(SelfAnimExist(5111) || SelfAnimExist(5112), 5012, 5070)

[State 5420, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5420 + (StateType = C))
value = 5420 + (StateType = C)

[State 5420, End]
type = SelfState
trigger1 = HitShakeOver && pos y < 0
trigger2 = StateType = L
value = 5030

[State 5420, End]
type = ChangeState
trigger1 = HitShakeOver && pos y >= 0
value = 5421


;Hitting the Ground
[StateDef 5421]
type = L
moveType = H
physics = N
velSet = 0,0

[State 5421, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5102) && PrevStateNo != 5426, 5102, ifElse(SelfAnimExist(5101) && PrevStateNo != 5426, 5101, 5100))

[State 5421, ChangeAnim]
type = ChangeAnim
triggerall = !Time && PrevStateNo != 5426
trigger1 = SelfAnimExist(5422)
value = 5422

[State 5421, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5421, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 5421, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4

[State 5421, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,1

[State 5421, Hitting the Floor FX]
type = Explod
trigger1 = !Time
anim = F61
posType = P1
pos = 0, 0
sprPriority = -3

[State 5421, End]
type = ChangeState
trigger1 = !AnimTime
trigger2 = Anim = 5100 + (Anim % 10)
trigger2 = Time = 4
trigger2 = Anim != 5422
trigger3 = Anim = 5422
trigger3 = AnimTime = 0 || Time = 12
value = 5422


;Bouncing Off Ground
[StateDef 5422]
type = L
moveType = H
physics = N

[State 5422, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5160 + Anim % 10), 5160 + Anim % 10, 5160)

[State 5422, ChangeAnim]
type = ChangeAnim
triggerall = !Time && Anim = 5422
trigger1 = SelfAnimExist(5424)
value = 5424

[State 5422, VelSet]
type = VelSet
trigger1 = !Time
y = -3.75

[State 5422, PosSet]
type = PosSet
trigger1 = !Time
y = const(movement.down.bounce.offset.y)

[State 5422, PosAdd]
type = PosAdd
trigger1 = !Time
x = const(movement.down.bounce.offset.x)

[State 5422, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.625

[State 5422, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5424
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = ifElse(SelfAnimExist(5162), 5162, ifElse(SelfAnimExist(5161), 5161, 5160))

[State 5422, End]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5110


;Aerial Being Slammed (Hitshake)
[StateDef 5425]
type = A
moveType = H
physics = N
velSet = 0,0

[State 5425, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5070

[State 5425, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5425, ChangeAnim]
type = ChangeState
trigger1 = HitShakeOver
value = 5426


;Aerial Being Slammed (Knocked Away)
[StateDef 5426]
type = A
moveType = H
physics = N
ctrl = 0

[State 5426, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yaccel)

[State 5426, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 5426, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.trip.groundlevel)
value = 5421



;========================<EX HAZANSHU>=============================
[StateDef 1330]
type = S
physics = N
moveType = A
anim = 1330
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1330, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1330, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1330, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 31

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 7, -63
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1330, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 3

[State 1330, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 15
value = 1,5
channel = 4

[State 1330, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1330, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Hazanshu Dust"
posType = P1
ownPal = 1

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = ifElse(P2Dist x / 24 > 8.45, 8.45, P2Dist x / 24)
y = -17.2125

[State 1330, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 1.9125

[State 1330, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
value = SCA
time = 1

[State 1330, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301



;=====================<TENSHOKYAKU>==========================
;=========<Dark Barrier>==========
[Statedef 1200]
type    = S
movetype= A
physics = N
poweradd=72 * !var(20)
ctrl = 0
velset = 0
sprpriority = 2
facep2 = 1

[State 0, ParentVarSet]
type = VarSet
trigger1 = !time 
v = 29
value = 0

[State 1000, strengthvar]
type=varset
trigger1= !time && AILevel<1
var(10)=ifelse(command="DarkBarrier",0,ifelse(command="DarkBarrier",1,2))

[State 1000, strengthvarAI]
type=varset
trigger1= !time && AILevel
var(10)= 2

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 1200

[State 1400, 0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7,7
channel = 6

[State 1400, 0]
type = PlaySnd
trigger1 = !time
value = 500,6
channel = 10

[State 1400, aa2]
type = Explod 
trigger1 = !time
sprpriority = 6
id = 1001
anim = 1450
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 1000: Helper]
type = helper
trigger1 = animelemtime(4) = 1
id = 1205
pos = 0,0 ;50
postype = p1
facing = 1
stateno = 1205
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
persistent = 0
size.xscale=.5
size.yscale=.5

[State 1000: Helper]
type = helper
triggerall = !numhelper(1206)
triggerall = Numhelper(1205) = 1
trigger1 = helper(1205),stateno = 1206
trigger1 = helper(1205),time = 2
id = 1206
pos = 60, -50 ;50
postype = p1
facing = 1
stateno = 1209
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
persistent = 0
size.xscale=.5
size.yscale=.5

[State 1000, Dust Helper]
type = Helper
trigger1 = animelemtime(3) = 1
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 210, 1]
type = HitDef
;triggerall = !var(55)
trigger1 = time = 10
attr = S, SA
damage = IfElse(var(10) = 0,82,IfElse(var(10) = 1,86,90)),7
animtype = Hard
air.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
sparkno =-1 
guard.sparkno = -1 + 0 * (var(34) :=8001)
sparkxy = -10 + 0 * (var(35) :=150), var(36) :=-70
hitsound = s2,6
guardsound = s3, 0
ground.type = Low
pausetime = 11,13
guard.pausetime = 11,12
ground.slidetime = 17
ground.hittime = 16
guard.hittime = 16
guard.slidetime = 17
guard.ctrltime = 24
ground.velocity =-4.5,-7
guard.velocity =-11.1796875
air.type = High
air.velocity = -4.5,-7
fall.yvelocity = -3
air.hittime = 13
air.juggle = 0
getpower = 47,47
givepower = 16,16
id = 1200
fall = 1
air.fall = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall.recover = 0
persistent = 0

[State 3605, HitSpark]
type=Helper
trigger1=movehit=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target, time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8013, 8013)
ID=8013
name="Spark"
postype = p2
pos = (target, const(size.ground.front) -0), (target, const(size.mid.pos.y)-10)
facing=-1
ownPal=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=1

[State 220,2]
type = ChangeState
trigger1= var(10) = 0 && Time = 55
trigger2= var(10) = 1 && Time = 75
trigger3= var(10) = 2 && Time = 95
trigger4 = movecontact
trigger5= var(29) = 1
value = 1201
;=========<Dark Barrier End>==========
[Statedef 1201]
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1201

[State 0, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<EX TENSHOKYAKU>=============================
[StateDef 1430]
type = S
physics = N
moveType = A
anim = 1430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1430, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1430, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1430, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 41

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 4, -63
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1430, Voice]
type = PlaySnd
trigger1 = !Time
value = 1400,0
channel = 0

[State 1430, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 41,0
channel = 3

[State 1430, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 7
trigger2 = AnimElem = 11 || AnimElem = 15
value = 1,5

[State 1430, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 1430, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 1430, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1430, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tenshokyaku Dust"
posType = P1
ownPal = 1

[State 1430, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 7.5
y = -5.9375

[State 1430, VelAdd]
type = VelAdd
trigger1 = vel x > 0 && AnimElemTime(4) > 0
x = -0.390625

[State 1430, VelSet]
type = VelSet
trigger1 = vel x < 0 && AnimElemTime(4) > 0
x = 0

[State 1430, VelAdd]
type = VelAdd
trigger1 = vel y < 0 && AnimElemTime(4) > 0
y = 0.1953125

[State 1430, VelAdd]
type = VelAdd
trigger1 = vel y >= 0 && AnimElemTime(4) > 0
y = 0.5859375

[State 1430, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 1430, Move Contact Count Reset]
type = VarSet
trigger1 = !Time
var(11) = 0

[State 1430, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1) && var(11) < 4
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.25, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.25, -8.125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -83
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, Air Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount)) && var(11) < 4
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.5, -8.75
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.5, -8.75
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 37), var(36) := -114
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, Air Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount)) && var(11) < 4
trigger1 = AnimElem = 9
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.5625, -5.625
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5.625
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 44), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, Air Hit 3]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount)) && var(11) < 4
trigger1 = AnimElem = 13
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.5625, -5.625
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5.625
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 37), var(36) := -114
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, Air Hit 4]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount)) && var(11) < 4
trigger1 = AnimElem = 17
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.5625, -5.625
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5.625
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 44), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, Move Contact Count]
type = VarAdd
triggerAll = MoveContact = 1
trigger1 = MoveHit = 1 && NumEnemy
trigger2 = MoveGuarded = 1 && NumEnemy
var(11) = 1

[State 1430, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1401
;========================<EX TENSHOKYAKU>=============================
[StateDef 1430]
type = S
physics = N
moveType = A
anim = 1430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1430, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1430, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1430, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 41

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 4, -63
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1430, Voice]
type = PlaySnd
trigger1 = !Time
value = 1400,0
channel = 0

[State 1430, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 41,0
channel = 3

[State 1430, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 7
trigger2 = AnimElem = 11 || AnimElem = 15
value = 1,5

[State 1430, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 1430, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 1430, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1430, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tenshokyaku Dust"
posType = P1
ownPal = 1

[State 1430, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 7.5
y = -5.9375

[State 1430, VelAdd]
type = VelAdd
trigger1 = vel x > 0 && AnimElemTime(4) > 0
x = -0.390625

[State 1430, VelSet]
type = VelSet
trigger1 = vel x < 0 && AnimElemTime(4) > 0
x = 0

[State 1430, VelAdd]
type = VelAdd
trigger1 = vel y < 0 && AnimElemTime(4) > 0
y = 0.1953125

[State 1430, VelAdd]
type = VelAdd
trigger1 = vel y >= 0 && AnimElemTime(4) > 0
y = 0.5859375

[State 1430, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 1430, Move Contact Count Reset]
type = VarSet
trigger1 = !Time
var(11) = 0

[State 1430, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1) && var(11) < 4
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.25, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.25, -8.125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -83
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, Air Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount)) && var(11) < 4
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.5, -8.75
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.5, -8.75
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 37), var(36) := -114
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, Air Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount)) && var(11) < 4
trigger1 = AnimElem = 9
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.5625, -5.625
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5.625
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 44), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, Air Hit 3]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount)) && var(11) < 4
trigger1 = AnimElem = 13
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.5625, -5.625
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5.625
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 37), var(36) := -114
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, Air Hit 4]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount)) && var(11) < 4
trigger1 = AnimElem = 17
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.5625, -5.625
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5.625
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 44), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, Move Contact Count]
type = VarAdd
triggerAll = MoveContact = 1
trigger1 = MoveHit = 1 && NumEnemy
trigger2 = MoveGuarded = 1 && NumEnemy
var(11) = 1

[State 1430, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1401



;=====================<SEN'ENSHU>==========================
[Statedef 1500]
type = A
movetype = A
physics = A
ctrl = 0
poweradd = 70
sprpriority = 4
juggle = 4
velset = 0,0


[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1570
ctrl = 1

[State 777, 0]
type = StopSnd
trigger1 = !time
channel = 10
ignorehitpause = 0

[State 1500, a2]
type = StateTypeSet
trigger1 = anim = 5040
statetype = A
movetype = I
physics = A

[State 777, es]
type = Explod 
trigger1 = !time
trigger1 = pos y=0
sprpriority = 10
anim = 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99
ownpal =1

[State 1500, Wd]
type = Width
triggerall = anim!=5040
trigger1 = Time = [10,800]
value = 15,0

[State 1500, A5]
type = Velset
triggerall = anim!=5040
trigger1 = !time
x = -2
y = -15

[State 1500, A5]
type = Veladd
triggerall = anim!=5040
trigger1 = time > 8
x = 1.5
y = -.1

[State 1500, A5]
type = Velset
triggerall = anim!=5040
trigger1 = animelem = 4
x = 6;3
y = -2.9

[State 1500, A5]
type = Velset
trigger1 = moveguarded
x = -1.4


[State 1501, A5]
type = Velset
triggerall = anim=5040
trigger1 = animelem = 1
x = Vel X / 2 
y = Vel Y / 2  

[State 1501, A5]
type = Veladd
triggerall = anim=5040
trigger1 = animelemtime(2)>= 0 && animelemtime(4)<=0
;x = .1
y = .2

[State 1501, A5]
type = Velset
trigger1 = P2Dist X < -100
x = 2

[State 1500, a5]
type = NotHitBy
trigger1 = (animelemtime(1)>=0) && (animelemtime(3)<=2)
value = SCA, SA,NP,SP
time = 1

[state 1500,a0];reset for gethit
type = varset
trigger1 = !time
var(6) = 0

[state 1500,a0]
type = varset
triggerall = anim!=5040
trigger1 = animelem = 4
var(6) = 1

[state 1500,a0]
type = varset
trigger1 = anim = 5040
var(6) = 0

[State 1500, a1]
type = explod
triggerall = Var(6) = 1 && !moveguarded
trigger1 = 1
anim = 1550
ID = 1550
sprpriority = 10
postype = p1
pos = 45,-30
vel = -3.3 + (random<500),-1+ (random<500)
accel = -.2,-.1
random = 0,20
ignorehitpause = 1
scale = 1,1
ownpal =1

[State 1500, A4]
type = PlaySnd
trigger1 =!time
value = 500,10
channel = 0
removeongethit = 1

[State 1500, A4]
type = PlaySnd
trigger1 = !time
value = 6,8
channel = 1

[State 1500, ee]
type = Changeanim
triggerall = anim !=5040
trigger1 = moveguarded
trigger2 = frontEdgeBodyDist <= 0
trigger3 = time =25
value = 5040
ctrl = 0

[State 1500, aa]
type = removeexplod
trigger1 = anim=5040
trigger2 = movecontact
id = 1510

[State 1500, a1]
type = removeexplod
trigger1 = anim=5040
trigger2 = movecontact
id = 1520

[State 1500, aa2];SHINY
type = Explod 
triggerall =anim !=5040
trigger1 = animelem=4
sprpriority = 6
id = 1520
anim = 1520
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = -1
ignorehitpause = 1

[State 1500, aa3];UP
type = Explod 
triggerall =anim !=5040
trigger1 = animelem=4
sprpriority = 7
id = 1510
anim = 1510
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = -1
ignorehitpause = 1


[State 1500, close]
type = HitDef
Trigger1 = !time
attr = A, SA
hitflag = MAFP
guardflag = MA
priority = 6,hit
damage = 80,7
pausetime = 3,6
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001) 
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -50
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
guard.velocity = 0
guard.pausetime = 7,7
ground.type = low
ground.slidetime = -4
ground.hittime = -5
guard.hittime= -100
ground.velocity = 0,-1
airguard.velocity =0,-1
air.velocity = 0,-2
air.hittime = 40
airguard.hittime= -100
p2facing = 1
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff =0
airguard.cornerpush.veloff =0
palfx.time = 40
palfx.add= 60,40,5     
palfx.sinadd= 60,40,5,50
getpower  = 40
givepower = 20
p1stateno = 1505

[State 1500, ee]
type = Changestate
triggerall = anim=5040
trigger1 = animtime = 0
value = 51
ctrl = 1


[Statedef 1501];-------------------------- mid
type = A
movetype = A
physics = A
ctrl = 0
poweradd = 70
sprpriority = 4
juggle = 4
velset = 0,0


[State 777, a02]
type = ChangeAnim
trigger1 =  !time && prevstateno != 9000
value = 1570
ctrl = 1

[State 777, 0]
type = StopSnd
trigger1 = !time
channel = 10
ignorehitpause = 0

[State 1501, a2]
type = StateTypeSet
trigger1 = anim = 5040
statetype = A
movetype = I
physics = A

[State 777, es]
type = Explod 
trigger1 = !time
trigger1 = pos y=0
sprpriority = 10
anim = 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99
ownpal =1

[State 1501, Wd]
type = Width
trigger1 = Time = [10,800]
value = 15,0

[State 1501, A5]
type = Velset
trigger1 = !time
x = -3
y = -2
[State 1501, A5]
type = Veladd
triggerall = anim!=5040
trigger1 = time > 8
x = .8
y = -.4

[State 1501, A5]
type = Velset
triggerall = anim!=5040
trigger1 = animelem = 3
x = 6
y = -6
[State 1501, A5]
type = Velset
triggerall = anim=5040
trigger1 = animelem = 1
x = Vel X / 2 
y = Vel Y / 2  
[State 1501, A5]
type = Veladd
triggerall = anim=5040
trigger1 = animelemtime(2)>= 0 && animelemtime(4)<=0
;x = .1
y = .2

;[State 0, ]
;type = PosFreeze
;triggerall = anim=5040
;trigger1 = animelemtime(1)>= 0 && animelemtime(2)<=0
;value = 1
;ignorehitpause = 0
;persistent = 1

[State 1501, A5]
type = Velset
trigger1 = moveguarded
x = -1.4
[State 1501, A5]
type = Velset
trigger1 = P2Dist X < -100
x = 2

[State 1500, a5]
type = NotHitBy
trigger1 = (animelemtime(1)>=0) && (animelemtime(3)<=2)
value = SCA, SA,NP,SP
time = 1

[state 1501,a0];reset for gethit
type = varset
trigger1 = !time
var(6) = 0

[state 1501,a0]
type = varset
triggerall = anim!=5040
trigger1 = animelem = 4
var(6) = 1

[state 1501,a0]
type = varset
trigger1 = anim = 5040
var(6) = 0

[State 1501, a1]
type = explod
triggerall = Var(6) = 1 && !moveguarded
trigger1 = 1
anim = ifelse(random<400,8788,1550)
ID = 1550
sprpriority = 10
postype = p1
pos = 45,-30
vel = -4.3 + (random<500),2
accel = -.3,-.1
random = 10,10
ignorehitpause = 1
scale = 1,1
ownpal =1

[State 1501, A4]
type = PlaySnd
trigger1 =!time
value = 500,10
channel = 0
removeongethit = 1

[State 1501, A4]
type = PlaySnd
trigger1 = !time
value = 6,8
channel = 1

[State 1501, ee]
type = Changeanim
triggerall = anim !=5040
trigger1 = moveguarded
trigger2 = frontEdgeBodyDist <= 0
trigger3 = time =25
value = 5040
ctrl = 0

[State 1501, aa]
type = removeexplod
trigger1 = anim=5040
trigger2 = movecontact
id = 1510

[State 1501, a1]
type = removeexplod
trigger1 = anim=5040
trigger2 = movecontact
id = 1520

[State 1501, aa2];SHINY
type = Explod 
triggerall =anim !=5040
trigger1 = animelem=4
sprpriority = 6
id = 1520
anim = 1520
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = -1
ignorehitpause = 1

[State 1501, aa3];UP
type = Explod 
triggerall =anim !=5040
trigger1 = animelem=4
sprpriority = 7
id = 1510
anim = 1510
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = -1
ignorehitpause = 1


[State 1501, close]
type = HitDef
Trigger1 = !time
attr = A, SA
hitflag = MAFP
guardflag = MA
priority = 6,hit
damage = 80,7
pausetime = 3,6
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001) 
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -50
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
guard.velocity = 0
guard.pausetime = 7,7
ground.type = low
ground.slidetime = -4
ground.hittime = -5
guard.hittime= -500
ground.velocity = 0,-1
airguard.velocity =0,-1
airguard.hittime = -100
air.velocity = 0,-2
air.hittime = 40
p2facing = 1
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff =5
airguard.cornerpush.veloff =0
palfx.time = 40
palfx.add= 60,40,5     
palfx.sinadd= 60,40,5,50
getpower  = 40
givepower = 20
p1stateno = 1505

[State 1501, ee]
type = Changestate
triggerall = anim=5040
trigger1 = animtime = 0
value = 51
ctrl = 1
;==============================================

[Statedef 1502];--------------- close
type = A
movetype = A
physics = A
ctrl = 0
poweradd = 70
sprpriority = 4
juggle = 4
velset = 0,0

[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 1570
ctrl = 1

[State 777, 0]
type = StopSnd
trigger1 = !time
channel = 10
ignorehitpause = 0

[State 1502, a2]
type = StateTypeSet
trigger1 = anim = 5040
statetype = A
movetype = I
physics = A

[State 777, es]
type = Explod 
trigger1 = !time
trigger1 = pos y=0
sprpriority = 10
anim = 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99
ownpal =1

[State 1502, Wd]
type = Width
trigger1 = Time = [10,800]
value = 15,0

[State 1502, A5]
type = Velset
trigger1 = !time
x = -3;-2
y = -4;-3
[State 1502, A5]
type = Veladd
triggerall = anim!=5040
trigger1 = time > 8
y = -.1
[State 1502, A5]
type = Veladd
triggerall = anim!=5040
trigger1 = time > 19
y = -.06
[State 1502, A5]
type = Velset
triggerall = anim!=5040
trigger1 = animelem = 2
x = 5;4
y = -8;-2.8
[State 1502, A5]
type = Velset
trigger1 = moveguarded
x = -1.4
[State 1502, A5]
type = Velset
trigger1 = P2Dist X < -100
x = 2

[State 1502, A5]
type = Velset
triggerall = anim=5040
trigger1 = animelem = 2
y = .1
x = .5

[State 1500, a5]
type = NotHitBy
trigger1 = (animelemtime(1)>=0) && (animelemtime(3)<=2)
value = SCA, SA,NP,SP
time = 1

[state 1502,a0];reset for gethit
type = varset
trigger1 = !time
var(6) = 0
[state 1502,a0]
type = varset
triggerall = anim!=5040
trigger1 = animelem = 4
var(6) = 1
[state 1502,a0]
type = varset
trigger1 = anim = 5040
var(6) = 0

[State 1502, a1]
type = explod
triggerall = Var(6) = 1 && !moveguarded
trigger1 = 1
anim = ifelse(random<500,8788,1550)
ID = 1550
sprpriority = 10
postype = p1
pos = 45,-30
vel = -2.3 + (random<500),2
;accel = -.2,-.1
random = 10,10
ignorehitpause = 1
scale = 1,1
ownpal =1

[State 1502, A4]
type = PlaySnd
trigger1 =!time
value = 500,10
channel = 0
removeongethit = 1

[State 1502, A4]
type = PlaySnd
trigger1 = !time
value = 6,8
channel = 1

[State 1502, ee]
type = Changeanim
triggerall = anim !=5040
trigger1 = moveguarded
trigger2 = frontEdgeBodyDist <= 0
trigger3 = time =17
value = 5040
ctrl = 0

[State 1502, aa]
type = removeexplod
trigger1 = anim=5040
trigger2 = movecontact
id = 1510

[State 1502, a1]
type = removeexplod
trigger1 = anim=5040
trigger2 = movecontact
id = 1520

[State 1502, aa2];SHINY
type = Explod 
triggerall =anim !=5040
trigger1 = animelem=4
sprpriority = 6
id = 1520
anim = 1520
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = -1
ignorehitpause = 1

[State 1502, aa3];UP
type = Explod 
triggerall =anim !=5040
trigger1 = animelem=4
sprpriority = 7
id = 1510
anim = 1510
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = -1
ignorehitpause = 1


[State 1502, close]
type = HitDef
Trigger1 = !time
attr = A, SA
hitflag = MAFP
guardflag = MA
priority = 6,hit
damage = 80,7
pausetime = 3,6
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001) 
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -50
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
guard.velocity = 0
guard.pausetime = 7,7
ground.type = low
ground.slidetime = -4
ground.hittime = -5
guard.hittime= -100
ground.velocity = 0,-1
airguard.velocity =0,-1
airguard.hittime = -100
air.velocity = 0,-2
air.hittime = 40
p2facing = 1
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff =0
airguard.cornerpush.veloff =0
palfx.time = 40
palfx.add= 60,40,5     
palfx.sinadd= 60,40,5,50
getpower  = 40
givepower = 20
p1stateno = 1505

[State 1502, ee]
type = Changestate
triggerall = anim=5040
trigger1 = animtime = 0
value = 51
ctrl = 1
;=============================================
[Statedef 1503]
type = A
movetype = A
physics = A
ctrl = 0
poweradd = 70
sprpriority = 4
juggle = 4
velset = 0,0


[State 777, a02]
type = ChangeAnim
trigger1 =  !time && prevstateno != 9000
value = 1570
ctrl = 1

[State 777, 0]
type = StopSnd
trigger1 = !time
channel = 10
ignorehitpause = 0

[State 1502, a2]
type = StateTypeSet
trigger1 = anim = 5040
statetype = A
movetype = I
physics = A

[State 777, es]
type = Explod 
trigger1 = !time
trigger1 = pos y=0
sprpriority = 10
anim = 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99
ownpal =1

[State 1502, Wd]
type = Width
trigger1 = Time = [10,800]
value = 15,0

[State 1502, A5]
type = Velset
trigger1 = !time
x = 1
y = -1;-3

[State 1503, A5]
type = Veladd
triggerall = anim!=5040
trigger1 = time > 8
y = -.1

[State 1503, A5]
type = Veladd
triggerall = anim!=5040
trigger1 = time > 19
y = -.06

[State 1503, A5]
type = Velset
triggerall = anim!=5040
trigger1 = animelem = 2
x = 6;4
y = 2;-2.8

[State 1503, A5]
type = Velset
trigger1 = moveguarded
x = -1.4
[State 1503, A5]
type = Velset
trigger1 = P2Dist X < -100
x = 2

[State 1503, A5]
type = Velset
triggerall = anim=5040
trigger1 = animelem = 2
y = .1
x = .5

[State 1500, a5]
type = NotHitBy
trigger1 = (animelemtime(1)>=0) && (animelemtime(3)<=2)
value = SCA, SA,NP,SP
time = 1

[State 1500, a6]
type = HitBy
trigger1 = animelemtime(4)>=0
value = SCA, SA,HA,NP,SP,HP

[state 1503,a0];reset for gethit
type = varset
trigger1 = !time
var(6) = 0

[state 1503,a0]
type = varset
triggerall = anim!=5040
trigger1 = animelem = 4
var(6) = 1

[state 1503,a0]
type = varset
trigger1 = anim = 5040
var(6) = 0

[State 1503, a1]
type = explod
triggerall = Var(6) = 1 && !moveguarded
trigger1 = 1
anim = ifelse(random<500,8788,1550)
ID = 1550
sprpriority = 10
postype = p1
pos = 45,-30
vel = -2.3 + (random<500),2
;accel = -.2,-.1
random = 10,10
ignorehitpause = 1
scale = 1,1
ownpal =1

[State 1503, A4]
type = PlaySnd
trigger1 =!time
value = 500,10
channel = 0
removeongethit = 1

[State 1503, A4]
type = PlaySnd
trigger1 = !time
value = 6,8
channel = 1

[State 1503, ee]
type = Changeanim
triggerall = anim !=5040
trigger1 = moveguarded
trigger2 = frontEdgeBodyDist <= 0
trigger3 = time =17
value = 5040
ctrl = 0

[State 1503, aa]
type = removeexplod
trigger1 = anim=5040
trigger2 = movecontact
id = 1510

[State 1502, a1]
type = removeexplod
trigger1 = anim=5040
trigger2 = movecontact
id = 1520

[State 1502, aa2];SHINY
type = Explod 
triggerall =anim !=5040
trigger1 = !time
sprpriority = 6
id = 1520
anim = 1520
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 9
ignorehitpause = 1

[State 1502, aa3];UP
type = Explod 
triggerall =anim !=5040
trigger1 = !time
sprpriority = 7
id = 1510
anim = 1510
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 9
ignorehitpause = 1


[State 1503, close]
type = HitDef
Trigger1 = !time
attr = A, SA
hitflag = MAFP
guardflag = MA
priority = 6,hit
damage = 80,7
pausetime = 3,6
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001) 
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -50
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
guard.velocity = -15
guard.pausetime = 7,7
ground.type = low
ground.slidetime = 15
ground.hittime = 20
ground.velocity = 0,-1
airguard.velocity =0,-1
airguard.hittime = -100
air.velocity = 0,-2
air.hittime = 40
p2facing = 1
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff =0
airguard.cornerpush.veloff =0
palfx.time = 40
palfx.add= 60,40,5     
palfx.sinadd= 60,40,5,50
getpower  = 40
givepower = 20
p1stateno = 1505

[State 1503, ee]
type = Changestate
triggerall = anim=5040
trigger1 = animtime = 0
value = 51
ctrl = 1
 ;=========================================================
[Statedef 1505]
type = A
movetype = A
physics = S
ctrl = 0
sprpriority = 4
juggle = 4
velset = 1,0

[State 1505,0]
type = TargetBind
trigger1 = !time
time = 1
pos = 65,10
ignorehitpause = 1
persistent=0

[State 777, a02]
type = ChangeAnim
trigger1 =  !time && prevstateno != 9000
value =1505
ctrl = 1

[State 1505, 2a]
type = ScreenBound
trigger1 = 1
value = 1
ignorehitpause = 1

[State 1505,a0]
type = Helper
trigger1 = !time
StateNo = 3597
id = 3597
name = "camera2"
pos = -50,0

[state 1505,a0]
type = varset
trigger1 = !time
var(6) = 1

[State 1505, Wd]
type = Width
trigger1 = Time = [10,800]
value = 15,0

[State 1505, A4]
type = PlaySnd
triggerall = movetype = A
trigger1 = time%9 = 0
value = 6,4
channel = 6

[State 1505, a1];stars
type = explod
triggerall = Var(6) = 1
trigger1 = 1
anim = ifelse(random<300,1550,9742) 
ID = 1550
sprpriority = 10
postype = p1
pos = 80,-55
vel = -4 + (random<500),-2+ (random<500)
accel = -.6,-.3
random = 2,4
ignorehitpause = 1
scale = .4,.4
ownpal =1
[State 1505, a2];stars
type = explod
triggerall = Var(6) = 1
trigger1 = 1
anim = ifelse(random<300,1550,9742) 
ID = 1551
sprpriority = 10
postype = p1
pos = 80,-55
vel = -4 + (random<500),2+ (random<500)
accel = -.6,.3
random = 2,4
ignorehitpause = 1
scale = .4,.4
ownpal =1
[state 1505,a0]
type = varset
trigger1 = animelem = 18
var(6) = 0

[State 1505, a5]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1500, aa]
type = removeexplod
trigger1 = !time
id = 1510
[State 1500, a1]
type = removeexplod
trigger1 = !time
id = 1520

[State 1500, ab2]
type = Explod 
trigger1 = animelem=1
sprpriority = 6
id = 1511
anim = 1511
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 2
ID = 1511

[State 1500, ab3]
type = Explod 
trigger1 = animelem=2
sprpriority = 6
id = 1512
anim = 1512
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 3
ID = 1512

[State 1500, ab4]
type = Explod 
trigger1 = animelem=3
sprpriority = 6
id = 1513
anim = 1513
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 4
ID = 1513

[State 1500, ab5]
type = Explod 
trigger1 = animelem=4
sprpriority = 6
id = 1514
anim = 1514
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 5
ID = 1514

[State 1500, ab6]
type = Explod 
trigger1 = animelem=5
sprpriority = 6
id = 1515
anim = 1515
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 6
ID = 1515

[State 1500, ab7]
type = Explod 
trigger1 = animelem=6
sprpriority = 6
id = 1516
anim = 1516
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 7
ID = 1516

[State 1500, ab2];-------------2nd
type = Explod 
trigger1 = animelem=7
sprpriority = 6
id = 1511
anim = 1511
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 8
ID = 1511

[State 1500, ab3]
type = Explod 
trigger1 = animelem=8
sprpriority = 6
id = 1512
anim = 1512
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 9
ID = 1512

[State 1500, ab4]
type = Explod 
trigger1 = animelem=9
sprpriority = 6
id = 1513
anim = 1513
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 10
ID = 1513

[State 1500, ab5]
type = Explod 
trigger1 = animelem=10
sprpriority = 6
id = 1514
anim = 1514
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 11
ID = 1514

[State 1500, ab6]
type = Explod 
trigger1 = animelem=11
sprpriority = 6
id = 1515
anim = 1515
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 12
ID = 1515

[State 1500, ab7]
type = Explod 
trigger1 = animelem=12
sprpriority = 6
id = 1516
anim = 1516
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 13
ID = 1516

[State 1500, ab2];----------------3rd
type = Explod 
trigger1 = animelem=13
sprpriority = 6
id = 1511
anim = 1511
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 14
ID = 1511

[State 1500, ab3]
type = Explod 
trigger1 = animelem=14
sprpriority = 6
id = 1512
anim = 1512
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 15
ID = 1512

[State 1500, ab4]
type = Explod 
trigger1 = animelem=15
sprpriority = 6
id = 1513
anim = 1513
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 16
ID = 1513

[State 1500, ab5]
type = Explod 
trigger1 = animelem=16
sprpriority = 6
id = 1514
anim = 1514
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 17
ID = 1514

[State 1500, ab6]
type = Explod 
trigger1 = animelem=17
sprpriority = 6
id = 1515
anim = 1515
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 18
ID = 1515

[State 1500, ab7]
type = Explod 
trigger1 = animelem=18
sprpriority = 6
id = 1516
anim = 1516
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1500, re] 
type = RemoveExplod
trigger1 = AnimElem = 19
ID = 1516



[State 1505, mult]
type = HitDef
Trigger1 = animelem=3||animelem=6||animelem=9||animelem=12||animelem=15
;Trigger2 = animelem=2||animelem=4||animelem=8||animelem=11||animelem=14
attr = A, SA
hitflag = MAFP
guardflag = MA
animtype = medium
priority = 6,hit
damage = 5,2
pausetime = 2,3
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001) 
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -50
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 10
ground.hittime = 40
ground.velocity = 0,-1
air.velocity = 0,-2
air.hittime = 40
p2facing = 1
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 40
palfx.add= 60,40,5     
palfx.sinadd= 60,40,5,50
getpower  = 4
givepower = 2


[State 1505, end]
type = HitDef
Trigger1 = animelem=16
attr = A, SA
animtype  = hard
damage    = 8, 5
priority  = 6, hit
hitflag = MAFP 
guardflag = MA
pausetime = 6,6
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001) 
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -50
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = high
air.type = high
ground.slidetime = 20
ground.hittime  = 40
air.hittime  = 40
ground.velocity = -15,-5
air.velocity = -15,-5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 40
palfx.add= 60,40,5     
palfx.sinadd= 60,40,5,50
getpower  = 4
givepower = 2

[State 777, hsp]
type = helper
trigger1 = animelem = 16 && movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =-30+(const(size.mid.pos.x)),-5+(const(size.mid.pos.y))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 1505, A5]
type = Velset
trigger1 = animelemtime(1) >= 0 && animelemtime(18) < 2
x = 1

[State 1505, A5]
type = Velset
trigger1 = animelem = 19
y = -7
x = -3

[State 1505, A5]
type = Veladd
trigger1 = animelem = 20
y = 2
x = -1

[State 1505,d ]
type = StopSnd
trigger1 = animelem = 18||animelem = 19
channel = 6
;ignorehitpause = 0
;persistent = 1


[State 1505, a2]
type = StateTypeSet
trigger1 = animelem = 20
statetype = A
movetype = I
physics = A

[State 1500, re] 
type = RemoveExplod
trigger1 = p2movetype != H
ID = 1511

[State 1500, re] 
type = RemoveExplod
trigger1 = p2movetype != H
ID = 1512

[State 1500, re] 
type = RemoveExplod
trigger1 = p2movetype != H
ID = 1513

[State 1500, re] 
type = RemoveExplod
trigger1 = p2movetype != H
ID = 1514

[State 1500, re] 
type = RemoveExplod
trigger1 = p2movetype != H
ID = 1515

[State 1500, re] 
type = RemoveExplod
trigger1 = p2movetype != H
ID = 1516

[State 1505, end]
type = ChangeState
trigger1 = p2movetype != H
trigger2 = AnimTime = 0
value = 51
ctrl = 0



;=====================<EX SEN'ENSHU>==========================
[StateDef 1530]
type = S
physics = N
moveType = A
anim = 1530
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1530, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1530, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1530, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 24

[State 1530, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -1, -63
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1530, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 3300,0
channel = 0

[State 1530, Step sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 100,0
channel = 3

[State 1530, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1,5
channel = 4

[State 1530, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1

[State 1530, VelSet]
type = VelSet
trigger1 = !Time
x = 7.5

[State 1530, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) < 0
x = -0.390625

[State 1530, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1530, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 1530, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 12.5

[State 1530, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 0 && AnimElemTime(12) < 0
x = -0.1953125

[State 1530, VelSet]
type = VelSet
trigger1 = AnimElem = 12
x = 0

[State 1530, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1)
trigger1 = AnimElem = 11
ID = 1530
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 119 < 7, 7, fvar(11) * 119)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5.40, 3.24
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -86
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1530, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1530) > 1
ID = 1530
keepOne = 1
excludeID = 1530
ignoreHitPause = 1

[State 1530, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1530)
trigger1 = !(Target(1530), Time)
value = ifElse(Target(1530), StateType = A, 5425, 5420)
ID = 1530
ignoreHitPause = 1

[State 1530, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 1530, StateTypeSet: Standing, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 12
stateType = S
physics = N

[State 1530, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 52,0
channel = 5

[State 1530, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 12
anim = 8102
sprPriority = -3
posType = P1
pos = 15,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1530, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<PUNCH ZERO COUNTER>=============================
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 2900, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,2
channel = 1

[State 2900, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1)
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 59), var(36) := -59
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2900, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= 10
value = 2900
elem = 4
ignoreHitPause = 1

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 2900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<KICK ZERO COUNTER>=============================
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,4
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0,0
givepower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 89), var(36) := -9
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(6) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;-----------------------------------------------------------------------
;CHUTE VOADOR
;--------------------------------------------------
[Statedef 12150]
type    = A
movetype= I
physics = N
juggle  = 6
ctrl = 0
poweradd = 70
sprpriority = 5

[State 2150, 0]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 2150
ctrl = 1

[State 777, es]
type = Explod 
trigger1 = !time
sprpriority = 10
anim = 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 2150, a2]
type = PlaySnd
trigger1 = !time
value = 6,8
;volume = 250

[State 2150, a2]
type = PlaySnd
trigger1 = animelem = 1
value = 500,1
channel = 0

[State 2150, a3]
type = PlayerPush
trigger1 = 1
value = 0

[State 2150, a4]
type = Velset
trigger1 = animelem = 3
x = 0
y = -10
[State 2150, a5]
type = Veladd
trigger1 = animelem = 3
y = -3



[State 2150, a8]
type = ChangeState
trigger1 = Time = 20
value = 12200
ctrl = 0

;------------------------------------------------
[Statedef 12151]
type    = A
movetype= I
physics = N
juggle  = 6
ctrl = 0
poweradd = 70
sprpriority = 5

[State 2151, 0]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 2150
ctrl = 1

[State 777, es]
type = Explod 
trigger1 = !time
sprpriority = 10
anim = 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 2151, a2]
type = PlaySnd
trigger1 = time=0
value = 6,8
;volume = 250

[State 2150, a2]
type = PlaySnd
trigger1 = animelem = 1
value = 500,1
channel = 0

[State 2151, a3]
type = PlayerPush
trigger1 = 1
value = 0

[State 2151, a4]
type = Velset
trigger1 = animelem = 3
x = 0
y = -10
[State 2151, a5]
type = Veladd
trigger1 = animelem = 3
y = -3


[State 2151, a8]
type = ChangeState
trigger1 = Time = 20
value = 12201
ctrl = 0
;----------------------------------------------------------

[Statedef 12152]
type    = A
movetype= I
physics = N
juggle  = 6
ctrl = 0
poweradd = 70
sprpriority = 5

[State 2152, 0]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 2150
ctrl = 1

[State 777, es]
type = Explod 
trigger1 = !time
sprpriority = 10
anim = 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 2152, a2]
type = PlaySnd
trigger1 = !time
value = 6,8
;volume = 250

[State 2150, a2]
type = PlaySnd
trigger1 = animelem = 1
value = 500,1
channel = 0 

[State 2152, a3]
type = PlayerPush
trigger1 = 1
value = 0

[State 2152, a4]
type = Velset
trigger1 = animelem = 3
x = 0
y = -10

[State 2152, a5]
type = Veladd
trigger1 = animelem = 3
y = -3


[State 2152, a8]
type = ChangeState
trigger1 = Time = 20
value = 12202
ctrl = 0
;-----------------------------------------------------
[Statedef 12200] 
type    = A
movetype= A
physics = N
juggle  = 6
poweradd= 70
ctrl = 0
;facep2 = 1
sprpriority = 5


[State 2150, 0]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 2200
ctrl = 1


[State 2200, a1]
type = Width
trigger1 = 1
player = -25,-25

[State 2200, a2]
type = VelSet
trigger1 = animelem = 1 
x = 0
y = 0

[State 2200,a3]
type = VelSet
trigger1 = animelem = 8 
x = 1
y = 2

[State 2200, a4]
type = AfterImage
trigger1 = animelem = 8
time = 10
palcontrast = 222,142,82
trans = add
length = 8 
palbright = 42,22,2
palmul = .73,.63,.3
palcontrast = 222,142,82
timegap = 1
framegap = 1
ignorehitpause=1

[State 2200, a4]
type = AfterImagetime
trigger1 = movecontact
time = 1


[state 2200, a5]
type = VelAdd
trigger1 = animelem = 8
x = 1
y = 9

[State 2200 , a6]
type = PlaySnd
trigger1 = AnimElem = 1
value = 6,7
channel=5

[State 2200 , a6]
type = PlaySnd
trigger1 = AnimElem = 7
value = 6,9
channel=6
IgnoreHitPause = 1

[State 7777, voice]
type = PlaySnd
trigger1 = !time && prevstateno != 12150
value = 50,0
channel = 0
IgnoreHitPause = 1


[State 2200 , a8]
type = HitDef
trigger1 = !time
trigger1 = (prevstateno != [600,650]) || (prevstateno != [12600,12650])
attr = A, SA
damage    = 95, 5
animtype = hard 
hitflag = MAF
guardflag = HA
pausetime = 9,9
priority = 6, Hit 
sparkxy = ifelse(p2statetype=A,(enemy ,const(size.mid.pos.x)),(enemy ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemy ,const(size.mid.pos.y)),(enemy ,const(size.head.pos.y)))
sparkno = -1
guard.sparkno = ifelse(!var(55),-1,40) 
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = high
air.type = low
ground.slidetime = 12
ground.hittime = 35
ground.velocity = -12
air.velocity = -8, 4
air.hittime = 35
envshake.time = 9
envshake.ampl = 5
fall.envshake.time = 7
fall.envshake.ampl = -4
;p1stateno = 12215
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower  = 40
givepower = 20
fall=1

[State 2200 , a8x]
type = HitDef
trigger1 = !time 
trigger1 = (prevstateno = [600,650]) || (prevstateno = [12600,12650])
attr = A, SA
damage    = 15, 5
animtype = hard 
priority = 6, Hit 
hitflag = MAF
guardflag = HA
pausetime = 9,9
sparkxy = ifelse(p2statetype=A,(enemy ,const(size.mid.pos.x)),(enemy ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemy ,const(size.mid.pos.y)),(enemy ,const(size.head.pos.y)))
sparkno = -1;S8510
guard.sparkno = ifelse(!var(55),-1,40) 
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = high
air.type = low
ground.slidetime = 12
ground.hittime = 35
ground.velocity = -12
air.velocity = -8, 4
air.hittime = 35
envshake.time = 9
envshake.ampl = 5
fall.envshake.time = 7
fall.envshake.ampl = -4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower  = 40
givepower = 20
fall=1

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8000, 8000)
ID=8000
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =ifelse(p2statetype=A,(enemy ,const(size.mid.pos.x)),(enemy ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemy ,const(size.mid.pos.y)),(enemy ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1



[State 2200 , a9]
type = ChangeState
trigger1 = movecontact
value = 12215

[State 2200 , a9]
type = ChangeState
trigger1 = Pos Y >= 0
value = 12210
;--------------------------------------------------


[Statedef 12201]
type    = A
movetype= A
physics = N
juggle  = 6
poweradd= 70
ctrl = 0
;facep2 = 1
sprpriority = 5


[State 2150, 0]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 2201
ctrl = 1


[State 2201, a1]
type = Width
trigger1 = 1
player = -25,-25

[State 2201, a2]
type = VelSet
trigger1 = animelem = 1 
x = 0
y = 0

[State 2201,a3]
type = VelSet
trigger1 = animelem = 8 
x = 6
y = 2

[State 2201, a4]
type = AfterImage
trigger1 = animelem = 8
time = 10
palcontrast = 222,142,82
trans = add
length = 8 
palbright = 42,22,2
palmul = .73,.63,.3
palcontrast = 222,142,82
timegap = 1
framegap = 1
ignorehitpause=1
[State 2200, a4]
type = AfterImagetime
trigger1 = movecontact
time = 1

[state 2201, a5]
type = VelAdd
trigger1 = animelem = 8
x = 2
y = 9.3

[State 2201 , a6]
type = PlaySnd
trigger1 = AnimElem = 1
value = 6,7
channel=5
[State 2201 , a6]
type = PlaySnd
trigger1 = AnimElem = 7
value = 6,9
channel=6
IgnoreHitPause = 1

[State 7777, voice]
type = PlaySnd
trigger1 = !time&& prevstateno != 12151
value = 50,4
channel = 0
IgnoreHitPause = 1


[State 2201 , a8]
type = HitDef
trigger1 = !time
trigger1 = (prevstateno != [600,650]) || (prevstateno != [12600,12650])
attr = A, SA
damage    = 95, 5
animtype = hard 
priority = 6, Hit 
hitflag = MAF
guardflag = HA
pausetime = 9,9
sparkxy = ifelse(p2statetype=A,(enemy ,const(size.mid.pos.x)),(enemy ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemy ,const(size.mid.pos.y)),(enemy ,const(size.head.pos.y)))
sparkno = -1
guard.sparkno = ifelse(!var(55),-1,40) 
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = high
air.type = low
ground.slidetime = 12
ground.hittime = 35
ground.velocity = -12
air.velocity = -8, 4
air.hittime = 35
envshake.time = 9
envshake.ampl = 5
fall.envshake.time = 7
fall.envshake.ampl = -4
;p1stateno = 12215
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower  = 40
givepower = 20
fall=1

[State 2201 , a8x]
type = HitDef
trigger1 = !time 
trigger1 = (prevstateno = [600,650]) || (prevstateno = [12600,12650])
attr = A, SA
damage    = 15, 5
animtype = hard 
priority = 6, Hit 
hitflag = MAF
guardflag = HA
pausetime = 9,9
sparkxy = ifelse(p2statetype=A,(enemy ,const(size.mid.pos.x)),(enemy ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemy ,const(size.mid.pos.y)),(enemy ,const(size.head.pos.y)))
sparkno = -1
guard.sparkno = ifelse(!var(55),-1,40) 
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = high
air.type = low
ground.slidetime = 12
ground.hittime = 35
ground.velocity = -12
air.velocity = -8, 4
air.hittime = 35
envshake.time = 9
envshake.ampl = 5
fall.envshake.time = 7
fall.envshake.ampl = -4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower  = 40
givepower = 20
fall=1

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8000, 8000)
ID=8000
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =ifelse(p2statetype=A,(enemy ,const(size.mid.pos.x)),(enemy ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemy ,const(size.mid.pos.y)),(enemy ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 2201 , a9]
type = ChangeState
trigger1 = movecontact
value = 12215

[State 2201 , a9]
type = ChangeState
trigger1 = Pos Y >= 0
value = 12210
;--------------------------------------------------


[Statedef 12202]
type    = A
movetype= A
physics = N
juggle  = 6
poweradd= 70
ctrl = 0
;facep2 = 1
sprpriority = 5


[State 2150, 0]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 2202
ctrl = 1


[State 2202, a1]
type = Width
trigger1 = 1
player = -25,-25

[State 2202, a2]
type = VelSet
trigger1 = animelem = 1 
x = 0
y = 0

[State 2202,a3]
type = VelSet
trigger1 = animelem = 8 
x = 13
y = 2

[State 2202, a4]
type = AfterImage
trigger1 = animelem = 8
time = 10
palcontrast = 222,142,82
trans = add
length = 8 
palbright = 42,22,2
palmul = .73,.63,.3
palcontrast = 222,142,82
timegap = 1
framegap = 1
ignorehitpause=1
[State 2200, a4]
type = AfterImagetime
trigger1 = movecontact
time = 1

[state 2202, a5]
type = VelAdd
trigger1 = animelem = 8
x = 4
y = 8

[State 2202 , a6]
type = PlaySnd
trigger1 = AnimElem = 1
value = 6,7
channel=5
[State 2202 , a6]
type = PlaySnd
trigger1 = AnimElem = 7
value = 6,9
channel=6
IgnoreHitPause = 1

[State 7777, voice]
type = PlaySnd
trigger1 = !time&& prevstateno != 12152
value = 50,6
channel = 0
IgnoreHitPause = 1


[State 2202 , a8]
type = HitDef
trigger1 = !time
trigger1 = (prevstateno != [600,650]) || (prevstateno != [12600,12650])
attr = A, SA
damage    = 95, 5
animtype = hard 
priority = 6, Hit 
hitflag = MAF
guardflag = HA
pausetime = 9,9
sparkxy = ifelse(p2statetype=A,(enemy ,const(size.mid.pos.x)),(enemy ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemy ,const(size.mid.pos.y)),(enemy ,const(size.head.pos.y)))
sparkno = -1
guard.sparkno = ifelse(!var(55),-1,40) 
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = high
air.type = low
ground.slidetime = 12
ground.hittime = 35
ground.velocity = -12
air.velocity = -8, 4
air.hittime = 35
envshake.time = 9
envshake.ampl = 5
fall.envshake.time = 7
fall.envshake.ampl = -4
;p1stateno = 12215
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower  = 40
givepower = 20
fall=1

[State 2202 , a8x]
type = HitDef
trigger1 = !time 
trigger1 = (prevstateno = [600,650]) || (prevstateno = [12600,12650])
attr = A, SA
damage    = 15, 5
priority = 6, Hit 
animtype = hard 
hitflag = MAF
guardflag = HA
pausetime = 9,9
sparkxy = ifelse(p2statetype=A,(enemy ,const(size.mid.pos.x)),(enemy ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemy ,const(size.mid.pos.y)),(enemy ,const(size.head.pos.y)))
sparkno = -1
guard.sparkno = ifelse(!var(55),-1,40) 
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = high
air.type = low
ground.slidetime = 12
ground.hittime = 35
ground.velocity = -12
air.velocity = -8, 4
air.hittime = 35
envshake.time = 9
envshake.ampl = 5
fall.envshake.time = 7
fall.envshake.ampl = -4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower  = 40
givepower = 20
fall=1

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8000, 8000)
ID=8000
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =ifelse(p2statetype=A,(enemy ,const(size.mid.pos.x)),(enemy  ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemy  ,const(size.mid.pos.y)),(enemy  ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 2202 , a9]
type = ChangeState
trigger1 = movecontact
value = 12215

[State 2202 , a9]
type = ChangeState
trigger1 = Pos Y >= 0
value = 12210
;----------------------------------------------------

[Statedef 12210]
type    = S
movetype= I
physics = S
;facep2 = 1
ctrl = 0
velset = 0,0
sprpriority = 6

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 2210
ctrl = 1

[State 2200, a4]
type = AfterImagetime
trigger1 =!time
time = 1


[State 2110, a1]
type = PosSet
trigger1 = !Time
y = 0

[State 777, hsp]
type = helper
trigger1 = time=2;time =14
helpertype = normal
stateno = 8706
ID = 8706
name = "hitspark6"
postype = p1
pos = 6,3
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 12210, a1];smoke on the water :P
type = explod
trigger1 = !time
anim = 8731
ID = 8739
sprpriority = -3
postype = p1
pos = -10,-5
vel = 0 ,0
accel = -.08,-.07
ignorehitpause = 1
scale = .8,.8
supermovetime=99
pausemovetime=99
ownpal=1

[State 12210, a2];r
type = explod
trigger1 = !time
anim = 8731
ID = 8737
sprpriority = -3
postype = p1
pos = 10,-5
vel = 0,0
accel = .08,-.07
ignorehitpause = 1
scale = .8,.8
supermovetime=99
pausemovetime=99
ownpal=1

[State 12210, a1];smoke on the water :P
type = explod
trigger1 = time=5
anim = 8731
ID = 8735
sprpriority = 5
postype = p1
pos = -3,5
vel = 0 ,0
accel = -.1,0
ignorehitpause = 1
scale = .5,.5
supermovetime=99
pausemovetime=99
ownpal=1

[State 12210, a2];r
type = explod
trigger1 = time=5
anim = 8731
ID = 8734
sprpriority = 5
postype = p1
pos = 3,5
vel = 0 ,0
accel = .1,0
ignorehitpause = 1
scale = .5,.5
supermovetime=99
pausemovetime=99
ownpal=1


[State 2210, b1] ;explod rock
type = Explod
trigger1 = prevstateno = 3201 && !time
anim = 8676
postype = p1
pos = 14, 5
sprpriority = 12
persistent = 0

[State 2210, b3 ]
type = PlaySnd
trigger1 = !time
value = 7, 2

[State 2210,a3]
type = VelSet
trigger1 = animelem = 1 
x = 2

[State 2210,a3]
type = VelSet
trigger1 = animelem = 2 
x = 1

[State 2210,a3]
type = VelSet
trigger1 = animelem = 3
x = 0

[State 2210, b11] ;explod2
type = Explod
trigger1 = !var(55) && !Time
anim = 8000
pos = -3,-3
supermovetime = 999
pausemovetime = 999
ownpal = 1
scale=.6,.6
sprpriority = -7
[State 52, 0]
type = Explod 
trigger1 =var(55)&&!Time 
anim = F60
pos = 0,0
supermovetime = 999
pausemovetime = 999
ownpal = 1
sprpriority = -7

[State 2210, b2]
type = EnvShake
trigger1 = !time
time = 14
ampl = -6

[State 2210, b4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------

[Statedef 12215];hit dive
type    = A
movetype= I
physics = A
ctrl = 0

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 2205
ctrl = 1

[State 777, ch]
type = afterimagetime
trigger1 = !time
value = 1

[State 2215, a5]
type = VelAdd
trigger1 = time>=1
y = .4

[State 2215, a2]
type = VelSet
trigger1 = !time 
x = -5
y = -7
;----------------------------------------------


[Statedef 12600]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd= 15
ctrl = 0
sprpriority = 2
hitcountpersist =1

[State 777, A0]
type = Velset
trigger1 =!time
y = 0
x = 0

[State 777, hsp]
type = helper
trigger1 = !var(55)&&movehit 
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = ifelse(p2statetype=A,(target ,const(size.mid.pos.x)),(target ,const(size.head.pos.x))),ifelse(p2statetype=A,(target ,const(size.mid.pos.y)),(target ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8000, 8000)
ID=8000
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1


[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 600
ctrl = 1

[State 600, voz]
type = PlaySnd
trigger1 = AnimElem = 1&& random <= 500
value = 50,0
channel = 0

[State 600, 1]
type = PlaySnd
trigger1 = !Time
value = 0, 0

[State 600, 2]
type = HitDef
trigger1 = !Time
attr = A, NA
damage = 30
hitflag = MAF
guardflag = HA
priority = 3, Hit 
pausetime = 6,6
sparkno = ifelse(!var(55),-1,0);Sifelse(random>500,8520,8521) 
guard.sparkno = ifelse(!var(55),-1,40)
sparkxy = -10,-90
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
air.type = low
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -4
ground.cornerpush.veloff = -8
air.velocity = 0,-9;-8
air.hittime  = 20
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -8
airguard.velocity = -3,-3
getpower  = 20
givepower = 10
fall=1


[State 2600, change]
type = ChangeState
trigger1 = AnimTime = 0
value = 12001
ctrl = 1
;-------------------------------------------------------


[Statedef 12610]
type    = A
movetype= A
physics = N
juggle  = 2
poweradd= 25
ctrl = 0
sprpriority = 2
hitcountpersist =1

[State 777, A0]
type = Velset
trigger1 =!time
y = 0
x = 0

[State 777, hsp]
type = helper
trigger1 = !var(55)&& movehit 
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = ifelse(p2statetype=A,(target ,const(size.mid.pos.x)),(target ,const(size.head.pos.x))),ifelse(p2statetype=A,(target ,const(size.mid.pos.y)),(target ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8000, 8000)
ID=8000
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1


[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 610
ctrl = 1
[State 777, a02]
type = ChangeAnim
trigger1 =  !time && prevstateno != 9000
value = 15610
ctrl = 1


[State 610, voz]
type = PlaySnd
trigger1 = AnimElem = 1&& random <= 500
value = 50,1
channel = 0

[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 610, 3]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype = Medium
damage = ifelse((prevstateno = [600,650]),35,45)
hitflag = MAF
guardflag = HA
priority = 4, Hit 
pausetime = 6,6
sparkno = ifelse(!var(55),-1,1);Sifelse(random>500,8500,8501)
guard.sparkno = ifelse(!var(55),-1,41)
sparkxy = -8,-86
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
air.type = high
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -5
air.velocity = 0,-8
air.hittime  = 25
air.cornerpush.veloff = 0
ground.cornerpush.veloff = -8
guard.cornerpush.veloff = -8
airguard.velocity = -3,-3
getpower  = 30
givepower = 15
fall=1


[State 2610, UpBorder]
type = PosSet
trigger1 = Pos Y < -300
y = -300

[State 2610, UpBorder]
type = PosSet
trigger1 = Pos Y > -20
y = -20

[State 2610, change]
type = ChangeState
trigger1 = AnimTime = 0
value = 12001
ctrl = 1
;-------------------------------------------------------

[Statedef 12620]
type    = A
movetype= A
physics = N
juggle  = 3
poweradd= 35
ctrl = 0
sprpriority = 2
hitcountpersist =1

[State 777, A0]
type = Velset
trigger1 =!time
y = 0
x = 0

[State 777, hsp]
type = helper
trigger1 = !var(55)&& movehit 
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = ifelse(p2statetype=A,(target ,const(size.mid.pos.x)),(target ,const(size.head.pos.x))),ifelse(p2statetype=A,(target ,const(size.mid.pos.y)),(target ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8000, 8000)
ID=8000
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 620
ctrl = 1

[State 200, voz]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50,ifelse(random<700,2,5)
channel = 0

[State 620, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 620, aerialrave]
type = HitDef
triggerall = prevstateno = [600,650] 
trigger1 = !time
attr = A, NA
damage = 30
guardflag = HA
hitflag = MAF
priority = 5, Hit 
pausetime = 10,10
sparkno = ifelse(!var(55),-1,2);Sifelse(random>500,8500,8501)
guard.sparkno = ifelse(!var(55),-1,40)
sparkxy = 0,-8
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 8
ground.velocity = -5
air.type = low
air.velocity = -18,11
ground.cornerpush.veloff = -6
air.cornerpush.veloff = 0
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
airguard.cornerpush.veloff = -6
air.hittime  = 25
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
down.bounce =0
liedown.time = 30
fall.envshake.time = 18
fall.envshake.ampl = -10
getpower  = 40
givepower = 20
fall=1

[State 620, 3y]
type = HitDef
trigger1 = prevstateno != [600,650]
trigger1=!time
attr = A, NA
damage = 70
guardflag = HA
hitflag = MAF
priority = 5, Hit 
pausetime = 8,8
sparkno = ifelse(!var(55),-1,2);Sifelse(random>500,8500,8501)
guard.sparkno = ifelse(!var(55),-1,40)
sparkxy = 0,-8
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
animtype = hard
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
guard.hittime = 20
ground.velocity = -8
air.type = low
air.velocity = -1,14
ground.cornerpush.veloff = -6
air.cornerpush.veloff = 0
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
airguard.cornerpush.veloff = -6
air.hittime  = 10
air.fall = 1
fall.recover = 0
fall.envshake.time = 6
fall.envshake.ampl = -10
getpower  = 40
givepower = 20
fall=1



[State 620, 2a]
type = ScreenBound
trigger1 =  var(1)=1 && time>=5
value = 0
ignorehitpause = 1

[State 620, 4a]
type = VarSet
trigger1 = var(1) = 1 && movehit
v = 18
value = 1
ignorehitpause = 1
persistent=0


[State 2001, UpBorder]
type = PosSet
trigger1 = Pos Y < -300
y = -300

[State 2001, UpBorder]
type = PosSet
trigger1 = Pos Y > -20
y = -20

[State 2620, change]
type = ChangeState
trigger1 = AnimTime = 0
value = 12001
ctrl = 1


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;FlyingKicks
[Statedef 12630]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd= 15
ctrl = 0
sprpriority = 2
hitcountpersist =1

[State 777, A0]
type = Velset
trigger1 =!time
y = 0
x = 0

[State 777, hsp]
type = helper
trigger1 = !var(55)&& movehit 
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = ifelse(p2statetype=A,(target ,const(size.mid.pos.x)),(target ,const(size.head.pos.x))),ifelse(p2statetype=A,(target ,const(size.mid.pos.y)),(target ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8000, 8000)
ID=8000
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1


[State 77,pa ]
type = Pause
trigger1 = prevstateno = 2999 && movecontact
time =1
ignorehitpause = 1
persistent= 0

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 630
ctrl = 1

[State 200, voz]
type = PlaySnd
trigger1 = AnimElem = 1&& random <= 500
value = 50,0
channel = 0

[State 630, 1]
type = PlaySnd
trigger1 = !Time
value = 0, 0

[State 630, 2]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype = medium
damage = 30
hitflag = MAF
guardflag = HA
priority = 3, Hit 
pausetime = 6,6
sparkno = ifelse(!var(55),-1,0);Sifelse(random>500,8520,8521) 
guard.sparkno = ifelse(!var(55),-1,40)
sparkxy = -5,-35
hitsound   = S5,2
guardsound = S7,1
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -6
ground.cornerpush.veloff = -8
air.type = low
air.velocity = 0,-8
air.hittime  = 20
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -8
getpower  = 20
givepower = 10
fall=1

[State 2001, UpBorder]
type = PosSet
trigger1 = Pos Y < -300
y = -300

[State 2001, UpBorder]
type = PosSet
trigger1 = Pos Y > -20
y = -20


[State 2630, change]
type = ChangeState
trigger1 = AnimTime = 0
value = 12001
ctrl = 1
;-----------------------------------------------------

[Statedef 12640]
type    = A
movetype= A
physics = N
juggle  = 2
poweradd= 25
ctrl = 0
sprpriority = 2
hitcountpersist =1

[State 777, A0]
type = Velset
trigger1 =!time
y = 0
x = 0

[State 777, hsp]
type = helper
trigger1 = !var(55)&& movehit 
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = ifelse(p2statetype=A,(target ,const(size.mid.pos.x)),(target ,const(size.head.pos.x))),ifelse(p2statetype=A,(target ,const(size.mid.pos.y)),(target ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8000, 8000)
ID=8000
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1


[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 640
ctrl = 1

[State 640, voz]
type = PlaySnd
trigger1 = AnimElem = 1&& random <= 500
value = 50,1
channel = 0

[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 640, 3]
type = HitDef
trigger1 = !Time
attr = A, NA
damage    = ifelse((prevstateno = [600,650]),35,50)
hitflag = MAF
guardflag = HA
priority = 4, Hit 
pausetime = 6,6
sparkno = ifelse(!var(55),-1,1);Sifelse(random>500,8500,8501)
guard.sparkno = ifelse(!var(55),-1,41)
sparkxy = -10,-40
hitsound   = S5,3
guardsound = S7,1
animtype = medium
air.type=high
ground.type = high
ground.slidetime = 17
ground.hittime  = 20
ground.velocity = -6,-4
ground.cornerpush.veloff = -8
air.velocity = 0,-4
air.hittime  = 20
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -8
getpower  = 30
givepower = 15
fall=1

[State 2001, UpBorder]
type = PosSet
trigger1 = Pos Y < -300
y = -300

[State 2001, UpBorder]
type = PosSet
trigger1 = Pos Y > -20
y = -20



[State 2640, change]
type = ChangeState
trigger1 = AnimTime = 0
value = 12001
ctrl = 1
;------------------------------------------------------------

[Statedef 12650]
type    = A
movetype= A
physics = N
juggle  = 3
poweradd= 35
ctrl = 0
sprpriority = 2
hitcountpersist =1

[State 777, A0]
type = Velset
trigger1 =!time
y = 0
x = 0

[State 777, hsp]
type = helper
trigger1 = !var(55)&& movehit 
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = ifelse(p2statetype=A,(target ,const(size.mid.pos.x)),(target ,const(size.head.pos.x))),ifelse(p2statetype=A,(target ,const(size.mid.pos.y)),(target ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8000, 8000)
ID=8000
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1


[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 650
ctrl = 1
[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 15650
ctrl = 1

[State 650, voz]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50,ifelse(random<700,4,5)
channel = 0

[State 650, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 650, 3]
type = HitDef
trigger1 = prevstateno = [600,650] 
trigger1 = !Time
attr = A, NA
animtype = hard
damage    = 40
guardflag = MA                  
hitflag = MAF  
priority = 5, Hit 
pausetime = 3,6
sparkno = ifelse(!var(55),-1,2);S8500
guard.sparkno = ifelse(!var(55),-1,40)
sparkxy = -12,-80
hitsound   = S5,1
guardsound = S7,1
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
guard.hittime = 20
ground.velocity = -8
air.type = low
air.velocity = -18,11
ground.cornerpush.veloff = -6
air.cornerpush.veloff = 0
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
airguard.cornerpush.veloff = -6
air.hittime  = 25
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
down.bounce =0
liedown.time = 30
fall.envshake.time = 18
fall.envshake.ampl = -10
getpower  = 40
givepower = 20

[State 650, 3]
type = HitDef
trigger1 = prevstateno != [600,650]
trigger1=!time
attr = A, NA
animtype = hard
damage    = 70
guardflag = MA                  
hitflag = MAF  
priority = 5, Hit 
pausetime = 8,8
sparkno = ifelse(!var(55),-1,2);S8500
guard.sparkno = ifelse(!var(55),-1,40)
sparkxy = -12,-80
hitsound   = S5,1
guardsound = S7,1
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
guard.hittime = 20
ground.velocity = -8
air.type = low
air.velocity = -18,11
ground.cornerpush.veloff = -6
air.cornerpush.veloff = 0
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
airguard.cornerpush.veloff = -6
air.hittime  = 25
air.fall = 1
fall.recover = 0
fall.envshake.time = 6
fall.envshake.ampl = -10
getpower  = 40
givepower = 20



[State 650, 1a]
type = VarSet
trigger1 = prevstateno = [600,650] 
trigger1 = P2moveType = H
v = 1
value = 1
ignorehitpause = 1

[State 650, 2a]
type = ScreenBound
trigger1 =  var(1)=1 && time>=5
value = 0
ignorehitpause = 1


[State 650, 4a]
type = VarSet
trigger1 = var(1) = 1 && movehit
v = 18
value = 1
ignorehitpause = 1
persistent=0


[State 2001, UpBorder]
type = PosSet
trigger1 = Pos Y < -300
y = -300

[State 2001, UpBorder]
type = PosSet
trigger1 = Pos Y > -20
y = -20



[State 2650, change]
type = ChangeState
trigger1 = AnimTime = 0
value = 12001
ctrl = 1

;===================================================================