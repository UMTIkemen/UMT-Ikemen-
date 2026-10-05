;アイテム玉--------------------------------------------------------------------
;バナナ出現時-------------------------------------------
[Statedef 6000, BananaDrop]
movetype = I
physics = N
velset = 1.8+random%2,-5.0-random%2
anim = 2100
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y < -10
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > -4;0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = -7
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 6001
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 6401
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;バナナ取得消滅-------------------------------------------
[Statedef 6001, GetBanana]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Slot3Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) >= 1
trigger1 = parent,var(42) = 0
v = 42
value = 1
persistent=0
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) = 0
v = 41
value = 1
persistent=0
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) = 0
v = 40
value = 1
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;バナナ攻撃-------------------------------------------
[Statedef 6002, BananaAttack]
movetype = A
physics = N
velset = ifelse((parent,var(50)=1),8.5,3.1),ifelse((parent,var(50)=1),-7.2,-10.0)
anim = 2107
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = pos Y >= 0
value = 6003
persistent=0

[State 1300, hit]
type = HitDef
trigger1 = 1
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = HA
hitflag = MAF
hitsound = s100,2
guardsound = s100,30
pausetime = 8,8
guard.pausetime = 10,10
sparkno = s2196
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 24
ground.velocity = -1.5,-1.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
id = 246002
persistent=0

[State 6000, VarRandom]
type = VarRandom
triggerall = 1
trigger1 = time = 0
v = 4
range = 1,3
persistent=0
ignorehitpause=1

[State 6000, Turn]
type = Turn
triggerall = 1
trigger1 = movehit
trigger1 = numtarget(246002) > 0
trigger1 = (target(246002),movetype = H)
persistent=0
ignorehitpause=1

[State 6000, GemSwich]
type = ChangeState
triggerall = 1
trigger1 = movehit
trigger1 = numtarget(246002) > 0
trigger1 = (target(246002),movetype = H)
value = ifelse(var(4)=1,7010,ifelse(var(4)=2,7012,7014))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = movecontact
ignorehitpause=1

;バナナ地面-------------------------------------------
[Statedef 6003, BananaGround]
movetype = A
physics = N
anim = 2114
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, Pos]
type = PosSet
trigger1 = time = 0
y = 0
persistent=0

[State 1000, Effect]
type = Explod
trigger1 = time = 0
Anim = 2116
id = 242101
pos = 0,0
postype = p1
ownpal = 1
sprpriority = 9
supermove = 1

[State 1000,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,2
persistent=0

[State 1300, hit]
type = HitDef
trigger1 = 1
trigger1 = anim = 2114
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = MA
hitflag = MAF
hitsound = -1
guardsound = s100,30
pausetime = 1,1
guard.pausetime = 10,10
sparkno = -1
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = Trip
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1.5,-5.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
id = 246003
fall = 1
fall.recover = 0
persistent=0

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = 1
trigger1 = anim = 2114
trigger1 = numtarget(246003) > 0
trigger1 = movehit
trigger1 = target(246003),movetype = H
value = 2115
persistent=0

[State 6000, StateTypeSet]
type = StateTypeSet
triggerall = 1
trigger1 = anim = 2115
movetype = I


[State 6000, VelSet]
type = VelSet
trigger1 = anim = 2115
trigger1 = animelemtime(1) = 0
x = -3.5
y = -8.0
persistent=0

[State 6000, Grav]
type = VelAdd
trigger1 = anim = 2115
trigger1 = animelemtime(2) >= 0
y = 0.44

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = anim = 2115
value = s100, 3
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = 1
trigger1 = anim = 2115
trans = addalpha
alpha = 256-(ceil(time*1.1)),0+(ceil(time*1.1))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = anim = 2114
trigger1 = time >= 300
trigger2 = anim = 2115
trigger2 = animtime = 0

;バナナ転がし-------------------------------------------
[Statedef 6004, BananaSet]
movetype = I
physics = N
velset = 0,0
anim = 2107
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, TimerReset]
type = VarSet
trigger1 = time = 0
v = 2
value = 0
ignorehitpause = 1

[State 6000, Reset]
type = VarSet
trigger1 = time = 0
v = 1
value = 0
ignorehitpause = 1

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 1 || var(1) = 2
value = 6007
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 11 || var(1) = 12
value = 6008
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 21 || var(1) = 22
value = 6009
persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = time = 0
x = 2.8
y = 0
persistent=0

[State 10000, AngleDraw]
type = AngleDraw
trigger1 = 1
trigger1 = time
trigger1 = time < 50
value = 0+(time*-45)
scale = 1,1
ignorehitpause = 1

[State 6000, Stop]
type = VelSet
trigger1 = time = 50
trigger2 = FrontEdgeBodyDist < -5
trigger3 = time > 50
trigger3 = pos Y >= 0
x = 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
;trigger1 = time >= 300
trigger1 = var(2) >= 300
value = 6003
persistent=0

[State 6000, PalFX]
type = PalFX
;trigger1 = time = 200
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;バナナ転がし（自分-移動）-------------------------------------------
[Statedef 6007, BananaSetMoveMe]
movetype = I
physics = N
velset = ifelse(var(1)=1,4.5,-4.5),-2.5
anim = 2107
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6008
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6009
;persistent=0

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6003
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;バナナ転がし（相手-移動）-------------------------------------------
[Statedef 6008, BananaSetMoveEnemy]
movetype = I
physics = N
velset = ifelse(var(1)=11,4.5,-4.5),-2.5
anim = 2107
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6007
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6009
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6003
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;バナナ転がし（パートナー-移動）-------------------------------------------
[Statedef 6009, BananaSetMovePartner]
movetype = I
physics = N
velset = ifelse(var(1)=21,4.5,-4.5),-2.5
anim = 2107
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6007
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6008
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6003
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1


;火出現時-------------------------------------------
[Statedef 6010, FireDrop]
movetype = I
physics = N
velset = 1.9+random%2,-7.8-random%2
anim = 2101
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
;trigger1 = vel X != 0
trigger1 = pos Y < -10
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > -4;0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = -7
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 6011
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 6411
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;火取得消滅-------------------------------------------
[Statedef 6011, GetFire]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Slot3Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) >= 1
trigger1 = parent,var(42) = 0
v = 42
value = 2
persistent=0
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) = 0
v = 41
value = 2
persistent=0
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) = 0
v = 40
value = 2
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;火攻撃-------------------------------------------
[Statedef 6012, FireAttack]
movetype = A
physics = N
velset = ifelse((parent,var(50)=1),8.5,3.1),ifelse((parent,var(50)=1),-7.2,-10.0)
anim = 2108
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = anim != 2128
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = anim != 2128
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = !movecontact
value = 6013
persistent=0

[State 1300, hit]
type = HitDef
trigger1 = 1
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = HA
hitflag = MAF
hitsound = s100,2
guardsound = s100,30
pausetime = 8,8
guard.pausetime = 10,10
sparkno = s2196
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 24
ground.velocity = -1.5,-5.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
p2stateno = 6015
fall = 1
id = 246012
persistent=0

[State 6000, StateTypeSet]
type = StateTypeSet
triggerall = 1
trigger1 = anim = 2502
trigger2 = anim = 2128
movetype = I


[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = time
trigger1 = movehit
trigger1 = numtarget(246012) > 0
trigger1 = (target(246012),movetype = H)
value = 2502
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = 1
trigger1 = anim = 2502
x = 0
y = 0

[State 6000, PosSet]
type = PosSet
triggerall = 1
trigger1 = numtarget(246012) > 0
trigger1 = anim = 2502
x = target(246012),pos X
y = 0

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = time
trigger1 = movehit
trigger1 = numtarget(246012) > 0
trigger1 = (target(246012),stateno = 6015)
value = 2128
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = 1
trigger1 = anim = 2128
x = 0
y = -0.01

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = anim = 2128
trigger2 = animtime = 0
trigger3 = movecontact
trigger3 = numtarget(246012) > 0
trigger3 = (target(246012),movetype != H)
trigger4 = moveguarded
ignorehitpause=1

;火地面-------------------------------------------
[Statedef 6013, FireGround]
movetype = A
physics = N
anim = 2641
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, Pos]
type = PosSet
trigger1 = time = 0
y = 0
persistent=0

