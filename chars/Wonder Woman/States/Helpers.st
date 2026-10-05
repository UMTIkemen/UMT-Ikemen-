; _________________________________________
;| Chun-Li by Jmorphman                    |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<HELPER STATES>========================================
;==============================================================================================

;====================<PARRY HELPER>=========================
[StateDef 765]
type = A
physics = N
moveType = I
anim = ifElse(Root, StateType = C, 766, ifElse(Root, StateType = A, 767, 765))
velSet = 0,0
ctrl = 0

[State 765, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 765, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1

[State 765, Change to Crouching]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && ifElse(Root, NumExplod(92828282) || Root, NumExplod(92468246), Root, command = "up", Root, command = "down")
trigger2 = Root, AILevel && (Root, StateType != A) && P2StateType = C
value = 766

[State 765, Change to Standing / Jumping]
type = ChangeAnim
triggerAll = !Time
trigger1 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = !(Root, AILevel) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")
trigger2 = Root, NumExplod(94646464) || Root, NumExplod(92468246)
trigger2 = !(Root, AILevel) && ifElse(Root, P2dist x >= 0, Root, command = "back", Root, command = "fwd")
trigger3 = Root, AILevel && Anim != 766
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Change to Standing / Jumping]
type = ChangeAnim
trigger1 = Anim = 765 || Anim = 767
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Disable]
type = VarSet
trigger1 = Time >= ifElse((Root, StateType = A), 7, 8)
trigger2 = Facing != (Root, Facing)
trigger3 = !(Root, ctrl)
trigger3 = (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
var(0) = 1

[State 765, Disable]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = !Root, NumExplod(92828282) && !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") + Root, command = "holddown") > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") || Root, command = "holddown")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")) || (Anim = 766 && Root, command = "down"))
var(0) = 1

[State 765, Disable (Reverse Commands)]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = Root, NumExplod(94646464) || Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd") + ifElse(Root, NumExplod(92468246), Root, command = "holdup", Root, command = "holddown")) > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd") || ifElse(Root, NumExplod(92468246), Root, command = "holdup", Root, command = "holddown"))
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "back", Root, command = "fwd")) || (Anim = 766 && ifElse(Root, NumExplod(92468246), Root, command = "up", Root, command = "down")))
var(0) = 1

[State 765, Disable (Reverse Up/Down only)]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = Root, NumExplod(92828282) && !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") + Root, command = "holdup") > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") || Root, command = "holdup")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")) || (Anim = 766 && Root, command = "up"))
var(0) = 1

[State 765, Disable]
type = ChangeAnim
trigger1 = var(0) = 1
value = 1

[State 765, Standing/Air]
type = ReversalDef
trigger1 = !var(0) && (Anim = 765 || Anim = 767)
trigger1 = (Root, StateNo != 5120) || !(Root, AnimTime)
reversal.attr = SCA,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Crouching]
type = ReversalDef
trigger1 = !var(0) && Anim = 766
reversal.attr = SC,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Disable]
type = ReversalDef
trigger1 = var(0) = 1
reversal.attr =
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, End]
type = DestroySelf
trigger1 = Time >= 18
trigger2 = (Root, MoveType != I)
trigger3 = !(Root, ctrl) && (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
trigger4 = (Root, StateNo = [760,762]) && (Root, Time <= 1)


;Success
[StateDef 766]
moveType = I
ctrl = 0

[State 766, Disable]
type = VarSet
trigger1 = 1
var(0) = 1

[State 766, End]
type = DestroySelf
trigger1 = Root, StateNo = [760,762]
trigger2 = Time >= 2



;====================<KIKOKEN PROJECTILE>=========================
[StateDef 1005]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1005, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1005, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1015

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005 && Anim != 1006
value = 1005

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Anim = 1006, 0, ifElse(IsHelper(1035), 3.125, ifElse(var(10) = 2, 6.25, ifElse(var(10) = 1, 5, 3.75))))

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1005, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 1005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = IsHelper(1005)
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)))), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, EX HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = IsHelper(1035)
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
triggerAll = IsHelper(1005)
trigger1 = !var(10) && var(12) >= ifElse(Root, var(40), 48, 46)
trigger2 = var(10) = 1 && var(12) >= ifElse(Root, var(40), 34, 21)
trigger3 = var(10) = 2 && var(12) >= ifElse(Root, var(40), 15, 8)
value = 1006
ignoreHitPause = 1
persistent = 0

[State 1005, Timer]
type = VarAdd
trigger1 = 1
var(12) = 1

[State 1005, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
trigger2 = Anim = 1006 && !AnimTime
var(39) = -1

[State 1005, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
trigger2 = Anim = 1006 && !AnimTime


;Hit Pause
[StateDef 1006]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = 1007


;Disappear
[StateDef 1007]
type = A
physics = N
moveType = A
anim = 1007
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1007, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 2
volume = -128
lowPriority = 1

[State 1007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008


;Wait
[StateDef 1008]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 1008, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target, HitShakeOver)

;=============================================================================

;========================<PROJECTILE HITTER>=============================
[Statedef 1009]
type=A
physics=N
movetype=I
anim=8787
ctrl=0

[State 1007, End]
type=destroyself
trigger1= (root,stateno!=750) && (root,stateno!=3750)
trigger2= root,stateno=3750 && root,anim!=755
trigger3= root,stateno=750 && (root,anim!=750 || animelemtime(6)<0)

[State 1007, elemvar]
type=varset
trigger1= !(root,hitpausetime)
var(0)=(root,animelemno(0))

[State 1007, Anim]
type=changeanim
trigger1= 1
value=root,anim
elem=var(0)

[State 1007, HitOverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=1009
ignorehitpause=1

[State 1007, HB]
type=hitby
trigger1= (root,stateno=750)
time=-1
value=SCA,NP
ignorehitpause=1

[State 1007, HB]
type=hitby
trigger1= (root,stateno=3750)
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1007, Bind]
type=bindtoroot
trigger1= 1
time=-1

[State 1007, Assert]
type=assertspecial
trigger1= 1
flag=invisible
;---------------------------------------------------------------------------------

;====================<KIKOKEN PROJECTILE (REFLECTED)>=========================
[StateDef 1015]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1015, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != 1015

[State 1015, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1015, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1005

[State 1015, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1015, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1015, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005 && Anim != 1006
value = 1005

[State 1015, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Anim = 1006, 0, ifElse(var(10) = 2 || IsHelper(1035), 6.25, ifElse(var(10) = 1, 5, 3.75)))

[State 1015, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1015, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1015, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && PrevStateNo != 1015
var(39) = -1

[State 1015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1015, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1015, HitDef]
type = HitDef
trigger1 = IsHelper(1005)
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)))), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1015, EX HitDef]
type = HitDef
trigger1 = IsHelper(1035)
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1015, Turn]
type = Turn
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1015, ChangeAnim]
type = ChangeAnim
triggerAll = IsHelper(1005)
trigger1 = !var(10) && var(12) >= ifElse(Root, var(40), 48, 46)
trigger2 = var(10) = 1 && var(12) >= ifElse(Root, var(40), 34, 21)
trigger3 = var(10) = 2 && var(12) >= ifElse(Root, var(40), 15, 8)
value = 1006
ignoreHitPause = 1
persistent = 0

[State 1015, Timer]
type = VarAdd
trigger1 = 1
var(12) = 1

[State 1015, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
trigger2 = Anim = 1006 && !AnimTime

;========================<FINAL PSYCHO CRUSHER>=============================
[Statedef 4006]
physics=N
anim=4006
sprpriority=5
velset=-2,0

[State 4006, Assert]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 4006, Bind]
type=bindtoroot
trigger1= (root,stateno=3750) && (root,anim=755)
pos= 160-(20*time), -60

[State 4006, Shrink]
type=angledraw
trigger1= 1
scale= .25+(.03125*time), .5+(.0625*time)

[State 4006, fadeout]
type=trans
trigger1= 1
trans=addalpha
alpha=256-(16*time),256

[State 4006, End]
type=destroyself
trigger1= time>=16


;--------------------------------------------------------------------------------

;====================<KIKOSHO PROJECTILE SHIELD>=========================
[StateDef 3004]
type = S
physics = N
moveType = A
ctrl = 0
anim = 3004
sprPriority = 3

