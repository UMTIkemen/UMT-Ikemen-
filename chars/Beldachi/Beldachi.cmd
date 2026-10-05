
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

;-| Custom AI |------------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F, U, D, F 
time = 0
 
[Command]
name = "CPU2"
command = U, B, F, U, D, F
time = 0
 
[Command]
name = "CPU3"
command = U, D, D, U, D, F
time = 0
 
[Command]
name = "CPU4"
command = U, F, U, B, U, D, F
time = 0
 
[Command]
name = "CPU5"
command = B, B, B, U, B, U, D, F
time = 0
 
[Command]
name = "CPU6"
command = U, D, B, U, B, U, D, F
time = 0
 
[Command]
name = "CPU7"
command = F, F, B, U, B, U, D, F
time = 0
 
[Command]
name = "CPU8"
command = U, D, U, U, B, U, D, F
time = 0
 
[Command]
name = "CPU9"
command = F, B, B, U, B, U, D, F
time = 0
 
[Command]
name = "CPU10"
command = F, F, B, B, U, B, U, D, F
time = 0

[Command]
name = "CPU11"
command = F, F, B, B, U, B, U, D, F
time = 0

;-| Super Motions |--------------------------------------------------------

[Command]
name = "Super Cartwheel"
command = ~D, DF, F, D, DF, F, x+y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" 
command = x,$F
time = 3

[Command]
name = "Cartwheel Normal"
command = ~D, DF, F, x

[Command]
name = "Cartwheel Strong"
command = ~D, DF, F, y

[Command]
name = "Backflip Normal"
command = ~D, DB, B, a

[Command]
name = "Backflip Strong"
command = ~D, DB, B, b

[Command]
name = "Tornado"
command = ~D, DB, B, y

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
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
name = "start"
command = s
time = 1

;-| Single Direction |---------------------------------------------------------
[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1
;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Statedef -1]
; --- HITOVERRIDES (-1 or -2) ---
[State -1, Standing Parry]
type = HitOverride
trigger1 = var(59)<=0 && roundstate=2 && statetype=S
trigger1 = command="fwd" && command!="back" && command!="up" && command!="down"
trigger1 = ctrl || stateno=700 || stateno=701
trigger1 = var(21):=1
trigger2 = (stateno=[150,153])
trigger2 = var(21):=-1
attr = SA,AA,AP
stateno = 8000
slot = 0
time = ifelse((stateno=[150,153]),4,8)

[State -1, Crouch Parry]
type = HitOverride
trigger1 = var(59)<=0 && roundstate=2 && statetype=S          ; must be crouching
trigger1 = command = "holddown" && command != "holdfwd"  ; ↓ + →
trigger1 = command != "holdback" && command != "holdup"
trigger1 = Ctrl                   ; has control
attr = SCA, NA, HA, NP, SP, HP    ; overrides all blockable attacks/projectiles
stateno = 8010                    ; your crouch parry state
slot = 0
time = 8                          ; active frames (adjust for feel)
ignorehitpause = 1
persistent = 1

[State -1, Air Parry]
type = HitOverride
trigger1 = var(59)<=0 && roundstate=2 && statetype=A
trigger1 = command="down" && command!="up" && command!="fwd" && command!="back"
trigger1 = ctrl || stateno=700 || stateno=701
trigger1 = var(21):=3
trigger2 = (stateno=[150,153])
trigger2 = var(21):=-3
attr = SA,AA,AP
stateno = 8020
slot = 0
time = ifelse((stateno=[150,153]),4,8)

[State -1, Reset Parry]
type = HitOverride
trigger1 = (statetype=S || statetype=C) && var(21)!=1 && var(21)!=-1 && var(21)!=2 && var(21)!=-2
trigger2 = statetype=A && var(21)!=3 && var(21)!=-3
trigger3 = movetype=A || (movetype=H && (stateno!=[120,155]))
trigger4 = !ctrl
slot = 0
time = 0





;AI

