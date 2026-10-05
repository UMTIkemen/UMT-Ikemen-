; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below.
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10




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
command.buffer.time = 1


;-| Special Motions |------------------------------------------------------

[Command]
name = "Astral Heat: Patriot Apocalypse"
command = F, DF, D, DB, B, F, z
time = 60

[Command]
name = "Distortion: Scud Punishment"
command = D, DB, B, D, DB, B, a
time = 60

[Command]
name = "Distortion: Black Hawk Stinger"
command = D, DF, F, D, DF, F, a
time = 60

[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "upper_b2"
command = ~B, D, DB, b
time = 20

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "DD_a"
command = ~D, D, a

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "~D, D, x"
command = ~D, D, x

[Command]
name = "~D, D, y"
command = ~D, D, y

[Command]
name = "~D, D, z"
command = ~D, D, z

[Command]
name = "~D, D, b"
command = ~D, D, b

[Command]
name = "DD_c"
command = ~D, D, c
time = 15

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "F_b"
command = F, b

[Command]
name = "F_c"
command = F, c

[Command]
name = "b+c"
command = b+c
time = 20

[Command]
name = "x+y"
command = x+y
time = 20

[Command]
name = "x+y+z"
command = x+y+z
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 14

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 14

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
command = /$F,x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /$B,x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /$F,y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = /$B,y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /$F,z
time = 1
[Command]
name = "recovery";Required (do not remove)
command = /$B,z
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

[Command]
name = "super_jump"    
command = $D, $U
time = 20

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 5

[Command]
name = "b"
command = b
time = 3

[Command]
name = "c"
command = c
time = 3

[Command]
name = "x"
command = x
time = 3

[Command]
name = "y"
command = y
time = 3

[Command]
name = "z"
command = z
time = 3

[Command]
name = "up"
command = U
time = 3

[Command]
name = "down"
command = D
time = 3

[Command]
name = "back"
command = B
time = 3

[Command]
name = "fwd"
command = F
time = 3

[Command]
name = "start"
command = s
time = 3

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
name = "hold_a"
command = /a

[Command]
name = "hold_b"
command = /b

[Command]
name = "hold_y"
command = /y

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
;===========================================================================
[State -1]
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

;---------------------------------------------------------------------------
; AI switch -> ON
[State -1, Activate AI]
type = Varset
triggerall = var(59) != 1
;trigger1 = 1
trigger1 = roundstate = 2
trigger1 = ailevel
;trigger1 = teamside = 1
v = 59
value = 1
Ignorehitpause=1

[State -1, When To Astral Heat: Patriot Apocalypse]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A) 
triggerall = power > 999            
triggerall = p2statetype != L 
triggerall = life < (900 +(200*palno = [11,12]))
;triggerall = palno != 12  
triggerall = var(57) != 1 && palno != 12 || var(57) < 3 && palno = 12 
;triggerall = palno != 10
triggerall = p2dist X = [-5,125 - (enemy,movetype = H * 15)]  
triggerall = p2dist y = [-250,25]  
triggerall = enemy,vel x = [-3,3]   
;triggerall = enemy,vel y > -2 
triggerall = var(54) = 1 || palno = [11,12]  
triggerall = (enemy,life < ((enemy,lifemax / 100) * (35.1+(5*palno = [10,12])))) || (palno = [11,12])    
triggerall = roundno > 1 || palno = [11,12]  
;triggerall = !inguarddist || palno = [11,12]   
triggerall = enemynear,stateno != [5200,5210] 
triggerall = enemynear,stateno != 5120 
;triggerall = enemy,stateno != [10000,10019]                        
trigger1 = ctrl || stateno = 5120 && time > 13 
;trigger1 = enemynear,movetype != A 
trigger1 = random < 100 + (900 * (life < 350))
trigger2 = enemy,moveguarded
trigger2 = !enemy,ishelper
trigger2 = gethitvar(slidetime) = 0     
trigger2 = facing 
trigger2 = ctrl || stateno = 5120 && time > 13 
trigger2 = enemynear,movetype != A 
trigger3 = stateno = 710 && animtime = 0 || stateno = 711 && animtime = 0 || stateno = 712 && animtime = 0
trigger3 = enemynear,movetype != A 
trigger4 = stateno = 400 && movecontact 
trigger5 = stateno = 410 && movecontact 
trigger6 = stateno = 211 && movecontact 
trigger7 = stateno = 220 && movecontact 
trigger8 = stateno = 200 && movecontact 
trigger9 = stateno = 210 && movecontact
trigger10 = stateno = 1000 && movecontact
trigger11 = stateno = 1010 && movecontact
trigger12 = stateno = 1100 && movecontact
trigger13 = stateno = 1110 && movecontact
trigger14 = stateno = 1200 && movecontact
trigger15 = stateno = 1210 && movecontact
trigger16 = stateno = 1300 && movecontact
trigger17 = stateno = 1310 && movecontact
trigger18 = stateno = 806 && movecontact
value = 4000 

[State -1, When to do a Desperate Overdrive]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = alive 
triggerall = power > 499
triggerall = life < 600
triggerall = enemy,life = [300,380]
triggerall = var(58) >= 10000
;triggerall = enemy,life = [200,400]
triggerall = p2dist X = [0,200]
triggerall = enemy,statetype != A
triggerall = enemy,statetype != L
triggerall = fvar(1) = 0 
triggerall = enemy,movetype != A
triggerall = enemy,movetype != H
triggerall = statetype != A
triggerall = numhelper(1998) = 1 || numhelper(1999) = 1
triggerall = enemynear,stateno != [5200,5210] 
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 200 || stateno = 210 || stateno = 211 || stateno = 220 || stateno = 420
trigger2 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger2 = numhelper(1998) = 1 
trigger2 = moveguarded
trigger3 = stateno = 400 || stateno = 410 || stateno = 420 
trigger3 = enemy,stateno = 131 || enemy,stateno = [152,153]
trigger3 = numhelper(1999) = 1 
trigger3 = moveguarded
value = 900

[State -1, When to Burst]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = alive 
triggerall = var(58) >= 10000
triggerall = numexplod(10010) = 0
triggerall = life < 350
triggerall = p2dist X = [-75,75]
triggerall = p2dist Y = [-75,75]
trigger1 = !hitshakeover
trigger1 = movetype = H  
trigger1 = random < 500  
value = 700

[State -1, When To Distortion: Scud Punishment]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != L       
triggerall = power > 499                 
triggerall = p2dist X = [-10,135]
triggerall = p2dist Y = [-80,10]
;triggerall = enemy,statetype != A 
triggerall = enemynear,vel y = [-2,5]   
;triggerall = enemynear,vel x = [-4,2] 
triggerall = numexplod(80001) = 0   
triggerall = numhelper(1998) = 0 && numhelper(1999) = 0   
triggerall = fvar(1) = 0    
triggerall = enemy,stateno != [120,155]                                              
trigger1 = enemy,life >= 700  
trigger1 = stateno = 220 && movehit
trigger2 = palno = [10,12]
trigger2 = enemy,movetype = A
trigger2 = enemy,life > 700
trigger2 = random < 700
trigger2 = ctrl || stateno = 5120 && time > 13 
value = 3000

[State -1, When To Distortion: Black Hawk Stinger]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
;triggerall = p2statetype != L       
triggerall = power > 499                 
triggerall = p2dist X = [0,225]
triggerall = p2dist y = [-85,0]
triggerall = enemy,vel y = [-1,9]
triggerall = fvar(1) = 0   
triggerall = enemy,movetype != A || palno = [10,12]  
triggerall = enemynear,stateno != [5120,5210]                        
triggerall = !inguarddist || palno = [10,12]      
triggerall = numexplod(90000) = 0  
triggerall = numexplod(80002) = 0    
triggerall = prevstateno != 3100                                            
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger1 = life < 200  
trigger1 = random < 100
trigger1 = enemy,stateno != [120,155] 
trigger1 = enemy,statetype != L
trigger1 = enemy,statetype != A
trigger2 = ctrl || stateno = 5120 && time > 13 
trigger2 = enemy,life <= 300 
trigger2 = numhelper(1998) = 1 
trigger2 = numhelper(1999) = 1
trigger2 = enemy,statetype != L
trigger3 = stateno = 200 || stateno = 210 || stateno = 211 || stateno = 220 || stateno = 420
trigger3 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger3 = numhelper(1998) = 1 
trigger3 = moveguarded
trigger4 = stateno = 400 || stateno = 410 || stateno = 420 
trigger4 = enemy,stateno = 131 || enemy,stateno = [152,153]
trigger4 = numhelper(1999) = 1 
trigger4 = moveguarded
trigger5 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger5 = Ctrl || stateno = 5120 && time > 13 
trigger5 = random < 300
trigger5 = numhelper(1998) = 1
trigger6 = enemy,stateno = 131 || enemy,stateno = [152,153]
trigger6 = Ctrl || stateno = 5120 && time > 13 
trigger6 = random < 300
trigger6 = numhelper(1999) = 1
trigger7 = ctrl || stateno = 52 && ctrl
trigger7 = enemy,statetype = L
trigger7 = enemy,stateno = [15000,15999] 
trigger7 = frontedgedist > 100
trigger8 = prevstateno = 2800
trigger8 = enemy,movetype = H
trigger8 = ctrl
trigger9 = palno = [10,12]
trigger9 = enemy,movetype = A
trigger9 = random < 200 + ((numhelper(1998) = 1) * 200) + ((numhelper(1999) = 1) * 200) + ((enemy,life < 300) * 400)
trigger9 = ctrl || stateno = 5120 && time > 13 
value = 3100

[State -1, When To Distortion Overdrive: Black Hawk Stinger]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
;triggerall = p2statetype != L       
triggerall = power > 499                 
triggerall = p2dist X = [0,225]
triggerall = p2dist y = [-85,0]
triggerall = enemy,vel y = [-1,9]
triggerall = fvar(1) = 0   
triggerall = enemynear,stateno != [5120,5210]                        
triggerall = !inguarddist || palno = [10,12]     
triggerall = numexplod(90000) = 1                                               
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger1 = life < 150  
trigger1 = random < 100
trigger1 = enemy,stateno != [120,155]
trigger2 = ctrl || stateno = 5120 && time > 13 
trigger2 = enemy,life <= 400 
trigger2 = numhelper(1998) = 1 
trigger2 = numhelper(1999) = 1
trigger2 = enemy,statetype != L
trigger3 = stateno = 200 || stateno = 210 || stateno = 211 || stateno = 220 || stateno = 420
trigger3 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger3 = numhelper(1998) = 1 
trigger3 = moveguarded
trigger4 = stateno = 400 || stateno = 410 || stateno = 420 
trigger4 = enemy,stateno = 131 || enemy,stateno = [152,153]
trigger4 = numhelper(1999) = 1 
trigger4 = moveguarded
trigger5 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger5 = Ctrl || stateno = 5120 && time > 13 
trigger5 = random < 300
trigger5 = numhelper(1998) = 1
trigger6 = enemy,stateno = 131 || enemy,stateno = [152,153]
trigger6 = Ctrl || stateno = 5120 && time > 13 
trigger6 = random < 300
trigger6 = numhelper(1999) = 1
trigger7 = var(12) < 120
trigger7 = ctrl
trigger8 = stateno = 0 || stateno = 52 || stateno = 5120 && time > 13 || stateno = 140
trigger8 = var(12) > 0
trigger8 = ctrl
trigger9 = prevstateno = 2800
trigger9 = enemy,movetype = H
trigger9 = ctrl
trigger10 = palno = [10,12]
trigger10 = enemy,movetype = A
trigger10 = random < 200 + ((numhelper(1998) = 1) * 200) + ((numhelper(1999) = 1) * 200) + ((enemy,life < 400) * 800)
trigger10 = ctrl || stateno = 5120 && time > 13 
value = 3110

[State -1, When to Counter Assault]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = alive 
triggerall = power > 499
triggerall = backedgedist < 100
triggerall = p2dist X = [-15,125]
triggerall = p2dist Y = [-75,0]
trigger1 = hitshakeover || !hitshakeover
trigger1 = stateno = [150,153]    
trigger1 = random < 200 
trigger1 = life < 400
trigger2 = hitshakeover || !hitshakeover
trigger2 = stateno = [150,153]    
trigger2 = random < 300  
trigger2 = power > 999
value = 300

[State -1, When to Hop Backwards]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = backedgedist > 60
triggerall = (enemy,movetype != H) * (enemy,stateno != [10000,10053])
triggerall = prevstateno != 105
triggerall = fvar(1) = 0
trigger1 = (enemynear,hitdefattr=SCA,AT) || (enemynear,hitdefattr=SCA,ST) || (enemynear,hitdefattr=SCA,HT) || (enemynear,hitdefattr=SCA,NT)
trigger1 = inguarddist
trigger1 = random <= 600
trigger1 = Ctrl || stateno = [130,131]
;trigger2 = enemynear,stateno = 5120 || enemynear,stateno = [5200,5210] 
;trigger2 = p2dist x < 75
;trigger2 = ctrl
;trigger2 = random < 250
trigger2 = p2dist x = [-30,30]
trigger2 = p2dist y = [50,200]
trigger2 = enemy,movetype = A
trigger2 = random <= 500
trigger2 = backedgedist > 60
trigger2 = ctrl
trigger3 = stateno = 200 && animtime = 0 || stateno = 400 && animtime = 0 || stateno = 210 && animtime = 0 || stateno = 410 && animtime = 0
trigger3 = p2dist x = [-65,65]
trigger3 = !Movehit
trigger3 = enemy,movetype != H
trigger3 = random <= 250
trigger3 = enemy,stateno != [5120,5210]
trigger4 = p2dist x = [-30,30]
trigger4 = p2dist y = [-300,-150]
trigger4 = enemy,movetype = A
trigger4 = random <= 500
trigger4 = backedgedist > 60
trigger4 = ctrl
;trigger5 = frontedgedist < 80
;trigger5 = enemy,statetype = L
;trigger5 = 
value = 105

