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
value = 170,0

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
value = 7+(random%2)

[State 180, Marisa Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Marisa_RP" || enemy,name = "Marisa_K" || enemy,name = "Marisa Kirisame"
trigger2 = enemy,name = "Marisa_Kirisame" || enemy,name = "Kirisame_Marisa" || enemy,name = "Kirisame Marisa"
value = 9+(random%2)

[State 180, Lie Meiling Win Quote]
type = victoryquote
triggerall = numenemy
trigger1 = Time = 0
trigger1 = enemy,name = "Lie_RP" || enemy,name = "LieMeiling_RP"
value = 15+(random%2)

[State 180, Kanako Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Kanako_RP" || enemy,name = "Kanako Yasaka" || enemy,name = "Kanako_Yasaka"
trigger2 = enemy,name = "Kanako" || enemy,name = "Yasaka_Kanako" || enemy,name = "Yasaka Kanako"
value = 13+(random%2)

[State 180, Sanae Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Sanae_RP" || enemy,name = "Sanae_Kochiya" || enemy,name = "Sanae Kochiya" || enemy,name = "Sanae_K"
trigger2 = enemy,name = "Kochiya_Sanae" || enemy,name = "Kochiya Sanae" || enemy,name = "Sanae_R9x7" 
value = 11+(random%2)

[State 180, Reisen Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Reisen_RP" || enemy,name = "Reisen U. Inaba" || enemy,name = "Reisen_U._Inaba"
trigger2 = enemy,name = "Udonge" || enemy,name = "Reisen Udongein Inaba" || enemy,name = "Reisen_Udongein_Inaba"
;trigger3 = enemy,name = "Whatever the fuck the internal name for Markyjoe1990's Reisen was"
value = 17+(random%2)

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181

;---------------------------------------------------------------------------
; Win pose
[Statedef 181]
type = S
ctrl = 0
anim = 18000+10*floor(2.0*random/1000.0)
velset = 0,0

[State 200, PSND]
type = PlaySnd
trigger1 = ifelse(anim=18000,animelemtime(2)=0,animelemtime(4)=0)
value = 180,ifelse(anim=18000,0,1)
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
; CNS ƒŒƒxƒ‹: Šî–{
[Statedef 191]
type = S
ctrl = 0
anim = 19100
velset = 0,0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = 190,0+random%2
channel = 0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = animtime = 0
value = 0

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

[State 195, PSND]
type = playsnd
trigger1 = anim = 19500
trigger1 = animelemtime(3)=0||animelemtime(7)=0||animelemtime(11)=0
value = 0,0
channel = 1

[State 195, PSND]
type = playsnd
trigger1 = anim = 19500
trigger1 = animelemtime(3)=0
value = 195,0
channel = 0

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1