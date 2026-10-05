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
command.time = 20
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "chaos"
command = ~D, DF, F, z+c

[Command]
name = "spawn"
command = ~D, DB, B, a+b

[Command]
name = "spawn"
command = ~D, DB, B, a+c

[Command]
name = "spawn"
command = ~D, DB, B, b+c

[Command]
name = "spawn"
command = ~D, DB, B, a+b+c

[Command]
name = "hray"
command = ~D, DF, F, x+y

[Command]
name = "hray"
command = ~D, DF, F, x+z

[Command]
name = "hray"
command = ~D, DF, F, y+z

[Command]
name = "hray"
command = ~D, DF, F, x+y+z

[Command]
name = "hsmash"
command = ~D, DF, F, a+b

[Command]
name = "hsmash"
command = ~D, DF, F, a+c

[Command]
name = "hsmash"
command = ~D, DF, F, b+c

[Command]
name = "hsmash"
command = ~D, DF, F, a+b+c

;-| Special Motions |------------------------------------------------------
[Command]
name = "devil"
command = ~F, DF, D, DB, B, a
;command = ~D, DB, B, a
time = 40;20

[Command]
name = "devil"
command = ~F, DF, D, DB, B, b
;command = ~D, DB, B, b
time = 40;20

[Command]
name = "devil"
command = ~F, DF, D, DB, B, c
;command = ~D, DB, B, c
time = 40;20

[Command]
name = "stare1"
command = ~20$B, F, x
;command = ~B, F, x

[Command]
name = "stare2"
command = ~20$B, F, y
;command = ~B, F, y

[Command]
name = "stare3"
command = ~20$B, F, z
;command = ~B, F, z

[Command]
name = "ray1"
command = ~B, DB, D, DF, F, x
;command = ~D, DF, F, x
time = 40;20

[Command]
name = "ray2"
command = ~B, DB, D, DF, F, y
;command = ~D, DF, F, y
time = 40;20

[Command]
name = "ray3"
command = ~B, DB, D, DF, F, z
;command = ~D, DF, F, z
time = 40;20

[Command]
name = "smash1"
command = ~D, DF, F, a

[Command]
name = "smash2"
command = ~D, DF, F, b

[Command]
name = "smash3"
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

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------

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

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Chaos Dimension]
type = ChangeState
value = 6300
triggerall = command = "chaos"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, The Spawning]
type = ChangeState
value = 6200
triggerall = command = "spawn"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = numhelper(6200) != 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Hyper Mystic Ray]
type = ChangeState
value = 6100
triggerall = command = "hray"
triggerall = power >= 1000
triggerall = !NumHelper(1200)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Hyper Mystic Smash]
type = ChangeState
value = 6000
triggerall = command = "hsmash"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;===========================================================================
;Devitilization
[State -1, Devitilization]
type = ChangeState
value = 1300
triggerall = command = "devil"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
;Mystic Stare
[State -1, MST Debil]
type = ChangeState
value = 1000
triggerall = command = "stare1"
triggerall = NumProjID(1000) = 0
triggerall = NumHelper(1005) = 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, MST Medio]
type = ChangeState
value = 1050
triggerall = command = "stare2"
triggerall = NumProjID(1000) = 0
triggerall = NumHelper(1005) = 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, MST Fuerte]
type = ChangeState
value = 1090
triggerall = command = "stare3"
triggerall = NumProjID(1000) = 0
triggerall = NumHelper(1005) = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Mystic Ray
[State -1, MR Debil]
type = ChangeState
value = 1200
triggerall = command = "ray1"
triggerall = !NumHelper(1200)
trigger1 = statetype = S
trigger1 = ctrl

[State -1, MR Medio]
type = ChangeState
value = 1250
triggerall = command = "ray2"
triggerall = !NumHelper(1200)
trigger1 = statetype = S
trigger1 = ctrl

[State -1, MR Fuerte]
type = ChangeState
value = 1290
triggerall = command = "ray3"
triggerall = !NumHelper(1200)
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Mystic Smash
[State -1, MS Debil]
type = ChangeState
value = 1100
triggerall = command = "smash1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,216]) && movecontact
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

[State -1, MS Medio]
type = ChangeState
value = 1110
triggerall = command = "smash2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,216]) && movecontact
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

[State -1, MS Fuerte]
type = ChangeState
value = 1120
triggerall = command = "smash3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,216]) && movecontact
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;------
;Air Mystic Smash (Tremble!)
[State -1, AMS Debil]
type = ChangeState
value = 1150
triggerall = command = "smash1"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, AMS Medio]
type = ChangeState
value = 1160
triggerall = command = "smash2"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, AMS Fuerte]
type = ChangeState
value = 1170
triggerall = command = "smash3"
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Agarre 1
[State -1, Absorving energy]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Absorving energy]
type = ChangeState
value = 900
triggerall = command = "z"
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

; Agarre 2
[State -1, Just throwing]
type = ChangeState
value = 850
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Just throwing]
type = ChangeState
value = 950
triggerall = command = "c"
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Burlas
[State -1, Burlas]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crystal Smash
[State -1]
type = ChangeState
value = 500
triggerall = command = "holddown" && command = "c"
trigger1 = statetype = A
trigger1 = ctrl

; Upper Ray
[State -1]
type = ChangeState
value = 510
triggerall = command = "holdup" && command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Golpe Debil Parado
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Golpe Medio Parado
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
trigger2 = (stateno = [200,206]) && movecontact
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Golpe Fuerte Parado
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [210,216]) && movecontact

;---------------------------------------------------------------------------
; Patada Debil Parado
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Patada Media Parado
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [230,236]) && movecontact

;---------------------------------------------------------------------------
; Patada Fuerte Parado
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [240,246]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Golpe Debil Agachado
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Golpe Medio Agachado
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
; Golpe Fuerte Agachado
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410 && movecontact

;---------------------------------------------------------------------------
; Patada Debil Agachado
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Patada Media Agachado
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [430,431]) && movecontact

;---------------------------------------------------------------------------
; Patada Fuerte Agachado
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [440,441]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Golpe Debil Saltando
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Golpe Medio Saltando
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,601]) && movecontact

;---------------------------------------------------------------------------
; Golpe Fuerte Saltando
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [610,611]) && movecontact

;---------------------------------------------------------------------------
; Patada Debil Saltando
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Patada Media Saltando
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [630,631]) && movecontact

;---------------------------------------------------------------------------
; Patada Fuerte Saltando
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [640,641]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Agarre CD - Parado
[State -1]
type = ChangeState
value = 6310
triggerall = command = "y" || command = "z" || command = "b" || command = "c"
triggerall = Var(13) > 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Agarre CD - Agachado
[State -1]
type = ChangeState
value = 6311
triggerall = command = "y" || command = "z" || command = "b" || command = "c"
triggerall = command = "holddown"
triggerall = Var(13) > 0
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Agarre CD - Saltando
[State -1]
type = ChangeState
value = 6312
triggerall = command = "y" || command = "z" || command = "b" || command = "c"
triggerall = Var(13) > 0
trigger1 = statetype = A
trigger1 = ctrl