[State -1, When To Dash Forward]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
;triggerall = stateno != 100
triggerall = frontedgedist > 100 
triggerall = fvar(1) = 0
trigger1 = Ctrl 
trigger1 = p2dist X >= (200 - ((palno = [10,12]) * 50))
trigger1 = random <= 5 + (250 * enemy,statetype = L) + ((palno = [10,12]) * 70)
trigger1 = enemynear,movetype != A
trigger2 = Ctrl 
trigger2 = enemy,statetype = A
trigger2 = enemy,movetype = H
trigger2 = enemy,vel x > 3
trigger2 = enemy,pos y < -50
trigger2 = random <= 400
trigger3 = p2dist x = [-30,30]
trigger3 = p2dist y = [-300,-150]
trigger3 = enemy,movetype = A
;trigger3 = backedgedist < 90
trigger3 = ctrl
value = 100

[State -1, When To Growler Field for Defense]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)        
;triggerall = enemy,stateno != [120,155]                       
triggerall = fvar(1) = 0           
;triggerall = stateno != [40,52]  
;triggerall = life > 150  
triggerall = p2dist y = [-150,150]
trigger1 = stateno = 140 || stateno = [130,131]
trigger1 = random < 300
trigger1 = p2dist y > -100
trigger1 = enemy,vel x = [-2,2]   
trigger1 = p2dist X = [-65,65]
trigger1 = facing != enemy,facing
trigger2 = enemynear,ishelper || enemynear,numproj > 0
trigger2 = stateno = 120 || stateno = 140 || stateno = 2702 && animtime = 0 && inguarddist || stateno = [130,131] 
trigger2 = p2dist x > 150
trigger2 = backedgedist < 100
trigger2 = random < 999
trigger3 = enemynear,ishelper || enemy,numproj > 0
trigger3 = p2dist x > 100 && random < 999
trigger3 = ctrl || stateno = 120 || stateno = 140 || stateno = 2702 && animtime = 0 && inguarddist|| stateno = [130,131] 
trigger3 = (enemy,hitdefattr=SCA,AP) || (enemy,hitdefattr=SCA,SP) || (enemy,hitdefattr=SCA,HP) || (enemy,hitdefattr=SCA,NP)
trigger3 = facing != enemy,facing
value = 2700

[State -1, When to Super Jump Against Zoning]
Type = ChangeState
Value = 41
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = frontedgedist > 75
triggerall = fvar(1) = 0
triggerall = stateno != [2100,2110]
trigger1 = stateno = 120 || stateno = 140 || stateno = [130,131] 
trigger1 = backedgedist < 85
trigger1 = p2dist x > 185
;trigger1 = !inguarddist

[State -1, AI Guarding, Hard AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = enemynear,movetype = A || inguarddist
triggerall = palno != 12
;trigger1 = inguarddist
trigger1 = ctrl
trigger1 = random <= 999
trigger1 = stateno != [102,103]
trigger2 = stateno = [130,155]
trigger2 = ctrl
trigger2 = inguarddist
trigger3 = stateno = [50,53]
trigger3 = inguarddist
trigger4 = stateno = 710 && time >= 14
;trigger4 = inguarddist
trigger5 = stateno = 711 && time >= 18
;trigger5 = inguarddist
trigger6 = stateno = 712 && animtime = 0
trigger6 = inguarddist
trigger7 = stateno = 100 && ctrl
trigger7 = inguarddist 
trigger8 = stateno = [102,103]
trigger8 = time > 4
trigger8 = inguarddist 
trigger9 = ctrl
trigger9 = time > 15
trigger10 = stateno = 5120 && time > 13
trigger10 = inguarddist 
trigger11 = stateno = 2702 && animelem = 8
;trigger11 = inguarddist
trigger12 = stateno = 2700 && animelem = 3 && anim = 2703
trigger13 = stateno = 105 && ctrl
trigger13 = inguarddist 
trigger14 = stateno = 210 && time < 10
trigger14 = inguarddist
trigger14 = palno = [10,12]
value = 120

[State -2, Recover]
type = changestate
triggerall = ailevel > 0 || var(59) = 1
triggerall = roundstate = 2
triggerall = alive && hitfall && gethitvar(fall.recover) && canrecover
trigger1 = stateno = 5030 || stateno=5035 || stateno=5050 || stateno=5071
trigger2 = var(30) = 1
value = 5205
ignorehitpause = 1

[State -2, Ground Recover]
type = changestate
triggerall = ailevel > 0 || var(59) = 1
triggerall = roundstate = 2
triggerall = alive && hitfall && gethitvar(fall.recover); && canrecover
trigger1 = stateno = [5080,5150]
value = 712
ignorehitpause = 1

[State -1, When To Ground Recover Roll Forwards]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = stateno = 5110 || stateno = 5150  
triggerall = alive          
triggerall = stateno != [710,712]       
trigger1 = backedgedist <= 40   
trigger1 = p2dist X = [-10,70] 
;trigger2 = p2dist X > 200                      
value = 710 

[State -1, When To Ground Recover Roll Backwards]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = stateno = 5110 || stateno = 5150  
triggerall = alive 
triggerall = stateno != [710,712]      
trigger1 = backedgedist != [-999,50]                
trigger1 = p2dist x = [0,68]
trigger1 = random <= 125                     
value = 711 

[State -1, When To Do Your Regular Old Recovery Faster]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = stateno = 5110 || stateno = 5150          
;triggerall = backedgedist >= 30 
triggerall = alive    
triggerall = stateno != [710,712]                
trigger1 = p2dist x = [71,999]
trigger1 = random <= 150             
trigger2 = p2dist x < -30 
trigger2 = random <= 150      
value = 5120

[State -1, When To Walk Forward]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
;triggerall = stateno != 20
triggerall = frontedgedist > 45
triggerall = fvar(1) = 0
trigger1 = Ctrl 
trigger1 = p2dist X > 45
trigger1 = random <= 300
trigger1 = enemy,statetype != L
value = 21

[State -1, When to AirDash Forwards]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 
triggerall = statetype = A
triggerall = numexplod(100001) < 1 
triggerall = frontedgedist > 75
triggerall = enemy,stateno != [10000,10051] 
triggerall = fvar(1) = 0
triggerall = prevstateno != 45
trigger1 = p2dist x = [150,400]
trigger1 = Random < 250
trigger1 = ctrl
trigger1 = time > 4
trigger1 = pos y < -60
trigger2 = enemy,movetype = H
trigger2 = p2dist x = [50,200]
trigger2 = random < 975
trigger2 = ctrl
trigger2 = time < 5
trigger2 = p2dist y = [-150,0]
trigger3 = backedgedist < 50
trigger3 = p2dist x = [0,75]
trigger3 = p2dist y = [100,200]
trigger3 = random < 100
trigger3 = ctrl
trigger4 = enemy,statetype = L
trigger4 = p2dist x = [225,300]
trigger4 = random < 200
trigger4 = ctrl
trigger4 = time < 5
trigger4 = pos y >= -60
trigger5 = p2dist x = [0,200]
trigger5 = enemy,statetype = A 
trigger5 = enemy,movetype != H
trigger5 = enemynear,vel x < -2
trigger5 = random < 75
trigger5 = ctrl
trigger5 = time > 4
trigger5 = pos y < -60
trigger6 = stateno = 120 || stateno = 132 || stateno = 140
trigger6 = p2dist x > 150
trigger6 = backedgedist < 80
trigger6 = pos y < -135
trigger6 = random < 800
trigger6 = !inguarddist
trigger7 = ctrl
trigger7 = enemy,statetype = L
trigger7 = enemy,stateno = [15000,15999] 
trigger7 = time > 4
trigger7 = pos y < -60
value = 102

[State -1, When to AirDash Backwards]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 
triggerall = statetype = A
triggerall = numexplod(100001) < 1 
triggerall = backedgedist > 75 
triggerall = enemy,stateno != [10000,10053]
triggerall = ctrl
triggerall = enemy,movetype != H
triggerall = fvar(1) = 0
triggerall = prevstateno != 45
;trigger1 = p2dist x = [0,150]
;trigger1 = random < 20
trigger1 = p2dist x <= 0
trigger1 = facing != enemy,facing
trigger1 = enemy,statetype != A
trigger1 = random < 20
;trigger3 = p2dist x = [0,200]
;trigger3 = enemy,statetype = A
;trigger3 = enemynear,vel x > 4
;trigger3 = random < 75
value = 103

[State -1, When To Throw]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != L 
triggerall = p2statetype != A                     
triggerall = p2dist X = [0,94] 
triggerall = palno != 12
triggerall = enemynear,stateno != [5200,5210] 
triggerall = enemynear,stateno != 5120 
triggerall = enemynear,prevstateno != 5120 
trigger1 = p2movetype != H
trigger1 = p2movetype != A                              
trigger1 = random <= 75  
trigger1 = Ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 140 || stateno = [130,131]
trigger2 = !enemynear,ishelper   
trigger2 = enemy,vel x = [0,9] 
trigger2 = random <= 100
trigger2 = p2movetype != H
trigger2 = p2movetype != A    
trigger3 = random <= 200
trigger3 = ctrl || stateno = 52
trigger3 = enemy,stateno = [120,155]
trigger4 = palno = [10,12]
trigger4 = numexplod(80000) = 0
trigger4 = Ctrl || stateno = 5120 && time > 13 
trigger4 = random < 850
trigger4 = fvar(1) = 0
value = 800

[State -1, When To Air Throw]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype = A)  
triggerall = p2statetype != L 
triggerall = p2statetype = A  
triggerall = p2movetype != H
triggerall = p2movetype != A 
triggerall = prevstateno != 45 
triggerall = (palno != [10,12] ) 
triggerall = enemynear,stateno != [5200,5210] 
triggerall = enemynear,stateno != 5120                        
trigger1 = p2dist X = [0,88+(enemy,vel x * 2)] 
trigger1 = p2dist Y = [-75,25-(enemy,vel x * 3)]                          
trigger1 = random <= 100 
trigger1 = Ctrl || stateno = 102 || stateno = 103  
value = 850

[State -1, When to Specifically Jump]
Type = ChangeState
Value = 40000
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = frontedgedist > 50
triggerall = enemy,movetype != A
triggerall = !inguarddist
triggerall = fvar(1) = 0
triggerall = stateno != [2100,2110]
trigger1 = enemy,StateType = A
trigger1 = enemy,movetype = H
trigger1 = p2dist X = [0,100]
trigger1 = p2dist y = [-150,-75]
trigger1 = enemy,vel y < 2
trigger1 = random < 25
trigger1 = Ctrl
trigger2 = enemy,StateType = A
trigger2 = enemy,movetype != H
trigger2 = p2dist X = [40,150]
trigger2 = random < 25
trigger2 = Ctrl
trigger2 = p2dist y = [-150,-75]
trigger2 = enemy,vel y = [-4,8]
;trigger3 = p2dist y = [-100,0]
;trigger3 = p2dist x = [100,200]
;trigger3 = random < 5
;trigger3 = Ctrl
;trigger3 = life > 250
;trigger3 = enemy,vel y = [-4,8]
trigger3 = p2dist y = [-100,0]
trigger3 = p2dist x > 200
trigger3 = random < 75
trigger3 = Ctrl
trigger3 = life > 250
trigger3 = enemy,vel y = [-4,8]
;trigger4 = ctrl || stateno = 52 && ctrl
;trigger4 = enemy,statetype = L
;trigger4 = enemy,stateno = [15000,15999] 
;trigger4 = random < 500

[State -1, When To Walk Backwards]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemy,movetype != A
;triggerall = stateno != 20
;triggerall = frontedgedist > 45
triggerall = fvar(1) = 0
trigger1 = Ctrl 
trigger1 = p2dist X = [0,100]
;trigger1 = random <= 500
trigger1 = enemy,stateno = [5120,5210]
trigger1 = enemy,stateno != 5150
value = 22

[State -1, When To Crush Trigger]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != L     
triggerall = enemynear,movetype != A || palno = [10,12]    
triggerall = p2dist y = [-100,10]
triggerall = p2dist X = [-5,145 - ((moveguarded) * 25)]     
triggerall = power > 249   
trigger1 = fvar(1) = 0                                   
trigger1 = random <= 50
trigger1 = Ctrl || stateno = 5120 && time > 13
trigger1 = enemynear,stateno = [130,132]   
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 400 || stateno = 410 
trigger2 = moveguarded
trigger2 = random < 250
value = 310

