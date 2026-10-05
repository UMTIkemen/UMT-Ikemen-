; The CMD file. Don't fuck with any of this.
[Defaults]
command.time = 15
command.buffer.time = 1
;-| Super Motions |--------------------------------------------------------
[Command]
name = "QCFx2"
command = ~D,DF,F,D,DF
time = 21
[Command]
name = "QCBx2"
command = ~D,DB,B,D,DB
time = 21

;-| Special Motions |------------------------------------------------------
[Command]
name = "DP"
command = ~F,D,DF
time = 12

[Command]
name = "rDP"
command = ~B,D,DB
time = 12

[Command]
name = "QCF"
command = ~D,DF,F
time = 12

[Command]
name = "QCB"
command = ~D,DB,B
time = 12

[Command]
name = "HCF"
command = ~B,DB,D,DF,F
time = 18

[Command]
name = "HCB"
command = ~F,DF,D,DB,B
time = 18

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "longjump"
command = D,$U
time = 10

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+a
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "downback"
command = DB
time = 1

[Command]
name = "parry" ; REQUIRED for command buffering
command = F
time = 1

[Command]
name = "parry2" ; REQUIRED for command buffering
command = D
time = 1

[Command]
name = "rich"  ; REQUIRED for command buffering
command = U
time = 1

[Command]
name = "up"
command = U
time = 3

[Command]
name = "down"
command = D
time = 3

