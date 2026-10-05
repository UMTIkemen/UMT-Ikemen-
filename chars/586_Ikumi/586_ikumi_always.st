;======================================================================
;======================================================================
; -2 states file for "Ikumi Amasawa"
;======================================================================
;======================================================================

[Statedef -2]

;----------------------------------------------------------------------
; HitSounds and HitEffects
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; MoveContact detection

[State -2, MoveHitReset]
type = MoveHitReset
triggerall = MoveContact
triggerall = var(2) = 1
trigger1 = (StateNo = [120,430])
trigger2 = (StateNo = [800,7999])
trigger3 = (StateNo = [60200,60430])
trigger4 = (StateNo = [61000,66999])
ignorehitpause = 1

[State -2, VarSet];MoveHit Detection
type = VarSet
trigger1 = MoveHit
var(1) = 1
ignorehitpause = 1

[State -2, VarSet];MoveGuarded Detection
type = VarSet
trigger1 = MoveGuarded
var(1) = 2
ignorehitpause = 1

[State -2, VarSet];MoveReversed Detection
type = VarSet
triggerall = NumEnemy != 0
trigger1 = EnemyNear,AuthorName = "586" && (EnemyNear,StateNo = [120,155]) && MoveReversed
trigger2 = EnemyNear,AuthorName = "586" && (EnemyNear,StateNo = [120,155]) && MoveHit
var(1) = 3
ignorehitpause = 1

[State -2, VarSet];MoveContact Detection
type = VarSet
trigger1 = MoveContact
var(2) = 2
ignorehitpause = 1

[State -2, VarSet];HitFlag Reset
type = VarSet
trigger1 = MoveType != A
var(1) = 0
ignorehitpause = 1

[State -2, VarSet];MoveContact Initialize
type = VarAdd
trigger1 = var(2) > 0
var(2) = -1
ignorehitpause = 1

[State -2, VarSet];Armor
type = VarAdd
trigger1 = var(32) > 0
var(32) = -1
ignorehitpause = 1

[State -2, VarSet];Armor Damage
type = LifeAdd
trigger1 = var(32) = 1
value = -1*var(33)
absolute = 0
kill = 0
ignorehitpause = 1

[State -2, VarAdd];HitCounter Addition
type = VarAdd
trigger1 = NumProjID(39999) > 0
var(9) = NumProjID(39999)
ignorehitpause = 1

[State -2, VarAdd];HitCounter Addition
type = VarAdd
trigger1 = NumProjID(31500) > 0
var(9) = NumProjID(31500)
ignorehitpause = 1

;----------------------------------------------------------------------
; HitEffects Helper

[State -2, HitEffects]
type = Helper
trigger1 = MoveHit
trigger1 = var(0) = 1
helpertype = normal
name = "HitSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30000
ignorehitpause = 1

[State -2, HitEffects]
type = Helper
trigger1 = MoveHit
trigger1 = var(0) = 2
helpertype = normal
name = "HitSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30001
ignorehitpause = 1

[State -2, HitEffects]
type = Helper
trigger1 = MoveHit
trigger1 = var(0) = 3
helpertype = normal
name = "HitSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30002
ignorehitpause = 1

[State -2, HitEffects]
type = Helper
trigger1 = MoveHit
trigger1 = var(0) = 4
helpertype = normal
name = "HitSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30003
ignorehitpause = 1

[State -2, HitEffects]
type = Helper
trigger1 = MoveHit
trigger1 = var(0) = 5
helpertype = normal
name = "HitSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30004
ignorehitpause = 1

[State -2, HitEffects]
type = Helper
trigger1 = MoveHit
trigger1 = var(0) = 6
helpertype = normal
name = "HitSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30005
ignorehitpause = 1

[State -2, HitEffects]
type = Helper
trigger1 = MoveHit
trigger1 = var(0) = 7
helpertype = normal
name = "HitSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30006
ignorehitpause = 1

;----------------------------------------------------------------------
; GuardEffects Helper

[State -2, HitEffects]
type = Helper
trigger1 = MoveGuarded
trigger1 = var(0) != 0
helpertype = normal
name = "GuardSpark"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 30100
ignorehitpause = 1

;----------------------------------------------------------------------
; HitSounds / GuardSounds - for Player

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumHelper(30000) > 0
value = s1,0
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumHelper(30001) > 0
value = s1,1
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumHelper(30002) > 0
value = s1,2
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumHelper(30003) > 0
value = s1,4
channel = 2
ignorehitpause = 1

[State -2, HitSounds]	;Double
type = PlaySnd
trigger1 = NumHelper(30004) > 0
value = s1,2
channel = 2
ignorehitpause = 1

[State -2, HitSounds]	;Double
type = PlaySnd
trigger1 = NumHelper(30004) > 0
value = s1,5
channel = 5
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumHelper(30005) > 0
value = s1,3
channel = 5
ignorehitpause = 1

[State -2, HitSounds]	;Double
type = PlaySnd
trigger1 = NumHelper(30006) > 0
value = s1,2
channel = 2
ignorehitpause = 1

[State -2, HitSounds]	;Double
type = PlaySnd
trigger1 = NumHelper(30006) > 0
value = s1,9
channel = 5
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumHelper(30007) > 0
value = s1,6
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumHelper(30100) > 0
value = s1,7
channel = 2
ignorehitpause = 1

;----------------------------------------------------------------------
; HitSounds / GuardSounds - for Helper

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumProjID(31000) > 0
value = s1,0
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumProjID(31001) > 0
value = s1,1
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumProjID(31002) > 0
value = s1,2
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumProjID(31003) > 0
value = s1,4
channel = 2
ignorehitpause = 1

[State -2, HitSounds]	;Double
type = PlaySnd
trigger1 = NumProjID(31004) > 0
value = s1,2
channel = 2
ignorehitpause = 1

[State -2, HitSounds]	;Double
type = PlaySnd
trigger1 = NumProjID(31004) > 0
value = s1,5
channel = 5
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumProjID(31005) > 0
value = s1,3
channel = 2
ignorehitpause = 1

[State -2, HitSounds]	;Double
type = PlaySnd
trigger1 = NumProjID(31006) > 0
value = s1,2
channel = 2
ignorehitpause = 1

[State -2, HitSounds]	;Double
type = PlaySnd
trigger1 = NumProjID(31006) > 0
value = s1,9
channel = 5
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumProjID(31007) > 0
value = s1,6
channel = 2
ignorehitpause = 1

[State -2, HitSounds]
type = PlaySnd
trigger1 = NumProjID(31100) > 0
value = s1,7
channel = 2
ignorehitpause = 1

;----------------------------------------------------------------------
; Other Sounds

[State -2, PlaySnd];Wire Damage
type = PlaySnd
triggerall = P2MoveType = H
trigger1 = P2StateNo = 45002
value = s2,5
supermovetime = 0
pausemovetime = 0

[State -2, PlaySnd];Down
type = PlaySnd
triggerall = NumHelper(30400) = 0
triggerall = P2MoveType = H
trigger1 = P2StateNo = 41403
value = s2,4
channel = 5
supermovetime = 0
pausemovetime = 0

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumProjID(30201) > 0
value = s1,4
channel = 1
ignorehitpause = 1

;----------------------------------------------------------------------
; Explod

[State -2, Effect]
type = Explod
trigger1 = P2StateNo = 41403
anim = 15110
postype = p2
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

;----------------------------------------------------------------------
; Just Defence
;----------------------------------------------------------------------

