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
command = ~D, D, c

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
[State -1, Erst der Letzte: Göttin Waffe]
type = changestate
value = 3900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DDD_ab"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= enemy,lifemax*.25
triggerall = var(21) = 0
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = (stateno = [2000,2001]) && movecontact
trigger6 = (stateno = 830) && time > 50
trigger7 = (stateno = [810,819]) && movecontact
trigger7 = animelemtime(8)>=1
;---------------------------------------------------------------------------
[State -1, Flash Line]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = (stateno = [2000,2001]) && movecontact
trigger6 = (stateno = 830) && movecontact
trigger7 = (stateno = [810,819]) && movecontact
trigger7 = animelemtime(8)>=1
;---------------------------------------------------------------------------
[State -1, War Dance of Valkyria]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = (stateno = [2000,2001]) && movecontact
trigger6 = (stateno = 830) && time > 50
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
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 830) && movecontact
trigger6 = (stateno = 230) && movecontact
trigger7 = stateno = 57
trigger8 = stateno = 911 || stateno = 913
trigger9 = (stateno = 220) && movehit

;---------------------------------------------------------------------------
[State -1, Pursuit A]
type = ChangeState
value = 1412
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,202]) && movecontact
trigger3 = (stateno = [210,222]) && movecontact
trigger4 = stateno = 5120 && time >= 3
;---------------------------------------------------------------------------
[State -1, Pursuit Air A]
type = ChangeState
value = 1413
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
;---------------------------------------------------------------------------
[State -1, Pursuit B]
type = ChangeState
value = 1410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,202]) && movecontact
trigger3 = (stateno = [210,222]) && movecontact
trigger4 = stateno = 5120 && time >= 3
;---------------------------------------------------------------------------
[State -1, Pursuit Air B]
type = ChangeState
value = 1411
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
;---------------------------------------------------------------------------
[State -1, Ream Beam A]
type = changestate
value = 1300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = (stateno = [2000,2001]) && movecontact
;---------------------------------------------------------------------------
[State -1, Ream Beam B]
type = changestate
value = 1301
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = (stateno = [2000,2001]) && movecontact

;---------------------------------------------------------------------------
[State -1, EX Ream Beam]
type = changestate
value = 1302
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = (stateno = [2000,2001]) && movecontact
;-
[State -1, Air Raid A]
type = changestate
value = 1020
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
;-
[State -1, Air Raid B]
type = changestate
value = 1021
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
;-
[State -1, EX Air Raid]
type = changestate
value = 1022
triggerall = power >= 500
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
;---------------------------------------------------------------------------
[State -1, EX Remaining Shadow]
type = changestate
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = (stateno = [2000,2001]) && movecontact
;---------------------------------------------------------------------------
[State -1, EX Remaing Shadow (Air)]
type = ChangeState
value = 1201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = statetype = A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = stateno = 810 && movecontact
trigger4 = stateno = 819 && movecontact
trigger3 = (stateno = [810,851]) && movecontact
;---------------------------------------------------------------------------
[State -1, Remaining Shadow A]
type = changestate
value = 1100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = (stateno = [2000,2001]) && movecontact
;---------------------------------------------------------------------------
[State -1, Remaining Shadow A (Air) ]
type = changestate
value = 1107
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = [810,850]) && movecontact
;---------------------------------------------------------------------------
[State -1, Remaining Shadow B]
type = changestate
value = 1105
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = (stateno = [2000,2001]) && movecontact
;---------------------------------------------------------------------------
[State -1, Remaining Shadow B (Air) ]
type = changestate
value = 1103
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = [810,850]) && movecontact
;---------------------------------------------------------------------------
[State -1, Assault]
type = ChangeState
value = 1600
triggerall = !AIlevel
triggerall = !ishelper
triggerall = command = "DD_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,214]) && movecontact
trigger5 = (stateno = 819) && movecontact
trigger6 = stateno = 5120 && time >= 3
trigger7 = (stateno = 230) && movecontact
trigger8 = stateno = 57
trigger9 = stateno = 911 || stateno = 913
trigger10 = stateno = 5120 && time >= 3
trigger11 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Trump Card]
type = changestate
value = 1400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = power >= 500
triggerall = command = "DD_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
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
[State -1, Air Dash]
type = ChangeState
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
type = ChangeState
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
trigger4 = stateno = 911 || stateno = 913
trigger4 = time >= 5
trigger5 = stateno = 931 || stateno = 933
trigger5 = time >= 5

