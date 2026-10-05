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
name = "KokuujinYukikaze"
command = ~D, DB, B, x+y


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
[State -1, Rengoku Hyouya]
type = changestate
value = 3900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DDD_ab"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = Var(50) != 1
triggerall = p2life <= (enemynear,lifemax)*.25
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 830) && movecontact
trigger7 = stateno = 810 && movecontact
trigger7 = animelemtime(9) >= 1
trigger8 = stateno = 819 && movecontact
trigger9 = (stateno = 220) && movehit
trigger10 = stateno = 203 && movehit
;---------------------------------------------------------------------------
[State -1, Hiyoku Getsumei]
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
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 830) && movecontact
trigger7 = stateno = 810 && movecontact
trigger7 = animelemtime(9) >= 1
trigger8 = stateno = 819 && movecontact
trigger9 = (stateno = 220) && movehit
trigger10 = stateno = 203 && movehit
;---------------------------------------------------------------------------
[State -1, Air Hiyoku Getsumei]
type = changestate
value = 3075
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Hiyoku Getsumei]
type = changestate
value = 3075
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numexplod(5993)
triggerall = numexplod(5997)
triggerall = power >= 1000
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Touga Hyojin]
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
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 830) && movecontact
trigger7 = stateno = 810 && movecontact
trigger7 = animelemtime(9) >= 1
trigger8 = stateno = 819 && movecontact
trigger9 = (stateno = 220) && movehit
trigger10 = stateno = 203 && movehit
;--------------------------------
[State -1, Changestate]
type = ChangeState
value = 13000
triggerall = !ishelper
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = command = "KokuujinYukikaze"
triggerall = power >= 1500
triggerall = statetype != A
trigger2 = (stateno = [200,222]) && movecontact
trigger3 = (stateno = [420,450]) && movecontact
trigger4 = (stateno = [1000,1002]) && movecontact
trigger5 = stateno = 1500 && movecontact
trigger1 = ctrl

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
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 830) && movecontact
trigger7 = stateno = 810 && movecontact
trigger7 = animelemtime(9) >= 1
trigger8 = stateno = 819 && movecontact
trigger9 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Hirensou]
type = changestate
value = 1300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = stateno = 5120 && time >= 3
trigger7 = stateno = 810 && movecontact
trigger7 = animelemtime(9) >= 1
trigger8 = stateno = 819 && movecontact
trigger9 = (stateno = 220) && movehit

;---------------------------------------------------------------------------
[State -1, Hishouken]
type = changestate
value = 1100
triggerall = var(36) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = stateno = 810 && movecontact
trigger6 = animelemtime(9) >= 1
trigger7 = stateno = 819 && movecontact
trigger8 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Hishougeki]
type = changestate
value = 1101
triggerall = var(36) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = stateno = 810 && movecontact
trigger6 = animelemtime(9) >= 1
trigger7 = stateno = 819 && movecontact
trigger8 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Hishousetsu]
type = changestate
value = 1102
triggerall = var(36) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = stateno = 810 && movecontact
trigger6 = animelemtime(9) >= 1
trigger7 = stateno = 819 && movecontact
trigger8 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Air Hishouken]
type = changestate
value = 1110
triggerall = var(36) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Hishouken(Buffered)]
type = changestate
value = 1110
triggerall = var(36) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numexplod(5990)
triggerall = numexplod(5998)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Hishougeki]
type = changestate
value = 1111
triggerall = var(36) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Hishougeki (Buffered)]
type = changestate
value = 1111
triggerall = var(36) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numexplod(5991)
triggerall = numexplod(5998)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Musou Senhouzan A]
type = changestate
value = 1000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = stateno = 810 && movecontact
trigger6 = animelemtime(9) >= 1
trigger7 = stateno = 819 && movecontact
trigger8 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Musou Senhouzan B]
type = changestate
value = 1001
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = stateno = 810 && movecontact
trigger6 = animelemtime(9) >= 1
trigger7 = stateno = 819 && movecontact
trigger8 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Musou Tousshugeki]
type = changestate
value = 1003
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = stateno = 810 && movecontact
trigger6 = animelemtime(9) >= 1
trigger7 = stateno = 819 && movecontact
trigger8 = (stateno = 220) && movehit
;---------------------------------------------------------------------------
[State -1, Hizansen]
type = changestate
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
[State -1, Hizansen (Buffered)]
type = changestate
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numexplod(5990)
triggerall = numexplod(5997)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Hizangeki]
type = changestate
value = 1201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Hizangeki (Buffered)]
type = changestate
value = 1201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numexplod(5991)
triggerall = numexplod(5997)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, EX Hizangeki]
type = changestate
value = 1202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = statetype = A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, EX Hizangeki (Buffered)]
type = changestate
value = 1202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numexplod(5992)
triggerall = numexplod(5997)
triggerall = statetype = A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Hishousetsu]
type = changestate
value = 1112
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype = A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Hishousetsu (Buffered)]
type = changestate
value = 1112
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numexplod(5992)
triggerall = numexplod(5998)
triggerall = statetype = A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 230) && movecontact
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
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = 401) && Movecontact
trigger5 = (stateno = 410) && movecontact

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
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = 400) && Movecontact
trigger5 = (stateno = 410) && movecontact

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

