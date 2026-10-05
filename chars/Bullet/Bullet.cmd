;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "DDD_ab"
command = ~D, D, a+b

[Command]
name = "DDD_ab"
command = D, D, a+b

[Command]
name = "QCBU_ab"
command = ~D, DB, B, U, a+b

[Command]
name = "QCFU_ab"
command = ~D, DF, F, U, a+b

[Command]
name = "DDDU_ab"
command = ~D, D, U, a+b

[Command]
name = "DDDU_ab"
command = D, D, U, a+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, b+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, b+c

[Command]
name = "DDD_ab"
command = ~D, D, b+c

[Command]
name = "DDD_ab"
command = D, D, b+c

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+c

[Command]
name = "DDD_ab"
command = ~D, D, a+c

[Command]
name = "DDD_ab"
command = D, D, a+c

;-| Special Motions |------------------------------------------------------

[Command]
name = "DP_a"
command = ~F, D, DF, a

[Command]
name = "DP_b"
command = ~F, D, DF, b

[Command]
name = "DD_a"
command = ~D, D, a

[Command]
name = "DD_a"
command = D, D, a

[Command]
name = "DD_b"
command = ~D, D, b

[Command]
name = "DD_b"
command = D, D, b

[Command]
name = "DD_c"
command = D, D, c

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "DPU_a"
command = ~F, D, DF, U, a

[Command]
name = "DPU_b"
command = ~F, D, DF, U, b

[Command]
name = "DDU_a"
command = ~D, D, U, a

[Command]
name = "DDU_a"
command = D, D, U, a

[Command]
name = "DDU_b"
command = ~D, D, U, b

[Command]
name = "DDU_b"
command = D, D, U, b

[Command]
name = "QCBU_a"
command = ~D, DB, B, $U, a
time = 50
buffer.time = 30

[Command]
name = "QCBU_b"
command = ~D, DB, B, $U, b
time = 50
buffer.time = 30

[Command]
name = "QCBU_c"
command = ~D, DB, B, $U, c
time = 50
buffer.time = 30

[Command]
name = "QCFU_a"
command = ~D, DF, F, $U, a
time = 50
buffer.time = 30

[Command]
name = "QCFU_b"
command = ~D, DF, F, $U, b
time = 50
buffer.time = 30

[Command]
name = "QCFU_c"
command = ~D, DF, F, $U, c
time = 50
buffer.time = 30

[Command]
name = "QCF"
command = ~D, DF, F
time = 15

[Command]
name = "QCF"
command = ~D, F
time = 15

[Command]
name = "QCB"
command = ~D, DB, B
time = 15

[Command]
name = "QCB"
command = ~D, B
time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "FF"     ;Required (do not remove)
command = /$F,a+b
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = /$B,a+b
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "b+c"
command = b+c
time = 1

[Command]
name = "y+z"
command = y+z
time = 1

[Command]
name = "Buffer_a"
command = a
time = 5

[Command]
name = "Buffer_b"
command = b
time = 5

[Command]
name = "Buffer_c"
command = c
time = 5


;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "highjump"
command = >~D, U
time = 8

