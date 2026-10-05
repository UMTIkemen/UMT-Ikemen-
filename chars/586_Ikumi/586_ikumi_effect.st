;======================================================================
;======================================================================
; Effect & System Helper states file
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Recoil Helpers
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Recoil Guard - Wait 

[Statedef 10120]
type = A
movetype = I
physics = N
anim = 99990
ctrl = 0
sprpriority = 3

[State 10120, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0

[State 10120, ChangeState]
type = ChangeState
triggerall = Root,StateType = S
triggerall = Root,command = "holdback"
trigger1 = Root,Ctrl
trigger2 = Root,var(1) = 3
value = 10121

[State 10120, ChangeState]
type = ChangeState
triggerall = Root,StateType = C
triggerall = Root,command = "holdback"
trigger1 = Root,Ctrl
trigger2 = Root,var(1) = 3
value = 10122

[State 10120, ChangeState]
type = ChangeState
triggerall = Root,StateType = A
triggerall = Root,command = "holdback"
trigger1 = Root,Ctrl
trigger2 = Root,var(1) = 3
value = 10123

;----------------------------------------------------------------------
; Recoil Guard - Ground

[Statedef 10121]
type = S
movetype = I
physics = N
anim = 10121
ctrl = 0
sprpriority = 3

[State 10121, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0
facing = 1

[State 10121, HitOverRide]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA, AA, AP
sparkxy = 0,0
sparkno = -1
numhits = 0
p1stateno = 10125
pausetime = 0,2
ignorehitpause = 1

[State 10121, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AP
slot = 0
stateno = 10125
time = 1
ignorehitpause = 1

[State 10121, HitBy]
type = HitBy
trigger1 = 1
value = SCA, AP
ignorehitpause = 1

[State 10121, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 6
trigger2 = Root,StateType != S
trigger3 = Root,MoveType = A && Root,var(1) != 3
trigger4 = Root,MoveType = H && Root,StateNo != [120,155]
value = 99990

[State 10121, ChangeState]
type = ChangeState
trigger1 = Time >= 20 && Root,Command != "holdback"
value = 10120

;----------------------------------------------------------------------
; Recoil Guard - Crouch

[Statedef 10122]
type = C
movetype = I
physics = N
anim = 10122
ctrl = 0
sprpriority = 3

[State 10122, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0
facing = 1

[State 10122, HitOverRide]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA, AA, AP
sparkxy = 0,0
sparkno = -1
numhits = 0
p1stateno = 10125
pausetime = 0,2
ignorehitpause = 1

[State 10122, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AP
slot = 0
stateno = 10125
time = 1
ignorehitpause = 1

[State 10122, HitBy]
type = HitBy
trigger1 = 1
value = SCA, AP
ignorehitpause = 1

[State 10122, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 6
trigger2 = Root,StateType != C
trigger3 = Root,MoveType = A && Root,var(1) != 3
trigger4 = Root,MoveType = H && Root,StateNo != [120,155]
value = 99990

[State 10122, ChangeState]
type = ChangeState
trigger1 = Time > 20 && Root,Command != "holdback"
value = 10120

;----------------------------------------------------------------------
; Recoil Guard - Ariel

[Statedef 10123]
type = A
movetype = I
physics = N
anim = 10123
ctrl = 0
sprpriority = 3

[State 10123, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0
facing = 1

[State 10123, VarAdd]
type = VarAdd
trigger1 = 1
var(0) = 1

[State 10123, HitOverRide]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA, AA, AP
sparkxy = 0,0
sparkno = -1
numhits = 0
p1stateno = 10125
pausetime = 0,2
ignorehitpause = 1

[State 10123, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AP
slot = 0
stateno = 10125
time = 1
ignorehitpause = 1

[State 10123, HitBy]
type = HitBy
trigger1 = 1
value = SCA, AP
ignorehitpause = 1

[State 10123, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 6
trigger2 = Root,StateType != A
trigger3 = Root,MoveType = A && Root,var(1) != 3
trigger4 = Root,MoveType = H && Root,StateNo != [120,155]
value = 99990

[State 10123, ChangeState]
type = ChangeState
trigger1 = Time > 20 && Root,Command != "holdback"
value = 10120

;----------------------------------------------------------------------
; Recoil Guard - Wait 

[Statedef 10125]
type = U
movetype = I
physics = U
anim = 99990
ctrl = 0
sprpriority = 3

[State 10125, ChangeState]
type = ParentVarSet
trigger1 = Time = 0
var(19) = 1
ignorehitpause = 1

[State 10125, ChangeState]
type = ChangeState
trigger1 = Time > 40 && Root,Command != "holdback"
value = 10120

;----------------------------------------------------------------------
; Hitspark Helpers
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; HitSpark

[Statedef 30000]
type = S
movetype = I
physics = N
anim = 99990
ctrl = 0
velset = 0,0

;----------------------------------------------------------------------
; Distinction

[State 30000, VarSet];Distinction Player or Helper <Player>
type = VarSet
triggerall = Time = 0
trigger1 = isHelper(30000)
trigger2 = isHelper(30001)
trigger3 = isHelper(30002)
trigger4 = isHelper(30003)
trigger5 = isHelper(30004)
trigger6 = isHelper(30005)
trigger7 = isHelper(30006)
trigger8 = isHelper(30007)
var(0) = 1

[State 30000, VarSet];Distinction Player or Helper <Helper>
type = VarSet
triggerall = Time = 0
trigger1 = isHelper(31000)
trigger2 = isHelper(31001)
trigger3 = isHelper(31002)
trigger4 = isHelper(31003)
trigger5 = isHelper(31004)
trigger6 = isHelper(31005)
trigger7 = isHelper(31006)
trigger8 = isHelper(31007)
var(0) = 2

;----------------------------------------------------------------------
; Projectile for Helper

[State 30000, Projectile];Dummy Projectile for PlaySnd on Statedef -2
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(31000)
projID = 31000
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 30000, Projectile];Dummy Projectile for PlaySnd on Statedef -2
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(31001)
projID = 31001
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 30000, Projectile];Dummy Projectile for PlaySnd on Statedef -2
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(31002)
projID = 31002
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 30000, Projectile];Dummy Projectile for PlaySnd on Statedef -2
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(31003)
projID = 31003
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 30000, Projectile];Dummy Projectile for PlaySnd on Statedef -2
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(31004)
projID = 31004
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 30000, Projectile];Dummy Projectile for PlaySnd on Statedef -2
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(31005)
projID = 31005
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 30000, Projectile];Dummy Projectile for PlaySnd on Statedef -2
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(31006)
projID = 31006
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 30000, Projectile];Dummy Projectile for PlaySnd on Statedef -2
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(31007)
projID = 31007
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 30000, Projectile];Dummy Projectile for PlaySnd on Statedef -2
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(31100)
projID = 31100
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

;----------------------------------------------------------------------
; HitCount

[State 30000, Projectile];Dummy Projectile for HitCount on Statedef -2
type = Projectile
triggerall = Time = 0
trigger1 = !isHelper(30100)
trigger1 = !isHelper(31100)
projID = 39999
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

;----------------------------------------------------------------------
; DestroySelf

[State 30000, DestroySelf];for Player
type = DestroySelf
triggerall = Time = 0
trigger1 = var(0) = 1
trigger2 = isHelper(30100)

[State 30000, DestroySelf];for Helper
type = DestroySelf
triggerall = Time = 1
trigger1 = var(0) = 2
trigger2 = isHelper(31100)

;----------------------------------------------------------------------
; System Helpers
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Correction Helper

[Statedef 30500]
type = A
movetype = I
physics = N
anim = 99990
ctrl = 0
velset = 0,0

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(1)
projID = 30501
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(2)
projID = 30502
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(3)
projID = 30503
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(4)
projID = 30504
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(5)
projID = 30505
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(6)
projID = 30506
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(7)
projID = 30507
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(8)
projID = 30508
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(9)
projID = 30509
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(10)
projID = 30510
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(11)
projID = 30511
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(12)
projID = 30512
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(13)
projID = 30513
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(14)
projID = 30514
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(15)
projID = 30515
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(16)
projID = 30516
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(17)
projID = 30517
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(18)
projID = 30518
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(19)
projID = 30519
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(20)
projID = 30520
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(21)
projID = 30521
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(22)
projID = 30522
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(23)
projID = 30523
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(24)
projID = 30524
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(25)
projID = 30525
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(50)
projID = 30550
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(80)
projID = 30580
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(90)
projID = 30590
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, Projectile]
type = Projectile
trigger1 = Time = 0
projID = 30500
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30500, DestroySelf]
type = DestroySelf
trigger1 = Time = 0