[State 1000,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,72
persistent=0

[State 6000, Effect2]
type = Explod
triggerall = 1
triggerall = numexplod(242120) = 0
trigger1 = time = 0
anim = 2120
ID = 242120
name = "Effect"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p1
ownpal = 1
sprpriority = 3
persistent=0
ignorehitpause=1

[State 1300, hit]
type = HitDef
trigger1 = 1
trigger1 = anim = 2641
trigger1 = animelemtime(1) > 0
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = MA
hitflag = MAF
hitsound = s100,2
guardsound = s100,30
pausetime = 8,8
guard.pausetime = 10,10
sparkno = s2196
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = Trip
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1.5,-5.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
p2stateno = 6015
id = 246013
fall = 1
fall.recover = 0
persistent=0

[State 6000, StateTypeSet]
type = StateTypeSet
triggerall = 1
trigger1 = anim = 2502
trigger2 = anim = 2128
movetype = I


[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = time
trigger1 = movehit
trigger1 = numtarget(246013) > 0
trigger1 = (target(246013),movetype = H)
value = 2502
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = 1
trigger1 = anim = 2502
x = 0
y = 0

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = time
trigger1 = movehit
trigger1 = numtarget(246013) > 0
trigger1 = (target(246013),stateno = 6015)
value = 2128
persistent=0
ignorehitpause=1

[State 6000, PosSet]
type = PosSet
triggerall = 1
trigger1 = anim = 2128
y = -50

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = anim = 2128
trigger2 = animtime = 0
trigger3 = movecontact
trigger3 = numtarget(246013) > 0
trigger3 = (target(246013),movetype != H)
trigger4 = moveguarded
trigger5 = numexplod(242120) = 0
trigger5 = !movehit
trigger5 = time > 5
ignorehitpause=1

;火転がし-------------------------------------------
[Statedef 6014, FireSet]
movetype = I
physics = N
velset = 0,0
anim = 2108
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, TimerReset]
type = VarSet
trigger1 = time = 0
v = 2
value = 0
ignorehitpause = 1

[State 6000, Reset]
type = VarSet
trigger1 = time = 0
v = 1
value = 0
ignorehitpause = 1

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 1 || var(1) = 2
value = 6017
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 11 || var(1) = 12
value = 6018
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 21 || var(1) = 22
value = 6019
persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = time = 0
x = 2.8
y = 0
persistent=0

[State 10000, AngleDraw]
type = AngleDraw
trigger1 = 1
trigger1 = time
trigger1 = time < 50
value = 0+(time*-45)
scale = 1,1
ignorehitpause = 1

[State 6000, Stop]
type = VelSet
trigger1 = time = 50
trigger2 = FrontEdgeBodyDist < -5
trigger3 = time > 50
trigger3 = pos Y >= 0
x = 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
;trigger1 = time >= 300
trigger1 = var(2) >= 300
value = 6013
persistent=0

[State 6000, PalFX]
type = PalFX
;trigger1 = time = 200
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;火相手側-------------------------------------------
[Statedef 6015, FireClose]
movetype = H
physics = N
velset = 0,0
anim = 5030
ctrl = 0

[State 6000, ChangeAnim2]
type = ChangeAnim2
triggerall = time = 0
triggerall = anim != 5050
trigger1 = SelfAnimExist(9015) = 0
trigger1 = SelfAnimExist(7697) = 0
value = 7600
persistent=0
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = time = 0
triggerall = anim != 7697
trigger1 = SelfAnimExist(9015) = 1
value = 9015
persistent=0
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = time = 0
triggerall = anim != 9015
trigger1 = SelfAnimExist(7697) = 1
value = 7697
persistent=0
ignorehitpause=1

[State 6000, PalFX]
type = PalFX
triggerall = time
trigger1 = anim = 7600
time = 40
add = 30,5,5
mul = 130,30,30
ignorehitpause=1

[State 6000, VelSet]
type = null;VelSet
triggerall = time
trigger1 = anim = 7600
x = -1.6
y = -1.8
persistent=0
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 7697 || anim = 9015
trigger1 = time >= 60
trigger2 = anim = 7600
trigger2 = time >= 30
value = 5050
persistent=0
ignorehitpause=1

[State 6000, SelfState]
type = SelfState
trigger1 = anim = 7697 || anim = 9015
trigger1 = time >= 60
trigger2 = anim = 5050
trigger2 = time >= 30
value = 5050
ignorehitpause=1

;火転がし（自分-移動）-------------------------------------------
[Statedef 6017, FireSetMoveMe]
movetype = I
physics = N
velset = ifelse(var(1)=1,4.5,-4.5),-2.5
anim = 2108
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6018
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6019
;persistent=0

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6013
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;火転がし（相手-移動）-------------------------------------------
[Statedef 6018, FireSetMoveEnemy]
movetype = I
physics = N
velset = ifelse(var(1)=11,4.5,-4.5),-2.5
anim = 2108
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6017
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6019
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6013
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;火転がし（パートナー-移動）-------------------------------------------
[Statedef 6019, FireSetMovePartner]
movetype = I
physics = N
velset = ifelse(var(1)=21,4.5,-4.5),-2.5
anim = 2108
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6017
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6018
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6013
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1



;石出現時-------------------------------------------
[Statedef 6020, StoneDrop]
movetype = I
physics = N
velset = 1.9+random%2,-7.8-random%2
anim = 2102
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
;trigger1 = vel X != 0
trigger1 = pos Y < -10
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > -4;0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = -7
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 6021
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 6421
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;石取得消滅-------------------------------------------
[Statedef 6021, GetStone]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Slot3Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) >= 1
trigger1 = parent,var(42) = 0
v = 42
value = 3
persistent=0
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) = 0
v = 41
value = 3
persistent=0
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) = 0
v = 40
value = 3
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;石攻撃-------------------------------------------
[Statedef 6022, StoneAttack]
movetype = A
physics = N
velset = ifelse((parent,var(50)=1),8.5,3.1),ifelse((parent,var(50)=1),-7.2,-10.0)
anim = 2109
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = anim = 2109
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = anim = 2109
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2109
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = !movecontact
value = 6023
persistent=0

[State 1300, hit]
type = HitDef
trigger1 = 1
trigger1 = anim = 2109
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = HA
hitflag = MAF
hitsound = s100,2
guardsound = s100,30
pausetime = 8,8
guard.pausetime = 10,10
sparkno = s2197
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 24
ground.velocity = -1.5,-5.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
p2stateno = 6025
fall = 1
id = 246022
persistent=0

[State 6000, StateTypeSet]
type = StateTypeSet
triggerall = 1
trigger1 = anim = 2502
trigger2 = anim = 2119
trigger3 = anim = 2604
movetype = I


[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = time
trigger1 = anim = 2109
trigger1 = movehit
trigger1 = numtarget(246022) > 0
trigger1 = (target(246022),movetype = H)
value = 2502
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = 1
trigger1 = anim = 2502
x = 0
y = 0

[State 6000, PosSetEnemy]
type = PosSet
trigger1 = 1
trigger1 = anim = 2502
trigger1 = (enemynear,stateno = 6026)
x = enemynear,pos X
y = -39

[State 6000, PosSetParent]
type = PosSet
trigger1 = 1
trigger1 = anim = 2502
trigger1 = (parent,stateno = 6026)
x = parent,pos X
y = -39

[State 6000, PosSetPartner]
type = PosSet
trigger1 = 1
trigger1 = anim = 2502
trigger1 = numpartner > 0
trigger1 = (partner,stateno = 6026)
x = partner,pos X
y = -39

[State 6000, StoneEffect]
type = Explod
triggerall = 1
triggerall = numexplod(242197) = 0
trigger1 = anim = 2119
anim = 2197
ID = 242197
name = "StoneSpark"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p1
ownpal = 1
sprpriority = 2
persistent=0
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = 1
triggerall = anim = 2502
trigger1 = (enemynear,stateno = 6026) && (enemynear,movetype = I)
trigger2 = (parent,stateno = 6026) && (parent,movetype = I)
trigger3 = numpartner > 0
trigger3 = (partner,stateno = 6026) && (partner,movetype = I)
value = 2119
persistent=0

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = anim = 2119
value = s100, 2
persistent=0


[State 6000, PosSet]
type = PosSet
triggerall = 1
trigger1 = anim = 2640
y = 0

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = 1
trigger1 = anim = 2119
trigger1 = animtime = 0
trigger1 = time >= 50
value = 2640
persistent=0

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = anim = 2640
trigger2 = animtime = 0
trigger3 = movecontact
trigger3 = numtarget(246022) > 0
trigger3 = (target(246022),movetype != H)
trigger4 = moveguarded
trigger5 = movehit
trigger5 = time > 300
ignorehitpause=1

;石地面-------------------------------------------
[Statedef 6023, StoneGround]
movetype = A
physics = N
anim = 2503
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, Effect]
type = Explod
triggerall = 1
triggerall = numexplod(242121) = 0
trigger1 = time = 0
anim = 2121
ID = 242121
name = "Effect"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p1
ownpal = 1
sprpriority = 3
persistent=0
ignorehitpause=1

[State 1000,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,72
persistent=0

[State 1000,ChangeAnim]
type = ChangeAnim
trigger1 = anim = 2503
value = 2117
persistent=0

[State 1000,VelSet]
type = VelSet
trigger1 = anim = 2117
trigger1 = animelemtime(1) >=0
trigger1 = animelemtime(10) < 0
y = -0.5
persistent=0

[State 1000,VelSet]
type = VelSet
trigger1 = anim = 2117
trigger1 = animelemtime(10) >= 0
y = 0

[State 6000, Beam]
type = Explod
triggerall = 1
triggerall = numexplod(242118) = 0
trigger1 = anim = 2117
trigger1 = animelemtime(20) >= 0
anim = 2118
ID = 242118
name = "Beam"
helpertype = normal
keyctrl = 0
pos = 0,-13
postype = p1
ownpal = 1
sprpriority = 1
persistent=0
ignorehitpause=1

[State 6000, RemoveBeam]
type = RemoveExplod
trigger1 = 1
trigger1 = anim = 2502
ID = 242118
ignorehitpause=1

[State 1300, hit]
type = HitDef
trigger1 = 1
trigger1 = anim = 2117
trigger1 = animelemtime(20) >= 0
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = MA
hitflag = MAF
hitsound = s100,2
guardsound = s100,30
pausetime = 8,8
guard.pausetime = 10,10
sparkno = s2196
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = Trip
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1.5,-5.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
p2stateno = 6025
id = 246023
persistent=0

[State 6000, StateTypeSet]
type = StateTypeSet
triggerall = 1
trigger1 = anim = 2502
trigger2 = anim = 2119
trigger3 = anim = 2604
movetype = I

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = 1
trigger1 = anim = 2117
trigger1 = movehit
trigger1 = numtarget(246023) > 0
trigger1 = (target(246023),movetype = H)
value = 2502
persistent=0
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = 1
triggerall = time > 10
triggerall = anim = 2502
trigger1 = (enemynear,stateno = 6026) && (enemynear,movetype = I)
trigger2 = (parent,stateno = 6026) && (parent,movetype = I)
trigger3 = numpartner > 0
trigger3 = (partner,stateno = 6026) && (partner,movetype = I)
value = 2119
persistent=0

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = anim = 2119
value = s100, 2
persistent=0

[State 6000, VelSet]
type = VelSet
trigger1 = 1
trigger1 = anim = 2502
x = 0
y = 0

[State 6000, PosSetEnemy]
type = PosSet
trigger1 = 1
trigger1 = anim = 2119
trigger1 = (enemynear,stateno = 6026)
x = enemynear,pos X
y = -39

[State 6000, PosSetParent]
type = PosSet
trigger1 = 1
trigger1 = anim = 2119
trigger1 = (parent,stateno = 6026)
x = parent,pos X
y = -39

[State 6000, PosSetPartner]
type = PosSet
trigger1 = 1
trigger1 = anim = 2119
trigger1 = numpartner > 0
trigger1 = (partner,stateno = 6026)
x = partner,pos X
y = -39

[State 6000, StoneEffect]
type = Explod
triggerall = 1
triggerall = numexplod(242197) = 0
trigger1 = anim = 2119
anim = 2197
ID = 242197
name = "StoneSpark"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p1
ownpal = 1
sprpriority = 2
persistent=0
ignorehitpause=1

[State 6000, PosSet]
type = PosSet
triggerall = 1
trigger1 = anim = 2640
y = 0

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = 1
trigger1 = anim = 2119
trigger1 = animtime = 0
trigger1 = time >= 50
value = 2640
persistent=0

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = anim = 2640
trigger2 = animtime = 0
trigger3 = anim = 2117
trigger3 = animelemtime(38) >= 3
trigger4 = movehit
trigger4 = time > 300
ignorehitpause=1


;石転がし-------------------------------------------
[Statedef 6024, StoneSet]
movetype = I
physics = N
velset = 0,0
anim = 2109
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, TimerReset]
type = VarSet
trigger1 = time = 0
v = 2
value = 0
ignorehitpause = 1

[State 6000, Reset]
type = VarSet
trigger1 = time = 0
v = 1
value = 0
ignorehitpause = 1

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 1 || var(1) = 2
value = 6027
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 11 || var(1) = 12
value = 6028
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 21 || var(1) = 22
value = 6029
persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = time = 0
x = 2.8
y = 0
persistent=0

[State 10000, AngleDraw]
type = AngleDraw
trigger1 = 1
trigger1 = time
trigger1 = time < 50
value = 0+(time*-45)
scale = 1,1
ignorehitpause = 1

[State 6000, Stop]
type = VelSet
trigger1 = time = 50
trigger2 = FrontEdgeBodyDist < -5
trigger3 = time > 50
trigger3 = pos Y >= 0
x = 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
;trigger1 = time >= 300
trigger1 = var(2) >= 300
value = 6023
persistent=0

[State 6000, PalFX]
type = PalFX
;trigger1 = time = 200
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;石相手側-------------------------------------------
[Statedef 6025, StoneClose]
movetype = I
physics = N
velset = 0,0
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 7601
persistent=0
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = (enemynear,movetype = A)
trigger1 = Pos X - (enemynear,pos X)= [-80,80]
trigger1 = Pos Y - (enemynear,pos Y)= [-10,20]
value = 6026
persistent=0
ignorehitpause=1