[State -1, When To 5X]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)    
triggerall = p2statetype != C   
triggerall = enemynear,stateno != [5200,5210]       
triggerall = p2dist X = [-5,74-(10*enemy,movetype = H)] 
triggerall = p2dist y = [-110,0-(50*(enemy,statetype = A))]
triggerall = enemy,vel y = [-3,6]
triggerall = fvar(1) = 0
triggerall = !inguarddist || palno = [10,12]                    
trigger1 = random <= 50 + ((enemy,statetype = A) * 450) 
trigger1 = Ctrl || stateno = 5120 && time > 13     
trigger1 = p2statetype != L   
trigger2 = stateno = 52
trigger2 = ctrl
trigger2 = prevstateno = 620
trigger2 = enemy,movetype = H 
trigger2 = random < 100
trigger2 = p2statetype != L  
trigger3 = stateno = 140 || stateno = [130,131]   
trigger3 = enemy,vel x = [-1,9] 
trigger3 = random <= 400  
trigger3 = p2statetype != L   
trigger4 = stateno = 52
trigger4 = prevstateno = 50
trigger4 = enemy,movetype = H 
trigger4 = random < 800
trigger4 = enemy,statetype != A
trigger4 = ctrl
trigger4 = p2statetype != L  
trigger5 = enemy,moveguarded
trigger5 = gethitvar(slidetime) = 0 
trigger5 = !enemynear,ishelper   
trigger5 = enemy,vel x = [-1,9] 
trigger5 = random <= 50
trigger5 = stateno != 3000 || stateno != 3010 || stateno != 3100 || stateno != 3110
trigger5 = p2dist X = [-5,70] 
trigger5 = p2statetype != L  
trigger6 = frontedgedist < 75
trigger6 = enemy,stateno = [15000,15999]
trigger6 = enemy,movetype = H
trigger6 = ctrl
trigger6 = random < 400
value = 200  

;[State -1, When To 6X]    Combo Move
;type = ChangeState
;triggerall = var(59) = 1
;triggerall = roundstate = 2
;triggerall = (statetype != A)  
;triggerall = p2statetype != L      
;triggerall = p2statetype != A       
;triggerall = p2dist X = [-5,75]     
;triggerall = enemynear,stateno != [5200,5210]         
;triggerall = (enemynear,movetype != A)    
;triggerall = fvar(1) = 0                       
;value = 205

[State -1, When To 5Y]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != L     
triggerall = enemynear,stateno != [5200,5210]       
triggerall = p2dist X = [-5,95-(5*enemy,movetype = H)] 
triggerall = p2dist y = [-145,15-(85*(enemy,statetype = A))]
triggerall = enemy,vel y = [-3,6]
triggerall = fvar(1) = 0
triggerall = !inguarddist || palno = [10,12]                    
trigger1 = random <= 100 + ((enemy,statetype = A) * 400)
trigger1 = Ctrl || stateno = 5120 && time > 13     
trigger2 = stateno = 52
trigger2 = ctrl
trigger2 = prevstateno = 620
trigger2 = enemy,movetype = H 
trigger2 = random < 900
trigger3 = stateno = 52
trigger3 = prevstateno = 50
trigger3 = enemy,movetype = H 
trigger3 = random < 900
trigger3 = enemy,statetype != A
trigger3 = ctrl
trigger4 = enemy,stateno = [50000,50103]
trigger4 = enemy,movetype = H 
trigger4 = ctrl || stateno = 5120 && time > 13 
trigger5 = stateno = 400 && movecontact && time > 11
trigger5 = var(21) = 1
trigger6 = stateno = 200 && movecontact && time > 14
trigger6 = enemy,statetype != A
trigger7 = stateno = 140 || stateno = [130,131]
trigger7 = !enemynear,ishelper   
trigger7 = enemy,vel x = [-1,9] 
trigger7 = random <= 700 
value = 210 

[State -1, When To 5YY]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != L            
triggerall = fvar(1) = 0 
trigger1 = stateno = 210 
trigger1 = movehit > 6              
value = 211 

;[State -1, When To 6Y] Combo Move
;type = ChangeState
;triggerall = var(59) = 1
;triggerall = roundstate = 2
;triggerall = (statetype != A)  
;triggerall = p2statetype != L            
;triggerall = fvar(1) = 0                  
;value = 215 

[State -1, When To 2X]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)                        
triggerall = p2dist X = [35,85]  
triggerall = !inguarddist   
triggerall = enemynear,stateno != [5200,5210] 
triggerall = enemynear,stateno != 5120   
triggerall = enemynear,stateno != [40,52]  
triggerall = enemy,stateno != [50000,50103]  
triggerall = fvar(1) = 0                
triggerall = enemy,stateno != [15000,15999]   
triggerall = frontedgedist > 80
trigger1 = p2statetype != A               
trigger1 = random <= 50 + ((enemy,statetype = L) * 850)
trigger1 = Ctrl || stateno = 5120 && time > 13  
trigger2 = p2stateno = 5080 || p2stateno = 5081 || p2stateno = 5150 || p2stateno = [5100,5103] 
trigger2 = Ctrl || stateno = 5120 && time > 13        
trigger2 = random <= 900  
trigger2 = p2statetype != A 
trigger3 = prevstateno = 2300
trigger3 = enemy,movetype = H
trigger3 = p2dist y = [-40,0]
trigger3 = random < 700 
value = 400 

[State -1, When To 2Y]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)   
triggerall = enemy,statetype != A  
triggerall = (enemynear,movetype != A) || palno = [10,12]   
triggerall = enemy,statetype != L                 
triggerall = p2dist X = [-15,138]  
triggerall = !inguarddist || palno = [10,12]
triggerall = enemynear,stateno != [5200,5210] 
triggerall = enemynear,stateno != 5120    
triggerall = enemynear,stateno != [40,52]  
triggerall = enemy,stateno != [50000,50103]  
triggerall = enemy,stateno != [15000,15999]
triggerall = fvar(1) = 0  
triggerall = prevstateno != 2300                              
trigger1 = random <= 25; + ((enemy,statetype = L) * 75) 
trigger1 = Ctrl || stateno = 5120 && time > 13   
trigger2 = p2stateno = 5080 || p2stateno = 5081 || p2stateno = 5150 || p2stateno = [5100,5103] 
trigger2 = Ctrl || stateno = 5120 && time > 13         
trigger2 = enemy,stateno != 5120
trigger2 = random <= 200 
trigger2 = p2dist X = [75,125]
;trigger2 = enemynear,vel x = [-2,2]
;trigger2 = enemynear,vel y = [-1,2]
trigger3 = stateno = 400
trigger3 = movecontact
value = 410 

[State -1, When To 5Z]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != L  
triggerall = p2statetype != C    
triggerall = (enemynear,movetype != A) || palno = [10,12]   
triggerall = enemy,stateno != [130,131] 
triggerall = enemynear,stateno != [5200,5210]                    
triggerall = enemynear,vel y = [-1,6] 
triggerall = enemy,stateno != 40 
triggerall = !inguarddist || palno = [10,12] 
triggerall = fvar(1) = 0 
trigger1 = p2dist X = [60,160] 
trigger1 = p2dist y = [-80,10-(65*enemy,statetype = A)]                     
trigger1 = random <= 50
trigger1 = Ctrl || stateno = 5120 && time > 13 
value = 220

[State -1, When To 2Z]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
;triggerall = p2statetype != L       
triggerall = (enemynear,movetype != A) || palno = [10,12]     
triggerall = enemy,stateno != [120,155]                
triggerall = enemynear,vel x = [-1,3]   
triggerall = fvar(1) = 0 
triggerall = enemy,stateno != [40,52]
triggerall = enemynear,stateno != [5200,5210] 
triggerall = enemynear,stateno != 5120 
triggerall = !inguarddist || palno = [10,12]   
triggerall = enemy,stateno != [50000,50103] 
triggerall = enemy,statetype != L 
trigger1 = p2dist X = [0+(60*enemy,statetype = A),130] 
trigger1 = p2dist y = [-115,10-(40*enemy,statetype = A)] 
trigger1 = Ctrl || stateno = 5120 && time > 13                   
trigger1 = random <= 30  
trigger1 = enemynear,vel y = [-1,9] 
trigger1 = palno != [10,12]
trigger2 = p2dist X = [-25+(75*enemy,statetype = A),140] 
trigger2 = p2dist Y = [-100,-25]
trigger2 = time
trigger2 = stateno = 52  
trigger2 = enemy,movetype = H
trigger2 = enemy,statetype = A 
trigger2 = ctrl
trigger3 = stateno = 210 && moveguarded && time > 14 
trigger3 = random < 500
value = 420

[State -1, When To 3Z]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != L       
triggerall = (enemynear,movetype != A) || palno = [10,12]     
triggerall = enemy,stateno != [130,131]                
triggerall = enemynear,vel x = [-1,3]   
triggerall = enemynear,vel y = [-2,9] 
triggerall = fvar(1) = 0 
triggerall = enemy,stateno != [40,52]
triggerall = enemynear,stateno != [5200,5210] 
triggerall = enemynear,stateno != 5120  
triggerall = !inguarddist || palno = [10,12]
triggerall = enemy,stateno != [50000,50103]  
trigger1 = p2dist X = [0,165] 
trigger1 = p2dist y = [-75,10-(60*enemy,statetype = A)] 
trigger1 = Ctrl || stateno = 5120 && time > 13                  
trigger1 = random <= 60
trigger2 = enemy,stateno = 130 || enemy,stateno = [150,151]  
trigger2 = moveguarded
trigger2 = stateno = 210 && moveguarded && time > 14 || stateno = 420 && moveguarded && time > 26
trigger2 = Random <= 1000*ifelse((random <= 600),1,0) 
trigger3 = enemy,statetype = L
trigger3 = p2dist X = [135,165]  
trigger3 = Random <= 1000*ifelse((random <= 500),1,0) 
value = 430

[State -1, When To Valiant Crash]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)      
;triggerall = !inguarddist   
triggerall = enemy,stateno != 130                   
triggerall = enemynear,vel y = [-1,6] 
triggerall = enemynear,stateno != [5200,5210]    
triggerall = fvar(1) = 0 
triggerall = numhelper(1998) = 0
triggerall = p2dist X = [0+(35*enemy,statetype = A),205] 
triggerall = p2dist y = [-95,10-(45*enemy,statetype = A)]    
triggerall = enemy,stateno != [50000,50103] 
triggerall = enemy,stateno != [15000,15999]        
triggerall = (enemynear,hitdefattr!=SCA,AT) || (enemynear,hitdefattr!=SCA,ST) || (enemynear,hitdefattr!=SCA,HT) || (enemynear,hitdefattr!=SCA,NT)            
trigger1 = random <= 5
trigger1 = Ctrl || stateno = 5120 && time > 13  
trigger1 = p2statetype != L
trigger1 = enemy,statetype != C  
trigger2 = stateno = 140 || stateno = [130,131]
trigger2 = !enemynear,ishelper   
;trigger3 = enemy,vel x = [-1,9] 
trigger2 = random <= 100
trigger2 = stateno != 3000 || stateno != 3010 || stateno != 3100 || stateno != 3110
trigger2 = enemy,vel x = [-2,2] 
trigger2 = p2statetype != L  
trigger2 = enemy,statetype != C  
trigger3 = stateno = 220 
trigger3 = movecontact
trigger3 = var(24) > 0
trigger3 = p2statetype != L
trigger4 = enemy,moveguarded
trigger4 = gethitvar(slidetime) = 0 
trigger4 = !enemynear,ishelper   
;trigger3 = enemy,vel x = [-1,9] 
trigger4 = random <= 50
trigger4 = stateno != 3000 || stateno != 3010 || stateno != 3100 || stateno != 3110
trigger4 = enemy,vel x = [-2,2] 
trigger5 = stateno = 2100 && moveguarded  
trigger5 = enemy,statetype = C 
value = 2400

[State -1, When To Valiant Crash w/UW]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)     
;triggerall = (enemynear,movetype != A) || palno = [10,12]   
triggerall = enemy,stateno != 130                   
triggerall = enemynear,vel y = [-1,6] 
triggerall = enemynear,stateno != [5200,5210]    
triggerall = fvar(1) = 0 
triggerall = numhelper(1998) = 1
triggerall = p2dist X = [0+(35*enemy,statetype = A),205] 
triggerall = p2dist y = [-95,10-(45*enemy,statetype = A)]  
triggerall = enemy,stateno != [50000,50103]  
triggerall = enemy,stateno != [15000,15999]        
triggerall = (enemynear,hitdefattr!=SCA,AT) || (enemynear,hitdefattr!=SCA,ST) || (enemynear,hitdefattr!=SCA,HT) || (enemynear,hitdefattr!=SCA,NT)              
trigger1 = random <= 75
trigger1 = Ctrl || stateno = 5120 && time > 13  
trigger1 = p2statetype != L 
trigger1 = enemy,statetype != C 
trigger2 = enemy,moveguarded
trigger2 = gethitvar(slidetime) = 0 
trigger2 = !enemynear,ishelper   
;trigger3 = enemy,vel x = [-1,9] 
trigger2 = random <= 100
trigger2 = stateno != 3000 || stateno != 3010 || stateno != 3100 || stateno != 3110
trigger2 = enemy,vel x = [-2,2] 
trigger2 = p2statetype != L 
trigger3 = p2statetype != A
trigger3 = stateno = 220 
trigger3 = movecontact
trigger3 = var(24) > 0  
trigger3 = power < 699 || enemy,life < 300
trigger3 = p2statetype != L 
trigger4 = stateno = 2100 && moveguarded  
trigger4 = enemy,statetype = C
value = 2410