[State 3004, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 72, -58
ignoreHitPause = 1

[State 3004, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 3004
ignoreHitPause = 1

[State 3004, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3004, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3004
value = 3004

[State 3004, Miss]
type = HitDef
trigger1 = 1
attr = S, HP
hitFlag =
sparkXY = -10,0

[State 3004, End]
type = DestroySelf
trigger1 = Root, StateNo != 3000 && Root, StateNo != 3050
trigger2 = Root, MoveType = H
trigger3 = Root, StateNo = 3000 && Root, AnimElemTime(18) = 3
trigger4 = Root, StateNo = 3050 && Root, AnimElemTime(36) = 3




;====================<HOSENKA TORNADO EFFECT>=========================
[StateDef 3315]
type = S
physics = N
moveType = I
ctrl = 0
anim = 3315
sprPriority = 3

[State 3315, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3315, Scale]
type = AngleDraw
trigger1 = Time < 20
scale = 1, 0.03125 + (0.0484375 * Time)
ignoreHitPause = 1

[State 3315, ChangeState]
type = ChangeState
trigger1 = Root, StateNo = 3310 && Root, AnimElem = 51
value = 3316
ignoreHitPause = 1

[State 3315, End]
type = DestroySelf
trigger1 = Root, StateNo != 3310
trigger2 = Root, MoveType = H


;Disappear
[StateDef 3316]
type = S
physics = N
moveType = I
anim = 3316
ctrl = 0
velSet = 0,0
sprPriority = 3

[State 3316, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (32 * Time), 256
ignoreHitPause = 1

[State 3315, End]
type = DestroySelf
trigger1 = Root, StateNo != 3310
trigger2 = Root, MoveType = H
trigger3 = Time >= 8



;====================<SHADOW DISTORTION>====================
[StateDef 6010]
type = A
physics = N
anim = 1
sprPriority = 2
ctrl = 0

[State 6010, RemapPal]
type = RemapPal
trigger1 = !Time
source = 1,1
dest = 1,Root,var(0)

[State 6010, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignoreHitPause = 1

[State 6010, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = -1 + (Random % 3), -1 + (Random % 3)
facing = 1

[State 6010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,128
ignoreHitPause = 1

[State 6010, VarSet]
type = VarSet
trigger1 = !(Root, HitPauseTime)
var(0) = (Root, Anim)

[State 6010, VarSet]
type = VarSet
trigger1 = !(Root, HitPauseTime)
var(1) = (Root, AnimElemNo(0))

[State 6010, ChangeAnim]
type = ChangeAnim
trigger1 = GameTime <= Root, var(58)
value = var(0)
elem = var(1)

[State 6010, AssertSpecial: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6010, AssertSpecial: Invisible]
type = AssertSpecial
trigger1 = GameTime > Root, var(58)
flag = Invisible

[State 6010, ChangeAnim]
type = ChangeAnim
trigger1 = GameTime > Root, var(58)
value = 1



;========================<SPARKS>=============================
;Guard Spark (Normal)
[StateDef 8000]
type = A
physics = N
moveType = I
anim = 8000
velset = 0,0
sprPriority = 5

[State 8000, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8000, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8000, End]
type = DestroySelf
trigger1 = Time >= 8


;Guard Spark (Special)
[StateDef 8001]
type = A
physics = N
moveType = I
anim = 8001
velSet = 0,0
sprPriority = 5

[State 8001, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8001, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8001, End]
type = DestroySelf
trigger1 = Time >= 8


;Weak Hit Spark
[StateDef 8010]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8010, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8010, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.3 - (Time * 0.03)) * 0.65, (0.3 - (Time * 0.03)) * 0.65
ignoreHitPause = 1

[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8010, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.15 + (0.009375 * Time)) * 0.65, (0.15 + (0.009375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.15 + (0.009375 * Time)) * 0.65, (0.15 + (0.009375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8010, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.3 - (0.0375 * Time)) * 0.65, (0.3 - (0.0375 * Time)) * 0.65
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8010, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16


;Medium Hit Spark
[StateDef 8011]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8011, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8011, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8011, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.35 - (Time * 0.035)) * 0.65, (0.35 - (Time * 0.035)) * 0.65
ignoreHitPause = 1

[State 8011, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8011, Center]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removetime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.175 + (0.0109375 * Time)) * 0.65, (0.175 + (0.0109375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.175 + (0.0109375 * Time)) * 0.65, (0.175 + (0.0109375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.35 - (0.04375 * Time)) * 0.65, (0.35 - (0.04375 * Time)) * 0.65
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8011, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8011, End]
type = DestroySelf
trigger1 = Time >= 16


;Strong Hit Spark
[StateDef 8012]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8012, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8012, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8012, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.4 - (Time * 0.04)) * 0.65, (0.4 - (Time * 0.04)) * 0.65
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8012, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.2 + (0.0125 * Time)) * 0.65, (0.2 + (0.0125 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.2 + (0.0125 * Time)) * 0.65, (0.2 + (0.0125 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.4 - (0.05 * Time)) * 0.65, (0.4 - (0.05 * Time)) * 0.65
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8012, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8012, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Hit Spark
[StateDef 8013]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8013, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8013, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8013, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.45 - (Time * 0.045)) * 0.65, (0.45 - (Time * 0.045)) * 0.65
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8013, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.225 + (0.0140625 * Time)) * 0.65, (0.225 + (0.0140625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.225 + (0.0140625 * Time)) * 0.65, (0.225 + (0.0140625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod]
type = ModifyExplod
trigger1= NumExplod(3)
ID = 3
scale = (0.4) * 0.65, (0.4) * 0.65
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.45 - (0.05625 * Time)) * 0.65, (0.45 - (0.05625 * Time)) * 0.65
trans = AddAlpha
alpha = 192 - (24 * Time), 256

[State 8013, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8013, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Hit Spark
[StateDef 8014]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8014, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8014, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8014, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.5 - (Time * 0.05)) * 0.65, (0.5 - (Time * 0.05)) * 0.65
ignoreHitPause = 1

[State 8014, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8014, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.25 + (0.015625 * Time)) * 0.65, (0.25 + (0.015625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.25 + (0.015625 * Time)) * 0.65, (0.25 + (0.015625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = ifElse((Parent, StateNo = [3000,3999]), -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = (0.5) * 0.65, (0.5) * 0.65
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.5 - (0.0625 * Time)) * 0.65, (0.5 - (0.0625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16


;Normal Slash Spark
[StateDef 8015]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8015, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8015, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8015, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2) * 0.65, ((1 - (Time * 0.1)) / 2) * 0.65
ignoreHitPause = 1

[State 8015, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8015, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8015, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.2 + (0.0125 * Time)) * 0.65, (0.2 + (0.0125 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8015, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8015, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Slash Spark
[StateDef 8016]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8016, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8016, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8016, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2) * 0.65, ((1 - (Time * 0.1)) / 2) * 0.65
ignoreHitPause = 1

[State 8016, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8016, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8016, Circle]
type = Explod
trigger1 = !Time
anim = 8016
ID = 8016
posType = p1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8016, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8016)
ID = 8016
scale = (0.25 + (0.025 * Time)) * 0.65, (0.25 + (0.025 * Time)) * 0.65
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8016, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8016, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.225 + (0.0140625 * Time)) * 0.65, (0.225 + (0.0140625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8016, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8016, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Move Slash Spark
[StateDef 8017]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8017, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8017, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8017, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2) * 0.65, ((1 - (Time * 0.1)) / 2) * 0.65
ignoreHitPause = 1

[State 8017, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8017, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8017, Circle]
type = Explod
trigger1 = !Time
anim = 8016
ID = 8016
posType = p1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8017, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8016)
ID = 8016
scale = (0.3 + (0.03 * Time)) * 0.65, (0.3 + (0.03 * Time)) * 0.65
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8017, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8017, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.25 + (0.015625 * Time)) * 0.65, (0.25 + (0.015625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8017, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8017, End]
type = DestroySelf
trigger1 = Time >= 16


;Reversal Spark
[StateDef 8020]
type = A
physics = N
moveType = I
anim = 8020
velSet = 0,0
sprPriority = 5

[State 8020, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8020, Scale]
type = AngleDraw
trigger1 = 1
scale = (0.25 + (0.09375 * Time)) * 0.65, (0.25 + (0.09375 * Time)) * 0.65
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8020, End]
type = DestroySelf
trigger1 = Time >= 8



;======================<JUMP DUST>===========================
[StateDef 8100]
type = S
anim = 1
velSet = 0,0

[State 8100, Bind]
type = BindToRoot
trigger1 = Time

[State 8100, Floor Dust]
type = Explod
trigger1 = !Time
anim = 8100
sprPriority = 3
posType = P1
pos = 0, ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, Player Dust]
type = Explod
trigger1 = !Time || Time = 2 || Time = 6
anim = 8101
sprPriority = 3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, End]
type = DestroySelf
trigger1 = Time >= 7



;======================<DASH DUST>===========================
[StateDef 8103]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8103, posSet]
type = PosSet
trigger1 = !Time = 0
y = 0

[State 8103, Dash Dust]
type = Explod
trigger1 = Time = 0 || Time = 3 || Time = 6
anim = 8103
ID = ifElse((Time = 6), 3, ifElse((Time = 3), 2, 1))
posType = P1
pos = 0,-4
random = 8,8
vel = -3 - (Random / 1000.0), -2 - (Random / 2000.0)
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 16
sprPriority = 3
pauseMoveTime = -1
superMoveTime = -1

[State 8103, Scale Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.1 + (0.025 * Time), 0.1 + (0.025 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8103, Scale Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.1 + (0.025 * (Time - 3)), 0.1 + (0.025 * (Time - 3))
trans = AddAlpha
alpha = 256 - (16 * (Time - 3)), 256

[State 8103, Scale Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.1 + (0.025 * (Time - 6)), 0.1 + (0.025 * (Time - 6))
trans = AddAlpha
alpha = 256 - (16 * (Time - 6)), 256

[State 8103, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 22

[State 8103, End]
type = DestroySelf
trigger1 = !NumExplod



;======================<IMPACT DUST>===========================
[StateDef 8110]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8110, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8110
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8120
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8110, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8110, End]
type = DestroySelf
trigger1 = !NumExplod



;========================<FLAMES>=============================
[StateDef 8150]
type = A
velSet = 0,0
anim = 1

[State 8150, Player]
type = VarSet
trigger1 = !Time
var(0) = Parent, var(43)

[State 8150, PosSet]
type = PosSet
trigger1 = PlayerIDexist(var(0))
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8150, PosSet (Laying Down)]
type = PosSet
trigger1 = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) - 20

[State 8150, Facing]
type = Turn
trigger1 = PlayerIDexist(var(0))
trigger1 = Facing != (PlayerID(var(0)), Facing)

[State 8150, Flame Explod 1]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150
sprPriority = 3
posType = P1
random = 40,40
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8150, Flames Explod 2]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150
sprPriority = 3
posType = P1
random = 60,60
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8150, End]
type = DestroySelf
trigger1 = Time >= 600
trigger2 = !PlayerIDexist(var(0))

[State 8150, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), Movetype != H || PlayerID(var(0)), StateNo = 5300
trigger3 = PlayerID(var(0)), StateType = L && (PlayerID(var(0)), StateNo != [5080,5081])
trigger4 = Root, MoveHit



;========================<RECOVER FX>=============================
[StateDef 8200]
type = A
velSet = 0,0
anim = 8200
sprPriority = 5

[State 8200, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8200, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.017 * Time), 0.25 + (0.017 * Time)
ignoreHitPause = 1

[State 8200, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = ceil(256 - 17.1 * Time), 256
ignoreHitPause = 1

[State 8200, End]
type = DestroySelf
trigger1 = Time >= 15



;========================<COUNTER FX>=============================
[StateDef 8290]
type = A
physics = N
velSet = 0,0
anim = 1

[State 8290, "Counter!" Text Explod]
type = Explod
trigger1 = !NumExplod(8290)
anim = 8290
ID = 8290
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8290
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8290
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8290, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8290, End]
type = DestroySelf
trigger1 = Time >= 16



;==================<POWER CHARGE FX>==================
;Aura and Dust
[StateDef 8330]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velset = 0,0

[State 8330, BindToRoot]
type = BindToRoot
trigger1 = (Root, StateNo = 730)
pos = 14,0

[State 8330, Charging Sound]
type = PlaySnd
trigger1 = !Time
value = 730,0
channel = 0

[State 8330, Power Charge Aura]
type = Explod
trigger1 = !NumExplod(8330)
ID = 8330
anim = 8330
sprPriority = 3
posType = P1
bindTime = -1
removeTime = -1
pos=-20,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Power Charge Dust]
type = Explod
trigger1 = !(Time % 6)
anim = 8105
sprPriority = -3
posType = P1
pos = -20, -ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Modify Aura 1]
type = ModifyExplod
trigger1 = Numexplod(8330) && Root, Power < 3000
ID = 8330
scale = 0.5, 0.1 + 0.4 * (Root, Power / 3000.0)

[State 8330, Modify Aura 2]
type = ModifyExplod
trigger1 = NumExplod(8330) && Root, Power >= 3000
ID = 8330
scale = 0.5, 0.5

[State 8330, StopSnd]
type = StopSnd
trigger1 = Root, StateNo != 730
channel = 0

[State 8330, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8330, End]
type = DestroySelf
trigger1 = Root, StateNo != 730


;Particles
[StateDef 8331]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8331, BindToRoot]
type = BindToRoot
trigger1 = !(Time % 8)
pos = ceil(-151 + (Random / 3.125)), ceil(98 - (Random / 3.125))

[State 8331, Particle]
type = Explod
trigger1 = (Time % 8) = 1
anim = 8331
sprPriority = ifElse(Random < 750, 5, -1)
posType = P1
vel = ((RootDist x - 17) / 32.0), ((RootDist y - 31) / 32.0)
scale = ifElse(Random < 500, 0.5, -0.5), ifElse(Random < 500, 0.5, -0.5)
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8331, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8331, End]
type = DestroySelf
trigger1 = Root, StateNo != 730