[State -1, Ultra Guard Cancel]
type = ChangeState
value = 8060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = stateno = [120,155]

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
trigger2 = stateno = 911 || stateno = 913
trigger2 = time >= 5

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
trigger2 = stateno = 931 || stateno = 933
trigger2 = time >= 5


;===========================================================================
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
;---------------------------------------------------------------------------
[State -1, 5AA]
type = changestate
value = 201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
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
trigger1 = stateno = 202
trigger1 = Movecontact

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
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [2000,2001]) && movecontact

;---------------------------------------------------------------------------
[State -1, 5BB]
type = changestate
value = 211
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 210
trigger1 = Movecontact

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
trigger2 = (stateno = [400,410]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = [2000,2001]) && movecontact
trigger6 = stateno = 100

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
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = stateno = 400
triggerall = var(18) > 0
trigger1 = movecontact
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
trigger2 = (stateno = [400,401]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = (stateno = [2000,2001]) && movecontact
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
trigger2 = (stateno = [400,410]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = (stateno = [2000,2001]) && movecontact
trigger6 = stateno = 100
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
value = 610
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,601]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, jC]
type = changestate
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
triggerall = prevstateno != 620
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = changestate
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = Stateno = 100
triggerall = stateno != 410
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (stateno = [400,420]) && movecontact

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 75
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "highjump"
triggerall = fvar(38) < 8
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
;---------------------------------------------------------------------------
[State -1, Air Jump]
type = changestate
value = 45
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) = 1 || var(14) = 1
triggerall = var(15) < 6
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = [600,610]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = changestate
value = 102
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(34)<1
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = changestate
value = 103
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(34)<1
triggerall = var(11) = 1
triggerall = command = "BB"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact

;---------------------------------------------------------------------------
[State -1, backdash alternate command]
type = changestate
value = 105
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 5120 && time >= 3
trigger3 = stateno = 911 || stateno = 913

;---------------------------------------------------------------------------
[State -1, Dodge]
type = changestate
value = 160
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 911 || stateno = 913

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = changestate
value = 161
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3
trigger4 = stateno = 1401
trigger5 = stateno = 911 || stateno = 913

;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = changestate
value = 162
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 931 || stateno = 933

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = changestate
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno>=200
triggerall = stateno != 3001
triggerall = stateno != [4000,4999]
triggerall = stateno != [3050,3053]
trigger1 = movecontact
triggerall = stateno != 204
trigger2 = stateno = 621
trigger2 = var(7) = 1
trigger3 = stateno = 830 && time > 50
trigger4 = stateno = 1300 && numhelper(1311)!=0
trigger4 = numhelper(1311) && helper(1311),stateno=1311
trigger5 = stateno = 1301 && numhelper(1310)!=0
trigger5 = numhelper(1310) && helper(1310),stateno=1311
trigger6 = stateno = 1302 && numhelper(1315)!=0
trigger6 = numhelper(1315) && helper(1315),stateno=1311
trigger7 = stateno = 203 && numhelper(2030)!=0
trigger7 = numhelper(2030) && helper(2030),movecontact 
trigger9 = stateno = 3000 && movecontact
trigger8 = stateno = 1410 && movecontact
trigger8 = numhelper(1415) && helper(1415),movecontact 
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = changestate
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = stateno !=[1020,1022]
triggerall = statetype = A
triggerall = stateno!=3001
triggerall = movetype = A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
trigger1 = movecontact
trigger2 = stateno = 1101 && movecontact
trigger3 = stateno = 1106 && movecontact
trigger4 = stateno = 1107 && movecontact
trigger5 = stateno = 3001 && time >= 185
;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = changestate
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = movetype=A
triggerall = stateno>=3000
triggerall = stateno!=3050
triggerall = stateno != [4000,4999]
triggerall = stateno != 204
triggerall = stateno!=3001
triggerall = stateno!=3051
triggerall = stateno = 3052 && animelemtime(29)>=1
triggerall = movecontact
triggerall = statetype != A
triggerall = command = "x" && power >= ifelse(var(28)=2,0,500)
trigger1 = !ctrl
;---------------------------------------------------------------------------
[State -1, Air Force Roman Cancel]
type = changestate
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= ifelse(var(28)=2,0,500)
triggerall = !ctrl
triggerall= stateno = [3000,3090]
triggerall = stateno = 3001 && time >= 185
trigger1 = !ctrl
trigger2 = numhelper(7777) > 0
trigger3 = anim = 3002
;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = changestate
value = 204
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
trigger1 = command = "x" || command = "b+c"
trigger1 = command = "holdfwd"
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153