[State -2, VarSet]
type = VarSet
trigger1 = StateNo != 145
var(14) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = StateNo != 125 && StateNo != 140 && StateNo != 145
var(18) = 0
ignorehitpause = 1

[State -2, SelfState]
type = SelfState
trigger1 = var(19) = 1
value = 125
ignorehitpause = 1

[State -2, Helper]
type = Helper
trigger1 = var(30) = 0
trigger1 = NumHelper(10120) = 0
helpertype = normal
name = "Recoil"
postype = p1
pos = 0,0
pausemovetime = 999999
supermovetime = 999999
stateno = 10120
ID = 10120
ignorehitpause = 1

[State -2, NotHitBy]
type = NotHitBy
trigger1 = NumHelper(10120) = 1
trigger1 = (Helper(10120),StateNo = [10121,10123]) && (Helper(10120),Anim != 99990)
value = ,AP
time = 1

[State -2, HitOverRide]
type = HitOverRide
trigger1 = NumHelper(10120) = 1
trigger1 = (Helper(10120),StateNo = [10121,10123]) && (Helper(10120),Anim != 99990)
trigger1 = var(1) = 3
attr = SCA, AA, AP
slot = 0
stateno = 125
time = 1
ignorehitpause = 1

;----------------------------------------------------------------------
; Movement in the air
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Air Jump / Air Dash

[State -2, VarSet];Air Jump flag initialize
type = VarSet
trigger1 = StateType != A || StateNo = 5210
var(5) = 0

[State -2, VarSet];Air Dash flag initialize
type = VarSet
trigger1 = StateType != A || StateNo = 5210
var(6) = 0

[State -2, VarSet];Holdup detector
type = VarAdd
trigger1 = command = "holdup"
var(7) = 1

[State -2, VarSet];Holdup flag initialize
type = VarSet
trigger1 = command != "holdup"
var(7) = 0

[State -2, VarSet]
type = VarAdd
trigger1 = var(8) > 0
var(8) = -1
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = StateType != A
var(8) = 0

[State -2, VarSet]
type = VarSet
trigger1 = StateType != A
trigger2 = (StateNo = [110,115]) && Time = 1
var(27) = 0

[State -2, VarSet];Early Input
type = VarSet
trigger1 = command = "FF_2"
var(27) = 1
ignorehitpause = 1

[State -2, VarSet];Early Input
type = VarSet
trigger1 = command = "BB_2"
var(27) = 2
ignorehitpause = 1

;----------------------------------------------------------------------
; Effect

[State -2, AfterImage]
type = AfterImage
trigger1 = MoveType = H
time = 0

;----------------------------------------------------------------------
; Ice Damage
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Ice Damage - P1/P2/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 1
triggerall = NumHelper(30600) = 0
triggerall = var(20) = 1
trigger1 = Enemy(0),StateNo = 45040
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30600
ID = 30600
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P1/P4/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 2
triggerall = NumHelper(30601) = 0
triggerall = var(20) = 1
trigger1 = Enemy(1),StateNo = 45040
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30600
ID = 30601
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P3/P2/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 1
triggerall = NumHelper(30610) = 0
triggerall = var(20) = 2
trigger1 = Enemy(0),StateNo = 45045
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30600
ID = 30610
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P3/P4/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 2
triggerall = NumHelper(30611) = 0
triggerall = var(20) = 2
trigger1 = Enemy(1),StateNo = 45045
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30600
ID = 30611
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P1/P2/Ground

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 1
triggerall = NumHelper(30700) = 0
triggerall = var(20) = 1
trigger1 = Enemy(0),StateNo = 45050
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30700
ID = 30700
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P1/P4/Ground

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 2
triggerall = NumHelper(30701) = 0
triggerall = var(20) = 1
trigger1 = Enemy(1),StateNo = 45050
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30700
ID = 30701
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P3/P2/Ground

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 1
triggerall = NumHelper(30710) = 0
triggerall = var(20) = 2
trigger1 = Enemy(0),StateNo = 45055
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30700
ID = 30710
ignorehitpause = 1

;----------------------------------------------------------------------
; Ice Damage - P3/P4/Ground

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 2
triggerall = NumHelper(30711) = 0
triggerall = var(20) = 2
trigger1 = Enemy(1),StateNo = 45055
helpertype = normal
name = "Ice"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30700
ID = 30711
ignorehitpause = 1

;----------------------------------------------------------------------
; Fire Damage
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Fire Damage - P1/P2/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 1
triggerall = var(20) = 1
trigger1 = Enemy(0),StateNo = 45010
helpertype = normal
name = "Fire"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30800
ID = 30800
ignorehitpause = 1

;----------------------------------------------------------------------
; Fire Damage - P1/P4/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 2
triggerall = var(20) = 1
trigger1 = Enemy(1),StateNo = 45010
helpertype = normal
name = "Fire"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30800
ID = 30801
ignorehitpause = 1

;----------------------------------------------------------------------
; Fire Damage - P3/P2/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 1
triggerall = var(20) = 2
trigger1 = Enemy(0),StateNo = 45020
helpertype = normal
name = "Fire"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30800
ID = 30810
ignorehitpause = 1

;----------------------------------------------------------------------
; Fire Damage - P3/P4/Fall

[State -2, HitEffects]
type = Helper
triggerall = NumEnemy >= 2
triggerall = var(20) = 2
trigger1 = Enemy(1),StateNo = 45020
helpertype = normal
name = "Fire"
postype = p1
pos = 0,0
pausemovetime = 9999
supermovetime = 9999
stateno = 30800
ID = 30811
ignorehitpause = 1

;----------------------------------------------------------------------
; HitFlag

[State -2, VarSet]
type = VarSet
trigger1 = (!EnemyNear,HitFall && (Enemy,TeamMode = Single || Enemy,TeamMode = Turns)) && (Enemy,StateNo != [45000,45004])
trigger2 = (EnemyNear,HitFall && !EnemyNear,CanRecover && (Enemy,TeamMode = Single || Enemy,TeamMode = Turns)) && (Enemy,StateNo != [45000,45004])
trigger3 = Enemy,TeamMode = Simul
trigger4 = (Enemy,StateNo = [45000,45004]) && (Enemy,sysvar(1) != 0) && (Enemy,MoveType = H)
trigger5 = (Enemy,StateNo = 40535) && (Enemy,sysvar(1) != 0) && (Enemy,MoveType = H)
var(4) = 1

[State -2, VarSet]
type = VarSet
triggerall = (Enemy,TeamMode = Simul) = 0
trigger1 = (Enemy,StateNo != [45000,45004]) && (Enemy,StateNo != 40535)
trigger1 = (!EnemyNear,HitFall && (Enemy,TeamMode = Single || Enemy,TeamMode = Turns)) = 0
trigger1 = (EnemyNear,HitFall && !EnemyNear,CanRecover && (Enemy,TeamMode = Single || Enemy,TeamMode = Turns)) = 0
trigger2 = (Enemy,StateNo = [45000,45004]) && (Enemy,sysvar(1) = 0) && (Enemy,MoveType = H)
trigger3 = (Enemy,StateNo = 40535) && (Enemy,sysvar(1) = 0) && (Enemy,MoveType = H)
var(4) = 0