[Command]
name = "highjump"
command = >~D, UF
time = 8

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = null;null;changestate          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;===========================================================================
[State -1, Hard Kill Bringer]
type = changestate
value = 3900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DDD_ab"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= (enemynear,lifemax)*.25
triggerall = var(21) = 0
triggerall = fvar(35) <= 0
triggerall = Var(50) != 1
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 830) && movecontact
trigger7 = stateno = 810 && movecontact
trigger7 = animelemtime(9) >= 1
trigger8 = stateno = 819 && movecontact
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Serpentine Assault]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 830) && movecontact
trigger7 = stateno = 810 && movecontact
trigger7 = animelemtime(9) >= 1
trigger8 = stateno = 819 && movecontact
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Rage Aggressor]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 830) && movecontact
trigger7 = stateno = 810 && movecontact
trigger7 = animelemtime(9) >= 1
trigger8 = stateno = 819 && movecontact
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Exceed Accel]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y+z" || command = "holdy" && command = "holdz"
triggerall = fvar(19) > 0
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 830) && movecontact
trigger7 = stateno = 810 && movecontact
trigger7 = animelemtime(9) >= 1
trigger8 = stateno = 819 && movecontact
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Snap Hands Fist]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Air Snap Hands Fist]
type = ChangeState
value = 1101
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "DP_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 411) && movecontact
;---------------------------------------------------------------------------
[State -1, Flechette Engage]
type = ChangeState
value = 1105
triggerall = numhelper(1350)
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype = A
trigger1 = stateno = 1102
trigger1 = animelemtime(6) >= 2
;---------------------------------------------------------------------------
[State -1, Flint Shooter A]
type = changestate
value = 1000
triggerall = var(16) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Flint Shooter B]
type = changestate
value = 1001
triggerall = var(16) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Flint Shooter EX]
type = changestate
value = 1002
triggerall = var(16) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Cross Firewheel]
type = changestate
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Shot Shell Engage]
type = ChangeState
value = 1205
triggerall = numhelper(1350)
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = stateno = 1201
trigger1 = animelemtime(11) >= 2
;---------------------------------------------------------------------------
[State -1, Miquelet Capture]
type = changestate
value = 1210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Piercing Engage]
type = ChangeState
value = 1215
triggerall = numhelper(1350)
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = stateno = 1212
trigger1 = time >= 40
;---------------------------------------------------------------------------
[State -1, Cutting Sheer]
type = changestate
value = 1220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Explode Engage]
type = ChangeState
value = 1225
triggerall = numhelper(1350)
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = stateno = 1221
trigger1 = time >= 20
;---------------------------------------------------------------------------
[State -1, Explode Engage Follow Up]
type = ChangeState
value = 1227
triggerall = numhelper(1350)
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = stateno = 1226
trigger1 = animelemtime(7) >= 0
trigger1 = animelemtime(12) < 0

;---------------------------------------------------------------------------
[State -1, After Burner]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(1350) = 0
triggerall = command = "DD_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger3 = (stateno = [200,203]) && movecontact
trigger4 = (stateno = [210,220]) && movecontact
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = changestate
value = 100
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Back Dash]
type = changestate
value = 105
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = changestate
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = 400) && Movecontact
trigger5 = (Stateno = 410) && Movecontact

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 75
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "highjump"
triggerall = fvar(38) < 8
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = 400) && Movecontact

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = changestate
value = 45
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = var(15) < 6
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = changestate
value = 102
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = changestate
value = 103
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "BB"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = changestate
value = 8050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Grab]
type = changestate
value = 800
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = stateno != 100

[State -1, Running Grab]
type = changestate
value = 820
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, Air Grab]
type = changestate
value = 840
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
[State -1, 4A]
type = changestate
value = 300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 300) && Movecontact
trigger2 = var(30) > 0
;---------------------------------------------------------------------------
[State -1, 5A]
type = changestate
value = 200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [400,401]) && Movecontact
trigger3 = (Stateno = 300) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = changestate
value = 201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 200 
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = changestate
value = 202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = changestate
value = 203
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 202
trigger1 = Movehit
trigger1 = animelemtime(10) >= 0

;---------------------------------------------------------------------------
[State -1, 5B]
type = changestate
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5BB]
type = changestate
value = 211
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5BBB]
type = changestate
value = 212
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(1350)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 211
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, 5C]
type = changestate
value = 220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = stateno = 100

;---------------------------------------------------------------------------
[State -1, 66A]
type = changestate
value = 230
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
[State -1, 66B]
type = changestate
value = 240
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = changestate
value = 195
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "start"
triggerall = statetype != A
triggerall = ctrl
trigger1 = roundstate = 2
trigger2 = var(20) = 0
trigger2 = roundstate > 2

;---------------------------------------------------------------------------
[State -1, 2A]
type = changestate
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(30) > 0
trigger1 = ctrl
trigger2 = (Stateno = 200) && Movecontact
trigger2 = prevstateno != 400