;==================<ZERO COUNTER FX>==================
[StateDef 8350]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8350, bgPalFX]
type = bgPalFX
trigger1 = 1
time = 1
color = 16 * Time
mul = 16 * Time, 16 * Time, 16 * Time

[State 8350, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8350
ID = 1
sprPriority = 3
posType = P1
removeTime = 16
superMoveTime = -1
ownPal = 1

[State 8350, Scale]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.0625 * Time), (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8350, Lightning Explod]
type = Explod
trigger1 = !Time
anim = 8351
ID = 2
sprPriority = -2
posType = P1
pos = 0, -ceil(pos y)
superMoveTime = -1
ownPal = 1

[State 8350, End]
type = DestroySelf
trigger1 = Time >= 16



;========================<CUSTOM COMBO>=============================
[StateDef 8400]
type = A
physics = N
moveType = I
anim = 8400
ctrl = 0
velSet = 0,0
sprPriority = 5

[State 8400, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8400, BGpalFX]
type = BGpalFX
trigger1 = Time < 25
time = 1
mul = 128,128,128

[State 8400, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8400, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8400, Scale]
type = AngleDraw
trigger1 = Time < 8
scale = (0.0625 * Time), (0.0625 * Time)
ignoreHitPause = 1

[State 8400, Scale]
type = AngleDraw
trigger1 = Time >= 8
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time < 16
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time >= 16
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256
ignoreHitPause = 1

[State 8400, Lines Explod]
type = Explod
trigger1 = !Time
anim = 8401
ID = 1
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8400, Scale Lines Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 2 - (0.125 * Time), 2 - (0.125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8400, Circle Explod]
type = Explod
trigger1 = Time = 16
anim = 8402
ID = 2
sprPriority = 5
posType = P1
removeTime = 32
superMoveTime = -1

[State 8400, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.1 * (Time - 16)), (0.1 * (Time - 16))
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256