;----------------------------------------------------------------------
; Sound Helper

[Statedef 30200]
type = A
movetype = I
physics = N
anim = 99990
ctrl = 0
velset = 0,0

[State 30200, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(1)
projID = 30201
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30200, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(2)
projID = 30202
projanim = 99990
projedgebound = 1000
projstagebound = 1000
projremovetime = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30200, DestroySelf]
type = DestroySelf
trigger1 = Time = 0

;----------------------------------------------------------------------
; StageEdge Detector

[Statedef 30300]
type = A
movetype = I
physics = N
anim = 99991
ctrl = 0
velset = 0,0

[State 30300, Projectile]
type = Projectile
triggerall = isHelper(30300)
trigger1 = Time = 2
projID = 30300
projanim = 99990
velocity = 5,0
projedgebound = 10000000
projstagebound = 0
projremovetime = 1000
ignorehitpause = 1

[State 30300, Projectile]
type = Projectile
triggerall = isHelper(30301)
trigger1 = Time = 2
projID = 30301
projanim = 99990
velocity = 5,0
projedgebound = 10000000
projstagebound = 0
projremovetime = 1000
ignorehitpause = 1

[State 30300, Turn]
type = Turn
trigger1 = isHelper(30301)
trigger1 = Time = 1

[State 30300, VelSet]
type = VelSet
trigger1 = Time = 2
x = 5