;----------------------------------------------------------------------
; MoveHit Correction - for Helper

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30501) > 0
fvar(1) = 0.01
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30502) > 0
fvar(1) = 0.02
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30503) > 0
fvar(1) = 0.03
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30504) > 0
fvar(1) = 0.04
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30505) > 0
fvar(1) = 0.05
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30506) > 0
fvar(1) = 0.06
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30507) > 0
fvar(1) = 0.07
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30508) > 0
fvar(1) = 0.08
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30509) > 0
fvar(1) = 0.09
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30510) > 0
fvar(1) = 0.10
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30511) > 0
fvar(1) = 0.11
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30512) > 0
fvar(1) = 0.12
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30513) > 0
fvar(1) = 0.13
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30514) > 0
fvar(1) = 0.14
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30515) > 0
fvar(1) = 0.15
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30516) > 0
fvar(1) = 0.16
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30517) > 0
fvar(1) = 0.17
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30518) > 0
fvar(1) = 0.18
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30519) > 0
fvar(1) = 0.19
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30520) > 0
fvar(1) = 0.20
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30521) > 0
fvar(1) = 0.21
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30522) > 0
fvar(1) = 0.22
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30523) > 0
fvar(1) = 0.23
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30524) > 0
fvar(1) = 0.24
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30525) > 0
fvar(1) = 0.25
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30550) > 0
fvar(1) = 0.5
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30580) > 0
fvar(1) = 0.8
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumProjID(30590) > 0
fvar(1) = 0.005
ignorehitpause = 1

;----------------------------------------------------------------------
; AttackMulSet

[State -2, VarSet]
type = VarSet
trigger1 = MoveHit
trigger2 = NumProjID(31500) > 0
fvar(1) = fvar(3)
ignorehitpause = 1

[State -2, VarAdd]
type = VarSet
;triggerall = var(9) > 0
;triggerall = fvar(18) = 0
trigger1 = MoveHit
trigger2 = NumProjID(30500) > 0
trigger3 = NumProjID(31500) > 0
fvar(2) = fvar(2)*((1.0-fvar(1))*ifelse(fvar(2)*(1.0-fvar(1)) > 1.0,(1.0-fvar(1)),1))
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = var(40)/10%10 = 0
fvar(0) = ifelse(fvar(2) > 1,1,fvar(2))*fvar(8)
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = var(40)/10%10 = 1
fvar(0) = ifelse(fvar(2) > 1,1,fvar(2))*fvar(8)*fvar(9)
ignorehitpause = 1

[State -2, VarAdd]
type = VarSet
trigger1 = P2MoveType != H
fvar(2) = 1
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = P2MoveType != H
fvar(1) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = 1
fvar(6) = (fvar(4)*fvar(2)*0.75)+10
ignorehitpause = 1

[State -2, VarSet];HitCount
type = VarSet
trigger1 = P2MoveType != H
var(9) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = MoveHit
trigger2 = NumProjID(30500) > 0
trigger3 = NumProjID(31500) > 0
fvar(18) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = fvar(16) != 3
fvar(8) = 1+fvar(15)*0.0005
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = fvar(16) = 3
fvar(8) = 1+fvar(15)/1000.0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = MoveType = H
var(16) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = MoveType = H
var(17) = 0
ignorehitpause = 1

[State -2, VarAdd]		;Knock back
type = VarSet
trigger1 = var(9) > 20
trigger1 = P2StateType != A
fvar(17) = (1.0+((var(9)-20)*0.5))*(-1)
ignorehitpause = 1

[State -2, VarAdd]		;Knock back
type = VarSet
trigger1 = var(9) <= 20
trigger2 = P2StateType = A
fvar(17) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = 1
fvar(9) = ((Enemy,LifeMax/1000.0)-((Enemy,LifeMax-Enemy,Life)*0.0005)) / (Enemy,LifeMax/1000.0)
ignorehitpause = 1

;----------------------------------------------------------------------
; DefenceMulSet

[State -2, DefenceMulSet]
type = DefenceMulSet
trigger1 = var(40)%10 = 1
value = fvar(10)
ignorehitpause = 1

[State -2, VarSet];need more trigger.
type = VarSet
trigger1 = 1
fvar(10) = ((LifeMax/1000.0)-((LifeMax-Life)*0.0005)) / (LifeMax/1000.0)
ignorehitpause = 1

;----------------------------------------------------------------------
; Width

[State -3, Width]
type = Width
trigger1 = FrontEdgeDist < 8 && MoveType != H
edge = 3,

;----------------------------------------------------------------------
; Reinforce Gauge
;----------------------------------------------------------------------
;
; fvar(15)	- Value
; fvar(16)	- Reinforce Level(Blue(1)/Red(2)/White(3))
;

;----------------------------------------------------------------------
; Frame

[State -2, Bar Priority]
type = VarSet
trigger1 = 1
var(49) = 10

[State -2, Explod];Gauge - Frame
type = Explod
trigger1 = NumExplod(10030) = 0
anim = 10030
ID = 10030
pos = ifelse(TeamSide = 1,25,295),3
postype = Left
bindtime = -1
removetime = -1
ownpal = 1
ontop = 1
sprpriority = -5
facing = ifelse(TeamSide = 1,1,-1)
pausemovetime = 999999
supermovetime = 999999
scale = 1,1
ignorehitpause = 1

;----------------------------------------------------------------------
; Gauge - Blue

[State -2, Explod];Gauge - Blue
type = Explod
trigger1 = NumExplod(10031) = 0
trigger1 = fvar(16) = [1,2]
anim = 10031
ID = 10031
pos = ifelse(TeamSide = 1,27,293),5
postype = Left
bindtime = -1
removetime = -1
ownpal = 1
ontop = 1
sprpriority = -4
facing = ifelse(TeamSide = 1,1,-1)
pausemovetime = 999999
supermovetime = 999999
scale = 1,1
ignorehitpause = 1

;----------------------------------------------------------------------
; Gauge - Red

[State -2, Explod];Gauge - Red
type = Explod
trigger1 = NumExplod(10032) = 0
trigger1 = fvar(16) = 2
anim = 10032
ID = 10032
pos = ifelse(TeamSide = 1,27,293),5
postype = Left
bindtime = -1
removetime = -1
ownpal = 1
ontop = 1
sprpriority = -3
facing = ifelse(TeamSide = 1,1,-1)
pausemovetime = 999999
supermovetime = 999999
scale = 1,1
ignorehitpause = 1

;----------------------------------------------------------------------
; Gauge - White

[State -2, Explod];Gauge - White
type = Explod
trigger1 = NumExplod(10033) = 0
trigger1 = fvar(16) = 3
anim = 10033
ID = 10033
pos = ifelse(TeamSide = 1,27,293),5
postype = Left
bindtime = -1
removetime = -1
ownpal = 1
ontop = 1
sprpriority = -3
facing = ifelse(TeamSide = 1,1,-1)
pausemovetime = 999999
supermovetime = 999999
scale = 1,1
ignorehitpause = 1

;----------------------------------------------------------------------
; ModifyExplod

[State -2, ModifyExplod]	;Frame
type = ModifyExplod
trigger1 = NumExplod(10030) = 1
ID = 10030
postype = Left
pos = ifelse(TeamSide = 1,25+var(23),295-var(23)),3+var(24)
ignorehitpause = 1

[State -2, ModifyExplod]	;Blue
type = ModifyExplod
trigger1 = NumExplod(10031) = 1
trigger1 = fvar(16) = [1,2]
ID = 10031
scale = ifelse(fvar(16) = 1,fvar(15)/100,ifelse(fvar(16) = 3,0,1)),1
postype = Left
pos = ifelse(TeamSide = 1,27+var(23),293-var(23)),5+var(24)
ignorehitpause = 1