[State -1, 4B]
type = ChangeState
value = 301
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact && time >= 10
trigger3 = (Stateno = [210,211]) && Movecontact && time >= 10
trigger4 = (Stateno = [400,401]) && Movecontact 
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
trigger1 = stateno = 200
trigger1 = Movecontact
trigger1 = animelemtime(8) >= 1

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
trigger1 = animelemtime(17) >= 0

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
trigger3 = (Stateno = [400,401]) && Movecontact
;trigger4 = stateno = 203 && movehit

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
[State -1, 5BBB]
type = changestate
value = 212
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 211
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5C]
type = changestate
value = 220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
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
value = 201
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
triggerall = command = "a" && command != "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(30) > 0
trigger1 = ctrl
trigger2 = (Stateno = 200) && Movecontact
trigger2 = prevstateno != 400

;---------------------------------------------------------------------------
[State -1, 3A]
type = ChangeState
value = 401
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a" && command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 3A]
type = ChangeState
value = 401
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a" && command = "holdfwd"
triggerall = command = "holddown"
triggerall = stateno = 401 && movecontact
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
trigger3 = (stateno = [210,212]) && Movecontact
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
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 615
trigger3 = movecontact

;---------------------------------------------------------------------------
;[State -1, jBB]
;type = changestate
;value = 611
;triggerall = !ishelper
;triggerall = !AIlevel
;triggerall = command = "b"
;triggerall = statetype = A
;trigger1 = stateno = 610
;trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, j2B]
type = changestate
value = 615
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,610]
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



[State -1, Barrier]
type = ChangeState
value = 120
triggerall = !AIlevel
triggerall = power >= 1
triggerall = stateno != 5120 
;triggerall = numhelper(6901) = 0
triggerall = command = "holdy"
trigger1 = ctrl 
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
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = !numhelper(8750)
triggerall = !fvar(19)
triggerall = Var(50) != 1
triggerall = !ishelper
triggerall = Alive
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = life <= lifemax * .95
triggerall = ctrl && statetype != A
triggerall = statetype = S
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3
trigger4 = stateno = 911 || stateno = 913
trigger4 = time >= 5
trigger5 = p2bodydist x >= 200
trigger6 = life < 200

[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = numhelper(9000)
triggerall = Var(50) != 1
triggerall = StateType != L
triggerall = alive && Roundstate = 2
triggerall = helper(9000),var(3) <= 0
triggerall = movetype = H
triggerall = life <= 1000
triggerall = life < Lifemax/1.1
triggerall = p2dist X = [0,30]
triggerall = p2dist Y = [-60,15]
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = enemy,stateno != [120,155]
triggerall = enemy,stateno != [800,899]
triggerall = enemy,stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger3 = enemy,movehit && p2stateno != [3000,4999]
trigger4 = enemy,numhelper
trigger4 = movetype = H && p2stateno != [3000,4999]
trigger5 = numenemy
trigger5 = enemy,movehit && p2stateno != [800,899]
trigger6 = life < 300


;===========================================================================
;AI-------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;Guarding
;===========================================================================
;---------------------------------------------------------------------------

[State -1, AI Guarding, Hard AI]
type = ChangeState
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = enemynear,movetype = A || inguarddist
;trigger1 = inguarddist
trigger1 = ctrl
trigger1 = random <= 599
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

;[State -1, Forward Dodge]
;type = ChangeState
;value = 161
;triggerall = AIlevel && numenemy
;triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30) && p2statetype!=A && facing!=enemynear(var(59)),facing&&p2bodydist X>0
;triggerall = RoundState = 2 && StateType != A&&!var(20)
;triggerall = ctrl || (StateNo = [100,101])
;trigger1 = enemy,animtime <-20
;trigger1 = (enemynear(var(59)),stateno = [helper(33000),var(45)-20,helper(33000),var(45)+20]) && helper(33000),var(45)!=0
;trigger1 = p2bodydist X <59
;trigger2 = (P2BodyDist X < 60||(enemynear(var(59)),vel X >0 && P2BodyDist X < 150)) && P2BodyDist X >= 1 && p2movetype = A
;trigger2 = enemy,animtime <-20
;trigger2 = p2statetype != A || p2stateno >=1000
;trigger3 = InGuardDist && enemynear(var(59)),animtime>-20 && (StateNo = [100,101])

