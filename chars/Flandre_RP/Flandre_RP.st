;---------------------------------------------------------------------------
; Lose by Time Over
; CNS difficulty: basic
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, PS]
type = playsnd
trigger1 = time = 0
value = 170,0
channel = 0

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

[State 180, Win Count Detection]
type = varadd
trigger1 = time = 0
var(53)=1

[State 180, VQ]
type = victoryquote
trigger1 = time = 0
value = 1+(random%6)

[State 180, Reimu Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Reimu_RP" || enemy,name = "Hakurei Reimu" || enemy,name = "Reimu Hakurei"
trigger2 = enemy,name = "Reimu" || enemy,name = "Tamiflu Miko"
value = 7+(random%2)

[State 180, Marisa Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Marisa_RP" || enemy,name = "Marisa_K" || enemy,name = "Marisa Kirisame"
trigger2 = enemy,name = "Kirisame Marisa" || enemy,name = "Kirisame_Marisa"
value = 9+(random%2)

[State 180, Eirin/Mokou Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Eirin_RP" || enemy,name = "Eirin Yagokoro" || enemy,name = "Yagokoro_Eirin"
trigger2 = enemy,name = "Yagokoro Eirin"
trigger3 = enemy,name = "Mokou_RP" || enemy,name = "Fujiwara_no_Mokou" || enemy,name = "Huziwara_no_Mokou"
trigger4 = enemy,name = "Fujiwara no Mokou" || enemy,name = "Huziwara no Mokou"
value = 11+(random%2)

[State 180, Remilia Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Remilia_RP" || enemy,name = "Remilia_K" || enemy,name = "Remilia"
trigger2 = enemy,name = "Remilia Scarlet" || enemy,name = "Remilia_Scarlet"
value = 13+(random%2)

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181

;---------------------------------------------------------------------------
; Win pose
[Statedef 181]
type = S
ctrl = 0
anim = 18100+10*(random%2)
velset = 0,0

[State 181, PSND]
type = PlaySnd
trigger1 = time = 0
value = 180,ifelse(anim = 18100,0,1)
channel = 0

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
; CNS レベル: 基本
[Statedef 191]
type = S
ctrl = 0
anim = 19000+10*(random%2)
velset = 0,0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 191, PSND]
type = PlaySnd
trigger1 = anim = 19000 && animelemtime(2) = 0
value = 190,0
channel = 0

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = anim=19010
value = 19010

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = animtime=0
value = 0

;---------------------------------------------------------------------------
; Introduction
; CNS difficulty: basic
; CNS レベル: 基本
[Statedef 19010]
type = S
ctrl = 0
anim = 19010
velset = 0,0



[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 4000, Effect]
type = helper
trigger1 = time = 30
helpertype = normal
name = "Intro2"
ID = 19011
pos = 320,-70
postype = back
stateno = 19011
ownpal = 0
facing = -1

[State 19010, CA]
type = changeanim
triggerall = time>60
triggerall = anim=19010
trigger1 = numhelper(19011)
trigger1 = helper(19011),stateno = 19013
trigger2 = !numhelper(19011)
value = 19011

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = anim = 19011
trigger1 = animtime=0
value = 0

;---------------------------------------------------------------------------
; Intro 2 Helper
[Statedef 19011]
type = A
physics = N
ctrl = 0
anim = 1998;1001
velset = 0,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 1001
elem = 6
;ignorehitpause = 
;persistent = 

[State 19010, PSND]
type = PlaySnd
trigger1 = time = 0
value = 190,1
channel = 0

[State 0, SndPan]
type = SndPan
trigger1 = 1
channel = 0
pan = 0

[State 19013, PSND]
type = playsnd
trigger1 = time = 0
value = 1000,10

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1
;ignorehitpause = 
;persistent = 


[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 16
y = 1

[State 19011, CS]
type = changestate
trigger1 = frontedgedist < 10
value = 19012

;---------------------------------------------------------------------------
; Intro 2 Helper
[Statedef 19012]
type = A
physics = N
ctrl = 0
anim = 1010
velset = 0,0

[State 1001, T]
type = turn
trigger1 = time = 0

[State 1001, NULL]
type = posset
trigger1 = animelemtime(2)<0
x = -floor(gamewidth/2.0)*facing

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 19013, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1000,10

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(3)=0
x = rootdist x/15.0
y = -0.5

[State 19012, Grav]
type = veladd
trigger1 = animelemtime(3)>0
y = 0.5

[State 19013, Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 19013

;---------------------------------------------------------------------------
; Intro 2 Helper
[Statedef 19013]
type = A
physics = N
ctrl = 0
anim = 19011
velset = 0,0

[State 19013, PSND]
type = playsnd
trigger1 = time = 0
value = 40,0

[State 19013, PS]
type = posset
trigger1 = time = 0
y = 0

[State 19013, Zeeky]
type = destroyself
trigger1 = time



;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 19500+(random%2)
velset = 0,0
movetype = I
physics = S
sprpriority = 0

[State 195, PSND]
type = PlaySnd
trigger1 = time = 0
value = 195,ifelse(anim = 19500,0,1)
channel = 0

[State 195, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

