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

;-| Super Motions |---------------------------------------------------------

[Command]
name = "Thousand_Hands:Roaring_Pillar/Twin_Guardians:Mourning_Shore"
command =~D,F,D,F,b
Time = 16

[Command]
name = "Thousand_Hands:Roaring_Pillar/Twin_Guardians:Mourning_Shore"
command =~D,F,D,F,~b
Time = 16

[Command]
name = "Immovable_Object:Lotus"
command =~F,D,B,U,a
Time = 16

[Command]
name = "Immovable_Object:Lotus"
command =~F,D,B,U,~a
Time = 16

[Command]
name = "Asura:Thunderbird_Rising"
command =~F,D,B,F,D,B,y
Time = 16

[Command]
name = "Asura:Thunderbird_Rising"
command =~F,D,B,F,D,B,~y
Time = 16

;-| Special Motions |------------------------------------------------------

[Command]
name="BURST"
command=x+y+z

[Command]
name = "Fissuring_Slash_C"
command =~D,F,x
Time = 16

[Command]
name = "Fissuring_Slash_C"
command =~D,F,~x
Time = 16

[Command]
name = "Fissuring_Slash_D"
command =~D,F,D,F,x
Time = 16

[Command]
name = "Fissuring_Slash_D"
command =~D,F,D,F,~x
Time = 16

[Command]
name = "Form_ONE:Shadow_Wolf"
command =~D,F,y
Time = 16

[Command]
name = "Form_ONE:Shadow_Wolf"
command =~D,F,~y
Time = 16

[Command]
name = "Form_TWO:Demon_Fox"
command =~D,B,y
Time = 16

[Command]
name = "Form_TWO:Demon_Fox"
command =~D,B,~y
Time = 16

[Command]
name = "Form_THREE:Ranjishi"
command =~D,B,a
Time = 16

[Command]
name = "Form_THREE:Ranjishi"
command =~D,B,~a
Time = 16

[Command]
name = "Form_FOUR:Black_Panther"
command =~F,D,B,F,a
Time = 16

[Command]
name = "Form_FOUR:Black_Panther"
command =~F,D,B,F,~a
Time = 16

[Command]
name = "Divine_Form"
command =~D,F,b
Time = 16

[Command]
name = "Divine_Form"
command =~D,F,~b
Time = 16

[Command]
name = "Divine_Form"
command =~D,B,b
Time = 16

[Command]
name = "Divine_Form"
command =~D,B,~b
Time = 16

[Command]
name = "Rising_Justice"
command =~D,F,a
Time = 16

[Command]
name = "Rising_Justice"
command =~D,F,~a
Time = 16

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "DFF"     ;Required (do not remove)
command = /$D,$F,/$D,$F
time = 20

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

