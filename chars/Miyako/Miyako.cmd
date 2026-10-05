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
name = "DP_c"
command = ~F, D, DF, c

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
name = "a+c"
command = a+c
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
;   type = null;ChangeState          ;Don't change this
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
[State -1, Final Thunder - Smashing Fist]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DDD_ab"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= enemy,lifemax*.25
triggerall = var(21) = 0
triggerall = Var(50) != 1
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,214]) && movecontact
trigger5 = (stateno = 830) && movecontact
trigger6 = (stateno = 230) && movecontact
trigger7 = stateno = 57
trigger8 = stateno = 911 || stateno = 913
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Final Thunder - Rising Fist]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,214]) && movecontact
trigger5 = (stateno = 830) && movecontact
trigger6 = (stateno = 230) && movecontact
trigger7 = stateno = 57
trigger8 = stateno = 911 || stateno = 913
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Ultimate Finisher]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,214]) && movecontact
trigger5 = (stateno = 830) && movecontact
trigger6 = (stateno = 230) && movecontact
trigger7 = stateno = 57
trigger8 = stateno = 911 || stateno = 913
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
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 830) && movecontact
trigger6 = (stateno = 230) && movecontact
trigger7 = stateno = 57
trigger8 = stateno = 911 || stateno = 913
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Combo Attack A]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = stateno = 5120 && time >= 3
;---------------------------------------------------------------------------
[State -1, Combo Attack B]
type = ChangeState
value = 1403
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = stateno = 5120 && time >= 3
;---------------------------------------------------------------------------
[State -1, EX Combo Attack]
type = ChangeState
value = 1402
triggerall = power >= 500
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,222]) && movecontact
trigger5 = stateno = 5120 && time >= 3
;---------------------------------------------------------------------------
[State -1, Elbow Strike A]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,214]) && movecontact
trigger5 = (stateno = 819) && movecontact
trigger6 = (stateno = 230) && movecontact
trigger7 = stateno = 57
trigger8 = stateno = 911 || stateno = 913
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Elbow Strike B]
type = ChangeState
value = 1001
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,214]) && movecontact
trigger5 = (stateno = 819) && movecontact
trigger6 = (stateno = 230) && movecontact
trigger7 = stateno = 57
trigger8 = stateno = 911 || stateno = 913
;---------------------------------------------------------------------------
[State -1, EX Elbow Strike]
type = ChangeState
value = 1002
triggerall = var(42) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,214]) && movecontact
trigger5 = (stateno = 819) && movecontact
trigger6 = (stateno = 230) && movecontact
trigger7 = stateno = 57
trigger8 = stateno = 911 || stateno = 913
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Battle Step A]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,214]) && movecontact
trigger5 = (stateno = 819) && movecontact
trigger6 = (stateno = 230) && movecontact
trigger7 = stateno = 57
trigger8 = stateno = 911 || stateno = 913
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Battle Step B]
type = ChangeState
value = 1205
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,214]) && movecontact
trigger5 = (stateno = 819) && movecontact
trigger6 = (stateno = 230) && movecontact
trigger7 = stateno = 57
trigger8 = stateno = 911 || stateno = 913
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Finale A]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = stateno = 620
trigger3 = animelemtime(11) >= 0
trigger3 = numhelper(7771)
;---------------------------------------------------------------------------
[State -1, Finale B]
type = ChangeState
value = 1301
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = stateno = 620
trigger3 = animelemtime(11) >= 0
trigger3 = numhelper(7771)
;---------------------------------------------------------------------------
[State -1, EX Battle Step]
type = ChangeState
value = 1210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,421]) && movecontact
trigger2 = prevstateno != [150,153]
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,214]) && movecontact
trigger5 = (stateno = 819) && movecontact
trigger6 = (stateno = 230) && movecontact
trigger7 = stateno = 57
trigger8 = stateno = 911 || stateno = 913
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, EX Finale]
type = ChangeState
value = 1302
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = statetype = A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = stateno = 620
trigger3 = animelemtime(11) >= 0
trigger3 = numhelper(7771)
;---------------------------------------------------------------------------
[State -1, Experience A]
type = ChangeState
value = 1020
triggerall = var(42) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = pos y <-30
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 211) && movecontact
trigger4 = stateno = 931 || stateno = 933
;---------------------------------------------------------------------------
[State -1, Experience B]
type = ChangeState
value = 1021
triggerall = var(42) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = pos y <-30
triggerall = command = "QCF_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 211) && movecontact
trigger4 = stateno = 931 || stateno = 933
;---------------------------------------------------------------------------
[State -1, EX Experience]
type = ChangeState
value = 1022
triggerall = var(42) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = pos y <-30
triggerall = command = "QCF_c"
triggerall = power >= 500
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 211) && movecontact
trigger4 = stateno = 931 || stateno = 933
;---------------------------------------------------------------------------
[State -1, New Arrival A]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DD_a"
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
[State -1, New Arrival B]
type = ChangeState
value = 1101
triggerall = !ishelper
triggerall = !AIlevel
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
[State -1, EX New Arrival]
type = ChangeState
value = 1102
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DD_c"
triggerall = statetype != A
triggerall = power >= 500
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
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Back Dash]
type = ChangeState
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
type = ChangeState
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


