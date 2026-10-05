

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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
command.buffer.time = 3

;-| Super Motions |--------------------------------------------------------

;Taiyou no Megumi
[Command]
name = "Taiyou no Megumi"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "Taiyou no Megumi"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "Taiyou no Megumi"
command = ~D, DF, F, a+c
time = 20

;Shokubutsu no Okite
[Command]
name = "Shokubutsu no Okite"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "Shokubutsu no Okite"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "Shokubutsu no Okite"
command = ~D, DB, B, x+z
time = 20
;-| Special Motions |------------------------------------------------------



;Kaze no Sakebi
[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 20

;Kaze no Sakebi
[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 20

;Kaze no Sakebi
[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 20

;Kaze no Sakebi
[Command]
name = "QCF_x"
command = ~D, DF, F, ~x
time = 10
buffer.time = 10

;Kaze no Sakebi
[Command]
name = "QCF_y"
command = ~D, DF, F, ~y
time = 10
buffer.time = 10

;Kaze no Sakebi
[Command]
name = "QCF_z"
command = ~D, DF, F, ~z
time = 10
buffer.time = 10


;Midori no Kanki
[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 20

;Midori no Kanki
[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 20

;Midori no Kanki
[Command]
name = "QCB_z"
command = ~D, DB, B, z
time = 20

;Midori no Kanki
[Command]
name = "QCB_x"
command = ~D, DB, B, ~x
time = 10
buffer.time = 10

;Midori no Kanki
[Command]
name = "QCB_y"
command = ~D, DB, B, ~y
time = 10
buffer.time = 10

;Midori no Kanki
[Command]
name = "QCB_z"
command = ~D, DB, B, ~z
time = 10
buffer.time = 10

;Daichi no Kodomo (Tsukami)
[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 20

;Daichi no Kodomo (Tsukami)
[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 20

;Daichi no Kodomo (Tsukami)
[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 20

;Daichi no Kodomo (Tsukami)
[Command]
name = "QCB_a"
command = ~D, DB, B, ~a
time = 10
buffer.time = 10

;Daichi no Kodomo (Tsukami)
[Command]
name = "QCB_b"
command = ~D, DB, B, ~b
time = 10
buffer.time = 10

;Daichi no Kodomo (Tsukami)
[Command]
name = "QCB_c"
command = ~D, DB, B, ~c
time = 10
buffer.time = 10

;Daichi no Kodomo (Punch)
[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 20

;Daichi no Kodomo (Punch)
[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 20

;Daichi no Kodomo (Kick)
[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 20

;Daichi no Kodomo (Punch)
[Command]
name = "QCF_a"
command = ~D, DF, F, ~a
time = 10
buffer.time = 10

;Daichi no Kodomo (Punch)
[Command]
name = "QCF_b"
command = ~D, DF, F, ~b
time = 10
buffer.time = 10

;Daichi no Kodomo (Kick)
[Command]
name = "QCF_c"
command = ~D, DF, F, ~c
time = 10
buffer.time = 10

[Command]
name = "RecoveryRoll"
command = B, DB, D, x
time = 25
[Command]
name = "RecoveryRoll"
command = B, DB, D, y
time = 25
[Command]
name = "RecoveryRoll"
command = B, DB, D, z
time = 25
[Command]
name = "RecoveryRoll2"
command = B, DB, D, a
time = 25
[Command]
name = "RecoveryRoll2"
command = B, DB, D, b
time = 25
[Command]
name = "RecoveryRoll2"
command = B, DB, D, c
time = 25

;Required (do not remove)

[Command]
name = "highjump"
command = $D
time = 1
buffer.time = 8

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "a"
command = a
time = 1
buffer.time = 1

[Command]
name = "b"
command = b
time = 1
buffer.time = 1

[Command]
name = "c"
command = c
time = 1
buffer.time = 1

[Command]
name = "x"
command = x
time = 1
buffer.time = 1

[Command]
name = "y"
command = y
time = 1
buffer.time = 1

[Command]
name = "z"
command = z
time = 1
buffer.time = 1

[Command]
name = "start"
command = s
time = 1
buffer.time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1
buffer.time = 1

[Command]
name = "holdback"
command = /$B
time = 1
buffer.time = 1

[Command]
name = "holdup"
command = /$U
time = 1
buffer.time = 1

[Command]
name = "holddownfwd"
command = /DF
time = 1
buffer.time = 1


[Command]
name = "holddown"
command = /$D
time = 1
buffer.time = 1

[Command]
name = "holdback2"
command = /B
time = 1

[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1

[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1

[Command]
name = "hold_c"
command = /c
time = 1
buffer.time = 1

[Command]
name = "hold_x"
command = /x
time = 1
buffer.time = 1

[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1

[Command]
name = "hold_z"
command = /z
time = 1
buffer.time = 1

[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1

[Command]
name = "dash"
command = x+y
time = 1
buffer.time = 1
[Command]
name = "dash"
command = x+z
time = 1
buffer.time = 1
[Command]
name = "dash"
command = y+z
time = 1
buffer.time = 1

[Statedef -1]
 
;---------------------------------------------------------------------------

[State -1, Taiyou no Megumi]
type = ChangeState
value = 3040
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = !NumHelper(23040)
triggerall = command = "Taiyou no Megumi"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger3 = stateno = [300,420]
trigger4 = stateno = [500,520]
trigger5 = stateno = 1480
trigger6 = stateno = 1500
trigger7 = stateno = 1510 && time <11
trigger8 = stateno = 1530 && time <11
trigger9 = stateno = 1540
trigger10 = stateno = 1550
trigger11 = stateno = 1560
trigger12 = stateno = 101 && prevstateno != 109

;---------------------------------------------------------------------------

[State -1, Shokubutsu no Okite]
type = ChangeState
value = 3080
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "Shokubutsu no Okite"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger3 = stateno = [300,420]
trigger4 = stateno = [500,520]
trigger5 = stateno = 1480
trigger6 = stateno = 1500
trigger7 = stateno = 1510 && time <11
trigger8 = stateno = 1530 && time <11
trigger9 = stateno = 1540
trigger10 = stateno = 1550
trigger11 = stateno = 1560
trigger12 = stateno = 101 && prevstateno != 109


;---------------------------------------------------------------------------
[State -1, Kaze no Sakebi]
type = ChangeState
value = 1480
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "QCF_x"||command="QCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger3 = stateno = [300,420]
trigger4 = stateno = [500,520]
trigger5 = stateno = 101 && prevstateno != 109


;---------------------------------------------------------------------------
[State -1, Kaze no Sakebi]
type = ChangeState
value = 1500
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "QCF_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger3 = stateno = [300,420]
trigger4 = stateno = [500,520]
trigger5 = stateno = 101 && prevstateno != 109

;---------------------------------------------------------------------------
[State -1, Air Kaze no Sakebi]
type = ChangeState
value = 1485
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "QCF_x"||command="QCF_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,720]

;---------------------------------------------------------------------------
[State -1, Air Kaze no Sakebi]
type = ChangeState
value = 1505
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "QCF_z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,720]

;---------------------------------------------------------------------------
[State -1, Midori no Kanki]
type = ChangeState
value = 1510
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "QCB_x"||command="QCB_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger3 = stateno = [300,420]
trigger4 = stateno = [500,520]
trigger5 = stateno = 101 && prevstateno != 109

;---------------------------------------------------------------------------
[State -1, Midori no Kanki]
type = ChangeState
value = 1530
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "QCB_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger3 = stateno = [300,420]
trigger4 = stateno = [500,520]
trigger5 = stateno = 101 && prevstateno != 109

;---------------------------------------------------------------------------
[State -1, Daichi no Kodomo]
type = ChangeState
value = 1540
triggerall = roundstate = 2 && !var(59) && var(6) < 2 && NumHelper(21540) < 2
triggerall = command = "QCB_a"||command="QCB_b"||command="QCB_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger3 = stateno = [300,420]
trigger4 = stateno = [500,520]
trigger5 = stateno = 101 && prevstateno != 109

;---------------------------------------------------------------------------
[State -1, Daichi no Kodomo]
type = ChangeState
value = 1550
triggerall = roundstate = 2 && !var(59) && var(6) < 2 && NumHelper(21540) < 2
triggerall = command = "QCF_a"||command="QCF_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger3 = stateno = [300,420]
trigger4 = stateno = [500,520]
trigger5 = stateno = 101 && prevstateno != 109

;---------------------------------------------------------------------------
[State -1, Daichi no Kodomo]
type = ChangeState
value = 1560
triggerall = roundstate = 2 && !var(59) && var(6) < 2 && NumHelper(21540) < 2
triggerall = command = "QCF_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger3 = stateno = [300,420]
trigger4 = stateno = [500,520]
trigger5 = stateno = 101 && prevstateno != 109


; ?o?b?N?_?b?V??
[State -1]
type = ChangeState
value = 105
triggerall = roundstate = 2 && !var(59)
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = (command = "holdback2" && command = "recovery") || (StateType != A && command = "BB")
trigger1 = statetype = S && ctrl

; ?_?b?V??
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2 && !var(59)
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = (command = "recovery") || (StateType != A && command = "FF")
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------

[State -1,Ground Throw]
type = ChangeState
value = 800
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------

[State -1,Air Throw]
type = ChangeState
value = 840
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------

[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101 && prevstateno != 109

;---------------------------------------------------------------------------
[State -1,  Stand Kick]
type = ChangeState
value = 300
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101 && prevstateno != 109

;---------------------------------------------------------------------------

[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl




;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !var(59)
triggerall = command != "holddown"
triggerall= command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact
trigger6 = stateno = 101 && prevstateno != 109

[State -1, Standing Hard Punch]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !var(59)
triggerall = command != "holddown"
triggerall= command = "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact
trigger10 = stateno = 101 && prevstateno != 109


[State -1, Standing Medium Kick]
type = ChangeState
value = 310
triggerall = roundstate = 2 && !var(59)
triggerall = command != "holddown"
triggerall= command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact
trigger6 = stateno = 101 && prevstateno != 109

[State -1, Standing Hard Kick]
type = ChangeState
value = 320
triggerall = roundstate = 2 && !var(59)
triggerall = command != "holddown"
triggerall= command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact
trigger10 = stateno = 101 && prevstateno != 109

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holddown"
triggerall= command = "y"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact

[State -1]
type = ChangeState
value = 410
triggerall = statetype != A
triggerall = command = "holddownfwd"
triggerall = command = "z"
trigger1 = ctrl


[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holddown"
triggerall= command = "z"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact

[State -1, Crouching Medium Kick]
type = ChangeState
value = 510
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holddown"
triggerall= command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact

[State -1]
type = ChangeState
value = 510
triggerall = statetype != A
triggerall = command = "holddownfwd"
triggerall = command = "c"
trigger1 = ctrl


[State -1, Crouching Hard Kick]
type = ChangeState
value = 520
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holddown"
triggerall= command = "c"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 500 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 700
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 700 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 710
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 700 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 700 && movecontact
trigger5 = stateno = 710 && movecontact

;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 720
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 700 && movecontact
trigger5 = stateno = 710 && movecontact


; ???W?????v
[State -1]
type = ChangeState
value = 45
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "holdup"
trigger1 = statetype = A && ctrl
trigger1 = var(2) && !var(3)

; ?L?????Z???W?????v
[State -1]
type = ChangeState
value = 40
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holdup" && !var(1) && prevstateno != 109
trigger1 = stateno = [100,102]
trigger2 = stateno = 410 && movehit
trigger3 = stateno = 510 && movehit

; ??????
[State -1]
type = ChangeState
triggerall = command = "holddown" && prevstateno != 109
trigger1 = stateno = [100,102]
value = 10
ctrl = 1

; ?A?h?o???V???O?K?[?h
[State -1]
type = VarSet
triggerall = roundstate = 2 && !var(59)
triggerall = !numhelper(8060)
triggerall = (command = "x" && command = "y") || (command = "x" && command = "b") || (command = "y" && command = "b") || command = "c"
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(11) = 1
ignorehitpause = 1

;Taunt?
[State -1]
type = ChangeState
triggerall = roundstate = 2 && !var(59)
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && time > 3
value = 195
