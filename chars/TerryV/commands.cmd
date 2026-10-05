
;-| Default Values |------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 2

;-| Single Button |-------------------------------------------------------------
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

;-| Hold Dir |------------------------------------------------------------------

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

;-| Hold Button |---------------------------------------------------------------

[Command]
name = "holdbutton"
command = /a
time = 1

[Command]
name = "holdbutton"
command = /b
time = 1

[Command]
name = "holdbutton"
command = /c
time = 1

[Command]
name = "holdbutton"
command = /x
time = 1

[Command]
name = "holdbutton"
command = /y
time = 1

[Command]
name = "holdbutton"
command = /z
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
name = "holdstart"
command = /s
time = 1
[Command]
name = "holdp"
command = /x
time = 1
[Command]
name = "holdp"
command = /y
time = 1
[Command]
name = "holdp"
command = /z
time = 1

;===============================================================================
;================================= COMMANDS ====================================

;=| System Motions |============================================================

[Command]
name = "throw"
command = a+x
time = 1

[Command]
name = "powercharge"
command = y+b
time = 1

[Command]
name = "timebreaker"
command = z+c
time = 1

[Command]
name = "roll"
command = /F, x+y
time = 1

[Command]
name = "roll"
command = /F, y+z
time = 1

[Command]
name = "roll"
command = /F, x+z
time = 1

;=| Super Motions |=============================================================

[Command]
name = "QCFx2PP"
command = ~D, DF, F, D, DF, F, x+y
time = 25
[Command]
name = "QCFx2PP"
command = ~D, DF, F, D, DF, F, x+z
time = 25
[Command]
name = "QCFx2PP"
command = ~D, DF, F, D, DF, F, y+z
time = 25

;-------------------------------------------------------------------------------

[Command]
name = "QCFx2KK"
command = ~D, DF, F, D, DF, F, a+b
time = 25
[Command]
name = "QCFx2KK"
command = ~D, DF, F, D, DF, F, a+c
time = 25
[Command]
name = "QCFx2KK"
command = ~D, DF, F, D, DF, F, b+c
time = 25

;-------------------------------------------------------------------------------

