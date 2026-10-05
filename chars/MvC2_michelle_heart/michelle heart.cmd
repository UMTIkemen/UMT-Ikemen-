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
; Sting of Ares
[command]
name = "qcf_ab"
command = ~D, DF, F, a+b

[command]
name = "qcf_ab"
command = ~D, DF, F, b+c

[command]
name = "qcf_ab"
command = ~D, DF, F, a+c

;Firebird
[command]
name = "qcf_xy"
command = ~D, DF, F, x+y

[command]
name = "qcf_xy"
command = ~D, DF, F, x+z

[command]
name = "qcf_xy"
command = ~D, DF, F, y+z
;-| Special Motions |------------------------------------------------------
[command]
name = "qcf_a"
command = ~D, DF, F, a
time = 15

[command]
name = "qcf_b"
command = ~D, DF, F, b
time = 15

[command]
name = "qcf_c"
command = ~D, DF, F, c
time = 15

[command]
name = "qcb_a"
command = ~D, DB, B, a
time = 15

[command]
name = "qcb_b"
command = ~D, DB, B, b
time = 15

[command]
name = "qcb_c"
command = ~D, DB, B, c
time = 15

[command]
name = "qcb_x"
command = ~D, DB, B, x
time = 15

[command]
name = "qcb_y"
command = ~D, DB, B, y
time = 15

[command]
name = "qcb_z"
command = ~D, DB, B, z
time = 15

[command]
name = "dd_x"
command = ~D, D, x

[command]
name = "dd_y"
command = ~D, D, y

[command]
name = "dd_z"
command = ~D, D, z

[command]
name = "qcf_x"
command = ~D, DF, F, x
time = 15

[command]
name = "qcf_y"
command = ~D, DF, F, y
time = 15

[command]
name = "qcf_z"
command = ~D, DF, F, z
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

;-| PartnerChange |------------

[command]
name = "counter"
command = /F, x+a
time = 8

[command]
name = "counter"
command = /F, y+b
time = 8

[command]
name = "counter"
command = /F, z+c
time = 8

;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "abc"
command = b+c
time = 8

[command]
name = "abc"
command = a+b
time = 8

;-| push back |-----------------------------------------------------------
[command]
name = "guardpush"
command = x+y
time = 10

[command]
name = "guardpush"
command = x+z
time = 10

[command]
name = "guardpush"
command = z+y
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "undizzy"
command = ~B, F, B, F, B, F, B, F
time = 35

[Command]
name = "undizzy"
command = ~D, U, D, U, D, U, D, U
time = 35

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
name = "start"
command = s
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "release_z"
command = ~z
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

[command]
name = "holddownback"
command = /$DB
time = 1

[command]
name = "holddownfwd"
command = /$DF
time = 1

[command]
name = "holdupback"
command = /$UB
time = 1

[command]
name = "holdupfwd"
command = /$UF
time = 1

[command]
name = "holddownforward"
command = /$DF
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
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
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;Sting of Ares
[state -1, go]
type = changestate
value = 4100
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(ab)||Map(bc)||Map(a)&&Map(c)
;triggerall = command = "qcf_ab"
triggerall = power >= 1000 
triggerall = statetype !=a 
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 460
trigger3 = (stateno = [1000,1020]) || (stateno = [1060,1062]) || (stateno = [1070,1072])

;Sting of Ares (air)
[state -1, go]
type = changestate
value = 4105
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(ab)||Map(bc)||Map(a)&&Map(c)
;triggerall = command = "qcf_ab"
triggerall = power >= 1000 
triggerall = statetype = a 
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = stateno != 460
trigger3 = (stateno = [1030,1050]) || (stateno = [1065,1067]) || (stateno = [1075,1077])
trigger4 = stateno = 1300
trigger5 = stateno = 1515 && movecontact
;---------------------------------------------------------------------------
;Firebird
[state -1, go]
type = changestate
value = 4000
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(xy)||Map(yz)||Map(x)&&Map(z)
;triggerall = command = "qcf_xy"
triggerall = power >= 1000 
triggerall = statetype !=a 
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 460
trigger3 = (stateno = [1000,1020]) || (stateno = [1060,1062]) || (stateno = [1070,1072])