[State -1, Guard Reject]
type = ChangeState
value = 270
triggerall = !ishelper
triggerall = !AIlevel
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = statetype != A
trigger1 = command = "a+b" 
trigger1 = power >= 1000
trigger1 = StateNo = [150,153]
;---------------------------------------------------------------------------
[State -1, Guard Reject]
type = ChangeState
value = 271
triggerall = !ishelper
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = !AIlevel
triggerall = statetype = A
trigger1 = command = "a+b" 
trigger1 = power >= 1000
trigger1 = StateNo = [154,155]

;---------------------------------------------------------------------------
[State -1, Burst]
type = changestate
value = 8000
triggerall = !ishelper
triggerall = !AIlevel
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


[State -1, Self Destruct]
type = changestate
value = 3800
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(55) = 0
triggerall = power = powermax
triggerall = roundno > 1
triggerall = command = "holdb" && command = "holdc"
triggerall = statetype = L
trigger1 = stateno = 5110 && time > 10

;===========================================================================
;===========================================================================
;AI-------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;Guarding
;===========================================================================
;---------------------------------------------------------------------------

[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = prevstateno != 161
triggerall = facing != enemynear,facing
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,50]
trigger2 = p2movetype = A
trigger2 = stateno = 100
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger4 = PlayerIdExist(helper(33333333),var(3))
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) > 3 
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) < 30

[State -1, Guard]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist
trigger1 = ctrl

[State -1, Disable Default Guarding]
type = assertspecial
triggerall = stateno != [120,160]
trigger1 = AIlevel && numenemy
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard
;===========================================================================
;Wake Up
;===========================================================================
[State -1, Wake up]
type = ChangeState
value = 1410
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 1
trigger1 = enemynear,movetype = A
trigger1 = p2statetype != A
trigger1 = p2bodydist X = [10,50]
trigger1 = p2bodydist Y = [-165,0]
;===========================================================================
;Movement
;===========================================================================

;---------------------------------------------------------------------------

[State -1, backdash]
type = ChangeState
value = 105
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = enemynear,Vel X >= 4

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = time > 9
trigger1 = p2movetype = A 
trigger1 = enemynear, vel X >= 0
trigger2 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger3 = PlayerIdExist(helper(33333333),var(3))
trigger3 = (PlayerId(helper(33333333),var(3)), p2bodydist x) >= 20 

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = changestate
value = 102
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) > 0
triggerall = ctrl
triggerall = pos Y <= -45
trigger1 = p2bodydist X >= 65

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = changestate
value = 103
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) > 0
trigger1 = (stateno = [600,611]) && moveguarded && prevstateno != 220

[State -1, Jump]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [40,53]
triggerall = stateno != [160,162]
trigger1 = PlayerIDExist(helper(33333333),var(3))
trigger1 = ceil(PlayerID(helper(33333333),var(3)), p2bodydist x / PlayerID(helper(33333333),var(3)), vel x ) = ceil( 95 / abs(const(velocity.jump.y)))
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
triggerall = roundstate = 2
triggerall = stateno = 40 || stateno = 45
trigger1 = p2movetype = H
sysvar(1) = 1

;---------------------------------------------------------------------------
[State 0, Taunt]
type = ChangeState
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 3
triggerall = var(21) = 0
triggerall = statetype != A
triggerall = prevstateno != [190,199]
trigger1 = ctrl
value = 195

[State -1, 5A]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = ifelse(random<=450,400,ifelse(p2bodydist x<10,800,200))
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [0,40]
triggerall = enemy,pos Y = [-30,0]
trigger1 = ctrl