[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, x
time = 25
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, y
time = 25
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, z
time = 25

[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, ~x
time = 25
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, ~y
time = 25
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, ~z
time = 25

;-------------------------------------------------------------------------------

[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, a
time = 25
[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, b
time = 25
[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, c
time = 25

[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, ~a
time = 25
[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, ~b
time = 25
[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, ~c
time = 25

;-------------------------------------------------------------------------------

[Command]
name = "QCBx2P"
command = ~D, DB, B, D, DB, B, x
time = 20
[Command]
name = "QCBx2P"
command = ~D, DB, B, D, DB, B, y
time = 20
[Command]
name = "QCBx2P"
command = ~D, DB, B, D, DB, B, z
time = 20

[Command]
name = "QCBx2P"
command = ~D, DB, B, D, DB, B, ~x
time = 20
[Command]
name = "QCBx2P"
command = ~D, DB, B, D, DB, B, ~y
time = 20
[Command]
name = "QCBx2P"
command = ~D, DB, B, D, DB, B, ~z
time = 20

;=| EX Motions |================================================================

[Command]
name = "ChargeDU_pp"
command = ~35$D, $U, x+y
time = 15
[Command]
name = "ChargeDU_pp"
command = ~35$D, $U, y+z
time = 15
[Command]
name = "ChargeDU_pp"
command = ~35$D, $U, x+z
time = 15

;-------------------------------------------------------------------------------

[Command]
name = "HCF_pp"
command = ~B, D, F, x+y
[Command]
name = "HCF_pp"
command = ~B, D, F, x+z
[Command]
name = "HCF_pp"
command = ~B, D, F, y+z

;-------------------------------------------------------------------------------

[Command]
name = "QCF_pp"
command = ~D, DF, F, x+y
[Command]
name = "QCF_pp"
command = ~D, DF, F, x+z
[Command]
name = "QCF_pp"
command = ~D, DF, F, y+z
;-------------------------------------------------------------------------------

[Command]
name = "QCB_pp"
command = ~D, DB, B, x+y
[Command]
name = "QCB_pp"
command = ~D, DB, B, x+z
[Command]
name = "QCB_pp"
command = ~D, DB, B, y+z

;-------------------------------------------------------------------------------

[Command]
name = "DP_pp"
command = ~F, D, DF, x+y
[Command]
name = "DP_pp"
command = ~F, D, DF, x+z
[Command]
name = "DP_pp"
command = ~F, D, DF, y+z
;-------------------------------------------------------------------------------

[Command]
name = "DP_kk"
command = ~F, D, DF, a+b
[Command]
name = "DP_kk"
command = ~F, D, DF, a+c
[Command]
name = "DP_kk"
command = ~F, D, DF, b+c
;-------------------------------------------------------------------------------

[Command]
name = "QCB_kk"
command = ~D, DB, B, a+b
[Command]
name = "QCB_kk"
command = ~D, DB, B, b+c
[Command]
name = "QCB_kk"
command = ~D, DB, B, a+c

;-------------------------------------------------------------------------------

[Command]
name = "QCF_kk"
command = ~D, DF, F, a+b
[Command]
name = "QCF_kk"
command = ~D, DF, F, b+c
[Command]
name = "QCF_kk"
command = ~D, DF, F, a+c



;=| Special Motions |===========================================================

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
name = "DP_a"
command = ~F, D, DF, ~a
[Command]
name = "DP_b"
command = ~F, D, DF, ~b
[Command]
name = "DP_c"
command = ~F, D, DF, ~c

;-------------------------------------------------------------------------------

[Command]
name = "DP_x"
command = ~F, D, DF, x
[Command]
name = "DP_y"
command = ~F, D, DF, y
[Command]
name = "DP_z"
command = ~F, D, DF, z

[Command]
name = "DP_x"
command = ~F, D, DF, ~x
[Command]
name = "DP_y"
command = ~F, D, DF, ~y
[Command]
name = "DP_z"
command = ~F, D, DF, ~z

;-------------------------------------------------------------------------------

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 20
[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 20
[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 20

[Command]
name = "QCF_x"
command = ~D, DF, F, ~x
time = 20
[Command]
name = "QCF_y"
command = ~D, DF, F, ~y
time = 20
[Command]
name = "QCF_z"
command = ~D, DF, F, ~z
time = 20

;-------------------------------------------------------------------------------

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 20
[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 20
[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 20

[Command]
name = "QCF_a"
command = ~D, DF, F, ~a
time = 20
[Command]
name = "QCF_b"
command = ~D, DF, F, ~b
time = 20
[Command]
name = "QCF_c"
command = ~D, DF, F, ~c
time = 20

;-------------------------------------------------------------------------------

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
name = "QCB_x"
command = ~D, DB, B, ~x
[Command]
name = "QCB_y"
command = ~D, DB, B, ~y
[Command]
name = "QCB_z"
command = ~D, DB, B, ~z

;-------------------------------------------------------------------------------

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
name = "QCB_a"
command = ~D, DB, B, ~a
[Command]
name = "QCB_b"
command = ~D, DB, B, ~b
[Command]
name = "QCB_c"
command = ~D, DB, B, ~c

;-------------------------------------------------------------------------------

[Command]
name = "HCF_x"
command = ~B, D, F, x
[Command]
name = "HCF_y"
command = ~B, D, F, y
[Command]
name = "HCF_z"
command = ~B, D, F, z

[Command]
name = "HCF_x"
command = ~B, D, F, ~x
[Command]
name = "HCF_y"
command = ~B, D, F, ~y
[Command]
name = "HCF_z"
command = ~B, D, F, ~z

[Command]
name = "HCF_x"
command = ~DB, D, F, x
[Command]
name = "HCF_y"
command = ~DB, D, F, y
[Command]
name = "HCF_z"
command = ~DB, D, F, z

[Command]
name = "HCF_x"
command = ~DB, D, F, ~x
[Command]
name = "HCF_y"
command = ~DB, D, F, ~y
[Command]
name = "HCF_z"
command = ~DB, D, F, ~z

;-------------------------------------------------------------------------------

[Command]
name = "ChargeDU_x"
command = ~35$D, $U, ~x
time = 15

[Command]
name = "ChargeDU_y"
command = ~35$D, $U, ~y
time = 15

[Command]
name = "ChargeDU_z"
command = ~35$D, $U, ~z
time = 15

[Command]
name = "ChargeDU_x"
command = ~35$D, $U, x
time = 15

[Command]
name = "ChargeDU_y"
command = ~35$D, $U, y
time = 15

[Command]
name = "ChargeDU_z"
command = ~35$D, $U, z
time = 15

;=| Double Tap |================================================================
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;=| Recover |===================================================================
[Command]
name = "recoverf"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "recoverb"     ;Required (do not remove)
command = B, B
time = 20

;=| Button Combination |========================================================

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
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;=| Dir + Button |==============================================================

[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1
;=| Single Direction |==========================================================

[Command]
name = "Up"
command = U
time = 5
[Command]
name = "Forward"
command = F
time = 5
[Command]
name = "Down"
command = D
time = 5
[Command]
name = "Back"
command = B
time = 1

;=| Release Direction |=========================================================

[Command]
name="rlsfwd"
command=~$F
time=1

[Command]
name="rlsback"
command=~$B
time=1

[Command]
name="rlsup"
command=~$U
time=1

[Command]
name="rlsdown"
command=~$D
time=1

;=| Release Button |============================================================

[Command]
name="rlsx"
command=~x
time=1

[Command]
name="rlsy"
command=~y
time=1

[Command]
name="rlsz"
command=~z
time=1

[Command]
name="rlsa"
command=~a
time=1

[Command]
name="rlsb"
command=~b
time=1

[Command]
name="rlsc"
command=~c
time=1

;=| Order |=================================================================

;Tick Fix
;Supers
;Ex Moves
;Special Moves
;System
;Normal Attacks
;AI

;===========================================================================
;--------------------------------- Statedef -1 -----------------------------
;===========================================================================
[Statedef -1]

[State -1, Tick Fix]
type = ctrlset
triggerall = !ctrl
trigger1 = (stateno=52 || stateno=105 || stateno=5120) && !animtime
trigger2 = (stateno=[200,499]) && !animtime
trigger3 = (stateno=5001 || stateno=5011 || stateno=151 || stateno=153) && hitover
value = 1
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AIlevel
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run
[State -1, Run]
type = changestate
triggerall = !AIlevel
value = ifelse(command = "FF", 100, 105)
trigger1 = command = "FF" || command = "BB"
trigger1 = roundstate = 2 && (stateno != [100, 106]) && statetype = S && ctrl
;===========================================================================
;----------------------------- Super Attacks -------------------------------
;===========================================================================
[State -1, Trinity Geyser]
type = ChangeState
value = 3000
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCBx2P"
triggerall = (power >=3000)
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1000,1999]) && movecontact
trigger4 = (stateno=[2000,2999]) && movecontact
trigger5 = (stateno=[1000,1999]) && (numhelper(1090))
trigger5 = helper(1090),var(3)
;---------------------------------------------------------------------------
[State -1, Power Geyser EX]
type = ChangeState
value = 3400
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCFx2PP"
triggerall = power >=2000
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1000,1999]) && movecontact
trigger4 = (stateno=[2000,2999]) && movecontact
trigger5 = (stateno=[1000,1999]) && (numhelper(1090))
trigger5 = helper(1090),var(3)
trigger6 = (stateno = 3200) && (numhelper(3280))
trigger6 = helper(3280),var(3)
trigger7 = (stateno = 3301) && (numhelper(3380))
trigger7 = helper(3380),var(3)
trigger8 = (stateno=2000) && (numhelper(2090))
trigger8 = helper(2090),var(3)
;---------------------------------------------------------------------------
[State -1, Power Geyser]
type = ChangeState
value = 3200
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCFx2P"
triggerall = power >=1000
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1000,1999]) && movecontact
trigger4 = (stateno=[2000,2999]) && movecontact
trigger5 = (stateno=[1000,1999]) && (numhelper(1090))
trigger5 = helper(1090),var(3)
trigger6 = (stateno = 3301) && (numhelper(3380))
trigger6 = helper(3380),var(3)
trigger7 = (stateno = 3301) && (numhelper(3380))
trigger7 = helper(3380),var(3)
trigger8 = (stateno=2000) && (numhelper(2090))
trigger8 = helper(2090),var(3)
;---------------------------------------------------------------------------
[State -1, Buster Wolf EX]
type = ChangeState
value = 3500
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCFx2KK"
triggerall = power >=2000
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1000,1999]) && movecontact
trigger4 = (stateno=[2000,2999]) && movecontact
trigger5 = (stateno=[1000,1999]) && (numhelper(1090))
trigger5 = helper(1090),var(3)
trigger6 = (stateno = 3200) && (numhelper(3280))
trigger6 = helper(3280),var(3)
trigger7 = (stateno = 3301) && (numhelper(3380))
trigger7 = helper(3380),var(3)
trigger8 = (stateno=2000) && (numhelper(2090))
trigger8 = helper(2090),var(3)
;---------------------------------------------------------------------------
[State -1, Buster Wolf]
type = ChangeState
value = 3300
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCFx2K"
triggerall = power >=1000
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1000,1999]) && movecontact
trigger4 = (stateno=[2000,2999]) && movecontact
trigger5 = (stateno=[1000,1999]) && (numhelper(1090))
trigger5 = helper(1090),var(3)
trigger6 = (stateno = 3200) && (numhelper(3280))
trigger6 = helper(3280),var(3)
trigger7 = (stateno=2000) && (numhelper(2090))
trigger7 = helper(2090),var(3)
;===========================================================================
;-----------------------------Special Attacks-------------------------------
;===========================================================================
[State -1, Rising Tackle EX]
type = ChangeState
value = 2200
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "ChargeDU_pp"
triggerall = power >= 500
trigger1 = ctrl || stateno = 52 || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Power Charge EX]
type = ChangeState
value = 2500
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "DP_pp"
triggerall = power >= 500
trigger1 = ctrl || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
[State -1, Power Wave EX]
type = ChangeState
value = 2000
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCF_pp"
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Burn Knuckle EX]
type = ChangeState
value = 2100
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_pp"
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Crack Shoot EX]
type = ChangeState
value = 2300
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_kk"
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Power Dunk EX]
type = ChangeState
value = 2400
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "DP_kk"
triggerall = power >= 500
trigger1 = ctrl || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Power Dunk Light]
type = ChangeState
value = 1400
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "DP_a"
trigger1 = ctrl || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Power Dunk Medium]
type = ChangeState
value = 1410
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "DP_b"
trigger1 = ctrl || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Power Dunk Heavy]
type = ChangeState
value = 1420
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "DP_c"
trigger1 = ctrl || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Power Charge Light]
type = ChangeState
value = 1500
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "DP_x"
trigger1 = ctrl || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
[State -1, Power Charge Medium]
type = ChangeState
value = 1510
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "DP_y"
trigger1 = ctrl || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
[State -1, Power Charge Heavy]
type = ChangeState
value = 1520
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "DP_z"
trigger1 = ctrl || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
[State -1, Rising Tackle Light]
type = ChangeState
value = 1200
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "ChargeDU_x"
trigger1 = ctrl || stateno = 52 || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Rising Tackle Medium]
type = ChangeState
value = 1210
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "ChargeDU_y"
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Rising Tackle Heavy]
type = ChangeState
value = 1220
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "ChargeDU_z"
trigger1 = ctrl || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Power Wave]
type = ChangeState
value = 1000
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCF_x"||command = "QCF_y" ||command = "QCF_z"
triggerall = numhelper(1090) = 0
trigger1 = ctrl || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Burn Knuckle Light]
type = ChangeState
value = 1100
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_x"
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Burn Knuckle Medium]
type = ChangeState
value = 1110
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_y"
trigger1 = ctrl || stateno = 52 || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Burn Knuckle Heavy]
type = ChangeState
value = 1120
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_z"
trigger1 = ctrl || stateno = 52 || stateno = 40
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Crack Shoot Light]
type = ChangeState
value = 1300
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_a"
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Crack Shoot Medium]
type = ChangeState
value = 1310
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_b"
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Crack Shoot Heavy]
type = ChangeState
value = 1320
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_c"
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1500,1520]) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Crack Shoot]
type = ChangeState
value = 1330
triggerall = !AIlevel
triggerall = Statetype = A
triggerall = command = "QCB_a"||command = "QCB_b" ||command = "QCB_c"
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && movecontact
;===========================================================================
;--------------------------------- System ----------------------------------
;===========================================================================
;Throw
[State -1, Throw]
type = changestate
value = 800
triggerall = !AIlevel
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "throw"
;---------------------------------------------------------------------------
[State -1, Dodge Roll]
type = changestate
value = 4000
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = ctrl
trigger1 = command = "roll"
;---------------------------------------------------------------------------
[State -1, Power Charge]
type = changestate
value = 4200
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = ctrl
triggerall = power < const(data.power) && power < powermax
trigger1 = command = "powercharge"
;---------------------------------------------------------------------------
[State -1, Time Breaker]
type = changestate
value = 4100
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = numhelper(4150) = 0
triggerall = power >= 1000
triggerall = command = "timebreaker"
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
trigger3 = (stateno=[1000,1999]) && movecontact
trigger4 = (stateno=[2000,2999]) && movecontact
trigger5 = (stateno=[1000,1999]) && (numhelper(1090))
trigger5 = helper(1090),var(3)
trigger6 = (stateno=2000) && (numhelper(2090))
trigger6 = helper(2090),var(3)
;===========================================================================
;------------------------------Normal Attacks-------------------------------
;===========================================================================
;Overhead
[State -1, Overhead]
type = ChangeState
value = 300
triggerall = !AIlevel
triggerall = command = "holdfwd" && command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Punch Light]
type = ChangeState
value = 200
triggerall = !AIlevel
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 200 && time > 6
 ;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Punch Medium]