[State -1, When To Hornet Bunker]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != L      
;triggerall = (enemynear,movetype != A) || palno = [10,12]   
triggerall = enemy,stateno != 131                   
;triggerall = enemynear,vel y = [-3,3] 
triggerall = enemynear,stateno != [5200,5210]    
triggerall = fvar(1) = 0 
triggerall = numhelper(1999) = 0
triggerall = p2dist X = [0+(35*enemy,statetype = A),180 - (moveguarded * 30)] 
triggerall = p2dist y = [-115,10-(65*enemy,statetype = A)]  
triggerall = enemy,stateno != [50000,50103]                     
triggerall = (enemynear,hitdefattr!=SCA,AT) || (enemynear,hitdefattr!=SCA,ST) || (enemynear,hitdefattr!=SCA,HT) || (enemynear,hitdefattr!=SCA,NT)
trigger1 = random <= 5
trigger1 = Ctrl || stateno = 5120 && time > 13  
trigger2 = stateno = 410 || stateno = 220 || stateno = 211 
trigger2 = moveguarded
trigger2 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger2 = Random <= 1000*ifelse((random <= 150),1,0) 
trigger3 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger3 = Ctrl || stateno = 5120 && time > 13 
trigger3 = random < 125
trigger4 = stateno = 140 || stateno = [130,131]
trigger4 = !enemynear,ishelper   
;trigger3 = enemy,vel x = [-1,9] 
trigger4 = random <= 100
trigger4 = stateno != 3000 || stateno != 3010 || stateno != 3100 || stateno != 3110
trigger4 = enemy,vel x = [-2,2] 
trigger5 = enemy,moveguarded
trigger5 = gethitvar(slidetime) = 0 
trigger5 = !enemynear,ishelper   
;trigger3 = enemy,vel x = [-1,9] 
trigger5 = random <= 25
trigger5 = stateno != 3000 || stateno != 3010 || stateno != 3100 || stateno != 3110
trigger5 = enemy,vel x = [-2,2] 
trigger6 = stateno = 2100 && moveguarded || stateno = 2100 && movecontact && time > 21
trigger6 = enemy,statetype != C
value = 2300

[State -1, When To Hornet Bunker w/LW]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != L      
;triggerall = (enemynear,movetype != A) || palno = [10,12]    
triggerall = enemy,stateno != 131                   
;triggerall = enemynear,vel y = [-3,3] 
triggerall = enemynear,stateno != [5200,5210]    
triggerall = fvar(1) = 0 
triggerall = numhelper(1999) = 1
triggerall = p2dist X = [0+(35*enemy,statetype = A),180 - (moveguarded * 30)] 
triggerall = p2dist y = [-115,10-(65*enemy,statetype = A)]   
triggerall = enemy,stateno != [50000,50103]    
triggerall = (enemynear,hitdefattr!=SCA,AT) || (enemynear,hitdefattr!=SCA,ST) || (enemynear,hitdefattr!=SCA,HT) || (enemynear,hitdefattr!=SCA,NT)                
trigger1 = random <= 25
trigger1 = Ctrl || stateno = 5120 && time > 13  
trigger2 = stateno = 410 || stateno = 220 || stateno = 211 
trigger2 = moveguarded
trigger2 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger2 = Random <= 1000*ifelse((random <= 150),1,0) 
trigger3 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger3 = Ctrl || stateno = 5120 && time > 13 
trigger3 = random < 100
trigger4 = enemy,moveguarded
trigger4 = gethitvar(slidetime) = 0 
trigger4 = !enemynear,ishelper   
;trigger3 = enemy,vel x = [-1,9] 
trigger4 = random <= 100
trigger4 = stateno != 3000 || stateno != 3010 || stateno != 3100 || stateno != 3110
trigger4 = enemy,vel x = [-2,2]   
trigger5 = stateno = 2100 && moveguarded; || stateno = 2100 && movecontact && time > 21
trigger5 = enemy,statetype != C 
value = 2310

[State -1, When To 5A]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != L      
triggerall = (enemynear,movetype != A) || palno = [10,12]   
triggerall = enemy,stateno != 130                   
triggerall = enemynear,vel y = [-3,3] 
triggerall = enemynear,stateno != [5200,5210]    
triggerall = fvar(1) = 0 
triggerall = numhelper(1998) = 0
triggerall = !inguarddist || palno = [10,12]
triggerall = enemy,stateno != [50000,50103]  
trigger1 = p2dist X = [0,150] 
trigger1 = p2dist y = [-110,10-(65*enemy,statetype = A)]                     
trigger1 = random <= 10
trigger1 = Ctrl || stateno = 5120 && time > 13  
trigger2 = stateno = 400 && time > 11  || stateno = 410 && time > 20
trigger2 = moveguarded
trigger2 = enemy,stateno = 131 || enemy,stateno = [152,153]
trigger2 = Random <= 1000*ifelse((random <= 700),1,0) 
trigger3 = enemy,stateno = 131 || enemy,stateno = [152,153]
trigger3 = Ctrl || stateno = 5120 && time > 13 
trigger3 = random < 150
value = 1000

[State -1, When To 2A]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != A  
triggerall = p2statetype != L    
triggerall = (enemynear,movetype != A) || palno = [10,12]    
triggerall = enemy,stateno != 131                   
triggerall = enemynear,stateno != [5200,5210] 
triggerall = enemynear,stateno != 5120   
triggerall = fvar(1) = 0 
triggerall = numhelper(1999) = 0
triggerall = !inguarddist || palno = [10,12]
triggerall = enemy,stateno != [50000,50103]  
triggerall = enemy,stateno != [15000,15999] 
triggerall = enemy,stateno != [40,52]
triggerall = p2dist X = [0,95]                    
trigger1 = random <= 10
trigger1 = Ctrl || stateno = 5120 && time > 13  
trigger2 = stateno = 200 && time > 14
trigger2 = moveguarded
trigger2 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger2 = Random <= 1000*ifelse((random <= 700),1,0) 
trigger3 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger3 = Ctrl || stateno = 5120 && time > 13 
trigger3 = random < 150
value = 1100

[State -1, When To 2A w/LW]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != A 
triggerall = p2statetype != L     
triggerall = (enemynear,movetype != A) || palno = [10,12]   
triggerall = enemy,stateno != 131                   
triggerall = enemynear,stateno != [5200,5210] 
triggerall = enemynear,stateno != 5120   
triggerall = fvar(1) = 0 
triggerall = numhelper(1999) > 0
triggerall = !inguarddist || palno = [10,12]
triggerall = enemy,stateno != [50000,50103]  
triggerall = enemy,stateno != [15000,15999]
triggerall = enemy,stateno != [40,52] 
triggerall = p2dist X = [0,95]                    
trigger1 = random <= 10
trigger1 = Ctrl || stateno = 5120 && time > 13  
trigger2 = stateno = 200 && time > 14 
trigger2 = moveguarded
trigger2 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger2 = Random <= 1000*ifelse((random <= 700),1,0) 
trigger3 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger3 = Ctrl || stateno = 5120 && time > 13  
trigger3 = random < 150
value = 1110

[State -1, When To 6A]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != L      
triggerall = (enemynear,movetype != A) || palno = [10,12]   
triggerall = enemy,stateno != 130                   
;triggerall = enemynear,vel y = [-2,9] 
triggerall = enemynear,stateno != [5200,5210]    
triggerall = fvar(1) = 0 
triggerall = numhelper(1998) = 0
triggerall = !inguarddist || palno = [10,12]
triggerall = enemy,stateno != [50000,50103]  
triggerall = p2dist X = [0+(65*(enemy,statetype = A)*(enemy,movetype!=H)),150] 
triggerall = p2dist y = [-125,10-(65*enemy,statetype = A)]                     
trigger1 = random <= 10
trigger1 = Ctrl || stateno = 5120 && time > 13  
trigger2 = stateno = 420 && time > 26 || stateno = 220 && time > 22
trigger2 = moveguarded
trigger2 = enemy,stateno = 131 || enemy,stateno = [152,153]
trigger2 = Random <= 1000*ifelse((random <= 700),1,0) 
trigger3 = enemy,stateno = 131 || enemy,stateno = [152,153]
trigger3 = Ctrl || stateno = 5120 && time > 13 
trigger3 = random < 150
trigger4 = stateno = 220 && time > 22
trigger4 = movehit
trigger4 = enemy,statetype = A && enemy,movetype = H 
trigger4 = random < 150
value = 1200

[State -1, When To 6A w/UW]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != L      
triggerall = (enemynear,movetype != A) || palno = [10,12]   
triggerall = enemy,stateno != 130                   
;triggerall = enemynear,vel y = [-2,9] 
triggerall = enemynear,stateno != [5200,5210]    
triggerall = fvar(1) = 0 
triggerall = numhelper(1998) = 1
triggerall = !inguarddist || palno = [10,12]
triggerall = enemy,stateno != [50000,50103]  
triggerall = p2dist X = [0+(65*(enemy,statetype = A)*(enemy,movetype!=H)),150] 
triggerall = p2dist y = [-125,10-(65*enemy,statetype = A)]                     
trigger1 = random <= 10
trigger1 = Ctrl || stateno = 5120 && time > 13  
trigger2 = stateno = 420 && time > 26 || stateno = 220 && time > 22
trigger2 = moveguarded
trigger2 = enemy,stateno = 131 || enemy,stateno = [152,153]
trigger2 = Random <= 1000*ifelse((random <= 700),1,0) 
trigger3 = enemy,stateno = 131 || enemy,stateno = [152,153]
trigger3 = Ctrl || stateno = 5120 && time > 13 
trigger3 = random < 150
trigger4 = stateno = 220 && time > 22
trigger4 = movehit
trigger4 = enemy,statetype = A && enemy,movetype = H
trigger4 = p2dist X = [0,150] 
trigger4 = p2dist y = [-125,10-(65*enemy,statetype = A)]  
trigger4 = random < 150
value = 1210

[State -1, When To 3A]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != A      
triggerall = p2statetype != L
triggerall = (enemynear,movetype != A) || palno = [10,12]  
triggerall = enemy,stateno != 131                   
triggerall = enemynear,stateno != [5200,5210]  
triggerall = enemynear,stateno != 5120     
triggerall = fvar(1) = 0 
triggerall = numhelper(1999) = 0 
triggerall = !inguarddist || palno = [10,12]
triggerall = enemy,stateno != [50000,50103]  
triggerall = p2dist X = [0,180]    
trigger1 = stateno = 420 && time > 26 || stateno = 220 && time > 22
trigger1 = moveguarded
trigger1 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger1 = Random <= 1000*ifelse((random <= 700),1,0) 
trigger2 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger2 = Ctrl || stateno = 5120 && time > 13  
trigger2 = random < 150
value = 1300

[State -1, When To 3A w/LW]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != A  
triggerall = p2statetype != L    
triggerall = (enemynear,movetype != A) || palno = [10,12]    
triggerall = enemy,stateno != 131                   
triggerall = enemynear,stateno != [5200,5210]  
triggerall = enemynear,stateno != 5120     
triggerall = fvar(1) = 0 
triggerall = numhelper(1999) > 0
triggerall = !inguarddist || palno = [10,12]
triggerall = enemy,stateno != [50000,50103]  
triggerall = p2dist X = [0,180]                    
trigger1 = random <= 10
trigger1 = Ctrl || stateno = 5120 && time > 13  
trigger2 = stateno = 420 || stateno = 220
trigger2 = moveguarded
trigger2 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger2 = Random <= 1000*ifelse((random <= 700),1,0) 
trigger3 = enemy,stateno = 130 || enemy,stateno = [150,151]
trigger3 = Ctrl || stateno = 5120 && time > 13 
trigger3 = random < 150
value = 1310

;[State -1, When To 6Z]Nope Nope Nope
;type = ChangeState
;triggerall = var(59) = 1
;triggerall = roundstate = 2
;triggerall = (statetype != A)  
;triggerall = p2statetype != L      
;triggerall = (enemynear,movetype != A) || palno = [10,12]    
;triggerall = enemy,stateno != [130,131]                   
;triggerall = enemynear,vel y = [-3,3]   
;triggerall = fvar(1) = 0 
;trigger1 = p2dist X = [60,160] 
;trigger1 = p2dist y = [-100,10-(65*enemy,statetype = A)]                     
;trigger1 = random <= 35
;trigger1 = Ctrl || stateno = 5120 && time > 13 || stateno = 101 || stateno = 100 
;value = 225

[State -1, When To Tiger Magnum]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)        
;triggerall = (enemynear,movetype != A) || palno = [10,12]    
triggerall = enemy,stateno != [130,131]                    
triggerall = fvar(1) = 0 
triggerall = !inguarddist || palno = [11,12]
trigger1 = p2dist X = [0+(65*(enemy,statetype = A)*(enemy,movetype!=H)),145] 
trigger1 = p2dist y = [-90,10-(65*enemy,statetype = A)]                     
trigger1 = random <= 45
trigger1 = Ctrl || stateno = 5120 && time > 13 
trigger1 = p2statetype != L
trigger1 = enemynear,vel y = [-1,5]  
trigger2 = stateno = 410 || stateno = 220
trigger2 = movecontact > 1
trigger2 = power < 501
trigger2 = p2dist y = [-70,10-(35*enemy,statetype = A)] 
trigger2 = p2dist X = [0+(65*(enemy,statetype = A)*(enemy,movetype!=H)),100] 
trigger2 = var(21) = 0 
trigger3 = enemy,stateno = [50000,50103]
trigger3 = enemy,movetype = H 
trigger3 = ctrl || stateno = 5120 && time > 13 
trigger4 = stateno = 211 
trigger4 = movecontact
trigger4 = p2statetype != L
trigger4 = p2dist y = [-80,10-(65*enemy,statetype = A)] 
trigger5 = enemy,stateno = [15000,15999]
trigger5 = p2dist X = [-25,145] 
trigger5 = enemy,vel y > -3
trigger5 = p2dist y = [-125,0]    
trigger5 = frontedgedist < 145
trigger5 = random < 900
trigger5 = ctrl || stateno = 5120 && time > 13 || stateno = 1310 && animtime = 0
value = 2000