[State -2, ModifyExplod]	;Red
type = ModifyExplod
trigger1 = NumExplod(10032) = 1
trigger1 = fvar(16) = 2
ID = 10032
scale = (fvar(15)-100)/100,1
postype = Left
pos = ifelse(TeamSide = 1,27+var(23),293-var(23)),5+var(24)
ignorehitpause = 1

[State -2, ModifyExplod]	;White
type = ModifyExplod
trigger1 = NumExplod(10033) = 1
trigger1 = fvar(16) = 3
ID = 10033
scale = (fvar(15))/100,1
postype = Left
pos = ifelse(TeamSide = 1,27+var(23),293-var(23)),5+var(24)
ignorehitpause = 1

;----------------------------------------------------------------------
; RemoveExplod

[State -2, RemoveExplod]	;Blue
type = RemoveExplod
trigger1 = fvar(16) = 3
ID = 10031
ignorehitpause = 1

[State -2, RemoveExplod]	;Red
type = RemoveExplod
trigger1 = fvar(16) = 3
trigger2 = fvar(15) < 100
ID = 10032
ignorehitpause = 1

[State -2, RemoveExplod]	;White
type = RemoveExplod
trigger1 = fvar(16) != 3
ID = 10033
ignorehitpause = 1

;----------------------------------------------------------------------
; VarAdd

[State -2, VarAdd]		;Blue
type = VarAdd
triggerall = RoundState = 2
triggerall = fvar(16) = 1
triggerall = fvar(15) < 100
trigger1 = MoveType != H
trigger2 = StateNo = [120,155]
fvar(15) = 0.167 + (0.04*(StateNo = [150,155]))
ignorehitpause = 1

[State -2, VarAdd]		;Red
type = VarAdd
triggerall = RoundState = 2
triggerall = fvar(16) = 2
triggerall = fvar(15) < 200
trigger1 = MoveType != H
trigger2 = StateNo = [120,155]
fvar(15) = 0.067 + (0.04*(StateNo = [150,155]))
ignorehitpause = 1

[State -2, VarAdd]		;White
type = VarAdd
triggerall = RoundState = 2
trigger1 = MoveType = H
trigger1 = StateNo != [120,155]
trigger1 = StateNo != [5110,5150]
trigger1 = fvar(16) = 3
trigger1 = GameTime % 4 = 0
trigger1 = fvar(15) >= 0
fvar(15) = -0.5
ignorehitpause = 1

[State -2, VarAdd]		;Blue Flag
type = VarSet
trigger1 = fvar(16) != 3
trigger1 = fvar(15) < 100
fvar(16) = 1
ignorehitpause = 1

[State -2, VarAdd]		;Red Flag
type = VarSet
trigger1 = fvar(16) != 3
trigger1 = fvar(15) = [100,199]
fvar(16) = 2
ignorehitpause = 1

[State -2, VarAdd]		;White Flag
type = VarSet
trigger1 = fvar(15) >= 200
fvar(16) = 3
ignorehitpause = 1

[State -2, VarAdd]		;White Flag
type = VarSet
trigger1 = fvar(15) >= 200
trigger1 = fvar(16) = 3
fvar(15) = 100
ignorehitpause = 1

[State -2, VarAdd]		;Reset Flag
type = VarSet
trigger1 = fvar(15) <= 0
fvar(16) = 1
ignorehitpause = 1

[State -2, VarAdd]		;Reset Flag
type = VarSet
trigger1 = fvar(15) < 0
fvar(15) = 0
ignorehitpause = 1

[State -2, VarAdd]		;Reset Flag
type = VarSet
trigger1 = var(40)/100%10 = 1
fvar(16) = 3
ignorehitpause = 1

[State -2, VarAdd]		;Reset Flag
type = VarSet
trigger1 = var(40)/100%10 = 1
fvar(15) = 100
ignorehitpause = 1

;----------------------------------------------------------------------
; Special Features
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Distinction P1 or P3

[State -2, VarAdd]
type = VarSet
trigger1 = !NumPartner
var(20) = 1
ignorehitpause = 1

[State -2, VarAdd]		;P1
type = VarSet
trigger1 = NumPartner
trigger1 = ID < Partner,ID
var(20) = 1
ignorehitpause = 1

[State -2, VarAdd]		;P3
type = VarSet
trigger1 = NumPartner
trigger1 = ID > Partner,ID
var(20) = 2
ignorehitpause = 1

;----------------------------------------------------------------------
; PlayerID

[State -2, VarAdd]
type = VarSet
trigger1 = NumEnemy >= 1
var(21) = Enemy(0),ID
ignorehitpause = 1

[State -2, VarAdd]
type = VarSet
trigger1 = NumEnemy >= 2
var(22) = Enemy(1),ID
ignorehitpause = 1

;----------------------------------------------------------------------
; Enemy Detector

[State -2, VarSet]
type = Null;VarSet
trigger1 = P2Name = "Ayu Tukimiya" || P4Name = "Ayu Tukimiya"
var(15) = 1

;----------------------------------------------------------------------
; WinPose

[State -2, VarSet]
type = VarSet
triggerall = Win
triggerall = PlayerIDExist(var(21))
triggerall = NumEnemy > 0
trigger1 = Enemy,Stateno != 5150
var(25) = ceil(PlayerID(var(21)),ScreenPos X - ScreenPos X)*Facing

[State -2, VarSet]
type = VarSet
triggerall = Win
triggerall = PlayerIDExist(var(22))
triggerall = NumEnemy > 1
trigger1 = Enemy,Stateno != 5150
var(26) = ceil(PlayerID(var(22)),ScreenPos X - ScreenPos X)*Facing

;----------------------------------------------------------------------
; Poison Damage for Arcana Heart Characters by Drowin

[State -2, PowerAdd]
type = PowerAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "Drowin arcana"
triggerall = Enemy,fvar(20) > 0
trigger1 = Power > 0
value = -1

[State -2, LifeAdd]
type = LifeAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "Drowin arcana"
triggerall = Enemy,fvar(20) > 0
trigger1 = GameTime % 7 = 0
value = -1
kill = 0

[State -2, PalFX]
type = PalFX
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "Drowin arcana"
trigger1 = Enemy,fvar(20) > 0
add = 100,0,110
mul = 220,220,220
time = 5

;----------------------------------------------------------------------
; Fire Damage for Akiha by tukemon&HAL