;[State -1, Forward Dodge]
;type = ChangeState
;value = 161
;triggerall = AIlevel && numenemy
;triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30) && !var(20)
;triggerall = RoundState = 2 && StateType != A && P2statetype != A
;triggerall = prevstateno != 710 && enemynear(var(59)),vel X <=0
;triggerall = facing !=enemy,facing
;triggerall = ctrl || (Stateno = [19,21]) || (Stateno = [99,101])||(Stateno = [120,140))||(var(20) && var(4))
;trigger1 = enemy,numproj >=1 || (enemy,numhelper >helper(33000),var(44) && p2movetype = A)
;trigger1 = inguarddist && statetype != A
;trigger1 = enemy,animtime <-30 && P2BodyDist X <= 150
;trigger2 = p2movetype = A || (p2stateno>=1000)
;trigger2 = (P2BodyDist X = [30,100]) && enemy,animtime <-30 && statetype != A && p2movetype =A&&(p2stateno>=1000||random<100)
;trigger3 = P2BodyDist X <= 0 && P2statetype = A && p2movetype =A && statetype != A
;trigger4 = p2statetype =A && p2movetype = A && enemynear(var(59)),vel X > 0
;trigger4 = p2bodydist X = [-20,30]
;trigger4 = p2bodydist Y < -50
;trigger5 = p2statetype =A && p2movetype = A
;trigger5 = ((p2bodydist X = [-10,120])&& (enemynear(var(59)),vel Y < 0||p2bodydist Y < -80))||(p2bodydist X>150&&enemynear(var(59)),vel X < 0)

;===========================================================================
;Defense
;===========================================================================
;---------------------------------------------------------------------------
;[State -1, Forward Dodge]
;type = ChangeState
;value = ifelse(random <699,1300,161)
;triggerall = !ishelper
;triggerall = AIlevel && numenemy
;triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
;triggerall = roundstate = 2
;triggerall = statetype != A
;triggerall = ctrl
;triggerall = prevstateno != 161
;triggerall = facing != enemynear,facing
;trigger1 = p2movetype = A
;trigger1 = p2bodydist X = [0,80]
;trigger2 = p2movetype = A
;trigger2 = stateno = 100
;trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT) ;SCA,AP)
;trigger4 = PlayerIdExist(helper(33333333),var(3))
;trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) > 9
;trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) < 35

;===========================================================================
;Movement
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Run]
type = changestate
value = 100
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
type = changestate
value = 105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = enemynear,Vel X >= 4
;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
value = ifelse(random<399,840,611)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
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
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = ctrl
triggerall = pos Y <= -45
trigger1 = p2bodydist X >= 65

[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = var(50)=0
triggerall = life < 350
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = (stateno = 610)
trigger1 = movecontact
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
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [40,53]
triggerall = stateno != [160,162]
triggerall = p2stateno != [3000,3999]
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
trigger6 = prevstateno = 1003

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

[State -1, Air Jump]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = 45
triggerall = random<=450
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = (stateno = 620)
trigger1 = movecontact
trigger1 = enemynear,statetype != S
trigger1 = enemynear,statetype != C
;---------------------------------------------------------------------------
[State -1, Jump Forward]
type = varset
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = stateno = 40 || stateno = 45
trigger1 = p2movetype = H
sysvar(1) = 1

;===========================================================================
;Wake Up
;===========================================================================
[State -1, Hirensou]
type = changestate
value = ifelse (power >= 500 && random < 199,1301,1300)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 15
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [-10,50]
trigger1 = p2bodydist Y = [-70,0]
trigger1 = enemynear, Vel X >= 0

;===========================================================================
;Ground to Air
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Hirensou]
type = changestate
value = 1300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl && random < 199
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [-10,50]
trigger1 = p2bodydist Y = [-70,0]
trigger1 = enemynear, Vel X >= 0

;---------------------------------------------------------------------------