[State -1, 5A]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = ifelse(p2bodydist x < 40 && enemy,pos y > -30,200,200)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [0,60]
triggerall = enemy,pos Y = [-40,0]
trigger1 = ctrl

[State -1, 5AA]
type = ChangeState
value = 8050
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = var(50) = 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = life < lifemax/3
trigger1 = ctrl 

[State -1, Burst]
type = changestate
value = 8000
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = Var(50) = 0
triggerall = StateType != L
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = life < Lifemax/3
triggerall = p2dist X = [-45,45]
triggerall = p2dist Y = [-60,15]
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

[State -1, 5A]
type = ChangeState
value = 200
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 400
trigger1 = movecontact
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 420
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = moveguarded
trigger1 = stateno = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 220
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = moveguarded
trigger1 = stateno = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, Grab]
type = ChangeState
value = 800
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = p2bodydist X = [0,15]
trigger1 = ctrl

[State -1, 5A]
type = ChangeState
value = 201
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = movecontact
trigger1 = stateno = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 202
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = movecontact
trigger1 = stateno = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 210
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = movecontact
trigger1 = stateno = 202 && movecontact
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, jAA]
type = ChangeState
value = 601
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(36) = 1
trigger1= stateno = 600 && movehit

[State -1, jA]
type = changestate
value = 600
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2bodydist X = [-5,80]
trigger1 = ctrl

[State -1, jAA]
type = changestate
value = 601
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = stateno = 600
trigger1 = movecontact

[State -1, jAA]
type = changestate
value = 620
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = stateno = 601
trigger1 = movecontact

[State -1, jAA]
type = changestate
value = 1021
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = stateno = 620
trigger1 = movecontact

;---------------------------------------------------------------------------

[State -1, jC]
type = ChangeState
value = 620
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(36) = 1
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,60]
triggerall = p2bodydist Y = [-50,40]
trigger1 = ctrl

;===========================================================================
;Air to Ground
;===========================================================================

[State -1, jB]
type = ChangeState
value = 610
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != A
triggerall = vel Y > 0
triggerall = p2bodydist X = [-50,50]
trigger1 = ctrl


[State -1, 5A]
type = ChangeState
value = 211
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = movecontact
trigger1 = stateno = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 40
trigger1 = movehit
triggerall = power < 1000
trigger1 = stateno = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = ifelse(enemy,life <enemy,lifemax*.25 && power = powermax && var(21)=0,3900,3000)
trigger1 = movehit
trigger1 = stateno = 211
triggerall = !ishelper
triggerall = power >= 1000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 420
trigger1 = moveguarded
trigger1 = stateno = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, .]
type = ChangeState
value = 3050
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = power >= 1000
triggerall = ailevel && numenemy
triggerall = enemy,movetype = A
triggerall = enemy,pos y = [-40,0]
triggerall = enemy,pos x = [0,100]
triggerall = statetype!=A
trigger1 = ctrl

[State -1, .]
type = ChangeState
value = 1100
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = movecontact
trigger1 = stateno = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, Wake up]
type = ChangeState
value = 1410
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 1
trigger1 = enemynear,movetype = A
trigger1 = p2statetype != A
trigger1 = p2bodydist X = [10,50]
trigger1 = p2bodydist Y = [-165,0]

[State -1, .]
type = changestate
value = 1301
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2bodydist X > 100
triggerall = enemynear, vel x > 0
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = var(47)=0
triggerall = prevstateno != 1003
triggerall = p2movetype != H
triggerall = numhelper(1050) <= 0
triggerall = enemynear, vel y >= 0
trigger1 = ctrl

[State -1, .]
type = ChangeState
value = 3900
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = ailevel && numenemy
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= lifemax*.25
triggerall = var(21) = 0
trigger1 = stateno = 210 && movehit
trigger2 = stateno = 420 && movehit
trigger4 = helper(1050),movehit && ctrl
trigger4 = numhelper(1050)

[State -1, Grab to 2A]
type = ChangeState
value = 400
triggerall = ailevel !=0
trigger1 = anim = 810
triggerall = animelemtime(14)=5

[State -1, Run]
type = changestate
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = 100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = p2bodydist x > 140
triggerall = statetype != A
trigger1 = ctrl
;===========================================================================