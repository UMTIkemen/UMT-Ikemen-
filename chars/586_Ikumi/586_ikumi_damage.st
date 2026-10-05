;======================================================================
;======================================================================
; Damage states file for "Ikumi Amasawa"
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Throw
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Standing Throw - No.1

[Statedef 40510]
type = S
movetype = H
physics = N

[State 40510, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 40510, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 40510

[State 40510, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Standing Throw - No.2

[Statedef 40511]
type = S
movetype = H
physics = N

[State 40511, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 40511, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 40511

[State 40511, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time > 20
value = 40510

[State 40511, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Standing Throw - No.3(Fall)

[Statedef 40512]
type = A
movetype = H
physics = N

[State 40512, VelAdd]
type = VelAdd
trigger1 = Time = 1
x = -3.0
y = -4.25

[State 40512, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45000

[State 40512, VelAdd]
type = VelAdd
trigger1 = Time > 2
y = 0.35

[State 40512, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 40512, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ariel Throw - No.1

[Statedef 40530]
type = A
movetype = H
physics = N

[State 40530, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 40530, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 40510

[State 40530, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ariel Throw - No.2

[Statedef 40531]
type = A
movetype = H
physics = N

[State 40531, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 40531, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 40511

[State 40531, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time > 20
value = 40510

[State 40531, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ariel Throw - No.3(Fall)

[Statedef 40532]
type = A
movetype = H
physics = N

[State 40532, VelAdd]
type = VelAdd
trigger1 = Time = 1
x = -6.0
y = -4.25

[State 40532, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45000

[State 40532, VelAdd]
type = VelAdd
trigger1 = Time > 2
y = 0.35

[State 40532, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 40532, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; 41236 + C - No.1

[Statedef 41300]
type = S
movetype = H
physics = N

[State 41300, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 41300, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 41300

[State 41300, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; 41236 + C - No.2

[Statedef 41301]
type = S
movetype = H
physics = N

[State 41301, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 41301, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 41301

[State 41301, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; 41236 + C - No.3(Fall)

[Statedef 41302]
type = A
movetype = H
physics = N

[State 41302, VelAdd]
type = VelAdd
trigger1 = Time = 1
x = -2.5
y = -9.5

[State 41302, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45000

[State 41302, VelAdd]
type = VelAdd
trigger1 = Time > 2
y = 0.35

[State 41302, SelfState]
type = SelfState
trigger1 = Time > 5
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 41302, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Wire Damage
;
;45000		- Initialize velocity and change animation
;45001		- Scatter to wall
;45002		- Crash into wall
;45003		- Turn to opposite
;45004		- Fall in down

[Statedef 45000]
type = A
movetype = H
physics = N

[State 45000, ChangeAnim2]
type = ChangeAnim2
trigger1 = 1
value = 45000

[State 45000, VarSet]	;Use sysvar(1)
type = VarSet
trigger1 = Time = 0
sysvar(1) = GetHitVar(fall.recovertime)

[State 45000, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = Time > 0
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45000, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 45000, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 45000, ChangeState]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 45001

[State 45000, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

[Statedef 45001]
type = A
movetype = H
physics = N

[State 45001, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.35

[State 45001, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45001, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 45001, VelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 45001, ChangeState]
type = ChangeState
trigger1 = BackEdgeBodyDist < 5
value = 45002

[State 45001, SelfState]
type = SelfState
trigger1 = Time > 3
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[Statedef 45002]
type = A
movetype = H
phisics = N

[State 45002, VarSet]	;Use sysvar(1)
type = VarSet
trigger1 = Time = 0
sysvar(1) = (GetHitVar(fall.recovertime)*2)-(GetHitVar(fall.recovertime)-sysvar(1))

[State 45002, VarSet]	;Use sysvar(1)
type = Null;VarSet
trigger1 = Time = 0
sysvar(1) = sysvar(1)*2

[State 45002, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45002, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45002

[State 40672, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 5
ampl = -7

[State 45002, ChangeState]
type = ChangeState
trigger1 = Time = 1
value = 45003

[Statedef 45003]
type = A
movetype = H
phisics = N
velset = 0,0

[State 45003, VarSet]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45003, SelfState]
type = SelfState
trigger1 = CanRecover
trigger1 = sysvar(1) = 0
trigger1 = command = "recovery"
value = 5210

[State 45003, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 45003, AngleSet]
type = AngleSet
trigger1 = 1
value = Time*30

[State 45003, VelSet]
type = VelSet
trigger1 = Time = 0
x = 1.5
y = -8

[State 45003, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 45003, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

;----------------------------------------------------------------------
; Fire Damage - Fall/P1

[Statedef 45010]
type = A
movetype = H
physics = N
velset = 0,0

[State 45010, VarSet]	;Use sysvar(1)
type = VarSet
trigger1 = Time = 0
sysvar(1) = GetHitVar(fall.recovertime)

[State 45010, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45010, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45010

[State 45010, ChangeState]
type = ChangeState
trigger1 = Time = 1
value = 45011

;----------------------------------------------------------------------
; Fire Damage - Fall/P1

[Statedef 45011]
type = A
movetype = H
physics = N
velset = -3,-3.5

[State 45011, SelfState]
type = SelfState
trigger1 = CanRecover
trigger1 = sysvar(1) = 0
trigger1 = command = "recovery"
value = 5210

[State 45011, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45011, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 45011, VelAdd]
type = VelAdd
trigger1 = Time > 5
y = 0.35

[State 45011, PalFX]
type = PalFX
trigger1 = Time = 0
time = 40
add = 80,-44,-124
sinadd = 30,30,0,10
color = 0
invertall = 1
persistent = 0

[State 45011, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 5055 && Anim != 5700 && Anim != 3595 && Anim != 9015
triggerall = Time = 7
trigger1 = SelfAnimExist(7697)
value = 7697
persistent = 0

[State 45011, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5055)
triggerall = Time = 6
trigger1 = Name = "Ayu Tukimiya" && AuthorName = "shikkoku"
value = 5055
persistent = 0

[State 45011, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5700)
triggerall = Time = 6
trigger1 = Name = "Nayuki Minase" && AuthorName = "EL"
value = 5700
persistent = 0

[State 45011, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(3595)
trigger1 = Time = 6
trigger1 = Name = "Makoto Sawatari" && AuthorName = "EL"
value = 3595
persistent = 0

[State 45011, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(9015)
triggerall = Time = 6
trigger1 = Name = "Mayu Shiina" && AuthorName = "BF"
trigger2 = Name = "Makoto Sawatari" && AuthorName = "BF"
value = 9015
persistent = 0

[State 45011, PalFX]
type = PalFX
trigger1 = Anim != 45010
time = 1
mul = 255,255,255
persistent = 0

[State 45011, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

;----------------------------------------------------------------------
; Fire Damage - Fall/P3

[Statedef 45020]
type = A
movetype = H
physics = N
velset = 0,0

[State 45020, VarSet]	;Use sysvar(1)
type = VarSet
trigger1 = Time = 0
sysvar(1) = GetHitVar(fall.recovertime)

[State 45020, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45020, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45010

[State 45020, ChangeState]
type = ChangeState
trigger1 = Time = 1
value = 45021

;----------------------------------------------------------------------
; Fire Damage - Fall/P3

[Statedef 45021]
type = A
movetype = H
physics = N
velset = -3,-3.5

[State 45021, SelfState]
type = SelfState
trigger1 = CanRecover
trigger1 = sysvar(1) = 0
trigger1 = command = "recovery"
value = 5210

[State 45021, VarAdd]	;Use sysvar(1)
type = VarAdd
trigger1 = sysvar(1) > 0
sysvar(1) = -1

[State 45021, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 45021, VelAdd]
type = VelAdd
trigger1 = Time > 5
y = 0.35

[State 45021, PalFX]
type = PalFX
trigger1 = Time = 0
time = 40
add = 80,-44,-124
sinadd = 30,30,0,10
color = 0
invertall = 1
persistent = 0

[State 45021, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 5055 && Anim != 5700 && Anim != 3595 && Anim != 9015
triggerall = Time = 7
trigger1 = SelfAnimExist(7697)
value = 7697
persistent = 0

[State 45021, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5055)
triggerall = Time = 6
trigger1 = Name = "Ayu Tukimiya" && AuthorName = "shikkoku"
value = 5055
persistent = 0

[State 45021, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5700)
triggerall = Time = 6
trigger1 = Name = "Nayuki Minase" && AuthorName = "EL"
value = 5700
persistent = 0

[State 45021, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(3595)
trigger1 = Time = 6
trigger1 = Name = "Makoto Sawatari" && AuthorName = "EL"
value = 3595
persistent = 0

[State 45021, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(9015)
triggerall = Time = 6
trigger1 = Name = "Mayu Shiina" && AuthorName = "BF"
trigger2 = Name = "Makoto Sawatari" && AuthorName = "BF"
value = 9015
persistent = 0

[State 45021, PalFX]
type = PalFX
trigger1 = Anim != 45010
time = 1
mul = 255,255,255
persistent = 0

[State 45021, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

;----------------------------------------------------------------------
; Thunder Damage

[Statedef 45030]
type = A
movetype = H
physics = N
velset = -0.5,-1.25

[State 45030, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45030

[State 45030, PalFX]
type = PalFX
trigger1 = Anim != 45030
time = 1
mul = 0,0,0
persistent = 0

[State 45030, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 45030
trigger1 = SelfAnimExist(7696)
value = 7696
persistent = 0

[State 45030, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(9010)
trigger1 = Name = "Mayu Shiina" && AuthorName = "BF"
trigger2 = Name = "Makoto Sawatari" && AuthorName = "BF"
value = 9010
persistent = 0

[State 45030, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5056)
trigger1 = Name = "Ayu Tukimiya" && AuthorName = "shikkoku"
trigger2 = Name = "Mai Kawasumi" && AuthorName = "586"
value = 5056
persistent = 0

[State 45030, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5710)
trigger1 = Name = "Nayuki Minase" && AuthorName = "EL"
value = 5710
persistent = 0

[State 45030, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(3590)
trigger1 = Name = "Makoto Sawatari" && AuthorName = "EL"
value = 3590
persistent = 0

[State 45030, ChangeState]
type = ChangeState
trigger1 = Time > 32
value = 45031

[State 45030, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

[Statedef 45031]
type = A
movetype = H
physics = N

[State 45031, SelfState]
type = SelfState
trigger1 = Time = 2
value = 5000

[State 45031, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Fall/P1

[Statedef 45040]
type = A
movetype = H
physics = N

[State 45040, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45040

[State 45040, VelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 45040, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 45040, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.35

[State 45040, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 45040, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Fall/P3

[Statedef 45045]
type = A
movetype = H
physics = N

[State 45045, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45040

[State 45045, VelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 45045, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 45045, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.35

[State 45045, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 45045, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Ground/P1

[Statedef 45050]
type = A
movetype = H
physics = N

[State 45050, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45050

[State 45050, VelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 45050, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 45050, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.35

[State 45050, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 45051

[State 45050, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Ground/P1

[Statedef 45051]
type = S
movetype = H
physics = S

[State 45051, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 45051, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 45051, HitFallSet]
type = HitFallSet
trigger1 = Time = 0
value = 0

[State 45051, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45050

[State 45051, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 45051, ChangeState]
type = ChangeState
trigger1 = Time > 60
value = 45069

[State 45051, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Ground/P3

[Statedef 45055]
type = A
movetype = H
physics = N

[State 45055, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45050

[State 45055, VelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 45055, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 45055, VelAdd]
type = VelAdd
trigger1 = Time > 1
y = 0.35

[State 45055, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 45056

[State 45055, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Ground/P3

[Statedef 45056]
type = S
movetype = H
physics = S

[State 45056, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 45056, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 45056, HitFallSet]
type = HitFallSet
trigger1 = Time = 0
value = 0

[State 45056, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45050

[State 45056, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 45056, ChangeState]
type = ChangeState
trigger1 = Time > 60
value = 45069

[State 45056, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; Ice Damage - Ground/Recover

[Statedef 45069]
type = S
movetype = H
physics = S
velset = -5,0

[State 45069, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45069

[State 45069, SelfState]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 45069, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; 2 + C - No.1
;
; 41401		- Fall
; 41403		- Down
; 41404		- Down2(To 41403)
; 41405		- Finished

[Statedef 41401]
type = A
movetype = H
physics = N
velset = 0,0

[State 41401, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45000

[State 41401, VelSet]
type = HitVelSet
trigger1 = HitShakeOver
x = 1
y = 1
persistent = 0

[State 41401, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 41402

;----------------------------------------------------------------------
; 2 + C - No.2

[Statedef 41402]
type = A
movetype = H
physics = N

[State 41401, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.3

[State 41401, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 41403

;----------------------------------------------------------------------
; 2 + C - No.3

[Statedef 41403]
type = S
movetype = H
physics = S
velset = 0,0

[State 41403, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 41403, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 41403, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 5
freq = 60
ampl = 4

[State 41403, ChangeState]
type = ChangeState
trigger1 = Time = 1
value = 41404

;----------------------------------------------------------------------
; 2 + C - No.4

[Statedef 41404]
type = S
movetype = H
physics = S
velset = 0,0

[State 41404, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 41404

[State 41404, ChangeState]
type = ChangeState
trigger1 = Time >= 10
value = 41405

;----------------------------------------------------------------------
; 2 + C - No.5

[Statedef 41405]
type = C
movetype = H
physics = S
velset = 0,0

[State 41405, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 0
value = 5110

[State 41405, SelfState]
type = SelfState
trigger1 = Time > 30
value = ifelse(Alive,5120,5150)

;----------------------------------------------------------------------
; 641236 + A or B or C

[Statedef 46002]
type = S
movetype = H
physics = N

[State 46002, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 46002, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 40511

[State 46002, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; 641236 + A or B or C

[Statedef 46003]
type = A
movetype = H
physics = N

[State 46003, VelAdd]
type = VelAdd
trigger1 = Time = 1
x = -4.5
y = -4.5

[State 46003, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 45000

[State 46003, VelAdd]
type = VelAdd
trigger1 = Time > 2
y = 0.35

[State 46003, SelfState]
type = SelfState
trigger1 = Time > 5
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

[State 46003, Kill Helper]
type = DestroySelf
trigger1 = IsHelper

;----------------------------------------------------------------------
; 236236236 + C

[Statedef 47000]
type = A
movetype = H
physics = N

[State 47000, VelSet]
type = VelSet
trigger1 = Time = 0
x = GetHitVar(xvel)
y = GetHitVar(yvel)

[State 47000, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 47000, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 47000

[State 47000, VelAdd]
type = VelAdd
trigger1 = Time > 5
y = 0.35

[State 47000, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

;----------------------------------------------------------------------
; 236236236 + C

[Statedef 47001]
type = A
movetype = H
physics = N

[State 47001, VelSet]
type = VelSet
trigger1 = Time = 0
x = GetHitVar(xvel)
y = GetHitVar(yvel)

[State 47001, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 47001

[State 47001, VelAdd]
type = VelAdd
trigger1 = Time > 2
y = GetHitVar(yaccel)

[State 47001, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

;----------------------------------------------------------------------
; 236236236 + C

[Statedef 47002]
type = A
movetype = H
physics = N

[State 47002, VelSet]
type = VelSet
trigger1 = Time = 0
x = GetHitVar(xvel)
y = GetHitVar(yvel)

[State 47002, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 47002, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 47001

[State 47002, VelAdd]
type = VelAdd
trigger1 = Time > 2
y = GetHitVar(yaccel)

[State 47002, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