[State 30300, VelSet]
type = VelSet
triggerall = isHelper(30300)
trigger1 = Time > 1
trigger1 = Root,NumProjID(30300) = 0
x = 0

[State 30300, VelSet]
type = VelSet
triggerall = isHelper(30301)
trigger1 = Time > 1
trigger1 = Root,NumProjID(30301) = 0
x = 0

[State 30300, ParentVarSet]
type = ParentVarSet
trigger1 = isHelper(30300)
var(18) = ceil(ScreenPos X)

[State 30300, ParentVarSet]
type = ParentVarSet
trigger1 = isHelper(30301)
var(19) = ceil(ScreenPos X)

[State 30300, DestroySelf]
type = Null;DestroySelf
triggerall = isHelper(30300)
trigger1 = Time > 1
trigger1 = Root,NumProjID(30300) = 0

[State 30300, DestroySelf]
type = Null;DestroySelf
triggerall = isHelper(30301)
trigger1 = Time > 1
trigger1 = Root,NumProjID(30301) = 0

;----------------------------------------------------------------------
; Sound Stopper

[Statedef 30400]
type = S
movetype = I
physics = N
anim = 99990
ctrl = 0
velset = 0,0
sprpriority = 3

[State 30400, DestroySelf]
type = DestroySelf
trigger1 = Time > 40

;----------------------------------------------------------------------
; Damage Helpers
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Ice Damage - Fall

[Statedef 30600]
type = A
movetype = I
physics = N
anim = 30600
ctrl = 0