;Air Firebird
[state -1, go]
type = changestate
value = 4050
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(xy)||Map(yz)||Map(x)&&Map(z)
;triggerall = command = "qcf_xy"
triggerall = power >= 1000 
triggerall = statetype = a 
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = stateno != 460
trigger3 = (stateno = [1030,1050]) || (stateno = [1065,1067]) || (stateno = [1075,1077])
trigger4 = stateno = 1300
trigger5 = stateno = 1515 && time > 35
;---------------------------------------------------------------------------
;War Dive weak
[state -1, a2]
type = changestate
value = 1500
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(a)
;triggerall = command = "qcf_a"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;War Dive medium
[state -1, a2]
type = changestate
value = 1501
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(b)
;triggerall = command = "qcf_b"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;War Dive medium
[state -1, a2]
type = changestate
value = 1502
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(c)
;triggerall = command = "qcf_c"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
;---------------------------------------------------------------------------
;air War Dive weak
[state -1, a2]
type = changestate
value = 1505
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(a)
;triggerall = command = "qcf_a"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;air War Dive weak
[state -1, a2]
type = changestate
value = 1510
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(b)
;triggerall = command = "qcf_b"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;air War Dive weak
[state -1, a2]
type = changestate
value = 1515
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(c)
;triggerall = command = "qcf_c"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Flight
[State -1, Flight]
type = ChangeState
value = 1305
triggerall = !var(59)
;triggerall = !AIlevelF
;triggerall = (Map(QCB)) && (((Map(a)||Map(b)||Map(c))))
triggerall = command = "qcb_a" ||command = "qcb_b"||command = "qcb_c"
triggerall = var(14) != 1
triggerall = statetype != a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])

;Flight stop
[State -1, Flightstop]
type = ChangeState
value = 460
trigger1 = command = "qcb_a" || command = "qcb_b" || command = "qcb_c"
trigger1 = var(14) = 1
trigger1 = stateno = 1300
;---------------------------------------------------------------------------------------

;Weapon change (fire shot)
[state -1,z]
type = changestate
value = 1200
triggerall = command = "dd_x"
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = stateno = [200,450]

;Weapon change (laser shot)
[state -1,z]
type = changestate
value = 1205
triggerall = command = "dd_y"
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = stateno = [200,450]

;Weapon change (spread shot)
[state -1,z]
type = changestate
value = 1210
triggerall = command = "dd_z"
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = stateno = [200,450]