; AI switch -> ON
[State -1, Activate AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
v = 59
value = 1

[State -1]
Type = VarSet
Trigger1 = 1
var(58) = (AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

[State -1, AI] ; AI light punch
type = ChangeState
value = 200; <----------------------- State no. of the animation you want the CPU to perform
triggerall = roundstate = 2; <--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(59) = 1; <------------ AI variable that must be used in every CPU command
triggerall = statetype != A; <--------- Trigger when the char is not in air
Triggerall = random < var(58)*1.0 ; <---------- Trigger the move in 50% of the times the conditions is met (i'll explain more)
triggerall = p2statetype != L; <------- Trigger when opponent is not lying on the floor
triggerall = p2bodydist x = [0,40]; <--- Trigger when the opponent is between 0 to 40 pixels away horizontaly
triggerall = p2statetype != A; <------- Trigger when the opponent is not in air
trigger1 = ctrl = 1; <----------------- Character can be controled (Not performing a move)

[State -1, AI] ; AI heavy punch
type = ChangeState
value = 210
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,40]
trigger1 = ctrl = 1

[State -1, AI] ; AI light kick
type = ChangeState
value = 220
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,40]
triggerall = p2statetype != A
trigger1 = ctrl = 1

[State -1, AI] ; AI heavy kick
type = ChangeState
value = 230
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,40]
trigger1 = ctrl = 1

;Ducking AI
[State -1, AI] ; AI Light punch
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,40]
triggerall = p2statetype != A
trigger1 = ctrl = 1

[State -1, AI] ; AI heavy punch
type = ChangeState
value = 410
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,40]
triggerall = p2statetype != A
trigger1 = ctrl = 1

[State -1, AI] ; AI light kick
type = ChangeState
value = 430
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,40]
triggerall = p2statetype != A
trigger1 = ctrl = 1

[State -1, AI] ; AI heavy kick
type = ChangeState
value = 440
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,40]
triggerall = p2statetype != A
trigger1 = ctrl = 1

;Jumping AI
[State -1, AI] ; AI Light punch
type = ChangeState
value = 600
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype = A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,40]
trigger1 = ctrl = 1

[State -1, AI] ; AI heavy punch
type = ChangeState
value = 610
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype = A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,40]
trigger1 = ctrl = 1

[State -1, AI] ; AI light kick
type = ChangeState
value = 630
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype = A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,40]
trigger1 = ctrl = 1

[State -1, AI] ; AI heavy kick
type = ChangeState
value = 640
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype = A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,40]
trigger1 = ctrl = 1

;Special Moves

[State -1, AI] ; AI Light Backflip
type = ChangeState
value = 1100
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,40]
triggerall = p2statetype != L
trigger1 = ctrl = 1

[State -1, AI] ; AI Heavy Backflip
type = ChangeState
value = 1110
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,40]
trigger1 = ctrl = 1

[State -1, AI] ; AI Heavy Cartwheel
type = ChangeState
value = 1000
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x > 80
trigger1 = ctrl = 1

[State -1, AI] ; AI Light Cartwheel
type = ChangeState
value = 1010
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x > 40
triggerall = p2statetype != L
trigger1 = ctrl = 1

[State -1, AI] ; AI Tornado Spin
type = ChangeState
value = 1200
triggerall = roundstate = 2
triggerall = var(59) = 1
Triggerall = random < var(58)*1.0 
;triggerall = !(Vel Y > 20 && Pos Y >= -20)
trigger1 = anim = 41
trigger2 = anim = 42
trigger3 = anim = 43
;triggerall = p2bodydist x > 40
trigger1 = ctrl = 1

[State -1, AI] ; AI Backflip Suplex
type = ChangeState
value = 800
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
Triggerall = random < var(58)*1.0 
triggerall = p2statetype != L
triggerall = p2bodydist x < 10
trigger1 = anim != 41
trigger2 = anim != 42
trigger3 = anim != 43
trigger1 = ctrl = 1

;AI Super

[State -1, AI] ; AI Super
type = ChangeState
value = 800
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = random < 500
triggerall = p2statetype != L
trigger1 = p2bodydist X < 3
triggerall = p2statetype != L
Triggerall = random < var(58)*1.0 
triggerall = power >= 1000
trigger1 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330
trigger1 = ctrl = 1





;--|-AI Defense-|-----------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X <= 250) && (random <= 499)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X <= 250) && (random <= 499)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X <= 250) && (random <= 299)
value = 132

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X <= 250) && (random <= 199)
value = 710

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X <= 250) && (random <= 199)
value = 720