[State -1, 2B]
type = changestate
value = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A || p2statetype = L
triggerall = p2bodydist X = [20,65]
triggerall = p2bodydist Y = [-120,0]
triggerall = enemynear,stateno != [160,162]
triggerall = enemynear,pos Y <= -10
trigger1 = ctrl

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
triggerall = p2bodydist X = [-40,60]
triggerall = p2bodydist Y = [-95,55]
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
triggerall = p2bodydist X = [10,110]
triggerall = p2bodydist Y = [-95,15]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Hishouken]
type = changestate
value = 1110
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = var(36) = 0
triggerall = statetype = A
triggerall = p2bodydist X = [85,150]
triggerall = p2bodydist Y = [-60,0]
triggerall = enemynear,vel y >= 0
triggerall = enemynear,vel x < 0
triggerall = enemynear,ctrl = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Hishouken]
type = changestate
value = 1110
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = var(36) = 0
triggerall = statetype = A
triggerall = p2bodydist X >= 150
triggerall = enemynear,vel y >= 0
trigger1 = ctrl

[State -1, Rehhyou]
type = changestate
value = 102
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 500
trigger1 = stateno = 830 && movehit
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
triggerall = p2bodydist X = [-10,80]
triggerall = p2bodydist Y = [-30,95]
trigger1 = ctrl

;===========================================================================
;Ground to Ground
;===========================================================================
[State -1, Grab]
type = changestate
value = ifelse(random<399,1300,820)
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
[State -1, 4A]
type = changestate
value = 300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2bodydist X = [0,40]
triggerall = prevstateno != 300
trigger1 = ctrl

[State -1, 6B]
type = changestate
value = 301
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,720,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [0,20]
triggerall = p2statetype = C
triggerall = ctrl
trigger1 = (Stateno = [200,202]) && Moveguarded && time >= 10 && random > 250
trigger2 = (Stateno = [210,211]) && Movecontact && time >= 10 && random > 250
;---------------------------------------------------------------------------
[State -1, 5A]
type = changestate
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != C
triggerall = p2statetype != L
triggerall = p2bodydist Y = [-50,0]
triggerall = p2bodydist X = [0,65]
triggerall = prevstateno != 200
trigger1 = ctrl

[State -1, 66B]
type = ChangeState
value = 201
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [-2, 52]) && P2StateType != A && (P2StateType != L || (EnemyNear, StateNo = [5120, 5121]))
triggerAll = !(EnemyNear, StateNo = 55300)
trigger1 = (ctrl  || (StateNo = [100,101])) && P2BodyDist x >= 45 && (EnemyNear, StateNo != [5120, 5121]) && (EnemyNear, StateNo != [5200, 5201]) && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || (StateNo = [100,101])) && P2MoveType = H && EnemyNear, GetHitVar(HitTime) < 7
trigger3 = (ctrl  || (StateNo = [100,101])) && ((EnemyNear, StateNo = [5120, 5121]) || (EnemyNear, StateNo = [5200, 5201])) && EnemyNear, AnimTime = -4 && Random < (500 * (AILevel ** 2 / 64.0))
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
triggerall = p2bodydist X = [0,120]
triggerall = prevstateno != 200
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Hishouken]
type = changestate
value = ifelse(random<799,1300,1100)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = var(36) = 0
triggerall = statetype != A
triggerall = p2bodydist X = [85,150]
triggerall = p2bodydist Y = [-20,0]
triggerall = enemynear,vel y >= 0
triggerall = enemynear,vel x < 0
triggerall = enemynear,ctrl = 0
trigger1 = enemynear,movetype != H
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Hishouken]
type = changestate
value = ifelse(random<799 && power >= 1000,3000,1100)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = var(36) = 0
triggerall = statetype != A
triggerall = p2bodydist Y = [-20,0]
triggerall = p2bodydist X >= 150
triggerall = enemynear,vel y >= 0
trigger1 = enemynear,movetype != H
trigger1 = ctrl


[State -1, Hishousetsu]
type = changestate
value = 1102
triggerall = var(36) = 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = statetype != A
triggerall = power >= 500
triggerall = p2bodydist x = [10,70]
trigger1 = ctrl
trigger2 = (stateno = 211) && movehit


;---------------------------------------------------------------------------
[State -1, Hishouken]
type = changestate
value = 1101
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = var(36) = 0
triggerall = statetype != A
triggerall = p2bodydist X >= 120
triggerall = enemynear,vel y >= 0
trigger1 = enemynear,movetype = H
trigger1 = ctrl
trigger1 = random < 399

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
trigger2 = random < 399

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 401
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = p2bodydist X = [0,24]
trigger1 = ctrl
trigger2 = p2bodydist X = [0,24]
trigger2 = p2bodydist Y = [-35,35]
trigger2 = ctrl