;---------------------------------------------------------------------------
;Bomb Launch
[state -1, a2]
type = changestate
value = 1100
triggerall = (helper(11000),stateno != 11000)&&(helper(11001),stateno != 11000)&&(helper(11002),stateno != 11000)
triggerall = NumPartner = 0
triggerall = !AIlevelF
triggerall = Map(QCB)  
triggerall = Map(x)
;triggerall = command = "qcb_x"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;Bomb Launch
[state -1, a2]
type = changestate
value = 1101
triggerall = (helper(11000),stateno != 11000)&&(helper(11001),stateno != 11000)&&(helper(11002),stateno != 11000)
triggerall = NumPartner = 0
triggerall = !AIlevelF
triggerall = Map(QCB)  
triggerall = Map(y)
;triggerall = command = "qcb_y"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;Bomb Launch
[state -1, a2]
type = changestate
value = 1102
triggerall = (helper(11000),stateno != 11000)&&(helper(11001),stateno != 11000)&&(helper(11002),stateno != 11000)
triggerall = NumPartner = 0
triggerall = !AIlevelF
triggerall = Map(QCB)  
triggerall = Map(z)
;triggerall = command = "qcb_z"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;---------------------------------------------------------------------------
;spread shot weak
[state -1, a2]
type = changestate
value = 1070
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(x) && var(4) = 2
;triggerall = command = "qcf_x" && var(4) = 2
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;spread shot medium
[state -1, a2]
type = changestate
value = 1071
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(y) && var(4) = 2
;triggerall = command = "qcf_y" && var(4) = 2
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;spread shot strong
[state -1, a2]
type = changestate
value = 1072
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(z) && var(4) = 2
;triggerall = command = "qcf_z" && var(4) = 2
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;air spread shot weak
[state -1, a2]
type = changestate
value = 1075
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(x) && var(4) = 2
;triggerall = command = "qcf_x" && var(4) = 2
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;air spread shot medium
[state -1, a2]
type = changestate
value = 1076
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(y) && var(4) = 2
;triggerall = command = "qcf_y" && var(4) = 2
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;air spread shot strong
[state -1, a2]
type = changestate
value = 1077
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(z) && var(4) = 2
;triggerall = command = "qcf_z" && var(4) = 2
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;---------------------------------------------------------------------------
;twin laser shot weak
[state -1, a2]
type = changestate
value = 1060
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(x) && var(4) = 1
;triggerall = command = "qcf_x" && var(4) = 1
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;twin laser shot medium
[state -1, a2]
type = changestate
value = 1061
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(y) && var(4) = 1
;triggerall = command = "qcf_y" && var(4) = 1
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;twin laser shot strong
[state -1, a2]
type = changestate
value = 1062
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(z) && var(4) = 1
;triggerall = command = "qcf_z" && var(4) = 1
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;air laser shot weak
[state -1, a2]
type = changestate
value = 1065
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(x) && var(4) = 1
;triggerall = command = "qcf_x" && var(4) = 1
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;air laser shot medium
[state -1, a2]
type = changestate
value = 1066
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(y) && var(4) = 1
;triggerall = command = "qcf_y" && var(4) = 1
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;air laser shot strong
[state -1, a2]
type = changestate
value = 1067
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(z) && var(4) = 1
;triggerall = command = "qcf_z" && var(4) = 1
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;---------------------------------------------------------------------------
;fire shot weak
[state -1, a2]
type = changestate
value = 1000
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(x) && var(4) = 0
;triggerall = command = "qcf_x" && var(4) = 0
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;fire shot medium
[state -1, a2]
type = changestate
value = 1010
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(y) && var(4) = 0
;triggerall = command = "qcf_y" && var(4) = 0
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;fire shot strong
[state -1, a2]
type = changestate
value = 1020
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(z) && var(4) = 0
;triggerall = command = "qcf_z" && var(4) = 0
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;air fire shot weak
[state -1, a2]
type = changestate
value = 1030
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(x) && var(4) = 0
;triggerall = command = "qcf_x" && var(4) = 0
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;air fire shot medium
[state -1, a2]
type = changestate
value = 1040
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(y) && var(4) = 0
;triggerall = command = "qcf_y" && var(4) = 0
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;air fire shot strong
[state -1, a2]
type = changestate
value = 1050
triggerall = !AIlevelF
triggerall = Map(QCF)  
triggerall = Map(z) && var(4) = 0
;triggerall = command = "qcf_z" && var(4) = 0
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger3 = stateno = 1300

;counter strike 1
[state -1, counter]
type = changestate
value = 910
triggerall = (command = "counter") && (power >= 1000)
trigger1 = stateno = [150,153]
;--------------------------------------------------------------
;personal space-----------------------------------------------

[state -1, guard push]
type = changestate
value = 160
;triggerall = command = "guardpush"
triggerall = Map(xy)||Map(yz)||Map(x)&&Map(z)
triggerall = statetype = S
trigger1 = stateno = [150,153] ;the guard state numbers

[state -1, guard push]
type = changestate
value = 162
;triggerall = command = "guardpush"
triggerall = Map(xy)||Map(yz)||Map(x)&&Map(z)
triggerall = statetype = A
trigger1 = stateno = [154,155] ;the guard state numbers