[Command]
name = "down2" ; REQUIRED for command buffering
command = $D
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_start"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1
[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1
[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1
[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdfwd_r" ; Raw hold forward (REQUIRED for command buffering)
command = /F
time = 1
[Command]
name = "holddown_r" ; Raw hold forward (REQUIRED for command buffering)
command = /D
time = 1
[Command]
name = "holdback_r" ; Raw hold forward (REQUIRED for command buffering)
command = /B
time = 1
[Command]
name = "holdup_r" ; Raw hold forward (REQUIRED for command buffering)
command = /U
time = 1

;-| Release Dir |-----------------------------------------------------------
[Command]
name = "release_fwd"
command = ~F
time = 1

[Command]
name = "release_down"
command = ~D
time = 1

[Command]
name = "release_back"
command = ~B
time = 1

[Command]
name = "release_up"
command = ~U
time = 1

;-| Release Button |---------------------------------------------------------
[Command]
name = "release_a"
command = ~a
time = 1

[Command]
name = "release_b"
command = ~b
time = 1

[Command]
name = "release_c"
command = ~c
time = 1

[Command]
name = "release_x"
command = ~x
time = 1

[Command]
name = "release_y"
command = ~y
time = 1

[Command]
name = "release_z"
command = ~z
time = 1

[Command]
name = "release_start"
command = ~s
time = 1

;---------------------------------------------------------------------------
; I said don't fuck with it, you stupid bitch.
[Statedef -1]
; Parrying/Just Defend Voice
[State -2, PlaySnd]
type = Playsnd
triggerall = Time = 0
trigger1 = StateNo = 700
trigger2 = StateNo = 710
trigger3 = StateNo = 720
trigger4 = StateNo = 150 && Var(14) = 1
trigger5 = StateNo = 152 && Var(14) = 1
trigger6 = StateNo = 154 && Var(14) = 1
value = S8,0
channel = 0

[State 710, Explod]; Parry spark
type = Explod
triggerall = Time = 0
trigger1 = StateNo = 700
trigger2 = StateNo = 710
trigger3 = StateNo = 720
anim = 7500
pos = ifElse(StateNo=720,14,ifElse(StateNo=710,42,35)),ifElse(StateNo=720,-84,ifElse(StateNo=710,-28,-98)) ;basic code
sprpriority = 3
ownpal = 1
scale = .5,.5
pausemovetime = 15
[State 500, Explod]; Just Defend spark
type = Explod
triggerall = Time = 0
triggerall = Var(14) = 1
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154
anim = 7000
;pos = ifElse(StateNo=154,0,ifElse(StateNo=152,14,0)),ifElse(StateNo=154,-70,ifElse(StateNo=152,-42,-77)) ;basic code
pos = ifElse(StateNo=152,14,0),ifElse(StateNo=154,-70,ifElse(StateNo=152,-42,-77))
sprpriority = 3
ownpal = 1
scale = .5,.5
pausemovetime = 4

;==========================================================================;
;                              HUMAN COMMANDS                              ;
;==========================================================================;
;---------------------------------------------------------------------------
; Conflict Check
[State -1, P]
type = VarSet
triggerall = !AILevel
trigger1 = (helper(10371), Var(0) = [1,2]) || (helper(10371), Var(1) = [1,2]) || (helper(10371), Var(2) = [1,2])
trigger2 = !Var(30)
trigger2 = (helper(10371), Var(7) = [1,2]) || (helper(10371), Var(8) = [1,2]) || (helper(10371), Var(9) = [1,2])
var(46) = 1
ignorehitpause = 1
[State -1, K]
type = VarSet
triggerall = !AILevel
trigger1 = (helper(10371), Var(3) = [1,2]) || (helper(10371), Var(4) = [1,2]) || (helper(10371), Var(5) = [1,2])
trigger2 = !Var(30)
trigger2 = (helper(10371), Var(10) = [1,2]) || (helper(10371), Var(11) = [1,2]) || (helper(10371), Var(12) = [1,2])
var(46) = 0
ignorehitpause = 1
[State -1, P beats ~K]
type = VarSet
triggerall = !AILevel
triggerall = !Var(30)
triggerall = (helper(10371), Var(0) = [1,2]) || (helper(10371), Var(1) = [1,2]) || (helper(10371), Var(2) = [1,2])
trigger1 = (helper(10371), Var(0) >= helper(10371), Var(10)) || (helper(10371), Var(0) >= helper(10371), Var(11))
trigger2 = (helper(10371), Var(0) >= helper(10371), Var(12)) || (helper(10371), Var(1) >= helper(10371), Var(10))
trigger3 = (helper(10371), Var(1) >= helper(10371), Var(11)) || (helper(10371), Var(1) >= helper(10371), Var(12))
trigger4 = (helper(10371), Var(2) >= helper(10371), Var(10)) || (helper(10371), Var(2) >= helper(10371), Var(11))
trigger5 = (helper(10371), Var(2) >= helper(10371), Var(12))
var(46) = 1
ignorehitpause = 1
[State -1, K beats ~P]
type = VarSet
triggerall = !AILevel
triggerall = !Var(30)
triggerall = (helper(10371), Var(3) = [1,2]) || (helper(10371), Var(4) = [1,2]) || (helper(10371), Var(5) = [1,2])
trigger1 = (helper(10371), Var(3) >= helper(10371), Var(7)) || (helper(10371), Var(3) >= helper(10371), Var(9))
trigger2 = (helper(10371), Var(3) >= helper(10371), Var(9)) || (helper(10371), Var(4) >= helper(10371), Var(7))
trigger3 = (helper(10371), Var(4) >= helper(10371), Var(8)) || (helper(10371), Var(4) >= helper(10371), Var(9))
trigger4 = (helper(10371), Var(5) >= helper(10371), Var(7)) || (helper(10371), Var(5) >= helper(10371), Var(8))
trigger5 = (helper(10371), Var(5) >= helper(10371), Var(9))
var(46) = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Tiger Cannon/Tiger Genocide
[State -1, Tiger Cannon/Tiger Genocide]
type = ChangeState
value = ifElse(Var(46),3000,3200)
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(40) 
triggerall = (helper(10371), Var(0) = [1,2]) || (helper(10371), Var(1) = [1,2]) || (helper(10371), Var(2) = [1,2]) || (helper(10371), Var(3) = [1,2]) || (helper(10371), Var(4) = [1,2]) || (helper(10371), Var(5) = [1,2]) || (!Var(30) && ((helper(10371), Var(7) = [1,2]) || (helper(10371), Var(8) = [1,2]) || (helper(10371), Var(9) = [1,2]) || (helper(10371), Var(10) = [1,2]) || (helper(10371), Var(11) = [1,2]) || (helper(10371), Var(12) = [1,2])))
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30)
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !Var(46) || cond(NumHelper(2005) || NumHelper(2105), (StateNo = [3000,3999]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3), cond(NumHelper(2005), Helper(2005), StateNo = 2010, cond(NumHelper(2105), Helper(2105), StateNo = 2010, 1)))
triggerall = cond(Var(46), !(NumHelper(1005) || NumHelper(1105)) || (Var(50) && (var(5)&16)>0), 1)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 220 && AnimElemTime(4) < 0
trigger5 = StateNo = 225 && AnimElemTime(5) < 0
trigger6 = StateNo = 230 && AnimElemTime(5) < 0
trigger7 = StateNo = 240 && AnimElemTime(4) < 0
trigger8 = StateNo = 250 && AnimElemTime(4) < 0
trigger9 = StateNo = 400 && AnimElemTime(3) < 0
trigger10 = StateNo = 410 && AnimElemTime(3) < 0
trigger11 = StateNo = 420 && AnimElemTime(3) < 0
trigger12 = StateNo = 430 && AnimElemTime(3) < 0
trigger13 = StateNo = 440 && AnimElemTime(4) < 0
trigger14 = StateNo = 450 && AnimElemTime(5) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger17 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger18 = (StateNo = [1000,1300]) && Var(50) && (((var(5)&16)>0) || Var(30))
trigger19 = (StateNo = [3000,3300]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Ground Tiger Cannon/Tiger Raid
[State -1, Ground Tiger Cannon/Tiger Raid]
type = ChangeState
value = ifElse(Var(46),3100,3300)
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(41) 
triggerall = (helper(10371), Var(0) = [1,2]) || (helper(10371), Var(1) = [1,2]) || (helper(10371), Var(2) = [1,2]) || (helper(10371), Var(3) = [1,2]) || (helper(10371), Var(4) = [1,2]) || (helper(10371), Var(5) = [1,2]) || (!Var(30) && ((helper(10371), Var(7) = [1,2]) || (helper(10371), Var(8) = [1,2]) || (helper(10371), Var(9) = [1,2]) || (helper(10371), Var(10) = [1,2]) || (helper(10371), Var(11) = [1,2]) || (helper(10371), Var(12) = [1,2])))
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30)
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !Var(46) || cond(NumHelper(2005) || NumHelper(2105), (StateNo = [3000,3999]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3), cond(NumHelper(2005), Helper(2005), StateNo = 2010, cond(NumHelper(2105), Helper(2105), StateNo = 2010, 1)))
triggerall = cond(Var(46), !(NumHelper(1005) || NumHelper(1105)) || (Var(50) && (var(5)&16)>0), 1)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 220 && AnimElemTime(4) < 0
trigger5 = StateNo = 225 && AnimElemTime(5) < 0
trigger6 = StateNo = 230 && AnimElemTime(5) < 0
trigger7 = StateNo = 240 && AnimElemTime(4) < 0
trigger8 = StateNo = 250 && AnimElemTime(4) < 0
trigger9 = StateNo = 400 && AnimElemTime(3) < 0
trigger10 = StateNo = 410 && AnimElemTime(3) < 0
trigger11 = StateNo = 420 && AnimElemTime(3) < 0
trigger12 = StateNo = 430 && AnimElemTime(3) < 0
trigger13 = StateNo = 440 && AnimElemTime(4) < 0
trigger14 = StateNo = 450 && AnimElemTime(5) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger17 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger18 = (StateNo = [1000,1300]) && Var(50) && (((var(5)&16)>0) || Var(30))
trigger19 = (StateNo = [3000,3300]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 900
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = (Power < 1000 && Var(10) = 4) || (Var(10) = 0 && Power < 3000)
triggerall = !Var(17) && !Var(29)
triggerall = numHelper(10371)
triggerall = helper(10371), var(38) = [1,2]
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time < 2
trigger3 = StateNo = 205 && Time < 2
trigger4 = StateNo = 210 && Time < 2
trigger5 = StateNo = 215 && Time < 2
trigger6 = StateNo = 220 && Time < 2
trigger7 = StateNo = 225 && Time < 2
trigger8 = StateNo = 230 && Time < 2
trigger9 = StateNo = 235 && Time < 2
trigger10 = StateNo = 240 && Time < 2
trigger11 = StateNo = 245 && Time < 2
trigger12 = StateNo = 250 && Time < 2
trigger13 = StateNo = 255 && Time < 2
trigger14 = StateNo = 400 && Time < 2
trigger15 = (StateNo = 410 || StateNo = 415) && Time < 2
trigger16 = StateNo = 420 && Time < 2
trigger17 = StateNo = 430 && Time < 2
trigger18 = StateNo = 440 && Time < 2
trigger19 = StateNo = 450 && Time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; MAX Activation
[State -1, MAX Activation]
type = ChangeState
value = 960
triggerall = !AILevel
triggerall = Var(10) = 5
triggerall = Power >= 1000
triggerall = numHelper(10371)
triggerall = helper(10371), var(38) = [1,2]
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time < 2
trigger3 = StateNo = 205 && Time < 2
trigger4 = StateNo = 210 && Time < 2
trigger5 = StateNo = 215 && Time < 2
trigger6 = StateNo = 220 && Time < 2
trigger7 = StateNo = 225 && Time < 2
trigger8 = StateNo = 230 && Time < 2
trigger9 = StateNo = 235 && Time < 2
trigger10 = StateNo = 240 && Time < 2
trigger11 = StateNo = 245 && Time < 2
trigger12 = StateNo = 250 && Time < 2
trigger13 = StateNo = 255 && Time < 2
trigger14 = StateNo = 400 && Time < 2
trigger15 = (StateNo = 410 || StateNo = 415) && Time < 2
trigger16 = StateNo = 420 && Time < 2
trigger17 = StateNo = 430 && Time < 2
trigger18 = StateNo = 440 && Time < 2
trigger19 = StateNo = 450 && Time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Custom Combo
[State -1, Standing Custom Combo]
type = ChangeState
value = 970
triggerall = !AILevel
triggerall = Var(10) = 2
triggerall = Power >= 3000
triggerall = numHelper(10371)
triggerall = helper(10371), var(38) = [1,2]
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time < 2
trigger3 = StateNo = 205 && Time < 2
trigger4 = StateNo = 210 && Time < 2
trigger5 = StateNo = 215 && Time < 2
trigger6 = StateNo = 220 && Time < 2
trigger7 = StateNo = 225 && Time < 2
trigger8 = StateNo = 230 && Time < 2
trigger9 = StateNo = 235 && Time < 2
trigger10 = StateNo = 240 && Time < 2
trigger11 = StateNo = 245 && Time < 2
trigger12 = StateNo = 250 && Time < 2
trigger13 = StateNo = 255 && Time < 2
trigger14 = StateNo = 400 && Time < 2
trigger15 = (StateNo = 410 || StateNo = 415) && Time < 2
trigger16 = StateNo = 420 && Time < 2
trigger17 = StateNo = 430 && Time < 2
trigger18 = StateNo = 440 && Time < 2
trigger19 = StateNo = 450 && Time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; Counter Attack
[State -1, Counter Attack]
type = ChangeState
value = 2800
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = StateNo = 150 || stateno = 151 || stateno = 152 || stateno = 153
triggerall = numHelper(10371)
triggerall = helper(10371), var(37) = [1,2]
triggerall = command != "holddown" && command = "holdfwd"
triggerall = (var(5)&32)>0
trigger1 = Power >= 1000 && (Var(10) = 0 || Var(10) = 1 || Var(10) = 5)
trigger2 = Power >= 1500 && Var(10) = 2
trigger3 = Power >= 3000 && (Var(10) = 3 || Var(10) = 4)
trigger4 = Var(19)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Aerial Custom Combo
[State -1, Aerial Custom Combo]
type = ChangeState
value = 975
triggerall = !AILevel
triggerall = Var(10) = 2
triggerall = Power >= 3000
triggerall = numHelper(10371)
triggerall = helper(10371), var(38) = [1,2]
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && Time < 2
trigger3 = StateNo = 610 && Time < 2
trigger4 = StateNo = 620 && Time < 2
trigger5 = StateNo = 630 && time < 2
trigger6 = StateNo = 640 && Time < 2
trigger7 = StateNo = 650 && time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = ifElse(((Var(5)&2)>0),100,102)
triggerall = !AILevel
triggerall = roundstate = 2
trigger1 = numHelper(10371)
trigger1 = helper(10371), Var(55) = [1,3]
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !AILevel
triggerall = roundstate = 2
trigger1 = numHelper(10371)
trigger1 = helper(10371), Var(56) = [1,3]
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Safe Fall
[State -1, Safe Fall]
type = ChangeState
value = 5201
triggerall = !AILevel
triggerall = !Var(15)
triggerall = (var(5)&128)>0
triggerall = Alive
triggerall = StateNo = 5050 || StateNo = 5071
triggerall = Pos Y + Vel Y >= 0
trigger1 = numHelper(10371)
trigger1 = helper(10371), var(36) = [1,2]
persistent = 0

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(6) = [1,2]
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 225 && AnimElemTime(4) < 0
trigger5 = StateNo = 230 && AnimElemTime(4) < 0
trigger6 = StateNo = 240 && AnimElemTime(4) < 0
trigger7 = StateNo = 250 && AnimElemTime(4) < 0
trigger8 = StateNo = 400 && AnimElemTime(3) < 0
trigger9 = StateNo = 410 && AnimElemTime(3) < 0
trigger10 = StateNo = 430 && AnimElemTime(3) < 0
trigger11 = StateNo = 440 && AnimElemTime(4) < 0
trigger12 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger13 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger14 = (StateNo = [3000,3300]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Counter Movement (forward)
[State -1, Counter Movement (forward)]
type = ChangeState
value = 320
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = (var(5)&64)>0
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || Var(19) || Var(17)
triggerall = numHelper(10371)
triggerall = helper(10371), var(36) = [1,2]
triggerall = command != "holddown" && command = "holdfwd"
trigger1 = StateNo = 150
trigger2 = StateNo = 151
trigger3 = StateNo = 152
trigger4 = StateNo = 153
ignorehitpause = 0

;---------------------------------------------------------------------------
; Counter Movement (back)
[State -1, Counter Movement (back)]
type = ChangeState
value = 330
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = (var(5)&64)>0
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || Var(19) || Var(17)
triggerall = numHelper(10371)
triggerall = helper(10371), var(36) = [1,2]
triggerall = command != "holddown" && command = "holdback"
trigger1 = StateNo = 150
trigger2 = StateNo = 151
trigger3 = StateNo = 152
trigger4 = StateNo = 153
ignorehitpause = 0

;---------------------------------------------------------------------------
; Roll/Dodge
[State -1, Roll/Dodge]
type = ChangeState
value = IfElse((Var(9)=1 && Var(10) > 0) || (Var(10) = 0 && command = "holdfwd"),300,310)
triggerall = !AILevel
triggerall = Var(9) != 3
triggerall = numHelper(10371)
triggerall = helper(10371), var(36) = [1,2]
triggerall = StateType != A
triggerall = StateNo < 195 || PrevStateNo != 310
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time <= 2
trigger3 = StateNo = 205 && Time <= 2
trigger4 = StateNo = 210 && Time <= 2
trigger5 = StateNo = 215 && Time <= 2
trigger6 = StateNo = 220 && Time <= 2
trigger7 = StateNo = 225 && Time <= 2
trigger8 = StateNo = 230 && Time <= 2
trigger9 = StateNo = 235 && Time <= 2
trigger10 = StateNo = 240 && Time <= 2
trigger11 = StateNo = 245 && Time <= 2
trigger12 = StateNo = 250 && Time <= 2
trigger13 = StateNo = 255 && Time <= 2
trigger14 = StateNo = 260 && Time <= 2
trigger15 = StateNo = 270 && Time <= 2
trigger16 = StateNo = 280 && Time <= 2
trigger17 = StateNo = 400 && Time <= 2
trigger18 = StateNo = 410 && Time <= 2
trigger19 = StateNo = 420 && Time <= 2
trigger20 = StateNo = 430 && Time <= 2
trigger21 = StateNo = 440 && Time <= 2
trigger22 = StateNo = 450 && Time <= 2
trigger23 = ((StateNo = [195,299]) || (StateNo = [400,450])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger24 = (StateNo = [1000,1999]) && Var(30) && Var(50)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Tiger Crush/Tiger Uppercut
[State -1, Tiger Crush/Tiger Uppercut]
type = ChangeState
value = ifElse(Var(46),1200,1300)
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), Var(22)
triggerall = (helper(10371), Var(0) = [1,2]) || (helper(10371), Var(1) = [1,2]) || (helper(10371), Var(2) = [1,2]) || (helper(10371), Var(3) = [1,2]) || (helper(10371), Var(4) = [1,2]) || (helper(10371), Var(5) = [1,2]) || (!Var(30) && ((helper(10371), Var(7) = [1,2]) || (helper(10371), Var(8) = [1,2]) || (helper(10371), Var(9) = [1,2]) || (helper(10371), Var(10) = [1,2]) || (helper(10371), Var(11) = [1,2]) || (helper(10371), Var(12) = [1,2])))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 225 && AnimElemTime(4) < 0
trigger5 = StateNo = 230 && AnimElemTime(4) < 0
trigger6 = StateNo = 240 && AnimElemTime(4) < 0
trigger7 = StateNo = 250 && AnimElemTime(4) < 0
trigger8 = StateNo = 400 && AnimElemTime(3) < 0
trigger9 = StateNo = 410 && AnimElemTime(3) < 0
trigger10 = StateNo = 430 && AnimElemTime(3) < 0
trigger11 = StateNo = 440 && AnimElemTime(4) < 0
trigger12 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger13 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger14 = (StateNo = [3000,3999]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Ground Tiger Shot/Tiger Shot
[State -1, Ground Tiger Shot/Tiger Shot]
type = ChangeState
value = ifElse(Var(46),1000,1100)
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), Var(21)
triggerall = (helper(10371), Var(0) = [1,2]) || (helper(10371), Var(1) = [1,2]) || (helper(10371), Var(2) = [1,2]) || (helper(10371), Var(3) = [1,2]) || (helper(10371), Var(4) = [1,2]) || (helper(10371), Var(5) = [1,2]) || (!Var(30) && ((helper(10371), Var(7) = [1,2]) || (helper(10371), Var(8) = [1,2]) || (helper(10371), Var(9) = [1,2]) || (helper(10371), Var(10) = [1,2]) || (helper(10371), Var(11) = [1,2]) || (helper(10371), Var(12) = [1,2])))
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = cond(NumHelper(1005), Helper(1005), StateNo = 1006, cond(NumHelper(1105), Helper(1105), StateNo = 1006, 1))
triggerall = cond(NumHelper(2005) || NumHelper(2105), (StateNo = [3000,3999]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3), cond(NumHelper(2005), Helper(2005), StateNo = 2010, cond(NumHelper(2105), Helper(2105), StateNo = 2010, 1)))
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
trigger4 = StateNo = 225 && AnimElemTime(4) < 0
trigger5 = StateNo = 230 && AnimElemTime(4) < 0
trigger6 = StateNo = 240 && AnimElemTime(4) < 0
trigger7 = StateNo = 250 && AnimElemTime(4) < 0
trigger8 = StateNo = 400 && AnimElemTime(3) < 0
trigger9 = StateNo = 410 && AnimElemTime(3) < 0
trigger10 = StateNo = 430 && AnimElemTime(3) < 0
trigger11 = StateNo = 440 && AnimElemTime(4) < 0
trigger12 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && Var(30)
trigger13 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger14 = (StateNo = [3000,3999]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Throw 1
[State -1, Throw 1]
type = ChangeState
value = 800
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), command = "holdback") || (helper(10371), command = "holdfwd")
triggerall = helper(10371), var(2) = [1,2]
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X = [-23,23]
triggerall = roundstate = 2
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H || Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Throw 2
[State -1, Throw 2]
type = ChangeState
value = 830
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = (helper(10371), command = "holdback") || (helper(10371), command = "holdfwd")
triggerall = helper(10371), var(5) = [1,2]
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X = [-23,23]
triggerall = roundstate = 2
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H || Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dodge Attack (P)
[State -1, Dodge Attack (P)]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = numHelper(10371)
triggerall = (helper(10371), var(0) = [1,2]) || (helper(10371), var(1) = [1,2]) || (helper(10371), var(2) = [1,2])
trigger1 = StateNo = 310 && Time = [14,24]

;---------------------------------------------------------------------------
; Dodge Attack (K)
[State -1, Dodge Attack (K)]
type = ChangeState
value = 250
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = numHelper(10371)
triggerall = (helper(10371), var(3) = [1,2]) || (helper(10371), var(4) = [1,2]) || (helper(10371), var(5) = [1,2])
trigger1 = StateNo = 310 && Time = [14,24]

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(5) = [1,2]
triggerall = helper(10371), command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Strong Punch (close)
[State -1, Stand Strong Punch (close)]
type = ChangeState
value = 225
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(2) = [1,2]
triggerall = helper(10371), command != "holddown"
triggerall = P2BodyDist X = [-27,27]
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(2) = [1,2]
triggerall = helper(10371), command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(4) = [1,2]
triggerall = helper(10371), command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(1) = [1,2]
triggerall = helper(10371), command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(3) = [1,2]
triggerall = helper(10371), command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(0) = [1,2]
triggerall = helper(10371), command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(5) = [1,2]
triggerall = helper(10371), command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(2) = [1,2]
triggerall = helper(10371), command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(4) = [1,2]
triggerall = helper(10371), command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(1) = [1,2]
triggerall = helper(10371), command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(3) = [1,2]
triggerall = helper(10371), command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(0) = [1,2]
triggerall = helper(10371), command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(5) = [1,2]
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(2) = [1,2]
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(4) = [1,2]
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(1) = [1,2]
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(3) = [1,2]
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(0) = [1,2]
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Basic movement
[State -1, Buffered Walk]
type = AssertSpecial
trigger1 = NumHelper(10371)
flag = NoWalk
[State -1, Buffered Walk]
type = ChangeState
triggerall = !AILevel
triggerall = NumHelper(10371)
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !isHelper
triggerall = (StateNo != [11,12]) && StateNo != 20 && StateNo != 40 && !(StateNo = 52 && Time < 5)
triggerall = Ctrl && (StateNo != [120,132]) && (StateNo != [150,155]) && (StateNo != [700,720])
trigger1 = (helper(10371), Var(16) = [1,9])
trigger1 = !(helper(10371), Var(18) > helper(10371), Var(16))
trigger2 = (helper(10371), Var(17) = [1,9])
trigger2 = !(helper(10371), Var(19) > helper(10371), Var(17))
trigger3 = (helper(10371), Var(16) = -1) || (helper(10371), Var(17) = -1)
value = 20
[State -1, M.I.X. THE CRACK]
type = ChangeState
triggerall = NumHelper(10371)
triggerall = !(helper(10371), Var(14) = [1,2]) ; Buffered jump
triggerall = !((helper(10371), Var(15) = [1,9]) || (helper(10371), Var(15) = -1)) ; Buffered crouch
triggerall = !AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !isHelper
triggerall = StateNo != 0 && (StateNo != [11,12]) && StateNo != 20 && StateNo != 52
trigger1 = Ctrl && (StateNo != [120,132]) && (StateNo != [150,155]) && (StateNo != [700,720])
value = ifElse(((helper(10371), Var(16)) || (helper(10371), Var(17))), 20, 0)
[State -1, M.I.X. THE CRACK]
type = ChangeState
triggerall = NumHelper(10371)
triggerall = helper(10371), Var(14) = [1,2] ; Buffered jump
triggerall = !AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !isHelper
triggerall = StateNo != 0 && (StateNo != [11,12]) && StateNo != 20 && StateNo != 40 ;&& StateNo != 52
trigger1 = Ctrl && (StateNo != [120,132]) && (StateNo != [150,155]) && (StateNo != [700,720])
value = 40

;==========================================================================;
;                               AI COMMANDS                                ;
;==========================================================================;
;---------------------------------------------------------------------------
; AI Movement
[State -1, AI Walk]
type = ChangeState
triggerall = AILevel
triggerall = StateType != A
triggerall = Ctrl
triggerall = !InGuardDist
triggerall = StateNo != [10,12]
triggerall = PrevStateNo != [10,12]
triggerall = StateNo != 20
triggerall = PrevStateNo != 20
triggerall = StateNo != 21
triggerall = PrevStateNo != 21
triggerall = StateNo != [120,159]
triggerall = PrevStateNo != [120,159]
trigger1 = Random%5 <= 2
value = 21

[State -1, Avoid Throws] ; Thanks, Warusaki!
type = ChangeState
value = 40
triggerall = AILevel
triggerall = RoundState = 2
triggerall = InGuardDist || P2bodydist X = [-60,120]
triggerall = ctrl || StateNo = 21 || StateNo = 21
triggerall = StateType != A
triggerall = StateNo != 40
trigger1 = EnemyNear, HitDefAttr = SC, NT,ST,HT
	trigger1 = Random <= 300+AILevel*50

[State -1, Guard] ; Thanks, Warusaki and Kamekaze!
type = ChangeState
value = 120
triggerall = AILevel
triggerall = roundstate = 2
triggerall = (StateNo != [120,155]) && (StateNo != [700,720])
triggerall = ctrl
triggerall = !Var(30)
triggerall = InGuardDist
triggerall = !(StateType = A && !((var(5)&256)>0))
;trigger1 = StateNo = 21 && Anim = 21
;trigger2 = EnemyNear, MoveType = A && EnemyNear, HitDefAttr != SCA,AA
;	trigger2 = Random < (110*AILevel)
trigger1 = EnemyNear, HitDefAttr = SCA, NP,SP,HP || Enemy, NumProj > 0
trigger2 = EnemyNear, HitDefAttr = SCA, NA,SA,HA 
	trigger2 = Random < (110*AILevel)
trigger3 = NumHelper(10003)
trigger3 = EnemyNear, MoveType = A && Helper(10003), Var(8)
	trigger3 = Random < (105*AILevel)

;---------------------------------------------------------------------------
; Tiger Cannon/Ground Tiger Cannon
[State -1, Tiger Cannon/Ground Tiger Cannon]
type = ChangeState
value = helper(10003), Var(20)+2000
triggerall = numHelper(10003)
triggerall = AILevel
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30)
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType != L
triggerall = cond(NumHelper(2005) || NumHelper(2105), (StateNo = [3000,3999]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3), cond(NumHelper(2005), Helper(2005), StateNo = 2010, cond(NumHelper(2105), Helper(2105), StateNo = 2010, 1)))
triggerall = !(NumHelper(1005) || NumHelper(1105)) || (Var(50) && (var(5)&16)>0)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
	trigger1 = Var(59) && Random = [800,820+AILevel*2]
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
	trigger2 = Var(50) = 1 && Random = [70,82-AILevel]
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
	trigger3 = Var(50) = 1 && Random = [20,32+AILevel*2]
trigger4 = StateNo = 220 && AnimElemTime(4) < 0
	trigger4 = Var(50) = 1 && Random = [400,450+AILevel*20]
trigger5 = StateNo = 225 && AnimElemTime(5) < 0
	trigger5 = Var(50) = 1 && Random = [300,316+AILevel]
trigger7 = StateNo = 240 && AnimElemTime(4) < 0
	trigger7 = (Var(50) = 1 || Var(59)) && Random = [500,660+AILevel*5]
trigger8 = StateNo = 250 && AnimElemTime(4) < 0
	trigger8 = Var(50) = 1 && Random = [212,214+(AILevel/2)]
trigger9 = StateNo = 400 && AnimElemTime(3) < 0
	trigger9 = Var(50) && Var(21) && Random = [30,36+AILevel]
trigger10 = StateNo = 410 && AnimElemTime(3) < 0
	trigger10 = Var(50) && Var(21) && Random = [30,36+AILevel]
trigger11 = StateNo = 420 && AnimElemTime(3) < 0
	trigger11 = Random = [128,168+AILevel*2]
trigger12 = StateNo = 430 && AnimElemTime(3) < 0
	trigger12 = Var(50) && Random = [60,ifElse(Var(51)>1, 120, 60)]
trigger13 = StateNo = 440 && AnimElemTime(4) < 0
	trigger13 = Var(50) && Random = [500,600+(AILevel*ifElse(Var(51) > 2, 50, 25))]
trigger14 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650]) || (StateNo = [1000,1999]))
	trigger14 = Var(30) = [1,24-AILevel]