;---------------------------------------------------------------------------
[State -1, 2B]
type = changestate
value = 410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
;---------------------------------------------------------------------------
[State -1, 2C]
type = changestate
value = 420
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = Stateno = 100
;---------------------------------------------------------------------------
[State -1, jA]
type = changestate
value = 600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, jAA]
type = changestate
value = 601
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = stateno = 600
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, jB]
type = changestate
value = 611
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 601
trigger3 = movecontact

[State -1, j2B]
type = changestate
value = 615
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 611
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, jC]
type = changestate
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, Barrier]
type = ChangeState
value = 120
triggerall = !AIlevel
triggerall = power >= 1
;triggerall = stateno != [120,155]
;triggerall = numhelper(6901) = 0
triggerall = command = "holdy"
trigger1 = ctrl || stateno = 5120 && time > 13
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = prevstateno != [120,159]
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall= stateno != [3000,3990]
triggerall = stateno != [4000,4999]
triggerall = stateno != 203
triggerall = stateno != 810
triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper > 0
trigger2 = helper,movecontact
trigger3 = numhelper(7777) > 0
;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = prevstateno != [120,159]
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = stateno = 203
triggerall = time > 0
triggerall = stateno != [4000,4999]
trigger1 = movehit
trigger1 = animelemtime(24) >= 0
trigger2 = moveguarded

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = prevstateno != [120,159]
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = stateno = 810
triggerall = stateno != [4000,4999]
triggerall = time > 0
trigger1 = animelemtime(9) >= 1
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = changestate
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall= stateno != [3000,3990]
triggerall = stateno != [4000,4999]
triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper > 0
trigger2 = helper,movecontact
trigger3 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = changestate
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall= stateno = [3000,3100]
triggerall = stateno != [4000,4999]
triggerall = !ctrl
trigger1 = movecontact
trigger2 = helper,movecontact
trigger3 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Air Force Roman Cancel]
type = changestate
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall= stateno = [3000,3100]
triggerall = stateno != [4000,4999]
trigger1 = movecontact
trigger2 = helper,movecontact
trigger3 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = changestate
value = 204
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
trigger1 = command = "x"
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153

;---------------------------------------------------------------------------
[State -1, Burst]
type = changestate
value = 8000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = stateno != [120,155]
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = enemy,stateno != [120,155]
triggerall = enemy,stateno != [800,899]
triggerall = enemy,stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]


;===========================================================================
;AI-------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;Guarding
;===========================================================================
;---------------------------------------------------------------------------
[State -3,Guard]
Type = ChangeState
Value = 120
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall= statetype!=A
triggerall = stateno != 102
TriggerAll=StateNo!=[120,155]
TriggerAll=Ctrl||(stateno=21)||(stateno=22)||(stateno=13)
Triggerall = InGuardDist
trigger1 = (enemynear,numproj) || (enemynear,numhelper) ||(enemynear,hitdefattr=SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT)
Trigger2 = stateno = 5120
trigger3 = enemy,pos X = [0,999]

[State -1, Guard]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = ctrl
triggerall = facing != enemynear,facing
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,333]
trigger2 = p2movetype = A
trigger2 = stateno = 100
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)

[State -3, guard] 
type = ChangeState
value = 131
triggerall = !IsHelper
triggerall = stateno != 102
triggerall = RoundState = 2
triggerall = Alive
triggerall = movetype !=H
triggerall = movetype !=A
triggerall = stateno != [900,999]
triggerall = ailevel && StateType != A
triggerall = P2StateType = C
triggerall = NumEnemy
triggerall = !EnemyNear, HitDefAttr = SCA,NT,ST,HT
triggerall = Ctrl && P2StateType != A
trigger1 = InGuardDist
trigger1 = Facing != EnemyNear, Facing
trigger2 = P2BodyDist x < 0 && P2MoveType = A
trigger2 = P2BodyDist x > 0 && P2MoveType = A
trigger3 = stateno = 5120 && time >= 15

