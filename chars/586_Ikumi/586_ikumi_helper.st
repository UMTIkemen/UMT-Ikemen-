;======================================================================
;======================================================================
; Helper states file for "Ikumi Amasawa"
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Special Moves
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; Blood

[Statedef 10710]
type = A
movetype = I
physics = N
anim = 99990
ctrl = 0

[State 10710, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 10710
time = -1
ignorehitpause = 1

[State 10710, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 10710, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10710, VarSet]
type = VarSet
trigger1 = Time = 0
var(0) = (isHelper(10710)*10710)+(isHelper(10711)*10711)+(isHelper(10712)*10712)
ignorehitpause = 1

[State 10710, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1
value = var(0)
ignorehitpause = 1

[State 10710, VarRandom]	;Vel X
type = VarRandom
trigger1 = Time = 0
v = 1
range = 1,15
ignorehitpause = 1

[State 10710, VarRandom]	;Vel Y
type = VarRandom
trigger1 = Time = 0
v = 2
range = 100,140
ignorehitpause = 1

[State 10710, VarRandom]	;ChangeState
type = VarRandom
trigger1 = Time = 0
v = 3
range = -1,1
ignorehitpause = 1

[State 10710, VarSet]
type = VarSet
trigger1 = Time = 1
fvar(1) = var(1)
ignorehitpause = 1

[State 10710, VarSet]
type = VarSet
trigger1 = Time = 1
fvar(2) = var(2)
ignorehitpause = 1

[State 10710, VelSet]
type = VelSet
trigger1 = Time = 2
x = -1*(fvar(1)/10)
y = -1*(fvar(2)/10)
ignorehitpause = 1

[State 10710, VelAdd]
type = VelAdd
trigger1 = Time > 2
y = 0.4
ignorehitpause = 1

[State 10710, ChangeState]
type = ChangeState
trigger1 = Time > 2
trigger1 = Pos Y >= 0
value = 10715
ignorehitpause = 1

[State 10710, ChangeState]
type = ChangeState
trigger1 = Time > 10
trigger1 = RootDist X = [-20,20]
trigger1 = RootDist Y = [-20,20]
value = 10718
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood

[Statedef 10715]
type = S
movetype = I
physics = S
ctrl = 0
anim = 10715
velset = 0,0

[State 10715, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10715, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 10715
time = -1
ignorehitpause = 1

[State 10715, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 10715, VarRandom]	;ChangeState
type = VarRandom
trigger1 = Time = 0
v = 5
range = -5,5
ignorehitpause = 1

[State 10710, PosSet]
type = PosSet
trigger1 = Time = 1
y = var(5)
ignorehitpause = 1

[State 10715, ChangeState]
type = ChangeState
trigger1 = RootDist X = [-20,20]
trigger1 = RootDist Y = [-10,10]
value = 10716
ignorehitpause = 1

[State 10715, ChangeState]
type = ChangeState
trigger1 = Time >= 70
value = 10717
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood

[Statedef 10716]
type = S
movetype = I
physics = S
ctrl = 0
anim = 10716
velset = 0,0

[State 10716, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10716, ParentVarAdd]
type = ParentVarAdd
trigger1 = Root,fvar(22) < 100
trigger1 = Time = 0
fvar(22) = 1.0
ignorehitpause = 1

[State 10716, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; Blood

[Statedef 10717]
type = S
movetype = I
physics = S
ctrl = 0
anim = 10716
velset = 0,0

[State 10717, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10717, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; Blood

[Statedef 10718]
type = A
movetype = I
physics = N
ctrl = 0
anim = 10718
velset = 0,0

[State 10718, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10716, ParentVarAdd]
type = ParentVarAdd
trigger1 = Root,fvar(22) < 100
trigger1 = Time = 0
fvar(22) = 1.0
ignorehitpause = 1

[State 10718, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; Blood Signal

[Statedef 10720]
type = S
movetype = I
physics = N
anim = 99990
ctrl = 0
velset = 0,0

[State 10720, Projectile]
type = Projectile
trigger1 = Time = 0
trigger1 = isHelper(10721)
projID = 10721
projanim = 99990
projremovetime = 1
projedgebound = 1000
projstagebound = 1000
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 10720, DestroySelf]
type = DestroySelf
trigger1 = Time = 1

;----------------------------------------------------------------------
; Blood

[Statedef 10750]
type = A
movetype = I
physics = N
anim = 99990
ctrl = 0

[State 10750, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 10750
time = -1
ignorehitpause = 1

[State 10750, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 10750, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10750, VarSet]
type = VarSet
trigger1 = Time = 0
var(0) = (isHelper(10750)*10710)+(isHelper(10751)*10711)+(isHelper(10752)*10712)
ignorehitpause = 1

[State 10750, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1
value = var(0)
ignorehitpause = 1

[State 10750, VarRandom]	;Vel X
type = VarRandom
trigger1 = Time = 0
v = 1
range = -20,5
ignorehitpause = 1

[State 10750, VarRandom]	;Vel Y
type = VarRandom
trigger1 = Time = 0
v = 2
range = 100,140
ignorehitpause = 1

[State 10750, VarRandom]	;ChangeState
type = VarRandom
trigger1 = Time = 0
v = 3
range = -1,1
ignorehitpause = 1

[State 10750, VarSet]
type = VarSet
trigger1 = Time = 1
fvar(1) = var(1)
ignorehitpause = 1

[State 10750, VarSet]
type = VarSet
trigger1 = Time = 1
fvar(2) = var(2)
ignorehitpause = 1

[State 10750, VelSet]
type = VelSet
trigger1 = Time = 2
x = -1*(fvar(1)/10)
y = -1*(fvar(2)/10)
ignorehitpause = 1

[State 10750, VelAdd]
type = VelAdd
trigger1 = Time > 2
y = 0.4
ignorehitpause = 1

[State 10750, ChangeState]
type = ChangeState
trigger1 = Time > 2
trigger1 = Pos Y >= 0
value = 10755
ignorehitpause = 1

[State 10750, ChangeState]
type = ChangeState
trigger1 = Time > 10
trigger1 = RootDist X = [-10,10]
trigger1 = RootDist Y = [-10,10]
value = 10758
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood

[Statedef 10755]
type = S
movetype = I
physics = S
ctrl = 0
anim = 10715
velset = 0,0

[State 10755, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10755, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 10755
time = -1
ignorehitpause = 1

[State 10755, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 10755, VarRandom]	;ChangeState
type = VarRandom
trigger1 = Time = 0
v = 5
range = -5,5
ignorehitpause = 1

[State 10750, PosSet]
type = PosSet
trigger1 = Time = 1
y = var(5)
ignorehitpause = 1

[State 10755, ChangeState]
type = ChangeState
trigger1 = RootDist X = [-10,10]
trigger1 = RootDist Y = [-10,10]
value = 10756
ignorehitpause = 1

[State 10755, ChangeState]
type = ChangeState
trigger1 = Time >= 20
value = 10757
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood

[Statedef 10756]
type = S
movetype = I
physics = S
ctrl = 0
anim = 10716
velset = 0,0

[State 10756, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10756, ParentVarAdd]
type = ParentVarAdd
trigger1 = Root,fvar(22) < 100
trigger1 = Time = 0
fvar(22) = 1.0
ignorehitpause = 1

[State 10756, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; Blood

[Statedef 10757]
type = S
movetype = I
physics = S
ctrl = 0
anim = 10716
velset = 0,0

[State 10757, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10757, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; Blood

[Statedef 10758]
type = A
movetype = I
physics = N
ctrl = 0
anim = 10718
velset = 0,0

[State 10758, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10756, ParentVarAdd]
type = ParentVarAdd
trigger1 = Root,fvar(22) < 100
trigger1 = Time = 0
fvar(22) = 1.0
ignorehitpause = 1

[State 10758, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; Blood

[Statedef 10760]
type = A
movetype = I
physics = N
anim = 99990
ctrl = 0

[State 10760, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 10760
time = -1
ignorehitpause = 1

[State 10760, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 10760, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10760, VarSet]
type = VarSet
trigger1 = Time = 0
var(0) = (isHelper(10760)*10710)+(isHelper(10761)*10711)+(isHelper(10762)*10712)
ignorehitpause = 1

[State 10760, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1
value = var(0)
ignorehitpause = 1

[State 10760, VarRandom]	;Vel X
type = VarRandom
trigger1 = Time = 0
v = 1
range = 3,13
ignorehitpause = 1

[State 10760, VarRandom]	;Vel Y
type = VarRandom
trigger1 = Time = 0
v = 2
range = 80,120
ignorehitpause = 1

[State 10760, VarRandom]	;ChangeState
type = VarRandom
trigger1 = Time = 0
v = 3
range = -1,1
ignorehitpause = 1

[State 10760, VarSet]
type = VarSet
trigger1 = Time = 1
fvar(1) = var(1)
ignorehitpause = 1

[State 10760, VarSet]
type = VarSet
trigger1 = Time = 1
fvar(2) = var(2)
ignorehitpause = 1

[State 10760, VelSet]
type = VelSet
trigger1 = Time = 2
x = -1*(fvar(1)/10)
y = -1*(fvar(2)/10)
ignorehitpause = 1

[State 10760, VelAdd]
type = VelAdd
trigger1 = Time > 2
y = 0.4
ignorehitpause = 1

[State 10760, ChangeState]
type = ChangeState
trigger1 = Time > 2
trigger1 = Pos Y >= 0
value = 10765
ignorehitpause = 1

[State 10760, ChangeState]
type = ChangeState
trigger1 = Time > 10
trigger1 = RootDist X = [-25,25]
trigger1 = RootDist Y = [-25,25]
value = 10768
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood

[Statedef 10765]
type = S
movetype = I
physics = S
ctrl = 0
anim = 10715
velset = 0,0

[State 10765, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10765, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 10765
time = -1
ignorehitpause = 1

[State 10765, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 10765, VarRandom]	;ChangeState
type = VarRandom
trigger1 = Time = 0
v = 5
range = -5,5
ignorehitpause = 1

[State 10760, PosSet]
type = PosSet
trigger1 = Time = 1
y = var(5)
ignorehitpause = 1

[State 10765, ChangeState]
type = ChangeState
trigger1 = RootDist X = [-25,25]
trigger1 = RootDist Y = [-25,25]
value = 10766
ignorehitpause = 1

[State 10765, ChangeState]
type = ChangeState
trigger1 = Time >= 20
value = 10767
ignorehitpause = 1

;----------------------------------------------------------------------
; Blood

[Statedef 10766]
type = S
movetype = I
physics = S
ctrl = 0
anim = 10716
velset = 0,0

[State 10766, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10766, ParentVarAdd]
type = ParentVarAdd
trigger1 = Root,fvar(22) < 100
trigger1 = Time = 0
fvar(22) = 1.25
ignorehitpause = 1

[State 10766, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; Blood

[Statedef 10767]
type = S
movetype = I
physics = S
ctrl = 0
anim = 10716
velset = 0,0

[State 10767, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10767, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; Blood

[Statedef 10768]
type = A
movetype = I
physics = N
ctrl = 0
anim = 10718
velset = 0,0

[State 10768, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 10766, ParentVarAdd]
type = ParentVarAdd
trigger1 = Root,fvar(22) < 100
trigger1 = Time = 0
fvar(22) = 1.25
ignorehitpause = 1

[State 10768, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; Awaken

[Statedef 10805]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
sprpriority = 4

[State 10805, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 10805
time = -1
ignorehitpause = 1

[State 10805, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 10805, AssertSpecial]
type = AssertSpecial
trigger1 = Root,MoveType = H && Root,StateNo != [120,155]
trigger1 = Root,MoveType = H && Root,StateNo != [5000,5150]
flag = Invisible
ignorehitpause = 1

[State 10805, Turn]
type = Turn
trigger1 = Root,Facing != Facing

[State 10805, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0
time = -1
ignorehitpause = 1

[State 10805, SprPriority]
type = SprPriority
trigger1 = Root,var(32) > 0
value = 0

[State 10805, SprPriority]
type = SprPriority
trigger1 = Root,var(2) > 0
value = 3

[State 10805, SprPriority]
type = SprPriority
trigger1 = Root,StateNo = [500,530]
value = 1

[State 10805, SprPriority]
type = SprPriority
trigger1 = Root,StateNo = 800
value = 1

[State 10805, SprPriority]
type = SprPriority
trigger1 = (Root,StateNo = 1301) && (Root,AnimElemTime(12) >= 0)
value = 1

[State 10805, SprPriority]
type = SprPriority
trigger1 = Root,StateNo = [6000,6029]
value = 1

[State 10805, SprPriority]
type = SprPriority
trigger1 = (Root,StateNo = 6100) && (Root,AnimElemTime(13) < 0)
trigger2 = (Root,StateNo = 6110) && (Root,AnimElemTime(13) < 0)
trigger3 = (Root,StateNo = 6120) && (Root,AnimElemTime(13) < 0)
trigger4 = (Root,StateNo = 6101)
trigger5 = (Root,StateNo = 6111)
trigger6 = (Root,StateNo = 6121)
value = 1

[State 10805, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = -1
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
TimeGap = 2
FrameGap = 1
Trans = Add1
length = 4

[State 10805, PalFX]
type = PalFX
trigger1 = GameTime % 21 = 0
trigger2 = GameTime % 21 = 20
time = 1
add = 250,220,0
ignorehitpause = 1

[State 10805, PalFX]
type = PalFX
trigger1 = GameTime % 21 = 1
trigger2 = GameTime % 21 = 19
time = 1
add = 235,205,0
ignorehitpause = 1

[State 10805, PalFX]
type = PalFX
trigger1 = GameTime % 21 = 2
trigger2 = GameTime % 21 = 18
time = 1
add = 220,190,0
ignorehitpause = 1

[State 10805, PalFX]
type = PalFX
trigger1 = GameTime % 21 = 3
trigger2 = GameTime % 21 = 17
time = 1
add = 205,175,0
ignorehitpause = 1

[State 10805, PalFX]
type = PalFX
trigger1 = GameTime % 21 = 4
trigger2 = GameTime % 21 = 16
time = 1
add = 190,160,0
ignorehitpause = 1

[State 10805, PalFX]
type = PalFX
trigger1 = GameTime % 21 = 5
trigger2 = GameTime % 21 = 15
time = 1
add = 175,145,0
ignorehitpause = 1

[State 10805, PalFX]
type = PalFX
trigger1 = GameTime % 21 = 6
trigger2 = GameTime % 21 = 14
time = 1
add = 160,130,0
ignorehitpause = 1

[State 10805, PalFX]
type = PalFX
trigger1 = GameTime % 21 = 7
trigger2 = GameTime % 21 = 13
time = 1
add = 145,115,0
ignorehitpause = 1

[State 10805, PalFX]
type = PalFX
trigger1 = GameTime % 21 = 8
trigger2 = GameTime % 21 = 12
time = 1
add = 130,100,0
ignorehitpause = 1

[State 10805, PalFX]
type = PalFX
trigger1 = GameTime % 21 = 9
trigger2 = GameTime % 21 = 11
time = 1
add = 115,85,0
ignorehitpause = 1

[State 10805, PalFX]
type = PalFX
trigger1 = GameTime % 21 = 10
time = 1
add = 100,70,0
ignorehitpause = 1

[State 10805, ChangeAnim]
type = ChangeAnim
trigger1 = Root,MoveType = H && Root,StateNo = [120,155]
trigger2 = Root,MoveType = H && Root,StateNo = [5000,5150]
trigger3 = Root,MoveType != H
value = Root,Anim+60000
elem = Root,AnimElemNo(0)

[State 10805, DestroySelf]
type = DestroySelf
trigger1 = Root,var(30) = 0
trigger2 = Root,MoveType = H && Root,StateNo != [5000,5150]
trigger3 = RoundState > 3

;----------------------------------------------------------------------
; Armor

[Statedef 10810]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
sprpriority = 4

[State 10810, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP
slot = 0
stateno = 10811
time = -1
ignorehitpause = 1

[State 10810, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
ignorehitpause = 1

[State 10810, Turn]
type = Turn
trigger1 = Root,Facing != Facing

[State 10810, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0
time = -1
ignorehitpause = 1

[State 10810, ChangeAnim]
type = ChangeAnim
trigger1 = Root,MoveType = H && Root,StateNo = [120,155]
trigger2 = Root,MoveType = H && Root,StateNo = [5000,5150]
trigger3 = Root,MoveType != H
value = Root,Anim
elem = Root,AnimElemNo(0)

[State 10810, VarSet]
type = VarSet
trigger1 = Time = 0
fvar(0) = 0
ignorehitpause = 1

[State 10810, DestroySelf]
type = DestroySelf
trigger1 = Root,var(30) = 0
trigger2 = Root,MoveType = H && Root,StateNo != [5000,5150]
trigger3 = RoundState > 3

;----------------------------------------------------------------------
; Armor

[Statedef 10811]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 4

[State 10811, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP
slot = 0
stateno = 10811
time = -1
ignorehitpause = 1

[State 10811, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
ignorehitpause = 1

[State 10811, Turn]
type = Turn
trigger1 = Root,Facing != Facing

[State 10811, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0
time = -1
ignorehitpause = 1

[State 10811, VarAdd]
type = VarAdd
trigger1 = Time = 0
trigger1 = fvar(0) < 0.9
fvar(0) = 0.1
ignorehitpause = 1

[State 10811, ChangeAnim]
type = ChangeAnim
trigger1 = Root,MoveType = H && Root,StateNo = [120,155]
trigger2 = Root,MoveType = H && Root,StateNo = [5000,5150]
trigger3 = Root,MoveType != H
value = Root,Anim
elem = Root,AnimElemNo(0)

[State 10811, ParentVarSet]
type = ParentVarSet
trigger1 = Time = 0
var(32) = 2
ignorehitpause = 1

[State 10811, ParentVarSet]
type = ParentVarSet
trigger1 = Time = 0
var(33) = ceil(GetHitVar(damage)*(1-fvar(0)))
ignorehitpause = 1

[State 10811, ChangeState]
type = ChangeState
trigger1 = Time > 30
value = 10810

[State 10811, DestroySelf]
type = DestroySelf
trigger1 = Root,var(30) = 0

;----------------------------------------------------------------------
; 214 + A or B or C - Lv.1 / Lv.2

[Statedef 11200]
type = S
movetype = A
physics = S
anim = 11202
ctrl = 0
velset = 0,0
sprpriority = 7

[State 11200, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 11200
time = -1
ignorehitpause = 1

[State 11200, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 11200, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 11200, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 10
freq = 80
ampl = 5

[State 11200, Effect]
type = Explod
trigger1 = Time = 0
anim = 11200
postype = p1
pos = 0,0
facing = -1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 7
ignorehitpause = 1

[State 11200, Effect]
type = Explod
trigger1 = Time = 0
anim = 11201
postype = p1
pos = 0,0
facing = -1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 7
ignorehitpause = 1

[State 11200, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = Time = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*40),5
getpower = 50,25
givepower = 25,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,(-50+ceil(P2Dist Y))+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-6.5
guard.velocity = -5
air.velocity = 0,-6.5
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*40*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 11200, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = Time = 28
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*15),1
getpower = 50,25
givepower = 25,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,(-50+ceil(P2Dist Y))+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-8
guard.velocity = -5
air.velocity = 0,-8
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*40*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.35

[State -3, DisplayToClipBoard]
type = DisplayToClipBoard
trigger1 = 1
text = "fv2=%f"
params = 40*root,fvar(2)*root,fvar(8)
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11200, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31002
ignorehitpause = 1

[State 11200, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 11200, Correction]
type = Helper
;triggerall = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 6
ignorehitpause = 1

[State 11200, HitEffect]
type = Helper
trigger1 = Time > 20
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 10720
ID = 10721
ignorehitpause = 1

[State 11110, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11200, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; 214 + A or B or C - Lv.3

[Statedef 11260]
type = S
movetype = A
physics = S
anim = 11202
ctrl = 0
velset = 0,0
sprpriority = 7

[State 11260, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 11260
time = -1
ignorehitpause = 1

[State 11260, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 11260, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 11260, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 10
freq = 80
ampl = 5

[State 11260, Effect]
type = Explod
trigger1 = Time = 0
anim = 11200
postype = p1
pos = 0,0
facing = -1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 7
ignorehitpause = 1

[State 11260, Effect]
type = Explod
trigger1 = Time = 0
anim = 11201
postype = p1
pos = 0,0
facing = -1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 7
ignorehitpause = 1

[State 11260, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = Time = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*45),5
getpower = 50,25
givepower = 25,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,(-50+ceil(P2Dist Y))+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-6
guard.velocity = -5
air.velocity = 0,-6
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*60*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 11260, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = Time = 22
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*15),1
getpower = 50,25
givepower = 25,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,(-50+ceil(P2Dist Y))+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-8
guard.velocity = -5
air.velocity = 0,-8
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*60*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 11260, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = Time = 41
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*15),1
getpower = 50,25
givepower = 25,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,(-50+ceil(P2Dist Y))+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-8
guard.velocity = -5
air.velocity = 0,-8
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*60*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 11260, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31002
ignorehitpause = 1

[State 11260, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 11260, Correction]
type = Helper
;triggerall = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 6
ignorehitpause = 1

[State 11260, HitEffect]
type = Helper
trigger1 = Time > 39
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 10720
ID = 10721
ignorehitpause = 1

[State 11260, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11260, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; 2141236 + A

[Statedef 16100]
type = S
movetype = A
physics = S
anim = 16101
ctrl = 0
velset = 0,0
sprpriority = 7

[State 16100, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16100
time = -1
ignorehitpause = 1

[State 16100, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16100, Explod]
type = Explod
trigger1 = Time = 0
anim = 16100
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16100, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = Time = 0
attr = A,SP
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*200),20
getpower = 0,0
givepower = 100,25
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,(-50+ceil(P2Dist Y))+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-10
guard.velocity = -5
air.velocity = 0,-10
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*60*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.35

[State 16100, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31005
ignorehitpause = 1

[State 16100, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 16100, Correction]
type = Helper
;triggerall = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 20
ignorehitpause = 1

[State 16100, HitSounds]
type = PlaySnd
trigger1 = Time = 0
value = s3,9
ignorehitpause = 1

[State 16100, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16100, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; 2141236 + B

[Statedef 16110]
type = S
movetype = A
physics = S
anim = 16101
ctrl = 0
velset = 0,0
sprpriority = 7

[State 16110, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16110
time = -1
ignorehitpause = 1

[State 16110, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16110, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = Invisible
ignorehitpause = 1

[State 16110, Explod]
type = Explod
trigger1 = Time = 0
anim = 16100
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16110, Explod]
type = Explod
trigger1 = Time = 0
anim = 16100
postype = p1
pos = 20,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16110, Explod]
type = Explod
trigger1 = Time = 0
anim = 16100
postype = p1
pos = -20,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16110, Explod]
type = Explod
trigger1 = Time = 0
anim = 16100
postype = p1
pos = 40,20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16110, Explod]
type = Explod
trigger1 = Time = 0
anim = 16100
postype = p1
pos = -40,20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16110, Explod]
type = Explod
trigger1 = Time = 0
anim = 16101
postype = p1
pos = 20,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16110, Explod]
type = Explod
trigger1 = Time = 0
anim = 16101
postype = p1
pos = -20,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16110, Explod]
type = Explod
trigger1 = Time = 0
anim = 16101
postype = p1
pos = 40,20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16110, Explod]
type = Explod
trigger1 = Time = 0
anim = 16101
postype = p1
pos = -40,20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16110, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = Time = 0
attr = A,SP
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*270),25
getpower = 0,0
givepower = 100,25
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,(-50+ceil(P2Dist Y))+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-10
guard.velocity = -5
air.velocity = 0,-10
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*60*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.35

[State 16110, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31005
ignorehitpause = 1

[State 16110, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 16110, Correction]
type = Helper
;triggerall = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 50
ignorehitpause = 1

[State 16110, HitSounds]
type = PlaySnd
trigger1 = Time = 0
value = s3,9
ignorehitpause = 1

[State 16110, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16110, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; 2141236 + C

[Statedef 16120]
type = S
movetype = A
physics = S
anim = 16101
ctrl = 0
velset = 0,0
sprpriority = 7

[State 16120, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16120
time = -1
ignorehitpause = 1

[State 16120, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16120, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = Invisible
ignorehitpause = 1

[State 16120, Explod]
type = Explod
trigger1 = Time = 0
anim = 16100
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16120, Explod]
type = Explod
trigger1 = Time = 0
anim = 16100
postype = p1
pos = 30,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16120, Explod]
type = Explod
trigger1 = Time = 0
anim = 16100
postype = p1
pos = -30,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16120, Explod]
type = Explod
trigger1 = Time = 0
anim = 16100
postype = p1
pos = 60,10
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16120, Explod]
type = Explod
trigger1 = Time = 0
anim = 16100
postype = p1
pos = -60,10
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16120, Explod]
type = Explod
trigger1 = Time = 0
anim = 16101
postype = p1
pos = 30,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16120, Explod]
type = Explod
trigger1 = Time = 0
anim = 16101
postype = p1
pos = -30,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16120, Explod]
type = Explod
trigger1 = Time = 0
anim = 16101
postype = p1
pos = 60,10
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16120, Explod]
type = Explod
trigger1 = Time = 0
anim = 16101
postype = p1
pos = -60,10
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16120, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = Time = 0
attr = A,SP
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*410),45
getpower = 0,0
givepower = 100,25
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,(-50+ceil(P2Dist Y))+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-10
guard.velocity = -5
air.velocity = 0,-10
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*60*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.35

[State 16120, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31005
ignorehitpause = 1

[State 16120, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 16120, Correction]
type = Helper
;triggerall = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 80
ignorehitpause = 1

[State 16120, HitSounds]
type = PlaySnd
trigger1 = Time = 0
value = s3,9
ignorehitpause = 1

[State 16120, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16120, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; 214214 + A

[Statedef 16200]
type = S
movetype = A
physics = S
anim = 16200
ctrl = 0
velset = 0,0
sprpriority = -5

[State 16200, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16200
time = -1
ignorehitpause = 1

[State 16200, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16200, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16200, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128,256
ignorehitpause = 1

[State 16200, ChangeState]
type = ChangeState
trigger1 = Time >= 70
value = 16201

[State 16200, ChangeState]
type = ChangeState
trigger1 = Root,StateNo != [120,155]
trigger1 = Root,MoveType = H
value = 16203

;----------------------------------------------------------------------
; 214214 + A

[Statedef 16201]
type = S
movetype = A
physics = N
anim = 16201
ctrl = 0
velset = 9,0
sprpriority = 7

[State 16201, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16201
time = -1
ignorehitpause = 1

[State 16201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16201, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16201, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128,256
ignorehitpause = 1

[State 16201, 4]
type = ChangeState
trigger1 = Time >= 17
trigger2 = ceil(P2Dist X) < 140
value = 16202

[State 16201, ChangeState]
type = ChangeState
trigger1 = Root,StateNo != [120,155]
trigger1 = Root,MoveType = H
value = 16203

;----------------------------------------------------------------------
; 214214 + A

[Statedef 16202]
type = S
movetype = A
physics = N
anim = 16202
ctrl = 0
sprpriority = 7

[State 16202, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16202
time = -1
ignorehitpause = 1

[State 16202, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16202, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16202, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128,256
ignorehitpause = 1

[State 16202, VelMul]
type = VelMul
trigger1 = Time % 2 = 0
trigger1 = Vel X > 0
x = 0.9
ignorehitpause = 0

[State 16202, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,2
channel = 1
ignorehitpause = 1

[State 16202, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11000
postype = p1
pos = 55,-30
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 2

[State 16202, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = AnimElem = 3
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(Root,fvar(0)*40),10
getpower = 50,25
givepower = 35,20
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = -6,0
guard.velocity = -5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = -3.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*40*Root,fvar(2)*Root,fvar(8))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 16202, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = AnimElem = 4
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(Root,fvar(0)*40),10
getpower = 50,25
givepower = 35,20
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = -6,0
guard.velocity = -5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = -3.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*40*Root,fvar(2)*Root,fvar(8))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 16202, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = AnimElem = 5
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(Root,fvar(0)*40),10
getpower = 50,25
givepower = 35,20
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = -6,0
guard.velocity = -5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = -3.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*40*Root,fvar(2)*Root,fvar(8))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 16202, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31003
ignorehitpause = 1

[State 16202, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 16202, Correction]
type = Helper
;triggerall = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 3
ignorehitpause = 1

[State 16202, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16202, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = Root,StateNo != [120,155]
trigger2 = Root,MoveType = H
value = 16203

;----------------------------------------------------------------------
; 214214 + A

[Statedef 16203]
type = S
movetype = A
physics = S
anim = 16203
ctrl = 0
velset = 0,0
sprpriority = 7

[State 16203, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16203
time = -1
ignorehitpause = 1

[State 16203, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16203, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16203, Trans]
type = Trans
trigger1 = 1
trans = add
alpha = 128,256
ignorehitpause = 1

[State 16203, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; 214214 + B

[Statedef 16210]
type = S
movetype = A
physics = S
anim = 16210
ctrl = 0
velset = 0,0
sprpriority = -5

[State 16210, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16210
time = -1
ignorehitpause = 1

[State 16210, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16210, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16210, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128,256
ignorehitpause = 1

[State 16210, ChangeState]
type = ChangeState
trigger1 = Time >= 90
value = 16211

[State 16210, ChangeState]
type = ChangeState
trigger1 = Root,StateNo != [120,155]
trigger1 = Root,MoveType = H
value = 16203

;----------------------------------------------------------------------
; 214214 + B

[Statedef 16211]
type = S
movetype = A
physics = N
anim = 16211
ctrl = 0
velset = 0,0

[State 16211, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16211
time = -1
ignorehitpause = 1

[State 16211, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16211, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16211, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128,256
ignorehitpause = 1

[State 16211, 4]
type = ChangeState
trigger1 = Time >= 810
trigger2 = Time >= 28
trigger2 = P2Dist X < 40
value = 16212

[State 16211, ChangeState]
type = ChangeState
trigger1 = Root,StateNo != [120,155]
trigger1 = Root,MoveType = H
value = 16203

;----------------------------------------------------------------------
; 214214 + B

[Statedef 16212]
type = S
movetype = A
physics = N
anim = 16212
ctrl = 0

[State 16212, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16212
time = -1
ignorehitpause = 1

[State 16212, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16212, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16212, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128,256
ignorehitpause = 1

[State 16212, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(12) = 0
trigger3 = AnimElemTime(20) = 0
value = s0,1
channel = 1
ignorehitpause = 1

[State 16212, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(17) = 0
physics = N
statetype = A
ignorehitpause = 1

[State 16212, VelSet]
type = VelSet
trigger1 = AnimElemTime(17) = 0
x = 4
y = -3.5
persistent = 0

[State 16212, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(17) >= 0
y = 0.3

[State 16212, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = AnimElem = 4
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(Root,fvar(0)*40),0
getpower = 0,0
givepower = 35,20
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = -5,0
guard.velocity = -5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = -3.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*40*Root,fvar(2)*Root,fvar(8))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 16212, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = AnimElem = 12
attr = S,SA
hitflag = MAF
guardflag = M
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(Root,fvar(0)*40),0
getpower = 0,0
givepower = 35,20
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10250
guard.sparkno = S10270
sparkxy = -30+random%20,-45+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = -5,0
guard.velocity = -5
air.velocity = -3.5,ifelse(EnemyNear,Vel Y <= 0,(-4.5+EnemyNear,Vel Y*0.25),-4.25)
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = -3.0
guard.cornerpush.veloff = -3.0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*40*Root,fvar(2)*Root,fvar(8))
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4

[State 16212, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = AnimElem = 20
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ceil(Root,fvar(0)*62),0
getpower = 50,25
givepower = 25,15
pausetime = 10,10
guard.pausetime = 10,10
sparkno = S10220
guard.sparkno = S10270
sparkxy = -30+random%20,-35+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = -1.5,-6.0
guard.velocity = -5
air.velocity = -1.5,-6.0
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*40*Root,fvar(2)*Root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.35
p2facing = 1

[State 16212, HitEffect]
type = Helper
trigger1 = AnimElemTime(20) < 0
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31003
ignorehitpause = 1

[State 16212, HitEffect]
type = Helper
trigger1 = AnimElemTime(20) >= 0
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31002
ignorehitpause = 1

[State 16212, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 16212, Correction]
type = Helper
;triggerall = Root,var(9) > 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 3
ignorehitpause = 1

[State 16212, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16212, 4]
type = ChangeState
trigger1 = AnimElemTime(20) >= 0
trigger1 = Pos Y >= 0
value = 16213

[State 16212, ChangeState]
type = ChangeState
trigger1 = Root,StateNo != [120,155]
trigger1 = Root,MoveType = H
value = 16203

;----------------------------------------------------------------------
; 214214 + B

[Statedef 16213]
type = S
movetype = A
physics = S
anim = 16213
ctrl = 0
velset = 0,0
sprpriority = 7

[State 16213, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16213
time = -1
ignorehitpause = 1

[State 16213, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16213, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16213, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 16213, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128,256
ignorehitpause = 1

[State 16213, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 16203

[State 16213, ChangeState]
type = ChangeState
trigger1 = Root,StateNo != [120,155]
trigger1 = Root,MoveType = H
value = 16203

;----------------------------------------------------------------------
; 214214 + B

[Statedef 16220]
type = S
movetype = A
physics = S
anim = 16220
ctrl = 0
velset = 0,0
sprpriority = -5

[State 16220, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16220
time = -1
ignorehitpause = 1

[State 16220, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16220, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16220, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128,256
ignorehitpause = 1

[State 16220, ChangeState]
type = ChangeState
trigger1 = Time >= 90
value = 16221

[State 16220, ChangeState]
type = ChangeState
trigger1 = Root,StateNo != [120,155]
trigger1 = Root,MoveType = H
value = 16203

;----------------------------------------------------------------------
; 214214 + B

[Statedef 16221]
type = S
movetype = A
physics = N
anim = 16221
ctrl = 0
velset = 0,0

[State 16221, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16221
time = -1
ignorehitpause = 1

[State 16221, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16221, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16221, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128,256
ignorehitpause = 1

[State 16221, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 16222

[State 16221, ChangeState]
type = ChangeState
trigger1 = Root,StateNo != [120,155]
trigger1 = Root,MoveType = H
value = 16203

;----------------------------------------------------------------------
; 214214 + B

[Statedef 16222]
type = S
movetype = A
physics = N
anim = 16222
ctrl = 0
velset = 2.5,0

[State 16222, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16222
time = -1
ignorehitpause = 1

[State 16222, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16222, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16222, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128,256
ignorehitpause = 1

[State 16222, 4]
type = ChangeState
trigger1 = ceil(P2Dist X) < 60
value = 16223

[State 16222, ChangeState]
type = ChangeState
trigger1 = Root,StateNo != [120,155]
trigger1 = Root,MoveType = H
value = 16203

;----------------------------------------------------------------------
; 214214 + B

[Statedef 16223]
type = S
movetype = A
physics = S
anim = 16223
ctrl = 0
velset = 0,0

[State 16223, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16223
time = -1
ignorehitpause = 1

[State 16223, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16223, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16223, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 16223, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128,256
ignorehitpause = 1

[State 16223, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,1
ignorehitpause = 1

[State 16223, HitEffects]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Tornado_16225"
postype = p1
pos = 60,0
pausemovetime = 9999
supermovetime = 9999
stateno = 16225
ID = 16225
ignorehitpause = 1

[State 16223, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 16224

[State 16223, ChangeState]
type = ChangeState
trigger1 = Root,StateNo != [120,155]
trigger1 = Root,MoveType = H
trigger1 = NumHelper(16225) = 0
value = 16203

;----------------------------------------------------------------------
; 214214 + B

[Statedef 16224]
type = S
movetype = A
physics = S
anim = 16224
ctrl = 0
velset = 0,0

[State 16224, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16224
time = -1
ignorehitpause = 1

[State 16224, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16224, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16224, DestroySelf]
type = DestroySelf
trigger1 = AnimElemTime(23) >= 0
trigger1 = NumHelper(16225) = 0

;----------------------------------------------------------------------
; 214214 + C

[Statedef 16225]
type = S
movetype = A
physics = S
anim = 16225
ctrl = 0
velset = 0,0
sprpriority = 7

[State 16225, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 16225
time = -1
ignorehitpause = 1

[State 16225, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 16225, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 16225, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 10
freq = 80
ampl = 5

[State 16225, Effect]
type = Explod
trigger1 = Time = 0
anim = 16225
postype = p1
pos = 0,0
facing = -1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 7
ignorehitpause = 1

[State 16225, Effect]
type = Explod
trigger1 = Time = 0
anim = 11201
postype = p1
pos = 0,0
facing = -1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 7
ignorehitpause = 1

[State 16225, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = AnimElemTime(6) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*40),5
getpower = 0,0
givepower = 25,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,(-50+ceil(P2Dist Y))+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-5
guard.velocity = -5
air.velocity = 0,-5
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*50*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.3

[State 16225, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = AnimElemTime(28) = 0
trigger2 = AnimElemTime(48) = 0
trigger3 = AnimElemTime(63) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*15),1
getpower = 0,0
givepower = 25,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,(-50+ceil(P2Dist Y))+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-5
guard.velocity = -5
air.velocity = 0,-5
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*50*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.3

[State 16225, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = AnimElemTime(77) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*15),1
getpower = 0,0
givepower = 25,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,(-50+ceil(P2Dist Y))+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-8
guard.velocity = -5
air.velocity = 0,-8
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 10+ceil(0.75*50*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.3

[State 16225, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31002
ignorehitpause = 1

[State 16225, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 16225, Correction]
type = Helper
;triggerall = Root,var(9) > 0
trigger1 = AnimElemTime(7) < 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 2
ignorehitpause = 1

[State 16225, Correction]
type = Helper
;triggerall = Root,var(9) > 0
trigger1 = AnimElemTime(28) >= 0
trigger1 = MoveHit
helpertype = normal
name = "Correction"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30500
ID = 4
ignorehitpause = 1

[State 16225, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16225, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------
; 214214 + C

[Statedef 17000]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 7

[State 17000, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 17000
time = -1
ignorehitpause = 1

[State 17000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 17000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 17000+isHelper(17001)*1+isHelper(17002)*2+isHelper(17003)*3

[State 17000, VelSet]
type = VelSet
trigger1 = isHelper(17000)
trigger2 = isHelper(17001)
x = 16*0.75
y = -24*0.75
ignorehitpause = 1

[State 17000, VelSet]
type = VelSet
trigger1 = isHelper(17002)
x = 8*0.75
y = -24*0.75
ignorehitpause = 1

[State 17000, VelSet]
type = VelSet
trigger1 = isHelper(17003)
x = 8
y = -24
ignorehitpause = 1

[State 17000, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = isHelper(17000)
trigger2 = isHelper(17001)
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*50),0
getpower = 0,0
givepower = 25,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-100+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-3
guard.velocity = -5
air.velocity = 0,-3
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = 10+ceil(0.75*50*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.25
p2stateno = 47001
persistent = 0

[State 17000, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = isHelper(17002)
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*50),0
getpower = 0,0
givepower = 25,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-100+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-5
guard.velocity = -5
air.velocity = 0,-5
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = 10+ceil(0.75*50*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.25
p2stateno = 47001
persistent = 0

[State 17000, Hitdef]
type = Hitdef
triggerall = Root,var(4) = 1
trigger1 = isHelper(17003)
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = ceil(root,fvar(0)*50),0
getpower = 0,0
givepower = 25,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S10260
guard.sparkno = S10270
sparkxy = -30+random%20,-100+random%20
hitsound = -1,0
guardsound = -1,0
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 21
air.hittime = 23
guard.ctrltime = 21
airguard.ctrltime = 21
ground.velocity = 0,-8
guard.velocity = -5
air.velocity = 0,-8
airguard.velocity = -1.5,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
fall.recovertime = 10+ceil(0.75*50*root,fvar(2)*root,fvar(8))
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4
p2stateno = 47001
persistent = 0

[State 17000, TargetState]
type = TargetState
trigger1 = isHelper(17003)
trigger1 = NumTarget > 0
trigger1 = Root,var(10) = 1
value = 47002
persistent = 0
ignorehitpause = 1

[State 17000, HitEffect]
type = Helper
trigger1 = MoveHit
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31002
ignorehitpause = 1

[State 17000, HitEffect]
type = Helper
trigger1 = MoveGuarded
helpertype = normal
name = "Effect"
postype = p1
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30000
ID = 31100
ignorehitpause = 1

[State 17000, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 17000, DestroySelf]
type = DestroySelf
trigger1 = !isHelper(17003)
trigger1 = ScreenPos Y < -400
trigger2 = isHelper(17003)
trigger2 = Root,var(10) = 1

;----------------------------------------------------------------------
; 214214 + C

[Statedef 17010]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
sprpriority = 7

[State 17010, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 17010
time = -1
ignorehitpause = 1

[State 17010, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 17010, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 17010+isHelper(17011)*1+isHelper(17012)*2+isHelper(17013)*3

[State 17010, VelSet]
type = VelSet
trigger1 = isHelper(17010)
trigger2 = isHelper(17012)
x = 24
y = 24
ignorehitpause = 1

[State 17010, VelSet]
type = VelSet
trigger1 = isHelper(17011)
trigger2 = isHelper(17013)
x = 12
y = 36
ignorehitpause = 1

[State 17010, ChangeState]
type = ChangeState
triggerall = Time > 2
trigger1 = Pos Y >= 0
value = 17011
ignorehitpause = 1

;----------------------------------------------------------------------
; 214214 + C

[Statedef 17011]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
sprpriority = 7

[State 17011, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 17011
time = -1
ignorehitpause = 1

[State 17011, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 17011, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 17015+isHelper(17011)*1+isHelper(17012)*2+isHelper(17013)*3

[State 17011, PosSet]
type = PosSet
triggerall = Time = 0
trigger1 = isHelper(17010)
y = -5

[State 17011, PosSet]
type = PosSet
triggerall = Time = 0
trigger1 = isHelper(17011)
trigger2 = isHelper(17012)
y = 0

[State 17011, PosSet]
type = PosSet
triggerall = Time = 0
trigger1 = isHelper(17013)
y = 5

[State 17011, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 17011, ParentVarAdd]
type = ParentVarAdd
trigger1 = Time = 0
var(11) = 1
ignorehitpause = 1

[State 17011, ChangeState]
type = ChangeState
trigger1 = Time >= 60
value = 17012
ignorehitpause = 1

;----------------------------------------------------------------------
; 214214 + C

[Statedef 17012]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
sprpriority = 7

[State 17012, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AP, AT
slot = 0
stateno = 17012
time = -1
ignorehitpause = 1

[State 17012, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 17012, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 17010+isHelper(17011)*1+isHelper(17012)*2+isHelper(17013)*3

[State 17012, VelSet]
type = VelSet
trigger1 = isHelper(17010)
trigger2 = isHelper(17012)
x = 24
y = -24
ignorehitpause = 1

[State 17012, VelSet]
type = VelSet
trigger1 = isHelper(17011)
trigger2 = isHelper(17013)
x = 12
y = -36
ignorehitpause = 1

[State 17012, DestroySelf]
type = DestroySelf
trigger1 = ScreenPos Y <= -300


