;---------------------------------------------------------------------------
; Variable usage:
; var(1)  - Used for combo condition (updated every tick)
; Var(10) - Variation Identifier

; Var(33) - Juggle points 1
;   0 - state 
; Var(34) - Juggle points 2
;   0 - state 

; FVar(10) - Damage Scaler


;-------------------------
; Upwards Jump
[Statedef 117]
type    = A
physics = N
ctrl = 0
velset = 0,0
anim = 117
sprpriority = 1

[State 100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 100,0
persistent = 0

[State 105, 1]
type = VarSet
trigger1 = time=0
var(10) = ifelse((command="holdfwd"),45,ifelse((command="holdback"),135,90))

[State 105, 1]
type = VelSet
trigger1 = animelemtime(3)=0
x = 4.0*cos(var(10)*pi/180.0)
y = -7.5*sin(var(10)*pi/180.0)

[State 117, VA]
type = veladd
trigger1 = animelemtime(3)>1
y = 0.2+0.3*(animelemtime(6)>=0)

[State 700, Explod]
type = Explod
trigger1 = Time = 0;2
ID = 700
anim = 701
pos = 50,-50
removetime = 11
sprpriority = 1
facing = -1

[State 700, Effect]
type = helper
trigger1 = time = 0;2
helpertype = normal
name = "Dash_FX"
ID = 10110+1*(var(10)=135)+2*(var(10)=45)
pos = 0,-90;-15,-50
postype = p1
stateno = 10100
ownpal = 1
facing = -1

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 106

;-------------------------
; Downwards Jump
[Statedef 118]
type    = A
physics = N
ctrl = 0
velset = 0,0
anim = 117
sprpriority = 1

[State 100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 100,0
persistent = 0

[State 105, 1]
type = VarSet
trigger1 = time=0
var(10) = ifelse((command="holdfwd"),45,ifelse((command="holdback"),135,90))

[State 105, 1]
type = VelSet
trigger1 = animelemtime(3)=0
x = 4.0*cos(var(10)*pi/180.0)
y = 6.0*sin(var(10)*pi/180.0)

[State 117, VA]
type = veladd
trigger1 = animelemtime(3)>1
y = 0.2+0.3*(animelemtime(6)>=0)

[State 700, Explod]
type = Explod
trigger1 = Time = 0;2
ID = 700
anim = 701
pos = 50,-50
removetime = 11
sprpriority = 1
facing = -1

[State 700, Effect]
type = helper
trigger1 = time = 0;2
helpertype = normal
name = "Dash_FX"
ID = 10115+1*(var(10)=135)+2*(var(10)=45)
pos = 0,0;-15,-50
postype = p1
stateno = 10100
ownpal = 1
facing = -1

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 106


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
trigger1 = Time = 0
trigger1 = enemy,name = "Lie_RP" || enemy,name = "LieMeiling_RP"
value = 15+(random%2)

[State 180, Hong Meiling Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Meiling_RP" || enemy,name = "Meiling_K" || enemy,name = "Hong_Meiling"
trigger2 = enemy,name = "Hong Meirin" || enemy,name = "Hong Meiling" || enemy,name = "Hong_Meirin"
trigger3 = enemy,name = "Meiling_THIZ"
value = 13+(random%2)

[State 180, Sanae Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Sanae_RP" || enemy,name = "Sanae Kochiya" || enemy,name = "Sanae_Kochiya" || enemy,name = "Sanae"
trigger2 = enemy,name = "Sanae_R9x7" || enemy,name = "Kochiya Sanae" || enemy,name = "Kochiya_Sanae"
trigger3 = enemy,name = "Sanae_THIZ"
value = 11+(random%2)

[State 180, Remilia Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Remilia_RP" || enemy,name = "Remilia" || enemy,name = "Remilia Scarlet"
trigger2 = enemy,name = "Remilia_K" || enemy,name = "Remilia_Scarlet"
value = 17+(random%2)

[State 180, Sakuya Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Sakuya_RP" || enemy,name = "Sakuya Izayoi" || enemy,name = "Izayoi Sakuya"
trigger2 = enemy,name = "Sakuya_K" || enemy,name = "Sakuya_Izayoi" || enemy,name = "Izayoi_Sakuya"
trigger3 = enemy,name = "Sakuya_THIZ"
value = 19+(random%2)

[State 180, Youmu Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Youmu_RP" || enemy,name = "Youmu Konpaku" || enemy,name = "Konpaku Youmu"
trigger2 = enemy,name = "Youmu_K" || enemy,name = "Youmu_Konpaku" || enemy,name = "Konpaku_Youmu" || enemy,name = "Myongil"
trigger3 = enemy,name = "Youmu_THIZ"
value = 21+(random%2)

[State 180, Kagerou Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Kagerou_RP" || enemy,name = "Kagerou Imaizumi" || enemy,name = "Imaizumi Kagerou"
trigger2 = enemy,name = "kagerou" || enemy,name = "Kagerou_Imaizumi" || enemy,name = "Imaizumi_Kagerou"
value = 23+(random%2)

[State 180, Aya Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Aya_RP" || enemy,name = "Aya_THIZ" || enemy,name = "Aya Shameimaru" || enemy,name = "Shameimaru Aya"
trigger2 = enemy,name = "Aya_K" || enemy,name = "Aya_Shameimaru" || enemy,name = "Shameimaru_Aya"
trigger3 = enemy,name = "Aya Syameimaru" || enemy,name = "Aya_Syameimaru" || enemy,name = "Shameimaru"
trigger4 = enemy,name = "Syameimaru Aya" || enemy,name = "Syameimaru_Aya" || enemy,name = "Syameimaru"
trigger5 = enemy,name = "Aya_THIZ"
value = 25+(random%2)

[State 180, Mamizou Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Mamizou_RP" || enemy,name = "Mamizou_Futatsuiwa" || enemy,name = "Mamizou Futatsuiwa"
trigger2 = enemy,name = "Mamizou_THIZ" || enemy,name = "Futatsuiwa_Mamizou" || enemy,name = "Futatsuiwa Mamizou"
trigger3 = enemy,name = "Hutatsuiwa_Mamizou" || enemy,name = "Hutatsuiwa Mamizou" || enemy,name = "Mamizou_Hutatsuiwa" || enemy,name = "Mamizou Hutatsuiwa"
trigger4 = enemy,name = "Mamizou_THIZ"
value = 27+(random%2)

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

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Introduction
; CNS difficulty: basic
; CNS ƒŒƒxƒ‹: Šî–{
[Statedef 191]
type = S
ctrl = 0
anim = 1998
velset = 0,0

[State 191, VS]
type = varset
trigger1 = time = 0
var(10) = floor(4.0*random/1000.0)

[State 191, CA]
type = changeanim
trigger1 = time = 0
trigger1 = var(10)=0
value = 19000
[State 191, CA]
type = changeanim
trigger1 = time = 0
trigger1 = var(10)=2
value = 19020

[State 191, PSND]
type = playsnd
trigger1 = anim = 19020
trigger1 = animelemtime(8)=0
value = 0,1

[State 1000, Yo Good Thing We Bought The Glock]
type = Helper
trigger1 = var(10)=1
trigger1 = time=0
helpertype = normal ;player
name = "Reisen"
ID = 19010
stateno = 19010
pos = -130,-60
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 1000, Totally not ripping off PS4 version of 14.5 here]
type = Helper
trigger1 = var(10)=3
trigger1 = time=0
helpertype = normal ;player
name = "Clone"
ID = 19030
stateno = 19030
pos = 0,0
postype = back    ;p2,front,back,left,right
facing = 1
ownpal = 0
supermovetime = 0
pausemovetime = 0
[State 1000, Totally not ripping off PS4 version of 14.5 here]
type = Helper
trigger1 = var(10)=3
trigger1 = time=0
helpertype = normal ;player
name = "Tewi"
ID = 19031
stateno = 19031
pos = 0,0
postype = back    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 191, CA]
type = changeanim
trigger1 = time = 32
trigger1 = var(10)=1
trigger2 = var(10)=3
trigger2 = time = 49
value = 19010

[State 191, 3] ;Change to stand state when done
type = ChangeState
triggerall = animtime=0
trigger1 = anim = 19000
trigger2 = anim = 19010
trigger3 = anim = 19020
value = 0

;---------------------------------------------------------------------------
; Reisen Intro 2 Clone
[Statedef 19010]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 42
sprpriority = 0

[State 19000, VS]
type = velset
trigger1 = time = 0
x = 4.0
y = -6.0

[State 19000, Grav]
type = veladd
trigger1 = time
y = 0.5

[State 19110, Zeeky]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 19011

;---------------------------------------------------------------------------
; Reisen Intro 2 Clone
[Statedef 19011]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 1998
sprpriority = 0

[State 1020, PSND]
type = playsnd
trigger1 = time = 0
value = 40,0

[State 19011, PS]
type = posset
trigger1 = time =0
y = 0

[State 19001, CS]
type = destroyself
trigger1 = time>0

;---------------------------------------------------------------------------
; Nuclear Blast
[Statedef 19002]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 19003
sprpriority = 0

[State 19000, PS]
type = playsnd
trigger1 = time = 0
value = 40,0

[State 19002, PS]
type = posset
trigger1 = time = 0
y = 0

[State 19002, Zeeky]
type = destroyself
trigger1 = time


;---------------------------------------------------------------------------
; Reisen Intro 4 Clone
[Statedef 19030]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 19030
sprpriority = 0

[State 19030, Posadd]
type = posadd
trigger1 = animelemtime(3)=0
x = 10

[State 19030, VS]
type = varset
trigger1 = animelemtime(3)=0
fvar(0) = rootdist x

[State 19030, Posadd]
type = velset
trigger1 = animelemtime(3)=0
x = fvar(0)/17.0;6.0
y = -4.0

[State 19030, Grav]
type = veladd
trigger1 = animelemtime(3)>0
y = 0.5

[State 19030, Zeeky]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 19011

;---------------------------------------------------------------------------
; Reisen Intro 4 Tewi
[Statedef 19031]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 19031
sprpriority = 0

[State 19030, Posadd]
type = posadd
trigger1 = animelemtime(3)=0
x = 10

[State 19031, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 0,1

[State 19030, Posadd]
type = velset
trigger1 = animelemtime(9)=0
x = -6.0

[State 19030, Zeeky]
type = destroyself
trigger1 = time>= 75


;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 1

[State 195, VS]
type = varset
trigger1 = time = 0
var(10) = (random%2)

[State 195, PSND]
type = playsnd
trigger1 = var(10)=0
trigger1 = animelemtime(6)=0
value = 195,0

[State 195, PSND]
type = playsnd
trigger1 = var(10)=1
trigger1 = animelemtime(1)=0
value = 195,1


[State 195, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