[State -3, guard] 
type = ChangeState
value = 130
triggerall = !IsHelper
triggerall = movetype !=H
triggerall = movetype !=A
triggerall = stateno != 102
triggerall = stateno != [900,999]
triggerall = RoundState = 2
triggerall = Alive
triggerall = ailevel && StateType != A
triggerall = P2StateType != C
triggerall = NumEnemy
triggerall = !EnemyNear, HitDefAttr = SCA,NT,ST,HT
triggerall = Ctrl
trigger1 = InGuardDist
trigger1 = Facing != EnemyNear, Facing
trigger2 = Facing = EnemyNear, Facing
trigger2 = P2Dist X > 0
trigger2 = P2BodyDist X = [-30,140] 
trigger2 = P2MoveType = A
trigger3 = P2BodyDist X < 0 && P2MoveType = A
trigger4 = P2BodyDist X > 0 && P2MoveType = A
trigger5 = stateno = 5120 && time >= 15


[State -3, guard]
type = ChangeState
value = 132
triggerall = movetype !=H
triggerall = stateno != 102
triggerall = movetype !=A
triggerall = stateno != [900,999]
triggerall = RoundState = 2
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = Alive
triggerall = ailevel && StateType = A
trigger1 = InGuardDist
trigger2 = P2BodyDist X < 0 && P2MoveType = A
trigger3 = P2BodyDist X > 0 && P2MoveType = A
trigger4 = stateno = 5120 && time >= 15

[State -1, Disable Default Guarding]
type = assertspecial
triggerall = stateno != [120,160]
trigger1 = AIlevel && numenemy
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard

;===========================================================================
;Defense
;===========================================================================
;---------------------------------------------------------------------------

[State -1, AI Barrier On]
type = VarSet
triggerall = AILevel
triggerall = random < AILevel*12 || AILevel > 7 && random <= AILevel*100
triggerall = roundstate = 2
triggerall = power >= 1
triggerall = var(51) = 0
triggerall = movetype != H
;trigger1 = (backedgebodydist < 100)
trigger1 = inguarddist
trigger1 = enemynear,movetype = A
trigger1 = ((enemynear,HitDefAttr != SCA, NT, ST, HT)  || (enemynear,numhelper > 0) || (enemynear,numproj > 0) || (enemynear,animtime < -6)  || (enemynear,time = [0,5]))
var(51) = 1

;===========================================================================
;Movement
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Run]
type = changestate
value = 100
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = H
trigger1 = p2bodydist X > 110
;---------------------------------------------------------------------------
[State -1, backdash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = enemynear,Vel X >= 4
trigger2 = prevstateno = 1500
trigger3 = stateno = 5120 && time >= 11
trigger3 = random <= 299
trigger3 = p2dist X = [0,60]

[State -1, backdash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1= roundstate=2 && statetype!=A && (ctrl || (stateno=[21,22]) || (stateno=[130,131]))
trigger1= facing!=enemynear,facing || p2statetype=A
trigger1= p2bodydist x<90 && enemynear,hitdefattr=SC,AT && random<800
trigger1= backedgedist>=30
trigger1= enemynear,vel x<=0 || p2stateno<3000
;---------------------------------------------------------------------------
[State -1, Air Dash]
type = changestate
value = 102
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = ctrl
triggerall = pos Y <= -45
trigger1 = p2bodydist X >= 65
;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = changestate
value = 103
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = (stateno = [600,611]) && moveguarded
;---------------------------------------------------------------------------
[State -1, Jump]
type = changestate
value = 40
triggerall = random <= (ailevel)*100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [40,53]
triggerall = stateno != [160,162]
trigger1 = PlayerIDExist(helper(33333333),var(3))
trigger1 = ceil(PlayerID(helper(33333333),var(3)), p2bodydist x + 1 * (PlayerID(helper(33333333),var(3)), vel x) + 1 = ceil( 95 / abs(const(velocity.jump.y)))*.1)
trigger2 = enemynear,movetype = A
trigger2 = enemynear,statetype != A
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger3 = enemynear,movetype = A
trigger3 = p2bodydist X = [35,500]
trigger3 = enemynear, Vel X != 0
trigger4 = (Stateno = 300) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = enemynear,movetype = A
trigger5 = p2bodydist X = [0,35]
trigger5 = enemynear,statetype != A
;---------------------------------------------------------------------------
[State -1, Jump Forward]
type = varset
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = stateno = 40 || stateno = 45
trigger1 = p2movetype = H
sysvar(1) = 1

;===========================================================================
;Ground to Air
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Snap Hands Fist]
type = changestate
value = 1105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,90]
triggerall = p2bodydist Y <= -110
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2movetype = H
trigger1 = enemynear, Vel X >= 0


