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
command.time = 15
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "makankousappou"
command = ~D, F, D, F, y
time = 25

[Command]
name = "super"
command = ~D, F, D, F, b
time = 25

[Command]
name = "bakuretsu"
command = ~D, B, F, b
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "deathbeam"
command = ~D, B, F, y
time = 20

[Command]
name = "shoryuken"
command = ~F, D, DF, a
time = 20

[Command]
name = "shoryuken2"
command = ~F, D, DF, b
time = 20

[Command]
name = "hadouken"
command = ~D, DF, F, x
time = 20

[Command]
name = "hadouken2"
command = ~D, DF, F, y
time = 20

[Command]
name = "tatsumaki"
command = ~D, B, a
time = 20

[Command]
name = "tatsumaki2"
command = ~D, B, b
time = 20

[Command]
name = "attack"
command = ~D, DF, F, a
time = 20

[Command]
name = "attack2"
command = ~D, DF, F, b
time = 20

[Command]
name = "mystic"
command = ~D, B, x
time = 20

[Command]
name = "mystic2"
command = ~D, B, y
time = 20

[command]
name = "slashdown"
command = ~F, D, a
time = 20

[command]
name = "slashdown2"
command = ~F, D, b
time = 20

[Command]
name = "barrier"
command = ~B, D, x
time = 15

[Command]
name = "barrier2"
command = ~B, D, y
time = 15

[Command]
name = "dash_x"
command = ~F, F, x

[Command]
name = "dash_y"
command = ~F, F, y

[Command]
name = "dash_a"
command = ~F, F, a

[Command]
name = "dash_b"
command = ~F, F, b

[Command]
name = "counter"
command = x+a
time = 1

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
name = "recovery";Required (do not remove)
command = x+y
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
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holddiagfwd";Required (do not remove)
command = /$F+D
time = 1

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
name = "hold_a";Required (do not remove)
command = /a
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /b

time = 1
[Command]
name = "hold_c";Required (do not remove)
command = /c
time = 1

[Command]
name = "hold_x";Required (do not remove)
command = /x
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /y
time = 1

[Command]
name = "hold_z";Required (do not remove)
command = /z
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

;---------------------------------------------------------------------------
; 2. State entry
; --------------
[Statedef -1]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;============================= K E Z========================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;       A ^ b N
[State -1,]
type = ChangeState
value = 3000
triggerall = command = "bakuretsu"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && movecontact
;trigger14 = stateno = 910 && movecontact

;      ͒e
[State -1,]
type = ChangeState
value = 3100
triggerall = command = "super"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && movecontact

;    ь  E C
[State -1,]
type = ChangeState
value = 3200
triggerall = command = "makankousappou"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && movecontact

;  󒆖  ь  E C
[State -1,]
type = ChangeState
value = 3260
triggerall = command = "makankousappou"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

;---------------------------------------------------------------------------

;  \ j b N A ^ b N i  j
[State -1]
type = ChangeState
value = 2200
triggerall = command = "tatsumaki"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && movecontact

;  \ j b N A ^ b N i   j
[State -1]
type = ChangeState
value = 2250
triggerall = command = "tatsumaki2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && movecontact

;---------------------------------------------------------------------------

