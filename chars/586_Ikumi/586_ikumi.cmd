;======================================================================
;======================================================================
; Commands file for "Ikumi Amasawa"
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Button remapping and default initialize
;----------------------------------------------------------------------

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;----------------------------------------------------------------------
; Final Memory
;----------------------------------------------------------------------

[Command]
name = "236236236c"
command = ~D, F, D, F, D, F, c
time = 45

;----------------------------------------------------------------------
; Eterny Special
;----------------------------------------------------------------------

[Command]
name = "641236c"
command = ~F, B, D, F, c
time = 39

[Command]
name = "641236b"
command = ~F, B, D, F, b
time = 30

[Command]
name = "641236a"
command = ~F, B, D, F, a
time = 30

[Command]
name = "2141236c"
command = ~D, B, D, F, c
time = 30

[Command]
name = "2141236b"
command = ~D, B, D, F, b
time = 30

[Command]
name = "2141236a"
command = ~D, B, D, F, a
time = 30

[Command]
name = "214214c"
command = ~D, B, D, B, c
time = 20

[Command]
name = "214214b"
command = ~D, B, D, B, b
time = 20

[Command]
name = "214214a"
command = ~D, B, D, B, a
time = 20

;----------------------------------------------------------------------
; Special Moves
;----------------------------------------------------------------------

[Command]
name = "41236c"
command = ~B, D, F, c
time = 15

[Command]
name = "41236c_2"
command = ~B, DB, D, DF, F, c
time = 15

[Command]
name = "623c"
command = ~F, D, DF, c
time = 20

[Command]
name = "623b"
command = ~F, D, DF, b
time = 20

[Command]
name = "623a"
command = ~F, D, DF, a
time = 20

[Command]
name = "214c"
command = ~D, B, c
time = 10

[Command]
name = "214b"
command = ~D, B, b
time = 10

[Command]
name = "214a"
command = ~D, B, a
time = 10

[Command]
name = "236c"
command = ~D, F, c
time = 10

[Command]
name = "236b"
command = ~D, F, b
time = 10

[Command]
name = "236a"
command = ~D, F, a
time = 10

[Command]
name = "22c"
command = ~D, D, c
time = 15

[Command]
name = "22b"
command = ~D, D, b
time = 15

[Command]
name = "22a"
command = ~D, D, a
time = 15

;----------------------------------------------------------------------
; Single Button
;----------------------------------------------------------------------

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

;----------------------------------------------------------------------
; Directions
;----------------------------------------------------------------------

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

[Command]
name = "up"
command = $U
time = 1

;----------------------------------------------------------------------
; Single Button - Hold
;----------------------------------------------------------------------

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

;----------------------------------------------------------------------
; Others
;----------------------------------------------------------------------

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "ac"
command = a+c
time = 1

;----------------------------------------------------------------------
; System Required
;----------------------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "FF_2"
command = F, F
time = 15

[Command]
name = "BB_2"
command = B, B
time = 15

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "recovery"
command = x
time = 1

[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "recovery"
command = a
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = c
time = 1

;======================================================================
;======================================================================
; Statedef -1
;======================================================================
;======================================================================

[Statedef -1]

;----------------------------------------------------------------------
; Hyper Special Moves
;----------------------------------------------------------------------

[State -1, 236236236C]
type = ChangeState
triggerall = command = "236236236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = ((Life*100)/LifeMax) <= 33
triggerall = Power >= 3000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370])
value = 7000

;----------------------------------------------------------------------
; Super Special Moves
;----------------------------------------------------------------------

[State -1, 2141236A]
type = ChangeState
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = Power >= 1000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 66100