[State 8400, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 26

[State 8400, End]
type = DestroySelf
trigger1 = Time >= 26



;========================<SUPER PAUSE FX>=============================
;Level 1 Super FX
[StateDef 8500]
type = A
velSet = 0,0
anim = 8500
sprPriority = 5

[State 8500, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8500, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 0,0,256

[State 8500, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8500, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8500, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8500, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5,0.5
ignoreHitPause = 1

[State 8500, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8500, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8501
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8500, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8500, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8502
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8500, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8500, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 2 Super FX
[StateDef 8510]
type = A
velSet = 0,0
anim = 8510
sprPriority = 5

[State 8510, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8510, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 192,0,256

[State 8510, Rotate]
type = AngleSet
trigger1 = !Time
value =6 * (Random % 60)

[State 8510, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8510, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8510, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8510, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8510, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8511
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8510, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8510, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8510, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8510, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 -(0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8510, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8512
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 32
superMoveTime = -1

[State 8510, Scale]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24)<4, 64 * (Time - 24), 256), 256

[State 8510, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8510, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 3 Super FX
[StateDef 8520]
type = A
velset = 0,0
anim = 8520
sprPriority = 5

[State 8520, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8520, Assert: NoBarDisplay, NoBG, NoFG]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBarDisplay
flag2 = NoBG
flag3 = NoFG

[State 8520, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8520, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8520, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8520, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8520, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8520, Portrait 1]
type=Explod
trigger1=!Time && root,stateno!=3301
anim=8525
ID=20
sprPriority=-16
posType=Back
removeTime=40
superMoveTime=-1

[State 8520, Portrait 2]
type=Explod
trigger1=!Time && root,stateno!=3301
anim=8525
ID=21
sprPriority=-16
posType=Back
removeTime=40
superMoveTime=-1

[State 8520, Scale Portrait 1a]
type=ModifyExplod
trigger1=NumExplod(20) && Time < 16
ID=20
posType=Back
pos=160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans=AddAlpha
alpha=(8 * Time), 256

[State 8520, Scale Portrait 2a]
type=ModifyExplod
trigger1=NumExplod(21) && Time < 16
ID=21
posType=Back
pos=160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans=AddAlpha
alpha=(8 * Time), 256

[State 8520, Scale Portrait 1b]
type=ModifyExplod
trigger1=NumExplod(20) && (Time=[16,32])
ID=20
posType=Back
pos=160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=0.5, 0.5
trans=AddAlpha
alpha=256, 256

[State 8520, Scale Portrait 2b]
type=ModifyExplod
trigger1=NumExplod(21) && (Time=[16,32])
ID=21
scale=0,0

[State 8520, Scale Portrait 1c]
type=ModifyExplod
trigger1=NumExplod(20) && Time >= 32
ID=20
posType=Back
pos=160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=0.5, 0.5
trans=AddAlpha
alpha=128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type=ModifyExplod
trigger1=NumExplod(21) && Time >= 32
ID=21
posType=Back
pos=160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=0.5, 0.5
trans=AddAlpha
alpha=128 - 16 * (Time - 32), 256


[State 8520, Lines Explod]
type = explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8521
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8520, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8520, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1-(0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8520, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8520, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Lines Explod]
type = explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8521
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8520, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8520, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1-(0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8520, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8520, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8522
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1 ,1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8520, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8520, End]
type = DestroySelf
trigger1 = Time >= 40



;========================<SUPER FINISH>=============================
[StateDef 8600]
type = A
velSet = 0,0
anim = 1

[State 8600, Super Finish Sound]
type = PlaySnd
trigger1 = !Time
value = 8600,0
channel = 1

[State 8600, SndPan]
type = SndPan
trigger1 = Time <= 80
channel = 1
absPan = ceil(sin(GameTime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time = [16,24)
time = 1
mul = 32 * (Time - 16), 32 * (Time - 16), 32 * (Time - 16)

[State 8600, Move Name: Custom Combo]
type = VarSet
trigger1= !Time && Root, var(23) = 900
var(0) = 1

[State 8600, Move Name: Kikosho]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000,3099])
var(0) = 2

[State 8600, Move Name: Hoyokusen]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100,3199])
var(0) = 3

[State 8600, Move Name: Tenseiranka]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3200,3299])
var(0) = 4

[State 8600, Move Name: Hosenka]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3300,3399])
var(0) = 5

[State 8600, Move Name: Senretsukyaku]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3400,3499])
var(0) = 6

[State 8600, Move Name: Hazan Tenshokyaku]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3500,3599])
var(0) = 7

[State 8600, Move Name: Final Mission]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3600,3699])
var(0) = 8

[State 8600, Super Finish Explod]
type = Explod
trigger1 = !Time
anim = 8600
ID = 8600
ontop = 1
postype = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Super Finish Explod Fade]
type = ModifyExplod
trigger1 = NumExplod(8600)
ID = 8600
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), 256

[State 8600, Text 1]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 10
onTop = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 2]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 11
onTop = 1
posType = left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 1 Fade]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), ifElse(Time < 16, 0, 32 * (Time - 16))

[State 8600, Text 2 Fade]
type = ModifyExplod
trigger1 = NumExplod(11)
ID = 11
scale = 0.5 + (0.0625 * Time), 0.5 + (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 32 * Time

[State 8600, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8601
ID = 8601
under = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
bindTime = -1
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Circle Fade]
type = ModifyExplod
trigger1 = NumExplod(8601)
ID = 8601
scale = (0.25 * time) * (1.3333333 * GameHeight / GameWidth), (0.25 * time) * (1.3333333 * GameHeight / GameWidth)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8600, Assert: NoFG]
type = AssertSpecial
trigger1 = Time < 16
flag = NoFG

[State 8600, Assert: NoBarDisplay]
type = AssertSpecial
trigger1 = Time < 24
flag = NoBarDisplay

[State 8600, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 24
trigger2 = RoundState < 3

[State 8600, End]
type = DestroySelf
trigger1 = RoundState < 3

;======================================================================
;========================================

[Statedef 3597]
type = S
movetype = I
physics = N
ctrl = 0
anim =8787
velset = 0,0

[State 3598, ]
type = PlayerPush
trigger1 = 1
value = 0

[State 3598, a0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera =1,0

[State 3598, a1]
type = DestroySelf
trigger1 = time>=75
;===============================


[Statedef 3598]
type = S
movetype = I
physics = N
ctrl = 0
anim =8787
velset = 0,0

[State 3598, ]
type = PlayerPush
trigger1 = 1
value = 0

[State 3598, a0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 3598, a1]
type = DestroySelf
trigger1 = time>=50
trigger2 = p2movetype!=H
;==============================================

[Statedef 3599]
type = S
movetype = I
physics = N
ctrl = 0
anim =8787
velset = 0,0

[State 0, ]
type = PlayerPush
trigger1 = 1
value = 0

[State 3599, a0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 3599, a1]
type = DestroySelf
trigger1 = parent, stateno != [3500,3590]
;===========================================================

;========================<CAMERA CONTROL>=============================
[StateDef 8999]
type = S
velSet = 0,0
anim = 1

[State 8999, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 8999, End]
type = DestroySelf
trigger1 = RoundState = 2



;========================<EXPLODSIVE BUFFERING HELPER>=============================
[StateDef 90000005]
type = A
physics = N
moveType = I
anim = 1
velSet = 0,0
ctrl = 0

[State 90000005, Turn]
type = Turn
trigger1 = (Root, NumExplod(94646464) || Root, NumExplod(92468246)) && !var(0)
trigger2 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246) && var(0)
ignoreHitPause = 1

[State 90000005, Reverse Left/Right]
type = VarSet
trigger1 = (Root, NumExplod(94646464) || Root, NumExplod(92468246)) && !var(0)
var(0) = 1
ignoreHitPause = 1

[State 90000005, Reset Turn Variable]
type = VarSet
trigger1 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246) && var(0)
var(0) = 0
ignoreHitPause = 1

