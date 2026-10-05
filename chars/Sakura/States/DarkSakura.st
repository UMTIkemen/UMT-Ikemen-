; ________________________________
;| Sakura Kasugano by DeathScythe |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

;---------------------------------------------------------------------------
;Initialize
[StateDef 5900]
type = S

[State 5900, Int VarReset]
type = VarRangeSet
trigger1 = !RoundsExisted
value = 0

[State 5900, Float VarReset]
type = VarRangeSet
trigger1 = !RoundsExisted
fvalue = 0

;---------------------------------------------------------------------------
; Palette Configuration
;---------------------------------------------------------------------------
; How to configure palettes:
; var(0) controls what palette Sakura will be using. Inside the "Palettes"
; folder there are previews for the palettes, with a number on their names.
; To assign a palette to a button, simply put that number to the button you
; want. For example, if you want palette 13 for the "b" button, go to
; [State 5900, Palette 5 (b)] and change the line to "var(0) = 13".

; Palettes are organized like this: 1~199: Normal Sakura || 200+ : Dark Sakura
; If you make new palettes, be sure to add them in the correct number range!

[State 5900, Palette 1 (x)]
type = VarSet
trigger1 = PalNo = 1
var(0) = 200 ;CHANGE THIS LINE

[State 5900, Palette 2 (y)]
type = VarSet
trigger1 = PalNo = 2
var(0) = 202 ;CHANGE THIS LINE

[State 5900, Palette 3 (z)]
type = VarSet
trigger1 = PalNo = 3
var(0) = 201 ;CHANGE THIS LINE

[State 5900, Palette 4 (a)]
type = VarSet
trigger1 = PalNo = 4
var(0) = 203 ;CHANGE THIS LINE

[State 5900, Palette 5 (b)]
type = VarSet
trigger1 = PalNo = 5
var(0) = 204 ;CHANGE THIS LINE

[State 5900, Palette 6 (c)]
type = VarSet
trigger1 = PalNo = 6
var(0) = 205 ;CHANGE THIS LINE

[State 5900, Palette 7 (start + x)]
type = VarSet
trigger1 = PalNo = 7
var(0) = 212 ;CHANGE THIS LINE

[State 5900, Palette 8 (start + y)]
type = VarSet
trigger1 = PalNo = 8
var(0) = 219 ;CHANGE THIS LINE

[State 5900, Palette 9 (start + z)]
type = VarSet
trigger1 = PalNo = 9
var(0) = 220 ;CHANGE THIS LINE

[State 5900, Palette 10 (start + a)]
type = VarSet
trigger1 = PalNo = 10
var(0) = 221 ;CHANGE THIS LINE

[State 5900, Palette 11 (start + b)]
type = VarSet
trigger1 = PalNo = 11
var(0) = 206 ;CHANGE THIS LINE

[State 5900, Palette 12 (start + c)]
type = VarSet
trigger1 = PalNo = 12
var(0) = 218 ;CHANGE THIS LINE

;---------------------------------------------------------------------------
; End of Palette Configuration
;---------------------------------------------------------------------------

[State 5900, Change Mode (Normal/Dark) Mid Fight]
type = VarSet
trigger1 = 1
var(52) = 0 ;CHANGE THIS LINE
;0 = Disable
;1 = Enable

[State 5900, Configuration]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 7650
ID = 7650
name = "Configuration Helper"
posType = P1

[State 5900, Mode Detection]
type = VarSet
trigger1 = 1
var(40) = 1
ignorehitpause = 1

[State 5900, End]
type = ChangeState
trigger1 = 1
value = 5901