[State -1, 2141236A]
type = ChangeState
triggerall = command = "2141236b" || command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = Power = [1000,1999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 66100

[State -1, 2141236B]
type = ChangeState
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = Power >= 2000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 66110

[State -1, 2141236B]
type = ChangeState
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = Power = [2000,2999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 66110

[State -1, 2141236C]
type = ChangeState
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = Power >= 3000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 66120

[State -1, 2141236A]
type = ChangeState
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 0
triggerall = Power >= 1000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6100

[State -1, 2141236A]
type = ChangeState
triggerall = command = "2141236b" || command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 0
triggerall = Power = [1000,1999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6100

[State -1, 2141236B]
type = ChangeState
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 0
triggerall = Power >= 2000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6110

[State -1, 2141236B]
type = ChangeState
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 0
triggerall = Power = [2000,2999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6110

[State -1, 2141236C]
type = ChangeState
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 0
triggerall = Power >= 3000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6120

[State -1, 2141236A]
type = ChangeState
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6101

[State -1, 2141236B]
type = ChangeState
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6101

[State -1, 2141236C]
type = ChangeState
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6101

[State -1, 2141236A]
type = ChangeState
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 2
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6111

[State -1, 2141236B]
type = ChangeState
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 2
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6111

[State -1, 2141236C]
type = ChangeState
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 2
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6111

[State -1, 2141236A]
type = ChangeState
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 3
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6121

[State -1, 2141236B]
type = ChangeState
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 3
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6121

[State -1, 2141236C]
type = ChangeState
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 3
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6121

[State -1, 641236A]
type = ChangeState
triggerall = command = "641236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 1000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6000

[State -1, 641236A]
type = ChangeState
triggerall = command = "641236b" || command = "641236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power = [1000,1999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6000

[State -1, 641236B]
type = ChangeState
triggerall = command = "641236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 2000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6010

[State -1, 641236B]
type = ChangeState
triggerall = command = "641236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power = [2000,2999]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6010

[State -1, 641236B]
type = ChangeState
triggerall = command = "641236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 3000
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6020

[State -1, 214214A]
type = ChangeState
triggerall = command = "214214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = Power >= 1000
triggerall = numhelper(16200) < 2
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6200

[State -1, 214214B]
type = ChangeState
triggerall = command = "214214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = Power >= 1000
triggerall = numhelper(16210) < 2
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6210

[State -1, 214214C]
type = ChangeState
triggerall = command = "214214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = Power >= 1000
triggerall = numhelper(16220) < 2
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 6220

;----------------------------------------------------------------------
; Super Moves
;----------------------------------------------------------------------

[State -1, 41236C]
type = ChangeState
triggerall = command = "41236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 1300

[State -1, 623A]
type = ChangeState
triggerall = command = "623a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 1100

[State -1, 623B]
type = ChangeState
triggerall = command = "623b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = ifelse(fvar(23) >= 3,1120,ifelse(fvar(23) = 2,1110,1105))

[State -1, 623C]
type = ChangeState
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = fvar(16) != [2,3]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = ifelse(fvar(23) >= 3,1120,ifelse(fvar(23) = 2,1110,1100))

[State -1, 623C]
type = ChangeState
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = ifelse(fvar(23) >= 3,1170,ifelse(fvar(23) = 2,1160,1150))

[State -1, 623A]
type = ChangeState
triggerall = command = "623a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 1100

[State -1, 623B]
type = ChangeState
triggerall = command = "623b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 61120

[State -1, 623C]
type = ChangeState
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = fvar(16) != [2,3]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 61120

[State -1, 623C]
type = ChangeState
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 61170

[State -1, 236A]
type = ChangeState
triggerall = command = "236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 1000

[State -1, 236B]
type = ChangeState
triggerall = command = "236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = ifelse(fvar(23) >= 3,1020,ifelse(fvar(23) = 2,1010,1000))

[State -1, 236C]
type = ChangeState
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = fvar(16) != [2,3]
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = ifelse(fvar(23) >= 3,1020,ifelse(fvar(23) = 2,1010,1000))

[State -1, 236C]
type = ChangeState
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = ifelse(fvar(23) >= 3,1070,ifelse(fvar(23) = 2,1060,1050))

[State -1, 236A]
type = ChangeState
triggerall = command = "236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 1000

[State -1, 236B]
type = ChangeState
triggerall = command = "236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 1020

[State -1, 236C]
type = ChangeState
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = fvar(16) != [2,3]
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 1020

[State -1, 236C]
type = ChangeState
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 1070

[State -1, 214A]
type = ChangeState
triggerall = command = "214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = ifelse(fvar(23) >= 3,1260,ifelse(fvar(23) = 2,1230,1200))

[State -1, 214B]
type = ChangeState
triggerall = command = "214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = ifelse(fvar(23) >= 3,1270,ifelse(fvar(23) = 2,1240,1210))

[State -1, 214C]
type = ChangeState
triggerall = command = "214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = ifelse(fvar(23) >= 3,1280,ifelse(fvar(23) = 2,1250,1220))

[State -1, 214A]
type = ChangeState
triggerall = command = "214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 1260

[State -1, 214B]
type = ChangeState
triggerall = command = "214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 1270

[State -1, 214C]
type = ChangeState
triggerall = command = "214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = (StateNo = [200,370]) && (StateNo != 270) && (var(1) = [1,3])
trigger3 = StateNo = [100,101]
trigger4 = (StateNo = [60200,60370]) && (var(1) = [1,3])
value = 1280

;----------------------------------------------------------------------
; Special Moves
;----------------------------------------------------------------------

[State -1, Instant Charge]
type = ChangeState
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3
trigger1 = (StateNo = [200,420]) && (var(1) >= 1) && command = "22c"
trigger2 = (StateNo = [1000,1299]) && (var(1) >= 1) && command = "22c"
trigger3 = (StateNo = [6100,7999]) && (var(1) >= 1) && command = "22c"
trigger4 = (StateNo = [60200,60420]) && (var(1) >= 1) && command = "22c"
trigger5 = (StateNo = [61000,61299]) && (var(1) >= 1) && command = "22c"
trigger6 = (StateNo = [66100,67999]) && (var(1) >= 1) && command = "22c"
trigger7 = (StateNo = [1000,7999]) && var(16) = 1
trigger8 = (StateNo = [61000,67999]) && var(16) = 1
value = 600

[State -1, Instant Charge]
type = ChangeState
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3
trigger1 = (StateNo = [200,420]) && (var(1) >= 1) && command = "22c"
trigger2 = (StateNo = [1000,1299]) && (var(1) >= 1) && command = "22c"
trigger3 = (StateNo = [6100,7999]) && (var(1) >= 1) && command = "22c"
trigger4 = (StateNo = [60200,60420]) && (var(1) >= 1) && command = "22c"
trigger5 = (StateNo = [61000,61299]) && (var(1) >= 1) && command = "22c"
trigger6 = (StateNo = [66100,67999]) && (var(1) >= 1) && command = "22c"
trigger7 = (StateNo = [1000,7999]) && var(16) = 1
trigger8 = (StateNo = [61000,67999]) && var(16) = 1
value = 610

[State -1, Dash]
type = ChangeState
triggerall = command = "FF"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = StateNo != 100
triggerall = StateNo != 105
trigger1 = Ctrl
trigger2 = (StateNo = 101) || (StateNo = 106)
value = 100

[State -1, Back Dash]
type = ChangeState
triggerall = command = "BB"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = StateNo != 100
triggerall = StateNo != 105
trigger1 = Ctrl
trigger2 = (StateNo = 101) || (StateNo = 106)
value = 105

[State -1, Air Dash]
type = ChangeState
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = StateNo != 110
triggerall = StateNo != 115
triggerall = Pos Y <= -40
triggerall = var(6) < 2
trigger1 = Ctrl && command = "FF"
trigger2 = (StateNo = [400,420]) && (var(1) >= 1) && command = "FF"
trigger3 = (StateNo = [400,420]) && (var(1) >= 1) && var(27) = 1
trigger4 = StateNo = 111 && command = "FF"
trigger5 = StateNo = 116 && command = "FF"
trigger6 = (StateNo = [60400,60420]) && (var(1) >= 1) && command = "FF"
trigger7 = (StateNo = [60400,60420]) && (var(1) >= 1) && var(27) = 1
value = 110

[State -1, Air Jump]
type = ChangeState
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(5) < 1
triggerall = ctrl
trigger1 = var(7) = 1
value = 45

[State -1, Air Back Dash]
type = ChangeState
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = StateNo != 110
triggerall = StateNo != 115
triggerall = Pos Y <= -40
triggerall = var(6) < 2
trigger1 = Ctrl && command = "BB"
trigger2 = (StateNo = [400,420]) && (var(1) >= 1) && command = "BB"
trigger3 = (StateNo = [400,420]) && (var(1) >= 1) && var(27) = 2
trigger4 = StateNo = 111 && command = "BB"
trigger5 = StateNo = 116 && command = "BB"
trigger6 = (StateNo = [60400,60420]) && (var(1) >= 1) && command = "BB"
trigger7 = (StateNo = [60400,60420]) && (var(1) >= 1) && var(27) = 2
value = 115

[State -1, Jump Cancel - in Ground]
type = ChangeState
triggerall = command = "up" || command = "holdup"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
trigger1 = (StateNo = 200) && (var(1) = [1,3])
trigger2 = (StateNo = 210) && (var(1) = 1)
trigger3 = (StateNo = 220) && (var(1) = 1)
trigger4 = (StateNo = 230) && (var(1) = [1,3])
trigger5 = (StateNo = 260) && (var(1) = 1)
trigger6 = (StateNo = 300) && (var(1) = [1,3])
trigger7 = (StateNo = 310) && (var(1) = [1,3])
trigger8 = (StateNo = 60200) && (var(1) = [1,3])
trigger9 = (StateNo = 60210) && (var(1) = [1,3])
trigger10 = (StateNo = 60220) && (var(1) = 1)
trigger11 = (StateNo = 60230) && (var(1) = [1,3])
trigger12 = (StateNo = 60260) && (var(1) = 1)
trigger13 = (StateNo = 60300) && (var(1) = [1,3])
trigger14 = (StateNo = 60310) && (var(1) = [1,3])
value = 40

[State -1, Dash Jump]
type = ChangeState
triggerall = command = "up"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
trigger1 = StateNo = [100,101]
value = 40

[State -1, Jump Cancel - in Air]
type = ChangeState
triggerall = command = "up" || command = "holdup"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(5) < 1
triggerall = var(1) = [1,3]
trigger1 = (StateNo = 370) && (var(1) = 1)
trigger2 = StateNo = [400,420]
trigger3 = (StateNo = 60370) && (var(1) = 1)
trigger4 = StateNo = [60400,60420]
value = 45

[State -1, Throw - in Ground]
type = ChangeState
triggerall = command = "c"
triggerall = StateType = S
triggerall = MoveType = I
triggerall = P2BodyDist X < 20
triggerall = P2MoveType != H
triggerall = P2StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = P2StateNo != [120,155]
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = ctrl
trigger2 = StateNo = 101
value = 500

[State -1, Throw - in Ariel]
type = ChangeState
triggerall = command = "c"
triggerall = StateType = A
triggerall = P2StateType = A
triggerall = P2BodyDist X < 50
triggerall = Alive
triggerall = !isHelper
triggerall = P2StateNo != [120,155]
triggerall = ctrl
trigger1 = command = "holdfwd"
value = 520

;----------------------------------------------------------------------
; Basic Attacks (Awaken)
;----------------------------------------------------------------------

[State -1, Stand Light Attack]
type = ChangeState
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 60200 && (var(1) = [1,3])
trigger3 = StateNo = 60300 && (var(1) = [1,3])
trigger4 = StateNo = 101
value = 60200

[State -1, Dash Stand Light Attack]
type = ChangeState
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = StateNo = 100
value = 60250

[State -1, Stand Medium Attack(Near)]
type = ChangeState
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = P2BodyDist X <= 12
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 60200 && (var(1) = [1,3])
trigger3 = StateNo = 60300 && (var(1) = [1,3])
trigger4 = StateNo = 101
value = 60210

[State -1, Dash Stand Medium Attack]
type = ChangeState
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = StateNo = 100
value = 60260

[State -1, Stand Medium Attack(far)]
type = ChangeState
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = P2BodyDist X > 12
trigger1 = Ctrl || var(14) = 1
trigger2 = P2BodyDist X > 12
trigger2 = StateNo = 60200 && (var(1) = [1,3])
trigger3 = StateNo = 60210 && (var(1) = [1,3])
trigger4 = P2BodyDist X > 12
trigger4 = StateNo = 60300 && (var(1) = [1,3])
trigger5 = P2BodyDist X > 12
trigger5 = StateNo = 101
value = 60220

[State -1, Stand Strong Attack]
type = ChangeState
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 60200 && (var(1) = [1,3])
trigger3 = StateNo = 60210 && (var(1) = [1,3])
trigger4 = StateNo = 60220 && (var(1) = [1,3])
trigger5 = StateNo = 60300 && (var(1) = [1,3])
trigger6 = StateNo = 60310 && (var(1) = [1,3])
trigger7 = StateNo = 101
value = 60230

[State -1, Dash Stand Strong Attack]
type = ChangeState
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = StateNo = 100
value = 60270

[State -1, Crouch Light Attack]
type = ChangeState
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 60200 && (var(1) = [1,3])
trigger3 = StateNo = 60300 && (var(1) = [1,3])
trigger4 = StateNo = 101
value = 60300

[State -1, Dash Crouch Light Attack]
type = ChangeState
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "holdback"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = StateNo = [100,101]
value = 60350

[State -1, Crouch Medium Attack]
type = ChangeState
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 60200 && (var(1) = [1,3])
trigger3 = StateNo = 60210 && (var(1) = [1,3])
trigger4 = StateNo = 60300 && (var(1) = [1,3])
trigger5 = StateNo = 101
value = 60310

[State -1, Dash Crouch Medium Attack]
type = ChangeState
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = command != "holdback"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = StateNo = [100,101]
value = 60360

[State -1, Crouch Strong Attack]
type = ChangeState
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 60200 && (var(1) = [1,3])
trigger3 = StateNo = 60210 && (var(1) = [1,3])
trigger4 = StateNo = 60220 && (var(1) = [1,3])
trigger5 = StateNo = 60300 && (var(1) = [1,3])
trigger6 = StateNo = 60310 && (var(1) = [1,3])
trigger7 = StateNo = 101
value = 60320

[State -1, Dash Crouch Strong Attack]
type = ChangeState
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = command != "holdback"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = StateNo = [100,101]
value = 60370

[State -1, Ariel Light Attack]
type = ChangeState
triggerall = command = "a"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 60400 && (var(1) = [1,3])
value = 60400

[State -1, Ariel Medium Attack]
type = ChangeState
triggerall = command = "b"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 60400 && (var(1) = [1,3])
value = 60410

[State -1, Ariel Strong Attack]
type = ChangeState
triggerall = command = "c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 60400 && (var(1) = [1,3])
trigger3 = StateNo = 60410 && (var(1) = [1,3])
value = 60420

;----------------------------------------------------------------------
; Basic Attacks
;----------------------------------------------------------------------

[State -1, Stand Light Attack]
type = ChangeState
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 60200 && (var(1) = [1,3])
trigger4 = StateNo = 300 && (var(1) = [1,3])
trigger5 = StateNo = 60300 && (var(1) = [1,3])
trigger6 = StateNo = 101
value = 200

[State -1, Dash Stand Light Attack]
type = ChangeState
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = StateNo = 100
value = 250

[State -1, Stand Medium Attack(Near)]
type = ChangeState
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = P2BodyDist X <= 12
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 300 && (var(1) = [1,3])
trigger4 = StateNo = 60200 && (var(1) = [1,3])
trigger5 = StateNo = 60300 && (var(1) = [1,3])
trigger6 = StateNo = 101
value = 210

[State -1, Dash Stand Medium Attack]
type = ChangeState
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = StateNo = 100
value = 260

[State -1, Stand Medium Attack(far)]
type = ChangeState
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = P2BodyDist X > 12
trigger1 = Ctrl || var(14) = 1
trigger2 = P2BodyDist X > 12
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 210 && (var(1) = [1,3])
trigger4 = P2BodyDist X > 12
trigger4 = StateNo = 300 && (var(1) = [1,3])
trigger5 = P2BodyDist X > 12
trigger5 = StateNo = 60200 && (var(1) = [1,3])
trigger6 = StateNo = 60210 && (var(1) = [1,3])
trigger7 = P2BodyDist X > 12
trigger7 = StateNo = 60300 && (var(1) = [1,3])
trigger8 = P2BodyDist X > 12
trigger8 = StateNo = 101
value = 220

[State -1, Stand Strong Attack]
type = ChangeState
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 210 && (var(1) = [1,3])
trigger4 = StateNo = 220 && (var(1) = [1,3])
trigger5 = StateNo = 300 && (var(1) = [1,3])
trigger6 = StateNo = 310 && (var(1) = [1,3])
trigger7 = StateNo = 60200 && (var(1) = [1,3])
trigger8 = StateNo = 60210 && (var(1) = [1,3])
trigger9 = StateNo = 60220 && (var(1) = [1,3])
trigger10 = StateNo = 60300 && (var(1) = [1,3])
trigger11 = StateNo = 60310 && (var(1) = [1,3])
trigger12 = StateNo = 101
value = 230

[State -1, Dash Stand Strong Attack]
type = ChangeState
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = StateNo = 100
value = 270

[State -1, Crouch Light Attack]
type = ChangeState
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 60200 && (var(1) = [1,3])
trigger4 = StateNo = 300 && (var(1) = [1,3])
trigger5 = StateNo = 60300 && (var(1) = [1,3])
trigger6 = StateNo = 101
value = 300

[State -1, Dash Crouch Light Attack]
type = ChangeState
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "holdback"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = StateNo = [100,101]
value = 350

[State -1, Crouch Medium Attack]
type = ChangeState
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 210 && (var(1) = [1,3])
trigger4 = StateNo = 300 && (var(1) = [1,3])
trigger5 = StateNo = 60200 && (var(1) = [1,3])
trigger6 = StateNo = 60210 && (var(1) = [1,3])
trigger7 = StateNo = 60300 && (var(1) = [1,3])
trigger8 = StateNo = 101
value = 310

[State -1, Dash Crouch Medium Attack]
type = ChangeState
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = command != "holdback"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = StateNo = [100,101]
value = 360

[State -1, Crouch Strong Attack]
type = ChangeState
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 200 && (var(1) = [1,3])
trigger3 = StateNo = 210 && (var(1) = [1,3])
trigger4 = StateNo = 220 && (var(1) = [1,3])
trigger5 = StateNo = 300 && (var(1) = [1,3])
trigger6 = StateNo = 310 && (var(1) = [1,3])
trigger7 = StateNo = 60200 && (var(1) = [1,3])
trigger8 = StateNo = 60210 && (var(1) = [1,3])
trigger9 = StateNo = 60220 && (var(1) = [1,3])
trigger10 = StateNo = 60300 && (var(1) = [1,3])
trigger11 = StateNo = 60310 && (var(1) = [1,3])
trigger12 = StateNo = 101
value = 320

[State -1, Dash Crouch Strong Attack]
type = ChangeState
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = command != "holdback"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = StateNo = [100,101]
value = 370

[State -1, Ariel Light Attack]
type = ChangeState
triggerall = command = "a"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 400 && (var(1) = [1,3])
trigger3 = StateNo = 60400 && (var(1) = [1,3])
value = 400

[State -1, Ariel Medium Attack]
type = ChangeState
triggerall = command = "b"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 400 && (var(1) = [1,3])
trigger3 = StateNo = 60400 && (var(1) = [1,3])
value = 410

[State -1, Ariel Strong Attack]
type = ChangeState
triggerall = command = "c"
triggerall = StateType = A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = Ctrl || var(14) = 1
trigger2 = StateNo = 400 && (var(1) = [1,3])
trigger3 = StateNo = 410 && (var(1) = [1,3])
trigger4 = StateNo = 60400 && (var(1) = [1,3])
trigger5 = StateNo = 60410 && (var(1) = [1,3])
value = 420

;======================================================================
;======================================================================
; Early Input
;======================================================================
;======================================================================

;----------------------------------------------------------------------
; Super Moves
;----------------------------------------------------------------------

[State -1, 623A]
type = VarSet
triggerall = command = "623a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = StateNo = 125
var(18) = 1100

[State -1, 623B]
type = VarSet
triggerall = command = "623b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = StateNo = 125
var(18) = ifelse(fvar(23) >= 3,1120,ifelse(fvar(23) = 2,1110,1105))

[State -1, 623C]
type = VarSet
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = fvar(16) != [2,3]
trigger1 = StateNo = 125
var(18) = ifelse(fvar(23) >= 3,1120,ifelse(fvar(23) = 2,1110,1100))

[State -1, 623C]
type = VarSet
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3
trigger1 = StateNo = 125
var(18) = ifelse(fvar(23) >= 3,1170,ifelse(fvar(23) = 2,1160,1150))

[State -1, 623A]
type = VarSet
triggerall = command = "623a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = StateNo = 125
var(18) = 1100

[State -1, 623B]
type = VarSet
triggerall = command = "623b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = StateNo = 125
var(18) = 61120

[State -1, 623C]
type = VarSet
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = fvar(16) != [2,3]
trigger1 = StateNo = 125
var(18) = 61120

[State -1, 623C]
type = VarSet
triggerall = command = "623c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3
trigger1 = StateNo = 125
var(18) = 61170

[State -1, 236A]
type = VarSet
triggerall = command = "236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = StateNo = 125
var(18) = 1000

[State -1, 236B]
type = VarSet
triggerall = command = "236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = StateNo = 125
var(18) = ifelse(fvar(23) >= 3,1020,ifelse(fvar(23) = 2,1010,1000))

[State -1, 236C]
type = VarSet
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = fvar(16) != [2,3]
triggerall = var(30) = 0
trigger1 = StateNo = 125
var(18) = ifelse(fvar(23) >= 3,1020,ifelse(fvar(23) = 2,1010,1000))

[State -1, 236C]
type = VarSet
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3
trigger1 = StateNo = 125
var(18) = ifelse(fvar(23) >= 3,1070,ifelse(fvar(23) = 2,1060,1050))

[State -1, 236A]
type = VarSet
triggerall = command = "236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = StateNo = 125
var(18) = 1000

[State -1, 236B]
type = VarSet
triggerall = command = "236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = StateNo = 125
var(18) = 1020

[State -1, 236C]
type = VarSet
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = fvar(16) != [2,3]
trigger1 = StateNo = 125
var(18) = 1020

[State -1, 236C]
type = VarSet
triggerall = command = "236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = (fvar(16) = 2 && fvar(15) > 100) || fvar(16) = 3
trigger1 = StateNo = 125
var(18) = 1070

[State -1, 214A]
type = VarSet
triggerall = command = "214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = StateNo = 125
var(18) = ifelse(fvar(23) >= 3,1260,ifelse(fvar(23) = 2,1230,1200))

[State -1, 214B]
type = VarSet
triggerall = command = "214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = StateNo = 125
var(18) = ifelse(fvar(23) >= 3,1270,ifelse(fvar(23) = 2,1240,1210))

[State -1, 214C]
type = VarSet
triggerall = command = "214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
trigger1 = StateNo = 125
var(18) = ifelse(fvar(23) >= 3,1280,ifelse(fvar(23) = 2,1250,1220))

[State -1, 214A]
type = VarSet
triggerall = command = "214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = StateNo = 125
var(18) = 1260

[State -1, 214B]
type = VarSet
triggerall = command = "214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = StateNo = 125
var(18) = 1270

[State -1, 214C]
type = VarSet
triggerall = command = "214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
trigger1 = StateNo = 125
var(18) = 1280

[State -1, 41236C]
type = VarSet
triggerall = command = "41236c_2"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
trigger1 = StateNo = 125
var(18) = 1300

;----------------------------------------------------------------------
; Super Special Moves
;----------------------------------------------------------------------

[State -1, 641236A]
type = VarSet
triggerall = command = "641236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 1000
trigger1 = StateNo = 125
var(18) = 6000

[State -1, 641236A]
type = VarSet
triggerall = command = "641236b" || command = "641236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power = [1000,1999]
trigger1 = StateNo = 125
var(18) = 6000

[State -1, 641236B]
type = VarSet
triggerall = command = "641236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 2000
trigger1 = StateNo = 125
var(18) = 6010

[State -1, 641236B]
type = VarSet
triggerall = command = "641236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power = [2000,2999]
trigger1 = StateNo = 125
var(18) = 6010

[State -1, 641236B]
type = VarSet
triggerall = command = "641236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = Power >= 3000
trigger1 = StateNo = 125
var(18) = 6020

[State -1, 2141236A]
type = VarSet
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = Power >= 1000
trigger1 = StateNo = 125
var(18) = 66100

[State -1, 2141236A]
type = VarSet
triggerall = command = "2141236b" || command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = Power = [1000,1999]
trigger1 = StateNo = 125
var(18) = 66100

[State -1, 2141236B]
type = VarSet
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = Power >= 2000
trigger1 = StateNo = 125
var(18) = 66110

[State -1, 2141236B]
type = VarSet
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = Power = [2000,2999]
trigger1 = StateNo = 125
var(18) = 66110

[State -1, 2141236C]
type = VarSet
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 1
triggerall = Power >= 3000
trigger1 = StateNo = 125
var(18) = 66120

[State -1, 2141236A]
type = VarSet
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 0
triggerall = Power >= 1000
trigger1 = StateNo = 125
var(18) = 6100

[State -1, 2141236A]
type = VarSet
triggerall = command = "2141236b" || command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 0
triggerall = Power = [1000,1999]
trigger1 = StateNo = 125
var(18) = 6100

[State -1, 2141236B]
type = VarSet
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 0
triggerall = Power >= 2000
trigger1 = StateNo = 125
var(18) = 6110

[State -1, 2141236B]
type = VarSet
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 0
triggerall = Power = [2000,2999]
trigger1 = StateNo = 125
var(18) = 6110

[State -1, 2141236C]
type = VarSet
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 0
triggerall = Power >= 3000
trigger1 = StateNo = 125
var(18) = 6120

[State -1, 2141236A]
type = VarSet
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 1
trigger1 = StateNo = 125
var(18) = 6101

[State -1, 2141236B]
type = VarSet
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 1
trigger1 = StateNo = 125
var(18) = 6101

[State -1, 2141236C]
type = VarSet
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 1
trigger1 = StateNo = 125
var(18) = 6101

[State -1, 2141236A]
type = VarSet
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 2
trigger1 = StateNo = 125
var(18) = 6111

[State -1, 2141236B]
type = VarSet
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 2
trigger1 = StateNo = 125
var(18) = 6111

[State -1, 2141236C]
type = VarSet
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 2
trigger1 = StateNo = 125
var(18) = 6111

[State -1, 2141236A]
type = VarSet
triggerall = command = "2141236a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 3
trigger1 = StateNo = 125
var(18) = 6121

[State -1, 2141236B]
type = VarSet
triggerall = command = "2141236b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 3
trigger1 = StateNo = 125
var(18) = 6121

[State -1, 2141236C]
type = VarSet
triggerall = command = "2141236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = var(31)%10 = 3
trigger1 = StateNo = 125
var(18) = 6121

[State -1, 214214A]
type = VarSet
triggerall = command = "214214a"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = Power >= 1000
trigger1 = StateNo = 125
var(18) = 6200

[State -1, 214214B]
type = VarSet
triggerall = command = "214214b"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = Power >= 1000
trigger1 = StateNo = 125
var(18) = 6210

[State -1, 214214C]
type = VarSet
triggerall = command = "214214c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = Power >= 1000
trigger1 = StateNo = 125
var(18) = 6220

;----------------------------------------------------------------------
; Hyper Special Moves
;----------------------------------------------------------------------

[State -1, 236236236C]
type = VarSet
triggerall = command = "236236236c"
triggerall = StateType != A
triggerall = Alive
triggerall = RoundState = 2
triggerall = !isHelper
triggerall = var(30) = 0
triggerall = ((Life*100)/LifeMax) <= 33
triggerall = Power >= 3000
trigger1 = StateNo = 125
var(18) = 7000