trigger15 = (StateNo = [1000,1300]) && (Var(50) = 1 || Var(50) = 3) && (var(5)&16)>0
	trigger15 = Random = [600,650+AILevel+2]
trigger16 = (StateNo = [3000,3300]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
	trigger16 = cond(StateNo=3200 || StateNo=3300, Anim = 1205, Var(50) = 3) && Random = [742,830]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Tiger Genocide/Tiger Raid
[State -1, Tiger Genocide/Tiger Raid]
type = ChangeState
value = ifElse(P2BodyDist X < 52 || P2BodyDist Y <= -16,3200,3300)
triggerall = AILevel
triggerall = P2BodyDist X = [-4,60]
triggerall = P2BodyDist Y = [-27,0]
triggerall = P2StateType != L
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30)
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
	trigger1 = Var(59) && Random = [900,920+AILevel*2]
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
	trigger2 = Var(50) = 1 && Random = [90,102-AILevel]
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
	trigger3 = Var(50) = 1 && Random = [90,102+AILevel*2]
trigger4 = StateNo = 220 && AnimElemTime(4) < 0
	trigger4 = Var(50) = 1 && Random = [300,350+AILevel*20]
trigger5 = StateNo = 225 && AnimElemTime(5) < 0
	trigger5 = Var(50) = 1 && Random = [200,216+AILevel]