type = ChangeState
value = 210
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 200 && time > 6
trigger3 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Punch Heavy]
type = ChangeState
value = 220
triggerall = !AIlevel
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
[State -1, Stand Kick Light]
type = ChangeState
value = 230
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
[State -1, Stand Kick Medium]
type = ChangeState
value = 240
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
[State -1, Stand Kick Heavy]
type = ChangeState
value = 250
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouch Punch Light]
type = ChangeState
value = 400
triggerall = !AIlevel
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 400 && time > 6
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouch Punch Medium]
type = ChangeState
value = 410
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouch Punch Heavy]
type = ChangeState
value = 420
triggerall = !AIlevel
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouch Kick Light]
type = ChangeState
value = 430
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 430 && time > 6
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouch Kick Medium]
type = ChangeState
value = 440
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouch Kick Heavy]
type = ChangeState
value = 450
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Punch Light]
type = ChangeState
value = 600
triggerall = !AIlevel
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Punch Medium]
type = ChangeState
value = 610
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Punch Heavy]
type = ChangeState
value = 620
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Jump Kick Light]
type = ChangeState
value = 630
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Jump Kick Medium]
type = ChangeState
value = 640
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Jump Kick Heavy]
type = ChangeState
value = 650
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
;===========================================================================
;-----------------------------------AI--------------------------------------
;===========================================================================