;-|-AI Combo Attempt-|----------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I || p2movetype = A) && (statetype = S) 
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X = [0,20]) && (random <= 400)
value = 200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I || p2movetype = A) && (statetype = S)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X = [0,30]) && (random <= 800)
trigger2 = (p2bodydist X = [0,20]) && (random <= 500) && (stateno = 200 && movehit)
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = S)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X = [0,30]) && (random <= 400) && (stateno = 230 && movehit)
trigger2 = (p2bodydist X = [0,40]) && (random <= 200)
trigger3 = (p2bodydist X = [0,40]) && (random <= 550) && (p2statetype = C)
value = 210

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = S)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X = [0,30]) && (random <= 779) && (stateno = 230 && movehit)
trigger2 = (p2bodydist X = [0,40]) && (random <= 300)
value = 240

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = C)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X = [0,20]) && (random <= 450)
value = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = C)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X = [0,20]) && (random <= 450) && (prevstateno = 400)
value = 430

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = C)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X = [0,20]) && (random <= 779) && (prevstateno = 430)
value = 440

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = C)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X = [0,20]) && (random <= 800) && (prevstateno = 440)
value = 410

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = A)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X = [0,20]) && (random <= 400)
value = 600

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = A)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X = [0,20]) && (random <= 800) && (prevstateno = 600)
value = 630

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = A)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X = [0,30]) && (random <= 450) && (prevstateno = 630)
value = 610

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = A)
Triggerall = random < var(58)*1.0 
trigger1 = (p2bodydist X = [0,30]) && (random <= 779) && (prevstateno = 610)
value = 640


;===========================================================================
;Supers
;-----------------------
;Super Cartwheel
[State -1, Super Cartwheel]
type = ChangeState
value = 3000
triggerall = command = "Super Cartwheel"
triggerall = var(59) != 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330

;===========================================================================
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330
var(1) = 1
;---------------------------------------------------------------------------
;Cartwheel Normal
[State -1, Cartwheel Normal]
type = ChangeState
value = 1000
triggerall = command = "Cartwheel Normal"
triggerall = var(59) != 1
trigger1 = var(1)
;---------------------------------------------------------------------------
;Cartwheel Strong
[State -1, Cartwheel Strong]
type = ChangeState
value = 1010
triggerall = command = "Cartwheel Strong"
triggerall = var(59) != 1
trigger1 = var(1)
;---------------------------------------------------------------------------
;Backflip Normal
[State -1, Backflip Normal]
type = ChangeState
value = 1100
triggerall = command = "Backflip Normal"
triggerall = var(59) != 1
trigger1 = var(1)

;---------------------------------------------------------------------------
;Backflip Strong
[State -1, Backflip Strong]
type = ChangeState
value = 1110
triggerall = command = "Backflip Strong"
triggerall = var(59) != 1
trigger1 = var(1)

;---------------------------------------------------------------------------
[State -1, Tornado]
type = ChangeState
value = 1200
triggerall = command = "Tornado"
triggerall = var(59) != 1
triggerall = statetype = A
trigger1 = anim = 41
trigger2 = anim = 42
trigger3 = anim = 43
trigger4 = var(1)

;---------------------------------------------------------------------------
[State -1, Walljump]
type = ChangeState
value = 60
triggerall = (StateType = A) && (Ctrl)
;triggerall = anim != 2000
triggerall = BackEdgeDist > 5 && FrontEdgeBodyDist <= 5
trigger1 = command = "holdback" && command = "holdup" 
trigger1 = stateno != 2000 || stateno != 2001
;persistent = 0
;------------------------
[State -1, WalljumpBack]
type = ChangeState
value = 61
triggerall = (StateType = A) && (Ctrl)
;triggerall = anim != 2000
triggerall = BackEdgeDist <= 5 && FrontEdgeBodyDist > 5
trigger1 = command = "holdfwd" && command = "holdup" 
persistent = 0

;---------------------------------------------------------------------------
;===========================================================================
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

;===========================================================================
;---------------------------------------------------------------------------
;Knee
[State -1, Knee]
type = ChangeState
value = 700
triggerall = command = "a"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
;trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;Elbow
[State -1, Elbow]
type = ChangeState
value = 710
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = command != "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
triggerall = command != "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;Suplex Backflip
[State -1, Suplex Backflip]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(59) != 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(59) != 1
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(59) != 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(59) != 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(59) != 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = var(59) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = var(59) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = stateno = 1350

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = var(59) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = var(59) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = stateno = 1350