[State -1, When To Cobra Strike]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
;triggerall = p2statetype != L      
triggerall = (enemynear,movetype != A) || palno = [10,12]    
triggerall = enemy,stateno != [130,131]                   
triggerall = enemynear,vel y = [-1,3]   
triggerall = fvar(1) = 0 
triggerall = p2dist X = [0,150] 
trigger1 = stateno = 2000 && movecontact
trigger2 = stateno = 2000 && time = [16,25]
value = 2100

[State -1, When To Leopard Launcher]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
;triggerall = p2statetype != L      
triggerall = (enemynear,movetype != A) || palno = [10,12]   
triggerall = enemy,stateno != [130,131]                   
triggerall = enemynear,vel y = [-1,9]   
triggerall = fvar(1) = 0 
triggerall = p2dist X = [-25,200] 
triggerall = p2dist y = [-100,10]
trigger1 = stateno = 2100 && movehit
trigger2 = stateno = 2100 && !movecontact && time = [15,21]
value = 2200

[State -1, When To Gustaf Buster]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)       
triggerall = (enemynear,movetype != A) || palno = [10,12]    
triggerall = enemy,stateno != [120,155]                   
triggerall = enemynear,vel y = [-2,99]  
triggerall = p2dist y = [-100,10] 
triggerall = fvar(1) = 0 
trigger1 = p2dist X = [50,150]                   
trigger1 = random <= 25
trigger1 = Ctrl || stateno = 5120 && time > 13
trigger1 = palno != [10,12]
trigger2 = p2statetype != A  
trigger2 = stateno = 410 || stateno = 220
trigger2 = movecontact
trigger2 = power < 501
trigger3 = prevstateno = 2400
trigger3 = enemy,stateno = [10000,10999]
trigger3 = p2dist X = [0,225]  
trigger4 = p2statetype = A  
trigger4 = stateno = 220
trigger4 = movecontact
trigger4 = p2dist X = [0,150]  
trigger4 = numhelper(1998) > 0
trigger5 = palno = [10,12]
trigger5 = enemy,movetype = A
trigger5 = enemy,statetype != A
trigger5 = p2dist x > 125
trigger5 = random < 300
trigger5 = ctrl || stateno = 5120 && time > 13
trigger6 = enemy,stateno = [15000,15999]
trigger6 = p2dist X > 145   
trigger6 = random < 200
trigger6 = ctrl || stateno = 5120 && time > 13 
value = 2500

[State -1, When To Sentinel Dump]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
;triggerall = p2statetype != L      
triggerall = (enemynear,movetype != A) || palno = [10,12]   
;triggerall = enemy,stateno != [130,131]                   
;triggerall = enemynear,vel y = [-1,3]   
triggerall = fvar(1) = 0 
trigger1 = ctrl && prevstateno = 2200 || stateno = 2200 && animtime = 0
trigger1 = enemy,movetype = H
trigger1 = p2dist x > 125
value = 2650

[State -1, When To Phalanx Cannon]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)               
triggerall = enemy,vel y = [-1,9] 
triggerall = enemy,stateno != [120,155]   
triggerall = numhelper(2801) = 0     
triggerall = p2dist y = [-90,0]  
triggerall = enemynear,stateno != [5080,5210]  
triggerall = enemynear,stateno != 5120 
triggerall = !inguarddist || palno = [10,12]
triggerall = fvar(1) = 0   
triggerall = var(47) > 0 || palno = 12                                 
trigger1 = random <= 150 + ((enemy,life < 200) * 350)
trigger1 = p2dist x >= 100
trigger1 = ctrl   
trigger1 = enemynear,movetype != A   
trigger2 = stateno = 2702
trigger2 = enemynear,movetype = A                            
value = 2800

[State -1, When To j.X]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype = A)  
triggerall = p2statetype != L 
triggerall = enemynear,stateno != [5200,5210]   
;triggerall = p2statetype != A                       
triggerall = fvar(1) = 0 
;triggerall = !inguarddist  
;triggerall = enemy,vel x = [-2,2]
triggerall = vel x > -2 
triggerall = prevstateno != 45
trigger1 = p2dist X = [-10,60] 
trigger1 = pos y <= (-30 - ((vel y) * 10))
trigger1 = p2dist y = [-75,15]                             
trigger1 = random <= 800    
trigger1 = ctrl 
trigger1 = enemy,movetype != H   
trigger2 = stateno = 102 || stateno = 50 && prevstateno = 102  
trigger2 = pos y < -40 
trigger2 = p2dist y = [-65,75] 
trigger2 = time > 4 
trigger2 = p2dist X = [-25,100]            
value = 600 

[State -1, When To j.Y]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype = A)  
triggerall = p2statetype != L 
triggerall = enemynear,stateno != [5200,5210]   
;triggerall = p2statetype != A                       
triggerall = !inguarddist  
;triggerall = enemy,vel x = [-2,2] 
triggerall = (enemynear,movetype != A) 
triggerall = fvar(1) = 0 
triggerall = prevstateno != 45
trigger1 = pos y <= (-30 - ((vel y) * 10))
trigger1 = p2dist y = [-65,25]                             
trigger1 = random <= 800    
trigger1 = ctrl 
trigger1 = vel x > -2
trigger1 = enemy,movetype != H
trigger1 = p2dist X = [-75,80] 
trigger2 = stateno = 102 || stateno = 50 && prevstateno = 102   
trigger2 = pos y < -40 
trigger2 = p2dist y = [-65,100] 
trigger2 = time > 4 
trigger2 = p2dist X = [-75,150] 
trigger2 = vel x > 0
trigger2 = vel y > 0
trigger2 = pos y <= -50 
trigger3 = stateno = 600 && movecontact     
trigger3 = p2dist X = [-75,80] 
trigger3 = p2dist y = [-85,75]                  
value = 610 

[State -1, When To Jump in the Air]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype = A)  
triggerall = var(19) < 2
trigger1 = fvar(1) = 0 
trigger1 = movecontact
trigger1 = stateno = 620
trigger2 = movecontact
trigger2 = stateno = 610
;trigger2 = vel y > -3
trigger2 = p2dist y < -75
trigger2 = fvar(1) = 0 
trigger3 = prevstateno = 610
trigger3 = vel y > 0
trigger3 = p2movetype = H
trigger3 = p2dist x = [-125,125]
trigger3 = fvar(1) = 0 
trigger4 = stateno = 620
trigger4 = !movecontact
trigger4 = time = 30
trigger4 = enemy,statetype = A
value = 45

[State -1, When To j.Z]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype = A)  
triggerall = p2statetype != L                       
;triggerall = !inguarddist     
triggerall = vel x > -1          
triggerall = fvar(1) = 0 
triggerall = pos y <= (-30 - ((vel y) * 10))
;triggerall = (enemynear,movetype != A) 
trigger1 = (enemynear,movetype != A) || palno = [10,12]                         
trigger1 = random <= 50  
trigger1 = ctrl 
trigger1 = time > 4 
trigger1 = p2dist X = [-65,90+(vel x * 6)-(enemy,vel x * 6)]   
trigger1 = p2dist y = [-95,45- ((enemy,movetype = H) * 75)]  
trigger1 = prevstateno != 45 && prevstateno != 102 
trigger2 = stateno = 610 && movecontact 
trigger2 = !inguarddist
trigger2 = p2dist X = [-5,90+(vel x * 6)-(enemy,vel x * 6)]
trigger2 = p2dist y = [-75,45] 
trigger2 = vel y < -3 
trigger3 = stateno = 102 || stateno = 50 && prevstateno = 102
trigger3 = !inguarddist
trigger3 = time > 4
trigger3 = p2dist X = [-65,100] 
trigger3 = p2dist y = [-75,100 - ((enemy,movetype = H) * 110)] 
trigger3 = prevstateno != 45 
trigger4 = stateno = 50
trigger4 = frontedgedist < 100
trigger4 = enemy,statetype = A
trigger4 = ctrl
trigger4 = random < 300
trigger4 = (enemynear,movetype != A) || palno = [10,12]
trigger4 = p2dist X = [-5,90+(vel x * 6)-(enemy,vel x * 6)]
trigger4 = pos y <= -60 
trigger4 = prevstateno != 45
trigger4 = enemynear,pos y < -50
trigger5 = stateno = 600 && movecontact     
trigger5 = p2dist X = [-5,90+(vel x * 6)-(enemy,vel x * 6)] 
trigger5 = p2dist y = [-95,75]  
value = 620 

[State -1, When To j.2Z]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = enemynear,pos y > 25 + pos y 
triggerall = statetype = A  
triggerall = enemynear,movetype != A                         
triggerall = p2dist X = [25,100-(25*enemy,statetype = A)]  
triggerall = enemynear,vel x = [-2,2]      
triggerall = pos y < -100 
triggerall = prevstateno != 45                             
trigger1 = random <= 250
trigger1 = var(1) = 0    
trigger1 = ctrl 
value = 630

[State -1, When To j.5A]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype = A)  
;triggerall = p2statetype != L                       
;triggerall = !inguarddist     
triggerall = vel x > -1          
triggerall = fvar(1) = 0 
triggerall = pos y <= (-40 - ((vel y) * 10))
triggerall = numhelper(1998) = 0
trigger1 = stateno = 620 && movecontact 
trigger1 = !inguarddist
trigger1 = p2dist X = [-5,100+(vel x * 6)-(enemy,vel x * 6)]
trigger1 = p2dist y = [-85,45]   
trigger2 = stateno = 50; && prevstateno = 45
trigger2 = p2dist X = [0,100+(vel x * 6)-(enemy,vel x * 6)]
trigger2 = p2dist y = [-115,0]   
trigger2 = ctrl  
;trigger2 = var(37) > 0
value = 1400 

[State -1, When To j.2A]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype = A)  
;triggerall = p2statetype != L                       
;triggerall = !inguarddist     
;triggerall = vel x > -1          
triggerall = fvar(1) = 0 
triggerall = pos y <= (-40 - ((vel y) * 10))
triggerall = numhelper(1999) = 0
trigger1 = stateno = 620 && movecontact 
trigger1 = !inguarddist
trigger1 = p2dist X = [-75,110+(vel x * 6)-(enemy,vel x * 6)]
trigger1 = p2dist y = [-35,35] 
trigger2 = stateno = 50; && prevstateno = 45
trigger2 = p2dist X = [-35,100+(vel x * 6)-(enemy,vel x * 6)]
trigger2 = p2dist y = [-45,55]
trigger2 = ctrl   
trigger2 = random < 300 
trigger2 = vel y > -1
;trigger2 = var(37) > 0 
value = 1500 

[State -1, When To j.2A LW Active]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype = A)  
;triggerall = p2statetype != L                       
;triggerall = !inguarddist     
;triggerall = vel x > -1          
triggerall = fvar(1) = 0 
triggerall = pos y <= (-40 - ((vel y) * 10))
triggerall = numhelper(1999) = 1
trigger1 = stateno = 620 && movecontact 
trigger1 = !inguarddist
trigger1 = p2dist X = [-75,110+(vel x * 6)-(enemy,vel x * 6)]
trigger1 = p2dist y = [-35,35] 
trigger2 = stateno = 50; && prevstateno = 45
trigger2 = p2dist X = [-15,100+(vel x * 6)-(enemy,vel x * 6)]
trigger2 = p2dist y = [-45,55]
trigger2 = ctrl  
trigger2 = random < 300
trigger2 = vel y > -1 
;trigger2 = var(37) > 0 
value = 1510 

[State -1, When To 5Y]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)  
triggerall = p2statetype != L     
triggerall = enemynear,stateno != [5200,5210]       
triggerall = p2dist X = [-25,95-(5*enemy,movetype = H)] 
triggerall = p2dist y = [-145,15]
triggerall = enemy,vel y = [-3,6]
triggerall = fvar(1) = 0
triggerall = enemy,movetype != A || palno = [10,12]  
triggerall = !inguarddist                  
trigger1 = enemy,moveguarded
trigger1 = gethitvar(slidetime) = 0 
;trigger1 = !enemynear,ishelper   
trigger1 = enemy,vel x = [-1,9] 
trigger1 = random <= 100
trigger1 = stateno != 3000 || stateno != 3010 || stateno != 3100 || stateno != 3110
trigger1 = p2dist X = [-5,90] 
trigger2 = palno = [10,12]
trigger2 = stateno = 100 || stateno = 105
trigger2 = ctrl
trigger2 = random < 300
value = 210 

[State -1, When To Growler Field Otherwise]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = (statetype != A)        
triggerall = enemy,stateno != [120,155]                       
triggerall = fvar(1) = 0           
triggerall = stateno != [40,52]  
;triggerall = life > 300  
triggerall = p2dist y = [-125,10]
;triggerall = !inguarddist 
trigger1 = Ctrl || stateno = 5120 && time > 13         
trigger1 = random <= 10 
trigger1 = p2dist X = [-65,5]
trigger1 = palno != [10,12]
trigger2 = enemy,moveguarded
trigger2 = gethitvar(slidetime) = 0 
;trigger2 = !enemynear,ishelper   
trigger2 = random <= 100
trigger2 = stateno != 3000 || stateno != 3010 || stateno != 3100 || stateno != 3110
trigger2 = enemy,vel x = [-3,3]  
trigger2 = p2dist X = [-65,65]
trigger2 = palno != [10,12]
value = 2700