[State -1, CPU Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 320 && enemynear, hitdefattr = SC, AT

;---------------------------------------------------------------------------

[State -1, CPU Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155])
trigger1 = p2bodydist x >= 80
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = ifelse(statetype = A, ((var(13) != [1, 2]) || stateno = 5210), 1)
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)))

;---------------------------------------------------------------------------

[State -1, CPU Roll Forward]
type = changestate
value = 4000
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = random < 150
trigger1 = (ctrl)
trigger1 = (enemynear, movetype = A) && !(enemynear, hitdefattr = SCA, AT) && (p2bodydist x = [208, 304])

;----------------------------------------------------------------------------

[State -1, CPU Run]
type = changestate
value = 100
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl && (stateno != [100, 106])
trigger1 = (enemynear, movetype != A) && p2bodydist x >= 80 && random = [1,100]

;----------------------------------------------------------------------------

[State -1, CPU Power Geyser1]
type = ChangeState
value = ifelse(power>2000,3400,3200)
triggerall = power >=1000
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = p2bodydist x = [61,160]
trigger1 = p2bodydist y = [-80,-4]

;---------------------------------------------------------------------------

[State -1, CPU Power Geyser2]
type = ChangeState
value = ifelse(power>2000,3400,3200)
triggerall = power >=1000
triggerall = AIlevel && numenemy
triggerall = P2statetype != A
triggerall = ctrl
trigger1 = stateno = 210
trigger1 = movehit = 1
trigger2 = P2BodyDist X = [0,120]
trigger2 = P2BodyDist Y = [-180,0]
trigger2 = p2movetype = A
trigger2 = Random > 500
trigger3 = P2BodyDist X = [0,120]
trigger3 = P2BodyDist Y = [-180,0]
trigger3 = p2movetype = A