;---------------------------------------------------------------------------

[State -1, 5C]
type = changestate
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [0,70]
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
triggerall = p2bodydist X = [50,120]
triggerall = enemynear,ctrl = 0
triggerall = p2statetype = S
triggerall = enemynear,stateno != 40
trigger1 = ctrl
trigger2 = stateno = [400,410]
trigger2 = moveguarded
trigger3 = stateno = 201 && moveguarded
trigger4 = stateno = 211 && moveguarded

;---------------------------------------------------------------------------
[State -1, Arctic Dagger]
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
triggerall = p2dist y >= -60
triggerall = random <= 500
triggerall = enemynear, ctrl = 0
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
[State -1, Arctic Dungeon]
type = changestate
value = 3900
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = Var(50) != 1
triggerall = p2life <= enemynear,lifemax/4
triggerall = power >= 2000
trigger1 = (stateno = 202) && movehit
trigger2 = (stateno = 211) && movehit
trigger3 = stateno = 1400 && movehit
trigger4 = animelemtime(22) >= 1
trigger5 = p2bodydist X >= 200

[State -1, Kokuujin Yukikaze]
type = ChangeState
value = 13000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = power >= 1500
triggerall = inguarddist
triggerall = p2dist x = [-65,65]
triggerall = p2bodydist Y = [-75,75]
triggerall = enemynear,vel X >= 0
triggerall = random <= 800
trigger1 = ctrl



[State 0, Exceed Accel]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
triggerall = fvar(19)>0
trigger1 = stateno = 212
trigger1 = movehit
trigger1 = life <= 400
;---------------------------------------------------------------------------
[State -1, Arrows of Ice]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = power >= 1000
trigger1 = stateno = 212 && movehit

[State 0, Cancel.]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = Roundstate = 2
triggerall = power >= 500
triggerall = !ctrl
trigger1 = anim = 3050 && animelem = 23

[State 0, Cancel.]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = Roundstate = 2
triggerall = power >= 500
triggerall = !ctrl
triggerall = Random < (750 * (AILevel ** 2 / 64.0))
trigger1 = stateno = 1300 && AnimElemTime(5) >= 0
trigger1 = movecontact && !movehit
trigger2 = stateno = 220 
trigger2 = moveguarded
trigger3 = stateno = 1005 
trigger3 = moveguarded

[State 0, Cancel.]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = Roundstate = 2
triggerall = power >= 1000
triggerall = !ctrl
triggerall = Random < (750 * (AILevel ** 2 / 64.0))
trigger1 = stateno = 610
trigger1 = moveguarded
;---------------------------------------------------------------------------
[State -1, 5A]
type = changestate
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 300 || stateno = 400
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = changestate
value = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = changestate
value = ifelse(random<399,202,210)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = enemynear,statetype != L
trigger1 = stateno = 201
trigger1 = Movecontact

[State -1, 5B]
type = changestate
value = 203
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 202 && animelem = 18
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5BB]
type = changestate
value = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5BBB]
type = changestate
value = 212
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 211
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, jAA]
type = changestate
value = 601
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 600
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, jBB]
type = changestate
value = 611
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 610
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, jC]
type = changestate
value = ifelse(random<399 && power >= 1000,3075,620)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 601 || stateno = 611
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, Hizangeki]
type = changestate
value = ifelse(random<399 && power >= 500,1202,1201)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 620
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = changestate
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = Stateno = 410 && Movecontact
trigger2 = stateno = 212 && Movecontact

;---------------------------------------------------------------------------
[State -1, Musou]
type = changestate
value = ifelse(random<399 && power >= 500,1003,1000)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 420
trigger1 = Moveguarded || movehit

;---------------------------------------------------------------------------
[State -1, Musou]
type = changestate
value = ifelse(random<399 && power >= 500,1003,1001)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 420
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, Hirensou]
type = changestate
value = 1300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
trigger1 = stateno = 212
trigger1 = Movehit

;===========================================================================
;Misc
;===========================================================================
[State -1, Taunt]
type = changestate
value = 195
triggerall = var(20) = 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 3
triggerall = statetype != A
triggerall = prevstateno != 195
trigger1 = ctrl
trigger1 = p2stateno != [5150,5151]

;---------------------------------------------------------------------------

[State -1, Burst]
type = changestate
value = 8000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = StateType != L
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = life < Lifemax/3
triggerall = p2dist X = [0,30]
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

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 204
triggerall = AIlevel && numenemy
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = roundstate = 2
trigger1 = p2bodydist X = [0,40]
trigger1 = power >= 500
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153
trigger1 = random < 499