[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "tukemon&HAL" && Enemy,Name = "Akiha"
trigger1 = Enemy,Var(56) = 1
value = -8
absolute = 1
kill = 0

[State -2]
type = PowerAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "tukemon&HAL" && Enemy,Name = "Akiha"
trigger1 = Enemy,Var(51)%10 = 2
trigger1 = Enemy,Var(56) = 1
value = -33

;----------------------------------------------------------------------
; Fire Damage for Akiha Vermilion by 9

[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Akiha_Vermilion"
trigger1 = Enemy,Var(47) = 1
value = -7
absolute = 1
kill = 0

[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Akiha_Vermilion"
trigger1 = Enemy,Var(48) = 1 && Enemy,NumExplod(4005)
value = -7
absolute = 1
kill = 0

[State -2]
type = PowerAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Akiha_Vermilion"
trigger1 = Enemy,Var(47) = 1
value = -26

;----------------------------------------------------------------------
; Powder Snow Damage for Len by 9

[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Len"
trigger1 = Enemy,Var(47) = 1 || Enemy,Var(48) = 1
value = -Enemy,Var(47)*4-Enemy,Var(48)*4
absolute = 1
kill = 0

;----------------------------------------------------------------------
; Watering can Damage for Hisui by 9

[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Hisui"
trigger1 = Enemy,Var(47) = 1
value = -10
absolute = 1
kill = 0

[State -2]
type = PowerAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Hisui"
trigger1 = Enemy,Var(47) = 1
value = -135

;----------------------------------------------------------------------
; Ganbarimashita.EX for Hisui by 9

[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Hisui"
trigger1 = Enemy,Var(48) = 1
value = IfElse(GameTime%2 = 0, -3, -4)
absolute = 1
kill = 0

;----------------------------------------------------------------------
; Black Crack Damage for Warachia by 9

[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Warachia"
trigger1 = Enemy,Var(47) = 1
value = -10
absolute = 1
kill = 0

[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Warachia"
trigger1 = Enemy,Var(47) = 2 || Enemy,Var(47) = 4
value = -15
absolute = 1
kill = 0

[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Warachia"
trigger1 = Enemy,Var(47) = 3
value = -30
absolute = 1
kill = 0

[State -2]
type = PowerAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Warachia"
trigger1 = Enemy,Var(47) = 1
value = 6

[State -2]
type = PowerAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Warachia"
trigger1 = Enemy,Var(47) = 2 || Enemy,Var(47) = 3 || Enemy,Var(47) = 4
value = 15

;----------------------------------------------------------------------
; Modern Science Damage for Kohaku by 9

[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "‡H" && Enemy,Name = "Kohaku"
trigger1 = Enemy,Var(47) = 1
value = IfElse(GameTime%2 = 0, -3, -4)
absolute = 1
kill = 0

;----------------------------------------------------------------------
; Curse Damage for Misuzu Kamio by 586

[State -2, LifeAdd]
type = LifeAdd
triggerall = (Enemy,TeamMode = Simul) = 0
triggerall = (TeamMode = Simul) = 0
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "586"
triggerall = Enemy,Name = "Misuzu Kamio"
triggerall = Enemy,fvar(11) > 0
trigger1 = Enemy,var(13) = 1
trigger1 = GameTime % 13 = 0
trigger2 = Enemy,var(13) = 2
trigger2 = GameTime % 11 = 0
trigger3 = Enemy,var(13) = 3
trigger3 = GameTime % 8 = 0
trigger4 = Enemy,var(13) = 4
trigger4 = GameTime % 6 = 0
trigger5 = Enemy,var(13) = 5
trigger5 = GameTime % 3 = 0
value = -1
kill = 0
ignorehitpause = 1

[State -2, PalFX]
type = PalFX
triggerall = (Enemy,TeamMode = Simul) = 0
triggerall = (TeamMode = Simul) = 0
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "586"
triggerall = Enemy,Name = "Misuzu Kamio"
trigger1 = Enemy,fvar(11) > 0
add = -50,150,150
time = 1
ignorehitpause = 1

;----------------------------------------------------------------------
; ¼sŽ›—HXŽq@—ì•„‹y‚ÑŽõ–½‘ŠŽèƒXƒe[ƒg

[State -2]
type       = LifeAdd
triggerall = NumEnemy
triggerall = Enemy,AuthorName = "Souki" && Enemy,Name = "Yuyuko Saigyouji"
trigger1   = Enemy,Var(3) = 1 || Enemy,Var(3) = 2
trigger1   = GameTime%6 = 0
value      = IfElse(Enemy,Var(3) = 1, -2, -3)
kill       = 0

;----------------------------------------------------------------------
; Toxic Smoke Damage for Reisen Udongein Inaba by Shiroto

[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = EnemyNear,AuthorName = "Shiroto"
triggerall = EnemyNear,Name = "Reisen Udongein Inaba"
trigger1 = EnemyNear,Var(40) != 0
trigger1 = Pos Y = [-30,10]
trigger1 = GameTime%3 = 0
value = -EnemyNear,Var(40)
kill = 0

;----------------------------------------------------------------------
; ’E°‚Ì‹V §Œä

;U‚èŒü‚«—}§
[State -2]
type = AssertSpecial
triggerall = (EnemyNear,Name = "Komachi Onoduka")*(EnemyNear,AuthorName = "mikage_th")*(TeamMode = Single)
trigger1 = (EnemyNear,StateNo = 820)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,13)
trigger2 = (EnemyNear,StateNo = 821)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,43)
flag = NoAutoTurn

;ˆÚ“®
[State -2]
type = PosAdd
triggerall = (EnemyNear,Name = "Komachi Onoduka")*(EnemyNear,AuthorName = "mikage_th")*(TeamMode = Single)
trigger1 = (EnemyNear,StateNo = 820)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,13)
trigger2 = (EnemyNear,StateNo = 821)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,43)
x = -Ceil(EnemyNear,FVar(36))*Facing*EnemyNear,Facing
y = -Ceil(EnemyNear,FVar(37))*(StateType != L)

;StateType != A + StateType != L ‚Ìê‡‹­§—Ž‰ºState‚Ö
[State -2]
type = ChangeState
triggerall = (EnemyNear,Name = "Komachi Onoduka")*(EnemyNear,AuthorName = "mikage_th")*(TeamMode = Single)
triggerall = (StateType != A)*(Pos Y != 0)*(StateType != L)
trigger1 = (EnemyNear,StateNo = 820)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,13)
trigger2 = (EnemyNear,StateNo = 821)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,43)
value = 50

;----------------------------------------------------------------------
; U‚èŒü‚«—}§

[State -2]
type = AssertSpecial
triggerall = (EnemyNear,Name = "Komachi Onoduka")*(EnemyNear,AuthorName = "mikage_th105")*(TeamMode = Single)
trigger1 = (EnemyNear,StateNo = 820)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,13)
trigger2 = (EnemyNear,StateNo = 821)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,43)
flag = NoAutoTurn

;ˆÚ“®
[State -2]
type = PosAdd
triggerall = (EnemyNear,Name = "Komachi Onoduka")*(EnemyNear,AuthorName = "mikage_th105")*(TeamMode = Single)
trigger1 = (EnemyNear,StateNo = 820)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,13)
trigger2 = (EnemyNear,StateNo = 821)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,43)
x = -Ceil(EnemyNear,FVar(24))*Facing*EnemyNear,Facing
y = -Ceil(EnemyNear,FVar(25))*(StateType != L)

;Statetype != A + Statetype != L ‚Ìê‡‹­§—Ž‰ºState‚Ö
[State -2]
type = ChangeState
triggerall = (EnemyNear,Name = "Komachi Onoduka")*(EnemyNear,AuthorName = "mikage_th105")*(TeamMode = Single)
triggerall = (StateType != A)*(Pos Y != 0)*(StateType != L)
trigger1 = (EnemyNear,StateNo = 820)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,13)
trigger2 = (EnemyNear,StateNo = 821)*(EnemyNear,Anim = 823)*(EnemyNear,AnimElem = 6,43)
value = 50

;----------------------------------------------------------------------
; Toxic Smoke Damage for Reisen Udongein Inaba by mikage_th105

[State -2]
type = LifeAdd
trigger1 = NumEnemy = 1
trigger1 = Pos Y > -240
trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th105")*(Enemy(0),FVar(21))
value = -Floor(Enemy(0),FVar(21))*2
ignorehitpause = 1
absolute = 1
kill = 0

[State -2]
type = LifeAdd
triggerall = NumEnemy = 2
triggerall = Pos Y > -240
trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th105")*(Enemy(0),FVar(21))
trigger2 = (Enemy(1),Name = "Reisen Udongein Inaba")*(Enemy(1),AuthorName = "mikage_th105")*(Enemy(1),FVar(21))
value = -Floor(Enemy(0),FVar(21))*2-Floor(Enemy(1),FVar(21))*2
ignorehitpause = 1
absolute = 1
kill = 0