[State 90000005, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "by JustMorphPointman"
ignoreHitPause = 1

;======================================================================
[Statedef 8701]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 5

[State 8701, A0]
type = screenbound
trigger1 = 1
value = 0

[state 8701, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8700, sparksvar] 
type = null
trigger1= NumExplod(8700)=8
trigger1 = var(3):=1 

[State 8701 Explod] 
type = Explod
trigger1= NumExplod(8700)<8
trigger1 = var(3)=0
anim = 8700
id = 8700
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = (IfElse(Random <= 499,Random/60,Random/146)),(IfElse(Random <= 199,Random/145,Random/(-90)))
accel = -.1,.15
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = 1.14,1.14;IfElse(Random <= 499,.55,.25),IfElse(Random <= 499,.55,.25)
sprpriority = 8
;ownpal = 1

[State 8704, a4]
type = modifyexplod
trigger1 = 1
ID = 8700
scale = 1.14-(.06*time),1.14-(.06*time)

[State 8701, a3]
type = explod
trigger1 = !time
anim = 8701
ID = 8701
sprpriority = 6
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .02,.02
ownpal=1

[State 8701, a3]
type = explod
trigger1 = !time
anim = 8702
ID = 8702
sprpriority = 5
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .05,.05
ownpal = 1

[State 8701, a4];hit
type = explod
trigger1 = !time
anim = 8707
ID = 8707
sprpriority = 7
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .5,.5
persistent = 0

[State 8701, a4]
type = modifyexplod
trigger1 = 1
ID = 8701
scale = .02+(.02*time),.02+(.02*time)

[State 8701, a4]
type = modifyexplod
trigger1 = 1
ID = 8702
scale = .05+(.05*time),.05+(.05*time)

[State 8701, a4]
type = modifyexplod
trigger1 = 1
ID = 8715
scale = 1-(.03*time),1-(.03*time)

[State 8701, a4]
type = explod
trigger1 =!time
anim = 8715
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0,-6
scale = 1,1
[State 8701, a4]
type = explod
trigger1 =!time
anim = 8715
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0,6
scale = 1,1

[State 8701, a4]
type = explod
trigger1 =!time
anim = 8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -4,-4
scale = 1,1
facing = -1
[State 8701, a4]
type = explod
trigger1 =!time
anim = 8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -4,4
scale = 1,1
[State 8701, a4]
type = explod
trigger1 =!time
anim =8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 4,-4
scale = 1,1
[State 8701, a4]
type = explod
trigger1 =!time
anim =8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 4,4
scale = 1,1
facing = -1


[State 8701, a4]
type = explod
trigger1 =!time
anim = 8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -5,-2
scale = 1,1
facing = -1
[State 8701, a4]
type = explod
trigger1 =!time
anim = 8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -5,2
scale = 1,1

[State 8701, a4]
type = explod
trigger1 =!time
anim =8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 5,-2
scale = 1,1

[State 8701, a4]
type = explod
trigger1 =!time
anim =8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 5,2
scale = 1,1
facing = -1

[State 8701, PalFXWiz] ;Generated by MEE PalFX Editor gold
type = PalFX
trigger1 =!time
time = 20
add = 11,-51,-132
mul = 512,379,512
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0

[State 8701, a6]
type = destroyself
trigger1 = time >= 18;25
;=====================================================================
[Statedef 8704]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 5

[State 8704, A0]
type = screenbound
trigger1 = 1
value = 0

[state 8704, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8702, sparksvar] 
type = null
trigger1= NumExplod(8700)=12
trigger1 = var(3):=1 

[State 8702 Explod] ;balls
type = Explod
trigger1= NumExplod(8700)<12
trigger1 = var(3)=0
anim = 1551
id = 8700
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = (IfElse(Random <= 499,Random/130,Random/(-130))),(IfElse(Random <= 599,Random/185,Random/(-145)))
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = 2,2
sprpriority = 8
ownpal = 1

[State 8704, a4]
type = modifyexplod
trigger1 = 1
ID = 8700
scale = 2-(.045*time),2-(.045*time)


[State 8704, a3]
type = explod
trigger1 = !time
anim = 8701
ID = 8701
sprpriority = 6
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .05,.05
ownpal=1

[State 8704, a3]
type = explod
trigger1 = !time
anim = 8702
ID = 8702
sprpriority = 5
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .06,.06
ownpal = 1

[State 8702, a4]
type = explod
trigger1 = !time
anim = 8707
ID = 8707
sprpriority = 7
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .5,.5
persistent = 0

[State 8704, a4]
type = modifyexplod
trigger1 = 1
ID = 8701
scale = .05+(.02*time),.05+(.02*time)

[State 8704, a4]
type = modifyexplod
trigger1 = 1
ID = 8702
scale = .06+(.05*time),.06+(.05*time)

[State 8704, a4]
type = modifyexplod
trigger1 = 1
ID = 8715
scale = 1.5-(.06*time),1.5-(.06*time)

[State 8704, a4]
type = explod
trigger1 =!time
anim = 8715
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0,-7
accel = 0,-1+(random<12*time)
scale = 1.5,1.5

[State 8701, a4]
type = explod
trigger1 =!time
anim = 8715
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0,7
accel = 0,1+(random<12*time)
scale = 1.5,1.5

[State 8704, a4]
type = explod
trigger1 =!time
anim = 8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -5,-5
accel = -1+(random<12*time),-1+(random<12*time)
scale = 1.5,1.5
facing = -1

[State 8702, a4]
type = explod
trigger1 =!time
anim = 8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -5,5
accel = -1+(random<12*time),1+(random<12*time)
scale = 1.5,1.5
[State 8704, a4]
type = explod
trigger1 =!time
anim =8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 5,-5
accel = 1+(random<12*time),-1+(random<12*time)
scale = 1.5,1.5

[State 8704, a4]
type = explod
trigger1 =!time
anim =8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 5,5
accel = 1+(random<12*time),1+(random<12*time)
scale = 1.5,1.5
facing = -1


[State 8704, a4]
type = explod
trigger1 =!time
anim = 8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -8,-.8
accel = -1+(random<12*time),-1+(random<12*time)
scale = 1.5,1.5
facing = -1

[State 8704, a4]
type = explod
trigger1 =!time
anim = 8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -8,.8
accel = -1+(random<12*time),1+(random<12*time)
scale = 1.5,1.5

[State 8704, a4]
type = explod
trigger1 =!time
anim =8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 8,-.8
accel = 1+(random<12*time),-1+(random<12*time)
scale = 1.5,1.5

[State 8704, a4]
type = explod
trigger1 =!time
anim =8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 8,.8
accel = 1+(random<12*time),1+(random<12*time)
scale = 1.5,1.5
facing = -1

[State 8704, PalFXWiz] ;Generated by MEE PalFX Editor magenta
type = PalFX
trigger1 =!time
time = 60
;add = -40,11,1
;mul = 246,61,215
;sinadd = 41,0,15,30
add = -10,-143,-61
mul = 512,512,512
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0


[State 8704, a6]
type = destroyself
trigger1 = time >= 20;15;25
;=====================================================================

[Statedef 8706]
type = S
movetype = I
physics = N
anim = 8787
sprpriority = -7

[State 8706, A0]
type = screenbound
trigger1 = 1
value = 0
[state 8706, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8707, b1]
type = Explod
trigger1 = (parent, stateno != 3005)&& (!Time)
anim = 8675
id = 8675
postype = p1
bindtime = -1
pos = 0, 0
sprpriority = -7
persistent = 0
scale = .8,.9
supermovetime = 999
pausemovetime = 999

[State 8706 Explod] 
type = Explod
trigger1 = time <= 9
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = 0,0
postype = p1
bindtime = 1
vel = (IfElse(Random <= 499,Random/120,Random/(-120))),Random/(-120)
accel = 0,.5
;removetime = 20
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
sprpriority = 8
;ownpal = 1

[State 0, ]
type = RemoveExplod
trigger1 = (parent, stateno = 3100)
id = 8675
ignorehitpause = 1

[State 0, ]
type = RemoveExplod
trigger1 = (parent, stateno = 3100)
id = 8706
ignorehitpause = 1


[State 8706, a6]
type = destroyself
trigger1 = (time>=9) && (parent, stateno = 3005)
trigger2 = time >= 176;25
;======================================================================
[Statedef 8710]
type = S
movetype = I
physics = N
anim = 8787
sprpriority = 7

[State 8710, a2]
type = Turn
trigger1 = (!time)&&(random<500)
ignorehitpause = 0
persistent = 0

[State 8710, a3]
type = explod
trigger1 = !time
anim = 8710
ID = 8710
sprpriority = 7
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .04,.04
ownpal = 1

[State 8710, a1]
type = explod
trigger1 = time%6 = 0
anim = 8710
ID = 8711
sprpriority = 6
postype = p1
pos = 0,0
vel = -2,-2
accel = ifelse(random<500,-.06,-.09),ifelse(random<500,-.06,-.09)
random = 14,14
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
scale = .07,.07
ownpal = 1

[State 8710, a2]
type = explod
trigger1 = time%6 = 0
anim = 8710
ID = 8711
sprpriority = 6
postype = p1
pos = 0,0
vel = 2,2
accel = ifelse(random<500,.06,.09),ifelse(random<500,.06,.09)
random = 14,14
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
scale = .07,.07
ownpal = 1

[State 8710, A0]
type = screenbound
trigger1 = 1
value = 0

[state 8710, a1]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow


[State 8710, a4]
type = modifyexplod
trigger1 = 1
ID = 8710
scale = .04+(.03*time),.04+(.03*time)

[State 8710, a4]
type = modifyexplod
trigger1 = 1
ID = 8711
scale = .07-(.002*time),.07-(.002*time)

[State 8710, a6]
type = destroyself
trigger1 = time >= 20
;==================================================================
[Statedef 8716]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 7

[State 8716, A0]
type = screenbound
trigger1 = 1
value = 0

[state 8716, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8716, a3]
type = explod
trigger1 = !time
anim = 8550
ID = 8550
sprpriority = 5
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = 1,1
ownpal = 1

[State 8716, sparksvar] 
type = null
trigger1= NumExplod(8716)=5
trigger1 = var(3):=1 

[State 8716 Explod] ;balls
type = Explod
trigger1= NumExplod(8716)<5
trigger1 = var(3)=0
anim = 8700
id = 8716
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
;vel = (IfElse(Random <= 499,Random/156,Random/(-156))),(IfElse(Random <= 499,Random/156,Random/(-156)))
vel = (IfElse(Random <= 199,Random/-100,Random/-136)),(IfElse(Random <= 299,Random/136,Random/(-136)))
accel = .1,.15
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = .5,.5;IfElse(Random <= 499,.3,.1),IfElse(Random <= 499,.3,.1)
sprpriority = 8
;ownpal = 1

[State 8716, a4]
type = modifyexplod
trigger1 = 1
ID = 8716
scale = .5 -(.011*time),.5 -(.011*time)

[State 8716, PalFXWiz] ;Generated by MEE PalFX Editor yellow
type = PalFX
trigger1 =!time
time = 20
add = -132,-40,52
mul = 471,317,379
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0

[State 8716, a6]
type = destroyself
trigger1 = time >=16;25
;------------------------------------------------------------------------

;------------------------------------------------
[Statedef 8717]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 7

[State 8717, A0]
type = screenbound
trigger1 = 1
value = 0
[state 8717, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8717, aa2]
type = Explod 
trigger1 = !time
sprpriority = 9
id = 1460
anim = 1460
postype = P1
pos = 0, 60
removeongethit = 1
bindtime = -1
facing=-1
ownpal = 1
supermovetime = 99
pausemovetime = 99

[State 8717, aa2]
type = Explod 
trigger1 = !time
sprpriority = 9
id = 1460
anim = 8702
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
facing=-1
ownpal = 1
supermovetime = 99
pausemovetime = 99

[State 8717, sparksvar] 
type = null
trigger1= NumExplod(8727)=7
trigger1 = var(3):=1 

[State 8717 Explod] ;balls
type = Explod
trigger1= NumExplod(8727)<7
trigger1 = var(3)=0
anim = 8700
id = 8727
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
;vel = (IfElse(Random <= 499,Random/156,Random/(-156))),(IfElse(Random <= 499,Random/156,Random/(-156)))
vel = (IfElse(Random <= 199,Random/-60,Random/-90)),(IfElse(Random <= 199,Random/136,Random/(-136)))
accel = .1,.15
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = .5,.5;IfElse(Random <= 499,.3,.1),IfElse(Random <= 499,.3,.1)
sprpriority = 8
;ownpal = 1

[State 8717, a4]
type = modifyexplod
trigger1 = 1
ID = 8727
scale = .5 -(.011*time),.5 -(.011*time)

[State 8717, PalFXWiz]
type = PalFX
trigger1 =!time
time = 20
add = 11,-51,-132
mul = 512,379,512
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0

[State 8717, a6]
type = destroyself
trigger1 = time >=20;25

;===============================================

;=======================================================================
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
;===============================================================


;=======================================================================
[Statedef 1051]
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
trigger2 = parent, stateno = 3089
trigger2 = time > 0
x = .37

[State 1050, 1] 
type = Velset
trigger1 = parent, stateno = 3089
trigger1 = parent,Var(15) = 1
x=13

[State 1050, 1] 
type = Velset
trigger1 = parent, stateno = 3089
trigger1 = parent,Var(15) = 2
x=-13

[State 1050, 1] 
type = Velset
trigger1 = parent, stateno = 3089
trigger1 = parent,Var(15) = 3
x=13


[State 1050, 1] 
type = Velset
trigger1 = parent, stateno = 3089
trigger1 = parent,Var(15) = 4
x=33

[State 1050, 1] 
type = Velset
trigger1 = parent, stateno = 3089
trigger1 = parent,Var(15) = 5
x=-33


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
;===============================================================

;==================================================================

[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 6
velset = 0,0
sprpriority = 4
ctrl = 0
poweradd = 70

[State 777, a01]
type = ChangeAnim
trigger1 = PalNo <= 3 &&!time && prevstateno != 9000
value = 1300
ctrl = 1
[State 777, a02]
type = ChangeAnim
trigger1 = PalNo >= 4 && !time && prevstateno != 9000
value = 16300
ctrl = 1

[State 777, 0]
type = StopSnd
trigger1 = !time
channel = 10
ignorehitpause = 0

[State 1300, ab1]
type = Explod 
trigger1 = !time
sprpriority = 6
id = 1340
anim = 1340
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999
[State 1300, ab2]
type = Explod 
trigger1 = animelem=4
sprpriority = 6
id = 1341
anim = 1341
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999

[State 1300, re] 
type = RemoveExplod
trigger1 = AnimElem = 5
ID = 1341

[State 1300, ab3]
type = Explod 
trigger1 = animelem=5
sprpriority = 6
id = 1342
anim = 1342
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999

[State 1300, re] 
type = RemoveExplod
trigger1 = AnimElem = 6
ID = 1342

[State 1300, ab4]
type = Explod 
trigger1 = animelem=6
sprpriority = 6
id = 1343
anim = 1343
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999

[State 1300, re] 
type = RemoveExplod
trigger1 = AnimElem = 7
ID = 1343

[State 1300, ab5]
type = Explod 
trigger1 = animelem=7
sprpriority = 6
id = 1344
anim = 1344
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999

[State 1300, re] 
type = RemoveExplod
trigger1 = AnimElem = 8
ID = 1344

[State 1300, ab6]
type = Explod 
trigger1 = animelem=8
sprpriority = 6
id = 1345
anim = 1345
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999

[State 1300, re] 
type = RemoveExplod
trigger1 = AnimElem = 9
ID = 1345

[State 1300, ab7]
type = Explod 
trigger1 = animelem=9
sprpriority = 6
id = 1346
anim = 1346
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999

[State 1300, aa1]
type = Explod 
trigger1 = !time
sprpriority = 7
id = 1330
anim = 1330
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999

[State 1300, aa2]
type = Explod 
trigger1 = animelem=4
sprpriority = 7
id = 1331
anim = 1331
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999

[State 1300, re] 
type = RemoveExplod
trigger1 = AnimElem = 5
ID = 1331

[State 1300, aa3]
type = Explod 
trigger1 = animelem=5
sprpriority = 7
id = 1332
anim = 1332
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999

[State 1300, re] 
type = RemoveExplod
trigger1 = AnimElem = 6
ID = 1332

[State 1300, aa4]
type = Explod 
trigger1 = animelem=6
sprpriority = 7
id = 1333
anim = 1333
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999

[State 1300, re] 
type = RemoveExplod
trigger1 = AnimElem = 7
ID = 1333

[State 1300, aa5]
type = Explod 
trigger1 = animelem=7
sprpriority = 7
id = 1334
anim = 1334
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999

[State 1300, re] 
type = RemoveExplod
trigger1 = AnimElem = 8
ID = 1334

[State 1300, aa6]
type = Explod 
trigger1 = animelem=8
sprpriority = 7
id = 1335
anim = 1335
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999

[State 1300, re] 
type = RemoveExplod
trigger1 = AnimElem = 9
ID = 1335

[State 1300, aa7]
type = Explod 
trigger1 = animelem=9
sprpriority = 7
id = 1336
anim = 1336
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
supermovetime =9999
pausemovetime =9999

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
ground.hittime  = 14
air.hittime  = 40
ground.velocity = -14, -16
air.velocity = -14,-15
guard.hittime = 30
guard.velocity = -19
airguard.ctrltime = 26
airguard.velocity = -14,1
guard.pausetime = 0,4
ground.cornerpush.veloff = -12
guard.cornerpush.veloff = -18
air.cornerpush.veloff = -12
airguard.cornerpush.veloff = -18
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
stateNo=ifElse(MoveGuarded, 8002, 8002)
ID=8002
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
;========================================================================

;------------------------------------------------------------------------------;
;Reflector Helper by Vans
;------------------------------------------------------------------------------;
;Reflector Helper 
[Statedef 1205]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
anim = 1205
sprpriority = 4

;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR REFLECTOR / ??????????HELPER?	;
;sysvar(0) = 262144                  	;
;=======================================;
[State 1005, COMPATIBILITY]
type = VarSet
trigger1 = !time && !prevstateno
sysvar(0) = 262144
;=======================================;

[State 1301, REFLECTOR]
type = ReversalDef
trigger1 = time = 0
reversal.attr = SCA,NP,SP,HP
pausetime = 0,0
sparkno = -1
sparkxy = 0,0
p1stateno = stateno+1
p2stateno = stateno+2
id = 1201
numhits = 0


[State 1000, projs only]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 10012, override]
type = HitOverride
trigger1 = !time
attr = SCA, AA, AP, AT
stateno = stateno+1
time = -1
ignorehitpause = 1

[State 10005]
type = BindToParent
trigger1 = 1
pos = 65,-53
ignorehitpause = 1

[State 7001, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

;By Misamu K.
[State 65000: AfterImage]
type = AfterImage
trigger1 = (!Time)
trigger1 = root, var(20) = 1
time = 9999
length = 12
palbright = 12,12,12;,136
palcontrast = 60,60,60;,136
paladd = 0,0,0
timegap = 1
framegap = 1
trans = add

[State 1050, Trans]
type = Trans
trigger1 = 1
trans = add

[State 1000, DestroySelf]
type = ChangeState
trigger1= root, movecontact
trigger2 = root, StateNo != 1200 || root, MoveType = H|| root, StateNo = 1200 && root, animelemtime(3)<0
trigger2 = root, StateNo != 1250 || root, MoveType = H|| root, StateNo = 1250 && root, animelemtime(3)<0
;trigger3 = root, StateNo != 1201
value = 1208

;---------------------------
;Successful Reflection
[Statedef 1206]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
anim = 1
sprpriority = 4


[State 777, hdf]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8717
ID = 8717
name = "bracelet"
postype = p1
pos = -50,-20
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 1400, 0]
type = PlaySnd
trigger1 = !time
value = 760,0
channel = 10


[State 1205, VarSet]
type = VarSet
trigger1 = numtarget
var(0) = target,ID
persistent = 0
ignorehitpause = 1

[State -2, DEBUG]
type = DisplayToClipboard
trigger1 = 1
text = "var(0) = %d proj = %d ID = %d";Buff = %d GNDTYPE = %d"
params = var(0),numprojid(262144),gethitvar(chainid)
ignorehitpause = 1

;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR PROJECTILE / ?????              	;
;sysvar(0) = 131072                     ;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE   ;
;FOR REFLECTOR / ??????????HELPER?	;
;sysvar(0) = 262144                     ;
;sysvar(1) = SPECIAL                    ;
;=======================================;
[State 106, VarSet]
type = VarSet
;RETURNING YOUR OWN PROJECTILE
;?????????????
trigger1 = Gethitvar(chainid)&2**17
sysvar(1) = sysvar(0)

[State 1206, ChangeState]
type = ChangeState
trigger1 = PlayerIDExist(var(0))
trigger1 = (PlayerID(var(0)),sysvar(0)=131072) 
;RETURNING YOUR OWN PROJECTILE
;?????????????
trigger2 = Gethitvar(chainid)&2**17
value = 1211
ctrl = 0
;=======================================;

[State 1000, DestroySelf]
type = DestroySelf
trigger1 = time = 30

;---------------------------
;Reflecting A Helper projectile
[Statedef 1207]
physics = N
movetype = I
ctrl = 0

[State -2, DEBUG]
type = DisplayToClipboard
trigger1 = 1
text = "sysvar(0) = %d pao pao cafe = %d";Buff = %d GNDTYPE = %d"
params = sysvar(0),sysvar(0)&2**17
ignorehitpause = 1

[State 1580]
type = SelfState
trigger1 = sysvar(0)&2**17
value = sysvar(1)
ctrl = 0

[State 1580]
type = DestroySelf 
trigger1 = IsHelper
trigger1 = time = 5
ignorehitpause = 1

[State 1580]
type = SelfState
trigger1 = !IsHelper
value = 0
ctrl = 1

[State 811, Anim]
Type = ChangeAnim2
Trigger1 = !Time
Value = 1

;---------------------------
;???
;---------------------------
;???
[Statedef 1208]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4
juggle = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = -60

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .7,.7
ignorehitpause=1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
v = 29
value = 1

[State 7001, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1050, Trans]
type = Trans
trigger1 = 1
trans = add

[State 1000, DestroySelf]
type = DestroySelf
trigger1 = !Animtime
trigger2 = root, movetype = H
;---------------------------
;????
[Statedef 1209]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 4
juggle = 0

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
v = 29
value = 1

[State 1005, VarSet]
type = VarSet
trigger1 = !time && !prevstateno
var(23) = 1

[State 1000, Anim]
Type = ChangeAnim
Trigger1 = !Time
Value = 6100
ignorehitpause = 1

[State 1402, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 12

[State 7001, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

;By Misamu K.
[State 65000: AfterImage]
type = AfterImage
trigger1 = (!Time)
trigger1 = root, var(20) = 1
time = 9999
length = 12
palbright = 12,12,12;,136
palcontrast = 60,60,60;,136
paladd = 0,0,0
timegap = 1
framegap = 1
trans = add
[State 1050, Trans]
type = Trans
trigger1 = 1
trans = add

[State 1000, projs only]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 10012, Negated] 
type = HitOverride
trigger1 = !time
attr = SCA, AA, AT, AP
stateno = stateno+1
time = -1
slot = 2
ignorehitpause = 1

[State 1005, TargetDrop]
type = TargetDrop
trigger1 = root,numtarget 

[State 1000, DestroySelf]
type = DestroySelf
triggerall = time > 1
trigger1 = FrontEdgeDist <= -40

[State 210, 1]
type = HitDef
trigger1= 1
attr=S,SP
damage=100,7
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=1,5
sparkno=-1
guard.sparkno=s7001
guardsound=-1
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity= ifelse(var(1)<=12,-4,-10.52), ifelse(var(1)<=12,-2.5,0)
ground.cornerpush.veloff=0
air.velocity=-.75*vel x,-2
fall=var(1)<=12
air.fall=1
fall.recover=0
getpower=Ifelse(var(10)=3,0,ifelse(p2movetype=H,72,144)*!(root,var(20))),Ifelse(var(10)=3,0,36*!(root,var(20)))
givepower=36,36
envshake.time=14
envshake.freq=120
envshake.ampl=4
sprpriority=4
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
forcestand=1

[State 1411, Collision]
type = VarSet
trigger1 = movecontact && numtarget
var(44) = 1
persistent = 0
ignorehitpause=1

[State 1411, Juggle Linker]
type = VarSet
trigger1 = movehit && numtarget
var(45) = 1
persistent = 0
ignorehitpause=1

[State 1411, VarSet]
type = ParentVarSet
trigger1 = movehit && numtarget
var(16) = 12
persistent = 0
ignorehitpause=1

[State 1411, Juggle Killer]
type = ParentVarSet
trigger1 = P2Statetype = A
trigger1 = movehit && numtarget
var(45) = 1206
persistent = 0
ignorehitpause=1

[State -2, Root TargetDrop CTRL]
type = ParentVarSet
trigger1 = var(54)
var(49) = 1
persistent = 0
ignorehitpause=1

[State -2, P2 get hit]
type = TargetState
trigger1 = numtarget(1206) && movehit
value = 10000
persistent = 0

[State 1005, Next]
type=changeState
trigger1 = movecontact
value= 1210
ignorehitpause = 1

;---------------------------
;???
[Statedef 1210]
type=A
physics=N
movetype=I
anim=9741
velset=0,0
ctrl=0
sprpriority=4
movehitpersist=1

[State 1000, Sound]
type = PlaySnd
trigger1 = movecontact && numtarget
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 1, 6)
persistent = 0
ignorehitpause = 1
channel = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8013, 8013)
ID = 8013
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1.5
size.yScale = 1.5
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 6110
ID = 6110
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 2
ownpal = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1630]
var(18) = 1