[State 6000, PalFX]
type = PalFX
triggerall = time
trigger1 = anim = 7601
time = 1;180
color = 0
ignorehitpause=1

[State 6000, SelfState]
type = SelfState
trigger1 = time >= 180
value = 5050
ignorehitpause=1

;石相手側-------------------------------------------
[Statedef 6026, StoneBreak]
movetype = I
physics = N
velset = 0,0
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -50
kill = 0

[State 6000, Trans]
type = Trans
trigger1 = time
trans = addalpha
alpha = 0, 256

[State 6000, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 7602
persistent=0
ignorehitpause=1

[State 6000, SelfState]
type = SelfState
trigger1 = time >= 50
value = 5050
ctrl = 1
ignorehitpause=1


;石転がし（自分-移動）-------------------------------------------
[Statedef 6027, StoneSetMoveMe]
movetype = I
physics = N
velset = ifelse(var(1)=1,4.5,-4.5),-2.5
anim = 2109
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6028
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6029
;persistent=0

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6023
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;石転がし（相手-移動）-------------------------------------------
[Statedef 6028, StoneSetMoveEnemy]
movetype = I
physics = N
velset = ifelse(var(1)=11,4.5,-4.5),-2.5
anim = 2109
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6027
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6029
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6023
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;石転がし（パートナー-移動）-------------------------------------------
[Statedef 6029, StoneSetMovePartner]
movetype = I
physics = N
velset = ifelse(var(1)=21,4.5,-4.5),-2.5
anim = 2109
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6027
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6028
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6023
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1



;毒出現時-------------------------------------------
[Statedef 6030, PoisonDrop]
movetype = I
physics = N
velset = 1.9+random%2,-7.8-random%2
anim = 2103
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
;trigger1 = vel X != 0
trigger1 = pos Y < -10
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > -4;0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = -7
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 6031
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 6431
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;毒取得消滅-------------------------------------------
[Statedef 6031, GetPoison]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Slot3Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) >= 1
trigger1 = parent,var(42) = 0
v = 42
value = 4
persistent=0
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) = 0
v = 41
value = 4
persistent=0
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) = 0
v = 40
value = 4
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;毒攻撃-------------------------------------------
[Statedef 6032, PoisonAttack]
movetype = A
physics = N
velset = ifelse((parent,var(50)=1),8.5,3.1),ifelse((parent,var(50)=1),-7.2,-10.0)
anim = 2110
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = anim = 2110
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = anim = 2110
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = !movecontact
value = 6033
persistent=0

[State 1300, hit]
type = HitDef
trigger1 = 1
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = HA
hitflag = MAF
hitsound = s100,2
guardsound = s100,30
pausetime = 8,8
guard.pausetime = 10,10
sparkno = s2198
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 24
ground.velocity = -1.5,-5.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
p2stateno = 6035
fall = 1
id = 246032
persistent=0

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = time
trigger1 = anim = 2110
trigger1 = movehit
trigger1 = numtarget(246032) > 0
trigger1 = (target(246032),movetype = H)
value = 2502
persistent=0
ignorehitpause=1

[State 6000, StateTypeSet]
type = StateTypeSet
triggerall = 1
trigger1 = anim = 2502
trigger2 = anim = 2200
movetype = I


[State 6000, VelSet]
type = VelSet
trigger1 = 1
trigger1 = anim = 2502
x = 0
y = 0


[State 10000, AngleDraw]
type = AngleDraw
trigger1 = 1
trigger1 = anim = 2200
value = 0
scale = .5,.5

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = 1
triggerall = anim = 2502
trigger1 = (enemynear,stateno = 6035) && (enemynear,movetype = I)
trigger2 = (parent,stateno = 6035) && (parent,movetype = I)
trigger3 = numpartner > 0
trigger3 = (partner,stateno = 6035) && (partner,movetype = I)
value = 2200
;persistent=0

[State 6000, PosSet]
type = PosSet
trigger1 = 1
trigger1 = anim = 2200
trigger1 = (enemynear,stateno = 6035)
x = enemynear,pos X
y = (enemynear,const(size.head.pos.y))-30

[State 6000, PosSet]
type = PosSet
trigger1 = 1
trigger1 = anim = 2200
trigger1 = (parent,stateno = 6035)
x = parent,pos X
y = (parent,const(size.head.pos.y))-30

[State 6000, PosSet]
type = PosSet
trigger1 = 1
trigger1 = anim = 2200
trigger1 = numpartner > 0
trigger1 = (partner,stateno = 6035)
x = partner,pos X
y = (partner,const(size.head.pos.y))-30

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = anim = 2200
value = s100, 23
channel = 2
persistent=0

[State 6000, StopSnd]
type = StopSnd
triggerall = anim = 2200
trigger1 = numpartner = 0
trigger1 = (enemynear,stateno != 6035) && (parent,stateno != 6035)
trigger2 = numpartner > 0
trigger2 = (enemynear,stateno != 6035) && (parent,stateno != 6035) && (partner,stateno != 6035)
value = s100, 23
channel = 2
persistent=0


[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = anim = 2200
trigger2 = numpartner = 0
trigger2 = (enemynear,stateno != 6035) && (parent,stateno != 6035)
trigger3 = anim = 2200
trigger3 = numpartner > 0
trigger3 = (enemynear,stateno != 6035) && (parent,stateno != 6035) && (partner,stateno != 6035)
trigger4 = movecontact
trigger4 = numtarget(246032) > 0
trigger4 = (target(246032),movetype != H)
trigger5 = moveguarded
trigger6 = time > 600
ignorehitpause=1


;毒地面-------------------------------------------
[Statedef 6033, PoisonGround]
movetype = A
physics = N
anim = 2642
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 1000,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,72
persistent=0

[State 6000, PoisonEffect]
type = Explod
triggerall = 1
triggerall = numexplod(2422122) = 0
trigger1 = time = 0
anim = 2122
ID = 2422122
name = "PoisonEffect"
helpertype = normal
keyctrl = 0
scale = 1,1
pos = 0,0
postype = p1
ownpal = 1
sprpriority = 2
persistent=0
ignorehitpause=1

[State 1300, hit]
type = HitDef
trigger1 = 1
trigger1 = anim = 2642
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(23) < 0
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = MA
hitflag = MAF
hitsound = s100,2
guardsound = s100,30
pausetime = 8,8
guard.pausetime = 10,10
sparkno = s2196
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = Trip
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1.5,-5.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
p2stateno = 6035
id = 246033
persistent=0

[State 6000, StateTypeSet]
type = StateTypeSet
triggerall = 1
trigger1 = anim = 2502
trigger2 = anim = 2200
movetype = I

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = time
trigger1 = anim = 2642
trigger1 = movehit
trigger1 = numtarget(246033) > 0
trigger1 = (target(246033),movetype = H)
value = 2502
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = 1
trigger1 = anim = 2502
x = 0
y = 0

[State 10000, AngleDraw]
type = AngleDraw
trigger1 = 1
trigger1 = anim = 2200
value = 0
scale = .5,.5

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = 1
triggerall = anim = 2502
trigger1 = (enemynear,stateno = 6035) && (enemynear,movetype = I)
trigger2 = (parent,stateno = 6035) && (parent,movetype = I)
trigger3 = numpartner > 0
trigger3 = (partner,stateno = 6035) && (partner,movetype = I)
value = 2200
persistent=0

[State 6000, PosSet]
type = PosSet
trigger1 = 1
trigger1 = anim = 2200
trigger1 = (enemynear,stateno = 6035)
x = enemynear,pos X
y = (enemynear,const(size.head.pos.y))-30

[State 6000, PosSet]
type = PosSet
trigger1 = 1
trigger1 = anim = 2200
trigger1 = (parent,stateno = 6035)
x = parent,pos X
y = (parent,const(size.head.pos.y))-30

[State 6000, PosSet]
type = PosSet
trigger1 = 1
trigger1 = anim = 2200
trigger1 = numpartner > 0
trigger1 = (partner,stateno = 6035)
x = partner,pos X
y = (partner,const(size.head.pos.y))-30


[State 6000, PlaySnd]
type = PlaySnd
trigger1 = anim = 2200
value = s100, 23
channel = 2
persistent=0

[State 6000, StopSnd]
type = StopSnd
triggerall = anim = 2200
trigger1 = numpartner = 0
trigger1 = (enemynear,stateno != 6035) && (parent,stateno != 6035)
trigger2 = numpartner > 0
trigger2 = (enemynear,stateno != 6035) && (parent,stateno != 6035) && (partner,stateno != 6035)
value = s100, 23
channel = 2
persistent=0


[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = anim = 2200
trigger2 = numpartner = 0
trigger2 = (enemynear,stateno != 6035) && (parent,stateno != 6035)
trigger3 = anim = 2200
trigger3 = numpartner > 0
trigger3 = (enemynear,stateno != 6035) && (parent,stateno != 6035) && (partner,stateno != 6035)
trigger4 = movecontact
trigger4 = numtarget(246032) > 0
trigger4 = (target(246032),movetype != H)
trigger5 = moveguarded
trigger6 = numexplod(2422122) = 0
trigger6 = !movehit
trigger6 = time > 5
ignorehitpause=1

;毒転がし-------------------------------------------
[Statedef 6034, PoisonSet]
movetype = I
physics = N
velset = 0,0
anim = 2110
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, TimerReset]
type = VarSet
trigger1 = time = 0
v = 2
value = 0
ignorehitpause = 1

[State 6000, Reset]
type = VarSet
trigger1 = time = 0
v = 1
value = 0
ignorehitpause = 1

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 1 || var(1) = 2
value = 6037
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 11 || var(1) = 12
value = 6038
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 21 || var(1) = 22
value = 6039
persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = time = 0
x = 2.8
y = 0
persistent=0

[State 10000, AngleDraw]
type = AngleDraw
trigger1 = 1
trigger1 = time
trigger1 = time < 50
value = 0+(time*-45)
scale = 1,1
ignorehitpause = 1

[State 6000, Stop]
type = VelSet
trigger1 = time = 50
trigger2 = FrontEdgeBodyDist < -5
trigger3 = time > 50
trigger3 = pos Y >= 0
x = 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
;trigger1 = time >= 300
trigger1 = var(2) >= 300
value = 6033
persistent=0

[State 6000, PalFX]
type = PalFX
;trigger1 = time = 200
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;毒相手側-------------------------------------------
[Statedef 6035, PoisonClose]
movetype = I
physics = N
velset = 0,0
anim = 5300
ctrl = 0

[State 6000, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause=1

[State 6000, PalFX]
type = PalFX
trigger1 = time
time = 1
mul = 200,50,200
ignorehitpause=1

[State 6000, SelfState]
type = SelfState
trigger1 = time >= 180
value = 5050
ignorehitpause=1


;毒転がし（自分-移動）-------------------------------------------
[Statedef 6037, PoisonSetMoveMe]
movetype = I
physics = N
velset = ifelse(var(1)=1,4.5,-4.5),-2.5
anim = 2110
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6038
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6039
;persistent=0

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6033
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;毒転がし（相手-移動）-------------------------------------------
[Statedef 6038, PoisonSetMoveEnemy]
movetype = I
physics = N
velset = ifelse(var(1)=11,4.5,-4.5),-2.5
anim = 2110
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6037
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6039
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6033
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;毒転がし（パートナー-移動）-------------------------------------------
[Statedef 6039, PoisonSetMovePartner]
movetype = I
physics = N
velset = ifelse(var(1)=21,4.5,-4.5),-2.5
anim = 2110
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6037
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6038
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6033
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1


;爆弾出現時-------------------------------------------
[Statedef 6040, BombDrop]
movetype = I
physics = N
velset = 1.9+random%2,-7.8-random%2
anim = 2104
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
;trigger1 = vel X != 0
trigger1 = pos Y < -10
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > -4;0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = -7
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 6041
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 6441
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;爆弾取得消滅-------------------------------------------
[Statedef 6041, GetBomb]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Slot3Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) >= 1
trigger1 = parent,var(42) = 0
v = 42
value = 5
persistent=0
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) = 0
v = 41
value = 5
persistent=0
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) = 0
v = 40
value = 5
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;爆弾攻撃-------------------------------------------
[Statedef 6042, BombAttack]
movetype = A
physics = N
velset = ifelse((parent,var(50)=1),8.5,3.1),ifelse((parent,var(50)=1),-7.2,-10.0)
anim = 2111
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = anim != 2128
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = anim != 2128
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = !movecontact
value = 6043
persistent=0