[State 30600, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 30600
time = -1
ignorehitpause = 1

[State 30600, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 30600, PosSet]
type = PosSet
triggerall = PlayerIDExist(Root,var(21))
trigger1 = isHelper(30600)
trigger2 = isHelper(30610)
x = PlayerID(Root,var(21)),Pos X
y = PlayerID(Root,var(21)),Pos Y

[State 30600, PosSet]
type = PosSet
triggerall = PlayerIDExist(Root,var(22))
trigger1 = isHelper(30601)
trigger2 = isHelper(30611)
x = PlayerID(root,var(22)),Pos X
y = PlayerID(root,var(22)),Pos Y

[State 30600, ChangeState]
type = ChangeState
triggerall = PlayerIDExist(Root,var(21))
triggerall = PlayerID(Root,var(21)),StateNo != [45040,45068]
trigger1 = isHelper(30600)
trigger2 = isHelper(30610)
value = 30690

[State 30600, ChangeState]
type = ChangeState
triggerall = PlayerIDExist(Root,var(22))
triggerall = PlayerID(Root,var(22)),StateNo != [45040,45068]
trigger1 = isHelper(30601)
trigger2 = isHelper(30611)
value = 30690

[State 30600, DestroySelf]
type = DestroySelf
triggerall = PlayerIDExist(Root,var(21))
triggerall = PlayerID(Root,var(21)),StateNo = [45050,45068]
trigger1 = isHelper(30600)
trigger2 = isHelper(30610)

[State 30600, DestroySelf]
type = DestroySelf
triggerall = PlayerIDExist(Root,var(22))
triggerall = PlayerID(Root,var(22)),StateNo = [45050,45068]
trigger1 = isHelper(30601)
trigger2 = isHelper(30611)

;----------------------------------------------------------------------
; Ice Damage - Break

[Statedef 30690]
type = S
movetype = I
physics = N
anim = 99990
ctrl = 0

[State 30690, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 30690
time = -1
ignorehitpause = 1

[State 30690, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 30690, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Sound"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 30200
ID = 1
ignorehitpause = 1

[State 30690, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Ice_Broken"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 30691
ID = 1
ignorehitpause = 1

[State 30690, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Ice_Broken"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 30691
ID = 1
ignorehitpause = 1

[State 30690, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Ice_Broken"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 30691
ID = 1
ignorehitpause = 1

[State 30690, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Ice_Broken"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 30691
ID = 1
ignorehitpause = 1

[State 30690, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Ice_Broken"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 30691
ID = 2
ignorehitpause = 1

[State 30690, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Ice_Broken"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 30691
ID = 2
ignorehitpause = 1

[State 30690, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
ownpal = 1
name = "Ice_Broken"
postype = p1
pos = 0,0
pausemovetime = 0
supermovetime = 0
stateno = 30691
ID = 2
ignorehitpause = 1

[State 30600, DestroySelf]
type = DestroySelf
trigger1 = Time = 1

;----------------------------------------------------------------------
; Ice Damage - Break

[Statedef 30691]
type = A
movetype = I
physics = N
anim = ifelse(Random%2=1,30691,30692)
ctrl = 0

[State 30691, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 30690
time = -1
ignorehitpause = 1

[State 30691, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 30691, VelSet]
type = VelSet
trigger1 = Time = 0
trigger1 = isHelper(1)
x = -1*((Random%7)+3)
y = -1*((Random%7)+3)

[State 30691, VelSet]
type = VelSet
trigger1 = Time = 0
trigger1 = isHelper(2)
x = (Random%7)+3
y = -1*((Random%7)+3)

[State 30691, VelAdd]
type = VelAdd
trigger1 = Time > 5
trigger1 = Pos Y <= 0
y = 0.4

[State 30691, VelSet]
type = VelSet
trigger1 = Time > 5
trigger1 = Pos Y >= 0
y = 0

[State 30691, PosSet]
type = PosSet
trigger1 = Time > 5
trigger1 = Pos Y >= 0
y = 0

[State 30691, VarSet]
type = VarSet
trigger1 = Time = 0
var(0) = 256

[State 30691, VarSet]
type = VarSet
trigger1 = Time = 0
var(1) = 0

[State 30691, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = var(0),var(1)

[State 30691, VarSet]
type = VarAdd
trigger1 = Time >= 34
var(0) = -16

[State 30691, VarSet]
type = VarAdd
trigger1 = Time >= 34
var(1) = 16

[State 30691, DestroySelf]
type = DestroySelf
trigger1 = Time >= 50

;----------------------------------------------------------------------
; Ice Damage - Ground

[Statedef 30700]
type = A
movetype = I
physics = N
anim = 30700
ctrl = 0

[State 30700, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 30700
time = -1
ignorehitpause = 1

[State 30700, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 30700, PosSet]
type = PosSet
triggerall = PlayerIDExist(Root,var(21))
trigger1 = isHelper(30700)
trigger2 = isHelper(30710)
x = PlayerID(Root,var(21)),Pos X
y = PlayerID(Root,var(21)),Pos Y

[State 30700, PosSet]
type = PosSet
triggerall = PlayerIDExist(Root,var(22))
trigger1 = isHelper(30701)
trigger2 = isHelper(30711)
x = PlayerID(root,var(22)),Pos X
y = PlayerID(root,var(22)),Pos Y

[State 30700, ChangeState]
type = ChangeState
triggerall = PlayerIDExist(Root,var(21))
triggerall = PlayerID(Root,var(21)),StateNo != [45040,45068]
trigger1 = isHelper(30700)
trigger2 = isHelper(30710)
value = 30690

[State 30700, ChangeState]
type = ChangeState
triggerall = PlayerIDExist(Root,var(22))
triggerall = PlayerID(Root,var(22)),StateNo != [45040,45068]
trigger1 = isHelper(30701)
trigger2 = isHelper(30711)
value = 30690

[State 30700, DestroySelf]
type = DestroySelf
triggerall = PlayerIDExist(Root,var(21))
triggerall = PlayerID(Root,var(21)),StateNo = [45040,45049]
trigger1 = isHelper(30700)
trigger2 = isHelper(30710)

[State 30700, DestroySelf]
type = DestroySelf
triggerall = PlayerIDExist(Root,var(22))
triggerall = PlayerID(Root,var(22)),StateNo = [45040,45049]
trigger1 = isHelper(30701)
trigger2 = isHelper(30711)

;----------------------------------------------------------------------
; Fire Damage

[Statedef 30800]
type = A
movetype = I
physics = N
anim = 30800
ctrl = 0
sprpriority = 5

[State 30800, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 30800
time = -1
ignorehitpause = 1

[State 30800, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 30800, PosSet]
type = PosSet
triggerall = PlayerIDExist(Root,var(21))
trigger1 = isHelper(30800)
trigger2 = isHelper(30810)
x = PlayerID(Root,var(21)),Pos X
y = PlayerID(Root,var(21)),Pos Y

[State 30800, PosSet]
type = PosSet
triggerall = PlayerIDExist(Root,var(22))
trigger1 = isHelper(30801)
trigger2 = isHelper(30811)
x = PlayerID(root,var(22)),Pos X
y = PlayerID(root,var(22)),Pos Y

[State 30800, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

