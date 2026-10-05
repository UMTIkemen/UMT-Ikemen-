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

[State 180, Sanae Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Sanae_RP" || enemy,name = "Sanae Kochiya" || enemy,name = "Sanae_Kochiya" || enemy,name = "Sanae"
trigger2 = enemy,name = "Sanae_R9x7" || enemy,name = "Kochiya Sanae" || enemy,name = "Kochiya_Sanae"
trigger3 = enemy,name = "Sanae_THIZ"
value = 11+(random%2)

[State 180, Ichirin Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Ichirin_RP" || enemy,name = "Ichirin" || enemy,name = "Ichirin Kumoi"
trigger2 = enemy,name = "Kumoi_Ichirin" || enemy,name = "Kumoi Ichirin" || enemy,name = "Ichirin_Kumoi"
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

[State 180, Mokou Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Mokou_RP" || enemy,name = "Fujiwara no Mokou" || enemy,name = "Fujiwara_no_Mokou"
trigger2 = enemy,name = "Mokou" || enemy,name = "Mokou Fujiwara" || enemy,name = "Mokou_Fujiwara"
value = 19+(random%2)

[State 180, Reisen/Tewi Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Reisen_RP" || enemy,name = "Reisen U. Inaba" || enemy,name = "Reisen_U_Inaba" || enemy,name = "Udongein"
trigger2 = enemy,name = "Reisen" || enemy,name = "Reisen Udongein Inaba" || enemy,name = "Reisen_Udongein_Inaba"
trigger3 = enemy,name = "Reisen_THIZ"
trigger4 = enemy,name = "Tewi_RP" || enemy,name = "Tewi Inaba" || enemy,name = "Tewi_Inaba" || enemy,name = "Tewi"
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

[State 181, SPR]
type = sprpriority
trigger1 = anim = 18110
trigger1 = animelemtime(5)=0
value = 2

[State 2000, PSND]
type = playsnd
trigger1 = anim = 18110
trigger1 = animelemtime(3)=0
value = 2000,10
channel = 1

[State 1100, Proj]
type = helper
trigger1 = anim = 18110
trigger1 = animelemtime(3)=0
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,-50
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 2.0
size.yscale = 2.0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 18110
trigger1 = animelemtime(5)=0
statetype = A
physics = N
;ignorehitpause = 
;persistent = 

[State 2001, PA]
type = posadd
trigger1 = anim = 18110
trigger1 = animelemtime(5)=0
y = -64

[State 2000, Spellcard Effect]
type = helper
trigger1 = anim = 18110
trigger1 = animelemtime(6)=0
helpertype = normal
name = "PotS_style_Pot"
id = 18110
stateno = 18110
pos = 0,-50
postype = p1
ownpal = 1
facing = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;--------------------------
; 214214x/y/z DIC SOUPCAN FX
[Statedef 18110]
type = A
movetype = I
physics = N
juggle = 0
anim = 18111
sprpriority = -1

[State 21100, Ass]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21100, BTR]
type = bindtoroot
trigger1 = time>=0
pos = 0,97

[State 22000, AD]
type = angledraw
trigger1 = 1
scale = 0.9,0.85
ignorehitpause = 1

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
anim = 19500+floor(18.0*random/1000.0)
velset = 0,0
sprpriority = 1

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
trigger2 = animelemtime(5)=0
value = 2000,10
channel = 1

[State 1100, Proj]
type = helper
trigger1 = animelemtime(3)=0
trigger2 = animelemtime(5)=0
helpertype = normal
name = "Dust"
ID = 20900
pos = 0,-50
postype = p1
stateno = 20900
ownpal = 1
facing = 1
size.xscale = 1.0
size.yscale = 1.0

[State 195, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1