;----------------------------------------------------------------------------

[State -1, CPU Buster Wolf]
type = ChangeState
value = ifelse(power>2000,3500,3300)
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = power >=1000
trigger1 = ctrl = 1
trigger1 = p2bodydist x = [60,160]
trigger1 = p2bodydist y = [-80,-4]

;----------------------------------------------------------------------------

[State -1, CPU Buster Wolf2]
type = ChangeState
value = ifelse(power>2000,3500,3300)
triggerall = power >=1000
triggerall = AIlevel && numenemy
triggerall = P2statetype != A
triggerall = ctrl
trigger1 = stateno = 210
trigger1 = movehit = 1
trigger2 = P2BodyDist X = [0,130]
trigger2 = P2BodyDist Y = [-80,0]
trigger2 = p2movetype = A
trigger2 = Random > 500
trigger3 = P2BodyDist X = [0,130]
trigger3 = P2BodyDist Y = [-80,0]
trigger3 = p2movetype = A

;----------------------------------------------------------------------------

[State -1, CPU Power Wave]
type = changestate
value = 1000
triggerall = numhelper(1090) = 0
triggerall = AIlevel && numenemy
triggerall = P2movetype != A && random <= 100
trigger1 = statetype != C
trigger1 = P2BodyDist X > 100 && P2BodyDist Y > -30 && random <= 400 && statetype != A && ctrl
trigger2 = stateno = 220 && moveguarded
trigger3 = stateno = 230 && moveguarded
trigger4 = ctrl && (p2bodydist x = [70,90]) && (p2bodydist y = [-140,-100])
trigger5 = (stateno=[200,449]) && movecontact && random <=250