[State 1006, End]
type=destroyself
trigger1= !time

;---------------------------
;Special Reflection
[Statedef 1211]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
v = 29
value = 1
;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR REFLECTOR / ??????????HELPER?	;
;sysvar(0) = 262144                  	;
;=======================================;
[State 1000, INFORMATION SHARING] 	;
type = Projectile 			;
trigger1 = sysvar(1)&2**18 		;
projid = sysvar(0)			;
projanim = 1			;
projhitanim = -1			;
projremanim = -1			;
projremovetime = 2			;
projscale = 0,0			;
projpriority = 0			;
velocity = 0,0			;
postype = p1			;
offset = 0,0			;
persistent = 0			;
ignorehitpause = 1			;
;=======================================;

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 1

[State 1211, StateTypeSet]
type = StateTypeSet
trigger1 = root,movetype = H
trigger2 = cond(PlayerIDExist(var(0)),(PlayerID(var(0)),movetype=I),0)
movetype = I        ;I,A,H

[State 1211, PosSet]
type = PosSet
trigger1 = !time || time
trigger1 = PlayerIDExist(var(0))
x = PlayerID(var(0)),Pos X
y = PlayerID(var(0)),Pos Y

[State 1000, DestroySelf]
type = DestroySelf
trigger1 = time > 2
trigger1 = !PlayerIDExist(var(0))