;---------------------------------------------------------------------------
[State -1, Grab]
type = ChangeState
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
type = ChangeState
value = 820
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620])
trigger2 = movecontact


;===========================================================================
;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [400,401]) && Movecontact
trigger2 = var(54) = 0
trigger3 = (Stateno = [300,302]) && Movecontact
trigger3 = var(54) = 0
trigger4 = (Stateno = [400,421]) && Movecontact
trigger4 = var(54) = 0
trigger4 = prevstateno!= 420
trigger4 = PrevStateno != 200
trigger5 = stateno = 911 || stateno = 913
trigger5 = var(54) = 0
trigger5 = time >= 5
trigger6 = stateno = 210 && movecontact
trigger6 = var(46) = 0
trigger6 = var(54) = 0
;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 202
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger2 = var(55) = 0
trigger3 = (Stateno = [300,302]) && Movecontact
trigger3 = var(55) = 0
trigger4 = (Stateno = [400,401]) && Movecontact
trigger4 = var(55) = 0
trigger5 = (Stateno = 410) && Movecontact
trigger5 = PrevStateno != 210
trigger5 = var(55) = 0
trigger6 = stateno = 911 || stateno = 913
trigger6 = time >= 5
trigger6 = var(55) = 0
trigger7 = stateno = 420 && movecontact
trigger7 = var(55) = 0
;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 210
trigger1 = Movecontact
trigger2 = stateno = 214
trigger2 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5BBB]
type = ChangeState
value = 212
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
trigger1 = stateno = 211
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = stateno = 100
trigger6 = stateno = 911 || stateno = 913
trigger6 = time >= 5

;---------------------------------------------------------------------------
[State -1, 66A]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
[State -1, 66B]
type = ChangeState
value = 212
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
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
triggerall = statetype != A
triggerall = var(30) > 0
trigger1 = ctrl
trigger2 = (Stateno = 200) && Movecontact
trigger2 = prevstateno != 400
trigger3 = (Stateno = 401) && Movecontact
trigger4 = stateno = 911 || stateno = 913
trigger4 = time >= 5
trigger5 = stateno = 210 && movecontact
trigger5 = var(47) = 0
trigger6 = stateno = 410 && movecontact
trigger6 = var(47) = 0
trigger7 = stateno = 420 && movecontact
trigger7 = var(48) = 0
trigger7 = var(49) = 0
;--------------------------------------------------------------------------
[State -1, 2AA]
type = ChangeState
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
trigger3 = (Stateno = 400) && Movecontact
;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(31) != 0
trigger1 = ctrl
trigger2 = (stateno = [400,401]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = stateno = 911 || stateno = 913
trigger5 = time >= 5
trigger6 = stateno = 420 && movecontact
trigger6 = var(53) = 0
;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = var(45) = 0
triggerall = var(49) = 0
triggerall = var(53) = 0
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger2 = prevstateno!= 420
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = Stateno = 100
trigger6 = stateno = 911 || stateno = 913
trigger6 = time >= 5
trigger7 = prevstateno!= 420 && ctrl
;--
;---------------------------------------------------------------------------
[State -1, 2CC]
type = ChangeState
value = 421
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = stateno = 420 && movecontact
;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = var(35) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [610,621]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, jAA]
type = ChangeState
value = 601
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = stateno = 600
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, jAAA]
type = ChangeState
value = 602
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = stateno = 601
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, jAAAA]
type = ChangeState
value = 841
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = stateno = 602
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = var(36) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,621]
trigger2 = movecontact
trigger2 = stateno != [610,611]