;[State -1, When to Super Jump]
;Type = ChangeState
;Value = 41
;triggerall = var(59) = 1
;triggerall = roundstate = 2
;triggerall = StateType != A
;triggerall = frontedgedist > 75
;triggerall = fvar(1) = 0
;triggerall = stateno != [2100,2110]
;trigger1 = enemy,statetype = A
;trigger1 = p2dist y = [-250,-100]
;trigger1 = enemynear,movetype != H 
;trigger1 = ctrl   
;trigger1 = random <= 200
;trigger1 = p2dist X = [0,100]
;trigger2 = backedgedist < 50
;trigger2 = p2dist x = [-25,50]
;trigger2 = enemy,movetype != A
;trigger2 = ctrl
;trigger2 = random <= 700
;trigger3 = stateno = 100
;trigger3 = enemy,movetype = A
;trigger3 = random <= 400
;trigger3 = ctrl
;trigger4 = ctrl
;trigger4 = enemy,statetype = C
;trigger4 = enemy,movetype != A
;trigger4 = p2dist x = [150,400]
;trigger4 = random < 200
;trigger4 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
[State -1, Extra Air Jump]
type = ChangeState
value = 45
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = prevstateno != [102,103]
triggerall = var(19) = 1
triggerall = stateno != 45
triggerall = stateno != 2420
triggerall = command = "holdup"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = 50
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = stateno != 100
triggerall = command = "FF"
triggerall = stateno != 2420
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 215 && time > 29

;===========================================================================
;---------------------------------------------------------------------------
;Hop Forwards
[State -1, Run Fwd]
type = ChangeState
value = 102
triggerall = var(59) != 1
triggerall = numexplod(100001) < 1 
triggerall = !AIlevel
triggerall = var(19) != 2
triggerall = stateno != 2420
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl 
;trigger2 = command = "c"
;trigger2 = command = "holdfwd"
;trigger2 = ctrl 
;trigger2 = statetype = A
trigger2 = var(18) < 5
trigger2 = command = "fwd"; || numhelper(99999) = 1 && helper(99999), fvar(39)
trigger2 = command != "holdfwd"
trigger2 = ctrl 
trigger2 = statetype = A

;---------------------------------------------------------------------------
;Hop Backwards In The Air
[State -1, Run Back]
type = ChangeState
value = 103
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = command != "QCB_c"
triggerall = var(19) != 2
triggerall = stateno != 2420
trigger1 = numexplod(100001) < 1 
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl 
;trigger2 = command = "c"
;trigger2 = command = "holdback"
;trigger2 = numexplod(100001) < 1 
;trigger2 = ctrl 
;trigger2 = statetype = A
trigger2 = var(18) < 5
trigger2 = command = "back"; || numhelper(99999) = 1 && helper(99999), fvar(38)
trigger2 = command != "holdback"
trigger2 = ctrl 
trigger2 = statetype = A
trigger2 = numexplod(100001) < 1 

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = command != "QCB_c"
triggerall = command = "BB"
triggerall = stateno != 2420
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;5X
[State -1, 5X]
type = ChangeState
value = 200
triggerall = numhelper(99999) = 1 && helper(99999), fvar(20) || command = "x"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = command != "x+y" 
triggerall = command != "x+y+z" 
triggerall = command != "QCF_x"
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 200 && movecontact && time > 14 
trigger3 = stateno = 400 && movecontact && time > 11

;---------------------------------------------------------------------------
;6X
[State -1, 6X]
type = ChangeState
value = 205
triggerall = numhelper(99999) = 1 && helper(99999), fvar(20) || command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "x+y" 
triggerall = command != "x+y+z" 
triggerall = command != "QCF_x"
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 200 && movecontact && time > 14 
trigger3 = stateno = 400 && movecontact && time > 11
trigger4 = stateno = 210 && movecontact && time > 15 

;---------------------------------------------------------------------------
;5Y
[State -1, 5Y]
type = ChangeState
value = 210
triggerall = numhelper(99999) = 1 && helper(99999), fvar(21) || command = "y"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = command != "x+y" 
triggerall = command != "x+y+z" 
triggerall = command != "QCF_y"
triggerall = command != "QCB_y"
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 200 && movecontact && time > 14 
trigger3 = stateno = 400 && movecontact && time > 11

;---------------------------------------------------------------------------
;5YY
[State -1, 5YY/6Y]
type = ChangeState
value = 211
triggerall = numhelper(99999) = 1 && helper(99999), fvar(21) || command = "y"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = command != "x+y" 
triggerall = command != "x+y+z" 
triggerall = command != "QCF_y"
triggerall = command != "QCB_y"
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = stateno = 210 && movecontact || stateno = 210 && time > 15

;---------------------------------------------------------------------------
;6Y
[State -1, 5YY/6Y]
type = ChangeState
value = 215
triggerall = numhelper(99999) = 1 && helper(99999), fvar(21) || command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "x+y" 
triggerall = command != "x+y+z" 
triggerall = command != "QCF_y"
triggerall = command != "QCB_y"
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = command = "holdfwd"
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 

;---------------------------------------------------------------------------
;5Z
[State -1, 5Z]
type = ChangeState
value = 220
triggerall = numhelper(99999) = 1 && helper(99999), fvar(22) || command = "z"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = command != "x+y+z" 
triggerall = command != "QCF_z"
triggerall = command != "QCB_z"
triggerall = command != "Astral Heat: Patriot Apocalypse"
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 

;---------------------------------------------------------------------------
;6Z
[State -1, 6Z]
type = ChangeState
value = 225
triggerall = numhelper(99999) = 1 && helper(99999), fvar(22) || command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "x+y+z"
triggerall = command != "QCF_z"
triggerall = command != "Astral Heat: Patriot Apocalypse" 
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 200 && movecontact && time > 14 
trigger3 = stateno = 400 && movecontact && time > 11
trigger4 = stateno = 210 && movecontact && time > 15 
trigger5 = stateno = 215 && time > 29
trigger6 = stateno = 220 && movecontact

;---------------------------------------------------------------------------
;Counter Assault
[State -1, Counter Assault]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = alive          
;triggerall = stateno != [810,812]  
;triggerall = stateno = 5110 || stateno = 5150 
triggerall = (499 - (250 *( palno = [11,12])))
triggerall = command != "b+c"
triggerall = numhelper(99999) = 1 && helper(99999), fvar(24)  || command = "b" 
triggerall = command = "holdfwd"
trigger1 = hitshakeover || !hitshakeover
trigger1 = stateno = [150,153]             
value = 300

;---------------------------------------------------------------------------
;Crush Trigger
[State -1, Crush Trigger]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = alive          
;triggerall = stateno != [810,812]  
;triggerall = stateno = 5110 || stateno = 5150 
triggerall = power > 249
triggerall = numhelper(99999) = 1 && helper(99999), fvar(24) || command = "b"
triggerall = command != "b+c"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 5120 && time > 13  
trigger2 = stateno = 200 && movecontact && time > 14 
trigger3 = stateno = 400 && movecontact && time > 11
trigger4 = stateno = 210 && movecontact && time > 15 
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 410 && movecontact && time > 20     
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 420 && movecontact  
trigger9 = stateno = 1250 && movecontact
trigger10 = stateno = 1300 && movecontact  
trigger11 = stateno = 1350 && movecontact
trigger12 = stateno = 1450 && movecontact && animelemtime(12)>=1 
trigger13 = stateno = 1500 && movecontact && animelemtime(10)>=1  
trigger14 = stateno = 1550 && movecontact && animelemtime(13)>=1   
trigger15 = stateno = 1050 && movecontact
trigger16 = stateno = 1110 && movecontact  
trigger17 = stateno = 1150 && movecontact && animelemtime(12) >= 1
value = 310

;---------------------------------------------------------------------------
;2X
[State -1, 2X]
type = ChangeState
value = 400
triggerall = numhelper(99999) = 1 && helper(99999), fvar(20) || command = "x"
triggerall = command = "holddown"
triggerall = var(59) != 1
triggerall = command != "x+y+z" 
triggerall = command != "QCF_x"
triggerall = !AIlevel
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 400 && movecontact && time > 11 
trigger3 = stateno = 200 && movecontact && time > 14

;---------------------------------------------------------------------------
;2Y
[State -1, 2Y]
type = ChangeState
value = 410
triggerall = numhelper(99999) = 1 && helper(99999), fvar(21) || command = "y"
triggerall = command = "holddown"
triggerall = var(59) != 1
triggerall = command != "x+y+z" 
triggerall = command != "QCF_y"
triggerall = command != "QCB_y"
triggerall = !AIlevel
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 200 && movecontact && time > 14 
trigger3 = stateno = 400 && movecontact && time > 11

;---------------------------------------------------------------------------
;2Z
[State -1, 2Z]
type = ChangeState
value = 420
triggerall = numhelper(99999) = 1 && helper(99999), fvar(22) || command = "z"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = var(59) != 1
triggerall = command != "x+y+z" 
triggerall = command != "QCF_z"
triggerall = command != "~D, D, z"
triggerall = !AIlevel
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 200 && movecontact && time > 14 
trigger3 = stateno = 210 && movecontact && time > 14 
trigger4 = stateno = 410 && movecontact && time > 20

;---------------------------------------------------------------------------
;3Z
[State -1, 3Z]
type = ChangeState
value = 430
triggerall = numhelper(99999) = 1 && helper(99999), fvar(22) || command = "z"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = var(59) != 1
triggerall = command != "x+y+z" 
triggerall = command != "QCF_z"
triggerall = !AIlevel
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 420 && movecontact && time > 26
trigger3 = stateno = 210 && movecontact && time > 15 

;---------------------------------------------------------------------------
;j.X
[State -1, j.X]
type = ChangeState
value = 600
triggerall = numhelper(99999) = 1 && helper(99999), fvar(20) || command = "x"
triggerall = command != "x+y+z" 
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = statetype = A
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger1 = var(44) = 0
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact && var(46) != 0
trigger5 = stateno = 630 && movecontact && var(46) != 0
trigger6 = stateno = 2420 && pos y < -1 && var(44) != 0

;---------------------------------------------------------------------------
;j.Y
[State -1, j.Y]
type = ChangeState
value = 610
triggerall = numhelper(99999) = 1 && helper(99999), fvar(21) || command = "y"
triggerall = command != "x+y+z" 
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = statetype = A
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger1 = var(44) = 0
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact && var(46) != 0
trigger4 = stateno = 620 && movecontact && var(46) != 0
trigger5 = stateno = 630 && movecontact && var(46) != 0
trigger6 = stateno = 2420 && pos y < -1 && var(44) != 0

;---------------------------------------------------------------------------
;j.Z
[State -1, j.Z]
type = ChangeState
value = 620
triggerall = numhelper(99999) = 1 && helper(99999), fvar(22) || command = "z"
triggerall = command != "x+y+z" 
triggerall = command != "holddown"
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = statetype = A
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger1 = var(44) = 0
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact && var(46) != 0
trigger5 = stateno = 630 && movecontact && var(46) != 0
trigger6 = stateno = 2420 && pos y < -1 && var(44) != 0

;---------------------------------------------------------------------------
;j.2Z
[State -1, j.Z]
type = ChangeState
value = 630
triggerall = numhelper(99999) = 1 && helper(99999), fvar(22) || command = "z"
triggerall = command != "x+y+z" 
triggerall = command = "holddown"
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = statetype = A
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger1 = var(44) = 0
trigger2 = stateno = 600 && movecontact && var(46) != 0
trigger3 = stateno = 610 && movecontact && var(46) != 0
trigger4 = stateno = 620 && movecontact && var(46) != 0
trigger5 = stateno = 630 && movecontact && var(46) != 0
trigger6 = stateno = 2420 && pos y < -1 && var(44) != 0

;---------------------------------------------------------------------------
;Throw
[State -1, 3Z]
type = ChangeState
value = 800
triggerall = numhelper(99999) = 1 && helper(99999), fvar(25) || command = "c"
triggerall = command != "b+c"
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 200 && movecontact 
trigger3 = stateno = 400 && movecontact 

;---------------------------------------------------------------------------
;Air Throw
[State -1, 3Z]
type = ChangeState
value = 850
triggerall = numhelper(99999) = 1 && helper(99999), fvar(25) || command = "c"
triggerall = command != "b+c"
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = stateno = 600 && movecontact 

;---------------------------------------------------------------------------
[State -1, Distortion: Scud Punishment]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = alive          
triggerall = command = "Distortion: Scud Punishment"
triggerall = power > 499
;triggerall = numexplod(90000) != 1
trigger1 = ctrl || stateno = 5120 && time > 13 || stateno = 2420 && pos y > -1
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 410 && movecontact 
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact 
trigger6 = stateno = 200 && movecontact 
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 806 && movecontact
value = 3000

;---------------------------------------------------------------------------
[State -1, Distortion: Black Hawk Stinger]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = alive          
triggerall = command = "Distortion: Black Hawk Stinger"
triggerall = power > 499
triggerall = numexplod(90000) != 1
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13  || stateno = 2420 && pos y > -1
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 410 && movecontact 
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact 
trigger6 = stateno = 200 && movecontact 
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 806 && movecontact
value = 3100

;---------------------------------------------------------------------------
[State -1, Distortion Overdrive: Black Hawk Stinger]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = alive          
triggerall = command = "Distortion: Black Hawk Stinger"
triggerall = power > 499
triggerall = numexplod(90000) = 1
trigger1 = statetype != A || stateno = 2420 && pos y > -1 
trigger1 = ctrl || stateno = 5120 && time > 13  || stateno = 2420 && pos y > -1
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 410 && movecontact 
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact 
trigger6 = stateno = 200 && movecontact 
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 1000 && movecontact
trigger9 = stateno = 1010 && movecontact
trigger10 = stateno = 1100 && movecontact
trigger11 = stateno = 1110 && movecontact
trigger12 = stateno = 1200 && movecontact
trigger13 = stateno = 1210 && movecontact
trigger14 = stateno = 1300 && movecontact
trigger15 = stateno = 1310 && movecontact
trigger16 = stateno = 806 && movecontact
value = 3110