;----------------------------------------------------------------------------

[State -1, CPU Power Dunk]
type=changestate
value = 1410
triggerall = AIlevel && numenemy
triggerall = roundstate=2 && statetype!=A
triggerall = !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall = (p2statetype!=L || p2stateno=5120) && (p2bodydist x=[0,160]) && (p2dist y=[-240,0])
triggerall = (enemynear,const(size.head.pos.y)<=-80) || (enemynear,statetype=A)
trigger1 = ctrl && p2statetype=A && random<ifelse(prevstateno=1200, 233, 100)
trigger2 = (stateno=[200,250])
trigger2 = movehit && (p2bodydist x=[0,24]) && random<200
trigger3 = ctrl && enemynear,movetype=A && (p2bodydist x=[0,80]) && random<150
trigger4 = stateno=0 && prevstateno=5120 && time<=1
trigger4 = ctrl && (p2bodydist x=[-80,80]) && random<200
trigger5 = ctrl && (p2bodydist x=[-60,60])
trigger5 = (enemynear,stateno=5120) && (enemynear,animtime=[-6,-3]) && random<150
trigger6 = (stateno=[200,449]) && movecontact && random <=250

;----------------------------------------------------------------------------

[State -1, CPU Crack Shoot]
type=changestate
value=1310
triggerall = AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2statetype!=L || p2stateno=5120) && (p2bodydist x=[0,160]) && (p2dist y=[-240,0])
triggerall= (enemynear,const(size.head.pos.y)<=-80) || (enemynear,statetype=A)
trigger1= ctrl && p2statetype=A && random<ifelse(prevstateno=1200, 233, 100)
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[0,24]) && random<250
trigger3= ctrl && enemynear,movetype=A && (p2bodydist x=[0,40]) && random<200
trigger4= stateno=0 && prevstateno=5120 && time<=1
trigger4= ctrl && (p2bodydist x=[-80,80]) && random<250
trigger5= ctrl && (p2bodydist x=[-60,60])
trigger5= (enemynear,stateno=5120) && (enemynear,animtime=[-6,-3]) && random<200
trigger6 = (stateno=[200,450]) && movecontact && random <= 250

