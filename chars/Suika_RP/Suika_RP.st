;---------------------------------------------------------------------------
; Variable usage:
; var(1)  - Used for combo condition (updated every tick)
; Var(10) - Variation Identifier

; Var(33) - Juggle points 1
;   0 - state 
; Var(34) - Juggle points 2
;   0 - state 

; FVar(10) - Damage Scaler

;---------------------------------------------------------------------------
; Lose by Time Over
; CNS difficulty: basic
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, PSND]
type = playsnd
trigger1 = time = 0
value = 171,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
; CNS difficulty: basic
[Statedef 180]
type = S

[State 180, VQ]
type = victoryquote
trigger1 = time = 0
value = 1+(random%6)

[State 180, Reimu Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Reimu_RP" || enemy,name = "Reimu" || enemy,name = "Reimu Hakurei"
trigger2 = enemy,name = "Hakurei Reimu" || enemy,name = "Reimu_Hakurei" || enemy,name = "Hakurei_Reimu" 
trigger3 = enemy,name = "Reimu_THIZ"
value = 7+(random%2)

[State 180, Marisa Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Marisa_RP" || enemy,name = "Marisa_K" || enemy,name = "Marisa Kirisame"
trigger2 = enemy,name = "Marisa_Kirisame" || enemy,name = "Kirisame_Marisa" || enemy,name = "Kirisame Marisa"
trigger3 = enemy,name = "Marisa_THIZ"
value = 9+(random%2)

[State 180, Lie Meiling Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "LieMeiling_RP" || enemy,name = "Lie Meiling" || enemy,name = "Lie Meirin"
trigger2 = enemy,name = "Lie_RP" || enemy,name = "Lie_Meiling" || enemy,name = "Lie_Meirin"
value = 11+(random%2)

[State 180, Meiling Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Meiling_RP" || enemy,name = "Hong_Meiling" || enemy,name = "Hong Meiling"
trigger2 = enemy,name = "Meiling_K" || enemy,name = "Hong Meirin" || enemy,name = "Hong_Meirin"
trigger3 = enemy,name = "Meiling_THIZ" || enemy,name = "Hoan Meirin" || enemy,name = "Hoan_Meirin"
value = 13+(random%2)

[State 180, Yukari Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Yukari_RP" || enemy,name = "Yukari Yakumo" || enemy,name = "Yukari_Yakumo"
trigger2 = enemy,name = "Sukima" || enemy,name = "Yakumo Yukari" || enemy,name = "Yakumo_Yukari"
trigger3 = enemy,name = "Yukari_THIZ"
value = 15+(random%2)

[State 180, Koishi Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Koishi_RP" || enemy,name = "Koishi Komeiji" || enemy,name = "Koishi_Komeiji"
trigger2 = enemy,name = "Koishi" || enemy,name = "Komeiji Koishi" || enemy,name = "Komeiji_Koishi"
value = 17+(random%2)

[State 180, Yuuka Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Yuuka_RP" || enemy,name = "Yuuka Kazami" || enemy,name = "Yuuka_Kazami"
trigger2 = enemy,name = "Yuka Kazami" || enemy,name = "Kazami Yuuka" || enemy,name = "Kazami_Yuuka"
trigger3 = enemy,name = "Yuka_Kazami" || enemy,name = "Kazami Yuka"  || enemy,name = "Kazami_Yuka"
trigger4 = enemy,name = "Ultimate Sadistic Creature" || enemy,name = "Yuuka_THIZ"
value = 19+(random%2)

[State 180, Meimu Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Meimu_RP" || enemy,name = "Meimu" || enemy,name = "Meimu_DF" || enemy,name = "Meimu_GRBoss"
value = 21+(random%2)

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181

;---------------------------------------------------------------------------
; Win pose
[Statedef 181]
type = S
ctrl = 0
anim = 18100+10*floor(2.0*random/1000.0)
velset = 0,0

[State 181, ASS]
type = assertspecial
trigger1 = time<120
flag = roundnotover

[State 2000, PSND]
type = playsnd
triggerall = anim = 18100
trigger1 = animelemtime(8)=0
trigger2 = animelemtime(10)=0
value = 195,10

[State 4000, Effect]
type = helper
triggerall = anim = 18110
trigger1 = animelemtime(6)=0
helpertype = normal
name = "Mist"
ID = 18110
pos = 0,-50
postype = p1
stateno = 18110
ownpal = 1
facing = 1

[State 181, Dissipate]
type = trans
triggerall = anim = 18110
trigger1 = time>=21 && time<75
trans = addalpha
alpha = 256-floor(256.0*(time-21)/50.0),floor(256.0*(time-21)/50.0)
ignorehitpause = 1
[State 181, Dissipate]
type = trans
triggerall = anim = 18110
trigger1 = time>=75
trans = addalpha
alpha = 0,256
ignorehitpause = 1
[State 181, Dissipate]
type = assertspecial
triggerall = anim = 18110
trigger1 = time>=75
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Mist Suika
[Statedef 18110]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 1998
sprpriority = 0

[State 18110, PSND]
type = playsnd
trigger1 = time = 0
value = 4000,12

[State 4000, Effect]
type = helper
trigger1 = time<50
persistent=4
helpertype = normal
name = "Mist"
ID = 18111
pos = 0,0
postype = p1
stateno = 18111
ownpal = 1
facing = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; Mist Suika
[Statedef 18111]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 21301
sprpriority = 5

[State 18111, Angleset]
type = varset
trigger1 = time = 0
var(0) = floor(260.0*random/1000.0)

[State 18111, VelS]
type = velset
trigger1 = time =0
x = 12.0*cos(var(0)*pi/180.0)
y = -12.0*sin(var(0)*pi/180.0)

[State 18111, Friction]
type = velmul
trigger1 = time>0
x = 0.95
y = 0.95

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 18111, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 181, AS]
type = angledraw
trigger1 = time>=0
value = var(0)
scale = 0.5+0.1*time,0.5+0.1*time
ignorehitpause = 1

[State 181, Dissipate]
type = trans
trigger1 = time>=0
trans = addalpha
alpha = 256-floor(256.0*(time)/16.0),256
ignorehitpause = 1

[State 18111, Zeeky]
type = destroyself
trigger1 = time>=16

;---------------------------------------------------------------------------
; Introduction
; CNS difficulty: basic
; CNS ƒŒƒxƒ‹: Šî–{
[Statedef 191]
type = S
ctrl = 0
anim = 19000
velset = 0,0

[State 191, VS]
type = varset
trigger1 = time = 0
var(10) = floor(2.0*random/1000.0)

[State 191, CA]
type = changeanim
trigger1 = time = 0
trigger1 = var(10)=0
value = 19000
[State 191, CA]
type = changeanim
trigger1 = time = 0
trigger1 = var(10)=1
value = 19012

[State 2000, PSND]
type = playsnd
triggerall = anim = 19000
trigger1 = animelemtime(2)=0
trigger2 = animelemtime(4)=0
trigger3 = animelemtime(6)=0
value = 195,10
[State 2000, PSND]
type = playsnd
triggerall = anim = 19012
trigger1 = time=0
value = 195,11
[State 4000, Effect]
type = helper
triggerall = anim = 19012
trigger1 = time = 0
helpertype = normal
name = "Giant"
ID = 19110
pos = 0,-500
postype = p1
stateno = 19110
ownpal = 0
facing = 1

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 191, 3] ;Change to stand state when done
type = ChangeState
triggerall = animtime = 0
trigger1 = anim = 19000
trigger2 = anim = 19012
value = 0

;---------------------------------------------------------------------------
; Giant Suika
[Statedef 19110]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,5
anim = 19010
sprpriority = 0

[State 19110, Gravity]
type = veladd
trigger1 = time>0
y = 0.5

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0
scale = 3.0,3.0
ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 19110, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 19111

;---------------------------------------------------------------------------
; Giant Suika
[Statedef 19111]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 19011
sprpriority = 0

[State 19111, PS]
type = posset
trigger1 = time = 0
y = 0

[State 4110, PSND]
type = playsnd
trigger1 = animelemtime(2)=0
value = 4121,10

[State 1100, Proj]
type = helper
trigger1 = animelemtime(2)=0
helpertype = normal
name = "Dust"
ID = 24122
pos = 0,0
postype = p1
stateno = 21300
ownpal = 1
facing = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(2)=0
Time = 20
Freq = 120
Ampl = -24

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time>0
trigger1 = animelemtime(4)<0
value = 0
scale = 3.0,3.0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = animelemtime(4)>=0
value = 0
scale = 3.0-(2.0*animelemtime(4)/30.0),3.0-(2.0*animelemtime(4)/30.0)
ignorehitpause = 1

[State 2000, Throw Invuln]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2100, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 2100,11

[State 19110, CS]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
movetype = I
physics = S
ctrl = 0
anim = 19500
velset = 0,0
sprpriority = 1

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
trigger2 = animelemtime(6)=0
value = 195,10
;channel = 7

[State 195, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1