;---------------------------------------------------------------------------
;5A
[State -1, 5A]
type = ChangeState
value = 1000
triggerall = numhelper(99999) = 1 && helper(99999), fvar(23) || command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "QCF_a"
triggerall = command != "QCB_a"
triggerall = command != "Distortion: Black Hawk Stinger"
triggerall = command != "Distortion: Scud Punishment"
triggerall = var(59) != 1
triggerall = numhelper(1998) = 0
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 200 && movecontact && time > 14 
trigger3 = stateno = 210 && movecontact && time > 14 
trigger4 = stateno = 400 && movecontact && time > 11 
trigger5 = stateno = 410 && movecontact && time > 20
trigger6 = stateno = 211 && movecontact 

;---------------------------------------------------------------------------
;5A - Weak Point Active
[State -1, 5A]
type = ChangeState
value = 1010
triggerall = numhelper(99999) = 1 && helper(99999), fvar(23) || command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "QCF_a"
triggerall = command != "QCB_a"
triggerall = command != "Distortion: Black Hawk Stinger"
triggerall = command != "Distortion: Scud Punishment"
triggerall = var(59) != 1
triggerall = numhelper(1998) > 0
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 200 && movecontact && time > 14 
trigger3 = stateno = 210 && movecontact && time > 14 
trigger4 = stateno = 400 && movecontact && time > 11 
trigger5 = stateno = 410 && movecontact && time > 20
trigger6 = stateno = 211 && movecontact 

;---------------------------------------------------------------------------
;2A
[State -1, 2A]
type = ChangeState
value = 1100
triggerall = numhelper(99999) = 1 && helper(99999), fvar(23) || command = "a"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "QCF_a"
triggerall = command != "QCB_a"
triggerall = command != "Distortion: Scud Punishment"
triggerall = var(59) != 1
triggerall = numhelper(1999) = 0
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 200 && movecontact && time > 14 
trigger3 = stateno = 210 && movecontact && time > 14 
trigger4 = stateno = 400 && movecontact && time > 11 
trigger5 = stateno = 410 && movecontact && time > 20
trigger6 = stateno = 211 && movecontact 

;---------------------------------------------------------------------------
;2A - Weak Point Active
[State -1, 2A]
type = ChangeState
value = 1110
triggerall = numhelper(99999) = 1 && helper(99999), fvar(23) || command = "a"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "QCF_a"
triggerall = command != "QCB_a"
triggerall = command != "Distortion: Scud Punishment"
triggerall = var(59) != 1
triggerall = numhelper(1999) > 0
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 200 && movecontact && time > 14 
trigger3 = stateno = 210 && movecontact && time > 14 
trigger4 = stateno = 400 && movecontact && time > 11 
trigger5 = stateno = 410 && movecontact && time > 20
trigger6 = stateno = 211 && movecontact 

;---------------------------------------------------------------------------
;6A
[State -1, 6A]
type = ChangeState
value = 1200
triggerall = numhelper(99999) = 1 && helper(99999), fvar(23) || command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = command != "QCF_a"
triggerall = command != "QCB_a"
triggerall = command != "Distortion: Black Hawk Stinger"
triggerall = var(59) != 1
triggerall = numhelper(1998) = 0
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 400 && movecontact && time > 11 
trigger3 = stateno = 410 && movecontact && time > 20
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact && time > 22
trigger6 = stateno = 420 && movecontact && time > 26
trigger7 = stateno = 215 && time > 29

;---------------------------------------------------------------------------
;6A - Weak Point Active
[State -1, 6A]
type = ChangeState
value = 1210
triggerall = numhelper(99999) = 1 && helper(99999), fvar(23) || command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = command != "QCF_a"
triggerall = command != "QCB_a"
triggerall = command != "Distortion: Black Hawk Stinger"
triggerall = var(59) != 1
triggerall = numhelper(1998) > 0
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 400 && movecontact && time > 11 
trigger3 = stateno = 410 && movecontact && time > 20
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact && time > 22
trigger6 = stateno = 420 && movecontact && time > 26
trigger7 = stateno = 215 && time > 29

;---------------------------------------------------------------------------
;3A
[State -1, 3A]
type = ChangeState
value = 1300
triggerall = numhelper(99999) = 1 && helper(99999), fvar(23) || command = "a"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = command != "QCF_a"
triggerall = command != "QCB_a"
triggerall = command != "Distortion: Scud Punishment"
triggerall = var(59) != 1
triggerall = numhelper(1999) = 0
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 400 && movecontact && time > 11 
trigger3 = stateno = 410 && movecontact && time > 20
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact && time > 22
trigger6 = stateno = 420 && movecontact && time > 26
trigger7 = stateno = 215 && time > 29

;---------------------------------------------------------------------------
;3A - Weak Point Active
[State -1, 3A]
type = ChangeState
value = 1310
triggerall = numhelper(99999) = 1 && helper(99999), fvar(23) || command = "a"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = command != "QCF_a"
triggerall = command != "QCB_a"
triggerall = command != "Distortion: Scud Punishment"
triggerall = var(59) != 1
triggerall = numhelper(1999) > 0
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 400 && movecontact && time > 11 
trigger3 = stateno = 410 && movecontact && time > 20
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact && time > 22
trigger6 = stateno = 420 && movecontact && time > 26
trigger7 = stateno = 215 && time > 29

;---------------------------------------------------------------------------
;j.A
[State -1, j.A]
type = ChangeState
value = 1400
triggerall = numhelper(99999) = 1 && helper(99999), fvar(23) || command = "a"
triggerall = command != "holddown"
triggerall = var(59) != 1
triggerall = numhelper(1998) = 0
trigger1 = statetype = A
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact

;---------------------------------------------------------------------------
;j.A - Weak Point Active
[State -1, j.A]
type = ChangeState
value = 1410
triggerall = numhelper(99999) = 1 && helper(99999), fvar(23) || command = "a"
triggerall = command != "holddown"
triggerall = var(59) != 1
triggerall = numhelper(1998) > 0
trigger1 = statetype = A
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact

;---------------------------------------------------------------------------
;j.2A
[State -1, j.2A]
type = ChangeState
value = 1500
triggerall = numhelper(99999) = 1 && helper(99999), fvar(23) || command = "a"
triggerall = command = "holddown"
triggerall = var(59) != 1
triggerall = numhelper(1999) = 0
trigger1 = statetype = A
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact

;---------------------------------------------------------------------------
;j.2A - Weak Point Active
[State -1, j.2A]
type = ChangeState
value = 1510
triggerall = numhelper(99999) = 1 && helper(99999), fvar(23) || command = "a"
triggerall = command = "holddown"
triggerall = var(59) != 1
triggerall = numhelper(1999) > 0
trigger1 = statetype = A
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact

;---------------------------------------------------------------------------
;Tiger Magnum
[State -1, Tiger Magnum]
type = ChangeState
value = 2000
triggerall = command = "QCF_z"
triggerall = command != "Astral Heat: Patriot Apocalypse"
triggerall = var(59) != 1
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 410 && movecontact 
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact 
trigger6 = stateno = 200 && movecontact 
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 1000 && movecontact && numexplod(90000) = 1
trigger9 = stateno = 1010 && movecontact && numexplod(90000) = 1
trigger10 = stateno = 1100 && movecontact && numexplod(90000) = 1
trigger11 = stateno = 1110 && movecontact && numexplod(90000) = 1
trigger12 = stateno = 1200 && movecontact && numexplod(90000) = 1
trigger13 = stateno = 1210 && movecontact && numexplod(90000) = 1
trigger14 = stateno = 1300 && movecontact && numexplod(90000) = 1
trigger15 = stateno = 1310 && movecontact && numexplod(90000) = 1
trigger16 = stateno = 806 && movecontact

;---------------------------------------------------------------------------
;Cobra Strike
[State -1, Cobra Strike]
type = ChangeState
value = 2100
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = var(59) != 1
trigger1 = stateno = 2000 && movecontact
trigger2 = stateno = 2000 && time = [16,25]

;---------------------------------------------------------------------------
;Leopard Launcher
[State -1, Leopard Launcher]
type = ChangeState
value = 2200
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = var(59) != 1
trigger1 = stateno = 2100 && movecontact
trigger2 = stateno = 2100 && time = [15,21]

;---------------------------------------------------------------------------
;Hornet Bunker
[State -1, Hornet Bunker]
type = ChangeState
value = 2300
;triggerall = command = "a"
triggerall = command = "QCB_a"
triggerall = command != "Distortion: Scud Punishment"
triggerall = var(59) != 1
triggerall = numhelper(1999) = 0
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 410 && movecontact 
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact 
trigger6 = stateno = 200 && movecontact 
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 1000 && movecontact && numexplod(90000) = 1
trigger9 = stateno = 1010 && movecontact && numexplod(90000) = 1
trigger10 = stateno = 1100 && movecontact && numexplod(90000) = 1
trigger11 = stateno = 1110 && movecontact && numexplod(90000) = 1
trigger12 = stateno = 1200 && movecontact && numexplod(90000) = 1
trigger13 = stateno = 1210 && movecontact && numexplod(90000) = 1
trigger14 = stateno = 1300 && movecontact && numexplod(90000) = 1
trigger15 = stateno = 1310 && movecontact && numexplod(90000) = 1
trigger16 = stateno = 2100 && movecontact
trigger17 = stateno = 2100 && time = [15,21]
trigger18 = stateno = 806 && movecontact

;---------------------------------------------------------------------------
;Hornet Bunker - Weak Point Active
[State -1, Hornet Bunker]
type = ChangeState
value = 2310
triggerall = command = "QCB_a"
triggerall = command != "Distortion: Scud Punishment"
triggerall = var(59) != 1
triggerall = numhelper(1999) > 0
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 410 && movecontact 
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact 
trigger6 = stateno = 200 && movecontact 
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 1000 && movecontact && numexplod(90000) = 1
trigger9 = stateno = 1010 && movecontact && numexplod(90000) = 1
trigger10 = stateno = 1100 && movecontact && numexplod(90000) = 1
trigger11 = stateno = 1110 && movecontact && numexplod(90000) = 1
trigger12 = stateno = 1200 && movecontact && numexplod(90000) = 1
trigger13 = stateno = 1210 && movecontact && numexplod(90000) = 1
trigger14 = stateno = 1300 && movecontact && numexplod(90000) = 1
trigger15 = stateno = 1310 && movecontact && numexplod(90000) = 1
trigger16 = stateno = 2100 && movecontact
trigger17 = stateno = 2100 && time = [15,21]
trigger18 = stateno = 806 && movecontact

;---------------------------------------------------------------------------
;Hornet Chaser
[State -1, Hornet Chaser]
type = ChangeState
value = 2320
triggerall = command = "holdup"
triggerall = var(59) != 1
trigger1 = stateno = 2310 && movehit > 1

;---------------------------------------------------------------------------
;Valiant Crash
[State -1, Valiant Crash]
type = ChangeState
value = 2400
triggerall = command = "QCF_a"
triggerall = command != "Distortion: Black Hawk Stinger"
triggerall = var(59) != 1
triggerall = numhelper(1998) = 0
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 410 && movecontact 
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact 
trigger6 = stateno = 200 && movecontact 
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 1000 && movecontact && numexplod(90000) = 1
trigger9 = stateno = 1010 && movecontact && numexplod(90000) = 1
trigger10 = stateno = 1100 && movecontact && numexplod(90000) = 1
trigger11 = stateno = 1110 && movecontact && numexplod(90000) = 1
trigger12 = stateno = 1200 && movecontact && numexplod(90000) = 1
trigger13 = stateno = 1210 && movecontact && numexplod(90000) = 1
trigger14 = stateno = 1300 && movecontact && numexplod(90000) = 1
trigger15 = stateno = 1310 && movecontact && numexplod(90000) = 1
trigger16 = stateno = 2100 && movecontact
trigger17 = stateno = 2100 && time = [15,21]
trigger18 = stateno = 806 && movecontact

;---------------------------------------------------------------------------
;Valiant Crash - Weak Point Active
[State -1, Valiant Crash]
type = ChangeState
value = 2410
triggerall = command = "QCF_a"
triggerall = command != "Distortion: Black Hawk Stinger"
triggerall = var(59) != 1
triggerall = numhelper(1998) > 0
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 410 && movecontact 
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact 
trigger6 = stateno = 200 && movecontact 
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 1000 && movecontact && numexplod(90000) = 1
trigger9 = stateno = 1010 && movecontact && numexplod(90000) = 1
trigger10 = stateno = 1100 && movecontact && numexplod(90000) = 1
trigger11 = stateno = 1110 && movecontact && numexplod(90000) = 1
trigger12 = stateno = 1200 && movecontact && numexplod(90000) = 1
trigger13 = stateno = 1210 && movecontact && numexplod(90000) = 1
trigger14 = stateno = 1300 && movecontact && numexplod(90000) = 1
trigger15 = stateno = 1310 && movecontact && numexplod(90000) = 1
trigger16 = stateno = 2100 && movecontact
trigger17 = stateno = 2100 && time = [15,21]
trigger18 = stateno = 806 && movecontact