trigger7 = StateNo = 240 && AnimElemTime(4) < 0
	trigger7 = (Var(50) = 1 || Var(59)) && Random = [400,560+AILevel*5]
trigger8 = StateNo = 250 && AnimElemTime(4) < 0
	trigger8 = Var(50) = 1 && Random = [512,514+(AILevel/2)]
trigger9 = StateNo = 400 && AnimElemTime(3) < 0
	trigger9 = Var(50) && Var(21) && Random = [50,56+AILevel]
trigger10 = StateNo = 410 && AnimElemTime(3) < 0
	trigger10 = Var(50) && Var(21) && Random = [50,56+AILevel]
trigger11 = StateNo = 420 && AnimElemTime(3) < 0
	trigger11 = Random = [72,112+AILevel*2]
trigger12 = StateNo = 430 && AnimElemTime(3) < 0
	trigger12 = Var(50) && Random = [0,ifElse(Var(51)>1, 60, 0)]
trigger13 = StateNo = 440 && AnimElemTime(4) < 0
	trigger13 = Var(50) && Random = [0,100+(AILevel*ifElse(Var(51) > 2, 50, 25))]
trigger14 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650]) || (StateNo = [1000,1999]))
	trigger14 = Var(30) = [1,24-AILevel]
trigger15 = (StateNo = [1000,1300]) && (Var(50) = 1 || Var(50) = 3) && (var(5)&16)>0
	trigger15 = Random = [400,450+AILevel+2]