[State -1, Snap Hands Fist]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,90]
triggerall = p2bodydist Y <= -110
trigger1 = ctrl
trigger2 = stateno = 400 && movehit
trigger3 = stateno = [810,819]
trigger3 = movehit
;===========================================================================
;Air to Air
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Air Grab]
type = changestate
value = 840
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,15]
triggerall = p2bodydist Y = [-60,10]
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, jA]
type = changestate
value = 600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2bodydist X = [-40,30]
triggerall = p2bodydist Y = [-50,10]
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, jB]
type = changestate
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2bodydist X = [10,50]
triggerall = p2bodydist Y = [-5,5]
trigger1 = ctrl

;===========================================================================
;Air to Ground
;===========================================================================
[State -1, j2B]
type = changestate
value = 615
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != A
triggerall = vel Y > 0
triggerall = p2bodydist X = [-50,50]
triggerall = p2bodydist Y = [-30,95]
trigger1 = ctrl
trigger1 = stateno = 611

;===========================================================================
;Ground to Ground
;===========================================================================
[State -1, Grab]
type = changestate
value = 800
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = p2bodydist X = [0,15]
triggerall = enemynear,stateno != [5080,5120]
triggerall = enemynear,stateno != [6080,6120]
triggerall = enemynear,ctrl = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = ifelse(random<=450,400,ifelse(random<=450,300,200))
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [0,40]
triggerall = p2bodydist Y = [-35,0]
trigger1 = ctrl
trigger2 = stateno = 911 || stateno = 913
trigger2 = time >= 5

[State -1, 5A\\2A]
type = ChangeState
value = ifelse(p2bodydist x < 30 && enemy,pos y > -30,300,300)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [0,60]
triggerall = enemy,pos Y = [-40,0]
trigger1 = ctrl
trigger2 = stateno = 911 || stateno = 913
trigger2 = time >= 5


[State -1, 5A\\2A]
type = ChangeState
value = ifelse(p2statetype=L,410,200)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = p2bodydist X = [-35,60]
trigger1 = ctrl
trigger2 = stateno = 300 && movehit

;---------------------------------------------------------------------------
[State -1, 5B]
type = changestate
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != C
triggerall = p2statetype != L
triggerall = p2bodydist Y = [-60,0]
triggerall = p2bodydist X = [0,30]
triggerall = prevstateno != 200
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 2A]
type = changestate
value = 400
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [0,45]
triggerall = enemynear,stateno != 40
trigger1 = ctrl
trigger2 = stateno = 200 && moveguarded
trigger2 = random <= 399

;---------------------------------------------------------------------------

[State -1, 5C]
type = changestate
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [0,50]
triggerall = p2statetype = C
trigger1 = ctrl
trigger2 = stateno = [400,410]
trigger2 = moveguarded
trigger3 = stateno = 201 && moveguarded
trigger4 = stateno = 212 && moveguarded
;---------------------------------------------------------------------------

[State -1, 2C]
type = changestate
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [10,70]
triggerall = enemynear,ctrl = 0
triggerall = p2statetype = S
triggerall = enemynear,stateno != 40
trigger1 = ctrl
trigger2 = stateno = [400,410]
trigger2 = moveguarded
trigger3 = stateno = 201 && moveguarded
trigger4 = stateno = 211 && moveguarded

;---------------------------------------------------------------------------