;  W     s   O j [   t g i   j
[State -1]
type = ChangeState
value = 2150
triggerall = command = "attack2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 910 && movecontact
trigger14 = stateno = 900 && MoveContact
trigger15 = stateno = 5120

;  W     s   O j [   t g i  j
[State -1]
type = ChangeState
value = 2100
triggerall = command = "attack"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 910 && movecontact
trigger14 = stateno = 900 && MoveContact
trigger15 = stateno = 5120

;---------------------------------------------------------------------------

;---------------- ~ X e B b N A ^ b N i   j
[State -1, ]
type = ChangeState
value = 2300
triggerall = (command = "mystic2")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && MoveContact

; ~ X e B b N X   [ i   ^ ߁j
[State -1, ]
type = ChangeState
value = 2302
triggerall = (stateno = 2300) && (movehit=1)
triggerall = (command = "holdfwd")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2300) && (AnimElem = 4, >=1 && AnimElem = 4, <= 1)
;trigger3 = (stateno = 2300) && (movehit)

; ~ X e B b N X   [ i   ^   j
[State -1, ]
type = ChangeState
value = 2301
triggerall = (stateno = 2300) && (movehit=1)
triggerall = (command = "holdfwd")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2300) && (AnimElem = 4, >=1 && AnimElem = 8, <= 1)
;trigger3 = (stateno = 2300) && (movehit)


;-------------- ~ X e B b N A ^ b N i  j
[State -1, ]
type = ChangeState
value = 2350
triggerall = (command = "mystic")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && MoveContact

 ~ X e B b N X   [ i  ^ ߁j
[State -1, ]
type = ChangeState
value = 2352
triggerall = (stateno = 2350) && (movehit=1)
triggerall = (command = "holdfwd")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2350) && (AnimElem = 4, >=1 && AnimElem = 4, <= 1)
;trigger3 = (stateno = 2350) && (movecontact)

 ~ X e B b N X   [ i  ^   j
[State -1, ]
type = ChangeState
value = 2351
triggerall = (stateno = 2350) && (movehit=1)
triggerall = (command = "holdfwd")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2350) && (AnimElem = 4, >=1 && AnimElem = 8, <= 1)
;trigger3 = (stateno = 2350) && (movecontact)


;---------------------------------------------------------------------------

;  ǐՃG l   M [ e i  j
[State -1]
type = ChangeState
value = 2010
triggerall = command = "hadouken"
;triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && MoveContact

;  ǐՃG l   M [ e i   j
[State -1]
type = ChangeState
value = 2000
triggerall = command = "hadouken2"
;triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------

;      g i  j
[State -1,]
type = ChangeState
value = 2050
triggerall = command = "barrier"
triggerall = power >= 100
triggerall = numproj = 0
triggerall = var(50) > 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && MoveContact

;      g i   j
[State -1,]
type = ChangeState
value = 2060
triggerall = command = "barrier2"
triggerall = power >= 100
triggerall = numproj = 0
triggerall = var(50) > 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------

;    r(  )
[State -1, ]
type = ChangeState
value = 670
triggerall = (command = "tatsumaki")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

;    r(  )
[State -1, ]
type = ChangeState
value = 680
triggerall = (command = "tatsumaki2")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)


;---------------------------------------------------------------------------
;============================    Z=========================================
;---------------------------------------------------------------------------

; _ b V  
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; o b N X e b v
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = (command = "BB") && (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; 󒆃_ b V  
[State -1, Fwd]
type = ChangeState
value = 110
trigger1 = (command = "FF") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
; 󒆃o b N _ b V  
[State -1, Back]
type = ChangeState
value = 112
triggerall = vel x <= 0
trigger1 = (command = "BB") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
;     
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;  c     i J E   ^ [ j
[State -1]
type = ChangeState
value = 700
triggerall = command = "counter" ^^ command = "z"
triggerall = var(6) > 0
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000

;---------------------------------------------------------------------------
;      ړ  (   )
[State -1]
type = ChangeState
value = 1000
triggerall = command = "counter" ^^ command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102

;---------------------------------------------------------------------------
;      ړ  ( O  )
[State -1]
type = ChangeState
value = 1001
triggerall = command = "counter" ^^ command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; _ b V       ړ  ( O  )
[State -1]
type = ChangeState
value = 1001
triggerall = stateno = 100 || stateno = 101 || stateno = 102
triggerall = ctrl = 0
trigger1 = command = "hold_x" && command = "hold_a" 
trigger2 = command = "hold_z"
trigger3 = command = "hold_c"

;---------------------------------------------------------------------------
;  C ͗   
[State -1]
type = ChangeState
value = 4500
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"

;---------------------------------------------------------------------------
;    
[State -1, ]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y") && (P2BodyDist X <= 10) && (P2Movetype != H) && (p2statetype != A)
trigger1 = (ctrl) && (p2statetype = C) || (ctrl) && (p2statetype = S)


;---------------------------------------------------------------------------
;======================= _ b V   U  ========================================
;---------------------------------------------------------------------------

; _ b V    p   `
[State -1, ]
type = ChangeState
value = 900
triggerall = stateno = 101
trigger1 = command = "hold_x"

; X   C f B   O L b N
[State -1, ]
type = ChangeState
value = 910
triggerall = stateno = 101
trigger1 = command = "hold_a"

; _ b V         U  
[State -1, ]
type = ChangeState
value = 920
triggerall = stateno = 101
trigger1 = command = "hold_y"

; O A r
[State -1, ]
type = ChangeState
value = 930
triggerall = stateno = 101
trigger1 = command = "hold_b"

;---------------------------------------------------------------------------
;============================ ʏ Z=========================================
;---------------------------------------------------------------------------

;       L b N i ߋ    j 
[State -1, ]
type = ChangeState
value = 260
triggerall = (command = "b") && (command != "holddown") && (P2BodyDist X <= 16)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 900 && MoveContact
;---------------------------------------------------------------------------
;       L b N
[State -1, ]
type = ChangeState
value = 270
triggerall = (command = "b") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
;trigger9 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------

;      L b N i ߋ    j
[State -1, ]
type = ChangeState
value = 271
triggerall = (command = "a") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------
;      L b N
[State -1, ]
type = ChangeState
value = 250
triggerall = (command = "a") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------

;       p   ` i ߋ    j
[State -1, ]
type = ChangeState
value = 210
triggerall = (command = "y") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 900 && MoveContact
;---------------------------------------------------------------------------
;       p   `
[State -1, ]
type = ChangeState
value = 220
triggerall = (command = "y") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------

;      p   ` i ߋ    j
[State -1, ]
type = ChangeState
value = 211
triggerall = (command = "x") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 900 && MoveContact
;---------------------------------------------------------------------------
;      p   `
[State -1, ]
type = ChangeState
value = 200
triggerall = (command = "x") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 200) && (AnimElem = 2,>4 || MoveContact)
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 900 && MoveContact


;---------------------------------------------------------------------------
;       U  
[State -1, ]
type = ChangeState
value = 420
triggerall = (command = "y") && (command = "holddiagfwd")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 211 && MoveContact
trigger6 = stateno = 271 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 900 && MoveContact


;---------------------------------------------------------------------------
;============================   Ⴊ  =========================================
;---------------------------------------------------------------------------

;   ݋  L b N
[State -1, ]
type = ChangeState
value = 460
triggerall = (command = "b") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 900 && MoveContact
;---------------------------------------------------------------------------
;   ݎ L b N
[State -1, ]
type = ChangeState
value = 450
triggerall = (command = "a") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 450) && (AnimElem = 2,>5 || MoveContact)
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 211 && MoveContact
trigger6 = stateno = 271 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------
;   ݋  p   `
[State -1, ]
type = ChangeState
value = 410
triggerall = (command = "y") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = (stateno = 200 || stateno = 211) && (movecontact)
trigger4 = (stateno = 250 || stateno = 271) && (movecontact)
trigger5 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------
;   ݎ p   `
[State -1, ]
type = ChangeState
value = 400
triggerall = (command = "x") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (AnimElem = 2,>5 || MoveContact)
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 900 && MoveContact


;---------------------------------------------------------------------------
;============================ 󒆋Z=========================================
;---------------------------------------------------------------------------

; W     v   L b N
[State -1, ]
type = ChangeState
value = 660
triggerall = (command = "b")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
;---------------------------------------------------------------------------
; W     v  L b N
[State -1, ]
type = ChangeState
value = 651
triggerall = (command = "a") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601) && (movecontact)
;---------------------------------------------------------------------------
;     W     v  L b N
[State -1, ]
type = ChangeState
value = 650
triggerall = (command = "a") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
;---------------------------------------------------------------------------
; W     v   p   `
[State -1, ]
type = ChangeState
value = 620
triggerall = (command = "y") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601 || stateno = 651) && (movecontact)
;---------------------------------------------------------------------------
;     W     v   p   `
[State -1, ]
type = ChangeState
value = 610
triggerall = (command = "y") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 650) && (movecontact)
;---------------------------------------------------------------------------
;     W     v  p   `
[State -1, ]
type = ChangeState
value = 600
triggerall = (command = "x") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =600) && (AnimElem = 2,>4) && (movecontact)
;---------------------------------------------------------------------------
; W     v  p   `
[State -1, ]
type = ChangeState
value = 601
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =601) && (AnimElem = 2,>4)  && (movecontact)