;---------------------------------------------------------------------------
[State -1, jBB]
type = ChangeState
value = 611
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = stateno = 610
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, jBBB]
type = ChangeState
value = 841
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = stateno = 611
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
triggerall = var(37) = 1
trigger1 = ctrl
trigger2 = stateno = [600,610]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, jCC]
type = ChangeState
value = 841
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = stateno = [620,621]
trigger1 = movecontact
trigger2 = stateno = 611
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (stateno = [210,212]) && movecontact

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
triggerall = var(15) < 6
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = stateno = 1402 && animelemtime(8)>=1
trigger3 = movecontact
trigger4 = (stateno = [1300,1305])
trigger4 = statetype!=A
trigger4 = var(26) != 0
;--------------------------------------------------------------------------
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
[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3
;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 931 || stateno = 933

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [4000,4999]
triggerall = stateno != [1600,1605]
triggerall = stateno != [3000,3999]
triggerall = stateno != [4000,4999] 
triggerall = time > 0
trigger1 = movecontact
trigger2 = stateno = 621
trigger2 = var(7) = 1
trigger3 = numhelper > 0
trigger3 = helper,movecontact
trigger4 = numhelper(7777) > 0
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = stateno != [1600,1605]
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [3000,3999]
triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper > 0
trigger2 = helper,movecontact
trigger3 = numhelper(7777) > 0
trigger3 = stateno != 850
trigger4 = stateno = 850 && animelemtime(7)>=1
;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = numhelper(7777) > 0
triggerall = stateno != [4000,4999] 
triggerall = numhelper(7777)
triggerall = command = "x" && power >= ifelse(var(28)=2,0,500)
trigger1 = stateno = 3000|| stateno = 3050
trigger1 = !ctrl
trigger2 = stateno = 3000
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = stateno != [4000,4999] 
triggerall = statetype != A
triggerall = command = "x" && power >= ifelse(var(28)=2,0,500)
triggerall = movecontact
trigger1 = stateno = 3000
trigger1 = movecontact
trigger2 = stateno = 3052
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, Air Force Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= ifelse(var(28)=2,0,500)
triggerall = !ctrl
triggerall = movecontact
triggerall = stateno != 3001
triggerall= stateno = [3000,3080]
trigger1 = !ctrl
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 204
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
trigger1 = command = "x" || command = "b+c"
trigger1 = command = "holdfwd"
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153

;---------------------------------------------------------------------------
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
triggerall = !AIlevel
triggerall = statetype = A
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
trigger1 = command = "a+b" 
trigger1 = power >= 1000
trigger1 = StateNo = [154,155]

;---------------------------------------------------------------------------
[State -1, Burst]
type = ChangeState
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
;Defense
;===========================================================================
;---------------------------------------------------------------------------


[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && Random > 500
triggerall = statetype != A
triggerall = ctrl
triggerall = prevstateno != 161
triggerall = facing != enemynear,facing
triggerall = random<200*(AIlevel**2/64.0)
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,83]
trigger2 = p2movetype = A
trigger2 = stateno = 100
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger4 = PlayerIdExist(helper(33333333),var(3))
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) + 1 * ((PlayerId(helper(33333333),var(3)), vel x) + 1)*.1 > 3 
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) + 1 * ((PlayerId(helper(33333333),var(3)), vel x) + 1)*.1 < 7

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