;-| Single Button |---------------------------------------------------------
[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
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

;-| Single Dir |----------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

[Command]
name = "holdupback"
command = /$UB
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
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "holddownback";Required (do not remove)
command = /$DB
time = 1

;DEBUG RECOVERY
;[Command]
;name = "recovery"
;command = /$F
;time = 1
;[Command]
;name = "recovery"
;command = /$D
;time = 1
;[Command]
;name = "recovery"
;command = /$B
;time = 1
;[Command]
;name = "recovery"
;command = /$U
;time = 1

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;-----------------------------------------------------------------------------
;SPECIALS

;-----------------------------------------------------------------------------
;SKILLS
[State -1, Fissuring Slash D]
type = ChangeState
value = 1002
TriggerAll = command = "Fissuring_Slash_D"
triggerAll = power >= 500
trigger1 = (ctrl || StateNo = 42 || (StateNo=52&&Time>0) || (Anim = [60,63]) || (Anim = [100,101]) || Anim = 107)
trigger2 = StateNo = 200 && MoveContact
trigger3 =(StateNo = [202,205]) && MoveContact
trigger4 =(StateNo = [207,215]) && MoveContact
trigger5 = StateNo = 225 && Anim = 220 && AnimElemTime(12)>= 0 && MoveContact
trigger6 = StateNo = 225 && Anim = 221 && AnimElemTime(6) >= 0 && MoveContact
trigger7 =(StateNo = [400,512]) && MoveContact
trigger8 = StateNo = 516 && Anim = 516 && AnimElemTime(6) >= 0 && NumTarget(515)
trigger9 = StateNo = 516 && Anim = 517 && AnimElemTime(6) >= 0
[State -1, Fissuring Slash C]
type = ChangeState
value = 1000
TriggerAll = command = "Fissuring_Slash_C"
trigger1 = (ctrl || StateNo = 42 || (StateNo=52&&Time>0) || (Anim = [60,63]) || (Anim = [100,101]) || Anim = 107)
trigger2 = StateNo = 200 && MoveContact
trigger3 =(StateNo = [202,205]) && MoveContact
trigger4 =(StateNo = [207,215]) && MoveContact
trigger5 = StateNo = 225 && Anim = 220 && AnimElemTime(12)>= 0 && MoveContact
trigger6 = StateNo = 225 && Anim = 221 && AnimElemTime(6) >= 0 && MoveContact
trigger7 =(StateNo = [400,512]) && MoveContact
trigger8 = StateNo = 516 && Anim = 516 && AnimElemTime(6) >= 0 && NumTarget(515)
trigger9 = StateNo = 516 && Anim = 517 && AnimElemTime(6) >= 0

[State -1, Form ONE: Shadow Wolf]
type = ChangeState
value = 1005
TriggerAll = command = "Form_ONE:Shadow_Wolf"
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
trigger2 = StateNo = 200 && MoveContact
trigger3 =(StateNo = [202,205]) && MoveContact
trigger4 =(StateNo = [207,215]) && MoveContact
trigger5 = StateNo = 225 && Anim = 220 && AnimElemTime(12)>= 0 && MoveContact
trigger6 = StateNo = 225 && Anim = 221 && AnimElemTime(6) >= 0 && MoveContact
trigger7 =(StateNo = [400,405]) && MoveContact
trigger8 = StateNo = 411 && MoveContact
trigger9 = StateNo = 516 && Anim = 516 && AnimElemTime(6) >= 0 && NumTarget(515)
trigger10= StateNo = 516 && Anim = 517 && AnimElemTime(6) >= 0

[State -1, Form TWO: Demon Fox]
type = ChangeState
value = 1010
TriggerAll = command = "Form_TWO:Demon_Fox"
trigger1 = (ctrl || StateNo = 42 || (StateNo=52&&Time>0) || (Anim = [60,63]) || (Anim = [100,101]) || Anim = 107)
trigger2 = StateNo = 200 && MoveContact
trigger3 =(StateNo = [202,205]) && MoveContact
trigger4 =(StateNo = [207,215]) && MoveContact
trigger5 = StateNo = 225 && Anim = 220 && AnimElemTime(12)>= 0 && MoveContact
trigger6 = StateNo = 225 && Anim = 221 && AnimElemTime(6) >= 0 && MoveContact
trigger7 =(StateNo = [400,512]) && MoveContact
trigger8 = StateNo = 516 && Anim = 516 && AnimElemTime(6) >= 0 && NumTarget(515)
trigger9 = StateNo = 516 && Anim = 517 && AnimElemTime(6) >= 0

[State -1, Form THREE: Ranjishi]
type = ChangeState
value = 1015
TriggerAll = command!= "Form_FOUR:Black_Panther"
TriggerAll = command = "Form_THREE:Ranjishi"
trigger1 = (ctrl || StateNo = 42 || (StateNo=52&&Time>0) || (Anim = [60,63]) || (Anim = [100,101]) || Anim = 107)
trigger2 = StateNo = 200 && MoveContact
trigger3 =(StateNo = [202,205]) && MoveContact
trigger4 =(StateNo = [207,215]) && MoveContact
trigger5 = StateNo = 225 && Anim = 220 && AnimElemTime(12)>= 0 && MoveContact
trigger6 = StateNo = 225 && Anim = 221 && AnimElemTime(6) >= 0 && MoveContact
trigger7 =(StateNo = [400,512]) && MoveContact
trigger8 = StateNo = 516 && Anim = 516 && AnimElemTime(6) >= 0 && NumTarget(515)
trigger9 = StateNo = 516 && Anim = 517 && AnimElemTime(6) >= 0

[State -1, Form FOUR: Black Panther]
type = ChangeState
value = 1020
TriggerAll = command = "Form_FOUR:Black_Panther"
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
trigger2 = StateNo = 200 && MoveContact
trigger3 =(StateNo = [202,205]) && MoveContact
trigger4 =(StateNo = [207,215]) && MoveContact
trigger5 = StateNo = 225 && Anim = 220 && AnimElemTime(12)>= 0 && MoveContact
trigger6 = StateNo = 225 && Anim = 221 && AnimElemTime(6) >= 0 && MoveContact
trigger7 =(StateNo = [400,405]) && MoveContact
trigger8 = StateNo = 411 && MoveContact
trigger9 = StateNo = 516 && Anim = 516 && AnimElemTime(6) >= 0 && NumTarget(515)
trigger10= StateNo = 516 && Anim = 517 && AnimElemTime(6) >= 0

[State -1, Rising Justice]
type = ChangeState
value = 1025
TriggerAll = command = "Rising_Justice"
TriggerAll = !NumHelper(1025)
trigger1 = (ctrl || StateNo = 42 || (StateNo=52&&Time>0) || (Anim = [60,63]) || (Anim = [100,101]) || Anim = 107)
trigger2 = StateNo = 200 && MoveContact
trigger3 =(StateNo = [202,205]) && MoveContact
trigger4 =(StateNo = [207,215]) && MoveContact
trigger5 = StateNo = 225 && Anim = 220 && AnimElemTime(12)>= 0 && MoveContact
trigger6 = StateNo = 225 && Anim = 221 && AnimElemTime(6) >= 0 && MoveContact
trigger7 =(StateNo = [400,512]) && MoveContact
trigger8 = StateNo = 516 && Anim = 516 && AnimElemTime(6) >= 0 && NumTarget(515)
trigger9 = StateNo = 516 && Anim = 517 && AnimElemTime(6) >= 0
trigger10= StateNo = 1006 && MoveContact

;---------------------------------------------------------------------------
;THROWS
[State -1, Ground]
type = ChangeState
value = 700
TriggerAll = (command = "x" && command = "b")
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
[State -1, Air]
type = ChangeState
value = 705
TriggerAll = (command = "x" && command = "b")
trigger1 = statetype = A && (ctrl || StateNo = 42 || (Anim = [60,63]))

;---------------------------------------------------------------------------
;REGULAR ATTACKS
;5A
[State -1, 5A]
type = ChangeState
value = 200
TriggerAll = command = "x"
TriggerAll = command!= "holdfwd"
TriggerAll = command!= "holddown"
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
trigger2 = StateNo = 200 && Var(2) < 2 && AnimElemTime(3) >= 1
trigger3 = StateNo = 200 && Var(2) < 2 && MoveContact
trigger4 = StateNo = 400 && MoveContact
;6A
[State -1, 6A]
type = ChangeState
value = 201
TriggerAll = command = "x"
TriggerAll = command = "holdfwd"
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 205 && MoveContact
trigger4 = StateNo = 210 && MoveContact
trigger5 =(StateNo = [400,405]) && MoveContact
;5B
[State -1, 5B]
type = ChangeState
value = 205
TriggerAll = command = "y"
TriggerAll = command!= "holdfwd"
TriggerAll = command!= "holddown"
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
trigger2 = StateNo = 200 && MoveContact
trigger3 = Stateno = 400 && MoveContact
trigger4 = StateNo = 405 && PrevStateNo != 205 && MoveContact
;6B
[State -1, 6B]
type = ChangeState
value = 206
TriggerAll = command = "y"
TriggerAll = command = "holdfwd"
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 205 && MoveContact
trigger4 = StateNo = 210 && MoveContact
trigger5 =(StateNo = [400,405]) && MoveContact
;5C
[State -1, 5C]
type = ChangeState
value = 210
TriggerAll = command = "a"
TriggerAll = command != "holdfwd"
TriggerAll = command != "holddown"
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 205 && MoveContact
trigger4 =(StateNo = [400,405]) && MoveContact
;6C
[State -1, 6C]
type = ChangeState
value = 215
TriggerAll = command = "a"
TriggerAll = command = "holdfwd"
TriggerAll = command!= "holddown"
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
trigger2 = StateNo = 200  && MoveContact
trigger3 = StateNo = 400  && MoveContact

;2A
[State -1, 2A]
type = ChangeState
value = 400
TriggerAll = command = "x"
TriggerAll = command = "holddown"
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
trigger2 = StateNo = 400 && Var(2) < 2 && AnimElemTime(4) >= 1
trigger3 = StateNo = 400 && Var(2) < 2 && MoveContact
trigger4 = StateNo = 200 && Var(2) < 2 && MoveContact
;2B
[State -1, 2B]
type = ChangeState
value = 405
TriggerAll = command = "y"
TriggerAll = command = "holddown"
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 205 && PrevStateNo != 405 && MoveContact
trigger4 = StateNo = 400 && MoveContact
;2C
[State -1, 2C]
type = ChangeState
value = 410
TriggerAll = command = "a"
TriggerAll = command!= "holdfwd"
TriggerAll = command = "holddown"
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 205 && MoveContact
trigger4 = StateNo = 210 && MoveContact
trigger5 =(StateNo = [400,405]) && MoveContact
;3C
[State -1, 3C]
type = ChangeState
value = 411
TriggerAll = command = "a"
TriggerAll = command = "holdfwd"
TriggerAll = command = "holddown"
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 =(StateNo = [400,405]) && MoveContact

;j.A
[State -1, j.A]
type = ChangeState
value = 500
TriggerAll = command = "x"
trigger1 = statetype = A && (ctrl || StateNo = 42 || (Anim = [60,63]))
trigger2 = StateNo = 500 && AnimElemTime(8) >= 1 && MoveHit
;j.B
[State -1, j.B]
type = ChangeState
value = 505
TriggerAll = command = "y"
trigger1 = statetype = A && (ctrl || StateNo = 42 || (Anim = [60,63]))
trigger2 = StateNo = 500 && MoveHit
;j.C
[State -1, j.C]
type = ChangeState
value = 510
TriggerAll = command = "a"
TriggerAll = Command != "holddown"
trigger1 = statetype = A && (ctrl || StateNo = 42 || (Anim = [60,63]))
trigger2 = StateNo = 500 && MoveHit
;j.2C
[State -1, j.2C]
type = ChangeState
value = 512
TriggerAll = command = "a"
TriggerAll = Command = "holddown"
trigger1 = statetype = A && (ctrl || StateNo = 42 || (Anim = [60,63]))
trigger2 = StateNo = 500 && MoveHit

;---------------------------------------------------------------------------
;DRIVE ATTACKS
;5D
[State -1, 5D]
type = ChangeState
value = 225
TriggerAll = command = "b"
trigger1 = statetype != A && (ctrl || (StateNo=52&&Time>0) || Anim = 107 || (Anim = [100,101]))
trigger2 = StateNo = 200 && MoveContact
trigger3 =(StateNo = [202,205]) && MoveContact
trigger4 =(StateNo = [207,215]) && MoveContact
trigger5 =(StateNo = [400,405]) && MoveContact
trigger6 = StateNo = 411 && MoveContact

;j.D/j.6D
[State -1, j.D/j.6D]
type = ChangeState
value = ifelse(Command="holdfwd",517,515)
TriggerAll = command = "b"
trigger1 = statetype = A && (ctrl || StateNo = 42 || (Anim = [60,63]))
trigger2 = StateNo = 410 && MoveContact
trigger3 = (StateNo = [500,512]) && MoveHit
trigger4 = StateNo = 505 && Var(2)

;---------------------------------------------------------------------------
;SPECIAL MOVEMENTS

;DASHES
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
TriggerAll = StateType != A && command = "FF"
trigger1 = ctrl

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
TriggerAll = StateType != A && command = "BB"
trigger1 = ctrl
;DashHop
[State -1, Hop]
type = ChangeState
value = 41
TriggerAll = StateNo = 107
trigger1 =(command = "up" || command = "holdup")

;AirDash Forward
[State -1, AirDash Forward]
type = ChangeState
value = 60
TriggerAll = StateType = A && !(Var(30)||Var(31))
trigger1 = command = "FF"
trigger1 = ctrl

;AirDash Back
[State -1, AirDash Back]
type = ChangeState
value = 61
TriggerAll = StateType = A && !(Var(30)||Var(31))
trigger1 = command = "BB"
trigger1 = ctrl

;---------------------------------------------------------------------------
;JUMP CANCELS
;Ground
[State -1, Ground Jump]
type = changestate
value = 40
TriggerAll = command = "holdup"
trigger1 =(Stateno = [200,205]) && MoveContact
trigger2 = Stateno = 207 && MoveContact
trigger3 = Stateno = 210 && MoveHit
trigger4 = StateNo = 411 && MoveHit
;Air
[State -1, Air Jump]
type = changestate
value = 45
TriggerAll = StateType = A && !Var(30)
trigger1 = StateNo = 50 && Command = "up"
trigger2 = Command = "holdup"
trigger2 = StateNo = 410 && MoveContact
trigger3 = Command = "holdup"
trigger3 =(StateNo = [500,510]) && MoveContact
trigger4 = Command = "holdup"
trigger4 = StateNo = 505 && Var(2)
trigger5 = Command = "holdup"
trigger5 = StateNo = 512 && MoveHit

;---------------------------------------------------------------------------
;Tauntage
[State -1]
type = ChangeState
value = 1950
TriggerAll = command = "start"
trigger1 = ctrl && statetype = S