[State 1300, hit]
type = HitDef
trigger1 = 1
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = HA
hitflag = MAF
hitsound = s100,2
guardsound = s100,30
pausetime = 8,8
guard.pausetime = 10,10
sparkno = s2196
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 24
ground.velocity = -1.5,-5.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
p2stateno = 6045
fall = 1
id = 246042
persistent=0

[State 6000, StateTypeSet]
type = StateTypeSet
triggerall = 1
trigger1 = anim = 2502
trigger2 = anim = 2128
movetype = I

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = time
trigger1 = movehit
trigger1 = numtarget(246042) > 0
trigger1 = (target(246042),movetype = H)
value = 2502
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = 1
trigger1 = anim = 2502
x = 0
y = 0

[State 6000, PosSet]
type = PosSet
triggerall = 1
trigger1 = numtarget(246042) > 0
trigger1 = anim = 2502
x = target(246042),pos X
y = 0

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = time
trigger1 = movehit
trigger1 = numtarget(246042) > 0
trigger1 = (target(246042),stateno = 6045)
value = 2128
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = 1
trigger1 = anim = 2128
x = 0
y = -0.01

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = anim = 2128
trigger2 = animtime = 0
trigger3 = movecontact
trigger3 = numtarget(246042) > 0
trigger3 = (target(246042),movetype != H)
trigger4 = moveguarded
ignorehitpause=1

;爆弾地面-------------------------------------------
[Statedef 6043, BombGround]
movetype = A
physics = N
anim = 2643
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, Pos]
type = PosSet
trigger1 = time = 0
y = 0
persistent=0

[State 1000,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,72
persistent=0

[State 6000, Effect2]
type = Explod
triggerall = 1
triggerall = numexplod(242123) = 0
trigger1 = time = 0
anim = 2123
ID = 242123
name = "Effect"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p1
ownpal = 1
sprpriority = 3
persistent=0
ignorehitpause=1

[State 1300, hit]
type = HitDef
trigger1 = 1
trigger1 = anim = 2643
trigger1 = animelemtime(1) > 0
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = MA
hitflag = MAF
hitsound = s100,2
guardsound = s100,30
pausetime = 8,8
guard.pausetime = 10,10
sparkno = s2196
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = Trip
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1.5,-5.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
p2stateno = 6045
id = 246043
fall = 1
fall.recover = 0
persistent=0

[State 6000, StateTypeSet]
type = StateTypeSet
triggerall = 1
trigger1 = anim = 2502
trigger2 = anim = 2128
movetype = I

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = time
trigger1 = movehit
trigger1 = numtarget(246043) > 0
trigger1 = (target(246043),movetype = H)
value = 2502
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = 1
trigger1 = anim = 2502
x = 0
y = 0

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = time
trigger1 = movehit
trigger1 = numtarget(246043) > 0
trigger1 = (target(246043),stateno = 6045)
value = 2128
persistent=0
ignorehitpause=1

[State 6000, PosSet]
type = PosSet
triggerall = 1
trigger1 = anim = 2128
y = -50

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = anim = 2128
trigger2 = animtime = 0
trigger3 = movecontact
trigger3 = numtarget(246043) > 0
trigger3 = (target(246043),movetype != H)
trigger4 = moveguarded
trigger5 = numexplod(242123) = 0
trigger5 = time > 5
trigger5 = !movehit
ignorehitpause=1

;爆弾転がし-------------------------------------------
[Statedef 6044, BombSet]
movetype = I
physics = N
velset = 0,0
anim = 2111
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, TimerReset]
type = VarSet
trigger1 = time = 0
v = 2
value = 0
ignorehitpause = 1

[State 6000, Reset]
type = VarSet
trigger1 = time = 0
v = 1
value = 0
ignorehitpause = 1

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 1 || var(1) = 2
value = 6047
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 11 || var(1) = 12
value = 6048
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 21 || var(1) = 22
value = 6049
persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = time = 0
x = 2.8
y = 0
persistent=0

[State 10000, AngleDraw]
type = AngleDraw
trigger1 = 1
trigger1 = time
trigger1 = time < 50
value = 0+(time*-45)
scale = 1,1
ignorehitpause = 1

[State 6000, Stop]
type = VelSet
trigger1 = time = 50
trigger2 = FrontEdgeBodyDist < -5
trigger3 = time > 50
trigger3 = pos Y >= 0
x = 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
;trigger1 = time >= 300
trigger1 = var(2) >= 300
value = 6043
persistent=0

[State 6000, PalFX]
type = PalFX
;trigger1 = time = 200
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;爆弾相手側-------------------------------------------
[Statedef 6045, BombClose]
movetype = H
physics = N
velset = 0,0
anim = 5030
ctrl = 0

[State 6000, ChangeAnim2]
type = ChangeAnim2
triggerall = time = 0
triggerall = anim != 5050
trigger1 = SelfAnimExist(9015) = 0
trigger1 = SelfAnimExist(7697) = 0
value = 7600
persistent=0
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = time = 0
triggerall = anim != 7697
trigger1 = SelfAnimExist(9015) = 1
value = 9015
persistent=0
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = time = 0
triggerall = anim != 9015
trigger1 = SelfAnimExist(7697) = 1
value = 7697
persistent=0
ignorehitpause=1

[State 6000, PalFX]
type = PalFX
triggerall = time
trigger1 = anim = 7600
time = 40
add = 30,5,5
mul = 130,30,30
ignorehitpause=1

[State 6000, VelSet]
type = null;VelSet
triggerall = time
trigger1 = anim = 7600
x = -1.6
y = -1.8
persistent=0
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 7697 || anim = 9015
trigger1 = time >= 60
trigger2 = anim = 7600
trigger2 = time >= 30
value = 5050
persistent=0
ignorehitpause=1

[State 6000, SelfState]
type = SelfState
trigger1 = anim = 7697 || anim = 9015
trigger1 = time >= 60
trigger2 = anim = 5050
trigger2 = time >= 30
value = 5050
ignorehitpause=1

;爆弾転がし（自分-移動）-------------------------------------------
[Statedef 6047, BombSetMoveMe]
movetype = I
physics = N
velset = ifelse(var(1)=1,4.5,-4.5),-2.5
anim = 2111
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6048
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6049
;persistent=0

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6043
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;爆弾転がし（相手-移動）-------------------------------------------
[Statedef 6048, BombSetMoveEnemy]
movetype = I
physics = N
velset = ifelse(var(1)=11,4.5,-4.5),-2.5
anim = 2111
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6047
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6049
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6043
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;爆弾転がし（パートナー-移動）-------------------------------------------
[Statedef 6049, BombSetMovePartner]
movetype = I
physics = N
velset = ifelse(var(1)=21,4.5,-4.5),-2.5
anim = 2111
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6047
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6048
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6043
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;氷出現時-------------------------------------------
[Statedef 6050, IceDrop]
movetype = I
physics = N
velset = 1.9+random%2,-7.8-random%2
anim = 2105
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
;trigger1 = vel X != 0
trigger1 = pos Y < -10
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > -4;0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = -7
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 6051
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 6451
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;氷取得消滅-------------------------------------------
[Statedef 6051, GetIce]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Slot3Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) >= 1
trigger1 = parent,var(42) = 0
v = 42
value = 6
persistent=0
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) = 0
v = 41
value = 6
persistent=0
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) = 0
v = 40
value = 6
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;氷攻撃-------------------------------------------
[Statedef 6052, IceAttack]
movetype = A
physics = N
velset = ifelse((parent,var(50)=1),8.5,3.1),ifelse((parent,var(50)=1),-7.2,-10.0)
anim = 2112
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = anim = 2112
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = anim = 2112
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2112
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = !movecontact
value = 6053
persistent=0

[State 1300, hit]
type = HitDef
trigger1 = 1
trigger1 = anim = 2112
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = HA
hitflag = MAF
hitsound = s100,2
guardsound = s100,30
pausetime = 8,8
guard.pausetime = 10,10
sparkno = s2197
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 24
ground.velocity = -1.5,-5.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
p2stateno = 6055
fall = 1
id = 246052
persistent=0

[State 6000, StateTypeSet]
type = StateTypeSet
triggerall = 1
trigger1 = anim = 2502
trigger2 = anim = 2126
movetype = I

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = time
trigger1 = anim = 2112
trigger1 = movehit
trigger1 = numtarget(246052) > 0
trigger1 = (target(246052),movetype = H)
value = 2502
persistent=0
ignorehitpause=1

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = anim = 2502
value = s100, 70
persistent=0

[State 6000, VelSet]
type = VelSet
trigger1 = 1
trigger1 = anim = 2502
x = 0
y = 0

[State 6000, PosSetEnemy]
type = PosSet
trigger1 = 1
trigger1 = anim = 2502
trigger1 = (enemynear,stateno = 6056)
x = enemynear,pos X
y = -39

[State 6000, PosSetParent]
type = PosSet
trigger1 = 1
trigger1 = anim = 2502
trigger1 = (parent,stateno = 6056)
x = parent,pos X
y = -39

[State 6000, PosSetPartner]
type = PosSet
trigger1 = 1
trigger1 = anim = 2502
trigger1 = numpartner > 0
trigger1 = (partner,stateno = 6056)
x = partner,pos X
y = -39

[State 6000, StoneEffect]
type = Explod
triggerall = 1
triggerall = numexplod(242199) = 0
trigger1 = anim = 2126
anim = 2199
ID = 242199
name = "IceSpark"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p1
ownpal = 1
sprpriority = 2
persistent=0
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = 1
triggerall = anim = 2502
trigger1 = (enemynear,stateno = 6056) && (enemynear,movetype = I)
trigger2 = (parent,stateno = 6056) && (parent,movetype = I)
trigger3 = numpartner > 0
trigger3 = (partner,stateno = 6056) && (partner,movetype = I)
trigger4 = time > 300
value = 2126
persistent=0

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = anim = 2126
trigger2 = animtime = 0
trigger3 = movecontact
trigger3 = numtarget(246052) > 0
trigger3 = (target(246052),movetype != H)
trigger4 = moveguarded
trigger5 = movehit
trigger5 = time > 300
ignorehitpause=1