[state -1, guard push]
type = changestate
value = 161
;triggerall = command = "guardpush"
triggerall = Map(xy)||Map(yz)||Map(x)&&Map(z)
triggerall = statetype = C
trigger1 = stateno = [151,153] ;the guard state numbers
;--------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "y") || (command = "z")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" && (statetype = s)
trigger1 = p2bodydist x < 3
trigger1 = p2statetype != A
trigger1 = p2movetype != h
trigger2 = command = "holdback" && (statetype = s)
trigger2 = p2bodydist x < 9
trigger2 = p2statetype != A
trigger2 = p2movetype != h
trigger3 = command = "holdfwd" && (statetype = a)
trigger3 = p2bodydist x < 3
trigger3 = p2statetype = a
trigger4 = command = "holdback" && (statetype = a)
trigger4 = p2bodydist x < 5
trigger4 = p2statetype = a 
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;taunt
[state -1, taunt]
type = changestate
value = 195
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;stand light punch
[state -1]
type = changestate
value = 200
;triggerall = command = "x"
triggerall = !AIlevelF 
triggerall = Map(x)
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
;---------------------------------------------------------------------------
;stand medium punch
[state -1]
type = changestate
value = 210
;triggerall = command = "y"
triggerall = !AIlevelF 
triggerall = Map(y)
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
;stand strong punch
[state -1]
type = changestate
value = 220
triggerall = !AIlevelF 
triggerall = Map(z)
;triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact
;---------------------------------------------------------------------------
;stand light kick
[state -1]
type = changestate
value = 230
triggerall = !AIlevelF 
triggerall = Map(a)
;triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
;---------------------------------------------------------------------------
;standing strong kick
[state -1]
type = changestate
value = 240
triggerall = !AIlevelF 
triggerall = Map(b)
;triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
;standing strong kick
[state -1]
type = changestate
value = 250
triggerall = !AIlevelF 
triggerall = Map(c)
;triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,420]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact


;---------------------------------------------------------------------------
;crouching light punch
[state -1, crouching light punch]
type = changestate
value = 400
;triggerall = command = "x"
triggerall = !AIlevelF 
triggerall = Map(x)
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
;---------------------------------------------------------------------------
;crouching medium punch
[state -1, crouching medium punch]
type = changestate
value = 410
triggerall = !AIlevelF 
triggerall = Map(y)
;triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
;crouching strong punch
[state -1, crouching strong punch]
type = changestate
value = 420
triggerall = !AIlevelF 
triggerall = Map(z)
;triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact
;---------------------------------------------------------------------------
;crouching light kick
[state -1, crouching light kick]
type = changestate
value = 430
triggerall = !AIlevelF 
triggerall = Map(a)
;triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;crouching medium kick
[state -1, crouching medium kick]
type = changestate
value = 440
triggerall = !AIlevelF 
triggerall = Map(b)
;triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
;crouching strong kick
[state -1, crouching strong kick]
type = changestate
value = 450
triggerall = !AIlevelF 
triggerall = Map(c)
;triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,420]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact

;---------------------------------------------------------------------------

;jump light punch
[state -1]
type = changestate
value = 600
triggerall = !AIlevelF 
triggerall = Map(x)
;triggerall = command = "x"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 1300

;---------------------------------------------------------------------------
;jump medium punch
[state -1]
type = changestate
value = 610
triggerall = !AIlevelF 
triggerall = Map(y)
;triggerall = command = "y"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = stateno = 1300

;---------------------------------------------------------------------------
;jump strong punch
[state -1]
type = changestate
value = 620
triggerall = !AIlevelF 
triggerall = Map(z)
;triggerall = command = "z"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = stateno = 1300

;---------------------------------------------------------------------------
;jump light kick
[state -1]
type = changestate
value = 630
triggerall = !AIlevelF 
triggerall = Map(a)
;triggerall = command = "a"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = stateno = 1300

;---------------------------------------------------------------------------
;jump medium kick
[state -1]
type = changestate
value = 640
triggerall = !AIlevelF 
triggerall = Map(b)
;triggerall = command = "b"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = stateno = 1300

;---------------------------------------------------------------------------
;jump strong kick
[state -1]
type = changestate
value = 650
triggerall = !AIlevelF 
triggerall = Map(c)
;triggerall = command = "c"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = stateno = 1300