;----------------------------------------------------------------------
; Toxic Smoke Damage for Reisen Udongein Inaba by mikage_th

[State -2]
type = LifeAdd
trigger1 = NumEnemy = 1
trigger1 = Pos Y > -240
trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th")*(Enemy(0),FVar(35))
value = -Floor(Enemy(0),FVar(35))*2
ignorehitpause = 1
absolute = 1
kill = 0

[State -2]
type = LifeAdd
triggerall = NumEnemy = 2
triggerall = Pos Y > -240
trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th")*(Enemy(0),FVar(35))
trigger2 = (Enemy(1),Name = "Reisen Udongein Inaba")*(Enemy(1),AuthorName = "mikage_th")*(Enemy(1),FVar(35))
value = -Floor(Enemy(0),FVar(35))*2-Floor(Enemy(1),FVar(35))*2
ignorehitpause = 1
absolute = 1
kill = 0

;----------------------------------------------------------------------
; “y’…_‚ÌâM‚è•ƒ~ƒVƒƒƒOƒW‚³‚Ü‚ÌâM‚è §Œä

;“y’…_‚ÌâM‚è
[State -2]
type = LifeAdd
trigger1 = NumEnemy
trigger1 = (EnemyNear,Name = "Suwako Moriya")*(EnemyNear,AuthorName = "mikage_th")*(TeamMode = Single)
trigger1 = Floor((EnemyNear,Var(42)%100)*0.1) = [0,1]
trigger1 = (Floor(EnemyNear,FVar(38)))%1000 > 0
trigger1 = Floor(EnemyNear,FVar(38)*0.001) = 2
value = Floor(EnemyNear,FVar(36)*(LifeMax/10000.000000))
ignorehitpause = 1
absolute = 1
kill = 0