;----------------------------------------------------------------------------

[State -1, CPU Burn Knuckle]
type=changestate
value=1120
triggerall = AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2statetype!=L || p2stateno=5120) && (p2bodydist x=[0,160]) && (p2dist y=[-240,0])
triggerall= (enemynear,const(size.head.pos.y)<=-80) || (enemynear,statetype=A)
trigger1= ctrl && p2statetype=A && random<ifelse(prevstateno=1200, 233, 100)
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[0,24]) && random<250
trigger3= ctrl && enemynear,movetype=A && (p2bodydist x=[0,80]) && random<200
trigger4= stateno=0 && prevstateno=5120 && time<=1
trigger4= ctrl && (p2bodydist x=[-80,80]) && random<250
trigger5= ctrl && (p2bodydist x=[-60,60])
trigger5= (enemynear,stateno=5120) && (enemynear,animtime=[-6,-3]) && random<200

;----------------------------------------------------------------------------
[State -1, CPU Burn Knuckle2]
type = changestate
value = 1100
triggerall = numhelper(1090) = 0
triggerall = AIlevel && numenemy
triggerall = P2movetype != A && random <= 100
trigger1 = statetype != C
trigger1 = P2BodyDist X > 100 && P2BodyDist Y > -30 && random <= 400 && statetype != A && ctrl
trigger2 = stateno = 220 && moveguarded
trigger3 = stateno = 230 && moveguarded
trigger4 = ctrl && (p2bodydist x = [70,90]) && (p2bodydist y = [-140,-100])
trigger5 = (stateno=[200,450]) && movecontact && random <=300

;---------------------------------------------------------------------------

[State -1, CPU Power Charge]
type = changestate
value = 4200
triggerall = AIlevel && numenemy
triggerall = Statetype != A
triggerall = ctrl
triggerall = power < const(data.power) && power < powermax
trigger1 = !inguarddist && p2bodydist x >= 320 && random < 500

;---------------------------------------------------------------------------

[State -1, CPU Stand Strong Punch]
type = ChangeState
value = 220
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = (ctrl) && random = [1,250]
trigger1 = p2bodydist x <= 30
trigger1 = p2bodydist y = [-10,20]

;---------------------------------------------------------------------------

[State -1, CPU Crouch Light Punch]
type = ChangeState
value = 400
triggerall = AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall=  p2stateno!=[5000,5999]
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = (ctrl) && random = [1,250]
trigger1 = p2bodydist x <= 60
trigger1 = p2bodydist y = [-10,20]

;---------------------------------------------------------------------------

[State -1, CPU Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = (ctrl) && random = [1,250]
trigger1 = p2bodydist x <= 30
trigger1 = p2bodydist y = [-10,20]

;---------------------------------------------------------------------------

[State -1, CPU Crouch Light Kick]
type = ChangeState
value = ifelse(random<300,200,430)
triggerall = AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall=  p2stateno!=[5000,5999]
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = (ctrl) && random = [251,750]
trigger1 = p2bodydist x <= 60
trigger1 = p2bodydist y = [-10,20]

;---------------------------------------------------------------------------

[State -1, CPU Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = (ctrl) && random = [251,750]
trigger1 = p2bodydist x <= 60
trigger1 = p2bodydist y = [-10,20]





