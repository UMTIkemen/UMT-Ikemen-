; _________________________________________
;| Chun-Li by Jmorphman                    |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;--------------------------------------------------------------------------
[Statedef 3750]
type=S
physics=N
movetype=A
anim = 756
juggle=15
facep2=1
velset = 0,0
sprpriority=15
ctrl = 0

[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1



[State 3600, Super Pause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = -5,-76
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 0

[State 3000, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
value = 8500,2

[State 7777, voice]
type = PlaySnd
trigger1 = time=30
value = 730,3

[State 3600, SP]
type = SuperPause
trigger1=!time
time =70
movetime=70
anim = -1
pos = 0,0
darken = 0
poweradd = -3000
unhittable = 1


[State 100, 4]
type = PlaySnd
trigger1 = StateNo = 3750
trigger1 = animelem = 2
value = 30,1
channel=2

[State 777, es]
type = Explod
triggerall =!NumExplod(8580)
trigger1 = anim=756 && animelem = 2
sprpriority = 10
anim = 8580
id= 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
facing=-1
supermovetime = 99
pausemovetime = 99


; default dashing sound
[State 100, a1]
type = playsnd
trigger1 = !time
value = 8,3
channel = 0

[State 1751, c]
type = removeexplod
trigger1 = anim=755 ;!time
id = 107

[State 1751, d]
type = removeexplod
trigger1 = anim=755; !time
id = 2107

[State 4000, strengthvar]
type=varset
trigger1= var(10)!=7
var(10)=7

[State 4000, ECreset]
type=palfx
trigger1= !time
trigger1= !(var(20):=0)
time=1

[State Corner Push]
type=varset
trigger1= !time
fvar(5)= 0

[State 4000, nhb]
type=nothitby
trigger1= 1
time=1
value=SCA

[State 4000, shield]
type=helper
trigger1= !numhelper(1009) && anim=4001
helpertype=normal
stateno=1009
ID=1009
name="Projectile Hitter"
postype=p1

[State 4000, push]
type=playerpush
trigger1= anim=756
trigger2= anim=755 && var(14)>=9
value=0

[State 4000, screen]
type=screenbound
trigger1= anim=756 && animelemtime(10)>=0
trigger2= anim=755
value=0
movecamera=0,1

[State 4000, spr]
type=sprpriority
trigger1= 1
value=ifelse(anim=755,4,1)

;[State 4000, posfix]
;type=posadd
;trigger1= anim=756 && animelem=1 || animelem=2
;x=ifelse((animelem=1),-8,-12)

[State 4000, Vel]
type=velset
trigger1= anim=756 && animelemtime(2)>=0 && vel x>-10
x=-12.5



[State 4000, Anim]
type=changeanim
trigger1= anim=756 && time>=60
value=755

[State 4000, Snd]
type=playsnd
trigger1= anim=755
value=50,1
channel=0
persistent=0

[State 4000, Snd]
type=playsnd
trigger1= anim=755
value=45,0
persistent=0

[State 4000, Pos]
type=posset
trigger1= anim=755
x=(-320*facing)
y=-45
persistent=0


[State 4000, FX]
type=removeexplod
trigger1= anim!=755 && numexplod(4005)
ID=4005

[State 4000, FX]
type=explod
trigger1= anim=755 && !numexplod(4005)
anim=4005
ID=4005
sprpriority=-3
postype=p1
ownpal=1
removeongethit=1
ignorehitpause=1

[State 4000, FX]
type=modifyexplod
trigger1= anim=755 && (frontedgedist>-90 && time<180)
ID=4005
postype=p1
pos=0,0
vel=20,0
removetime=300
ignorehitpause=1

[State 4000, FX]
type=helper
trigger1= anim=755 && numexplod(4005) && !(gametime%8)
helpertype=normal
stateno=4006
ID=4006
name="Psycho Crusher"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1
pausemovetime=999
supermovetime=999
ignorehitpause=1


[State 4000, hitvar]
type=varset
trigger1= anim!=755
var(14)=0

[State 4000, hitvar]
type=varadd
trigger1= anim=755 && (movehit=1 || moveguarded=1 || movereversed=1)
var(14)=1

[State 4000, Vel]
type=velset
trigger1= anim=755
x=20
y=0

[State 4000, Vel]
type=velset
trigger1= anim=755 && var(14)<12
trigger1= (movecontact=[1,4]) || (movereversed=[1,4])
x=0
y=0

[State 4000, Hit]
type=hitdef
trigger1= anim=755 && !(time%4) && var(14)<11
attr=S,HA
damage=38,7
animtype=Diagup
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime=2,8
sparkno=-1;s7030+(random%8)
guard.sparkno=-1;s7001
sparkxy=-10,-60
hitsound= sifelse(hitcount,-1,2), 1
guardsound=s3,0
ground.type=Low
ground.slidetime=24
ground.hittime=24
ground.velocity=-12,-12
ground.cornerpush.veloff = 0
air.type=Low
air.velocity=-12,-12
guard.dist=320
getpower=0
givepower=36,36
envshake.time=18
envshake.freq=120
envshake.ampl=8
sprpriority=5
fall=1
fall.recover=0
;ID=4000
yaccel=.5
forcestand=1



[State 777, hdf]
type = helper
trigger1= anim=755 && !(time%4);&& var(14)<11
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 25,-99; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hsp]
type = helper
trigger1= anim=755 && !(time%4) ;&& var(14)<11
trigger1 = movehit
helpertype = normal
stateno = 8013
ID = 8013
name = "hitspark3"
postype = p2
pos = 25,-99; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1


[State 777, hsp]
type = helper
trigger1 = anim=755 && movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =25,-99
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hsp]
type = helper
trigger1= anim=755 && !(time%4) ;&& var(14)<11
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark5"
postype = p2
pos = 25,-99; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1


[State 4000, HitSound]
type=playsnd
trigger1= movehit=1
trigger1= hitcount && hitpausetime=1
value=2,ifelse(hitcount=12,2,2)
channel=2
ignorehitpause=1

[State 4000, statetype]
type=statetypeset
trigger1= anim=755
statetype=A
physics=N
movetype=A

[State 4000, End]
type=changestate
trigger1= anim=755 && (frontedgedist<=-90 || time>=180)
value=3752


;---END---
[Statedef 3752]
type=S
physics=S
movetype=I
anim=4003
ctrl=0
velset=0,0


[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1= Time = 0
value = 4003

[State 4002, Pos]
type=posset
triggerall = var(8)!= 0
trigger1= animelemtime(2)<-1
x=0
y=0

[State 4002, Pos]
type=posset
triggerall = var(8)!= 0
trigger1= animelemtime(2)=-1
x=0*facing

[State 4002, Pos]
type=posset
triggerall = var(8)= 0
trigger1= animelemtime(6)<-1
x=0
y=0

[State 4002, Pos]
type=posset
triggerall = var(8)= 0
trigger1= animelemtime(6)=-1
x=0*facing


[State 4002, palfx]
type=palfx
trigger1= !time
time=1
add=0,0,0
ignorehitpause=1

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=2
value=45,2
channel=0

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=2
value=45,1


[State 20]
type = envshake
triggerall = var(8)!= 0
trigger1 = animelem = 11
time = 10
ampl = -2

[State 20]
type = envshake
triggerall = var(8)= 0
trigger1 = animelem = 24
time = 10
ampl = -10


[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 4002, push]
type=playerpush
trigger1= animelemtime(2)<=10
value=0

[State 4002, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;======================================================
[StateDef 4051]
type    = S                      
movetype = I                      
physics = S                      
juggle  = 8                     
velset = 0,0                     
ctrl = 0                         
sprpriority = 2
hitcountpersist = 1


[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 3986
ctrl = 1

[state 3000,a0]
type = varset
trigger1 = !time
var(14) = 0

[State 3000, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
value = 8500,0

[State 7777, voice]
type = PlaySnd
trigger1 = animelem=2
value = 500,7
channel = 0
IgnoreHitPause = 1


[State 3000, a2];lasso charged
type = Explod 
trigger1 = time = 35
sprpriority = 7
id = 3003
anim = 3003
postype = p1
pos = 0, 0
removeongethit = 1
bindtime = -1
supermovetime =9999
pausemovetime = 9999

[State 3000, a3]
type = PlaySnd
trigger1 = animelem = 1||animelem = 3||animelem = 6||animelem = 9||animelem = 12
value = 6, 3
ignorehitpause = 1
channel = 7

[state 3000,a0]
type = varset
trigger1 = animelem = 15
var(14) = 1

[State 3000, a4]
type = PlaySnd
trigger1 = Var(14) >= 1 && time%9 = 0 
value = 6, 3
channel = 6
ignorehitpause = 1


[State 3000, aa2]
type = Explod 
trigger1 = !time
sprpriority = 5
id = 1001
anim = 3050
postype = P1
pos = -3, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 3000, aa3]
type = Explod 
trigger1 = !time
sprpriority = 6
id = 1002
anim = 3080
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 3000, a5] 
type = SuperPause
trigger1 = !time
darken = 0
anim = S8400
sound = S40, 5
pos = -55, -70
movetime = 133
poweradd = -1000
Time = 133
p2defmul = 2

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -50,-70
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 2000, explod] ;Super Portrait
type = Explod
trigger1 = Time = 0
anim = 9110
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -3
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super BG Portrait
type = Explod
trigger1 = Time = 0
anim = 9120
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -2
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super Window
type = Explod
trigger1 = time = 0
anim = 9130
id = 9130
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -4
scale = .3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1



[State 3000, mh]
type = varset
trigger1=time=20
var(16)=0
ignorehitpause=1


[State 3000, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3987
ctrl = 0

;==============================================================

[Statedef 3987]
type    = S                      
movetype = A                      
physics = S                      
juggle  = 8                     
velset = 0,0                     
ctrl = 0                         
sprpriority = 2


[state 3000,a0]
type = varset
trigger1 = !time
var(14) = 0

[State 3001,re]
type = RemoveExplod
trigger1 = !time
ID = 3003

[State 3001, a3]
type = PlaySnd
trigger1 = !time
value = 6, 6
ignorehitpause = 1
volume = 250


[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 3997
ctrl = 1


[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3001, aa2]
type = Explod 
trigger1 = !time
sprpriority = 6
id = 1001
anim = 3051
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
ignorehitpause = 0
;supermovetime = 9999
;pausemovetime = 9999

[State 3001, aa2]
type = Explod 
trigger1 = !time
sprpriority = 7
id = 1002
anim = 3081
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
ignorehitpause = 0
;supermovetime = 9999
;pausemovetime = 9999

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8001)
ID=8001
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1

[State 3001, far]
type = HitDef
Trigger1 = !time
attr = S, HT
hitflag = MAF
guardflag = MA
animtype = hard
priority = 7,hit
damage = 0,0
pausetime = 0,0
sparkno = -1;Sifelse(random>500,8500,8501) 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy =(enemy,const(size.mid.pos.x)),-30+(enemy,const(size.mid.pos.y))
hitsound = S6,0
guardsound = S7,1
ground.type = High
ground.slidetime = 30
ground.hittime = 30
ground.velocity = 0,0
guard.velocity =-16
guard.pausetime = 0,8
air.velocity = 0,0
air.hittime = 0
guard.dist = 320
p1stateno = 3005
p2stateno = 3020
p2facing = 1
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
givepower = 15

[State 3000, ee]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;================================================
[Statedef 3005]
type = S
movetype = A
physics = N
ctrl = 0
sprpriority = -3
velset = 0,0
hitcountpersist=1


[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 3005
ctrl = 1

[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 3005
ctrl = 1

[State 777, hsp]
type = helper
trigger1 = time=4
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =0,0
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 3005, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3005, aa]
type = removeexplod
trigger1 = !time
id = 1001

[State 1030, aa]
type = removeexplod
trigger1 = !time
id = 1002

[State 3005, b2]
type = PlayerPush
trigger1 = 1
value = 0

[State 3005, voz]
type = PlaySnd
trigger1 = AnimElem = 10||AnimElem = 29
value = 50,1
channel = 1

[State 3005, voz]
type = PlaySnd
trigger1 = AnimElem = 2||AnimElem = 20
value = 50,0
channel = 1

[State 3005, b3]
type = PlaySnd
trigger1 = AnimElem = 3||AnimElem = 12||AnimElem = 21||AnimElem = 30
value = 40,7
channel = 4

[State 3005, ro]
type = PlaySnd
trigger1 =AnimElem = 9||AnimElem = 18||AnimElem = 27||AnimElem = 36
value = 7,2
channel = 5

[State 3005, a7]
type = HitAdd
trigger1 =AnimElem = 9||AnimElem = 18||AnimElem = 27||AnimElem = 36
value = 1

[State 3005, a4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3005, aa2];SHINY
type = Explod 
trigger1 = !time 
sprpriority = 4
id = 1003
anim = 3055
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
;removetime = -1

[State 3005, aa3];UP
type = Explod 
trigger1 = !time 
sprpriority = 5
id = 1004
anim = 3085
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3005, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 184, -60
[State 3005, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 181, -70
[State 3005, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 171, -81
[State 3005, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 172, -76
[State 3005, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 79, -164
[State 3005, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = -16, -178
[State 3005, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
pos = -119, -164
[State 3005, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8
pos = -183, -75
[State 3005, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9
pos = -183, -5

[State 3011,l ]
type = TargetLifeAdd
trigger1 = AnimElem = 9
value = -25
kill = 1
persistent = 0

;2nd hit
[State 3005, Bind 1]
type = TargetBind
trigger1 = AnimElem = 10
pos = -184, -60
[State 3005, Bind 2]
type = TargetBind
trigger1 = AnimElem = 11
pos = -181, -70
[State 3005, Bind 3]
type = TargetBind
trigger1 = AnimElem = 12
pos = -171, -81
[State 3005, Bind 4]
type = TargetBind
trigger1 = AnimElem = 13
pos = -172, -76
[State 3005, Bind 5]
type = TargetBind
trigger1 = AnimElem = 14
pos = -79, -164
[State 3005, Bind 6]
type = TargetBind
trigger1 = AnimElem = 15
pos = 16, -178
[State 3005, Bind 7]
type = TargetBind
trigger1 = AnimElem = 16
pos = 119, -164
[State 3005, Bind 8]
type = TargetBind
trigger1 = AnimElem = 17
pos = 183, -75
[State 3005, Bind 9]
type = TargetBind
trigger1 = AnimElem = 18
pos = 183, -5

[State 3011,l ]
type = TargetLifeAdd
trigger1 = AnimElem = 18
value = -25
kill = 1
persistent = 0

;3rd hit
[State 3005, Bind 1]
type = TargetBind
trigger1 = AnimElem = 19
pos = 184, -60
[State 3005, Bind 2]
type = TargetBind
trigger1 = AnimElem = 20
pos = 181, -70
[State 3005, Bind 3]
type = TargetBind
trigger1 = AnimElem = 21
pos = 171, -81
[State 3005, Bind 4]
type = TargetBind
trigger1 = AnimElem = 22
pos = 172, -76
[State 3005, Bind 5]
type = TargetBind
trigger1 = AnimElem = 23
pos = 79, -164
[State 3005, Bind 6]
type = TargetBind
trigger1 = AnimElem = 24
pos = -16, -178
[State 3005, Bind 7]
type = TargetBind
trigger1 = AnimElem = 25
pos = -119, -164
[State 3005, Bind 8]
type = TargetBind
trigger1 = AnimElem = 26
pos = -183, -75
[State 3005, Bind 9]
type = TargetBind
trigger1 = AnimElem = 27
pos = -183, -5

[State 3011,l ]
type = TargetLifeAdd
trigger1 = AnimElem = 27
value = -25
kill = 1
persistent = 0

;4th hit
[State 3005, Bind 1]
type = TargetBind
trigger1 = AnimElem = 28
pos = -184, -60
[State 3005, Bind 2]
type = TargetBind
trigger1 = AnimElem = 29
pos = -181, -70
[State 3005, Bind 3]
type = TargetBind
trigger1 = AnimElem = 30
pos = -171, -81
[State 3005, Bind 4]
type = TargetBind
trigger1 = AnimElem = 31
pos = -172, -76
[State 3005, Bind 5]
type = TargetBind
trigger1 = AnimElem = 32
pos = -79, -164
[State 3005, Bind 6]
type = TargetBind
trigger1 = AnimElem = 33
pos = 16, -178
[State 3005, Bind 7]
type = TargetBind
trigger1 = AnimElem = 34
pos = 119, -164
[State 3005, Bind 8]
type = TargetBind
trigger1 = AnimElem = 35
pos = 183, -75
[State 3005, Bind 9]
type = TargetBind
trigger1 = AnimElem = 36
pos = 183, -5

[State 3011,l ]
type = TargetLifeAdd
trigger1 = AnimElem = 36
value = -25
kill = 1
persistent = 0

[State 3005, b2]
type = EnvShake
trigger1 = AnimElem = 9||AnimElem = 18||AnimElem = 27||AnimElem = 36
time = 18
ampl = -6

[State 3005, a5]
type = Helper
trigger1 = animelem = 3
helpertype = Normal
name = "camera"
postype = P1
ID = 1050
pos = 0,0
stateno = 1050
ownpal = 1
persistent = 0


[State 3005, cam2]
type = VarSet
trigger1 =  animelem = 10
var(15) = 1

[State 3005, cam3]
type = VarSet
trigger1 = animelem = 19 
var(15) = 2

[State 3005, cam4]
type = VarSet
trigger1 =  animelem = 28 
var(15) = 3

[State 3005, p2] ;explodpedr
type = Explod
trigger1 =AnimElem = 9||AnimElem = 18||AnimElem = 27||AnimElem = 36
anim = 8676
postype = p2
pos = 0,10;
sprpriority = 12
removetime = -2

[State 777, hsp]
type = helper
trigger1 = AnimElem = 9||AnimElem = 18||AnimElem = 27||AnimElem = 36
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


[State 3005, cam4]
type = VarSet
trigger1 = animelem = 36
var(15) = 0

[State 3005, ee]
type = Changestate
trigger1 = animtime = 0
value = 3010
ctrl = 0
;==============================================================
[Statedef 3010]
type = S
movetype = A
physics = N
ctrl = 0
sprpriority = 1
velset = 0,0


[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 3010
ctrl = 1



[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 3710
ctrl = 1


[State 3010, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3010,0 ]
type = HitAdd
trigger1 = !time
value = -5
persistent = 0

[State 3010, 1]
type = Turn
trigger1 = AnimElem = 76

[State 3010,a0]
type = Helper
trigger1 = !time
StateNo = 3016
id = 3016
name = "camera1"
pos = 145,0

[State 3010,a0]
type = Helper
trigger1 = !time
StateNo = 3016
id = 3017
name = "camera2"
pos = -145,0

[State 3010,a0]
type = Helper
trigger1 = AnimElem = 66
StateNo = 3017
id = 3018
name = "camera3"
pos = 0,0

[State 3010, a0];dust section
type = Explod
trigger1 = animelem = 27
anim = 3040
id=30401
sprpriority = -7
postype = p1
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 300
scale = 1.2,1
pos = 0,0

[State 3010, b1]
type = RemoveExplod
trigger1 = animelem = 65
ID = 30401

[State 3010, b1]
type = RemoveExplod
trigger1 = animelem = 65
ID = 30402

[State 3017, p2] ;explodpedr
type = Explod
trigger1 = p2stateno = 30419
anim = 8677
postype = p2
pos = 0,-10
sprpriority = 7
removetime = -2
scale = 1,1.5
persistent = 0

[State 3010, a1];smoke on the water :P
type = explod
trigger1 = timemod = 20,5 && animelemtime(20)>=0
anim = 8731
ID = 8739
sprpriority = -3
postype = p1
pos = -50,-5
vel = 0 ,0
accel = -.1,-.02
ignorehitpause = 1
scale = .8,.8
supermovetime=99
pausemovetime=99

[State 3010, a2];r
type = explod
trigger1 = timemod = 16,3&& animelemtime(20)>=0
anim = 8731
ID = 8737
sprpriority = -3
postype = p1
pos = 50,-5
vel = 0,0
accel = .1,-.02
ignorehitpause = 1
scale = .8,.8
supermovetime=99
pausemovetime=99

[State 3010, a1];smoke on the water :P
type = explod
trigger1 = timemod = 18,4&& animelemtime(20)>=0
anim = 8731
ID = 8735
sprpriority = 5
postype = p1
pos = -35,5
vel = 0 ,0
accel = -.2,0
ignorehitpause = 1
scale = .5,.5
supermovetime=99
pausemovetime=99

[State 3010, a2];r
type = explod
trigger1 = timemod = 24,2&& animelemtime(20)>=0
anim = 8731
ID = 8734
sprpriority = 5
postype = p1
pos = 35,5
vel = 0 ,0
accel = .2,0
ignorehitpause = 1
scale = .5,.5
supermovetime=99
pausemovetime=99


[State 3010, 1]
type = TargetState
trigger1 = !Time
value = 3030

[State 3010, b2]
type = PlayerPush
trigger1 = 1
value = 0


[State 3010, b3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6,6
[State 3010, b3]
type = PlaySnd
trigger1 = AnimElem = 12||AnimElem = 20||AnimElem = 28||AnimElem = 35
value = 6,5
[State 3010, b3]
type = PlaySnd
trigger1 = AnimElem = 43||AnimElem = 51||AnimElem = 59
value = 6,4
[State 3010, b3]
type = PlaySnd
trigger1 = AnimElem = 42
value = 50,6
channel = 10

[State 3010, b3]
type = PlaySnd
trigger1 = AnimElem = 65
value = 40,7


[State 3010, a4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3010, aa2];SHINY
type = Explod 
trigger1 = !time 
sprpriority = 3
id = 1001
anim = 3060
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
;removetime = -1

[State 3010, aa3];UP
type = Explod 
trigger1 = !time 
sprpriority = 4
id = 1002
anim = 3090
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1


[State 3010, bind 1]
type  = TargetBind
trigger1 = AnimElem = 1
pos = 186, -48
[State 3010, bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos  = 113, -21
[State 3010, bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos  = -38, -41
[State 3010, bind 1]
type =  TargetBind
trigger1 = AnimElem = 4
pos = -61, -32
[State 3010, bind 1]
type  = TargetBind
trigger1 = Animelem = 5
pos = -120, -55
[State 3010, bind 1]
type = targetbind
trigger1 = AnimElem = 6
pos = -108, -105

[state 3010, bind 1];lop start
type = targetbind
trigger1 = AnimElem = 7
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 8
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 9
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 10
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 11
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 12
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 13
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 14
pos = -107, -105

[state 3010, bind 1];2
type = targetbind
trigger1 = AnimElem = 15
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 16
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 17
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 18
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 19
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 20
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 21
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 22
pos = -107, -105


[state 3010, bind 1];3
type = targetbind
trigger1 = AnimElem = 23
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 24
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 25
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 26
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 27
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 28
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 29
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 30
pos = -107, -105

[state 3010, bind 1];4
type = targetbind
trigger1 = AnimElem = 31
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 32
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 33
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 34
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 35
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 36
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 37
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 38
pos = -107, -105


[state 3010, bind 1];5
type = targetbind
trigger1 = AnimElem = 39
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 40
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 41
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 42
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 43
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 44
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 45
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 46
pos = -107, -105

[state 3010, bind 1];6
type = targetbind
trigger1 = AnimElem = 47
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 48
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 49
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 50
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 51
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 52
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 53
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 54
pos = -107, -105

[state 3010, bind 1];7
type = targetbind
trigger1 = AnimElem = 55
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 56
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 57
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 58
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 59
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 60
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 61
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 62
pos = -108, -143
[state 3010, bind 1];7
type = targetbind
trigger1 = AnimElem = 63
pos = 1, -153
[State 3010, bind 4];------- getting out
type  = targetbind
trigger1 = AnimElem = 64
pos = 37, -143
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 65
pos=  139, -108
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 66
pos = 129, -82
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 67
pos = 50, -60
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 68
pos = -65, -55
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 69
pos = -175, -70


[State 3010, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 3
sprpriority = 6
id = 3035
anim = 3035
postype = P1
pos = -38,-41
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 3
sprpriority = 7
id = 3036
anim = 3036
postype = P1
pos = -38,-41
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 4
id =3035

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 4
id =3036


[State 3010, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 4
sprpriority = 6
id = 3037
anim = 3035
postype = P1
pos = -61,-32
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 4
sprpriority = 7
id = 3038
anim = 3036
postype = P1
pos = -61,-32
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 5
id =3037

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 5
id =3038

[State 3010, a1];P2 SHINY
type = Explod 
trigger1=AnimElem=13||AnimElem=21||AnimElem=29||AnimElem=37
trigger2=AnimElem=45||AnimElem=53||AnimElem=61
sprpriority = 6
id = 3039
anim = 3035
postype = P1
pos = -19,-96
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1];P2 UP
type = Explod 
trigger1=AnimElem=13||AnimElem=21||AnimElem=29||AnimElem=37
trigger2=AnimElem=45||AnimElem=53||AnimElem=61
sprpriority = 7
id = 3040
anim = 3036
postype = P1
pos =-19,-96
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1]
type = removeExplod
trigger1=AnimElem=14||AnimElem=22||AnimElem=30||AnimElem=38
trigger2=AnimElem=46||AnimElem=54||AnimElem=62
id =3039

[State 3010, a1]
type = removeExplod
trigger1=AnimElem=14||AnimElem=22||AnimElem=30||AnimElem=38
trigger2=AnimElem=46||AnimElem=54||AnimElem=62
id =3040


[State 3010, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 67
sprpriority = 6
id = 3041
anim = 3035
postype = P1
pos = 50,-60
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 67
sprpriority = 7
id = 3042
anim = 3036
postype = P1
pos = 50,-60
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 68
id =3041

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 68
id =3042

[State 3010, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 68
sprpriority = 6
id = 3043
anim = 3035
postype = P1
pos = -65,-55
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 68
sprpriority = 7
id = 3044
anim = 3036
postype = P1
pos = -65,-55
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 69
id =3043

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 69
id =3044

[State 3010, a2] 
type = targetState   
trigger1 = AnimElem = 69
value =3040


[State 3010, sai]
type = ScreenBound
triggerall= time>297
trigger1 = P2MoveType = H || BackEdgeBodyDist < -1
value = 0
movecamera = 0,0


[State 3010, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = BackEdgeBodyDist > -1
value = 0
ctrl = 1

[State 3010, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = BackEdgeBodyDist <= -1
value = 3015
ctrl = 0


;==============================================================
;================================================
[Statedef 3011]
type = S
movetype = A
physics = N
ctrl = 0
sprpriority = 1
velset = 0,0

[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 3011
ctrl = 1

[State 777, a02]
type = ChangeAnim
trigger1 =  !time && prevstateno != 9000
value = 3011
ctrl = 1

[State 3011,a0]
type = Helper
trigger1 = !time
StateNo = 3018
id = 3019
name = "effect"
pos = 0,0

[State 3011,a0]
type = Helper
trigger1 = AnimElem = 13
StateNo = 3017
id = 3018
name = "camera3"
pos = 0,0

[State 3011, sai]
type = ScreenBound
triggerall= time>32
trigger1 =1; P2MoveType = H || BackEdgeBodyDist < -1
value = 0
movecamera = 0,0


[State 3011, b1]
type = RemoveExplod
trigger1 = !time
ID = 30401

[State 3011, b1]
type = RemoveExplod
trigger1 = !time
ID = 30402

[State 3011, a0];dust section
type = Explod
trigger1 = !time
anim = 3040
id=3042
sprpriority = -7
postype = p1
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 300
scale = 1.2,1
pos = 0,0


[State 3011, b1]
type = RemoveExplod
trigger1 = animelem = 11
ID = 3042


[State 3011, a1]
type = removeExplod
trigger1 = !time
id =1001

[State 3011, a1]
type = removeExplod
trigger1 = !time
id =1002

[State 3011, a1]
type = removeExplod
trigger1 = !time
id =3039

[State 3011, a1]
type = removeExplod
trigger1 = !time
id =3040

[State 3011, 1]
type = Turn
trigger1 = AnimElem = 23


[State 3011, aa2];SHINY
type = Explod 
trigger1 = !time 
sprpriority = 3
id = 1004
anim = 3061
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
;removetime = -1

[State 3011, aa3];UP
type = Explod 
trigger1 = !time 
sprpriority = 4
id = 1005
anim = 3091
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1];P2 SHINY
type = Explod 
trigger1=AnimElem=8
sprpriority = 6
id = 3039
anim = 3035
postype = P1
pos = -19,-96
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1];P2 UP
type = Explod 
trigger1=AnimElem=8
sprpriority = 7
id = 3040
anim = 3036
postype = P1
pos =-19,-96
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1]
type = removeExplod
trigger1=AnimElem=9
id =3039

[State 3011, a1]
type = removeExplod
trigger1=AnimElem=9
id =3040

[State 3011, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 14
sprpriority = 6
id = 3041
anim = 3035
postype = P1
pos = 50,-60
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 14
sprpriority = 7
id = 3042
anim = 3036
postype = P1
pos = 50,-60
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 15
id =3041

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 15
id =3042

[State 3011, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 15
sprpriority = 6
id = 3043
anim = 3035
postype = P1
pos = -65,-55
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 15
sprpriority = 7
id = 3044
anim = 3036
postype = P1
pos = -65,-55
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1]
type = removeExplod
trigger1 = AnimElem = 16
id =3043

[State 3011, a1]
type = removeExplod
trigger1 = AnimElem = 16
id =3044


[State 3011, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3011, b2]
type = PlayerPush
trigger1 = 1
value = 0

[State 3011, a4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3011, 1]
type = TargetState
trigger1 = !Time
value = 3031

[State 3011, b3]
type = PlaySnd
trigger1 = !time
value = 6,10

[State 3011, b3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 6,4

[State 3011, b3]
type = PlaySnd
trigger1 = AnimElem = 11
value = 40,7

[State 3010, bind 0]
type = targetbind
trigger1 = AnimElem = 1
pos = -107, -105
[state 3011, bind 1];7
type = targetbind
trigger1 = AnimElem = 2
pos = -134, -120
[State 3011, bind 2]
type = targetbind
trigger1 = AnimElem = 3
pos = -108, -143
[State 3011, bind 3]
type = targetbind
trigger1 = AnimElem  = 4
pos = 1, -153
[State 3011, bind 4]
type  = targetbind
trigger1 = AnimElem = 5
pos = 127,  -144
[State 3011, bind 5]
type = targetbind
trigger1 = AnimElem = 6
pos=  150, -123
[State 3011, bind 6]
type = targetbind
trigger1 = AnimElem  = 7
pos = 120, -104
[State 3011, bind 7]
type = targetbind
trigger1 = AnimElem  = 8
pos = -19, -96
[State 3011, bind 8]
type = targetbind
trigger1 = AnimElem = 9
pos = -108, -143
[state 3011, bind 1];7
type = targetbind
trigger1 = AnimElem = 10
pos = 1, -153
[State 3011, bind 4];------- getting out
type  = targetbind
trigger1 = AnimElem = 11
pos = 37, -143
[State 3011, bind 5]
type = targetbind
trigger1 = AnimElem = 12
pos=  139, -108
[State 3011, bind 6]
type = targetbind
trigger1 = AnimElem  = 13
pos = 129, -82
[State 3011, bind 7]
type = targetbind
trigger1 = AnimElem  = 14
pos = 50, -60
[State 3011, bind 8]
type = targetbind
trigger1 = AnimElem = 15
pos = -65, -55

[State 3011,l ]
type = targetLifeAdd
trigger1 = !time
value = -100
kill = 1
persistent = 0

[State 3011, a2] 
type = targetState   
trigger1 = AnimElem = 15
value =3040

[State 3011, a1]
type = removeExplod
trigger1 = animelem =14
id =3070


[State 3011, mh]
type = varadd
trigger1 = command="x"||command="y"||command="z"       
trigger2 = var(59)>=1 && time%35
var(16)=1
ignorehitpause=1

[State 3011, 1];1more swing
type = ChangeState
triggerall = Animelem=8 && var(16)>10
trigger1 = BackEdgeBodyDist <= -1
trigger2 = BackEdgeBodyDist > -1
value = 3012
ctrl = 0

[State 3011, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = BackEdgeBodyDist > -1
value = 0
ctrl = 1
[State 3011, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = BackEdgeBodyDist <= -1
value = 3015
ctrl = 0

;==============================================
[Statedef 3012]
type = S
movetype = A
physics = N
ctrl = 0
sprpriority = 1
velset = 0,0
anim = 3011


[State 3011,a0]
type = Helper
trigger1 = AnimElem = 13
StateNo = 3017
id = 3018
name = "camera3"
pos = 0,0

[State 3011, sai]
type = ScreenBound
triggerall= time>32
trigger1 =1; P2MoveType = H || BackEdgeBodyDist < -1
value = 0
movecamera = 0,0

[State 3011, a1]
type = removeExplod
trigger1 = !time
id =1004
[State 3011, a1]
type = removeExplod
trigger1 = !time
id =1005
[State 3011, a1]
type = removeExplod
trigger1 = !time
id =3039
[State 3011, a1]
type = removeExplod
trigger1 = !time
id =3040
[State 3011, 1]
type = Turn
trigger1 = AnimElem = 23


[State 3011, b1]
type = RemoveExplod
trigger1 = !time
ID = 3042

[State 3011, b1]
type = RemoveExplod
trigger1 = !time
ID = 3043

[State 3011, a0];dust section
type = Explod
trigger1 = !time
anim = 3040
id=3044
sprpriority = -7
postype = p1
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 300
scale = 1.2,1
pos = 0,0


[State 3011, b1]
type = RemoveExplod
trigger1 = animelem = 11
ID = 3044

[State 3011, aa2];SHINY
type = Explod 
trigger1 = !time 
sprpriority = 3
id = 1006
anim = 3061
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
;removetime = -1
[State 3011, aa3];UP
type = Explod 
trigger1 = !time 
sprpriority = 4
id = 1007
anim = 3091
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
[State 3011, a1];P2 SHINY
type = Explod 
trigger1=AnimElem=8
sprpriority = 6
id = 3039
anim = 3035
postype = P1
pos = -19,-96
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1];P2 UP
type = Explod 
trigger1=AnimElem=8
sprpriority = 7
id = 3040
anim = 3036
postype = P1
pos =-19,-96
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1]
type = removeExplod
trigger1=AnimElem=9
id =3039

[State 3011, a1]
type = removeExplod
trigger1=AnimElem=9
id =3040

[State 3011, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 14
sprpriority = 6
id = 3041
anim = 3035
postype = P1
pos = 50,-60
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 14
sprpriority = 7
id = 3042
anim = 3036
postype = P1
pos = 50,-60
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 15
id =3041

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 15
id =3042

[State 3011, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 15
sprpriority = 6
id = 3043
anim = 3035
postype = P1
pos = -65,-55
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 15
sprpriority = 7
id = 3044
anim = 3036
postype = P1
pos = -65,-55
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1]
type = removeExplod
trigger1 = AnimElem = 16
id =3043

[State 3011, a1]
type = removeExplod
trigger1 = AnimElem = 16
id =3044


[State 3011, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3011, b2]
type = PlayerPush
trigger1 = 1
value = 0

[State 3011, a4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3011, 1]
type = TargetState
trigger1 = !Time
value = 3031


[State 3011, b3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 6,4

[State 3011, b3]
type = PlaySnd
trigger1 = AnimElem = 11
value = 40,7

[State 3010, bind 0]
type = targetbind
trigger1 = AnimElem = 1
pos = -107, -105
[state 3011, bind 1];7
type = targetbind
trigger1 = AnimElem = 2
pos = -134, -120
[State 3011, bind 2]
type = targetbind
trigger1 = AnimElem = 3
pos = -108, -143
[State 3011, bind 3]
type = targetbind
trigger1 = AnimElem  = 4
pos = 1, -153
[State 3011, bind 4]
type  = targetbind
trigger1 = AnimElem = 5
pos = 127,  -144
[State 3011, bind 5]
type = targetbind
trigger1 = AnimElem = 6
pos=  150, -123
[State 3011, bind 6]
type = targetbind
trigger1 = AnimElem  = 7
pos = 120, -104
[State 3011, bind 7]
type = targetbind
trigger1 = AnimElem  = 8
pos = -19, -96
[State 3011, bind 8]
type = targetbind
trigger1 = AnimElem = 9
pos = -108, -143
[state 3011, bind 1];7
type = targetbind
trigger1 = AnimElem = 10
pos = 1, -153
[State 3011, bind 4];------- getting out
type  = targetbind
trigger1 = AnimElem = 11
pos = 37, -143
[State 3011, bind 5]
type = targetbind
trigger1 = AnimElem = 12
pos=  139, -108
[State 3011, bind 6]
type = targetbind
trigger1 = AnimElem  = 13
pos = 129, -82
[State 3011, bind 7]
type = targetbind
trigger1 = AnimElem  = 14
pos = 50, -60
[State 3011, bind 8]
type = targetbind
trigger1 = AnimElem = 15
pos = -65, -55

[State 3011, a2] 
type = targetState   
trigger1 = AnimElem = 15
value =3040

[State 3011, a1]
type = removeExplod
trigger1 = animelem =14
id =3070


[State 3011, mh]
type = varadd
trigger1 = command="x"||command="y"||command="z"       
trigger2 = var(59)>=1 && time%5
var(16)=1
ignorehitpause=1

[State 3011, 1];1more swing
type = ChangeState
triggerall = Animelem=8 && var(16)>12
trigger1 = BackEdgeBodyDist <= -1
trigger2 = BackEdgeBodyDist > -1
value = 3013
ctrl = 0
[State 3011, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = BackEdgeBodyDist > -1
value = 0
ctrl = 1
[State 3011, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = BackEdgeBodyDist <= -1
value = 3015
ctrl = 0

;===============================================================
[Statedef 3013]
type = S
movetype = A
physics = N
ctrl = 0
sprpriority = 1
velset = 0,0
anim = 3011

[State 3011, mh]
type = varset
trigger1 = !time
var(16)=0

[State 3011,a0]
type = Helper
trigger1 = AnimElem = 13
StateNo = 3017
id = 3018
name = "camera3"
pos = 0,0

[State 3011, sai]
type = ScreenBound
triggerall= time>32
trigger1 =1; P2MoveType = H || BackEdgeBodyDist < -1
value = 0
movecamera = 0,0

[State 3011, a1]
type = removeExplod
trigger1 = !time
id =1006

[State 3011, a1]
type = removeExplod
trigger1 = !time
id =1007
[State 3011, a1]
type = removeExplod
trigger1 = !time
id =3039
[State 3011, a1]
type = removeExplod
trigger1 = !time
id =3040

[State 3011, 1]
type = Turn
trigger1 = AnimElem = 23


[State 3011, b1]
type = RemoveExplod
trigger1 = !time
ID = 3044

[State 3011, b1]
type = RemoveExplod
trigger1 = !time
ID = 3045

[State 3011, a0];dust section
type = Explod
trigger1 = !time
anim = 3040
id=3046
sprpriority = -7
postype = p1
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 300
scale = 1.2,1
pos = 0,0


[State 3011, b1]
type = RemoveExplod
trigger1 = animelem = 11
ID = 3046


[State 3011, aa2];SHINY
type = Explod 
trigger1 = !time 
sprpriority = 3
id = 1004
anim = 3061
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
;removetime = -1

[State 3011, aa3];UP
type = Explod 
trigger1 = !time 
sprpriority = 4
id = 1005
anim = 3091
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1];P2 SHINY
type = Explod 
trigger1=AnimElem=8
sprpriority = 6
id = 3039
anim = 3035
postype = P1
pos = -19,-96
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1];P2 UP
type = Explod 
trigger1=AnimElem=8
sprpriority = 7
id = 3040
anim = 3036
postype = P1
pos =-19,-96
removeongethit = 1
bindtime = -1
ownpal = 1
[State 3011, a1]
type = removeExplod
trigger1=AnimElem=9
id =3039

[State 3011, a1]
type = removeExplod
trigger1=AnimElem=9
id =3040

[State 3011, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 14
sprpriority = 6
id = 3041
anim = 3035
postype = P1
pos = 50,-60
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 14
sprpriority = 7
id = 3042
anim = 3036
postype = P1
pos = 50,-60
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 15
id =3041
[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 15
id =3042

[State 3011, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 15
sprpriority = 6
id = 3043
anim = 3035
postype = P1
pos = -65,-55
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 15
sprpriority = 7
id = 3044
anim = 3036
postype = P1
pos = -65,-55
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3011, a1]
type = removeExplod
trigger1 = AnimElem = 16
id =3043
[State 3011, a1]
type = removeExplod
trigger1 = AnimElem = 16
id =3044

[State 3011, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3011, b2]
type = PlayerPush
trigger1 = 1
value = 0

[State 3011, a4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3011, 1]
type = TargetState
trigger1 = !Time
value = 3031

[State 3011, b3]
type = PlaySnd
trigger1 = !time
value = 6,10

[State 3011, b3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 6,4

[State 3011, b3]
type = PlaySnd
trigger1 = AnimElem = 11
value = 40,7

[State 3010, bind 0]
type = targetbind
trigger1 = AnimElem = 1
pos = -107, -105
[state 3011, bind 1];7
type = targetbind
trigger1 = AnimElem = 2
pos = -134, -120
[State 3011, bind 2]
type = targetbind
trigger1 = AnimElem = 3
pos = -108, -143
[State 3011, bind 3]
type = targetbind
trigger1 = AnimElem  = 4
pos = 1, -153
[State 3011, bind 4]
type  = targetbind
trigger1 = AnimElem = 5
pos = 127,  -144
[State 3011, bind 5]
type = targetbind
trigger1 = AnimElem = 6
pos=  150, -123
[State 3011, bind 6]
type = targetbind
trigger1 = AnimElem  = 7
pos = 120, -104
[State 3011, bind 7]
type = targetbind
trigger1 = AnimElem  = 8
pos = -19, -96
[State 3011, bind 8]
type = targetbind
trigger1 = AnimElem = 9
pos = -108, -143
[state 3011, bind 1];7
type = targetbind
trigger1 = AnimElem = 10
pos = 1, -153
[State 3011, bind 4];------- getting out
type  = targetbind
trigger1 = AnimElem = 11
pos = 37, -143
[State 3011, bind 5]
type = targetbind
trigger1 = AnimElem = 12
pos=  139, -108
[State 3011, bind 6]
type = targetbind
trigger1 = AnimElem  = 13
pos = 129, -82
[State 3011, bind 7]
type = targetbind
trigger1 = AnimElem  = 14
pos = 50, -60
[State 3011, bind 8]
type = targetbind
trigger1 = AnimElem = 15
pos = -65, -55

[State 3011, a2] 
type = targetState   
trigger1 = AnimElem = 15
value =3040

[State 3011, a1]
type = removeExplod
trigger1 = animelem =14
id =3070

[State 3011, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = BackEdgeBodyDist > -1
value = 0
ctrl = 1

[State 3011, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = BackEdgeBodyDist <= -1
value = 3015
ctrl = 0
;======================================================
;wait out screen
[Statedef 3015];-------; based from Mgbr code forum, thanks SodonHid!
type = S
physics = S
anim = 107
sprpriority = 1
ctrl = 0

[State 3015, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3015, 0]
type = VelSet
trigger1 = time>5
x = 25

[State 3015, 0]
type = ScreenBound 
trigger1 = 1
value = 0


[State 3015, 1]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 3015, 2]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3015, 3]
type = ChangeState 
trigger1 = p2bodydist x <= 250 
;trigger1 = BackEdgeDist > -10
value = 104
ctrl = 0

;===================================================

[Statedef 3016]
type = S
movetype = I
physics = N
ctrl = 0
anim =8787
velset = 0,0

[State 3016, a0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 3016, a1]
type = DestroySelf
trigger1=parent, animelem = 62;67
trigger2=parent, stateno!=3010
trigger3=time=500;safe
;=============================================

[Statedef 3017]
type    = S
movetype= I
physics = N
velset = -15,0
anim = 8787
ctrl=0

[State 3017, 4]
type = ScreenBound
trigger1 =1
value = 0
movecamera = 1,0

[State 3017, a8]
type = VelAdd
trigger1 = time>1
x = -.1

[State 3017, 2]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = NoShadow

[State 3017, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3015,0 ]
type = HitAdd
trigger1 = p2stateno = 30419
value = 6
persistent = 0

;[State 3017, 4]
;type = ScreenBound
;triggerall = Parent, Stateno != 3010
;trigger1=1
;value = 1

[State 3017, p2] ;explodpedr
type = Explod
trigger1 = p2stateno = 30419
anim = 8677
postype = p2
pos = 0,-10
sprpriority = 7
removetime = -2
scale = 1,1.5
persistent = 0

[State 3017, b3];vento
type = PlaySnd
trigger1 = p2stateno = 3040
value = 45,1
persistent = 0
channel = 9

[State 3017,b3 ]
type = StopSnd
trigger1 = p2stateno = 30419
channel = 9
persistent = 0

[State 3017, b3];parede
type = PlaySnd
trigger1 = p2stateno = 30419
value = 5,7
persistent = 0
volume = 200

[State 777, hsp]
type = helper
trigger1 = p2stateno = 30419
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =-15,0
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 3017, be]
type = Explod
triggerall = (p2stateno = 30419) && (enemy,time>=30)
trigger1 = Time % 4 = 0  
anim = 8730  
postype = p2
sprpriority = -5
ownpal = 1
pos = -4, -30
scale = .5,.5
ownpal=1
[State 3017, b3];parede
type = PlaySnd
trigger1 = p2stateno = 30419 && p2movetype = I  
value = 7,4
persistent = 0

[State 3017, 5]
type = DestroySelf
trigger1 = p2stateno = 5100
;trigger3 = time = 300 ;safe
;====================================================

[Statedef 3018]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 8787
ctrl=0

[State 3018, 4]
type = ScreenBound
trigger1 =1
value = 0
movecamera = 1,0
[State 3018, 2]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = NoShadow
[State 3018, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3018, a1]
type = explod
trigger1 = 1
anim = 1550
ID = 1550
sprpriority = 7
postype = p2
pos = 0,0
vel = 2 + (random<500),0
accel = .1,.1
random = 80,45
ignorehitpause = 1

[State 3018, a2]
type = modifyexplod
trigger1 = 1
ID = 3075
scale= 1+(.03*time),1+(.006*time)

[State 3018, a3] 
type = Explod
trigger1 = !time
anim = 3075
id = 3075
pos = 0,0
postype = p1
;facing = 1 
bindtime = -1
supermovetime = -1
sprpriority = -6
removetime = 40
scale = .8,.8
removeongethit = 1


[State 3017, 5]
type = DestroySelf
trigger1 = p2stateno = 3040
trigger2 = time = 150 ;safe
;===================================================
;===============================================================
;===================================================

[Statedef 3020]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = -7
ctrl=0

[State 3020, a1]
type = ChangeAnim2
trigger1 = !Time 
value = 3020

[State 3020, 1]
type = Turn
trigger1 = animelem =10
[State 3020, 1]
type = Turn
trigger1  = animelem =19
[State 3020, 1]
type = Turn
trigger1 = animelem =28

[State 3020, bb]
type = PalFX
trigger1 = !Time
time = 190
add = 60,40,5
sinadd = 10,10,10,190


[State 3020, a2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera =1,0;1,0

[State 3020, aa]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3020, a3];safe
type = SelfState
trigger1 = time = 300 ;!gethitvar(isbound)
value = 5050

[State 3020, safe]
type = SelfState
trigger1 = p2movetype = H
value = 5050
;===================================================

[Statedef 3030]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -7
ctrl=0

[State 3030, a1]
type = ChangeAnim2
trigger1 = !Time 
value = 3030


[State 3030, a7]
type =sprpriority
trigger1 =  AnimElem = 5 || AnimElem = 14||animelem = 22 || AnimElem = 30
trigger2 =  AnimElem = 38 || AnimElem = 46 ||animelem = 54 || AnimElem = 62
value = -3

[State 3030, a7]
type =sprpriority
trigger1 =  AnimElem = 3 || AnimElem = 4||animelem = 13 || AnimElem = 21
trigger2 =  AnimElem = 29 || AnimElem = 37 ||animelem = 45 || AnimElem = 53
trigger3 =  AnimElem = 61 || animelem = 67 || AnimElem = 68
value = 5

[State 3030, bb]
type = PalFX
trigger1 = !Time 
time = 305
add = 60,40,5
sinadd = 10,10,10,305

[State 3030, a2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera =1,0;1,0

[State 3030, aa]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3030, a3];safe dosmugen
type = SelfState
trigger1 = time = 500 ;!gethitvar(isbound)
value = 5050

[State 3030, safe]
type = SelfState
trigger1 = p2movetype = H
value = 5050

;================================
[Statedef 3031]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -7
ctrl=0

[State 3031, a1]
type = ChangeAnim2
trigger1 = !Time 
value = 3033

[State 3031, a7]
type =sprpriority
trigger1 =  AnimElem = 9 || AnimElem = 16
value = -3

[State 3031, a7]
type =sprpriority
trigger1 =  AnimElem = 8 || AnimElem = 14||animelem = 15 
value = 5

[State 3031, bb]
type = PalFX
trigger1 = !Time 
time = 305
add = 60,40,5
sinadd = 10,10,10,305

[State 3031, a2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera =1,0;1,0

[State 3031, aa]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3031, a3];safe dosmugen
type = SelfState
trigger1 = time = 500 ;!gethitvar(isbound)
value = 5050

[State 3031, safe]
type = SelfState
trigger1 = p2movetype = H
value = 5050
;===============================================

[Statedef 3040]
type    = A
movetype= H
physics = N
velset = -15;,-30 ;2.8,-7
sprpriority = 1

[State 3040, a1]
type = ChangeAnim2
trigger1 = !Time 
value = 3031

[State 3040, bb]
type = PalFX
trigger1 = !Time 
time = 15
add = 60,40,5
sinadd = 10,10,10,12

[State 3040, bb]
type = AfterImage
trigger1 = !Time 
time = 150
PalBright   =   0,  0,  0
PalContrast = 80,70,0;120,120,220
PalAdd      =  0,0,0 
PalMul      = .95,.95,0;.77,.77,.77
trans = add
TimeGap = 1
FrameGap = 1
length = 8

[State 3040, aa]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3040, a8]
type = VelAdd
trigger1 = time>1
y = -.02
x = -.1

[State 3040, 11]
type = Changestate
trigger1 = BackEdgeBodyDist <= 0
value = 30419
ctrl = 0
;====================================================
[Statedef 30419]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -7
ctrl=0

[State 3041, a0 ]
type = AfterImageTime
trigger1 = !time
time = 1

[State 3011,l ]
type = LifeAdd
trigger1 = !time
value = -100
kill = 1
persistent = 0

[State 3041, a1]
type = ScreenBound
trigger1 = 1
value = 1
;movecamera =1


[State 3041, a2]
type = ChangeAnim2
trigger1 = !Time 
value = 3032

[State 3041, av] 
type = VelAdd
trigger1 = Time > 30
y = .3

[State 3041, a3]
type = PosFreeze
trigger1 = !Time;BackEdgeBodyDist <= 0 
value = 14
persistent = 0

[State 3041, a4]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3041, en]
type = EnvShake
trigger1 = !Time
time = 35
ampl = -6

[State 3041, s];trigger helper sound
type = StateTypeSet
trigger1 = time = 27
movetype = I


[State 3041, ro]
type = PlaySnd
trigger1 = !Time
value = 40,8
volume = 220

[State 3041, a5]
type = changestate
trigger1=p1name="The Mighty Thor"&&roundstate=3&& (roundno>=2)
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 51515
[State 3041, a5]
type = selfstate
trigger1=p1name="The Mighty Thor"&&roundstate=3&& (roundno=1)
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
[State 3041, a5]
type = SelfState
trigger1=p1name!="The Mighty Thor"&&roundstate=3
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 

[State 3041, a5]
type = SelfState
triggerall = roundstate=2
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 
;======================================================

[StateDef 4052]
type    = S                      
movetype = I                      
physics = S                      
juggle  = 8                     
velset = 0,0                     
ctrl = 0
poweradd = -1000                         
sprpriority = 2
hitcountpersist = 1


[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 3996
ctrl = 1

[state 3000,a0]
type = varset
trigger1 = !time
var(14) = 0

[State 7777, voice]
type = PlaySnd
trigger1 = animelem=2
value = 500,7
channel = 0
IgnoreHitPause = 1


[State 3000, a2];lasso charged
type = Explod 
trigger1 = time = 35
sprpriority = 7
id = 3003
anim = 3003
postype = p1
pos = 0, 0
removeongethit = 1
bindtime = -1
supermovetime =9999
pausemovetime = 9999

[State 3000, a3]
type = PlaySnd
trigger1 = animelem = 1||animelem = 3||animelem = 6||animelem = 9||animelem = 12
value = 6, 3
ignorehitpause = 1
channel = 7

[state 3000,a0]
type = varset
trigger1 = animelem = 15
var(14) = 1

[State 3000, a4]
type = PlaySnd
trigger1 = Var(14) >= 1 && time%9 = 0 
value = 6, 3
channel = 6
ignorehitpause = 1


[State 3000, aa2]
type = Explod 
trigger1 = !time
sprpriority = 5
id = 1001
anim = 3050
postype = P1
pos = -3, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 3000, aa3]
type = Explod 
trigger1 = !time
sprpriority = 6
id = 1002
anim = 3080
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 3000, a5] 
type = SuperPause
trigger1 = !time
darken = 0
anim = S8400
sound = S40, 5
pos = -55, -70
movetime = 133
poweradd = -1000
Time = 133
p2defmul = 2

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
helperType = Normal
stateNo = 8510
ID = 8510
name = "Superpause FX"
posType = P1
pos = -50,-70
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 2000, explod] ;Super Portrait
type = Explod
trigger1 = Time = 0
anim = 9110
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -3
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super BG Portrait
type = Explod
trigger1 = Time = 0
anim = 9120
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -2
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super Window
type = Explod
trigger1 = time = 0
anim = 9130
id = 9130
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -4
scale = .3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1


[State 3000, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
value = 8500,1


[State 3000, mh]
type = varset
trigger1=time=20
var(16)=0
ignorehitpause=1


[State 3000, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3997
ctrl = 0

;==============================================================

[Statedef 3997]
type    = S                      
movetype = A                      
physics = S                      
juggle  = 8                     
velset = 0,0                     
ctrl = 0                         
sprpriority = 2


[state 3000,a0]
type = varset
trigger1 = !time
var(14) = 0

[State 3001,re]
type = RemoveExplod
trigger1 = !time
ID = 3003

[State 3001, a3]
type = PlaySnd
trigger1 = !time
value = 6, 6
ignorehitpause = 1
volume = 250


[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 3997
ctrl = 1


[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3001, aa2]
type = Explod 
trigger1 = !time
sprpriority = 6
id = 1001
anim = 3051
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
ignorehitpause = 0
;supermovetime = 9999
;pausemovetime = 9999

[State 3001, aa2]
type = Explod 
trigger1 = !time
sprpriority = 7
id = 1002
anim = 3081
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
ignorehitpause = 0
;supermovetime = 9999
;pausemovetime = 9999

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8001)
ID=8001
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1

[State 3001, far]
type = HitDef
Trigger1 = !time
attr = S, HT
hitflag = MAF
guardflag = MA
animtype = hard
priority = 7,hit
damage = 0,0
pausetime = 0,0
sparkno = -1;Sifelse(random>500,8500,8501) 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy =(enemy,const(size.mid.pos.x)),-30+(enemy,const(size.mid.pos.y))
hitsound = S6,0
guardsound = S7,1
ground.type = High
ground.slidetime = 30
ground.hittime = 30
ground.velocity = 0,0
guard.velocity =-16
guard.pausetime = 0,8
air.velocity = 0,0
air.hittime = 0
guard.dist = 320
p1stateno = 3089
p2stateno = 3020
p2facing = 1
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
givepower = 15

[State 3000, ee]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;================================================
;================================================
[Statedef 3089]
type = S
movetype = A
physics = N
ctrl = 0
sprpriority = -3
velset = 0,0
hitcountpersist=1


[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 3979
ctrl = 1

[State 777, hsp]
type = helper
trigger1 = time=4
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =0,0
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 3005, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3005, aa]
type = removeexplod
trigger1 = !time
id = 1001

[State 1030, aa]
type = removeexplod
trigger1 = !time
id = 1002

[State 3005, b2]
type = PlayerPush
trigger1 = 1
value = 0

[State 3005, voz]
type = PlaySnd
trigger1 = AnimElem = 10||AnimElem = 29
value = 50,1
channel = 1

[State 3005, voz]
type = PlaySnd
trigger1 = AnimElem = 2||AnimElem = 20
value = 50,0
channel = 1

[State 3005, b3]
type = PlaySnd
trigger1 = AnimElem = 3||AnimElem = 12||AnimElem = 21||AnimElem = 30
value = 40,7
channel = 4

[State 3005, ro]
type = PlaySnd
trigger1 =AnimElem = 9||AnimElem = 18||AnimElem = 27||AnimElem = 36
value = 7,2
channel = 5

[State 3005, a7]
type = HitAdd
trigger1 =AnimElem = 9||AnimElem = 18||AnimElem = 27||AnimElem = 36
value = 1

[State 3005, a4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3005, aa2];SHINY
type = Explod 
trigger1 = !time 
sprpriority = 4
id = 1003
anim = 3055
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
;removetime = -1

[State 3005, aa3];UP
type = Explod 
trigger1 = !time 
sprpriority = 5
id = 1004
anim = 3085
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3005, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 184, -60
[State 3005, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 181, -70
[State 3005, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 171, -81
[State 3005, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 172, -76
[State 3005, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 79, -164
[State 3005, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = -16, -178
[State 3005, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
pos = -119, -164
[State 3005, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8
pos = -183, -75
[State 3005, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9
pos = -183, -5

[State 3011,l ]
type = TargetLifeAdd
trigger1 = AnimElem = 9
value = -25
kill = 1
persistent = 0

;2nd hit
[State 3005, Bind 1]
type = TargetBind
trigger1 = AnimElem = 10
pos = -184, -60
[State 3005, Bind 2]
type = TargetBind
trigger1 = AnimElem = 11
pos = -181, -70
[State 3005, Bind 3]
type = TargetBind
trigger1 = AnimElem = 12
pos = -171, -81
[State 3005, Bind 4]
type = TargetBind
trigger1 = AnimElem = 13
pos = -172, -76
[State 3005, Bind 5]
type = TargetBind
trigger1 = AnimElem = 14
pos = -79, -164
[State 3005, Bind 6]
type = TargetBind
trigger1 = AnimElem = 15
pos = 16, -178
[State 3005, Bind 7]
type = TargetBind
trigger1 = AnimElem = 16
pos = 119, -164
[State 3005, Bind 8]
type = TargetBind
trigger1 = AnimElem = 17
pos = 183, -75
[State 3005, Bind 9]
type = TargetBind
trigger1 = AnimElem = 18
pos = 183, -5

[State 3011,l ]
type = TargetLifeAdd
trigger1 = AnimElem = 18
value = -25
kill = 1
persistent = 0

;3rd hit
[State 3005, Bind 1]
type = TargetBind
trigger1 = AnimElem = 19
pos = 184, -60
[State 3005, Bind 2]
type = TargetBind
trigger1 = AnimElem = 20
pos = 181, -70
[State 3005, Bind 3]
type = TargetBind
trigger1 = AnimElem = 21
pos = 171, -81
[State 3005, Bind 4]
type = TargetBind
trigger1 = AnimElem = 22
pos = 172, -76
[State 3005, Bind 5]
type = TargetBind
trigger1 = AnimElem = 23
pos = 79, -164
[State 3005, Bind 6]
type = TargetBind
trigger1 = AnimElem = 24
pos = -16, -178
[State 3005, Bind 7]
type = TargetBind
trigger1 = AnimElem = 25
pos = -119, -164
[State 3005, Bind 8]
type = TargetBind
trigger1 = AnimElem = 26
pos = -183, -75
[State 3005, Bind 9]
type = TargetBind
trigger1 = AnimElem = 27
pos = -183, -5


[State 3011,l ]
type = TargetLifeAdd
trigger1 = AnimElem = 27
value = -25
kill = 1
persistent = 0

;4th hit
[State 3005, Bind 1]
type = TargetBind
trigger1 = AnimElem = 28
pos = -184, -60
[State 3005, Bind 2]
type = TargetBind
trigger1 = AnimElem = 29
pos = -181, -70
[State 3005, Bind 3]
type = TargetBind
trigger1 = AnimElem = 30
pos = -171, -81
[State 3005, Bind 4]
type = TargetBind
trigger1 = AnimElem = 31
pos = -172, -76
[State 3005, Bind 5]
type = TargetBind
trigger1 = AnimElem = 32
pos = -79, -164
[State 3005, Bind 6]
type = TargetBind
trigger1 = AnimElem = 33
pos = 16, -178
[State 3005, Bind 7]
type = TargetBind
trigger1 = AnimElem = 34
pos = 119, -164
[State 3005, Bind 8]
type = TargetBind
trigger1 = AnimElem = 35
pos = 183, -75
[State 3005, Bind 9]
type = TargetBind
trigger1 = AnimElem = 36
pos = 183, -5

[State 3011,l ]
type = TargetLifeAdd
trigger1 = AnimElem = 36
value = -25
kill = 1
persistent = 0

[State 3005, b2]
type = EnvShake
trigger1 = AnimElem = 9||AnimElem = 18||AnimElem = 27||AnimElem = 36
time = 18
ampl = -6



[State 3005, p2] ;explodpedr
type = Explod
trigger1 =AnimElem = 9||AnimElem = 18||AnimElem = 27||AnimElem = 36
anim = 8676
postype = p2
pos = 0,10;
sprpriority = 12
removetime = -2

[State 777, hsp]
type = helper
trigger1 = AnimElem = 9||AnimElem = 18||AnimElem = 27||AnimElem = 36
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


[State 3005, cam4]
type = VarSet
trigger1 = animelem = 36
var(15) = 0

[State 3005, ee]
type = Changestate
trigger1 = animtime = 0
value = 3710
ctrl = 0
;==============================================================
[Statedef 3710]
type = S
movetype = A
physics = N
ctrl = 0
sprpriority = 1
velset = 0,0


[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 3710
ctrl = 1


[State 3010, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3010,0 ]
type = HitAdd
trigger1 = !time
value = -5
persistent = 0

[State 3010, 1]
type = Turn
trigger1 = AnimElem = 76

[State 3010,a0]
type = Helper
trigger1 = !time
StateNo = 3016
id = 3016
name = "camera1"
pos = 145,0

[State 3010,a0]
type = Helper
trigger1 = !time
StateNo = 3016
id = 3017
name = "camera2"
pos = -145,0

[State 3010,a0]
type = Helper
trigger1 = AnimElem = 66
StateNo = 3017
id = 3018
name = "camera3"
pos = 0,0

[State 3010, a0];dust section
type = Explod
trigger1 = animelem = 27
anim = 3040
id=30401
sprpriority = -7
postype = p1
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 300
scale = 1.2,1
pos = 0,0

[State 3010, b1]
type = RemoveExplod
trigger1 = animelem = 65
ID = 30401

[State 3010, b1]
type = RemoveExplod
trigger1 = animelem = 65
ID = 30402

[State 3017, p2] ;explodpedr
type = Explod
trigger1 = p2stateno = 30419
anim = 8677
postype = p2
pos = 0,-10
sprpriority = 7
removetime = -2
scale = 1,1.5
persistent = 0

[State 3010, a1];smoke on the water :P
type = explod
trigger1 = timemod = 20,5 && animelemtime(20)>=0
anim = 8731
ID = 8739
sprpriority = -3
postype = p1
pos = -50,-5
vel = 0 ,0
accel = -.1,-.02
ignorehitpause = 1
scale = .8,.8
supermovetime=99
pausemovetime=99

[State 3010, a2];r
type = explod
trigger1 = timemod = 16,3&& animelemtime(20)>=0
anim = 8731
ID = 8737
sprpriority = -3
postype = p1
pos = 50,-5
vel = 0,0
accel = .1,-.02
ignorehitpause = 1
scale = .8,.8
supermovetime=99
pausemovetime=99

[State 3010, a1];smoke on the water :P
type = explod
trigger1 = timemod = 18,4&& animelemtime(20)>=0
anim = 8731
ID = 8735
sprpriority = 5
postype = p1
pos = -35,5
vel = 0 ,0
accel = -.2,0
ignorehitpause = 1
scale = .5,.5
supermovetime=99
pausemovetime=99

[State 3010, a2];r
type = explod
trigger1 = timemod = 24,2&& animelemtime(20)>=0
anim = 8731
ID = 8734
sprpriority = 5
postype = p1
pos = 35,5
vel = 0 ,0
accel = .2,0
ignorehitpause = 1
scale = .5,.5
supermovetime=99
pausemovetime=99


[State 3010, 1]
type = TargetState
trigger1 = !Time
value = 3030

[State 3010, b2]
type = PlayerPush
trigger1 = 1
value = 0

[State 3010, VA]
type = Explod
trigger1 = animelem = 10
id = 3070
anim = 3070
ownpal = 1
pos = ifelse(TeamSide = 1, 50, 280),67;160,67;
postype = left
bindtime = -1
supermovetime = -1
sprpriority = 9;7
removetime = -1
scale = 1,1
ontop = 1
ignorehitpause = 1

[State 3010, b3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6,6
[State 3010, b3]
type = PlaySnd
trigger1 = AnimElem = 12||AnimElem = 20||AnimElem = 28||AnimElem = 35
value = 6,5
[State 3010, b3]
type = PlaySnd
trigger1 = AnimElem = 43||AnimElem = 51||AnimElem = 59
value = 6,4
[State 3010, b3]
type = PlaySnd
trigger1 = AnimElem = 42
value = 50,6
channel = 10

[State 3010, b3]
type = PlaySnd
trigger1 = AnimElem = 65
value = 40,7


[State 3010, a4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3010, aa2];SHINY
type = Explod 
trigger1 = !time 
sprpriority = 3
id = 1001
anim = 3060
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
;removetime = -1

[State 3010, aa3];UP
type = Explod 
trigger1 = !time 
sprpriority = 4
id = 1002
anim = 3090
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1


[State 3010, bind 1]
type  = TargetBind
trigger1 = AnimElem = 1
pos = 186, -48
[State 3010, bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos  = 113, -21
[State 3010, bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos  = -38, -41
[State 3010, bind 1]
type =  TargetBind
trigger1 = AnimElem = 4
pos = -61, -32
[State 3010, bind 1]
type  = TargetBind
trigger1 = Animelem = 5
pos = -120, -55
[State 3010, bind 1]
type = targetbind
trigger1 = AnimElem = 6
pos = -108, -105

[state 3010, bind 1];lop start
type = targetbind
trigger1 = AnimElem = 7
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 8
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 9
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 10
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 11
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 12
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 13
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 14
pos = -107, -105

[state 3010, bind 1];2
type = targetbind
trigger1 = AnimElem = 15
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 16
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 17
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 18
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 19
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 20
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 21
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 22
pos = -107, -105


[state 3010, bind 1];3
type = targetbind
trigger1 = AnimElem = 23
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 24
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 25
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 26
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 27
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 28
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 29
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 30
pos = -107, -105

[state 3010, bind 1];4
type = targetbind
trigger1 = AnimElem = 31
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 32
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 33
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 34
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 35
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 36
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 37
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 38
pos = -107, -105


[state 3010, bind 1];5
type = targetbind
trigger1 = AnimElem = 39
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 40
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 41
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 42
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 43
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 44
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 45
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 46
pos = -107, -105

[state 3010, bind 1];6
type = targetbind
trigger1 = AnimElem = 47
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 48
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 49
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 50
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 51
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 52
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 53
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 54
pos = -107, -105

[state 3010, bind 1];7
type = targetbind
trigger1 = AnimElem = 55
pos = -134, -120
[State 3010, bind 2]
type = targetbind
trigger1 = AnimElem = 56
pos = -108, -143
[State 3010, bind 3]
type = targetbind
trigger1 = AnimElem  = 57
pos = 1, -153
[State 3010, bind 4]
type  = targetbind
trigger1 = AnimElem = 58
pos = 127,  -144
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 59
pos=  150, -123
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 60
pos = 120, -104
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 61
pos = -19, -96
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 62
pos = -108, -143
[state 3010, bind 1];7
type = targetbind
trigger1 = AnimElem = 63
pos = 1, -153
[State 3010, bind 4];------- getting out
type  = targetbind
trigger1 = AnimElem = 64
pos = 37, -143
[State 3010, bind 5]
type = targetbind
trigger1 = AnimElem = 65
pos=  139, -108
[State 3010, bind 6]
type = targetbind
trigger1 = AnimElem  = 66
pos = 129, -82
[State 3010, bind 7]
type = targetbind
trigger1 = AnimElem  = 67
pos = 50, -60
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 68
pos = -65, -55
[State 3010, bind 8]
type = targetbind
trigger1 = AnimElem = 69
pos = -175, -70


[State 3010, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 3
sprpriority = 6
id = 3035
anim = 3035
postype = P1
pos = -38,-41
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 3
sprpriority = 7
id = 3036
anim = 3036
postype = P1
pos = -38,-41
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 4
id =3035

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 4
id =3036


[State 3010, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 4
sprpriority = 6
id = 3037
anim = 3035
postype = P1
pos = -61,-32
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 4
sprpriority = 7
id = 3038
anim = 3036
postype = P1
pos = -61,-32
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 5
id =3037

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 5
id =3038

[State 3010, a1];P2 SHINY
type = Explod 
trigger1=AnimElem=13||AnimElem=21||AnimElem=29||AnimElem=37
trigger2=AnimElem=45||AnimElem=53||AnimElem=61
sprpriority = 6
id = 3039
anim = 3035
postype = P1
pos = -19,-96
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1];P2 UP
type = Explod 
trigger1=AnimElem=13||AnimElem=21||AnimElem=29||AnimElem=37
trigger2=AnimElem=45||AnimElem=53||AnimElem=61
sprpriority = 7
id = 3040
anim = 3036
postype = P1
pos =-19,-96
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1]
type = removeExplod
trigger1=AnimElem=14||AnimElem=22||AnimElem=30||AnimElem=38
trigger2=AnimElem=46||AnimElem=54||AnimElem=62
id =3039

[State 3010, a1]
type = removeExplod
trigger1=AnimElem=14||AnimElem=22||AnimElem=30||AnimElem=38
trigger2=AnimElem=46||AnimElem=54||AnimElem=62
id =3040

[State 3010, BUTTON]
type = RemoveExplod
trigger1 = AnimElem = 67
ID = 3070
;ignorehitpause = 0
;persistent = 1

[State 3010, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 67
sprpriority = 6
id = 3041
anim = 3035
postype = P1
pos = 50,-60
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 67
sprpriority = 7
id = 3042
anim = 3036
postype = P1
pos = 50,-60
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 68
id =3041

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 68
id =3042

[State 3010, a1];P2 SHINY
type = Explod 
trigger1 = AnimElem = 68
sprpriority = 6
id = 3043
anim = 3035
postype = P1
pos = -65,-55
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1];P2 UP
type = Explod 
trigger1 = AnimElem = 68
sprpriority = 7
id = 3044
anim = 3036
postype = P1
pos = -65,-55
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 69
id =3043

[State 3010, a1]
type = removeExplod
trigger1 = AnimElem = 69
id =3044

[State 3010, a2] 
type = targetState   
trigger1 = AnimElem = 69
value =3040


[State 3010, sai]
type = ScreenBound
triggerall= time>297
trigger1 = P2MoveType = H || BackEdgeBodyDist < -1
value = 0
movecamera = 0,0


[State 3010, mh]
type = varadd
triggerall = NumExplod(3070)
trigger1 = command="x"||command="y"||command="z"       
trigger2 = var(59)>=1 && time%5;AI MASH
var(16)=1
ignorehitpause=1


[State 3010, 1];1more swing
type = ChangeState
triggerall = Animelem=61 && var(16)>8
trigger1 = BackEdgeBodyDist <= -1
trigger2 = BackEdgeBodyDist > -1
value = 3011
ctrl = 0

[State 3010, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = BackEdgeBodyDist > -1
value = 0
ctrl = 1

[State 3010, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = BackEdgeBodyDist <= -1
value = 3015
ctrl = 0

;================================================================
;========================<KIKOSHO>=============================
[StateDef 4000]
type = S
physics = S
moveType = A
anim = ifElse(var(40) && !var(1), 3001, 4000)
ctrl = 0
velSet = 0,0
sprPriority = 1
juggle = 10
powerAdd = -1000
faceP2 = 1


[State 4000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 4000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 4000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 4000, Unguardable]
type = VarSet
trigger1 = Time = 52 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = ifElse(var(40) && !var(1), 68, 43)

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 0
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -28,-108
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 2000, explod] ;Super Portrait
type = Explod
trigger1 = Time = 0
anim = 9110
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -3
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super BG Portrait
type = Explod
trigger1 = Time = 0
anim = 9120
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -2
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super Window
type = Explod
trigger1 = time = 0
anim = 9130
id = 9130
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -4
scale = .3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1


[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = ifElse(var(40) && !var(1), 68, 43)
moveTime = ifElse(var(40) && !var(1), 68, 43)
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 3000, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
value = 8500,0

[State 3000, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40) = 1
value = 3000,10
channel = 1


[State 3000, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 5 && var(40) = 1
anim = 6005
posType = p1
pos = -20, -95
sprPriority = 3
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1


[State 1400, 0]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,4
channel = 6

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 800,5
channel = 0

[State 3000, Kikosho sound effect]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3000,1
channel = 3

[State 3050, Kikosho effect]
type = Explod
trigger1 = AnimElem = 4
anim = 2901
bindTime = -1
sprPriority = 3
pos=40,-70
posType = P1
scale = 0.7,0.7
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3050, Kikosho effect]
type = Explod
trigger1 = AnimElem = 4
anim = 3098
bindTime = -1
sprPriority = 3
pos=40,-70
posType = P1
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3000, Projectile Shield]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 3004
ID = 3004
name = "Kikosho Projectile Shield"
posType = P1
pos = 72, -58
ownPal = 1


[State 4000, Hits 1-3]
type = HitDef
triggerAll = !var(16) && var(15) < (10 + HitCount)
trigger1 = AnimElem = 4 || AnimElem = 5 || AnimElem = 6
attr = A, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 3, fvar(11) * 28)), 3
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.25,0
ground.cornerPush.velOff = 0
guard.velocity = -1.25
guard.cornerPush.velOff = 0
air.velocity = -1.25, -0.703125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
guard.sparkNo = -1 
sparkno = S8321
sparkxy = -10, -87
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4000, Hits 1-3]
type = HitDef
triggerAll = !var(16) && var(15) < (10 + HitCount)
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 9
attr = A, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 3, fvar(11) * 28)), 3
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.25,0
ground.cornerPush.velOff = 0
guard.velocity = -1.25
guard.cornerPush.velOff = 0
air.velocity = -1.25, -0.703125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
guard.sparkNo = -1 
sparkno = S8321
sparkxy = -10, -87
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120



[State 4000, Final Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (10 + HitCount)
trigger1 = AnimElem = 10
attr = A, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 3, fvar(11) * 28)), 3
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -8.75, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = -8.75
guard.cornerPush.velOff = 0
air.velocity = -8.75, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
guard.sparkNo = -1 
sparkno = S8321
sparkxy = -10, -87
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1006, HitSpark]
type = Helper
trigger1 = Movehit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8013, 8013)
ID = 8013
name = "Spark"
posType = P2
pos = (target, const(size.ground.front) +0), (target, const(size.mid.pos.y)+0)
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8001)
ID=8001
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1

[State 4000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(24) >= 0
moveType = I

[State 4000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX KIKOSHO>=============================
[StateDef 4050]
type = S
physics = S
moveType = A
anim = ifElse(var(40) && !var(1), 3051, 4050)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1


[State 4050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 4050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 4050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 4050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 4050, Unguardable]
type = VarSet
trigger1 = Time = 52 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = ifElse(var(40) && !var(1), 70, 45)

[State 4050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 4050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 4050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 4050, SuperPause FX]
type = Helper
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -28,-108
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 2000, explod] ;Super Portrait
type = Explod
trigger1 = Time = 0
anim = 9110
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -3
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super BG Portrait
type = Explod
trigger1 = Time = 0
anim = 9120
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -2
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super Window
type = Explod
trigger1 = time = 0
anim = 9130
id = 9130
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -4
scale = .3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1


[State 4050, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = ifElse(var(40) && !var(1), 70, 45)
moveTime = ifElse(var(40) && !var(1), 70, 45)
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 4050, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
value = 8500,1

[State 4050, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40) = 1
value = 3000,10
channel = 1

[State 4050, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 5 && var(40) = 1
anim = 6005
posType = P1
pos = 3, -95
sprPriority = 3
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1400, 0]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,4
channel = 6

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 800,5
channel = 0

[State 4050, Kikosho sound effect]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3000,1
channel = 3

[State 4050, Kikosho effect]
type = Explod
trigger1 = AnimElem = 4
anim = 2901
bindTime = -1
sprPriority = 3
pos=40,-70
posType = P1
scale = 0.7,0.7
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 4050, Kikosho effect]
type = Explod
trigger1 = AnimElem = 6
anim = 3098
bindTime = -1
sprPriority = 3
pos=40,-70
posType = P1
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 4050, Projectile Shield]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 3004
ID = 3004
name = "Kikosho Projectile Shield"
posType = P1
pos = 72, -58
ownPal = 1

[State 4050, Miss]
type = HitDef
trigger1 = 1
attr = S,HP
hitFlag =
sparkXY = -10,0

[State 4050, Hits 1-3]
type = HitDef
triggerAll = !var(16) && var(15) < (10 + HitCount)
trigger1 = AnimElem = 4 || AnimElem = 5 || AnimElem = 6
attr = A, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 4, fvar(11) * 30)), 4
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.25,0
ground.cornerPush.velOff = 0
guard.velocity = -1.25
guard.cornerPush.velOff = 0
air.velocity = -1.25, -0.703125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 
guard.sparkNo = -1
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -63
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4050, Hits 1-3]
type = HitDef
triggerAll = !var(16) && var(15) < (10 + HitCount)
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 9
attr = A, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 4, fvar(11) * 30)), 4
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.25,0
ground.cornerPush.velOff = 0
guard.velocity = -1.25
guard.cornerPush.velOff = 0
air.velocity = -1.25, -0.703125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 
guard.sparkNo = -1 
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -63
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120


[State 4050, Hits 1-3]
type = HitDef
triggerAll = !var(16) && var(15) < (10 + HitCount)
trigger1 = AnimElem = 10 || AnimElem = 11|| AnimElem = 12
attr = A, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 4, fvar(11) * 30)), 4
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.25,0
ground.cornerPush.velOff = 0
guard.velocity = -1.25
guard.cornerPush.velOff = 0
air.velocity = -1.25, -0.703125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 
guard.sparkNo = -1 
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -63
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120



[State 4050, Final Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (10 + HitCount)
trigger1 = AnimElem = 13
attr = A, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 9, fvar(11) * 30)), 9
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -8.75, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = -8.75
guard.cornerPush.velOff = 0
air.velocity = -8.75, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 
guard.sparkNo = -1 
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -63
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1006, HitSpark]
type = Helper
trigger1 = Movehit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8013, 8013)
ID = 8013
name = "Spark"
posType = P2
pos = (target, const(size.ground.front) +0), (target, const(size.mid.pos.y)+0)
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8001)
ID=8001
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1

[State 4050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(24) >= 0
moveType = I

[State 4050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1




;========================<HOYOKUSEN>=============================
[Statedef 3100]
type    = S                      
movetype = I                      
physics = S                      
velset = 0,0                     
ctrl = 0                         
sprpriority = 2
poweradd=-1000


[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 3100
ctrl = 1

[State 777, a02]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 3100
ctrl = 1

[State 7777, voice]
type = PlaySnd
trigger1 = !time
value = 500,8
channel = 0
IgnoreHitPause = 1

[State 3000, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
value = 8500,0

[State 3100, A4]
type = PlaySnd
trigger1 = animelem = 10||animelem = 15||animelem = 21
trigger2 = animelem = 39||animelem = 45||animelem = 51||animelem = 57
trigger3 = animelem = 75||animelem = 81
value = 6,5
channel = 9
freqmul = 1.2
volume = -50

[State 7777, voice]
type = PlaySnd
trigger1 = !time
value = 200,2
channel = 1

[State 3100, star];stars coming
type = Helper
trigger1 = timemod = 4,2 && Numhelper(3125) <= 10 
name = "bigstar"
stateno = 3125
ID = 3125
pos = ifelse(random<500,-100,ifelse(random<500,100,0)),ifelse(random<500,-150,ifelse(random<500,-100,25))
ignorehitpause = 1
postype = p1
supermovetime = 9999
pausemovetime = 9999



[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10,-70
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 2000, explod] ;Super Portrait
type = Explod
trigger1 = Time = 0
anim = 9110
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -3
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super BG Portrait
type = Explod
trigger1 = Time = 0
anim = 9120
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -2
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super Window
type = Explod
trigger1 = time = 0
anim = 9130
id = 9130
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -4
scale = .3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1


[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 125
moveTime = 125
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0


[State 3100, bb]
type = PalFX
trigger1 = animelem = 35
time= 50
add = 20,20,10
mul = 410,410,260
sinadd = 174,195,205,100;60

[State 3100, a4];spin
type = explod
trigger1 = animelem = 15||animelem = 25||animelem = 35||animelem = 45||animelem = 55
anim = 3150
id = 3150
sprpriority = 8
removeongethit = 1
pos = 8, ifelse(random<500,-50,ifelse(random<500,-25,-70))
postype = p1
vel =0,-1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = ifelse(random<500,.5,ifelse(random<500,.3,.8)),ifelse(random<500,.5,ifelse(random<500,.4,.7))

[State 3100, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3105
ctrl = 0
;============================================================

[Statedef 3105];---------------------------------------------
type    = S                      
movetype = I                      
physics = S                      
ctrl = 0                         
sprpriority = 2

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 3105
ctrl = 1

[State 3105, bb]
type = PalFX
trigger1 = !Time
time = 10
add = 215,175,155


[State 3105, bb]
type = PalFX
trigger1 = animelem = 2
time = 20;70
add = 60,40,5
sinadd = 10,10,10,20;60

[State 7777, voice]
type = PlaySnd
trigger1 = !time
value = 200,3
channel = 3

[State 3105, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3105, aa2]
type = Explod 
trigger1 = !time
sprpriority = 1
id = 3101
anim = 3101
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 3107, a1]
type = explod
trigger1 = 1 
anim = 1552
sprpriority = 7
postype = p1
pos = 0,-50
random = 34,45
ignorehitpause = 1
scale = .5,.5
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
ownpal = 1

[State 3105, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3107
ctrl = 0
;===================================================
[Statedef 3107]
type    = S
movetype= A
physics = S
juggle  = 6
velset = 0,0
sprpriority = 4
ctrl = 0

[State 777, hsp]
type = helper
triggerall = !Numhelper(8710)
trigger1 = movehit && animelem = 2
trigger2 = movehit && animelem = 3
trigger3 = movehit && animelem = 4
trigger4 = movehit && animelem = 14
trigger5 = movehit && animelem = 25
helpertype = normal
stateno = 8710;8700
ID = 8710
name = "cutspark"
postype = p2
pos = -15,-70
ignorehitpause = 1
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State 777, hsp]
type = helper
triggerall = !Numhelper(8701)
trigger1 = movehit && animelem = 9
trigger2 = movehit && animelem = 20
helpertype = normal
stateno = 8701;8700
ID = 8701
name = "shieldspark"
postype = p2
pos = -15,-70
ignorehitpause = 1
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State 777, hdf]
type = helper
triggerall = !Numhelper(8716) && !var(55)
trigger1 = moveguarded && animelem = 2
trigger2 = moveguarded && animelem = 3
trigger3 = moveguarded && animelem = 4
trigger4 = moveguarded && animelem = 9
trigger5 = moveguarded && animelem = 14
trigger6 = moveguarded && animelem = 25 
trigger7 = moveguarded && animelem = 20
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = -15,-70
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 3107
ctrl = 1

[State 3107, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3107, bb]
type = PalFX
trigger1 = !time
time = 1
add = 0,0,1

[State 3107, 1];sword 1st
type = HitDef
trigger1 =!time
trigger2 = animelem = 14
attr = S, HA
priority = 7, Hit 
animtype  = medium
damage = 25,5
hitflag = MAF
guardflag = MA
pausetime = 1,8
sparkno = -1;Sifelse(random>500,8520,8521) 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -10,-70
hitsound   = S200,4
guardsound = S7,1
guard.velocity = -3
airguard.velocity = -1,-2    
air.type = low                  
air.velocity = 1,-2           
air.hittime = 40
ground.type = low
ground.slidetime = 18
ground.hittime  = 40
ground.velocity = 3,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.hittime = 20
guard.ctrltime = 20
envshake.time = 4
envshake.ampl = -6
kill =0
givepower = 5
guard.dist = 250

[State 3107, 2];shield
type = HitDef
trigger1 = animelem = 9||animelem = 20
attr = S, HA
animtype  = medium
damage = 35,5
hitflag = MAF
priority = 7, Hit 
guardflag = MA
pausetime = 1,8
sparkno = -1;Sifelse(random>500,8520,8521)  
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -10,-70
hitsound   = S5,4
guardsound = S7,1
guard.velocity = -3
airguard.velocity = -1,-2    
air.type = high                  
air.velocity = -2,-2          
air.hittime =40
ground.type = high
ground.slidetime = 18
ground.hittime  = 40
ground.velocity = -4,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.hittime = 20
guard.ctrltime = 20
envshake.time = 4
envshake.ampl = -6
kill =0
givepower = 5
guard.dist = 250

[State 3107, 3];sword
type = HitDef
trigger1 = animelem = 25
attr = S, HA
animtype  = hard
damage = 25,5
priority = 7, Hit 
hitflag = MAF
guardflag = MA
pausetime = 1,4
sparkno = -1;Sifelse(random>500,8520,8521) 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -10,-70
hitsound   = S200,4
guardsound = S7,1
guard.velocity = -3
airguard.velocity = -8,-4    
air.type = low                  
air.velocity = -1,-4           
air.fall = 1
air.hittime = 60
ground.type = low
ground.slidetime = 35
ground.hittime  = 60
ground.velocity = -7,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.hittime = 35
guard.ctrltime = 35
envshake.time = 4
envshake.ampl = -6
kill =0
givepower = 5
guard.dist = 250

[State 7777, voice]
type = PlaySnd
trigger1 = animelem = 1||animelem = 7||animelem = 12||animelem = 18||animelem = 23
value = 40,7
channel = 9
volume = -100

[State 7777, voice]
type = PlaySnd
trigger1 = animelem = 5||animelem = 11||animelem = 16||animelem = 22||animelem = 27
value = 50,ifelse(random<500,0,1)
channel = 0

[State 3107, v1]
type = VelSet
trigger1 = animelem = 2||animelem = 7||animelem = 13||animelem = 18||animelem = 24
x = 3
[State 3107, v1]
type = VelSet
trigger1 = animelem = 5||animelem = 11||animelem = 16||animelem = 22||animelem = 27
x = 0


[State 3107, a1]
type = explod
trigger1 = Time%4 = 0 
anim = 1552
sprpriority = 7
postype = p1
pos = 0,-70
random = 34,45
ignorehitpause = 1
scale = .5,.5
bindtime = -1
ownpal = 1


[State 3107, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3109
ctrl = 0

[Statedef 3109]
type    = S
movetype= A
physics = S
juggle  = 6
velset = 0,0
sprpriority = 4
ctrl = 0

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 3109
ctrl = 1
[State 3109, bb]
type = PalFX
trigger1 = !Time
time = 7
add = 215,175,155
sinadd = 215,175,155,7

[State 3109, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 7777, voice]
type = PlaySnd
trigger1 = animelem = 7
value = 50,5
channel = 0

[State 7777, voice]
type = PlaySnd
trigger1 = !time
value = 200,6
channel = 3
volume = 220

[State 3109, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3109, aa2]
type = Explod 
trigger1 = prevstateno!=9000 && !time
sprpriority = 1
id = 3108
anim = 3108
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 0

[State 3109, a1]
type = explod
trigger1 = Time%4 = 0 
anim = 1552
sprpriority = 7
postype = p1
pos = -5,-70
random = 34,45
ignorehitpause = 1
scale = .5,.5
bindtime = -1
ownpal = 1

[State 3109, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3110
ctrl = 0

;=================================================

[Statedef 3110]
type    = S
movetype= A
physics = S
juggle  = 6
velset = 0,0
sprpriority = 4
ctrl = 0

[State 777, ch]
type = ChangeAnim
trigger1 = (prevstateno != 9000) && (!time)
value = 3110
ctrl = 1

[State 777, hsp]
type = helper
trigger1 = movehit 
helpertype = normal
stateno = 8710;8700
ID = 8710
name = "cutspark"
postype = p2
pos = -15,-70
ignorehitpause = 1
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
stateNo=ifElse(MoveGuarded, 8001, 8001)
ID=8001
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1


[State 3110, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 3110, bb]
type = PalFX
trigger1 = !time
time = 1
add = 0,0,1

[State 3110, re]
type = RemoveExplod
trigger1 = time>=0
ID =3108 

[State 7777, voice]
type = PlaySnd
trigger1 = animelem=1
value = 40,7
channel = 6
persistent = 0
volume = 200


[State 3110, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3110, 1]
type = HitDef
trigger1 =!time
attr = S, HA
animtype  = hard
damage = 65,10
priority = 7, Hit 
hitflag = MAFD
guardflag = HA
pausetime = 0,6
sparkno = -1;Sifelse(random>500,8520,8521) 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -10,-70
hitsound   = S200,5
guardsound = S7,1
guard.velocity = 0
airguard.velocity = -8,6   
air.type = high                 
air.hittime = 20
ground.type = high
ground.slidetime = 24
ground.hittime  = 24
air.velocity = -4,12 
ground.velocity = -6,12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.hittime = -6
guard.ctrltime = -6
fall = 1
fall.xvelocity = -14
fall.yvelocity = -1
fall.recover =0
air.fall =1
down.bounce = 1
givepower = 5
guard.dist = 250


[State 3110, b1] ;explod
type = Explod
trigger1 = animelem=4
anim = 8676
postype = p1
pos = 129, 5
sprpriority = 7
scale = .78,.78

[State 3110, b11] ;explod2
type = Explod
trigger1 = animelem=4
anim = 8000
postype = p1
pos = 118, -4
sprpriority = -7


[State 3110, b2]
type = EnvShake
trigger1 = animelem = 4
time = 10
ampl = -12

[State 3110, b3 ]
type = PlaySnd
trigger1 = animelem = 4
value = 7, 2
persistent=0

[State 7777, voice]
type = PlaySnd
trigger1 = animelem = 4
value = 200,7
channel = 9
persistent = 0

[State 3110, a1]
type = explod
trigger1 = Time%4 = 0 
anim = 1552
sprpriority = 7
postype = p1
pos = 20,-50
random = 34,45
ignorehitpause = 1
scale = .5,.5
bindtime = -1
ownpal = 1

[State 3110, ax]
type = Helper
trigger1 = !time 
helpertype = Normal
name = "wonderaxe"
id = 3120
pos = 0,0
postype = p1
bindtime = -1
facing = 0
stateno = 3120
ownpal = 1
ignorehitpause = 1

[State 3110, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3115
ctrl = 0

;========================================
[Statedef 3115]
type    = S                      
movetype = I                      
physics = S                      
ctrl = 0                         
sprpriority = 2

[State 3115, star];stars out
type = Helper
trigger1 = 1
name = "armorout"
stateno = 3130
ID = 3130
pos = 0,-50
ignorehitpause = 1
postype = p1

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 3115
ctrl = 1

[State 3115, a1]
type = explod
trigger1 = Time%4 = 0 
anim = 1552
sprpriority = 7
postype = p1
pos = 0,-70
random = 34,45
ignorehitpause = 1
scale = .5,.5
bindtime = -1
ownpal = 1


[State 3109, bb]
type = PalFX
trigger1 = time = 4
time = 11;70
add = 210,210,160
sinadd = 210,210,160,12;60

[State 7777, voice]
type = PlaySnd
trigger1 = time = 35
value = 500,7
channel = 1
IgnoreHitPause = 1
volume = 200

[State 3115, b1]
Type = BGPalfx
Trigger1 = !time 
Add = -70,-70,-90
sinadd = 15,15,15,12
time = 6


[State 3115, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;=================================================

[Statedef 3120]
type    = S
movetype = I
physics = N
anim = 3120
ctrl = 0
sprpriority = 7

[State 3120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
[State 3120, 4]
type = ScreenBound 
trigger1 = 1
value = 0

[state 3120,a0]
type = varadd
trigger1 = animelem = 1||animelem = 2||animelem = 3||animelem = 4||animelem = 5
v = 17
value = 1

[State 3120, a1]
type = explod
trigger1 = 1
anim = 1551
ID = 3155
sprpriority = 7
postype = p1
pos = 0,0
vel =ifelse(var(17)=4,0,ifelse(var(17)=3,-6,ifelse(var(17)=2,-12,ifelse(var(17)=1,-9,0)))),ifelse(var(17)=4,-4,ifelse(var(17)=3,-8,ifelse(var(17)=2,-4,ifelse(var(17)=1,0,0))))     
;ifelse(var(17)=4,0,ifelse(var(17)=3,-12,ifelse(var(17)=2,-9,ifelse(var(17)=1,-6,0)))),ifelse(var(17)=4,-14,ifelse(var(17)=3,-4,ifelse(var(17)=2,0,ifelse(var(17)=1,4,0))))
accel = -.05,-.05
random = 30,30
ignorehitpause = 1
scale = .7,.7

[State 3125, 2]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3120, b]
type = BindToParent
trigger1 = animelem = 1
facing = 0
pos = -44,-142

[State 3120, b]
type = BindToParent
trigger1 = animelem = 2
facing = 0
pos = 34,-150

[State 3120, b]
type = BindToParent
trigger1 = animelem = 3
facing = 0
pos = 120,-111

[State 3120, b]
type = BindToParent
trigger1 = animelem = 4
facing = 0
pos = 146,-20

[State 3120, b]
type = BindToParent
trigger1 = animelem = 5
time = 5
facing = 0
pos = 134,-12

[state 3120,a0]
type = varset
trigger1 = animelem = 8
trigger2 = parent, movetype=H
trigger3 = !time
var(17)=0

[State 3120, 3]
type = destroyself
trigger1 = animtime= 0
trigger2 = parent, movetype=H

;==============================================
[Statedef 3125]
type    = S
movetype = I
physics = N
anim = 8787
ctrl = 0
sprpriority = 7

[State 3125, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3125, 4]
type = ScreenBound 
trigger1 = 1
value = 0

[State 3125, a2]
type = modifyexplod
trigger1 = 1
ID = 3125
scale= 1-(.03*time),1-(.03*time)


[State 3125, a4]
type = explod
triggerall = parent, stateno = 3100
trigger1 = !time%15
anim = 3125
id = 3125
sprpriority = 7
removeongethit = 1
postype = p1
vel =((parentdist x)/20),((parentdist y -60)/20)
random = 30,30
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = 1,1

[State 3125, 2]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3125, 3]
type = destroyself
trigger1 = time >= 30
;=======================================================
[Statedef 3130]
type    = S
movetype = I
physics = N
anim = 8787
ctrl = 0
sprpriority = 7

[State 3130, be]
type = Explod
triggerall = p2movetype = H
trigger1 = time%35 = 0
anim = 8730  
postype = p2
sprpriority = 7
ownpal = 1
vel = 2,0
accel =.01,0 
pos = -80, 0
scale = .4,.4
random = 20,0
supermovetime = 999
pausemovetime = 999
ownpal=1

[State 3130, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3130, 4]
type = ScreenBound 
trigger1 = 1
value = 0

[State 3130, a2]
type = modifyexplod
trigger1 = 1
ID = 3130
scale= .3+(.04*time),.3+(.04*time)

[State 3130, a4]
type = explod
trigger1 = !time
anim = 3130
id = 3130
sprpriority = 7
postype = p1
vel = ceil((200-random)/70),ceil((200-random)/70)
random = 30,30
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .3,.3

[State 3130, a2]
type = modifyexplod
trigger1 = 1
ID = 3131
scale= .2+(.04*time),.2+(.04*time)

[State 3130, a4]
type = explod
trigger1 = !time
anim = 3130
id = 3131
sprpriority = 7
postype = p1
vel = ceil((700-random)/90),ceil((700-random)/90)
random = 20,20
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .2,.2


[State 3130, 2]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3130, 3]
type = destroyself
trigger1 = time >= 30



;========================<MAX HOYOKUSEN>=============================
[Statedef 3151]
type    = S                      
movetype = I                      
physics = S                      
velset = 0,0                     
ctrl = 0                         
sprpriority = 2
poweradd=-2000


[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 3151
ctrl = 1

[State 777, a02]
type = ChangeAnim
trigger1 =  !time && prevstateno != 9000
value = 3151
ctrl = 1

[State 0, LV-3]
type = AfterImage
trigger1 = time=90
time = 9999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
trans = add

[State 7777, voice]
type = PlaySnd
trigger1 = !time
value = 500,8
channel = 0
IgnoreHitPause = 1

[State 3100, star];stars coming
type = Helper
trigger1 = timemod = 4,2 && Numhelper(3125) <= 10 
name = "bigstar"
stateno = 3125
ID = 3125
pos = ifelse(random<500,-100,ifelse(random<500,100,0)),ifelse(random<500,-150,ifelse(random<500,-100,25))
ignorehitpause = 1
postype = p1
supermovetime = 9999
pausemovetime = 9999


[State 3100, A4]
type = PlaySnd
trigger1 = animelem = 10||animelem = 15||animelem = 21
trigger2 = animelem = 39||animelem = 45||animelem = 51||animelem = 57
trigger3 = animelem = 75||animelem = 81
value = 6,5
channel = 9
freqmul = 1.2
volume = -50

[State 7777, voice]
type = PlaySnd
trigger1 = !time
value = 200,2
channel = 1


[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
helperType = Normal
stateNo = 8510
ID = 8510
name = "Superpause FX"
posType = P1
pos = 10,-70
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1


[State 2000, explod] ;Super Portrait
type = Explod
trigger1 = Time = 0
anim = 9110
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -3
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super BG Portrait
type = Explod
trigger1 = Time = 0
anim = 9120
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -2
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super Window
type = Explod
trigger1 = time = 0
anim = 9130
id = 9130
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -4
scale = .3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1


[State 3000, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
value = 8500,1



[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 125
moveTime = 125
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 3100, star];stars coming
type = Helper
trigger1 = timemod = 4,2 && Numhelper(3126) <= 10 
name = "bigstar"
stateno = 3126
ID = 3126
pos = ifelse(random<500,-100,ifelse(random<500,100,0)),ifelse(random<500,-150,ifelse(random<500,-100,25))
ignorehitpause = 1
postype = p1
supermovetime = 9999
pausemovetime = 9999


[State 3100, bb]
type = PalFX
trigger1 = animelem = 35
time= 50
add = 20,20,10
mul = 410,410,260
sinadd = 174,195,205,100;60

[State 3100, a4];spin
type = explod
trigger1 = animelem = 15||animelem = 25||animelem = 35||animelem = 45||animelem = 55
anim = 3150
id = 3150
sprpriority = 8
removeongethit = 1
pos = 8, ifelse(random<500,-50,ifelse(random<500,-25,-70))
postype = p1
vel =0,-1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = ifelse(random<500,.5,ifelse(random<500,.3,.8)),ifelse(random<500,.5,ifelse(random<500,.4,.7))

[State 3100, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3155
ctrl = 0
;============================================================

[Statedef 3155];---------------------------------------------
type    = S                      
movetype = I                      
physics = S                      
ctrl = 0                         
sprpriority = 2


[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 3155
ctrl = 1

[State 3105, bb]
type = PalFX
trigger1 = !Time
time = 10
add = 215,175,155


[State 3105, bb]
type = PalFX
trigger1 = animelem = 2
time = 20;70
add = 60,40,5
sinadd = 10,10,10,20;60

[State 7777, voice]
type = PlaySnd
trigger1 = !time
value = 200,3
channel = 3

[State 3105, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3105, aa2]
type = Explod 
trigger1 = !time
sprpriority = 1
id = 3101
anim = 3101
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 3107, a1]
type = explod
trigger1 = 1 
anim = 1552
sprpriority = 7
postype = p1
pos = 0,-50
random = 34,45
ignorehitpause = 1
scale = .5,.5
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
ownpal = 1

[State 3105, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3117
ctrl = 0
;===================================================
[Statedef 3117]
type    = S
movetype= A
physics = S
juggle  = 6
velset = 0,0
sprpriority = 4
ctrl = 0

[State 777, hsp]
type = helper
triggerall = !Numhelper(8710)
trigger1 = movehit && animelem = 2
trigger2 = movehit && animelem = 3
trigger3 = movehit && animelem = 4
trigger4 = movehit && animelem = 14
trigger5 = movehit && animelem = 25
trigger6 = movehit && animelem = 35
trigger7 = movehit && animelem = 38
helpertype = normal
stateno = 8710;8700
ID = 8710
name = "cutspark"
postype = p2
pos = -15,-70
ignorehitpause = 1
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State 777, hsp]
type = helper
triggerall = !Numhelper(8701)
trigger1 = movehit && animelem = 9
trigger2 = movehit && animelem = 20
trigger3 = movehit && animelem = 30
trigger4 = movehit && animelem = 38
helpertype = normal
stateno = 8701;8700
ID = 8701
name = "shieldspark"
postype = p2
pos = -15,-70
ignorehitpause = 1
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State 777, hdf]
type = helper
triggerall = !Numhelper(8716) && !var(55)
trigger1 = moveguarded && animelem = 2
trigger2 = moveguarded && animelem = 3
trigger3 = moveguarded && animelem = 4
trigger4 = moveguarded && animelem = 9
trigger5 = moveguarded && animelem = 14
trigger6 = moveguarded && animelem = 25 
trigger7 = moveguarded && animelem = 20
trigger8 = moveguarded && animelem = 38
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = -15,-70
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 3117
ctrl = 1

[State 3107, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3107, bb]
type = PalFX
trigger1 = !time
time = 1
add = 0,0,1

[State 3107, 1];sword 1st
type = HitDef
trigger1 =!time
trigger2 = animelem = 14
attr = S, HA
priority = 7, Hit 
animtype  = medium
damage = 30,5
hitflag = MAF
guardflag = MA
pausetime = 1,8
sparkno = -1;Sifelse(random>500,8520,8521) 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -10,-70
hitsound   = S200,4
guardsound = S7,1
guard.velocity = -3
airguard.velocity = -1,-2    
air.type = low                  
air.velocity = 1,-2           
air.hittime = 40
ground.type = low
ground.slidetime = 18
ground.hittime  = 40
ground.velocity = 3,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.hittime = 20
guard.ctrltime = 20
envshake.time = 4
envshake.ampl = -6
kill =0
givepower = 5
guard.dist = 250

[State 3107, 2];shield
type = HitDef
trigger1 = animelem = 9||animelem = 20
attr = S, HA
animtype  = medium
damage = 30,5
hitflag = MAF
priority = 7, Hit 
guardflag = MA
pausetime = 1,8
sparkno = -1;Sifelse(random>500,8520,8521)  
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -10,-70
hitsound   = S5,4
guardsound = S7,1
guard.velocity = -3
airguard.velocity = -1,-2    
air.type = high                  
air.velocity = -2,-2          
air.hittime =40
ground.type = high
ground.slidetime = 18
ground.hittime  = 40
ground.velocity = -4,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.hittime = 20
guard.ctrltime = 20
envshake.time = 4
envshake.ampl = -6
kill =0
givepower = 5
guard.dist = 250


[State 3107, 2];shield
type = HitDef
trigger1 = animelem = 30||animelem = 35
attr = S, HA
animtype  = medium
damage = 35,5
hitflag = MAF
priority = 7, Hit 
guardflag = MA
pausetime = 1,8
sparkno = -1;Sifelse(random>500,8520,8521)  
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -10,-70
hitsound   = S5,4
guardsound = S7,1
guard.velocity = -3
airguard.velocity = -1,-2    
air.type = high                  
air.velocity = -2,-2          
air.hittime =40
ground.type = high
ground.slidetime = 18
ground.hittime  = 40
ground.velocity = -2,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.hittime = 20
guard.ctrltime = 20
envshake.time = 4
envshake.ampl = -6
kill =0
givepower = 5
guard.dist = 250

[State 3107, 3];sword
type = HitDef
trigger1 = animelem = 25
attr = S, HA
animtype  = hard
damage = 30,5
priority = 7, Hit 
hitflag = MAF
guardflag = MA
pausetime = 1,4
sparkno = -1;Sifelse(random>500,8520,8521) 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -10,-70
hitsound   = S200,4
guardsound = S7,1
guard.velocity = -3
airguard.velocity = -8,-4    
air.type = low                  
air.velocity = -1,-4           
air.fall = 1
air.hittime = 60
ground.type = low
ground.slidetime = 35
ground.hittime  = 60
ground.velocity = -7,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.hittime = 35
guard.ctrltime = 35
envshake.time = 4
envshake.ampl = -6
kill =0
givepower = 5
guard.dist = 250


[State 3107, 3];sword
type = HitDef
trigger1 = animelem = 38
attr = S, HA
animtype  = hard
damage = 30,5
priority = 7, Hit 
hitflag = MAF
guardflag = MA
pausetime = 1,4
sparkno = -1;Sifelse(random>500,8520,8521) 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -10,-70
hitsound   = S200,4
guardsound = S7,1
guard.velocity = 0
airguard.velocity = -8,-4    
air.type = low                  
air.velocity = -1,-4
fall=1           
air.fall = 1
air.hittime = 60
ground.type = low
ground.slidetime = 35
ground.hittime  = 60
ground.velocity = 0,-10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.hittime = -6
guard.ctrltime = -6
envshake.time = 4
envshake.ampl = -6
kill =0
givepower = 5
guard.dist = 250

[State 7777, voice]
type = PlaySnd
trigger1 = animelem = 1||animelem = 7||animelem = 12||animelem = 18||animelem = 23
value = 40,7
channel = 9
volume = -100

[State 7777, voice]
type = PlaySnd
trigger1 = animelem = 5||animelem = 11||animelem = 16||animelem = 22||animelem = 27
value = 50,ifelse(random<500,0,1)
channel = 0

[State 3107, v1]
type = VelSet
trigger1 = animelem = 2||animelem = 7||animelem = 13||animelem = 18||animelem = 24
x = 3
[State 3107, v1]
type = VelSet
trigger1 = animelem = 5||animelem = 11||animelem = 16||animelem = 22||animelem = 27
x = 0


[State 3107, a1]
type = explod
trigger1 = Time%4 = 0 
anim = 1552
sprpriority = 7
postype = p1
pos = 0,-70
random = 34,45
ignorehitpause = 1
scale = .5,.5
bindtime = -1
ownpal = 1


[State 3107, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3109
ctrl = 0
;==================================================
[Statedef 3109]
type    = S
movetype= A
physics = S
juggle  = 6
velset = 0,0
sprpriority = 4
ctrl = 0

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 3109
ctrl = 1
[State 3109, bb]
type = PalFX
trigger1 = !Time
time = 7
add = 215,175,155
sinadd = 215,175,155,7

[State 3109, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 7777, voice]
type = PlaySnd
trigger1 = animelem = 7
value = 50,5
channel = 0

[State 7777, voice]
type = PlaySnd
trigger1 = !time
value = 200,6
channel = 3
volume = 220

[State 3109, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3109, aa2]
type = Explod 
trigger1 = prevstateno!=9000 && !time
sprpriority = 1
id = 3108
anim = 3108
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 0

[State 3109, a1]
type = explod
trigger1 = Time%4 = 0 
anim = 1552
sprpriority = 7
postype = p1
pos = -5,-70
random = 34,45
ignorehitpause = 1
scale = .5,.5
bindtime = -1
ownpal = 1

[State 3109, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3110
ctrl = 0

;=================================================

[Statedef 3110]
type    = S
movetype= A
physics = S
juggle  = 6
velset = 0,0
sprpriority = 4
ctrl = 0

[State 777, ch]
type = ChangeAnim
trigger1 = (prevstateno != 9000) && (!time)
value = 3110
ctrl = 1

[State 777, hsp]
type = helper
trigger1 = movehit 
helpertype = normal
stateno = 8710;8700
ID = 8710
name = "cutspark"
postype = p2
pos = -15,-70
ignorehitpause = 1
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
stateNo=ifElse(MoveGuarded, 8001, 8001)
ID=8001
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1


[State 3110, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 3110, bb]
type = PalFX
trigger1 = !time
time = 1
add = 0,0,1

[State 3110, re]
type = RemoveExplod
trigger1 = time>=0
ID =3108 

[State 7777, voice]
type = PlaySnd
trigger1 = animelem=1
value = 40,7
channel = 6
persistent = 0
volume = 200


[State 3110, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3110, 1]
type = HitDef
trigger1 =!time
attr = S, HA
animtype  = hard
damage = 85,10
priority = 7, Hit 
hitflag = MAFD
guardflag = HA
pausetime = 0,6
sparkno = -1;Sifelse(random>500,8520,8521) 
guard.sparkno = ifelse(!var(55),-1,40) 
sparkxy = -10,-70
hitsound   = S200,5
guardsound = S7,1
guard.velocity = -12
airguard.velocity = -8,6   
air.type = high                 
air.hittime = 20
ground.type = high
ground.slidetime = 24
ground.hittime  = 24
air.velocity = -4,12 
ground.velocity = -6,12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.hittime = 20
guard.ctrltime = 20
fall = 1
fall.xvelocity = -14
fall.yvelocity = -1
fall.recover =0
air.fall =1
down.bounce = 1
givepower = 5
guard.dist = 250


[State 3110, b1] ;explod
type = Explod
trigger1 = animelem=4
anim = 8676
postype = p1
pos = 129, 5
sprpriority = 7
scale = .78,.78

[State 3110, b11] ;explod2
type = Explod
trigger1 = animelem=4
anim = 8000
postype = p1
pos = 118, -4
sprpriority = -7


[State 3110, b2]
type = EnvShake
trigger1 = animelem = 4
time = 10
ampl = -12

[State 3110, b3 ]
type = PlaySnd
trigger1 = animelem = 4
value = 7, 2
persistent=0

[State 7777, voice]
type = PlaySnd
trigger1 = animelem = 4
value = 200,7
channel = 9
persistent = 0

[State 3110, a1]
type = explod
trigger1 = Time%4 = 0 
anim = 1552
sprpriority = 7
postype = p1
pos = 20,-50
random = 34,45
ignorehitpause = 1
scale = .5,.5
bindtime = -1
ownpal = 1

[State 3110, ax]
type = Helper
trigger1 = !time 
helpertype = Normal
name = "wonderaxe"
id = 3120
pos = 0,0
postype = p1
bindtime = -1
facing = 0
stateno = 3120
ownpal = 1
ignorehitpause = 1

[State 3110, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3115
ctrl = 0

;========================================
[Statedef 3115]
type    = S                      
movetype = I                      
physics = S                      
ctrl = 0                         
sprpriority = 2

[State 3115, star];stars out
type = Helper
trigger1 = 1
name = "armorout"
stateno = 3130
ID = 3130
pos = 0,-50
ignorehitpause = 1
postype = p1

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 3115
ctrl = 1

[State 3115, a1]
type = explod
trigger1 = Time%4 = 0 
anim = 1552
sprpriority = 7
postype = p1
pos = 0,-70
random = 34,45
ignorehitpause = 1
scale = .5,.5
bindtime = -1
ownpal = 1


[State 3109, bb]
type = PalFX
trigger1 = time = 4
time = 11;70
add = 210,210,160
sinadd = 210,210,160,12;60

[State 7777, voice]
type = PlaySnd
trigger1 = time = 35
value = 500,7
channel = 1
IgnoreHitPause = 1
volume = 200

[State 3115, b1]
Type = BGPalfx
Trigger1 = !time 
Add = -70,-70,-90
sinadd = 15,15,15,12
time = 6


[State 3115, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;=================================================

[Statedef 3120]
type    = S
movetype = I
physics = N
anim = 3120
ctrl = 0
sprpriority = 7

[State 3120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
[State 3120, 4]
type = ScreenBound 
trigger1 = 1
value = 0

[state 3120,a0]
type = varadd
trigger1 = animelem = 1||animelem = 2||animelem = 3||animelem = 4||animelem = 5
v = 17
value = 1

[State 3120, a1]
type = explod
trigger1 = 1
anim = 1551
ID = 3155
sprpriority = 7
postype = p1
pos = 0,0
vel =ifelse(var(17)=4,0,ifelse(var(17)=3,-6,ifelse(var(17)=2,-12,ifelse(var(17)=1,-9,0)))),ifelse(var(17)=4,-4,ifelse(var(17)=3,-8,ifelse(var(17)=2,-4,ifelse(var(17)=1,0,0))))     
;ifelse(var(17)=4,0,ifelse(var(17)=3,-12,ifelse(var(17)=2,-9,ifelse(var(17)=1,-6,0)))),ifelse(var(17)=4,-14,ifelse(var(17)=3,-4,ifelse(var(17)=2,0,ifelse(var(17)=1,4,0))))
accel = -.05,-.05
random = 30,30
ignorehitpause = 1
scale = .7,.7

[State 3125, 2]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3120, b]
type = BindToParent
trigger1 = animelem = 1
facing = 0
pos = -44,-142

[State 3120, b]
type = BindToParent
trigger1 = animelem = 2
facing = 0
pos = 34,-150

[State 3120, b]
type = BindToParent
trigger1 = animelem = 3
facing = 0
pos = 120,-111

[State 3120, b]
type = BindToParent
trigger1 = animelem = 4
facing = 0
pos = 146,-20

[State 3120, b]
type = BindToParent
trigger1 = animelem = 5
time = 5
facing = 0
pos = 134,-12

[state 3120,a0]
type = varset
trigger1 = animelem = 8
trigger2 = parent, movetype=H
trigger3 = !time
var(17)=0

[State 3120, 3]
type = destroyself
trigger1 = animtime= 0
trigger2 = parent, movetype=H

;==============================================
[Statedef 3125]
type    = S
movetype = I
physics = N
anim = 8787
ctrl = 0
sprpriority = 7

[State 3125, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3125, 4]
type = ScreenBound 
trigger1 = 1
value = 0

[State 3125, a2]
type = modifyexplod
trigger1 = 1
ID = 3125
scale= 1-(.03*time),1-(.03*time)


[State 3125, a4]
type = explod
triggerall = parent, stateno = 3100
trigger1 = !time%15
anim = 3125
id = 3125
sprpriority = 7
removeongethit = 1
postype = p1
vel =((parentdist x)/20),((parentdist y -60)/20)
random = 30,30
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = 1,1

[State 3125, 2]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3125, 3]
type = destroyself
trigger1 = time >= 30
;=======================================================
[Statedef 3130]
type    = S
movetype = I
physics = N
anim = 8787
ctrl = 0
sprpriority = 7

[State 3130, be]
type = Explod
triggerall = p2movetype = H
trigger1 = time%35 = 0
anim = 8730  
postype = p2
sprpriority = 7
ownpal = 1
vel = 2,0
accel =.01,0 
pos = -80, 0
scale = .4,.4
random = 20,0
supermovetime = 999
pausemovetime = 999
ownpal=1

[State 3130, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3130, 4]
type = ScreenBound 
trigger1 = 1
value = 0

[State 3130, a2]
type = modifyexplod
trigger1 = 1
ID = 3130
scale= .3+(.04*time),.3+(.04*time)

[State 3130, a4]
type = explod
trigger1 = !time
anim = 3130
id = 3130
sprpriority = 7
postype = p1
vel = ceil((200-random)/70),ceil((200-random)/70)
random = 30,30
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .3,.3

[State 3130, a2]
type = modifyexplod
trigger1 = 1
ID = 3131
scale= .2+(.04*time),.2+(.04*time)

[State 3130, a4]
type = explod
trigger1 = !time
anim = 3130
id = 3131
sprpriority = 7
postype = p1
vel = ceil((700-random)/90),ceil((700-random)/90)
random = 20,20
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .2,.2


[State 3130, 2]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3130, 3]
type = destroyself
trigger1 = time >= 30




;========================<TENSEIRANKA>=============================
[StateDef 3200]
type = S
physics = S
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1


[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 11,-67
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 2000, explod] ;Super Portrait
type = Explod
trigger1 = Time = 0
anim = 9110
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -3
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super BG Portrait
type = Explod
trigger1 = Time = 0
anim = 9120
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -2
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super Window
type = Explod
trigger1 = time = 0
anim = 9130
id = 9130
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -4
scale = .3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1


[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = !Time
value = 730,1
channel = 0

[State 3200, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3100,1
channel = 1

[State 3200, Spinning Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3200,0
channel = 3

[State 3200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 3200, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tenseiranka Dust"
posType = P1
ownPal = 1

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 13
y = -9.1875

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 1.0625



[State 3200, Hits Going Up]
type = HitDef
trigger1 = !var(16) && (var(15) < 10 + HitCount)
trigger1 = AnimElem = 4 || AnimElem = 8 || AnimElem = 12
attr = A, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 17 < 7, 7, fvar(11) * 17)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, -5.59375
ground.cornerPush.velOff = 0
guard.velocity = 1.25
guard.cornerPush.velOff = 0
air.velocity = 0, -5.59375
air.cornerPush.velOff = 0
yAccel = 0.5625
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Spark XY]
type = Null
trigger1 = AnimElem = 14
trigger1 = var(35) := 32 || var(36) := -94
trigger2 = AnimElem = 15
trigger2 = var(35) := 44 || var(36) := -66
trigger3 = AnimElem = 16
trigger3 = var(35) := 32 || var(36) := -38

[State 3200, Hits Going Down]
type = HitDef
trigger1 = !var(16) && (var(15) < 10 + HitCount)
trigger1 = AnimElem = 14
attr = A, HP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 17 < 7, 7, fvar(11) * 17)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 5,5
guard.pauseTime = 5,5
animType = Hard
air.animType = Low
fall.animType = Low
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 1.25
guard.cornerPush.velOff = 0
air.velocity = 0,10
air.cornerPush.velOff = 0
yAccel = 0.40625
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3201


;Landing
[StateDef 3201]
type = S
anim = 3201
physics = N
moveType = A
velSet = 0,0
hitCountPersist = 1

[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3201, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,3
channel = 0

[State 3201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3201, Impact Dust]
type = Explod
trigger1 = !Time
anim = 8105
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3201, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = 3200,1
channel = 4

[State 3201, Energy Pillar Sound]
type = PlaySnd
trigger1 = !Time
value = 3200,2
channel = 5

[State 3201, Energy Pillar effect]
type = Explod
trigger1 = !Time
anim = 3206
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.3,0.36
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3201, EnvShake]
type = EnvShake
trigger1 = !Time
time = 22
ampl = 8
freq = 120
ignoreHitPause = 1

[State 3201, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 10 + HitCount)
trigger1 = AnimElem = 1
ID = 3201
attr = A, HP
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 142 < 7, 7, fvar(11) * 142)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.86
guard.cornerPush.velOff = 0
air.velocity = 0, 14
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 74), var(36) := ceil(P2Dist y);-36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3201, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3201) > 1
ID = 3201
keepOne = 1
excludeID = 3201
ignoreHitPause = 1

[State 3201, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3201)
trigger1 = !(Target(3201), Time)
value = ifElse(Target(3201), StateType = A, 5425, 5420)
ID = 3201
ignoreHitPause = 1

[State 3201, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
moveType = I

[State 3201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX TENSEIRANKA>=============================
[StateDef 3250]
type = S
physics = S
moveType = A
anim = 3250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1


[State 3250, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3250, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3250, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3250, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3250, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3250, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3250, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3250, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(14) < 0
time = 1
value = SCA

[State 3250, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 11,-67
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 2000, explod] ;Super Portrait
type = Explod
trigger1 = Time = 0
anim = 9110
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -3
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super BG Portrait
type = Explod
trigger1 = Time = 0
anim = 9120
id = 9110
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -2
scale =.3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super Window
type = Explod
trigger1 = time = 0
anim = 9130
id = 9130
postype = back
pos = 0,-30
facing = 1
removetime = 50
sprpriority = -4
scale = .3,.3
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1


[State 3250, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3250, Voice]
type = PlaySnd
trigger1 = !Time
value = 730,1
channel = 0

[State 3250, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3100,1
channel = 1

[State 3250, Spinning Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3200,0
channel = 3

[State 3250, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 3250, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tenseiranka Dust"
posType = P1
ownPal = 1

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 13
y = -10.4375

[State 3250, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 1.0625


[State 3250, Tenseiranka Overlay FX]
type = Explod
trigger1 = AnimElem = 14
anim = 3203
bindTime = -1
sprPriority = 4
posType = P1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3250, Hits Going Up]
type = HitDef
trigger1 = !var(16) && (var(15) < 10 + HitCount)
trigger1 = AnimElem = 4 || AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12
attr = A, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 23 < 7, 7, fvar(11) * 23)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, -9.84375
ground.cornerPush.velOff = 0
guard.velocity = 1.25
guard.cornerPush.velOff = 0
air.velocity = 0, -9.84375
air.cornerPush.velOff = 0
yAccel = 0.5625
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, Spark XY]
type = Null
trigger1 = AnimElem = 14
trigger1 = var(35) := 32 || var(36) := -94
trigger2 = AnimElem = 15
trigger2 = var(35) := 44 || var(36) := -66
trigger3 = AnimElem = 16
trigger3 = var(35) := 32 || var(36) := -38

[State 3250, Hits Going Down]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
attr = A, HP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 23 < 7, 7, fvar(11) * 23)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 5,5
guard.pauseTime = 5,5
animType = Hard
air.animType = Low
fall.animType = Low
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 1.25
guard.cornerPush.velOff = 0
air.velocity = 0,6
air.cornerPush.velOff = 0
yAccel = 0.40625
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3201



;========================<HOSENKA>=============================
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 47

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(13) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = -16,-25
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Width]
type = Width
trigger1 = !Time
player = 32,0

[State 3300, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100,0
channel = 0

[State 3300, Dash sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3100,1
channel = 1

[State 3300, Dust Helper]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 8103
ID = 8100
name = "Hosenka Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 32

[State 3300, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 12.5

[State 3300, VelSet]
type = VelSet
trigger1 = AnimElem = 12
x = 0

[State 3300, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3300,0
channel = 0

[State 3300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 12
trigger2 = AnimElem = 20
trigger3 = AnimElem = 23
trigger4 = AnimElem = 26
trigger5 = AnimElem = 29
trigger6 = AnimElem = 32
trigger7 = AnimElem = 35
trigger8 = AnimElem = 38
value = 1,5

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 17
x = 13

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 18
x = 18

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 19
x = 5

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 20
x = 2

[State 3300, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 21
trigger2 = AnimElem = 27
trigger3 = AnimElem = 33
trigger4 = AnimElem = 39
value = 4,2
channel = 0

[State 3300, Voice 4]
type = PlaySnd
trigger1 = AnimElem = 44
value = 4,3
channel = 0

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 44
x = 13

[State 3300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 45
value = 1,5
channel = 1

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 45
x = 18

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 46
x = 33

[State 3300, First Hit]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Low
fall.animType = Low
ground.type = Low
air.type = Low
ground.hitTime = 24
ground.slideTime = 24
guard.hitTime = 24
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, Spark XY]
type = Null
trigger1 = AnimElem = 21 || AnimElem = 33
trigger1 = var(35) := 56 || var(36) := -100
trigger2 = AnimElem = 24 || AnimElem = 36
trigger2 = var(35) := 66 || var(36) := -65
trigger3 = AnimElem = 27 || AnimElem = 39
trigger3 = var(35) := 64 || var(36) := -84
trigger4 = AnimElem = 30
trigger4 = var(35) := 59 || var(36) := -44

[State 3300, Hit Low]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 24 || AnimElem = 30 || AnimElem = 36
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Low
fall.animType = Low
ground.type = Low
air.type = Low
ground.hitTime = 24
ground.slideTime = 24
guard.hitTime = 24
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, Hit High]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 21 || AnimElem = 27 || AnimElem = 33 || AnimElem = 39
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = High
fall.animType = High
ground.type = High
air.type = High
ground.hitTime = 24
ground.slideTime = 24
guard.hitTime = 24
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, Final Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 46
ID = 3300
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = 0, -11
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = 0, -11
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -93
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, ChangeState]
type = ChangeState
trigger1 = NumTarget(3300)
trigger1 = MoveHit && Target, Alive
value = 3310

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(50) >= 0
moveType = I

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Finish
[StateDef 3310]
type = S
anim = 3310
physics = N
moveType = A
velSet = 0,0
hitCountPersist = 1

[State 3310, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 7
stateType = A
physics = N

[State 3310, Dust Helper]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8100
ID = 8100
name = "Hosenka Finish Dust"
posType = P1
ownPal = 1

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElem = 7
y = -7

[State 3310, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) > 0 && AnimElemTime(60) < 0 && vel y < 0
y = 0.2

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) > 0 && AnimElemTime(60) < 0 && vel y > 0
y = 0

[State 3310, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(60) > 0
y = 0.08

[State 3310, Step sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 100,0
channel = 1

[State 3310, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 730,1
channel = 0

[State 3310, Tornado sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3300,1
channel = 3

[State 3310, Tornado]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 3315
ID = 1005
name = "Hosenka Tornado Helper"
posType = P1
pos = 0,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3310, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 13
trigger3 = AnimElem = 17
trigger4 = AnimElem = 21
trigger5 = AnimElem = 25
trigger6 = AnimElem = 29
trigger7 = AnimElem = 33
trigger8 = AnimElem = 37
trigger9 = AnimElem = 41
trigger10 = AnimElem = 45
trigger11 = AnimElem = 49
value = 1,5

[State 3310, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 55
value = 4,3
channel = 0

[State 3310, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 55
value = 1,5
channel = 1

[State 3310, Spinning Bird Kick Hits (Opponent in Front)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = P2Dist x >= 0
trigger1 = AnimElem = 10 || AnimElem = 14 || AnimElem = 18 || AnimElem = 22 || AnimElem = 26 || AnimElem = 30 || AnimElem = 34 || AnimElem = 38 || AnimElem = 42 || AnimElem = 46; || AnimElem = 50
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0,0
guard.pauseTime = 0,0
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = (P2Dist x + 45) / 5, ifElse(AnimElemTime(30) >= 0, -1, vel y + 0.75)
ground.cornerPush.velOff = 0
guard.velocity = -5.25
guard.cornerPush.velOff = 0
air.velocity = (P2Dist x + 25) / 5, ifElse(AnimElemTime(30) >= 0, -1, vel y + 0.75)
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.2
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2Facing = 1
kill = 0

[State 3310, Spinning Bird Kick Hits (Opponent in Back)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = P2Dist x < 0
trigger1 = AnimElem = 10 || AnimElem = 14 || AnimElem = 18 || AnimElem = 22 || AnimElem = 26 || AnimElem = 30 || AnimElem = 34 || AnimElem = 38 || AnimElem = 42 || AnimElem = 46
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0,0
guard.pauseTime = 0,0
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = (P2Dist x - 45) / 5, ifElse(AnimElemTime(30) >= 0, -1, vel y + 0.75)
ground.cornerPush.velOff = 0
guard.velocity = -5.25
guard.cornerPush.velOff = 0
air.velocity = (P2Dist x - 25) / 5, ifElse(AnimElemTime(30) >= 0, -1, vel y + 0.75)
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.2
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -66), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2Facing = -1
kill = 0

[State 3310, Final Spinning Bird Kick Hit (Opponent in Front)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = P2Dist x >= 0
trigger1 = AnimElem = 50
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0,0
guard.pauseTime = 0,0
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 1, -8.25
ground.cornerPush.velOff = 0
guard.velocity = -5.25
guard.cornerPush.velOff = 0
air.velocity = 1, -8.25
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2Facing = 1
kill = 0

[State 3310, Final Spinning Bird Kick Hit (Opponent in Back)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = P2Dist x < 0
trigger1 = AnimElem = 50
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0,0
guard.pauseTime = 0,0
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1, -8.25
ground.cornerPush.velOff = 0
guard.velocity = -5.25
guard.cornerPush.velOff = 0
air.velocity = -1, -8.25
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -66), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2Facing = -1
kill = 0

[State 3310, Final Hit]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount))
trigger1 = AnimElem = 55
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -1.25, -6.25
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.25, -6.25
air.cornerPush.velOff = 0
yAccel = 0.25
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -7), var(36) := -143
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2Facing = 1

[State 3310, Hit Sound]
type = PlaySnd
trigger1 = MoveHit = 1 && HitPauseTime = 12
value = 2, 3300
channel = 3
ignoreHitPause = 1

[State 3310, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(56) >= 0
moveType = I

[State 3310, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3311


;Landing
[StateDef 3311]
type = S
anim = 3311
physics = N
moveType = I
velSet = 0,0

[State 3311, EX Flash off]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 3311, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3311, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3311, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 3311, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SENRETSUKYAKU>=============================
[StateDef 3400]
type = S
physics = N
moveType = A
anim = ifElse(!var(1), 3401, 3400)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3400, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3400, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3400, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3400, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3400, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = ifElse(!var(1), 54, 43)

[State 3400, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3400, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3400, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3400, Super Pause FX]
type = Helper
trigger1 = Time = 3 && var(1)
trigger2 = AnimElemTime(2) = 11 && !var(1)
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 31,-15
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3400, Width]
type = Width
trigger1 = !Time
player = 32,0

[State 3400, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = ifElse(!var(1), 54, 43)
moveTime = ifElse(!var(1), 54, 43)
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 3400, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(2) = 11 && var(40) && !var(1)
value = 8500,0

[State 3400, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,10
channel = 1

[State 3400, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 6005
posType = p1
pos = 11, -77
sprPriority = 3
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3400, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100,0
channel = 0

[State 3400, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3400,0
channel = 0

[State 3400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 13
trigger3 = AnimElem = 16
trigger4 = AnimElem = 19
trigger5 = AnimElem = 22
value = 1,5

[State 3400, Dash sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3100,1
channel = 3

[State 3400, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Senretsukyaku Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 5.90144

[State 3400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(10) < 0
x = -0.48828125

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 12.5

[State 3400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(10) > 0 && vel x > 0
x = -0.5859375

[State 3400, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3400, First Hit]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6,6
guard.pauseTime = 6,6
animType = Hard
air.animType = Low
fall.animType = Low
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.52,0
ground.cornerPush.velOff = 0
guard.velocity = -5.52
guard.cornerPush.velOff = 0
air.velocity = -0.75, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, Spark XY]
type = Null
trigger1 = AnimElem = 14
trigger1 = var(35) := 56 || var(36) := -100
trigger2 = AnimElem = 17
trigger2 = var(35) := 66 || var(36) := -65
trigger3 = AnimElem = 20
trigger3 = var(35) := 64 || var(36) := -84
trigger4 = AnimElem = 23
trigger4 = var(35) := 59 || var(36) := -44

[State 3400, Hit Low]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 17
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Low
fall.animType = Low
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -vel x, 0
ground.cornerPush.velOff = 0
guard.velocity = -vel x
guard.cornerPush.velOff = 0
air.velocity = -0.75, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, Hit High]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 14 || AnimElem = 20
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = High
fall.animType = High
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -vel x, 0
ground.cornerPush.velOff = 0
guard.velocity = -vel x
guard.cornerPush.velOff = 0
air.velocity = -0.75, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, Final Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 23
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 14
ground.slideTime = 14
guard.hitTime = 14
air.hitTime = 120
ground.velocity = -5, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(24) >= 0
moveType = I

[State 3400, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX SENRETSUKYAKU>=============================
[StateDef 3450]
type = S
physics = N
moveType = A
anim = ifElse(!var(1), 3451, 3450)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3450, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3450, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3450, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3450, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3450, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = ifElse(!var(1), 56, 45)

[State 3450, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3450, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3450, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(10) < 0
time = 1
value = SCA

[State 3450, Super Pause FX]
type = Helper
trigger1 = Time = 3 && var(1)
trigger2 = AnimElemTime(2) = 11 && !var(1)
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 31,-15
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3450, Width]
type = Width
trigger1 = !Time
player = 32,0

[State 3450, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = ifElse(!var(1), 56, 45)
moveTime = ifElse(!var(1), 56, 45)
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 3450, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(2) = 11 && var(40) && !var(1)
value = 8500,0

[State 3450, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,10
channel = 1

[State 3450, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 6005
posType = p1
pos = 11, -77
sprPriority = 3
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3450, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100,0
channel = 0

[State 3450, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3400,0
channel = 0

[State 3450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 13
trigger3 = AnimElem = 16
trigger4 = AnimElem = 19
trigger5 = AnimElem = 22
trigger6 = AnimElem = 25
trigger7 = AnimElem = 28
trigger8 = AnimElem = 31
value = 1,5

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 32

[State 3450, Dash sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3100,1
channel = 3

[State 3450, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Senretsukyaku Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 6.25

[State 3450, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(10) < 0
x = -0.48828125

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 12.5

[State 3450, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(10) > 0 && AnimElemTime(35) < 0 && vel x > 0
x = -0.5859375

[State 3450, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = 5

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
x = 2

[State 3450, First Hit]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6,6
guard.pauseTime = 6,6
animType = Hard
air.animType = Low
fall.animType = Low
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.52,0
ground.cornerPush.velOff = 0
guard.velocity = -5.52
guard.cornerPush.velOff = 0
air.velocity = -0.75, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Spark XY]
type = Null
trigger1 = AnimElem = 14 || AnimElem = 26
trigger1 = var(35) := 56 || var(36) := -100
trigger2 = AnimElem = 17 || AnimElem = 29
trigger2 = var(35) := 66 || var(36) := -65
trigger3 = AnimElem = 20 || AnimElem = 32
trigger3 = var(35) := 64 || var(36) := -84
trigger4 = AnimElem = 23
trigger4 = var(35) := 59 || var(36) := -44

[State 3450, Hit Low]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 17 || AnimElem = 23 || AnimElem = 29
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Low
fall.animType = Low
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -vel x / 2, 0
ground.cornerPush.velOff = 0
guard.velocity = -vel x / 2
guard.cornerPush.velOff = 0
air.velocity = -0.75, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Hit High]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 14 || AnimElem = 20 || AnimElem = 26 || AnimElem = 32
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = High
fall.animType = High
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -vel x / 2, 0
ground.cornerPush.velOff = 0
guard.velocity = -vel x / 2
guard.cornerPush.velOff = 0
air.velocity = ifElse(AnimElemTime(32) >= 0, -7.5, -0.75), ifElse(AnimElemTime(32) >= 0, -1.125, -2.5)
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 38
value = 4,3
channel = 0

[State 3450, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 38
value = 1,5
channel = 1

[State 3450, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 37
value = 40,0
channel = 3

[State 3450, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 37
stateType = A
physics = N

[State 3450, Dust Helper]
type = Helper
trigger1 = AnimElem = 37
helperType = Normal
stateNo = 8100
ID = 8100
name = "MAX Senretsukyaku dust"
posType = P1
ownPal = 1

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElem = 35
x = 4.6875

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 36
x = 19

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 37
x = 8

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 38
x = 5

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElem = 37
y = -5.25

[State 3450, Gravity]
type = VelAdd
trigger1 = AnimElemTime(37) >= 0 && AnimElemTime(45) < 0
y = 0.75

[State 3450, Final Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 39
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 16,16
guard.pauseTime = 16,16
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 14
ground.slideTime = 14
guard.hitTime = 14
air.hitTime = 120
ground.velocity = -5, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 79), var(36) := -87
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, StateTypeSet: Standing, Physics: None]
type = StateTypeSet
trigger1 = pos y > -vel y
stateType = S
physics = N

[State 3450, Landing Sound]
type = PlaySnd
trigger1 = pos y > -vel y
value = 52,0
channel = 4

[State 3450, Landing Dust Explod]
type = Explod
trigger1 = pos y > -vel y
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3450, PosSet]
type = PosSet
trigger1 = pos y > -vel y
y = 0

[State 3450, VelSet]
type = VelSet
trigger1 = pos y > -vel y
x = 0
y = 0

[State 3450, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(41) >= 0
moveType = I

[State 3450, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<HAZAN TENSHOKYAKU>=============================
[StateDef 3500]
type    = S
movetype = A
physics = N
anim=3500
juggle = 0
velset = 0,0
ctrl = 0
facep2=1

[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 3600, Super Pause FX]
type = Helper
trigger1 = Time = 0
trigger2 = AnimElemTime(1) = 3 && !var(1)
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = -45,-76
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 0

[State 3000, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 28 && var(40) && !var(1)
value = 8500,2

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1111,0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1111,0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1111,0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1111,0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1111,0


[State 0, Position]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, VarSet]
type = VarSet
trigger1=time=0
var(25)=Ifelse(enemynear,movetype=H,1,0)
ignorehitpause=1

[State 0, VarSet]
type = VarSet
trigger1=time=0
var(8)=0
ignorehitpause=1

[State 0, LV-3]
type = AfterImage
trigger1 = time=0
time = 9999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
trans = add

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 =animelem=7
time = 0
ignorehitpause =1

[State 3600, SP]
type = SuperPause
trigger1=!time
time = 60
movetime=60
anim = -1
sound = S8300,2
pos = 0,0
darken = 0
poweradd = -3000
unhittable = 1


[State 3600, 4]
type = ChangeState
trigger1 =!animtime
value =3502
ctrl = 0
;---------------------------------------------------------------------------
;Awakening Blood-Miss
[Statedef 3502]
type    = S
movetype = I
physics = N
anim=3502
juggle = 0
velset = 0,0
ctrl = 0
facep2=1

[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1



[State 0, LV-3]
type = AfterImage
trigger1 = animelem=3
time = 9999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
trans = add

[State 3602, snd]
type=playsnd
trigger1=!time
value=900,1
channel=0

[State 3602, 4]
type = ChangeState
trigger1 =!animtime
value =3503
ctrl = 0

;---------------------------------------------------------------------------
;Awakening Blood-Miss
[Statedef 3503]
type    = S
movetype = A
physics = N
anim=3503
juggle = 0
velset = 0,0
ctrl = 0
facep2=1

[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1



[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50,6


[State -3, Ground Ki]
type = Explod
trigger1 =  AnimElem = 5 ||AnimElem = 9 ||AnimElem = 13 ||AnimElem = 14||AnimElem = 15||AnimElem = 16  
anim = 3650
sprpriority = 3
bindtime = 1
;removetime = 18
pos = -40,0
ownpal = 1
scale = 0.7,0.4
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 =  AnimElem = 5
anim = 8330
sprpriority = 1
bindtime = 5
;removetime = 18
pos = 100,0
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 =  AnimElem = 5
anim = 8330
sprpriority = 1
bindtime = 5
;removetime = 18
pos = 170,0
ownpal = 1
scale =1,1
ignorehitpause = 1


[State -3, Ground Ki]
type = Explod
trigger1 = AnimElem = 9
anim = 8330
sprpriority = 1
bindtime = 5
;removetime = 18
pos = 200,0
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 = AnimElem = 9
anim = 8330
sprpriority = 1
bindtime = 5
;removetime = 18
pos = 250,0
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 = AnimElem = 13
anim = 8330
sprpriority = 1
bindtime = 5
;removetime = 18
pos = 300,0
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 = AnimElem = 14
anim = 8330
sprpriority = 1
bindtime = 5
;removetime = 18
pos = 300,0
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 = AnimElem = 15
anim = 8330
sprpriority = 1
bindtime = 5
;removetime = 18
pos = 300,0
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 = AnimElem = 16
anim = 8330
sprpriority = 1
bindtime = 5
;removetime = 18
pos = 300,0
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 =  AnimElem = 5
anim = 3611
sprpriority = 3
bindtime = 5
;removetime = 18
pos = 100,-40
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 =  AnimElem = 5
anim = 3611
sprpriority = 3
bindtime = 5
;removetime = 18
pos = 170,-40
ownpal = 1
scale =1,1
ignorehitpause = 1


[State -3, Ground Ki]
type = Explod
trigger1 = AnimElem = 9
anim = 3611
sprpriority = 3
bindtime = 5
;removetime = 18
pos = 200,-40
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 = AnimElem = 9
anim = 3611
sprpriority = 3
bindtime = 5
;removetime = 18
pos = 250,-40
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 = AnimElem = 13
anim = 3611
sprpriority = 3
bindtime = 5
;removetime = 18
pos = 300,-40
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 = AnimElem = 14
anim = 3611
sprpriority = 3
bindtime = 5
;removetime = 18
pos = 300,-40
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 = AnimElem = 15
anim = 3611
sprpriority = 3
bindtime = 5
;removetime = 18
pos = 300,-40
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 = AnimElem = 16
anim = 3611
sprpriority = 3
bindtime = 5
;removetime = 18
pos = 300,-40
ownpal = 1
scale =1,1
ignorehitpause = 1

[State 1028, Shake Screen]
type = EnvShake
trigger1 = animelem = 4
time = 10     ;Time to shake screen
ampl = 10     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State -3, Ground Ki]
type = Explod
trigger1 = AnimElem = 13
anim = 3611
sprpriority = 3
bindtime = 5
;removetime = 18
pos = 350,-40
ownpal = 1
scale =1,1
ignorehitpause = 1

[State -3, Ground Ki]
type = Explod
trigger1 =  AnimElem = 5
anim = 3175
sprpriority = 3
bindtime = 1
ID = 3175
;removetime = 18
pos = 200,0
ownpal = 1
scale = 0.7,0.4
ignorehitpause = 1
removetime = -1
removeongethit = 1


[State 1500, Rem KI]
type = RemoveExplod
trigger1 = animelem = 15
ID = 3176

[State 1500, Rem KI]
type = RemoveExplod
trigger1 = animelem = 15
ID = 3175

[State 250, 1]
type = Hitdef
trigger1 =AnimElem = 5  || AnimElem = 6  ||AnimElem = 7 || AnimElem = 8 ||AnimElem = 9|| AnimElem = 10  || AnimElem = 11|| AnimElem = 12 
attr = S, NA
hitflag = MAFD
guardflag = M
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 5,Hit
damage =20,7
pausetime = 6,6
sparkno = S8321
guard.sparkno = S8321
sparkxy = -10, -87
hitsound = S2, 5
guardsound = S1, 0
ground.type = High
air.type = Low
ground.slidetime = 16
ground.hittime = 16
air.hittime = 16
guard.ctrltime = 16
ground.velocity = -3,-2
guard.velocity = -10
air.velocity = -3,-2
airguard.velocity = -6,-1
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9
getpower = 35,35
givepower = 35, 35
envshake.time = 12
envshake.ampl = 6
fall = 1
fall.recover = 0

[State 250, 1]
type = Hitdef
trigger1 = AnimElem = 13|| AnimElem = 14|| AnimElem = 15|| AnimElem = 16
attr = S, NA
hitflag = MAFD
guardflag = M
animtype = UP
air.animtype = back
fall.animtype = back
priority = 5,Hit
damage =70,6
pausetime = 12,12
sparkno = S8321
guard.sparkno = S8321
sparkxy = -10, -87
hitsound = S2, 5
guardsound = S1, 0
ground.type = High
air.type = High
ground.slidetime = 16
ground.hittime = 16
air.hittime = 16
guard.ctrltime = 16
ground.velocity = -100,-3
guard.velocity = -10
air.velocity = -100, -3
airguard.velocity = -6,-1
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9
getpower = 35,35
givepower = 35, 35
envshake.time = 12
envshake.ampl = 6
fall = 1
fall.recover = 0

[State 3105, HitSpark]
type=Helper
trigger1= moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target,time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8001)
ID=8001
name="Spark"
postype=p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
size.xscale =1.0
size.yscale =1.0
ownpal = 1
ignorehitpause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = Movehit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8013, 8013)
ID = 8013
name = "Spark"
posType = P2
pos = (target, const(size.ground.front) +0), (target, const(size.mid.pos.y)+20)
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3600, step]
type=playsnd
trigger1=animelem=5
value=4,4

[State 3600, step]
type=playsnd
trigger1=animelem=5
value=7,0

[State 3600, step]
type=playsnd
trigger1=animelem=5
value=9000,4

[State 3600, step]
type=playsnd
trigger1=animelem=6
value=3000,1

[State 3600, step]
type=playsnd
trigger1=animelem=5
value=9000,2

[State 3600, step]
type=playsnd
trigger1=animelem=5
value=9000,0

[State 3600, step]
type=playsnd
trigger1=animelem=5
value=9000,1

[State 3600, step]
type=playsnd
trigger1=animelem=4 ||animelem=5  ||animelem=6 ||animelem=7 ||animelem=8 ||animelem=9 ||animelem=10 ||animelem=11 ||animelem=12 ||animelem=13 
value=9000,3

[State 3602, Trans]
type = Trans
trigger1 =animelemtime(2)<0
trans = addalpha
alpha = 0+16*time,256
ignorehitpause =1

[State 0, Trans]
type = Trans
trigger1 =animelem=2
trans = none
ignorehitpause =1

[State 0, LV-3]
type = AfterImage
trigger1 = animelem=3
time = 9999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
trans = add

[State 3602, 4]
type = ChangeState
trigger1 =!animtime
value =0
ctrl = 1
;-----------------------------------------------------------------------------

;========================<MAX HAZAN TENSHOKYAKU>=============================
[StateDef 3550]
type = S
physics = S
moveType = A
anim = ifElse(!var(1), 3551, 3550)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3550, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3550, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3550, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3550, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3550, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = ifElse(!var(1), 65, 45)

[State 3550, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3550, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3550, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(11) < 0
time = 1
value = SCA

[State 3550, Super Pause FX]
type = Helper
trigger1 = Time = 3 && var(1)
trigger2 = AnimElemTime(5) = 10 && !var(1)
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -16,-25
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3550, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = ifElse(!var(1), 65, 45)
moveTime = ifElse(!var(1), 65, 45)
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 3550, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(5) = 10 && var(40) && !var(1)
value = 8500,0

[State 3550, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3000,10
channel = 1

[State 3550, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 6005
posType = p1
pos = -12, -42
sprPriority = 3
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3550, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3500,0
channel = 0

[State 3550, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1400,0
channel = 0

[State 3550, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 41,0
channel = 1

[State 3550, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 10 || AnimElem = 15
trigger2 = AnimElem = 19 || AnimElem = 23
trigger3 = AnimElem = 27 || AnimElem = 31
trigger4 = AnimElem = 35 || AnimElem = 39
value = 1,5

[State 3550, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = 24

[State 3550, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 12
stateType = A
physics = N

[State 3550, Dust Helper]
type = Helper
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 8100
ID = 8100
name = "Hazan Tenshokyaku Dust"
posType = P1
ownPal = 1

[State 3550, VelSet]
type = VelSet
trigger1 = AnimElem = 12
x = 7.5
y = -7.5

[State 3550, VelAdd]
type = VelAdd
trigger1 = vel x > 0 && AnimElemTime(12) > 0
x = -0.390625

[State 3550, VelSet]
type = VelSet
trigger1 = vel x < 0 && AnimElemTime(12) > 0
x = 0

[State 3550, VelAdd]
type = VelAdd
trigger1 = vel y < 0 && AnimElemTime(12) > 0
y = 0.1953125

[State 3550, VelAdd]
type = VelAdd
trigger1 = vel y >= 0 && AnimElemTime(12) > 0
y = 0.5859375

[State 3550, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 10
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Hard
fall.animType = Hard
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
yAccel = 0.537109375
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -83
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3550, Air Hit 1, 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 12 || AnimElem = 20
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
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
yAccel = 0.537109375
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 37), var(36) := -114
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3550, Air Hit 2, 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 16 || AnimElem = 24
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
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
yAccel = 0.537109375
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 44), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3550, Air Hit 5, 7]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 28 || AnimElem = 36
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
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
air.velocity = -1.5625, -5.625
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 37), var(36) := -114
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3550, Air Hit 6, 8]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 32 || AnimElem = 40
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
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
air.velocity = -1.5625, -5.625
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 44), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3550, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3501



;========================<FINAL MISSION>=============================
[StateDef 3600]
type = S
physics = N
moveType = A
anim = ifElse(!var(1), 3601, 3600)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3600, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3600, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3600, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3600, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3600, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = ifElse(!var(1), 63, 47)

[State 3600, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3600, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3600, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(13) < 0
time = 1
value = SCA

[State 3600, Super Pause FX]
type = Helper
trigger1 = Time = 3 && var(1)
trigger2 = AnimElemTime(6) = 3 && !var(1)
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 27,-76
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3600, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = ifElse(!var(1), 63, 47)
moveTime = ifElse(!var(1), 63, 47)
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 3600, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && var(1)
trigger2 = AnimElemTime(6) = 3 && !var(1)
value = 8500,0

[State 3600, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3000,10
channel = 1

[State 3600, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 6005
posType = p1
pos = -14, -92
sprPriority = 3
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3600, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3100,1
channel = 3

[State 3600, Voice]
type = PlaySnd
trigger1 = AnimElem = 13
value = 4,2
channel = 0

[State 3600, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1,5
channel = 4

[State 3600, Dust Helper]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8103
ID = 8100
name = "Final Mission Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3600, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 12.5

[State 3600, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) > 0 && vel x > 0
x = -0.5859375

[State 3600, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3600, Width]
type = Width
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
player = 32,0

[State 3600, PosAdd]
type = PosAdd
trigger1 = AnimElem = 14
x = 33

[State 3600, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 14
ID = 3600
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 24,24
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
ground.velocity = -12.64, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -7.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -93
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3600, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(14) > 0 && AnimElemTime(15) <= 0
trigger1 = HitPauseTime <= 22
value = 3600
elem = 15
ignoreHitPause = 1

[State 3600, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3600) > 1
ID = 3600
keepOne = 1
excludeID = 3600
ignoreHitPause = 1

[State 3600, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3600)
value = 3615
ID = 3600
ignoreHitPause = 1
persistent = 0

[State 3600, ChangeState]
type = ChangeState
trigger1 = NumTarget(3600)
trigger1 = MoveHit && Target, Alive
value = 3610

[State 3600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(16) >= 0
moveType = I

[State 3600, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3610]
type = S
anim = 3610
physics = N
moveType = A
velSet = 0,0
moveHitPersist = 1

[State 3610, Camera]
type = ScreenBound
trigger1 = 0
value = 1
moveCamera = 1, 0

[State 3610, PalFX]
type = PalFX
trigger1 = !Time
time = 10
sinAdd = -255, -255, -255, 40

[State 3610, PalFX]
type = PalFX
trigger1 = Time >= 10
time = 1
mul = 0, 0, 0

[State 3610, Warp Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3610,0
channel = 1

[State 3610, Explod]
type = Explod
trigger1 = !Time
anim = 13610
posType = P1
sprPriority = 1
ownPal = 1

[State 3610 Transparency]
type = Trans
trigger1 = AnimElemTime(2) >= 0
trans = AddAlpha
alpha = 256 - 32 * (AnimElemTime(2)), 32 * (AnimElemTime(2))
ignoreHitPause = 1

[State 3610, AllPalFX]
type = AllPalFX
trigger1 = AnimElem = 5
time = 10
sinAdd = -255, -255, -255, 40

[State 3610, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3611


;In air
[StateDef 3611]
type = A
anim = 1
physics = N
moveType = A
velSet = 0,0
moveHitPersist = 1

[State 3611, TargetState]
type = TargetState
trigger1 = !Time && NumTarget(3600)
ID = 3600
value = 3616

[State 3611, PosSet]
type = PosSet
trigger1 = 1
x = -const(size.ground.front) * Facing
y = -240

[State 3611, TargetBind]
type = TargetBind
trigger1 = NumTarget(3600)
pos = 40 + (Target(3600), const(size.ground.front) + const(size.ground.back)), 0
ID = 3600

[State 3611, Pause]
type = Pause
trigger1 = Time < 60
time = 2
moveTime = 2

[State 3611, Pause]
type = Pause
trigger1 = Time = 60
time = 0

[State 3611, BGPalFX]
type = BGPalFX
trigger1 = !Time
time = 59
add = -256,-256,-256

[State 3611, AssertSpecial: NoBarDisplay]
type = AssertSpecial
trigger1 = Time < 60
flag = NoBarDisplay
flag2 = NoFG

[State 3611, HitAdd]
type = HitAdd
trigger1 = (Time = [0,52]) && !(Time % 4)
value = 1

[State 3611, HitCount]
type = VarAdd
trigger1 = (Time = [0,52]) && !(Time % 4)
var(13) = 1

[State 3611, Damage]
type = TargetLifeAdd
trigger1 = NumTarget(3600)
trigger1 = (Time = [0,52]) && !(Time % 4)
ID = 3600
value = ceil(ifElse(21 * fvar(11) < 7, -7, -21 * fvar(11)))
kill = 0

[State 3611, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget(3600)
trigger1 = (Time = [0,52]) && !(Time % 4)
ID = 3600
value = 36

[State 3611, HitSound]
type = PlaySnd
trigger1 = (Time = [0,52]) && !(Time % 4)
value = 2,2
channel = 2

[State 3611, Hit Sparks]
type = Helper
trigger1 = (Time = [0,52]) && !(Time % 4)
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
sprPriority = 5
posType = Back
pos = Random % ceil(GameWidth), ceil(pos y - ScreenPos y) + Random % ceil(GameHeight)
ownPal = 1
onTop = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3611, EnvShake]
type = EnvShake
trigger1 = (Time = [0,52]) && !(Time % 4)
time = 18
freq = 120
ampl = 6

[State 3611, ChangeState]
type = ChangeState
trigger1 = Time >= 60
value = 3612


;Finish
[StateDef 3612]
type = S
anim = 0
physics = N
moveType = A
velSet = 0,0
moveHitPersist = 1

[State 3612, Turn]
type = Turn
trigger1 = !Time

[State 3612, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3612, TargetState]
type = TargetState
trigger1 = !Time && NumTarget(3600)
ID = 3600
value = 3617

[State 3612, Explosion Sound]
type = PlaySnd
trigger1 = NumTarget(3600)
trigger1 = (Target(3600), StateNo = 3617) && ((Target, pos y) > -(Target, vel y))
value = 3611,0

[State 3612, Explosion]
type = Explod
trigger1 = NumTarget(3600)
trigger1 = (Target(3600), StateNo = 3617) && ((Target, pos y) > -(Target, vel y))
anim = 13615
sprPriority = 1
posType = Left
pos = 160 + ceil(Target(3600), pos x), ceil(Target(3600), ScreenPos y) -40
facing = ifElse(random < 500, -1, 1)
vFacing = ifElse(random < 500, -1, 1)
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3612, ChangeAnim]
type = ChangeAnim
trigger1 = NumTarget(3600)
trigger1 = (Target(3600), StateNo = 3617) && ((Target, pos y) > -(Target, vel y))
value = 3612
ignoreHitPause = 1

[State 3612, Voice]
type = PlaySnd
trigger1 = Anim = 3612 && AnimElem = 5
value = 195,0
channel = 0

[State 3612, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 5 && Anim = 3612
value = 3000,10
channel = 3

[State 3612, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 5 && Anim = 3612
anim = 6005
posType = p1
pos = 17, -91
sprPriority = 3
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3612, ChangeState]
type = ChangeState
trigger1 = !AnimTime && Anim = 3612
value = 0
ctrl = 1


;Target
[StateDef 3615]
type = A
physics = N
moveType = H
velSet = 0, 0
ctrl = 0
sprPriority = 0

[State 3615, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignoreHitPause = 1

[State 3615, Camera]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 0

[State 3615, ChangeAnim]
type = ChangeAnim
trigger1 = !HitShakeOver
value = 5012
ignoreHitPause = 1

[State 3615, ChangeAnim]
type = ChangeAnim
trigger1 = HitShakeOver
value = ifElse(SelfAnimExist(5250), 5250, ifElse(SelfAnimExist(5051), 5051, 5030))
persistent = 0

[State 3615, HitFallSet]
type = HitFallSet
trigger1 = !HitFall
value = 1
ignoreHitPause = 1

[State 3615, VelAdd]
type = VelAdd
trigger1 = HitShakeOver
y = 0.5

[State 3615, VelSet]
type = VelSet
trigger1 = HitShakeOver
y = -16
persistent = 0

[State 3615, SelfState]
type = SelfState
trigger1 = pos y > -vel y
value = 5100


;Being Hit
[StateDef 3616]
type = A
physics = N
moveType = H
velSet = 0, 0
ctrl = 0
sprPriority = 0

[State 3616, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignoreHitPause = 1

[State 3616, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1

[State 3616, Camera]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 0


;Falling
[StateDef 3617]
type = A
physics = N
moveType = H
velSet = 0, 0
ctrl = 0
sprPriority = 0

[State 3617, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3617

[State 3617, PosSet]
type = PosSet
trigger1 = !Time
y = -384

[State 3617, Camera]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 0

[State 3617, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 3617, VelSet]
type = VelSet
trigger1 = !Time
y = 4

[State 3617, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3618


;Hitting the Floor
[StateDef 3618]
type = L
physics = N
moveType = H
velSet = 0, 0
ctrl = 0
sprPriority = 0

[State 3618, Damage]
type = LifeAdd
trigger1 = !Time
value = -84
kill = 1

[State 3618, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5101), 5101, 5100)

[State 3618, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3618, EnvShake]
type = EnvShake
trigger1 = !Time
time = 18
freq = 120
ampl = 6

[State 3618, Hitting the Floor FX]
type = Explod
trigger1 = !Time
anim = F61
posType = P1
pos = 0, 0
sprPriority = -3

[State 3618, End]
type = ChangeState
trigger1 = (Anim = [5100,5101]) && !AnimTime
trigger2 = Time >= 12
value = 3619


;Floor Bounce
[StateDef 3619]
type = L
moveType = H
physics = N

[State 3619, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3619, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (Anim % 10))
value = 5160

[State 3619, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = (Anim = [5101,5109]) && SelfAnimExist(5160 + (Anim % 10))
value = 5160 + (Anim % 10)

[State 3619, HitFallVel]
type = HitFallVel
trigger1 = !Time

[State 3619, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.4

[State 3619, PosSet]
type = PosSet
trigger1 = !Time
y = 20

[State 3619, End]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 12
value = 3620


;Lie down
[StateDef 3620]
type = L
moveType = H
physics = N

[State 3620, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3620, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [5081,5089]
trigger1 = SelfAnimExist(5110 + (Anim % 10))
value = 5110 + (Anim % 10)

[State 3410, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = Anim != [5110,5119]
trigger1 = Anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (Anim % 10))
value = 5170

[State 3620, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = Anim != [5110,5119]
trigger1 = Anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (Anim % 10))
value = 5170 + (Anim % 10)

[State 3620, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3620, VarSet]
type = VarSet
trigger1 = !Time
trigger1 = GetHitVar(fall.yvel)
sysvar(1) = floor(vel y)

[State 3620, FallEnvShake]
type = FallEnvShake
trigger1 = !Time

[State 3620, PlaySnd]
type = PlaySnd
trigger1 = !Time && !sysvar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 3620, Hitting the Floor FX]
type = Explod
trigger1 = !time && !sysvar(0)
anim = F61
posType = P1
pos = 0, 0
sprPriority = -3

[State 3620, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 3620, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime || sysvar(0)
trigger1 = (Anim = [5171,5179]) && SelfAnimExist(5110 + (Anim % 10))
value = 5110 + (Anim % 10)

[State 3620, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5111,5119]
trigger1 = !AnimTime || sysvar(0)
value = 5110

[State 3620, ChangeAnim]
type = ChangeAnim
trigger1 = !Alive && SelfAnimExist(5150 + (Anim % 10))
trigger1 = !AnimTime || sysvar(0) || (Anim = [5110,5119])
value = 5150 + (Anim % 10)

[State 3620, VarSet]
type = VarSet
trigger1 = !Time
sysvar(0) = 0

[State 3620, VelMul]
type = VelMul
trigger1 = 1
x = 0.85

[State 3620, End]
type = SelfState
trigger1 = !Alive
value = 5150

[State 3620, End]
type = SelfState
trigger1 = Time >= 38
value = 5120
;==============================================================