;氷地面-------------------------------------------
[Statedef 6053, IceGround]
movetype = A
physics = N
anim = 2644
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, Effect]
type = Explod
triggerall = 1
triggerall = numexplod(242124) = 0
trigger1 = time = 0
anim = 2124
ID = 242124
name = "Effect"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p1
ownpal = 1
sprpriority = 3
persistent=0
ignorehitpause=1

[State 1000,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,72
persistent=0

[State 1300, hit]
type = HitDef
trigger1 = 1
trigger1 = anim = 2644
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(7) < 0
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = MA
hitflag = MAF
hitsound = s100,2
guardsound = s100,30
pausetime = 8,8
guard.pausetime = 10,10
sparkno = s2196
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = Trip
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1.5,-5.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
p2stateno = 6055
id = 246053
persistent=0

[State 6000, StateTypeSet]
type = StateTypeSet
triggerall = 1
trigger1 = anim = 2502
trigger2 = anim = 2126
movetype = I


[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = 1
trigger1 = anim = 2644
trigger1 = movehit
trigger1 = numtarget(246053) > 0
trigger1 = (target(246053),movetype = H)
value = 2502
persistent=0
ignorehitpause=1

[State 6000, PosSetEnemy]
type = PosSet
trigger1 = 1
trigger1 = anim = 2502
trigger1 = (enemynear,stateno = 6055)
x = enemynear,pos X
y = -39

[State 6000, PosSetParent]
type = PosSet
trigger1 = 1
trigger1 = anim = 2502
trigger1 = (parent,stateno = 6055)
x = parent,pos X
y = -39

[State 6000, PosSetPartner]
type = PosSet
trigger1 = 1
trigger1 = anim = 2502
trigger1 = numpartner > 0
trigger1 = (partner,stateno = 6055)
x = partner,pos X
y = -39

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = 1
triggerall = anim = 2502
trigger1 = (enemynear,stateno = 6056) && (enemynear,movetype = I)
trigger2 = (parent,stateno = 6056) && (parent,movetype = I)
trigger3 = numpartner > 0
trigger3 = (partner,stateno = 6056) && (partner,movetype = I)
trigger4 = time > 180
value = 2126
persistent=0

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = anim = 2502
value = s100, 70
persistent=0

[State 6000, VelSet]
type = VelSet
trigger1 = 1
trigger1 = anim = 2502
x = 0
y = 0

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = anim = 2126
trigger2 = animtime = 0
trigger3 = movecontact
trigger3 = numtarget(246053) > 0
trigger3 = (target(246053),movetype != H)
trigger4 = numexplod(242124) = 0
trigger4 = !movehit
trigger4 = time > 5
ignorehitpause=1


;氷転がし-------------------------------------------
[Statedef 6054, IceSet]
movetype = I
physics = N
velset = 0,0
anim = 2112
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, TimerReset]
type = VarSet
trigger1 = time = 0
v = 2
value = 0
ignorehitpause = 1

[State 6000, Reset]
type = VarSet
trigger1 = time = 0
v = 1
value = 0
ignorehitpause = 1

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 1 || var(1) = 2
value = 6057
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 11 || var(1) = 12
value = 6058
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 21 || var(1) = 22
value = 6059
persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = time = 0
x = 2.8
y = 0
persistent=0

[State 10000, AngleDraw]
type = AngleDraw
trigger1 = 1
trigger1 = time
trigger1 = time < 50
value = 0+(time*-45)
scale = 1,1
ignorehitpause = 1

[State 6000, Stop]
type = VelSet
trigger1 = time = 50
trigger2 = FrontEdgeBodyDist < -5
trigger3 = time > 50
trigger3 = pos Y >= 0
x = 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
;trigger1 = time >= 300
trigger1 = var(2) >= 300
value = 6053
persistent=0

[State 6000, PalFX]
type = PalFX
;trigger1 = time = 200
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;氷相手側-------------------------------------------
[Statedef 6055, IceClose]
movetype = I
physics = N
velset = 0,0
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, ChangeAnim2]
type = ChangeAnim2
triggerall = time = 0
triggerall = anim != 5050
trigger1 = SelfAnimExist(9016) = 0
trigger1 = SelfAnimExist(7698) = 0
value = 7601
persistent=0
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = time = 0
triggerall = anim != 7698
trigger1 = SelfAnimExist(9016) = 1
value = 9016
persistent=0
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = time = 0
triggerall = anim != 9016
trigger1 = SelfAnimExist(7698) = 1
value = 7698
persistent=0
ignorehitpause=1

[State 6000, PalFX]
type = PalFX
triggerall = time
trigger1 = anim = 7601
time = 1
add = 30,80,150
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = (enemynear,movetype = A)
trigger1 = Pos X - (enemynear,pos X)= [-80,80]
trigger1 = Pos Y - (enemynear,pos Y)= [-10,20]
value = 6056
persistent=0
ignorehitpause=1

[State 6000, SelfState]
type = SelfState
trigger1 = time >= 180
value = 5050
ignorehitpause=1

;氷相手側-------------------------------------------
[Statedef 6056, IceBreak]
movetype = I
physics = N
velset = 0,0
ctrl = 0

[State 6000, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -50
kill = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, SelfState]
type = SelfState
trigger1 = time > 2
value = 5050
ctrl = 1
ignorehitpause=1


;氷転がし（自分-移動）-------------------------------------------
[Statedef 6057, IceSetMoveMe]
movetype = I
physics = N
velset = ifelse(var(1)=1,4.5,-4.5),-2.5
anim = 2112
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6058
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6059
;persistent=0

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6053
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;氷転がし（相手-移動）-------------------------------------------
[Statedef 6058, IceSetMoveEnemy]
movetype = I
physics = N
velset = ifelse(var(1)=11,4.5,-4.5),-2.5
anim = 2112
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6057
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6059
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6053
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;氷転がし（パートナー-移動）-------------------------------------------
[Statedef 6059, IceSetMovePartner]
movetype = I
physics = N
velset = ifelse(var(1)=21,4.5,-4.5),-2.5
anim = 2112
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6057
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6058
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6053
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1


;雷出現時-------------------------------------------
[Statedef 6060, ThunderDrop]
movetype = I
physics = N
velset = 2.9+random%2,-7.8-random%2
anim = 2106
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
;trigger1 = vel X != 0
trigger1 = pos Y < -10
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > -4;0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > -7
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = -7
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 6061
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 6461
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;雷取得消滅-------------------------------------------
[Statedef 6061, GetThunder]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Slot3Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) >= 1
trigger1 = parent,var(42) = 0
v = 42
value = 7
persistent=0
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) >= 1
trigger1 = parent,var(41) = 0
v = 41
value = 7
persistent=0
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
trigger1 = time = 0
trigger1 = parent,var(40) = 0
v = 40
value = 7
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;雷攻撃-------------------------------------------
[Statedef 6062, ThunderAttack]
movetype = A
physics = N
velset = ifelse((parent,var(50)=1),8.5,3.1),ifelse((parent,var(50)=1),-7.2,-10.0)
anim = 2113
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = anim != 2125
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = anim != 2125
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = !movecontact
value = 6063
persistent=0

[State 1300, hit]
type = HitDef
trigger1 = 1
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = HA
hitflag = MAF
hitsound = s100,2
guardsound = s100,30
pausetime = 8,8
guard.pausetime = 10,10
sparkno = s2196
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 24
ground.velocity = -1.5,-5.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
p2stateno = 6065
fall = 1
id = 246062
persistent=0

[State 6000, StateTypeSet]
type = StateTypeSet
triggerall = 1
trigger1 = anim = 2502
movetype = I


[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = movehit
trigger1 = numtarget(246062) > 0
trigger1 = (target(246062), movetype = H)
value = 2502
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = anim = 2502
x = 0
y = 0
persistent=0

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = movehit
trigger1 = numtarget(246062) > 0
trigger1 = (target(246062), movetype = H)
value = s100, 71
persistent=0

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = movecontact > 30
trigger3 = movehit
trigger3 = numtarget(246063) > 0
trigger3 = (target(246063), movetype != H)
trigger4 = moveguarded
ignorehitpause=1

;雷地面-------------------------------------------
[Statedef 6063, ThunderGround]
movetype = A
physics = N
anim = 2125
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, Pos]
type = PosSet
trigger1 = time = 0
y = 0
persistent=0

[State 1000,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,72
persistent=0

[State 1300, hit]
type = HitDef
trigger1 = 1
trigger1 = anim = 2125
attr = A, SP
affectteam = B
animtype  = Heavy
air.animtype  = Back
damage    = 80,0
numhits = 1
getpower = 10,5
givepower = 15
guardflag = MA
hitflag = MAF
hitsound = s100,2
guardsound = s100,30
pausetime = 8,8
guard.pausetime = 10,10
sparkno = s2196
guard.sparkno = s2182
sprpriority = 5
sparkxy = 0,0
ground.type = Trip
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1.5,-5.1
air.velocity = -1.5,-1.0
envshake.time = 12
envshake.ampl = 2
p2stateno = 6065
id = 246063
fall = 1
fall.recover = 0
persistent=0

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = movehit
trigger1 = numtarget(246063) > 0
trigger1 = (target(246063), movetype = H)
value = s100, 71
persistent=0

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = anim = 2125
trigger2 = animtime = 0
ignorehitpause=1

;雷転がし-------------------------------------------
[Statedef 6064, ThunderSet]
movetype = I
physics = N
velset = 0,0
anim = 2113
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, TimerReset]
type = VarSet
trigger1 = time = 0
v = 2
value = 0
ignorehitpause = 1

[State 6000, Reset]
type = VarSet
trigger1 = time = 0
v = 1
value = 0
ignorehitpause = 1

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 1 || var(1) = 2
value = 6067
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 11 || var(1) = 12
value = 6068
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = var(1) = 21 || var(1) = 22
value = 6069
persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = 1
triggerall = time > 50
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
persistent=0
ignorehitpause=1

[State 6000, VelSet]
type = VelSet
trigger1 = time = 0
x = 2.8
y = 0
persistent=0

[State 10000, AngleDraw]
type = AngleDraw
trigger1 = 1
trigger1 = time
trigger1 = time < 50
value = 0+(time*-45)
scale = 1,1
ignorehitpause = 1

[State 6000, Stop]
type = VelSet
trigger1 = time = 50
trigger2 = FrontEdgeBodyDist < -5
trigger3 = time > 50
trigger3 = pos Y >= 0
x = 0
y = 0
persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
;trigger1 = time >= 300
trigger1 = var(2) >= 300
value = 6063
persistent=0

[State 6000, PalFX]
type = PalFX
;trigger1 = time = 200
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;雷相手側-------------------------------------------
[Statedef 6065, ThunderClose]
movetype = H
physics = N
velset = 0,0
anim = 5030
ctrl = 0