[State -1, Flint Shooter]
type = ChangeState
value = ifelse(random <= 500, 1000, 1001)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = var(16) = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A || p2statetype = S
triggerall =  p2movetype != H
triggerall = ctrl
trigger1 = p2bodydist X = [0,150]
trigger1 = p2bodydist Y >= 0

;---------------------------------------------------------------------------

[State -1, Miquelet Capture]
type = ChangeState
value = 1210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A || p2statetype = S
triggerall =  p2movetype != H
triggerall = ctrl
trigger1 = p2bodydist X = [0,125]
trigger1 = p2bodydist Y >= 0

[State -1, Miquelet Capture]
type = ChangeState
value = 1210
trigger1 = moveguarded
trigger1 = stateno = 201
trigger2 = p2stateno = 5812
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
;---------------------------------------------------------------------------
[State -1, Rage Aggressor]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = statetype != A
triggerall = enemynear,ctrl = 0
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = p2dist x >= 135
triggerall = p2dist y >= -30
triggerall = enemynear,vel Y >= 0
triggerall = enemynear,stateno != [5080,5120]
triggerall = enemynear,stateno != [6080,6120]
triggerall = enemynear,stateno != [160,162]
triggerall = enemynear,stateno != 100
triggerall = enemynear,stateno != 40
triggerall = enemynear,stateno != [52,58]
trigger1 = ctrl

;---------------------------------------------------------------------------
;===========================================================================
;Combo
;===========================================================================
[State -1, Hard Kill Bringer]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = enemy,life <enemy,lifemax*.25 
triggerall = power = powermax
triggerall = var(21) = 0
triggerall = Var(50) != 1
triggerall = enemy,pos y = [-20,0]
triggerall = enemy,ctrl = 0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = movehit
trigger1 = stateno = [410,420]
trigger2 = movehit
trigger2 = stateno = 211
trigger3 = movehit
trigger3 =  stateno = 220

;---------------------------------------------------------------------------

[State -1, Rage Aggressor/Serpentine Assault]
type = ChangeState
triggerall = random <= (ailevel)*(ailevel)*ifelse(ailevel>=6,120,30)
value = ifelse(random <= 500, 3000, 3050)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 1000
triggerall = random <= 500
trigger1 = (stateno = [410,420]) && movehit

;---------------------------------------------------------------------------

[State -1, Exceed Accel]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = fvar(19) > 0
triggerall = life < lifemax/3
triggerall = statetype != A
trigger1 = stateno = 212
trigger1 = movehit
trigger2 = stateno = 220 && movehit
trigger3 = stateno = 420 && movehit

;---------------------------------------------------------------------------

[State -1, Flint Shooter]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = statetype != A
triggerall = p2bodydist X >= 145
triggerall = enemynear, vel x > 0
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = numhelper(1050) <= 0
triggerall = enemynear, vel y >= 0
triggerall = p2dist y >= -60
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Cross Firewheel]
type = ChangeState
value = ifelse( power >= 1000,1220,1200)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = random <= 900
trigger1= stateno = 211
trigger1= movecontact
trigger1 = animelemtime(12) < 0

[State -1, Cross Firewheel]
type = ChangeState
value = ifelse( power >= 1000,1220,1200)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = p2bodydist X = [0,30]
trigger1 = ctrl

[State -1, Shot Shell Engage Follow Up]
type = ChangeState
value = 1205
triggerall = numhelper(1350)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = statetype = A
trigger1 = stateno = 1201
trigger1 = animelemtime(15) < 0
;---------------------------------------------------------------------------

[State -1, Cross Firewheel]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1= stateno = 220
trigger1= movecontact

[State -1, Piercing Engage]
type = ChangeState
value = 1215
triggerall = numhelper(1350)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = statetype != A
trigger1 = stateno = 1212
trigger1 = time >= 40

[State -1, Explode Engage Follow Up]
type = ChangeState
value = 1227
triggerall = numhelper(1350)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = statetype != A
trigger1 = stateno = 1226
trigger1 = animelemtime(7) >= 0
trigger1 = animelemtime(12) < 0