[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = statetype = A && moveType = H && alive
trigger1 = hitfall && canrecover
trigger1 = (gethitvar(fall.recovertime)-gethitvar(hitshaketime)) && hitover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (125 * (AILevel ** 2 / 64.0))

[State -1, Guard Reject]
type=ChangeState
value=204
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && !var(20)
trigger1= (p2bodydist x=[30,60]) && (stateno=150 || stateno=152) && random<150*(AILevel**2/64.0)

;===========================================================================
;Wake Up
;===========================================================================
[State -1, .]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 15
trigger1 = p2movetype = A
trigger1 = p2statetype != A
trigger1 = p2bodydist X = [0,75]
trigger1 = enemynear, Vel X >= 0

;===========================================================================
;Movement
;===========================================================================
;---------------------------------------------------------------------------

[State -1, Run]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = H
trigger1 = p2bodydist X > 70

;---------------------------------------------------------------------------

[State -1, backdash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = enemynear,Vel X >= 4
trigger2 = prevstateno = 1205

;---------------------------------------------------------------------------

[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = time > 9
triggerall = random<200*(AIlevel**2/64.0)
trigger1 = p2movetype = A 
trigger1 = enemynear, vel X >= 0
trigger2 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger3 = PlayerIdExist(helper(33333333),var(3))
trigger3 = (PlayerId(helper(33333333),var(3)), p2bodydist x) >= 20 

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = ctrl
triggerall = pos Y <= -45
trigger1 = p2bodydist X >= 65

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = (stateno = [600,611]) && moveguarded && prevstateno != 220

;---------------------------------------------------------------------------

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
triggerall = roundstate = 2
triggerall = stateno = 40 || stateno = 45
trigger1 = p2movetype = H
sysvar(1) = 1

;===========================================================================
;Ground to Air
;===========================================================================
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
trigger1 = ctrl
value = 195

[State 0, Taunt]
type = ChangeState
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = fvar(19)>0
trigger1 = stateno = 202
trigger1 = movehit
value = 4000

[State -1, Grab]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = p2bodydist X = [0,20]
triggerall = enemynear,ctrl = 0
trigger1 = ctrl

[State -1, 5A]
type = ChangeState
value = ifelse(random<=450,400,ifelse(p2bodydist x<10,400,200))
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [-10,40]
triggerall = p2bodydist y = [0,15]
trigger1 = ctrl

[State -1, 5A]
type = ChangeState
value = ifelse(p2bodydist x < 40 && enemy,pos y > -20,210,200)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [0,60]
triggerall = enemy,pos Y = [-70,0]
trigger1 = ctrl

[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = var(50) = 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = life < lifemax/3
triggerall = random <= 300
trigger1 = ctrl 

[State -1, Burst]
type = changestate
value = 8000
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
trigger1 = movehit
trigger1 = stateno = 410
trigger2 = stateno = 400
trigger2 = movecontact
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 420
trigger1 = moveguarded
trigger1 = stateno = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 220
trigger1 = moveguarded
trigger1 = stateno = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, Grab]
type = ChangeState
value = 800
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
trigger1 = movecontact
trigger1 = stateno = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 202
trigger1 = movecontact
trigger1 = stateno = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 1010
trigger1 = movehit
trigger1 = stateno = 1000
trigger2 = movehit
trigger2 = stateno = 1001
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 1012
trigger1 = moveguarded
trigger1 = stateno = 1000
trigger2 = moveguarded
trigger2 = stateno = 1001
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2


[State -1, 5A]
type = ChangeState
value = 210
trigger1 = movecontact
trigger1 = stateno = 202 && animelemtime(5)=2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, jAA]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(36) = 1
trigger1= stateno = 600 && movehit

[State -1, jAA]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = stateno = 610
trigger1 = movehit

[State -1, jAA]
type = ChangeState
value = 841
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
trigger1= stateno = 620 && movehit

[State -1, jA]
type = changestate
value = 600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2bodydist X = [-5,80]
trigger1 = ctrl

[State -1, UF]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = ailevel && numenemy
triggerall = p2bodydist x = [-30,30]
triggerall = p2bodydist y < - 50
triggerall = statetype!=A
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, jB]
type = ChangeState
value = 610
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
trigger1 = movehit
trigger1 = stateno = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 410
trigger1 = moveguarded
trigger1 = stateno = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 400
trigger1 = moveguarded
trigger1 = stateno = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 220
trigger1 = moveguarded
trigger1 = stateno = 400
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = ifelse(enemy,statetype=A,212,1200)
trigger1 = movecontact
trigger1 = stateno = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = ifelse(enemy,life <enemy,lifemax*.25 && power = powermax && var(21)=0,3900,3000)
trigger1 = movehit
trigger1 = stateno = 212
triggerall = !ishelper
triggerall = power >= 1000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 40
trigger1 = movecontact
trigger1 = stateno = 212
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, 5A]
type = ChangeState
value = 1400
trigger1 = movecontact
trigger1 = stateno = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2

[State -1, Wake up]
type = ChangeState
value = 1400
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
value = 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2bodydist X >= 100
triggerall = enemynear, vel x > 0
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = var(42) = 0
triggerall = p2movetype != H
triggerall = numhelper(1050) <= 0
triggerall = enemynear, vel y >= 0
triggerall = p2dist y >= -60
trigger1 = ctrl

[State -1, .]
type = ChangeState
value = 3900
triggerall = ailevel && numenemy
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= lifemax*.25
triggerall = var(21) = 0
triggerall = Var(50) != 1
trigger1 = stateno = 212 && movehit
trigger2 = stateno = 420 && movehit
trigger4 = helper(1050),movehit && ctrl
trigger4 = numhelper(1050)