[State 6000, ChangeAnim2]
type = ChangeAnim2
triggerall = time = 0
triggerall = anim != 5050
trigger1 = SelfAnimExist(9010) = 0
trigger1 = SelfAnimExist(7696) = 0
value = 7600
persistent=0
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = time = 0
triggerall = anim != 7696
trigger1 = SelfAnimExist(9010) = 1
value = 9010
persistent=0
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
triggerall = time = 0
triggerall = anim != 9010
trigger1 = SelfAnimExist(7696) = 1
value = 7696
persistent=0
ignorehitpause=1

[State 6000, PalFX]
type = PalFX
triggerall = 1
triggerall = time = 0
trigger1 = anim != 9010
trigger1 = anim != 7696
time = 40
mul = 30,40,50
;sinadd = 0,100,200,5
sinadd = 200,200,200,4
ignorehitpause=1

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 7696 || anim = 9010
trigger1 = time >= 60
trigger2 = anim = 7600
trigger2 = time >= 30
value = 5050
persistent=0
ignorehitpause=1

[State 6000, SelfState]
type = SelfState
trigger1 = anim = 7696 || anim = 9010
trigger1 = time >= 60
trigger2 = anim = 5050
trigger2 = time >= 30
value = 5050
ignorehitpause=1

;雷転がし（自分-移動）-------------------------------------------
[Statedef 6067, ThunderSetMoveMe]
movetype = I
physics = N
velset = ifelse(var(1)=1,4.5,-4.5),-2.5
anim = 2113
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6068
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6069
;persistent=0

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6063
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;雷転がし（相手-移動）-------------------------------------------
[Statedef 6068, ThunderSetMoveEnemy]
movetype = I
physics = N
velset = ifelse(var(1)=11,4.5,-4.5),-2.5
anim = 2113
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6067
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 21 || var(1) = 22
value = 6069
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MovePartner1]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing = (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 10100, MovePartner2]
type = VarSet
triggerall = time
trigger1 = numpartner > 0
trigger1 = (partner,movetype = A)
trigger1 = facing != (partner,facing)
trigger1 = (partner,pos X) - Pos X = [-50,50]
trigger1 = (partner,pos Y) - Pos Y = [-10,20]
v = 1
value = 21
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6063
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;雷転がし（パートナー-移動）-------------------------------------------
[Statedef 6069, ThunderSetMovePartner]
movetype = I
physics = N
velset = ifelse(var(1)=21,4.5,-4.5),-2.5
anim = 2113
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 6000, Timer]
type = VarAdd
trigger1 = 1
v = 2
value = 1
ignorehitpause = 1

[State 6000, Grav]
type = VelAdd
trigger1 = pos Y < -8
trigger1 = 1
y = 0.44

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y > -8
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = vel X = 0
trigger1 = Vel Y = 0
trigger1 = pos Y > 0
trigger1 = 1
y = -8

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 1 || var(1) = 2
value = 6067
;persistent=0