;---------------------------
;???2
[Statedef 1233]
type = A
movetype = I
physics = N
poweradd= 0
ctrl = 0
velset = 0,0
hitdefpersist = 1
sprpriority = 2

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 1229

[State 300, Land]
type = PlaySnd
trigger1 = !time
value = 4,15

[State 200, DestroySelf]
type = DestroySelf
trigger1 = !animtime && !numtarget

;---------------------------
;????? + ???
[Statedef 1234]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1227+(random%2)
sprpriority = 4
juggle = 0

[State 1402, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 4
y = -2
[State 1402, VelSet]
type = VelAdd
trigger1 = time
y = 0.390625

[State 7001, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State -2, Damage Dampener]; Helper set
type= attackmulset
trigger1 = 1
value= 1.0*ifelse(root,var(51),0.63,1)
ignorehitpause= 1
persistent = 0

[State -2, Helper]
type = Helper
trigger1 = !numhelper(50000) && !numhelper(50001)
trigger1 = WinKO && root,var(24)
name = "K.O."
ID = 50000
stateno = 50000
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State 1000, projs only]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 10012, Negated] 
type = HitOverride
trigger1 = !time
attr = SCA, AA, AT, AP
stateno = stateno+1
time = -1
slot = 2
ignorehitpause = 1