trigger16 = (StateNo = [3000,3300]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
	trigger16 = cond(StateNo=3200 || StateNo=3300, Anim = 1205, Var(50) = 3) && Random = [542,630]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge] ; Thanks Warusaki!
type = ChangeState
value = 900
triggerall = AILevel
triggerall = roundstate = 2
triggerall = (Power < 1000 && Var(10) = 4) || (Var(10) = 0 && Power < 3000)
triggerall = !Var(17) && !Var(29)
triggerall = statetype != A
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101

trigger1 = P2BodyDist X >= 150 && (Random = [600,650])

trigger2 = teammode = single && P2BodyDist X >= 180 && P2StateType = L
	trigger2 = Random = [200,480]
ignorehitpause = 0

;---------------------------------------------------------------------------
; AI MAX Activation
[State -1, AI MAX Activation] ; Thanks Warusaki!
type = ChangeState
value = 960
triggerall = AILevel
triggerall = Var(10) = 5
triggerall = Power >= 2000
triggerall = P2Life > 150
triggerall = !((100*life/const(data.life))<=20 && P2BodyDist X <= 160)
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = P2BodyDist X >= 70 && Random <= 400
trigger2 = P2StateType = L && Random <= 550
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Custom Combo
[State -1, Standing Custom Combo]
type = ChangeState
value = 970
triggerall = AILevel
triggerall = Var(10) = 2
triggerall = Power >= 3000
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = FrontEdgeBodyDist < 60 ; Sagat doesn't have any good CC's outside of the corner to my knowledge

trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = P2BodyDist X = [0,30]
trigger1 = P2StateType = S || P2StateType = C
;trigger1 = P2MoveType = A
	trigger1 = Random <= 200

trigger2 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = P2BodyDist X = [0,30]
trigger2 = P2BodyDist Y = [-50,-30]
trigger2 = P2StateType = A
trigger2 = P2MoveType = A
	trigger2 = Random <= 200

trigger3 = ctrl || StateNo = 21 || StateNo = 21 || (StateNo = 100 && animelemtime(2) > 1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger3 = P2BodyDist X = [0,35]
trigger3 = P2BodyDist Y = [-50,-25]
trigger3 = P2StateNo = [5000,5070]
trigger3 = P2StateNo != 5040
trigger3 = P2MoveType = H
trigger3 = !NumTarget
	trigger3 = Random < (AILevel+1)*90

trigger4 = ctrl
trigger4 = P2BodyDist X = [0,16]
trigger4 = P2BodyDist Y = [-56,-30] 
trigger4 = P2StateNo = [5000,5070]
trigger4 = P2StateNo != 5040
trigger4 = P2MoveType = H
trigger4 = Random < (AILevel+1)*111

ignorehitpause = 0

;---------------------------------------------------------------------------
; AI Counter Attack
[State -1, AI Counter Attack]
type = ChangeState
value = 2800
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153
triggerall = (var(5)&32)>0
trigger1 = !EnemyNear, ctrl && P2BodyDist X <= 20 && Random <= 18-AILevel
ignorehitpause = 0

;---------------------------------------------------------------------------
; Aerial Custom Combo
;
; DON'T
;

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = IfElse(((Var(5)&2)>0),100,102)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = P2MoveType != A
triggerall = ctrl || StateNo = 21 || (StateNo = 21 && Anim = 20)
triggerall = !(Var(30) && NumTarget)
trigger1 = P2BodyDist X = [120,200]
	trigger1 = Random = [300,305] ; He mostly just needs to throw Tiger Shots at you.
trigger2 = P2bodydist X > 200
	trigger2 = Random = [300,305]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = AILevel
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = ctrl || StateNo = 21 || (StateNo = 21 && Anim = 21)
triggerall = !(Var(30) && NumTarget)
triggerall = BackEdgeDist > 60
trigger1 = P2BodyDist X <= 60 && P2MoveType != A
	trigger1 = Random = [460,474+AILevel*2]
trigger2 = P2bodydist X <= 40 && P2StateType = L
	trigger2 = Random = [491,504+AILevel*2]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Safe Fall
[State -1, Safe Fall]
type = ChangeState
value = 5201
triggerall = AILevel
triggerall = !Var(15)
triggerall = (var(5)&128)>0
triggerall = Alive
triggerall = StateNo = 5050 || StateNo = 5071 || StateNo = 5100
triggerall = Pos Y + Vel Y >= 0
triggerall = roundstate = 2
trigger1 = Random < AILevel*125
persistent = 0

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
;
; DON'T BE A SMARTASS
;

;---------------------------------------------------------------------------
; Counter Movement
[State -1, Counter Movement]
type = ChangeState
value = ifElse((P2BodyDist X = [0,12]), 330, 320)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = (var(5)&64)>0
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || Var(19) || Var(17)
triggerall = P2MoveType = A
triggerall = P2BodyDist X = [0,24]
triggerall = Random <= 5
triggerall = GetHitVar(Guarded)
trigger1 = StateNo = 150
trigger2 = StateNo = 151
trigger3 = StateNo = 152
trigger4 = StateNo = 153
ignorehitpause = 0

;---------------------------------------------------------------------------
; Roll/Dodge
[State -1, Roll/Dodge]
type = ChangeState
value = IfElse((Var(9)=1 && Var(10) > 0) || (Var(10) = 0 && Random%6 < 2),300,310)
triggerall = AILevel
triggerall = Var(9) != 3
triggerall = StateType != A
trigger1 = !(Var(30) && numtarget)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = P2bodydist X >= 150
	trigger1 = Random <= AILevel+2
trigger2 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = P2BodyDist X <= 150
trigger2 = P2MoveType = I
	trigger2 = Random = [240,241+(AILevel/2)]
trigger3 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger3 = P2BodyDist X <= 150
trigger3 = P2MoveType = A
	trigger3 = Random = [430,432+AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Tiger Uppercut/Tiger Crush
[State -1, Tiger Uppercut/Tiger Crush]
type = ChangeState
value = Helper(10003), Var(21)
triggerall = AILevel
triggerall = NumHelper(10003)
triggerall = Helper(10003), Var(21)
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
	trigger1 = (Random = [978-((AILevel*40)*(P2StateType=A)),999]) || Var(30)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
	trigger2 = Random = [106,150+AILevel*4]
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
	trigger3 = Random = [175,200+AILevel*4]
trigger4 = StateNo = 225 && AnimElemTime(4) < 0
	trigger4 = Random = [225,286+AILevel*4]
trigger5 = StateNo = 400 && AnimElemTime(3) < 0
	trigger5 = Random = [310,320]
trigger6 = StateNo = 410 && AnimElemTime(3) < 0
	trigger6 = Random = [320,350+AILevel*2]
trigger7 = StateNo = 440 && AnimElemTime(4) < 0
	trigger7 = AILevel > 3 && Var(51) > 2 && (Random = [425,825+(AILevel*4)+((P2BodyDist X < 58)*250)])
trigger8 = (StateNo = [3000,3100]) && Var(22) = 1 && Var(50) = 3 && Power < 1000
	trigger8 = P2BodyDist X <= 48
ignorehitpause = 0

;---------------------------------------------------------------------------
; Ground Tiger Shot/Tiger Shot
[State -1, Ground Tiger Shot/Tiger Shot]
type = ChangeState
value = Helper(10003), Var(20)
triggerall = AILevel
triggerall = NumHelper(10003)
triggerall = Helper(10003), Var(20)
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = cond(NumHelper(1005), Helper(1005), StateNo = 1006, cond(NumHelper(1105), Helper(1105), StateNo = 1006, 1))
triggerall = cond(NumHelper(2005) || NumHelper(2105), (StateNo = [3000,3999]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3), cond(NumHelper(2005), Helper(2005), StateNo = 2010, cond(NumHelper(2105), Helper(2105), StateNo = 2010, 1)))
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
	trigger1 = Random = [890,945 + (AILevel*4) - 60*(P2BodyDist X < 80)]
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
	trigger2 = Random < 32-(AILevel*4)
trigger3 = StateNo = 210 && AnimElemTime(4) < 0
	trigger3 = Random = [32,48+AILevel*4]
trigger4 = StateNo = 225 && AnimElemTime(4) < 0
	trigger4 = Random = (80,88-AILevel)
trigger5 = StateNo = 400 && AnimElemTime(3) < 0
	trigger5 = Random = [88,94]
trigger6 = StateNo = 410 && AnimElemTime(3) < 0
	trigger6 = Random = [95,105]
trigger7 = StateNo = 440 && AnimElemTime(4) < 0
	trigger7 = AILevel > 3 && Var(51) > 2 && (Random = [0,400+(AILevel*4)-((P2BodyDist X < 80)*250)])
trigger8 = (StateNo = [3000,3100]) && Var(22) = 1 && Var(50) = 3 && Power < 1000
	trigger8 = P2BodyDist X > 50
ignorehitpause = 0

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = ifElse(GameTime%4=0,800,830)
triggerall = AILevel
triggerall = statetype = S
triggerall = ctrl
triggerall = StateNo != 100
triggerall = P2BodyDist X = [-23,23]
triggerall = roundstate = 2
triggerall = !Var(30)
trigger1 = P2StateType = S || P2StateType = C
	trigger1 = Random <= 100+AILevel*50 ; He will fucking throw you at any chance he'll get.
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S
triggerall = P2BodyDist X = [0,69-Const(Size.Ground.Front)]
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [280,340+AILevel*3]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = [-12,84-Const(Size.Ground.Front)]
triggerall = P2BodyDist Y = [-70,0]
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [400,414]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dodge Attack (P)
[State -1, Dodge Attack (P)]
type = ChangeState
value = 220
triggerall = NumHelper(10003)
triggerall = Helper(10003), Var(14)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = P2Dist X = [0,125]
triggerall = P2StateType = S 
triggerall = StateNo = 310 && Time = [14,24]
trigger1 = Random = [0,132+AILevel*2]

;---------------------------------------------------------------------------
; Stand Strong Punch (close)
[State -1, Stand Strong Punch (close)]
type = ChangeState
value = 225
triggerall = AILevel
triggerall = P2BodyDist X = [-27,27]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [420,476+AILevel*2]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = NumHelper(10003)
triggerall = Helper(10003), Var(14)
triggerall = AILevel
triggerall = P2BodyDist X != [-27,27]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = (P2BodyDist X = [30,120-Const(Size.Ground.Front)]) || P2MoveType = A
	trigger1 = Random = [500,522+AILevel*2]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Light Kick
[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = [0,69-Const(Size.Ground.Front)]
triggerall = P2BodyDist Y = [-10, 0]
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [522,532+AILevel+(6*P2MoveType=A)]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dodge Attack (K)
[State -1, Dodge Attack (K)]
type = ChangeState
value = 240
triggerall = AILevel
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = StateNo = 310 && Time = [14,24]
triggerall = P2Dist X = [0,69]
trigger1 = Random = [150,153]

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = NumHelper(10003)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = [0,135-Const(Size.Ground.Front)]
triggerall = P2BodyDist Y = [-26,0]
triggerall = P2StateType = S || P2StateType = C
triggerall = !Var(30)
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = Random = [547,574+AILevel*2]
trigger2 = Helper(10003), Var(10) > 1
	trigger2 = Random = [184,240+AILevel*3]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = NumHelper(10003)
triggerall = Helper(10003), Var(14) || (P2BodyDist Y = 0 && (P2StateType = S || P2StateType = A))
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = [-8,75-Const(Size.Ground.Front)]
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = [590,602+AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,66-Const(Size.Ground.Front)]
triggerall = !Var(30)
trigger1 = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
	trigger1 = Random = (610,615+AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,80-Const(Size.Ground.Front)]
triggerall = !Var(30)
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = Random = [624,634+AILevel]
trigger2 = (StateNo = 200 || StateNo = 400) && AnimTime = 0
	trigger2 = Random = [624,634+AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2BodyDist X = [0,105-Const(Size.Ground.Front)]
triggerall = P2BodyDist Y = [-24,0]
triggerall = !Var(30)
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = Random = [660,750+AILevel*4+(20*P2MoveType=A)] ; BASICALLY THIS IS ALL HE NEEDS
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = NumHelper(10003)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,72-Const(Size.Ground.Front)]
triggerall = P2BodyDist Y = 0
triggerall = !Var(30)
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = Random = (803,810+AILevel*5]
trigger2 = PrevStateNo = 430 && Time = 0 && Var(51) < 2 && AILevel > 3
trigger3 = Helper(10003), Var(10) > 0
	trigger3 = Random = [0,150+AILevel*4]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = NumHelper(10003)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,104]
triggerall = P2BodyDist Y = 0
triggerall = !Var(30)
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = Random = [851,870+AILevel*3]
trigger2 = PrevStateNo = 430 && Time = 0 && Var(51) > 1 && AILevel > 3
trigger3 = Helper(10003), Var(10) = 1
	trigger3 = Random = [0,32+AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = NumHelper(10003)
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = P2Dist X = [40,114]
triggerall = P2Dist Y = 0
triggerall = !Var(30)
triggerall = ctrl || StateNo = 21 || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger1 = Random = [900,912]
trigger2 = Helper(10003), Var(10) = 2
trigger2 = AILevel < 4
	trigger2 = Random = [0,900-(AILevel*112)] ; THE BASIC SCRUB COMBO
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = ctrl
triggerall = P2BodyDist Y = [-34,12]
trigger1 = P2BodyDist X = [0,94-Const(Size.Ground.Front)]
	trigger1 = Random < 100+AILevel*10
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = ctrl
triggerall = P2BodyDist X = [-Const(Size.Ground.Front)-4, 48]
triggerall = P2BodyDist Y = [-72,-30]
trigger1 = P2BodyDist X = [0,94-Const(Size.Ground.Front)]
	trigger1 = Random = [180,192+AILevel]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = ctrl
triggerall = P2BodyDist Y = [-62,-35]
trigger1 = P2BodyDist X = [0,94-Const(Size.Ground.Front)]
	trigger1 = Random = [200,220+AILevel*2]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = ctrl
triggerall = P2BodyDist Y = [-42,12]
trigger1 = P2Dist X = [-8,16]
	trigger1 = Random = [240,320]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = AILevel
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = ctrl
triggerall = Vel X < 0
triggerall = P2BodyDist Y = [0,45]
trigger1 = P2BodyDist X <= 12
	trigger1 = Random = [321,381]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = AILevel
triggerall = numHelper(10371)
triggerall = helper(10371), var(5) = [1,2]
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = Vel X > 0
triggerall = ctrl
triggerall = P2BodyDist Y = [0,-EnemyNear(0),Const(Size.Head.Pos.Y)+20]
triggerall = P2StateType = S
trigger1 = P2BodyDist X <= 45
	trigger1 = Random = [381,721]
ignorehitpause = 0