;ƒ~ƒVƒƒƒOƒW‚³‚Ü‚ÌâM‚è
[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = (EnemyNear,Name = "Suwako Moriya")*(EnemyNear,AuthorName = "mikage_th")*(TeamMode = Single)
trigger1 = Floor(EnemyNear,FVar(35)) = 1
trigger1 = MoveType = H
trigger1 = StateNo != [150,155]
trigger2 = Floor(EnemyNear,FVar(35)) = 2
trigger2 = MoveType = H
trigger2 = StateNo = [150,155]
value = Floor(EnemyNear,FVar(33))
ignorehitpause = 1
absolute = 1
kill = 0

;----------------------------------------------------------------------
; Poison Damage for JUDA by SAIKEI

[State -2]
type = LifeAdd
triggerall = NumEnemy
trigger1 = Enemy,Name = "JUDA"
trigger1 = Enemy,AuthorName = "SAIKEI"
trigger1 = Enemy,FVar(23) > 0
trigger1 = Floor(Enemy,FVar(23))%4 = 0
trigger1 = Enemy,Var(0) <= 0
trigger1 = Enemy,MoveType != H || Enemy,MoveType = H && Enemy,HitShakeOver
value = -1
kill = 0

[State -2]
type = PalFX
triggerall = NumEnemy
triggerall = GameTime%20 = 0
trigger1 = Enemy,Name = "JUDA"
trigger1 = Enemy,AuthorName = "SAIKEI"
trigger1 = Enemy,FVar(23) > 0
time = 8
add = 255,0,0

;----------------------------------------------------------------------
; Mogli Recovery for Agrias by ouchi

[State -2]
type = PalFX
triggerall = NumEnemy
triggerall = !IsHelper
trigger1 = RoundState = 2
trigger1 = Alive = 1
trigger1 = NumPartner = 1
trigger1 = Partner,AuthorName = "ouchi" && Partner,Name = "Agrias_Oaks"
trigger1 = Partner,Var(25)%100 = 7
trigger1 = Partner,Var(10) = 100
time = 50
add = 0,0,54
mul = 256,256,256
sinadd = 0,0,108,100

[State -2]
type = LifeAdd
triggerall = NumEnemy
triggerall = !IsHelper
trigger1 = RoundState = 2
trigger1 = Alive = 1
trigger1 = NumPartner = 1
trigger1 = Partner,AuthorName = "ouchi" && Partner,Name = "Agrias_Oaks"
trigger1 = Partner,Var(25)%100 = 7
trigger1 = Partner,Var(10) > 0
value = 1
ignorehitpause = 1

;----------------------------------------------------------------------
; Provocation for AIHARA NATSUMI by YU-TOHARU

[State -2]
type = PowerAdd
triggerall = NumEnemy
triggerall = EnemyNear,Name = "AIHARA NATSUMI" && EnemyNear,AuthorName = "YU-TOHARU"
trigger1 = EnemyNear,StateNo = 197 && EnemyNear,StateTime = 70
value = -45

;----------------------------------------------------------------------
; Provocation for AL AZIF by YU-TOHARU

[State -2]
type = PowerAdd
triggerall = NumEnemy
triggerall = EnemyNear,Name = "AL AZIF" && EnemyNear,AuthorName = "YU-TOHARU"
trigger1 = EnemyNear,StateNo = 195 && EnemyNear,StateTime = 30
value = -45

;----------------------------------------------------------------------
; Provocation for MAMIYA by YU-TOHARU

[State -2]
type = PowerAdd
triggerall = NumEnemy
triggerall = EnemyNear,Name = "MAMIYA" && EnemyNear,AuthorName = "YU-TOHARU"
trigger1 = EnemyNear,StateNo = 195 && EnemyNear,StateTime = 30
value = 1000

;----------------------------------------------------------------------
; Personal Settings
;----------------------------------------------------------------------

[State -2, VarSet]
type = Null;VarSet
trigger1 = 1
var(30) = 1
ignorehitpause = 1

;----------------------------------------------------------------------
; Genocide Gauge
;----------------------------------------------------------------------
;
; var(30)	- Mode - 0:Normal / 1:Genocide
; fvar(22)	- Value
; fvar(23)	- Level
;

[State -2, VarSet]
type = VarSet
trigger1 = fvar(22) <= 0
var(30) = 0
ignorehitpause = 1

[State -2, SelfState]
type = SelfState
trigger1 = Alive
trigger1 = RoundState = 2
trigger1 = var(30) = 0
trigger1 = fvar(22) >= 100
trigger1 = fvar(23) = 3
trigger1 = MoveType = I
trigger1 = StateType != A
trigger1 = Ctrl
value = 800
ignorehitpause = 1

[State -2, VarAdd]
type = VarAdd
trigger1 = StateNo != 800
trigger1 = var(30) = 1
trigger1 = fvar(22) > 0
fvar(22) = -0.24
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = NumHelper(10805) = 0
triggerall = var(30) = 1
triggerall = RoundState = 2
trigger1 = MoveType = H && StateNo = [120,155]
trigger2 = MoveType = H && StateNo = [5000,5150]
trigger3 = MoveType != H
helpertype = normal
name = "Sprite_Layer"
ID = 10805
stateno = 10805
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
size.xscale = 1.0
size.yscale = 1.0

[State -2, Helper]
type = Helper
triggerall = NumHelper(10810) = 0
triggerall = var(30) = 1
triggerall = RoundState = 2
trigger1 = MoveType = H && StateNo = [120,155]
trigger2 = MoveType = H && StateNo = [5000,5150]
trigger3 = MoveType != H
helpertype = normal
name = "Armor"
ID = 10810
stateno = 10810
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
size.xscale = 1.0
size.yscale = 1.0

[State -2, NotHitBy]
type = NotHitBy
trigger1 = var(30) = 1
value = ,AA,AP
time = 1
ignorehitpause = 1

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = var(30) = 1
trigger1 = RoundState < 4
flag = NoStandGuard
flag2 = NoCrouchGuard
flag3 = NoAirGuard
ignorehitpause = 1

[State -2, AssertSpecial]
type = AssertSpecial
triggerall = var(30) = 1
triggerall = RoundState < 4
trigger1 = MoveType = H && StateNo = [120,155]
trigger2 = MoveType = H && StateNo = [5000,5150]
trigger3 = MoveType != H
flag = Invisible
ignorehitpause = 1

;----------------------------------------------------------------------
; Gauge Level

[State -2, VarAdd]		;Lv.1 Flag
type = VarSet
trigger1 = fvar(22) < 37.5
fvar(23) = 1
ignorehitpause = 1

[State -2, VarAdd]		;Lv.2 Flag
type = VarSet
trigger1 = fvar(22) >= 37.5
trigger1 = fvar(22) < 75
fvar(23) = 2
ignorehitpause = 1

[State -2, VarAdd]		;Lv.3 Flag
type = VarSet
trigger1 = fvar(22) >= 75
fvar(23) = 3
ignorehitpause = 1

[State -2, VarAdd]		;Genocide Flag
type = VarSet
trigger1 = var(30) = 1
fvar(23) = 4
ignorehitpause = 1

[State -2, VarAdd]		;Reset
type = VarSet
trigger1 = fvar(22) > 100
fvar(22) = 100
ignorehitpause = 1

[State -2, VarAdd]		;Reset
type = VarSet
trigger1 = fvar(22) < 0
fvar(22) = 0
ignorehitpause = 1

;----------------------------------------------------------------------
; RemoveExplod

[State -2, RemoveExplod]	;Remove Lv.1
type = RemoveExplod
trigger1 = fvar(23) != 1
ID = 10047
ignorehitpause = 1

[State -2, RemoveExplod]	;Remove Lv.2
type = RemoveExplod
trigger1 = fvar(23) != 2
ID = 10048
ignorehitpause = 1

[State -2, RemoveExplod]	;Remove Lv.3
type = RemoveExplod
trigger1 = fvar(23) != 3
ID = 10049
ignorehitpause = 1

[State -2, RemoveExplod]	;Remove Genocide Gauge
type = RemoveExplod
trigger1 = var(30) != 1
ID = 10050
ignorehitpause = 1

;----------------------------------------------------------------------
; Render Gauge

[State -2, Explod]			;Lv.1
type = Explod
trigger1 = NumExplod(10047) = 0
trigger1 = fvar(23) = 1
anim = 10047
ID = 10047
pos = ifelse(TeamSide = 1,27,293),8
postype = Left
bindtime = -1
removetime = -1
ownpal = 1
ontop = 1
sprpriority = -4
facing = ifelse(TeamSide = 1,1,-1)
pausemovetime = 999999
supermovetime = 999999
scale = 1,1
ignorehitpause = 1

[State -2, Explod]			;Lv.2
type = Explod
trigger1 = NumExplod(10048) = 0
trigger1 = fvar(23) = 2
anim = 10048
ID = 10048
pos = ifelse(TeamSide = 1,27,293),8
postype = Left
bindtime = -1
removetime = -1
ownpal = 1
ontop = 1
sprpriority = -4
facing = ifelse(TeamSide = 1,1,-1)
pausemovetime = 999999
supermovetime = 999999
scale = 1,1
ignorehitpause = 1

[State -2, Explod]			;Lv.3
type = Explod
trigger1 = NumExplod(10049) = 0
trigger1 = fvar(23) = 3
anim = 10049
ID = 10049
pos = ifelse(TeamSide = 1,27,293),8
postype = Left
bindtime = -1
removetime = -1
ownpal = 1
ontop = 1
sprpriority = -4
facing = ifelse(TeamSide = 1,1,-1)
pausemovetime = 999999
supermovetime = 999999
scale = 1,1
ignorehitpause = 1

[State -2, Explod]			;Genocide
type = Explod
trigger1 = NumExplod(10050) = 0
trigger1 = fvar(23) = 4
anim = 10050
ID = 10050
pos = ifelse(TeamSide = 1,27,293),8
postype = Left
bindtime = -1
removetime = -1
ownpal = 1
ontop = 1
sprpriority = -4
facing = ifelse(TeamSide = 1,1,-1)
pausemovetime = 999999
supermovetime = 999999
scale = 1,1
ignorehitpause = 1

;----------------------------------------------------------------------
; ModifyExplod

[State -2, ModifyExplod]	;Lv.1
type = ModifyExplod
trigger1 = NumExplod(10047) = 1
trigger1 = fvar(23) = 1
ID = 10047
scale = fvar(22)/100,1
postype = Left
pos = ifelse(TeamSide = 1,27+var(23),293-var(23)),8+var(24)
ignorehitpause = 1

[State -2, ModifyExplod]	;Lv.2
type = ModifyExplod
trigger1 = NumExplod(10048) = 1
trigger1 = fvar(23) = 2
ID = 10048
scale = fvar(22)/100,1
postype = Left
pos = ifelse(TeamSide = 1,27+var(23),293-var(23)),8+var(24)
ignorehitpause = 1

[State -2, ModifyExplod]	;Lv.3
type = ModifyExplod
trigger1 = NumExplod(10049) = 1
trigger1 = fvar(23) = 3
ID = 10049
scale = fvar(22)/100,1
postype = Left
pos = ifelse(TeamSide = 1,27+var(23),293-var(23)),8+var(24)
ignorehitpause = 1

[State -2, ModifyExplod]	;Genocide
type = ModifyExplod
trigger1 = NumExplod(10050) = 1
trigger1 = fvar(23) = 4
ID = 10050
scale = fvar(22)/100,1
postype = Left
pos = ifelse(TeamSide = 1,27+var(23),293-var(23)),8+var(24)
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Blood (for StateNo = 210, 220, 260)

[State -2, Explod]
type = Explod
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 210
trigger2 = StateNo = 220
trigger3 = StateNo = 260
anim = 10700
pos = ceil(P2Dist X),-60
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 4
facing = 1
pausemovetime = 0
supermovetime = 0
scale = 1,1
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 210
trigger2 = StateNo = 220
trigger3 = StateNo = 260
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-60
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 210
trigger2 = StateNo = 220
trigger3 = StateNo = 260
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-60
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 210
trigger2 = StateNo = 220
trigger3 = StateNo = 260
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-60
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood (for StateNo = 310, 360)

[State -2, Explod]
type = Explod
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 310
trigger2 = StateNo = 360
anim = 10700
pos = ceil(P2Dist X),-30
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 4
facing = 1
pausemovetime = 0
supermovetime = 0
scale = 1,1
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 310
trigger2 = StateNo = 360
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 310
trigger2 = StateNo = 360
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 310
trigger2 = StateNo = 360
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood (for StateNo = 410)

[State -2, Explod]
type = Explod
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 410
trigger1 = AnimElemTime(4) < 0
anim = 10700
pos = ceil(P2Dist X),-30
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 4
facing = 1
pausemovetime = 0
supermovetime = 0
scale = 1,1
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 410
trigger1 = AnimElemTime(4) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 410
trigger1 = AnimElemTime(4) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 410
trigger1 = AnimElemTime(4) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood (for StateNo = 1001)

[State -2, Explod]
type = Explod
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1001
anim = 10700
pos = ceil(P2Dist X),-30
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 4
facing = 1
pausemovetime = 0
supermovetime = 0
scale = 1,1
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1001
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1001
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1001
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1001
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1001
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1001
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood (for StateNo = 1011)

[State -2, Explod]
type = Explod
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1011
trigger1 = AnimElemTime(5) < 0
anim = 10700
pos = ceil(P2Dist X),-30
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 4
facing = 1
pausemovetime = 0
supermovetime = 0
scale = 1,1
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1011
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1011
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1011
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1011
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1011
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1011
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1011
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1011
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10712
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood (for StateNo = 1021)

[State -2, Explod]
type = Explod
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1021
trigger1 = AnimElemTime(5) < 0
anim = 10700
pos = ceil(P2Dist X),-30
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 4
facing = 1
pausemovetime = 0
supermovetime = 0
scale = 1,1
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1021
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1021
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1021
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1021
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1021
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1021
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1021
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10712
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1021
trigger1 = AnimElemTime(5) < 0
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10712
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood (for StateNo = 1051, 1061, 1071)

[State -2, Explod]
type = Explod
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1051
trigger2 = StateNo = 1061
trigger3 = StateNo = 1071
anim = 10700
pos = ceil(P2Dist X),-30
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 4
facing = 1
pausemovetime = 0
supermovetime = 0
scale = 1,1
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1051
trigger2 = StateNo = 1061
trigger3 = StateNo = 1071
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1051
trigger2 = StateNo = 1061
trigger3 = StateNo = 1071
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1051
trigger2 = StateNo = 1061
trigger3 = StateNo = 1071
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1051
trigger2 = StateNo = 1061
trigger3 = StateNo = 1071
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1051
trigger2 = StateNo = 1061
trigger3 = StateNo = 1071
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1051
trigger2 = StateNo = 1061
trigger3 = StateNo = 1071
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1051
trigger2 = StateNo = 1061
trigger3 = StateNo = 1071
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1051
trigger2 = StateNo = 1061
trigger3 = StateNo = 1071
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10712
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood (for StateNo = 1100, 1105)

[State -2, Explod]
type = Explod
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1100
trigger2 = StateNo = 1105
anim = 10700
pos = ceil(P2Dist X),-40
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 4
facing = 1
pausemovetime = 0
supermovetime = 0
scale = 1,1
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1100
trigger2 = StateNo = 1105
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1100
trigger2 = StateNo = 1105
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1100
trigger2 = StateNo = 1105
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1100
trigger2 = StateNo = 1105
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1100
trigger2 = StateNo = 1105
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1100
trigger2 = StateNo = 1105
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood (for StateNo = 1110)

[State -2, Explod]
type = Explod
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1110
anim = 10700
pos = ceil(P2Dist X),-40
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 4
facing = 1
pausemovetime = 0
supermovetime = 0
scale = 1,1
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1110
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1110
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1110
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1110
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1110
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1110
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1110
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1110
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10712
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood (for StateNo = 1120, 61120)

[State -2, Explod]
type = Explod
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1120
trigger2 = StateNo = 61120
anim = 10700
pos = ceil(P2Dist X),-40
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 4
facing = 1
pausemovetime = 0
supermovetime = 0
scale = 1,1
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1120
trigger2 = StateNo = 61120
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1120
trigger2 = StateNo = 61120
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1120
trigger2 = StateNo = 61120
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1120
trigger2 = StateNo = 61120
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1120
trigger2 = StateNo = 61120
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1120
trigger2 = StateNo = 61120
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1120
trigger2 = StateNo = 61120
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1120
trigger2 = StateNo = 61120
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1120
trigger2 = StateNo = 61120
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10712
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1120
trigger2 = StateNo = 61120
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-40
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10712
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood (for StateNo = 1150, 1160, 1170, 61170)

[State -2, Explod]
type = Explod
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1150
trigger2 = StateNo = 1160
trigger3 = stateno = 1170
trigger4 = stateno = 61170
anim = 10700
pos = ceil(P2Dist X),-30
postype = p1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 4
facing = 1
pausemovetime = 0
supermovetime = 0
scale = 1,1
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1150
trigger2 = StateNo = 1160
trigger3 = stateno = 1170
trigger4 = stateno = 61170
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1150
trigger2 = StateNo = 1160
trigger3 = stateno = 1170
trigger4 = stateno = 61170
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1150
trigger2 = StateNo = 1160
trigger3 = stateno = 1170
trigger4 = stateno = 61170
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1150
trigger2 = StateNo = 1160
trigger3 = stateno = 1170
trigger4 = stateno = 61170
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1150
trigger2 = StateNo = 1160
trigger3 = stateno = 1170
trigger4 = stateno = 61170
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1150
trigger2 = StateNo = 1160
trigger3 = stateno = 1170
trigger4 = stateno = 61170
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1150
trigger2 = StateNo = 1160
trigger3 = stateno = 1170
trigger4 = stateno = 61170
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

[State -2, Blood]
type = Helper
triggerall = var(2) = 1
triggerall = MoveHit
trigger1 = StateNo = 1150
trigger2 = StateNo = 1160
trigger3 = stateno = 1170
trigger4 = stateno = 61170
helpertype = normal
name = "Blood"
postype = p1
pos = ceil(P2Dist X),-30
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10712
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood (for StateNo = 1200)

[State -2, Blood]
type = Helper
trigger1 = NumProjID(10721)
helpertype = normal
name = "Blood"
postype = p2
pos = 0,-50
facing = -1
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
trigger1 = NumProjID(10721)
helpertype = normal
name = "Blood"
postype = p2
pos = 0,-50
facing = -1
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
trigger1 = NumProjID(10721)
helpertype = normal
name = "Blood"
postype = p2
pos = 0,-50
facing = -1
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
trigger1 = NumProjID(10721)
helpertype = normal
name = "Blood"
postype = p2
pos = 0,-50
facing = -1
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10710
ignorehitpause = 1

[State -2, Blood]
type = Helper
trigger1 = NumProjID(10721)
helpertype = normal
name = "Blood"
postype = p2
pos = 0,-50
facing = -1
pausemovetime = 0
supermovetime = 0
stateno = 10710
ID = 10711
ignorehitpause = 1

;----------------------------------------------------------------------
; Armor

[State -3, VarSet]	;Anim
type = VarSet
trigger1 = MoveType != H
trigger1 = StateNo != 950
var(12) = Anim
ignorehitpause = 1

[State -3, VarSet]	;AnimElemNo
type = VarSet
trigger1 = MoveType != H
trigger1 = StateNo != 950
var(13) = AnimElemNo(0)
ignorehitpause = 1

[State -3, VarSet]	;StateNo
type = VarSet
trigger1 = MoveType != H
trigger1 = StateNo != 950
var(37) = StateNo
ignorehitpause = 1

[State -3, VarSet]	;Reset
type = VarSet
trigger1 = StateNo = 0
var(38) = 0
ignorehitpause = 1

[State -3, VarSet]	;Time
type = VarSet
trigger1 = MoveType != H
trigger1 = StateNo != 950
var(39) = Time
ignorehitpause = 1

;----------------------------------------------------------------------
; Debug

[State -3, DisplayToClipBoard]
type = DisplayToClipBoard
trigger1 = 1
text = "fv0=%f, fv1=%f, fv2=%f, fv6=%f, fv18=%f"
params = fvar(0),fvar(1),fvar(2),fvar(6),fvar(18)
ignorehitpause = 1