[State 1005, TargetDrop]
type = TargetDrop
trigger1 = root,numtarget 

[State 1000, DestroySelf]
type = DestroySelf
triggerall = time > 1
trigger1 = FrontEdgeDist <= -40

[State 210, 1]
type = HitDef
trigger1 = root, numhelper(1225) < 3
trigger1 = !root, var(45)
attr = A, SP
damage = floor(108*ifelse(root,var(56),1.25,1)),10
animtype = back
air.animtype = back
guardflag = MA
hitflag = MAFD
priority = 3, Hit
sparkno = -1;s17002+(root,var(31)*10000)
sparkxy = -10, -56
hitsound = -1
guardsound = -1
guard.sparkno = -1;s17502+(root,var(31)*10000)
ground.type = high
pausetime = 1,13
guard.pausetime = 0,12
ground.slidetime = 17
ground.hittime = 16
guard.hittime = 16
guard.slidetime = 17
guard.ctrltime = 24
ground.velocity = -11.1796875
guard.velocity = -11.1796875
air.type = High
air.velocity = -4.5,-7
air.hittime = 13
air.juggle = 0
getpower = 0,0
givepower = 16,16
id = 1225
fall.recover = 0
air.fall = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
persistent = 0

[State -2, P2 get hit]
type = TargetState
trigger1 = numtarget(1225) && movehit
value = 10000
persistent = 0

[State 1000, Sound]
type = PlaySnd
trigger1 = movecontact && numtarget
value = s3+(root,var(32)*2),ifelse(movehit,3,13)
persistent = 0
ignorehitpause = 1
channel = 1

[State 3000, ContactSpark]
type = Explod
trigger1 = MoveContact && numtarget
anim = ifelse(movehit,17002+(root,var(31)*10000),17502+(root,var(31)*10000))
ID = 1120
pos = ifelse((P2Dist X<0),ceil(P2Dist X+4),ceil(P2Dist X-12)),2
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
shadow = 0,0,0
ownpal = 1
persistent = 0
ignorehitpause = 1
pausemovetime = 20

[State 321321, DestroySelf]
type = DestroySelf
triggerall = time > 1
trigger1 = FrontEdgeDist <= -40

[State 220,2]
type = ChangeState
trigger1 = MoveContact && numtarget 
value = stateno+1
ctrl = 0

[State 220,2]
type = ChangeState
trigger1 = Vel Y + Pos Y >= 0
value = stateno+2
ctrl = 0

;---------------------------
;???1
[Statedef 1235]
type = A
physics = N
movetype = I
ctrl = 0
sprpriority = 4

[State 7001, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1229, AssertSpecial]
type = AssertSpecial
trigger1 = time < 17
flag = invisible
persistent = 2

[State 1229, ChangeAnim]
type = ChangeAnim
trigger1 = time = 17
value = 1

[State 321321, NotHitBy]
type = NotHitBy
trigger1 = !time || time
value = SCA
time = 1

[State 1402, VelSet]
type = VelSet
trigger1 = !time
x = 3
y = -5
[State 1402, VelSet]
type = VelAdd
trigger1 = time
y = 0.5126953125

[State 1110, PosFreeze]
type = PosFreeze
trigger1 = Pos Y > 0
value = 1

[State 2002, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 1
movetype = I        ;I,A,H

[State 1106, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1005, End]
type = destroyself
trigger1 = !animtime && !numtarget

;---------------------------
;???2
[Statedef 1236]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0,0
sprpriority = 4

[State 7001, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1229, AssertSpecial]
type = AssertSpecial
trigger1 = time < 17
flag = invisible
persistent = 2

[State 1229, ChangeAnim]
type = ChangeAnim
trigger1 = time = 17
value = 1

[State 321321, NotHitBy]
type = NotHitBy
trigger1 = !time || time
value = SCA
time = 1

[State 1230, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 1402, VelSet]
type = VelSet
trigger1 = !time
x = 3
y = -5
[State 1402, VelSet]
type = VelAdd
trigger1 = time
y = 0.5126953125

[State 1110, PosFreeze]
type = PosFreeze
trigger1 = Pos Y > 0
value = 1

[State 2002, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 1
movetype = I        ;I,A,H

[State 1106, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1005, End]
type = destroyself
trigger1 = !animtime && !numtarget

;---------------------------
;????????? 
[Statedef 1240];Ok!
type    = A
movetype= A
physics = N
poweradd= 0
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 1240

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 200, Punch Attempt Sound]
type = Playsnd
trigger1 = !time && random <= 700
value = 1240,0
channel = 0
[State 300, Kick Attempt Sound]
type = PlaySnd
trigger1 = Animelem = 2
value = 3+(var(32)*2),6

[State 210, 1]
type = HitDef
triggerall = !var(45) 
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
attr = A, SA
damage = floor(88*ifelse(var(56),1.25,1)),10
animtype = Hard
air.animtype = back
guardflag = H
hitflag = MAF
priority = 4, Hit
sparkno = s17002+(var(31)*10000)
sparkxy = -10, -28
hitsound = s3+(var(32)*2),7
guardsound = s3+(var(32)*2), 13
guard.sparkno = s17502+(var(31)*10000)
ground.type = Low
pausetime = 11,13
guard.pausetime = 11,12
ground.slidetime = 17
ground.hittime = 16
guard.hittime = 16
guard.slidetime = 17
guard.ctrltime = 24
ground.velocity =-11.1796875
guard.velocity = -11.1796875
air.type = High
air.velocity = -4.5,-7
fall.yvelocity = -3
air.hittime = 13
air.juggle = 0
getpower = 47,47
givepower = 16,16
nochainid = 1312
id = 1240
air.fall = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall.recover = 0
persistent = 0

[State 1000, 6]
type = ChangeState
trigger1 = !animtime
value = 1201
ctrl = 0
;----------------------------------------

;===================Estrelas;========================
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

;============================================================
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

;---------------------------------------------------

;============================================================
[Statedef 3126]
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
ID = 3126
scale= 1-(.03*time),1-(.03*time)


[State 3125, a4]
type = explod
triggerall = parent, stateno = 3151
trigger1 = !time%15
anim = 3126
id = 3126
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

;---------------------------------------------------

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