[State 6000, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = var(1) = 11 || var(1) = 12
value = 6068
;persistent=0

[State 10100, MoveMe1]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing = (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 1
;persistent=0
ignorehitpause=1

[State 10100, MoveMe2]
type = VarSet
triggerall = time
trigger1 = (parent,movetype = A)
trigger1 = facing != (parent,facing)
trigger1 = (parent,pos X) - Pos X = [-50,50]
trigger1 = (parent,pos Y) - Pos Y = [-10,20]
v = 1
value = 2
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy1]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing = (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 11
;persistent=0
ignorehitpause=1

[State 10100, MoveEnemy2]
type = VarSet
triggerall = time
trigger1 = (enemynear,movetype = A)
trigger1 = facing != (enemynear,facing)
trigger1 = (enemynear,pos X) - Pos X = [-50,50]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,20]
v = 1
value = 12
;persistent=0
ignorehitpause=1

[State 6000, ChangeState]
type = ChangeState
trigger1 = 1
trigger1 = vel X = 0
trigger1 = var(2) >= 300
value = 6063
persistent=0

[State 6000, PalFX]
type = PalFX
trigger1 = var(2) = 200
time = 100
sinadd = 256,0,0,10

[State 6000, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,var(51) >= 2
ignorehitpause=1

;アイテム玉消滅-------------------------------------------
[Statedef 6400, LostItemBall]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;バナナ-相手取得-------------------------------------------
[Statedef 6401, GiveBanana]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveBanana]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(246402) = 0
stateno = 6402
ID = 246402
name = "GiveBanana"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;バナナスイッチヘルパー-------------------------------------------
[Statedef 6402, BananaSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;火-相手取得-------------------------------------------
[Statedef 6411, GiveFire]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveFire]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(246412) = 0
stateno = 6412
ID = 246412
name = "GiveFire"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;火スイッチヘルパー-------------------------------------------
[Statedef 6412, FireSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;石-相手取得-------------------------------------------
[Statedef 6421, GiveStone]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveStone]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(246422) = 0
stateno = 6422
ID = 246422
name = "GiveStone"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;石スイッチヘルパー-------------------------------------------
[Statedef 6422, StoneSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;毒-相手取得-------------------------------------------
[Statedef 6431, GivePoison]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GivePoison]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(246432) = 0
stateno = 6432
ID = 246432
name = "GivePoison"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;毒スイッチヘルパー-------------------------------------------
[Statedef 6432, PoisonSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;爆弾-相手取得-------------------------------------------
[Statedef 6441, GiveBomb]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveBomb]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(246442) = 0
stateno = 6442
ID = 246442
name = "GiveBomb"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;爆弾スイッチヘルパー-------------------------------------------
[Statedef 6442, BombSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;氷-相手取得-------------------------------------------
[Statedef 6451, GiveIce]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveIce]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(246452) = 0
stateno = 6452
ID = 246452
name = "GiveIce"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;氷スイッチヘルパー-------------------------------------------
[Statedef 6452, IceSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;雷-相手取得-------------------------------------------
[Statedef 6461, GiveThunder]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveThunder]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(246462) = 0
stateno = 6462
ID = 246462
name = "GiveThunder"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,62
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;雷スイッチヘルパー-------------------------------------------
[Statedef 6462, ThunderSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1
























;ジェム--------------------------------------------------------------------
;赤小ジェム01-------------------------------------------
[Statedef 7010, GemRS01]
movetype = I
physics = N
velset = 1.2+random%2,-7.5-random%2
anim = 2147
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2147
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2147
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7200
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7601
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2147
value = 2148
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;黄小ジェム01-------------------------------------------
[Statedef 7012, GemYS01]
movetype = I
physics = N
velset = 2.4+random%2,-7.3-random%2
anim = 2133
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2133
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2133
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7201
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7621
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2133
value = 2134
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;青小ジェム01-------------------------------------------
[Statedef 7014, GemBS01]
movetype = I
physics = N
velset = 3.5+random%2,-7.2-random%2
anim = 2140
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2140
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2140
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7202
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7611
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2140
value = 2141
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;赤中ジェム01-------------------------------------------
[Statedef 7020, GemRM01]
movetype = I
physics = N
velset = 1.5+random%2,-7.2-random%2
anim = 2149
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2149
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2149
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7210
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7603
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2149
value = 2150
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;黄中ジェム01-------------------------------------------
[Statedef 7022, GemYM01]
movetype = I
physics = N
velset = 2.3+random%2,-8.4-random%2
anim = 2135
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2135
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2135
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7211
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7623
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2135
value = 2136
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;青中ジェム01-------------------------------------------
[Statedef 7024, GemBM01]
movetype = I
physics = N
velset = 2.3+random%2,-8.4-random%2
anim = 2142
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2142
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2142
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7212
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7613
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2142
value = 2143
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;赤大ジェム01-------------------------------------------
[Statedef 7030, GemRL01]
movetype = I
physics = N
velset = 2.0+random%2,-8.4-random%2
anim = 2151
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2151
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2151
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7220
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7605
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2151
value = 2152
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;黄大ジェム01-------------------------------------------
[Statedef 7032, GemYL01]
movetype = I
physics = N
velset = 2.3+random%2,-8.4-random%2
anim = 2137
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2137
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2137
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7221
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7625
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2137
value = 2138
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;青大ジェム01-------------------------------------------
[Statedef 7034, GemBL01]
movetype = I
physics = N
velset = 2.3+random%2,-8.4-random%2
anim = 2144
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2144
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2144
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7222
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7615
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2144
value = 2145
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;赤特大ジェム01-------------------------------------------
[Statedef 7040, GemRH01]
movetype = I
physics = N
velset = 1.9+random%2,-8.5-random%2
anim = 2153
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2153
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2153
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7230
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7607
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2153
value = 2700
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;黄特大ジェム01-------------------------------------------
[Statedef 7042, GemYH01]
movetype = I
physics = N
velset = 2.3+random%2,-8.4-random%2
anim = 2139
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2139
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2139
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7231
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7627
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2139
value = 2701
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;青特大ジェム01-------------------------------------------
[Statedef 7044, GemBH01]
movetype = I
physics = N
velset = 2.5+random%2,-8.6-random%2
anim = 2146
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2146
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2146
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7232
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7617
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2146
value = 2702
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;レインボー小ジェム01-------------------------------------------
[Statedef 7050, GemMS01]
movetype = I
physics = N
velset = 2.0+random%2,-8.5-random%2
anim = 2129
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2129
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2129
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7250
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7631
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2129
value = 2703
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;レインボー中ジェム01-------------------------------------------
[Statedef 7052, GemMM01]
movetype = I
physics = N
velset = 2.4+random%2,-8.5-random%2
anim = 2130
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2130
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2130
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7251
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7633
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2130
value = 2704
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;レインボー大ジェム01-------------------------------------------
[Statedef 7054, GemML01]
movetype = I
physics = N
velset = 2.6+random%2,-8.7-random%2
anim = 2131
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2131
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2131
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7252
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7635
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2131
value = 2705
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;レインボー特大ジェム01-------------------------------------------
[Statedef 7056, GemMH01]
movetype = I
physics = N
velset = 4.1+random%2,-8.1-random%2
anim = 2132
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 7010, Assert]
type = AssertSpecial
trigger1 = 1
trigger1 = anim = 2132
flag = noshadow

[State 7010, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 7010, Edge]
type = VelSet
triggerall = 1
trigger1 = anim = 2132
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 7010, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= 0
x = 3.0
y = -3.0
persistent=0

[State 7010, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y >= 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 7010, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
y = 0
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(55) = 1
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 7253
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 7637
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 55
value = 1
;persistent=0
ignorehitpause=1

[State 7010, ChangeAnim]
type = ChangeAnim
trigger1 = pos Y >= 0
trigger1 = anim = 2132
value = 2706
persistent=0

[State 192,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 300


;赤小ジェム取得消滅-------------------------------------------
[Statedef 7200, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 58
value = 1
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = ifelse((parent,var(48)=3),70,50)
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 9
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;黄小ジェム取得消滅-------------------------------------------
[Statedef 7201, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 56
value = 1
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = ifelse((parent,var(46)=3),70,50)
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 1
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;青小ジェム取得消滅-------------------------------------------
[Statedef 7202, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 57
value = 1
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = ifelse((parent,var(47)=3),70,50)
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 5
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;赤中ジェム取得消滅-------------------------------------------
[Statedef 7210, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 58
value = 2
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = ifelse((parent,var(48)=3),150,100)
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 10
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;黄中ジェム取得消滅-------------------------------------------
[Statedef 7211, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 56
value = 2
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = ifelse((parent,var(46)=3),150,100)
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 2
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;青中ジェム取得消滅-------------------------------------------
[Statedef 7212, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 57
value = 2
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = ifelse((parent,var(47)=3),150,100)
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 6
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;赤大ジェム取得消滅-------------------------------------------
[Statedef 7220, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 58
value = 5
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = ifelse((parent,var(48)=3),300,200)
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 11
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;黄大ジェム取得消滅-------------------------------------------
[Statedef 7221, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 56
value = 5
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = ifelse((parent,var(46)=3),300,200)
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 3
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;青大ジェム取得消滅-------------------------------------------
[Statedef 7222, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 57
value = 5
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = ifelse((parent,var(47)=3),300,200)
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 7
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;赤特大ジェム取得消滅-------------------------------------------
[Statedef 7230, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 58
value = 10
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = ifelse((parent,var(48)=3),600,400)
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 12
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;黄特大ジェム取得消滅-------------------------------------------
[Statedef 7231, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 56
value = 10
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = ifelse((parent,var(46)=3),600,400)
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 4
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;青特大ジェム取得消滅-------------------------------------------
[Statedef 7232, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 57
value = 10
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = ifelse((parent,var(47)=3),600,400)
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 8
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;レインボー小ジェム取得消滅-------------------------------------------
[Statedef 7250, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 56
value = 1
persistent=0
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 57
value = 1
persistent=0
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 58
value = 1
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = 70
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 13
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;レインボー中ジェム取得消滅-------------------------------------------
[Statedef 7251, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 56
value = 2
persistent=0
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 57
value = 2
persistent=0
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 58
value = 2
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = 100
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 14
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;レインボー大ジェム取得消滅-------------------------------------------
[Statedef 7252, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 56
value = 5
persistent=0
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 57
value = 5
persistent=0
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 58
value = 5
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = 200
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 15
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;レインボー特大ジェム取得消滅-------------------------------------------
[Statedef 7253, GetGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 56
value = 10
persistent=0
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 57
value = 10
persistent=0
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = time = 0
v = 58
value = 10
persistent=0
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = time = 0
v = 39
value = 400
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 16
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;ジェム消滅-------------------------------------------
[Statedef 7203, LostGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time = 1


;ジェム赤小-相手取得-------------------------------------------
[Statedef 7601, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveRS]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247602) = 0
stateno = 7602
ID = 247602
name = "GiveRS"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;赤小スイッチヘルパー-------------------------------------------
[Statedef 7602, RSSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェム赤中-相手取得-------------------------------------------
[Statedef 7603, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveRM]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247604) = 0
stateno = 7604
ID = 247604
name = "GiveRM"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;赤中スイッチヘルパー-------------------------------------------
[Statedef 7604, RMSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェム赤大-相手取得-------------------------------------------
[Statedef 7605, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveRL]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247606) = 0
stateno = 7606
ID = 247606
name = "GiveRL"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;赤大スイッチヘルパー-------------------------------------------
[Statedef 7606, RLSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェム赤特大-相手取得-------------------------------------------
[Statedef 7607, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveRH]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247608) = 0
stateno = 7608
ID = 247608
name = "GiveRH"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;赤特大スイッチヘルパー-------------------------------------------
[Statedef 7608, RHSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェム青小-相手取得-------------------------------------------
[Statedef 7611, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveBS]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247612) = 0
stateno = 7612
ID = 247612
name = "GiveBS"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;青小スイッチヘルパー-------------------------------------------
[Statedef 7612, BSSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェム青中-相手取得-------------------------------------------
[Statedef 7613, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveBM]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247614) = 0
stateno = 7614
ID = 247614
name = "GiveBM"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;青中スイッチヘルパー-------------------------------------------
[Statedef 7614, BMSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェム青大-相手取得-------------------------------------------
[Statedef 7615, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveBL]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247616) = 0
stateno = 7616
ID = 247616
name = "GiveBL"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;青大スイッチヘルパー-------------------------------------------
[Statedef 7616, BLSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェム青特大-相手取得-------------------------------------------
[Statedef 7617, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveBH]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247618) = 0
stateno = 7618
ID = 247618
name = "GiveBH"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;青特大スイッチヘルパー-------------------------------------------
[Statedef 7618, BHSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェム黄小-相手取得-------------------------------------------
[Statedef 7621, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveYS]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247622) = 0
stateno = 7622
ID = 247622
name = "GiveYS"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;黄小スイッチヘルパー-------------------------------------------
[Statedef 7622, YSSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェム黄中-相手取得-------------------------------------------
[Statedef 7623, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveYM]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247624) = 0
stateno = 7624
ID = 247624
name = "GiveYM"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;黄中スイッチヘルパー-------------------------------------------
[Statedef 7624, YMSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェム黄大-相手取得-------------------------------------------
[Statedef 7625, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveYL]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247626) = 0
stateno = 7626
ID = 247626
name = "GiveYL"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;黄大スイッチヘルパー-------------------------------------------
[Statedef 7626, YLSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェム黄特大-相手取得-------------------------------------------
[Statedef 7627, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveRH]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247628) = 0
stateno = 7628
ID = 247628
name = "GiveYH"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;黄特大スイッチヘルパー-------------------------------------------
[Statedef 7628, YHSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェムレインボー小-相手取得-------------------------------------------
[Statedef 7631, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveMS]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247632) = 0
stateno = 7632
ID = 247632
name = "GiveMS"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;レインボー小スイッチヘルパー-------------------------------------------
[Statedef 7632, MSSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェムレインボー中-相手取得-------------------------------------------
[Statedef 7633, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveMM]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247634) = 0
stateno = 7634
ID = 247634
name = "GiveMM"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;レインボー中スイッチヘルパー-------------------------------------------
[Statedef 7634, MMSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェムレインボー大-相手取得-------------------------------------------
[Statedef 7635, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveML]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247636) = 0
stateno = 7636
ID = 247636
name = "GiveML"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;レインボー大スイッチヘルパー-------------------------------------------
[Statedef 7636, MLSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ジェムレインボー特大-相手取得-------------------------------------------
[Statedef 7637, GiveGem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveMH]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(247638) = 0
stateno = 7638
ID = 247638
name = "GiveMH"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(55) = 0

;レインボー特大スイッチヘルパー-------------------------------------------
[Statedef 7638, MHSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1















;宝箱ダミー-------------------------------------------
[Statedef 8000, BoxDrop]
movetype = I
physics = N
velset = 2.8,-8.0
anim = 2166
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= -2
x = 1.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 1
x = 0
y = 0
persistent=0

[State 400, PlaySnd]
type = PlaySnd
triggerall = anim = 2166
trigger1 = pos Y >= -2
value = s100,60
volume = -200
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = 0
persistent=0

[State 400, PlaySnd]
type = PlaySnd
triggerall = anim = 2166
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
value = s100,60
volume = -200
persistent=0

[State 10100, ChangeAnim]
type = ChangeAnim
triggerall = 1
triggerall = time >= 75
trigger1 = pos Y = 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
value = 2167
ignorehitpause=1

[State 10100, ParentVarSet]
type = ParentVarSet
triggerall = 1
trigger1 = anim = 2167
trigger1 = animelemtime(1) = 0
v = 38
value = 2
ignorehitpause=1

[State 400, PlaySnd]
type = PlaySnd
trigger1 = anim = 2167
value = s100,61
volume = -200
persistent=0

[State 6000,FadeOut]
type = Trans
triggerall = 1
triggerall = time >= 75
trigger1 = anim = 2167
trans = addalpha
alpha = 256-(ceil(time*1)),0+(ceil(time*1))
ignorehitpause=1

[State 10100, ParentVarSet]
type = ParentVarSet
triggerall = 1
trigger1 = time = 200
v = 38
value = 0
ignorehitpause=1

[State 10100, ParentVarSet]
type = ParentVarSet
triggerall = 1
trigger1 = time = 200
v = 49
value = 0
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 200
trigger2 = var(51) >= 2

;宝箱-------------------------------------------
[Statedef 8001, Box]
movetype = I
physics = N
velset = 2.8,-8.0
anim = 2504
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 3
range = 1,29
persistent=0

[State 6000, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 5
range = 1,2
persistent=0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = pos Y < 0
y = 0.44

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y >= -2
x = 1.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 1
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = -100
persistent=0

[State 6000, Turn]
type = Turn
trigger1 = var(5) = 2
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 1
value = 7030
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 2
value = 7032
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 3
value = 7034
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 4
value = 7040
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 5
value = 7042
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 6
value = 7044
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 7
value = 7050
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 8
value = 7052
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 9
value = 7054
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 10
value = 7056
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 11
value = 6000
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 12
value = 6010
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 13
value = 6020
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 14
value = 6030
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 15
value = 6040
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 16
value = 6050
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 17
value = 6060
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 18
value = 8101
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 19
value = 8111
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 20
value = 8121
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 21
value = 8131
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 22
value = 8141
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 23
value = 8151
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 24
value = 8161
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 25
value = 8171
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 26
value = 8181
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 27
value = 8191
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 28
value = 8201
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
trigger1 = parent,var(38) = 2
trigger1 = var(3) = 29
value = 8211
ignorehitpause=1


[State 6000, DestroySelf]
type = DestroySelf
trigger1 = !(parent,Alive)

;ジェム発生-------------------------------------------
[Statedef 8002, Gem]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 3
range = 1,3
persistent=0

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = parent,var(37) < 11
trigger1 = var(3) = 1
value = 7010
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = parent,var(37) < 11
trigger1 = var(3) = 2
value = 7012
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = parent,var(37) < 11
trigger1 = var(3) = 3
value = 7014
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = (parent,var(37) >= 11) && (parent,var(37) < 21)
trigger1 = var(3) = 1
value = 7020
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = (parent,var(37) >= 11) && (parent,var(37) < 21)
trigger1 = var(3) = 2
value = 7022
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = (parent,var(37) >= 11) && (parent,var(37) < 21)
trigger1 = var(3) = 3
value = 7024
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = (parent,var(37) >= 21) && (parent,var(37) < 31)
trigger1 = var(3) = 1
value = 7030
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = (parent,var(37) >= 21) && (parent,var(37) < 31)
trigger1 = var(3) = 2
value = 7032
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = (parent,var(37) >= 21) && (parent,var(37) < 31)
trigger1 = var(3) = 3
value = 7034
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = (parent,var(37) >= 31) && (parent,var(37) < 41)
trigger1 = var(3) = 1
value = 7040
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = (parent,var(37) >= 31) && (parent,var(37) < 41)
trigger1 = var(3) = 2
value = 7042
ignorehitpause=1

[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = (parent,var(37) >= 31) && (parent,var(37) < 41)
trigger1 = var(3) = 3
value = 7044
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = !(parent,Alive)

;食べ物--------------------------------------------------------------------
;イチゴ-------------------------------------------
[Statedef 8101, StrawberryDrop]
movetype = I
physics = N
velset = 2.8+random%2,-6.0-random%2
anim = 2177
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > 0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = 0
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 8102
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 8103
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;いちご取得消滅-------------------------------------------
[Statedef 8102, GetStrawberry]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, LifeUp]
type = parentVarAdd
trigger1 = time = 0
v = 54
value = 10
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;イチゴ-相手取得-------------------------------------------
[Statedef 8103, GiveStrawberry]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveStrawberry]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(248104) = 0
stateno = 8104
ID = 248104
name = "GiveStrawberry"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;イチゴスイッチヘルパー-------------------------------------------
[Statedef 8104, StrawberrySwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;スイカ-------------------------------------------
[Statedef 8111, SuikaDrop]
movetype = I
physics = N
velset = 2.5+random%2,-7.0-random%2
anim = 2176
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > 0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = 0
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 8112
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 8113
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;スイカ取得消滅-------------------------------------------
[Statedef 8112, GetSuika]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, LifeUp]
type = parentVarAdd
trigger1 = time = 0
v = 54
value = 15
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;スイカ-相手取得-------------------------------------------
[Statedef 8113, GiveSuika]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveSuika]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(248114) = 0
stateno = 8114
ID = 248114
name = "GiveSuika"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;イチゴスイッチヘルパー-------------------------------------------
[Statedef 8114, SuikaSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;桃缶-------------------------------------------
[Statedef 8121, MomokanDrop]
movetype = I
physics = N
velset = 2.1+random%2,-6.8-random%2
anim = 2178
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > 0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = 0
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 8122
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 8123
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;桃缶取得消滅-------------------------------------------
[Statedef 8122, GetMomokan]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, LifeUp]
type = parentVarAdd
trigger1 = time = 0
v = 54
value = 20
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;桃缶-相手取得-------------------------------------------
[Statedef 8123, GiveMomokan]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveMomokan]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(248124) = 0
stateno = 8124
ID = 248124
name = "GiveMomokan"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;桃缶スイッチヘルパー-------------------------------------------
[Statedef 8124, MomokanSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ケーキ-------------------------------------------
[Statedef 8131, CakeDrop]
movetype = I
physics = N
velset = 3.3+random%2,-8.2-random%2
anim = 2170
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > 0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = 0
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 8132
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 8133
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;ケーキ取得消滅-------------------------------------------
[Statedef 8132, GetCake]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, LifeUp]
type = parentVarAdd
trigger1 = time = 0
v = 54
value = 25
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;ケーキ-相手取得-------------------------------------------
[Statedef 8133, GiveCake]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveCake]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(248134) = 0
stateno = 8134
ID = 248134
name = "GiveCake"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;ケーキスイッチヘルパー-------------------------------------------
[Statedef 8134, CakeSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;クリームソーダ-------------------------------------------
[Statedef 8141, SodaDrop]
movetype = I
physics = N
velset = 2.0+random%2,-6.7-random%2
anim = 2172
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > 0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = 0
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 8142
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 8143
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;クリームソーダ取得消滅-------------------------------------------
[Statedef 8142, GetSoda]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, LifeUp]
type = parentVarAdd
trigger1 = time = 0
v = 54
value = 30
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;クリームソーダ-相手取得-------------------------------------------
[Statedef 8143, GiveSoda]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveSoda]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(248144) = 0
stateno = 8144
ID = 248144
name = "GiveSoda"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;クリームソーダスイッチヘルパー-------------------------------------------
[Statedef 8144, SodaSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;パフェ-------------------------------------------
[Statedef 8151, ParfaitDrop]
movetype = I
physics = N
velset = 4.1+random%2,-9.0-random%2
anim = 2180
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > 0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = 0
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 8152
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 8153
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;パフェ取得消滅-------------------------------------------
[Statedef 8152, GetParfait]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, LifeUp]
type = parentVarAdd
trigger1 = time = 0
v = 54
value = 40
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;パフェ-相手取得-------------------------------------------
[Statedef 8153, GiveParfait]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveParfait]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(248154) = 0
stateno = 8154
ID = 248154
name = "GiveParfait"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;パフェスイッチヘルパー-------------------------------------------
[Statedef 8154, ParfaitSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ハンバーガ-------------------------------------------
[Statedef 8161, BurgerDrop]
movetype = I
physics = N
velset = 2.4+random%2,-7.2-random%2
anim = 2174
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > 0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = 0
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 8162
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 8163
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;ハンバーガ取得消滅-------------------------------------------
[Statedef 8162, GetBurger]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, LifeUp]
type = parentVarAdd
trigger1 = time = 0
v = 54
value = 50
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;ハンバーガ-相手取得-------------------------------------------
[Statedef 8163, GiveBurger]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveBurger]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(248164) = 0
stateno = 8164
ID = 248164
name = "GiveBurger"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;ハンバーガスイッチヘルパー-------------------------------------------
[Statedef 8164, BurgerSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ピザ-------------------------------------------
[Statedef 8171, PizzaDrop]
movetype = I
physics = N
velset = 1.9+random%2,-8.0-random%2
anim = 2171
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > 0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = 0
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 8172
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 8173
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;ピザ取得消滅-------------------------------------------
[Statedef 8172, GetPizza]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, LifeUp]
type = parentVarAdd
trigger1 = time = 0
v = 54
value = 70
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;ピザ-相手取得-------------------------------------------
[Statedef 8173, GivePizza]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GivePizza]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(248174) = 0
stateno = 8174
ID = 248174
name = "GivePizza"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;ピザスイッチヘルパー-------------------------------------------
[Statedef 8174, PizzaSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ステーキ-------------------------------------------
[Statedef 8181, SteakDrop]
movetype = I
physics = N
velset = 3.3+random%2,-8.1-random%2
anim = 2173
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > 0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = 0
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 8182
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 8183
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;ステーキ取得消滅-------------------------------------------
[Statedef 8182, GetSteak]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, LifeUp]
type = parentVarAdd
trigger1 = time = 0
v = 54
value = 80
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;ステーキ-相手取得-------------------------------------------
[Statedef 8183, GiveSteak]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveSteak]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(248184) = 0
stateno = 8184
ID = 248184
name = "GiveSteak"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;ステーキスイッチヘルパー-------------------------------------------
[Statedef 8184, SteakSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;漫画肉-------------------------------------------
[Statedef 8191, MangaNikuDrop]
movetype = I
physics = N
velset = 2.1+random%2,-6.9-random%2
anim = 2181
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > 0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = 0
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 8192
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 8193
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;漫画肉取得消滅-------------------------------------------
[Statedef 8192, GetMangaNiku]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, LifeUp]
type = parentVarAdd
trigger1 = time = 0
v = 54
value = 100
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;漫画肉-相手取得-------------------------------------------
[Statedef 8193, GiveMangaNiku]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveMangaNiku]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(248194) = 0
stateno = 8194
ID = 248194
name = "GiveMangaNiku"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;漫画肉スイッチヘルパー-------------------------------------------
[Statedef 8194, MangaNikuSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;ローストチキン-------------------------------------------
[Statedef 8201, ChickenDrop]
movetype = I
physics = N
velset = 1.9+random%2,-9.0-random%2
anim = 2179
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > 0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = 0
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 8202
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 8203
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;チキン取得消滅-------------------------------------------
[Statedef 8202, GetChicken]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, LifeUp]
type = parentVarAdd
trigger1 = time = 0
v = 54
value = 150
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;チキン-相手取得-------------------------------------------
[Statedef 8203, GiveChicken]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveChicken]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(248204) = 0
stateno = 8204
ID = 248204
name = "GiveChicken"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;チキンスイッチヘルパー-------------------------------------------
[Statedef 8204, ChickenSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1

;丸焼き-------------------------------------------
[Statedef 8211, MaruyakiDrop]
movetype = I
physics = N
velset = 3.5+random%2,-8.0-random%2
anim = 2175
ctrl = 0

[State 6000, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 6000, PushOff]
type = PlayerPush
trigger1 = 1
value = 0

[State 6000, Grav]
type = VelAdd
trigger1 = 1
trigger1 = time > 2
trigger1 = pos Y < 0
y = 0.44

[State 7010, VelMul]
type = Velmul
triggerall = 1
trigger1 = pos Y >= 0
trigger1 = vel X > 0
x = -0.01

[State 6000, Edge]
type = VelSet
triggerall = 1
trigger1 = vel Y != 0
trigger1 = FrontEdgeBodyDist < -5
x = -3.5
y = -2.5
persistent=0

[State 6000, Bounce]
type = VelSet
triggerall = 1
trigger1 = pos Y > 0
x = 3.0
y = -3.0
persistent=0

[State 6000, Stop]
type = VelSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X < 0
x = 0
y = 0
persistent=0

[State 6000, Pos]
type = PosSet
trigger1 = 1
trigger1 = pos Y > 0
trigger1 = vel X = 0
trigger1 = vel Y = 0
y = 0
persistent=0


[State 10100, ChangeState]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = parent,var(52) = 1
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
value = 8212
ignorehitpause=1

[State 10100, Lost]
type = ChangeState
triggerall = 1
triggerall = time >= 30
trigger1 = (enemynear,pos X) - Pos X = [-10,10]
trigger1 = (enemynear,pos Y) - Pos Y = [-10,10]
trigger2 = numpartner > 0
trigger2 = (partner,pos X) - Pos X = [-10,10]
trigger2 = (partner,pos Y) - Pos Y = [-10,10]
value = 8213
;persistent=0
ignorehitpause=1

[State 10100, Get]
type = parentVarSet
triggerall = 1
triggerall = time >= 30
trigger1 = parent,Alive
trigger1 = parentDist X = [-10,10] 
trigger1 = parentDist Y = [-10,10]
v = 52
value = 1
;persistent=0
ignorehitpause=1

[State 6000,FadeOut]
type = Trans
triggerall = time >= 200
trigger1 = 1
trans = addalpha
alpha = 256-(ceil(time*0.3)),0+(ceil(time*0.3))
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = time >= 300

;丸焼き取得消滅-------------------------------------------
[Statedef 8212, GetMaruyaki]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, LifeUp]
type = parentVarAdd
trigger1 = time = 0
v = 54
value = 200
persistent=0
ignorehitpause=1

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;丸焼き-相手取得-------------------------------------------
[Statedef 8213, GiveMaruyaki]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7000, GiveMaruyaki]
type = Helper
triggerall = 1
triggerall = roundstate = 2
triggerall = Root,Alive
triggerall = parent,var(49) >= 1
trigger1 = numhelper(248214) = 0
stateno = 8214
ID = 248214
name = "GiveMaruyaki"
helpertype = normal
keyctrl = 0
pos = 0,0
postype = p2
ownpal = 1
sprpriority = -5
persistent=0
ignorehitpause=1

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7200,PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100,63
persistent=0

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s100, 51
persistent=0

[State 10100, Reset]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
persistent=0
ignorehitpause=1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = parent,var(52) = 0

;丸焼きスイッチヘルパー-------------------------------------------
[Statedef 8214, MaruyakiSwich]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0

[State 7010, NHB]
type = NotHitBy
value = SCA
trigger1 = 1

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = time >= 1