[State -1, Explode Engage Follow Up]
type = ChangeState
value = 1105
triggerall = numhelper(1350)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = statetype = A
trigger1 = stateno = 1102
trigger1 = animelemtime(6) >= 2

;---------------------------------------------------------------------------

[State -1, After Burner]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = numhelper(1350) = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno != 1300
triggerall = enemynear, movetype != A
trigger1= stateno = 1000
trigger1= animtime = 0
trigger1 = p2bodydist x >= 160
trigger1 = enemynear, movetype != A
; condition
trigger2 = p2bodydist x >= 160
trigger2 = enemynear, movetype != A
trigger2 = random < (500 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = enemynear, stateno = 5110
trigger3 = enemynear, time < enemynear, const(data.liedown.time) - 20
trigger3 = random < (800 * (ailevel ** 2.0 / 64.0))
; condition
trigger4 = p2statetype = L
trigger4 = p2bodydist x >= 160
trigger4 = random < (500 * (ailevel ** 2.0 / 64.0))

;---------------------------------------------------------------------------

[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [-5,50]
triggerall = p2bodydist Y = [-50,20]
trigger1 = ctrl

[State -1, jB]
type = ChangeState
value = 601
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype = A
trigger1= stateno = 600
trigger1= movehit

;---------------------------------------------------------------------------

[State -1, jBB]
type = ChangeState
value = 611	
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype = A
trigger1= stateno = 601
trigger1= movehit

[State -1, j2B]
type = changestate
value = 615
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = vel Y > 0
triggerall = p2bodydist X = [-50,50]
triggerall = p2bodydist Y = [-30,95]
trigger1 = ctrl
trigger1= stateno = 611

;---------------------------------------------------------------------------

[State -1, Air Grab]
type = ChangeState
value = 841
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = random <= 500
triggerall = roundstate = 2
triggerall = statetype = A
trigger1= stateno = 620
trigger1= movehit

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 300
trigger1 = Movecontact
trigger2 = stateno = 400
trigger2 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = statetype != A
trigger1 = stateno = 201
trigger1 = Movehit
trigger2 = stateno = 420
trigger2 = Movehit

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = statetype != A
trigger1 = stateno = 210
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, 5BBB]
type = ChangeState
value = ifelse(random<=450,212,410)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = statetype != A
trigger1 = stateno = 211
trigger1 = Movehit

[State -1, Jump Cancel]
type = changestate
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = random <= 449
trigger1 = (Stateno = [200,210]) && movehit
trigger2 = stateno = 410 && movehit
trigger2 = stateno = 615 && movehit
;---------------------------------------------------------------------------

[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 202
trigger1 = moveguarded
trigger1 = random <= 399
trigger2 = stateno = 410
trigger2 = moveguarded
trigger2 = random <= 599

;---------------------------------------------------------------------------

[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 1201
trigger1 = animtime = 0

;---------------------------------------------------------------------------

[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 400 && movehit
trigger2 = stateno = 202
trigger2 = moveguarded

;===========================================================================
;Misc
;===========================================================================
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 3
triggerall = statetype != A
triggerall = prevstateno != 195
trigger1 = ctrl
trigger1 = p2stateno != [5150,5151]

;---------------------------------------------------------------------------

[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = var(50) = 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = life < lifemax/3
triggerall = random <= 300
trigger1 = ctrl 

;---------------------------------------------------------------------------

[State -1, Burst]
type = ChangeState
value = 8000
triggerall = random <= (ailevel)*100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = stateno != [120,155]
triggerall = Var(50) != 1
triggerall = StateType != L
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = life < Lifemax/3
triggerall = p2dist X = [0,30]
triggerall = p2dist Y = [-60,15]
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = stateno != [120,155]
triggerall = stateno != [800,899]
triggerall = stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = statetype != A
triggerall = random <= 199
triggerall = power >= 1000
triggerall = p2dist X = [40,0]
triggerall = p2dist Y >= -60
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153