;---------------------------------------------------------------------------
;Valiant Charger
[State -1, Valiant Charger]
type = ChangeState
value = 2420
triggerall = command = "fwd"
triggerall = var(59) != 1
;triggerall = var(36) < 5
trigger1 = stateno = 2410 && movehit; > 1
trigger2 = stateno = 200 && movecontact && var(44) > 0
trigger3 = stateno = 205 && movecontact && var(44) > 0
trigger4 = stateno = 210 && movecontact && var(44) > 0
trigger5 = stateno = 211 && movecontact && var(44) > 0
trigger6 = stateno = 215 && movecontact && var(44) > 0
trigger7 = stateno = 220 && movecontact && var(44) > 0
trigger8 = stateno = 225 && movecontact && var(44) > 0
trigger9 = stateno = 400 && movecontact && var(44) > 0
trigger10 = stateno = 410 && movecontact && var(44) > 0
trigger11 = stateno = 420 && movecontact && var(44) > 0
trigger12 = stateno = 430 && movecontact && var(44) > 0
trigger13 = stateno = 600 && movecontact && var(44) > 0
trigger14 = stateno = 610 && movecontact && var(44) > 0
trigger15 = stateno = 620 && movecontact && var(44) > 0
trigger16 = stateno = 630 && movecontact && var(44) > 0
trigger17 = stateno = 2700 && movecontact && var(44) > 0
trigger18 = stateno = 2800 && animelem = 5 && enemy,movetype = H && var(44) > 0
trigger19 = stateno = 2500 && movecontact && var(44) > 0
trigger20 = stateno = 2600 && animelem = 12 && enemy,movetype = H && var(44) > 0

;---------------------------------------------------------------------------
;Gustaf Buster
[State -1, Gustaf Buster]
type = ChangeState
value = 2500
triggerall = command = "QCF_x"
triggerall = var(59) != 1
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 410 && movecontact 
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact 
trigger6 = stateno = 200 && movecontact 
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 1000 && movecontact && numexplod(90000) = 1
trigger9 = stateno = 1010 && movecontact && numexplod(90000) = 1
trigger10 = stateno = 1100 && movecontact && numexplod(90000) = 1
trigger11 = stateno = 1110 && movecontact && numexplod(90000) = 1
trigger12 = stateno = 1200 && movecontact && numexplod(90000) = 1
trigger13 = stateno = 1210 && movecontact && numexplod(90000) = 1
trigger14 = stateno = 1300 && movecontact && numexplod(90000) = 1
trigger15 = stateno = 1310 && movecontact && numexplod(90000) = 1
trigger16 = stateno = 806 && movecontact

;---------------------------------------------------------------------------
;Sentinel Dump - 214Z
[State -1, Sentinel Dump]
type = ChangeState
value = 2600
triggerall = command = "QCB_z"
triggerall = var(59) != 1
triggerall = command != "Astral Heat: Patriot Apocalypse"
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 410 && movecontact 
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact 
trigger6 = stateno = 200 && movecontact 
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 1000 && movecontact && numexplod(90000) = 1
trigger9 = stateno = 1010 && movecontact && numexplod(90000) = 1
trigger10 = stateno = 1100 && movecontact && numexplod(90000) = 1
trigger11 = stateno = 1110 && movecontact && numexplod(90000) = 1
trigger12 = stateno = 1200 && movecontact && numexplod(90000) = 1
trigger13 = stateno = 1210 && movecontact && numexplod(90000) = 1
trigger14 = stateno = 1300 && movecontact && numexplod(90000) = 1
trigger15 = stateno = 1310 && movecontact && numexplod(90000) = 1
trigger16 = stateno = 806 && movecontact

;---------------------------------------------------------------------------
;Sentinel Dump - 22Z
[State -1, Sentinel Dump]
type = ChangeState
value = 2650
triggerall = command = "~D, D, z"
triggerall = var(59) != 1
trigger1 = statetype != A
trigger1 = enemy,statetype = L || var(15) = 1
trigger1 = enemy,stateno != 5120
trigger1 = ctrl || stateno = 5120 && time > 13
trigger2 = stateno = 430 && movecontact && time > 21

;---------------------------------------------------------------------------
;Growler Field
[State -1, Growler Field]
type = ChangeState
value = 2700
triggerall = command = "QCB_y"
triggerall = var(59) != 1
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 410 && movecontact 
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact 
trigger6 = stateno = 200 && movecontact 
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 1000 && movecontact && numexplod(90000) = 1
trigger9 = stateno = 1010 && movecontact && numexplod(90000) = 1
trigger10 = stateno = 1100 && movecontact && numexplod(90000) = 1
trigger11 = stateno = 1110 && movecontact && numexplod(90000) = 1
trigger12 = stateno = 1200 && movecontact && numexplod(90000) = 1
trigger13 = stateno = 1210 && movecontact && numexplod(90000) = 1
trigger14 = stateno = 1300 && movecontact && numexplod(90000) = 1
trigger15 = stateno = 1310 && movecontact && numexplod(90000) = 1
trigger16 = stateno = 806 && movecontact

;---------------------------------------------------------------------------
;Phalanx Cannon
[State -1, Phalanx Cannon]
type = ChangeState
value = 2800
triggerall = command = "QCF_y"
triggerall = var(47) > 0 || palno = 12 
triggerall = var(59) != 1
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 410 && movecontact 
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact 
trigger6 = stateno = 200 && movecontact 
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 1000 && movecontact && numexplod(90000) = 1
trigger9 = stateno = 1010 && movecontact && numexplod(90000) = 1
trigger10 = stateno = 1100 && movecontact && numexplod(90000) = 1
trigger11 = stateno = 1110 && movecontact && numexplod(90000) = 1
trigger12 = stateno = 1200 && movecontact && numexplod(90000) = 1
trigger13 = stateno = 1210 && movecontact && numexplod(90000) = 1
trigger14 = stateno = 1300 && movecontact && numexplod(90000) = 1
trigger15 = stateno = 1310 && movecontact && numexplod(90000) = 1
trigger16 = stateno = 2702
trigger17 = stateno = 806 && movecontact

;---------------------------------------------------------------------------
[State -1, Astral Heat: Patriot Apocalypse]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = alive       
;triggerall = command != "Distortion: Ryuuha Gokuenjin"   
triggerall = command = "Astral Heat: Patriot Apocalypse"
triggerall = power > 999
triggerall = var(57) != 1 && palno != 12 || var(57) < 3 && palno = 12
triggerall = var(54) = 1 || palno = [11,12]  
trigger1 = statetype != A || stateno = 2420 && pos y > -1
trigger1 = ctrl || stateno = 5120 && time > 13 
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 410 && movecontact 
trigger4 = stateno = 211 && movecontact 
trigger5 = stateno = 220 && movecontact 
trigger6 = stateno = 200 && movecontact 
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 1000 && movecontact
trigger9 = stateno = 1010 && movecontact
trigger10 = stateno = 1100 && movecontact
trigger11 = stateno = 1110 && movecontact
trigger12 = stateno = 1200 && movecontact
trigger13 = stateno = 1210 && movecontact
trigger14 = stateno = 1300 && movecontact
trigger15 = stateno = 1310 && movecontact
trigger16 = stateno = 806 && movecontact
value = 4000

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 41
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = command = "super_jump" 
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && time > 29
;trigger3 = stateno = 215 && movecontact
;trigger4 = stateno = 200 && movecontact && time > 14

;---------------------------------------------------------------------------
[State -1, Extra Jump Controls]
type = ChangeState
value = 40
triggerall = command = "holdup"
triggerall = command != "super_jump" 
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = prevstateno != [102,103]
triggerall = stateno != 2320 
triggerall = stateno != 2420
trigger1 = stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && time > 29
;trigger2 = stateno = 215 && movecontact
;trigger3 = stateno = 200 && movecontact && time > 14
;trigger4 = stateno = 50 && var(19) < 2

;---------------------------------------------------------------------------
[State -1, Barrier]
type = ChangeState
value = 120
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = stateno != [120,155]
;triggerall = numhelper(6901) = 0
triggerall = command = "holdback"
triggerall = command = "hold_b"
trigger1 = ctrl || stateno = 5120 && time > 13
trigger2 = stateno = 101

;---------------------------------------------------------------------------
[State -1, Burst]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = alive          
;triggerall = stateno != [810,812]  
;triggerall = stateno = 5110 || stateno = 5150 
triggerall = var(58) >= 10000
triggerall = command = "b+c"   
triggerall = numexplod(10010) = 0
trigger1 = !hitshakeover
trigger1 = movetype = H                
value = 700

;---------------------------------------------------------------------------
[State -1, Rapid Cancel Ground]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = alive          
triggerall = power > 499
triggerall = command = "x+y+z"    
trigger1 = stateno = 300 && movecontact 
trigger2 = stateno = 310 && movecontact
trigger3 = stateno = 200 && movecontact 
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact 
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 220 && movecontact  
trigger8 = stateno = 225 && movecontact 
trigger9 = stateno = 400 && movecontact 
trigger10 = stateno = 410 && movecontact 
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact 
trigger13 = stateno = 211 && movecontact 
trigger14 = stateno = 805 && movecontact
trigger15 = stateno = 806 && movecontact
trigger16 = stateno = 855 && movecontact && pos y = 0
trigger17 = stateno = 1000 && movecontact
trigger18 = stateno = 1010 && movecontact
trigger19 = stateno = 1100 && movecontact
trigger20 = stateno = 1110 && movecontact
trigger21 = stateno = 1200 && movecontact
trigger22 = stateno = 1210 && movecontact
trigger23 = stateno = 1300 && movecontact
trigger24 = stateno = 1310 && movecontact
trigger25 = stateno = 2000 && movecontact
trigger26 = stateno = 2100 && movecontact
trigger27 = stateno = 2200 && movecontact
trigger28 = stateno = 2300 && movecontact
trigger29 = stateno = 2310 && movecontact
trigger30 = stateno = 2400 && movecontact
trigger31 = stateno = 2410 && movecontact
trigger32 = stateno = 2500 && movecontact
trigger33 = stateno = 2600 && movecontact 
trigger34 = stateno = 2650 && movecontact
trigger35 = stateno = 2700 && movecontact
trigger36 = stateno = 3100 && movecontact
trigger37 = stateno = 3110 && movecontact
value = 750

;---------------------------------------------------------------------------
[State -1, Rapid Cancel Aerial]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = alive          
triggerall = power > 499
triggerall = command = "x+y+z"      
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 620 && movecontact
trigger4 = stateno = 630 && movecontact 
trigger5 = stateno = 1400 && movecontact
trigger6 = stateno = 1410 && movecontact
trigger7 = stateno = 1500 && movecontact
trigger8 = stateno = 1510 && movecontact  
value = 760

;---------------------------------------------------------------------------
[State -1, Overdrive]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = alive          
triggerall = var(58) >= 10000
triggerall = command = "b+c"   
triggerall = numhelper(12000) = 0
trigger1 = ctrl 
trigger2 = stateno = [120,155]     
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact  
trigger6 = stateno = 400 && movecontact 
trigger7 = stateno = 410 && movecontact   
trigger8 = stateno = 600 && movecontact
trigger9 = stateno = 610 && movecontact
trigger10 = stateno = 620 && movecontact  
trigger11 = stateno = 630 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 1400 && movecontact
trigger14 = stateno = 1410 && movecontact
trigger15 = stateno = 1500 && movecontact
trigger16 = stateno = 1510 && movecontact  
trigger17 = stateno = 210 && movecontact
value = 900

;---------------------------------------------------------------------------
[State -1, Ground Recover Roll Forwards]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = alive          
triggerall = stateno != 5120 || stateno != [710,712] 
triggerall = stateno = 5110 || stateno = 5150 
trigger1 = command = "c"
trigger1 = command = "holdfwd"   
trigger2 = command = "x" || command = "y" || command = "z"   
trigger2 = command = "holdfwd"                  
value = 710 

;---------------------------------------------------------------------------
[State -1, Ground Recover Roll Backwards]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = stateno = 5110 || stateno = 5150  
triggerall = alive 
triggerall = stateno != 5120 || stateno != [710,712]  
trigger1 = command = "c"
trigger1 = command = "holdback"  
trigger2 = command = "x" || command = "y" || command = "z"
trigger2 = command = "holdback"                         
value = 711

;---------------------------------------------------------------------------
[State -1, Ground Recover Roll On Point - Neutral Tech]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = stateno = 5110 || stateno = 5150  
triggerall = alive 
triggerall = stateno != 5120 || stateno != [710,712] 
trigger1 = command = "c"
trigger1 = command != "holddown"   
trigger1 = command != "holdfwd"  
trigger1 = command != "holdback" 
trigger2 = command = "x" || command = "y" || command = "z"    
trigger2 = command != "holddown"   
trigger2 = command != "holdfwd"   
trigger2 = command != "holdback"             
value = 712

;---------------------------------------------------------------------------
[State -1, Recover Roll Right Before The Ground - Emergency Tech]
type = changestate
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = alive && hitfall && gethitvar(fall.recover) && canrecover
triggerall = command = "x" || command = "y" || command = "z" 
trigger1 = stateno = [5080,5120]     
value = 712
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -1, Ground Recover Roll On Point - Quick Tech]
type = ChangeState
triggerall = var(59) != 1
triggerall = !AIlevel
triggerall = stateno = 5110 || stateno = 5150  
triggerall = alive 
triggerall = stateno != 5120 || stateno != [810,812]   
trigger1 = command = "c"
trigger1 = command = "holddown"   
trigger1 = command != "holdfwd"   
trigger2 = command = "x" || command = "y" || command = "z"    
trigger2 = command = "holddown"   
trigger2 = command != "holdfwd"                   
value = 5120

;---------------------------------------------------------------------------
[State -1, I Shall Taunt You]
type = ChangeState
value = 2
triggerall = command = "start"
triggerall = var(59) != 1
triggerall = !AIlevel
trigger1 = statetype != A
trigger1 = ctrl