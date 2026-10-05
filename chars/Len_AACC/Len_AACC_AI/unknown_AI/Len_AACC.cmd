;-| ボタン配置 |------------------------------------------------
[Remap]
x = x    ;簡易ボタン
y = y    ;簡易ボタン2
z = z    ;シールド
a = a    ;弱攻撃
b = b    ;中攻撃
c = c    ;強攻撃
s = s    ;挑発

;-| AI |--------------------------------------------------------
[Command]
Name    = "AI_00"
Command =  a, a
Time = 0

[Command]
Name    = "AI_01"
Command =  a, b
Time = 0

[Command]
Name    = "AI_02"
Command =  a, c
Time = 0

[Command]
Name    = "AI_03"
Command =  a, x
Time = 0

[Command]
Name    = "AI_04"
Command =  a, y
Time = 0

[Command]
Name    = "AI_05"
Command =  a, z
Time = 0

[Command]
Name    = "AI_06"
Command =  a, s
Time = 0

[Command]
Name    = "AI_07"
Command =  b, a
Time = 0

[Command]
Name    = "AI_08"
Command =  b, b
Time = 0

[Command]
Name    = "AI_09"
Command =  b, c
Time = 0

[Command]
Name    = "AI_10"
Command =  b, x
Time = 0

[Command]
Name    = "AI_11"
Command =  b, y
Time = 0

[Command]
Name    = "AI_12"
Command =  b, z
Time = 0

[Command]
Name    = "AI_13"
Command =  b, s
Time = 0

[Command]
Name    = "AI_14"
Command =  c, a
Time = 0

[Command]
Name    = "AI_15"
Command =  c, b
Time = 0

[Command]
Name    = "AI_16"
Command =  c, c
Time = 0

[Command]
Name    = "AI_17"
Command =  c, x
Time = 0

[Command]
Name    = "AI_18"
Command =  c, y
Time = 0

[Command]
Name    = "AI_19"
Command =  c, z
Time = 0

[Command]
Name    = "AI_20"
Command =  c, s
Time = 0

[Command]
Name    = "AI_21"
Command =  x, a
Time = 0

[Command]
Name    = "AI_22"
Command =  x, b
Time = 0

[Command]
Name    = "AI_23"
Command =  x, c
Time = 0

[Command]
Name    = "AI_24"
Command =  x, x
Time = 0

[Command]
Name    = "AI_25"
Command =  x, y
Time = 0

[Command]
Name    = "AI_26"
Command =  x, z
Time = 0

[Command]
Name    = "AI_27"
Command =  x, s
Time = 0

[Command]
Name    = "AI_28"
Command =  y, a
Time = 0

[Command]
Name    = "AI_29"
Command =  y, b
Time = 0

[Command]
Name    = "AI_30"
Command =  y, c
Time = 0

[Command]
Name    = "AI_31"
Command =  y, x
Time = 0

[Command]
Name    = "AI_32"
Command =  y, y
Time = 0

[Command]
Name    = "AI_33"
Command =  y, z
Time = 0

[Command]
Name    = "AI_34"
Command =  y, s
Time = 0

[Command]
Name    = "AI_35"
Command =  s, a
Time = 0

[Command]
Name    = "AI_36"
Command =  s, b
Time = 0

[Command]
Name    = "AI_37"
Command =  s, c
Time = 0

[Command]
Name    = "AI_38"
Command =  s, x
Time = 0

[Command]
Name    = "AI_39"
Command =  s, y
Time = 0

[Command]
Name    = "AI_40"
Command =  s, z
Time = 0

[Command]
Name    = "AI_41"
Command =  s, s
Time = 0

[Command]
Name    = "AI_42"
Command =  U, U
Time = 0

[Command]
Name    = "AI_43"
Command =  U, F
Time = 0

[Command]
Name    = "AI_44"
Command =  U, D
Time = 0

[Command]
Name    = "AI_45"
Command =  U, B
Time = 0

[Command]
Name    = "AI_46"
Command =  F, U
Time = 0

[Command]
Name    = "AI_47"
Command =  F, F
Time = 0

[Command]
Name    = "AI_48"
Command =  F, D
Time = 0

[Command]
Name    = "AI_49"
Command =  F, B
Time = 0

[Command]
Name    = "AI_50"
Command =  D, U
Time = 0

[Command]
Name    = "AI_51"
Command =  D, F
Time = 0

[Command]
Name    = "AI_52"
Command =  D, D
Time = 0

[Command]
Name    = "AI_53"
Command =  D, B
Time = 0

[Command]
Name    = "AI_54"
Command =  B, U
Time = 0

[Command]
Name    = "AI_55"
Command =  B, F
Time = 0

[Command]
Name    = "AI_56"
Command =  B, D
Time = 0

[Command]
Name    = "AI_57"
Command =  B, B
Time = 0

[Command]
Name    = "AI_58"
Command =  UF, UF
Time = 0

[Command]
Name    = "AI_59"
Command =  UF, UB
Time = 0

[Command]
Name    = "AI_60"
Command =  UF, DF
Time = 0

[Command]
Name    = "AI_61"
Command =  UF, DB
Time = 0

[Command]
Name    = "AI_62"
Command =  UB, UF
Time = 0

[Command]
Name    = "AI_63"
Command =  UB, UB
Time = 0

[Command]
Name    = "AI_64"
Command =  UB, DF
Time = 0

[Command]
Name    = "AI_65"
Command =  UB, DB
Time = 0

[Command]
Name    = "AI_66"
Command =  DF, UF
Time = 0

[Command]
Name    = "AI_67"
Command =  DF, UB
Time = 0

[Command]
Name    = "AI_68"
Command =  DF, DF
Time = 0

[Command]
Name    = "AI_69"
Command =  DF, DB
Time = 0

;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "41236c"
command = ~B, DB, D, DF, F, c
time = 18

[Command]
name = "816438z"
command = ~U, DB, F, B, DF, U, z
time = 38

[Command]
name = "816438z"
command = ~U, DF, B, F, DB, U, z
time = 38
;-| 必殺技 |------------------------------------------------------
[Command]
name = "63214c"
command = ~F, DF, D, DB, B, c
time = 18

[Command]
name = "2222c"
command = D, D, D, D, c
time = 24

[Command]
name = "421z"
command = ~B, D, DB, z
time = 15

[Command]
name = "421a"
command = ~B, D, DB, a
time = 15

[Command]
name = "421b"
command = ~B, D, DB, b
time = 15

[Command]
name = "421c"
command = ~B, D, DB, c
time = 15

[Command]
name = "623a"
command = ~F, D, DF, a
time = 15

[Command]
name = "623b"
command = ~F, D, DF, b
time = 15

[Command]
name = "623c"
command = ~F, D, DF, c
time = 15

[Command]
name = "236z"
command = ~D, DF, F, z
time = 15

[Command]
name = "236a"
command = ~D, DF, F, a
time = 15

[Command]
name = "236b"
command = ~D, DF, F, b
time = 15

[Command]
name = "236c"
command = ~D, DF, F, c
time = 15

[Command]
name = "214z"
command = ~D, DB, B, z
time = 15

[Command]
name = "214a"
command = ~D, DB, B, a
time = 15

[Command]
name = "214b"
command = ~D, DB, B, b
time = 15

[Command]
name = "214c"
command = ~D, DB, B, c
time = 15

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "jump"    
command = $D, UF
time = 11

[Command]
name = "rjump"    
command = $D, UB
time = 11

[Command]
name = "jump2"    
command = $D, U
time = 11

[Command]
name = "FF"
command = F, F
time = 12

[Command]
name = "FF"
command = F, >~$F, U, >~$U, F 
time = 16

[Command]
name = "BB"
command = B, B
time = 12

[Command]
name = "BB"
command = B, >~$B, U, >~$U, B
time = 16

;-| 方向とボタンで出す技 |---------------------------------------------------------
;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "a"
command = a
time = 0

[Command]
name = "b"
command = b
time = 0

[Command]
name = "c"
command = c
time = 0

[Command]
name = "x"
command = x
time = 0

[Command]
name = "y"
command = y
time = 0

[Command]
name = "z"
command = z
time = 0

[Command]
name = "start"
command = s
time = 0

[Command]
Name    = "recovery"
Command = a
Time    = 0

[Command]
Name    = "recovery"
Command = b
Time    = 0

[Command]
Name    = "recovery"
Command = c
Time    = 0

[Command]
Name    = "recovery"
Command = x
Time    = 0

[Command]
Name    = "recovery"
Command = y
Time    = 0

[Command]
Name    = "recovery"
Command = z
Time    = 0

[command]
name = "fwd"
command = F
time = 0

[command]
name = "back"
command = B
time = 0

[Command]
name = "up" 
command = U
time = 0

[Command]
name = "down"
command = D
time = 0

[Command]
name = "ab"
command = a+b
time = 0

[Command]
name = "abc"
command = a+b+c
time = 0

[Command]
name = "az"
command = a+z
time = 0

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
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
name = "A溜め"
command = /$a
time = 1

[Command]
name = "B溜め"
command = /$b
time = 1

[Command]
name = "C溜め"
command = /$c
time = 1

[Command]
name = "X溜め"
command = /$x
time = 1

[Command]
name = "Z溜め"
command = /$z
time = 1

[Command]
name = "ABC溜め"
command = /$a+b+c
time = 1

;---------------------------------------------------------------------------
; 下の記述↓は絶対に消さないでください。
;この記述を消すのは自殺行為です。絶対に消さないで下さい。
[Statedef -1]
;===========================================================================
;クリームパフドリームレム
[State -1] 
Type = ChangeState
Value = 3100
TriggerAll = Var(59) <= 0
TriggerAll = Var(13) = 4
TriggerAll = NumHelper(25000)
Trigger1 = Var(2)/100%10 >= 2
Trigger1 = (StateNo = [920,921]) || StateNo = 923 && FVar(26) = 1 && Var(57)%10 = 3
Trigger2 = StateType = A
Trigger2 = Var(57)%10 = 4
Trigger2 = FVar(23) > 0
Trigger2 = Command = "816438z" || Helper(25000),Var(6) = 406
Trigger2 = Ctrl || Var(2)/100%10 >= 5 && MoveType != H

;---------------------------------------------------------------------------
;ホウマツノユメ
[State -1]
Type = ChangeState
Value = 3050
TriggerAll = Var(59) <= 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "41236c" || Helper(25000),Var(6) = 203
TriggerAll = StateType != A
TriggerAll = Var(13) = 4
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;ウタカタ
[State -1]
Type = ChangeState
Value = 3000
TriggerAll = Var(59) <= 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "41236c" || Helper(25000),Var(6) = 203
TriggerAll = StateType != A
TriggerAll = (Var(13) = [1,3]) || Var(13) = 5
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;立ちシールドカウンター
[State -1] 
Type = ChangeState
Value = 905
TriggerAll = Var(59) <= 0
TriggerAll = Var(2)/100%10 >= 2 && StateNo = [900,903]
TriggerAll = NumHelper(25000)
Trigger1 = Command = "236z" && Var(57)%10 >= 3 || Helper(25000),Var(6) = 226 && Var(57)%10 >= 3
Trigger2 = Var(57)%10 = 2
Trigger2 = NumTarget
Trigger2 = ! Target,IsHelper
Trigger2 = StateNo = 900 || StateNo = 902
Trigger3 = Var(57)%10 = 2
Trigger3 = Var(2)/100%10 >= 2 && Command = "236z" || Var(2)/100%10 >= 2 && Helper(25000),Var(6) = 226
Trigger3 = StateNo = [900,903]

;---------------------------------------------------------------------------
;しゃがみシールドカウンター
[State -1] 
Type = ChangeState
Value = 915
TriggerAll = Var(59) <= 0
TriggerAll = Var(2)/100%10 >= 2 && StateNo = [910,913]
TriggerAll = NumHelper(25000)
Trigger1 = Command = "236z" && Var(57)%10 >= 3 || Helper(25000),Var(6) = 226 && Var(57)%10 >= 3
Trigger2 = Var(57)%10 = 2
Trigger2 = NumTarget
Trigger2 = ! Target,IsHelper
Trigger2 = StateNo = 910 || StateNo = 912
Trigger3 = Var(57)%10 = 2
Trigger3 = Var(2)/100%10 >= 2 && Command = "236z" || Var(2)/100%10 >= 2 && Helper(25000),Var(6) = 226
Trigger3 = StateNo = [910,913]

;---------------------------------------------------------------------------
;空中シールドカウンター
[State -1] 
Type = ChangeState
Value = 925
TriggerAll = Var(59) <= 0
TriggerAll = Var(2)/100%10 >= 2 && StateNo = [920,923]
TriggerAll = NumHelper(25000)
Trigger1 = Command = "236z" && Var(57)%10 >= 3 || Helper(25000),Var(6) = 226 && Var(57)%10 >= 3
Trigger2 = Var(57)%10 = 2
Trigger2 = NumTarget
Trigger2 = ! Target,IsHelper
Trigger2 = StateNo = 920 || StateNo = 922
Trigger3 = Var(57)%10 = 2
Trigger3 = Var(2)/100%10 >= 2 && Command = "236z" || Var(2)/100%10 >= 2 && Helper(25000),Var(6) = 226
Trigger3 = StateNo = [920,923]

;---------------------------------------------------------------------------
;テンバツ
[State -1]
Type = ChangeState
Value = 1430
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 1
TriggerAll = NumHelper(25000)
TriggerAll = Command = "421z" || Helper(25000),Var(6) = 246
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;シールドバンカー
[State -1]
Type = ChangeState
Value = 930
TriggerAll = Var(59) <= 0
TriggerAll = StateType != A
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214z" || Helper(25000),Var(6) = 256
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;Cロンドン・ロンドA
[State -1]
Type = ChangeState
Value = 1300
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623a" || Helper(25000),Var(6) = 211
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;Fロンドン・ロンドA
[State -1]
Type = ChangeState
Value = 1310
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623a" || Helper(25000),Var(6) = 211
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;Cロンドン・ロンドB
[State -1]
Type = ChangeState
Value = 1350
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623b" || Helper(25000),Var(6) = 212 || Command = "623c" && Var(13) = 0 && FVar(29) < 1000 || Command = "623c" && Var(13) = [6,9]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;Fロンドン・ロンドB
[State -1]
Type = ChangeState
Value = 1360
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623b" || Helper(25000),Var(6) = 212 || Command = "623c" && Var(13) = 0 && FVar(29) < 1000 || Command = "623c" && Var(13) = [6,9]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;Cロンドン・ロンドEX
[State -1]
Type = ChangeState
Value = 2300
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623c" || Helper(25000),Var(6) = 213
TriggerAll = StateType != A
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;Fロンドン・ロンドEX
[State -1]
Type = ChangeState
Value = 2310
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623c" || Helper(25000),Var(6) = 213
TriggerAll = StateType != A
TriggerAll = StateNo != 2310
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;CフルールフリーズA
[State -1]
Type = ChangeState
Value = 1100
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236a" || Helper(25000),Var(6) = 221
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;CフルールフリーズB
[State -1]
Type = ChangeState
Value = 1110
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236b" || Helper(25000),Var(6) = 222 || Command = "236c" && Var(13) = 0 && FVar(29) < 1000 || Command = "236c" && Var(13) = [6,9]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;EフルールフリーズA
[State -1]
Type = ChangeState
Value = 1102
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236a" || Helper(25000),Var(6) = 221
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;EフルールフリーズB
[State -1]
Type = ChangeState
Value = 1112
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236b" || Helper(25000),Var(6) = 222
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;EフルールフリーズC
[State -1]
Type = ChangeState
Value = 1122
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236c" || Helper(25000),Var(6) = 223
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;CフルールフリーズEX
[State -1]
Type = ChangeState
Value = 2100
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236c" || Helper(25000),Var(6) = 223
TriggerAll = StateType != A
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;フレイムスノウA
[State -1]
Type = ChangeState
Value = 1800
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236a" || Helper(25000),Var(6) = 221
TriggerAll = NumHelper(1850) + NumHelper(1860) = 0
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;フレイムスノウB
[State -1]
Type = ChangeState
Value = 1810
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236b" || Helper(25000),Var(6) = 222 || Command = "236c" && Var(13) = 0 && FVar(29) < 1000 || Command = "236c" && Var(13) = [6,9]
TriggerAll = NumHelper(1850) + NumHelper(1860) = 0
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;フレイムスノウEX
[State -1]
Type = ChangeState
Value = 2800
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236c" || Helper(25000),Var(6) = 223
TriggerAll = NumHelper(2850) = 0
TriggerAll = StateType != A
TriggerAll = StateNo != 2310
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;パウダースノウ
[State -1]
Type = ChangeState
Value = 1500
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 1 || Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "63214c" || Helper(25000),Var(6) = 233
TriggerAll = StateType != A
TriggerAll = NumHelper(1505) + NumHelper(1506) <= 1
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;スイートドリーム
[State -1]
Type = ChangeState
Value = 1510
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "63214c" || Helper(25000),Var(6) = 233
TriggerAll = StateType != A
TriggerAll = NumHelper(1550) = 0
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;CプリティーウォークA
[State -1]
Type = ChangeState
Value = 1400
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 1
TriggerAll = NumHelper(25000)
TriggerAll = Command = "421a" || Helper(25000),Var(6) = 241
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;CプリティーウォークB
[State -1]
Type = ChangeState
Value = 1410
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 1
TriggerAll = NumHelper(25000)
TriggerAll = Command = "421b" || Helper(25000),Var(6) = 242
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;CプリティーウォークC
[State -1]
Type = ChangeState
Value = 1420
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 1
TriggerAll = NumHelper(25000)
TriggerAll = Command = "421c" || Helper(25000),Var(6) = 243
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;Hマジック･ザ･ボゥA
[State -1]
Type = ChangeState
Value = 1600
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 2 || Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "421a" || Helper(25000),Var(6) = 241
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;Hマジック･ザ･ボゥB
[State -1]
Type = ChangeState
Value = 1610
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 2 || Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "421b" || Helper(25000),Var(6) = 242
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;Hマジック･ザ･ボゥC
[State -1]
Type = ChangeState
Value = 1620
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 2 || Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "421c" || Helper(25000),Var(6) = 243
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;CグラスグラスティータイムA
[State -1]
Type = ChangeState
Value = 1000
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214a" || Helper(25000),Var(6) = 251
TriggerAll = StateType != A
TriggerAll = NumHelper(1050) + NumHelper(1052) + NumHelper(1060) <= 1
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;CグラスグラスティータイムB
[State -1]
Type = ChangeState
Value = 1010
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214b" || Helper(25000),Var(6) = 252
TriggerAll = StateType != A
TriggerAll = NumHelper(1051) + NumHelper(1053) = 0
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;EグラスグラスティータイムA
[State -1]
Type = ChangeState
Value = 1005
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214a" || Helper(25000),Var(6) = 251
TriggerAll = StateType != A
TriggerAll = NumHelper(1050) + NumHelper(1051) + NumHelper(1052) + NumHelper(1053) + NumHelper(1060) <= 1
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;EグラスグラスティータイムB
[State -1]
Type = ChangeState
Value = 1015
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214b" || Helper(25000),Var(6) = 252
TriggerAll = StateType != A
TriggerAll = NumHelper(1050) + NumHelper(1051) + NumHelper(1052) + NumHelper(1053) + NumHelper(1060) <= 1
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;C猫通ロケット
[State -1]
Type = ChangeState
Value = 1020
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214c" || Helper(25000),Var(6) = 253
TriggerAll = StateType != A
TriggerAll = NumHelper(1050) + NumHelper(1052) + NumHelper(1060) <= 1
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;E猫通ロケット
[State -1]
Type = ChangeState
Value = 1025
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214c" || Helper(25000),Var(6) = 253
TriggerAll = StateType != A
TriggerAll = NumHelper(1050) + NumHelper(1051) + NumHelper(1052) + NumHelper(1053) + NumHelper(1060) <= 1
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;セントエルモ・発動
[State -1]
Type = ChangeState
Value = 1701
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214a" ||  Command = "214b" || Command = "214c" && Var(13) = 0 && FVar(29) < 1000 || Command = "214c" && (Var(13) = [6,9]) || Helper(25000),Var(6) = [251,252]
TriggerAll = StateType != A
Trigger1 = NumHelper(1705) = 1
Trigger1 = Helper(1705),Anim != 1706
Trigger1 = Ctrl
Trigger2 = NumHelper(1715) = 1
Trigger2 = Helper(1715),Anim != 1706
Trigger2 = Ctrl
Trigger3 = NumHelper(1705) = 1
Trigger3 = Helper(1705),Anim != 1706
Trigger3 = Var(2)/100%10 >= 2 && MoveType != H
Trigger4 = NumHelper(1715) = 1
Trigger4 = Helper(1715),Anim != 1706
Trigger4 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;セントエルモA
[State -1]
Type = ChangeState
Value = 1700
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214a" || Helper(25000),Var(6) = 251
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;セントエルモB
[State -1]
Type = ChangeState
Value = 1710
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214b" || Helper(25000),Var(6) = 252 || Command = "214c" && Var(13) = 0 && FVar(29) < 1000 || Command = "214c" && Var(13) = [6,9]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;セントエルモ・ホーリーボルト
[State -1]
Type = ChangeState
Value = 2700
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214c" || Helper(25000),Var(6) = 253
TriggerAll = StateType != A
TriggerAll = StateNo != 2310
TriggerAll = NumHelper(2705) + NumHelper(2755) = 0
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;猫大行進
[State -1]
Type = ChangeState
Value = 2000
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 1
TriggerAll = NumHelper(25000)
TriggerAll = Command = "2222c" || Helper(25000),Var(6) = 263
TriggerAll = StateType != A
TriggerAll = NumHelper(1050) + NumHelper(1051) + NumHelper(1052) + NumHelper(1053) + NumHelper(1060) + NumHelper(2050) <= 0
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;C空中フルールフリーズA
[State -1]
Type = ChangeState
Value = 1200
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 1
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236a" || Helper(25000),Var(6) = 221
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;H空中フルールフリーズA
[State -1]
Type = ChangeState
Value = 1201
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 2
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236a" || Helper(25000),Var(6) = 221
TriggerAll = NumHelper(1251) + NumHelper(1261) + NumHelper(1270) = 0
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;E空中フルールフリーズA
[State -1]
Type = ChangeState
Value = 1202
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236a" || Helper(25000),Var(6) = 221
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;C空中フルールフリーズB
[State -1]
Type = ChangeState
Value = 1210
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 1
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236b" || Helper(25000),Var(6) = 222 || Command = "236c" && Var(13) = 0 && FVar(29) < 1000 || Command = "236c" && Var(13) = [6,9]
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;H空中フルールフリーズB
[State -1]
Type = ChangeState
Value = 1211
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 2
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236b" || Helper(25000),Var(6) = 222 || Command = "236c" && Var(13) = 0 && FVar(29) < 1000 || Command = "236c" && Var(13) = [6,9]
TriggerAll = NumHelper(1251) + NumHelper(1261) + NumHelper(1270) = 0
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;E空中フルールフリーズB
[State -1]
Type = ChangeState
Value = 1212
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236b" || Helper(25000),Var(6) = 222 || Command = "236c" && Var(13) = 0 && FVar(29) < 1000 || Command = "236c" && Var(13) = [6,9]
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;C空中フルールフリーズEX
[State -1]
Type = ChangeState
Value = 2200
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236c" || Helper(25000),Var(6) = 223
TriggerAll = StateType = A
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;E空中フルールフリーズEX
[State -1]
Type = ChangeState
Value = 2210
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236c" || Helper(25000),Var(6) = 223
TriggerAll = StateType = A
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;ノーザンライツ
[State -1]
Type = ChangeState
Value = 2500
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = 2 || Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "63214c" || Helper(25000),Var(6) = 233
TriggerAll = StateType = A
TriggerAll = NumHelper(2505) = 0
Trigger1 = FVar(29) >= 1500
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1500
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;空中セントエルモ・発動
[State -1]
Type = ChangeState
Value = 1751
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [3,4]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214a"|| Command = "214b" || Command = "214c" && Var(13) = 0 && FVar(29) < 1000 || Command = "214c" && (Var(13) = [6,9]) || Helper(25000),Var(6) = [251,252]
TriggerAll = StateType = A
TriggerAll = StateNo != 1750 && StateNo != 1760
Trigger1 = NumHelper(1755) = 1
Trigger1 = Helper(1755),Anim != 1706
Trigger1 = Ctrl
Trigger2 = NumHelper(1765) = 1
Trigger2 = Helper(1765),Anim != 1706
Trigger2 = Ctrl
Trigger3 = NumHelper(1755) = 1
Trigger3 = Helper(1755),Anim != 1706
Trigger3 = Var(2)/100%10 >= 2 && MoveType != H
Trigger4 = NumHelper(1765) = 1
Trigger4 = Helper(1765),Anim != 1706
Trigger4 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;空中セントエルモA
[State -1]
Type = ChangeState
Value = 1750
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [3,4]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214a" || Helper(25000),Var(6) = 251
TriggerAll = StateType = A
TriggerAll = StateNo != 1750 && StateNo != 1760
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;空中セントエルモB
[State -1]
Type = ChangeState
Value = 1760
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [3,4]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214b" || Helper(25000),Var(6) = 252 || Command = "214c" && Var(13) = 0 && FVar(29) < 1000 || Command = "214c" && Var(13) = [6,9]
TriggerAll = StateType = A
TriggerAll = StateNo != 1750 && StateNo != 1760
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;空中セントエルモ・ホーリーボルト
[State -1]
Type = ChangeState
Value = 2750
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/100%10 = [3,4]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214c" || Helper(25000),Var(6) = 253
TriggerAll = StateType = A
TriggerAll = StateNo != 2310
TriggerAll = NumHelper(2705) + NumHelper(2755) = 0
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;前ハイジャンプ
[State -1]
Type = ChangeState
Value = 41
TriggerAll = Var(59) <= 0
TriggerAll = Var(11)%10 = [0,0+IfElse(Var(57)%10=4,3,0)]
TriggerAll = NumHelper(25000)
Trigger1 = Command = "jump" && (SysVar(4) = [0,10]) || Helper(25000),Var(6) = 150 && (SysVar(4) = [0,10])
Trigger1 = StateType != A
Trigger1 = StateNo != [200,499]
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H
Trigger2 = Command = "jump" && P2Dist X >= 0 || Command = "rjump" && P2Dist X < 0 || Helper(25000),Var(6) = 150 && P2Dist X >= 0 || Helper(25000),Var(6) = 130 && P2Dist X < 0
Trigger2 = StateType = A
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger3 = Command = "jump" && P2Dist X >= 0 || Command = "rjump" && P2Dist X < 0 || Helper(25000),Var(6) = 150 && P2Dist X >= 0 || Helper(25000),Var(6) = 130 && P2Dist X < 0
Trigger3 = Var(51) <= 1
Trigger3 = StateType = A
Trigger3 = Ctrl || Var(2)/100%10 = 3 && MoveType != H

;---------------------------------------------------------------------------
;ニュートラルハイジャンプ
[State -1]
Type = ChangeState
Value = 42
TriggerAll = Var(59) <= 0
TriggerAll = Var(11)%10 = 0
TriggerAll = NumHelper(25000)
Trigger1 = Command = "jump2" && (SysVar(4) = [0,10]) || Helper(25000),Var(6) = 140 && (SysVar(4) = [0,10])
Trigger1 = StateType != A
Trigger1 = StateNo != [200,499]
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H

;---------------------------------------------------------------------------
;ジャンプ
[State -1]
Type = ChangeState
Value = 40
TriggerAll = Var(59) <= 0
TriggerAll = StateType != A
TriggerAll = Command = "holdup"
Trigger1 = Ctrl
Trigger2 = Var(10) = 0
Trigger2 = Var(2)/100 = 14 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 3 && (StateNo = [900,901]) || Var(2)/100%10 = 3 && (StateNo = [910,911]) || Var(2)/100%10 = 2 && StateNo = 905
Trigger3 = Var(10) = 0
Trigger3 = Var(2)/1000 = 1 && (StateNo = [200,209]) || Var(2)/1000 = 1 && (StateNo = [400,409])
Trigger4 = Var(10) = 0
Trigger4 = Var(2)/100 = 11 && StateNo = 1310 || Var(2)/100 = 11 && StateNo = 1360 || Var(2)/100 = 11 && StateNo = 2310

;---------------------------------------------------------------------------
;２段ジャンプ
[State -1]
Type = ChangeState
Value = 45
TriggerAll = Var(59) <= 0
TriggerAll = StateType = A
TriggerAll = Command = "holdup"
TriggerAll = Var(51) <= 1
TriggerAll = Var(11)%10 = [0,0+IfElse(Var(57)%10=4,3,0)]
Trigger1 = StateNo = 50 || StateNo = 51 || StateNo = 110 || StateNo = 115 || StateNo = 120 || StateNo = 132 || StateNo = 140 || StateNo = 155 || StateNo = 840 || StateNo = 1202 || StateNo = 1212 || StateNo = 1620 || StateNo = 1750 || StateNo = 1760
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger3 = StateNo = 5040 || StateNo = 5210
Trigger3 = Ctrl

;---------------------------------------------------------------------------
;Cダッシュ
[State -1]
Type = ChangeState
Value = 100
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 != 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "FF" || Command = "holdfwd" && Command = "ab" && Command != "holddown" && Command != "holdup" || Command = "holdfwd" && Command = "y" && Command != "holddown" && Command != "holdup" || Helper(25000),Var(6) = 100
TriggerAll = StateType != A
Trigger1 = Ctrl

;---------------------------------------------------------------------------
;Fダッシュ
[State -1]
Type = ChangeState
Value = 102
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "FF" || Command = "holdfwd" && Command = "ab" && Command != "holddown" && Command != "holdup" || Command = "holdfwd" && Command = "y" && Command != "holddown" && Command != "holdup" || Helper(25000),Var(6) = 100
TriggerAll = StateType != A
Trigger1 = Ctrl

;---------------------------------------------------------------------------
;バックステップ
[State -1]
Type = ChangeState
Value = 105
TriggerAll = Var(59) <= 0
TriggerAll = StateType != A
TriggerAll = NumHelper(25000)
TriggerAll = Command = "BB" || Command = "holdback" && Command = "ab" && Command != "holddown" && Command != "holdup" || Command = "holdback" && Command = "y" && Command != "holddown" && Command != "holdup" || Helper(25000),Var(6) = 110
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 5 && MoveType != H

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1]
Type = ChangeState
Value = 110
TriggerAll = Var(59) <= 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "FF" || Command = "holdfwd" && Command = "ab" && Command != "holddown" && Command != "holdup" || Command = "holdfwd" && Command = "y" && Command != "holddown" && Command != "holdup" || Helper(25000),Var(6) = 100
TriggerAll = Var(11)/10%10 = [0,0+IfElse(Var(57)%10=4,2,0)]
TriggerAll = Pos Y < -35.75 && Var(57)%10 != 4 || Var(57)%10 = 4
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(57)%10 != 3
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger3 = Var(57)%10 = 3
Trigger3 = Var(2)/100%10 >= 3 && MoveType != H
Trigger3 = StateNo != [610,699]

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1]
Type = ChangeState
Value = 115
TriggerAll = Var(59) <= 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "BB" || Command = "holdback" && Command = "ab" && Command != "holddown" && Command != "holdup" || Command = "holdback" && Command = "y" && Command != "holddown" && Command != "holdup" || Helper(25000),Var(6) = 110
TriggerAll = Var(11)/10%10 = [0,0+IfElse(Var(57)%10=4,2,0)]
TriggerAll = Pos Y < -35.75 && Var(57)%10 != 4 || Var(57)%10 = 4
TriggerAll = StateType = A
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H && StateNo != 760 && StateNo != [920,929]

;---------------------------------------------------------------------------
;避け
[State -1]
Type = ChangeState
Value = 750
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)%10 != 3 && Var(57)%10 != 5
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command != "holdfwd" && Command != "holdback" || (Helper(25000),Var(6) = [4,5]) && Helper(25000),Var(7) = 2 || Helper(25000),Var(6) = 8 && Helper(25000),Var(7) = 2
TriggerAll = Command = "ab" || Command = "x" || Command = "y" || (Helper(25000),Var(6) = [4,5]) && Helper(25000),Var(7) = 2 || Helper(25000),Var(6) = 8 && Helper(25000),Var(7) = 2
TriggerAll = StateType != A
Trigger1 = Ctrl || Var(2)/100%10 = 3 && MoveType != H && (StateNo != [200,209]) && (StateNo != [400,409]) && (StateNo != [900,919]) || Var(2)/100%10 = 5 && MoveType != H

;---------------------------------------------------------------------------
;空中避け
[State -1]
Type = ChangeState
Value = 760
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)%10 != 3 && Var(57)%10 != 5
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command != "holdfwd" && Command != "holdback" || (Helper(25000),Var(6) = [4,5]) && Helper(25000),Var(7) = 2 || Helper(25000),Var(6) = 8 && Helper(25000),Var(7) = 2
TriggerAll = Command = "ab" || Command = "x" || Command = "y" || (Helper(25000),Var(6) = [4,5]) && Helper(25000),Var(7) = 2 || Helper(25000),Var(6) = 8 && Helper(25000),Var(7) = 2
TriggerAll = StateType = A
TriggerAll = StateNo != 760
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H
Trigger2 = FVar(29) >= 500 || Var(13) = [1,5]
Trigger2 = Var(2)/100%10 >= 3
Trigger2 = StateNo = [600,699]
Trigger3 = Var(2)/100%10 >= 2
Trigger3 = StateNo = [900,929]

;---------------------------------------------------------------------------
;投げ
[State -1]
Type = ChangeState
Value = 800
TriggerAll = Var(59) <= 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holdfwd" || Command = "holdback" || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [4,6]) || Helper(25000),Var(6) = 10 && (Helper(25000),Var(7) = [4,6])
TriggerAll = Command = "az" || Command = "x" && Command != "holddown" || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [4,6]) || Helper(25000),Var(6) = 10 && (Helper(25000),Var(7) = [4,6])
TriggerAll = StateType != A
Trigger1 = Ctrl || Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H

;---------------------------------------------------------------------------
;空中投げ
[State -1]
Type = ChangeState
Value = 820
TriggerAll = Var(59) <= 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holdfwd" || Command = "holdback" || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [4,6]) || Helper(25000),Var(6) = 10 && (Helper(25000),Var(7) = [4,6])
TriggerAll = Command = "az" || Command = "x" && Command != "holddown" || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [4,6]) || Helper(25000),Var(6) = 10 && (Helper(25000),Var(7) = [4,6])
TriggerAll = Statetype = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H
Trigger3 = Var(2)/100 = 14 && MoveType != H

;---------------------------------------------------------------------------
;ゲージ溜め
[State -1]
Type = ChangeState
Value = 850
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)%10 = 3
TriggerAll = Var(13) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "abc" || Command = "x" && Command != "holddown" && Command != "holdfwd" && Command != "holdback" || Helper(25000),Var(6) = 9 || Helper(25000),Var(6) = 4 && Helper(25000),Var(7) = 0
TriggerAll = StateType != A
TriggerAll = FVar(29) <= 3000
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H
Trigger2 = (StateNo != [900,903]) && (StateNo != [910,913])
Trigger2 = Var(2)/100%10 = 3 && MoveType != H

;---------------------------------------------------------------------------
;イニシアティブヒート
[State -1]
Type = ChangeState
Value = 950
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)%10 = 3
TriggerAll = Var(13) = 1 || Var(13) = 5
TriggerAll = Command = "abc" || Command = "x" && Command != "holddown" && Command != "holdfwd" && Command != "holdback"
TriggerAll = StateNo != 950
Trigger1 = (StateNo != [200,209]) && (StateNo != [400,409]) && (StateNo != [600,609])
Trigger1 = Var(2)/100%10 >= 1 && MoveType = A
Trigger2 = (StateNo = [200,209]) || (StateNo = [400,409]) || (StateNo = [600,609])
Trigger2 = Var(2)/100%10 >= 4
Trigger3 = (StateNo = [900,903]) || (StateNo = [910,913]) || (StateNo = [920,923])
Trigger3 = Var(2)/100%10 >= 1
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;強制開放
[State -1]
Type = ChangeState
Value = 960
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)%10 != 2
TriggerAll = NumHelper(25000)
TriggerAll = Command = "abc" || Command = "x" && Command != "holddown" && Command != "holdfwd" && Command != "holdback" || Helper(25000),Var(6) = 9 || Helper(25000),Var(6) = 4 && Helper(25000),Var(7) = 0
TriggerAll = StateType != A
TriggerAll = Ctrl || Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H
Trigger1 = Var(13) = 1 || Var(13) = 5
Trigger2 = Var(57)%10 = 1 || Var(57)%10 = 4
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0

;---------------------------------------------------------------------------
;空中強制開放
[State -1]
Type = ChangeState
Value = 970
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "abc" || Command = "x" && Command != "holddown" && Command != "holdfwd" && Command != "holdback" || Helper(25000),Var(6) = 9 || Helper(25000),Var(6) = 4 && Helper(25000),Var(7) = 0
TriggerAll = StateType = A
TriggerAll = Ctrl || Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100 = 14 && MoveType != H
Trigger1 = Var(13) = 1 || Var(13) = 5
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0

;===========================================================================
;立ちシールド
[State -1]
Type = ChangeState
Value = 900
TriggerAll = Var(59) <= 0
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "z" || Command != "holddown" && Command = "x" || Helper(25000),Var(6) = 6 && (Helper(25000),Var(7) != [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) != [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H
Trigger3 = Var(2)/100%10 = 5 && MoveType != H
Trigger4 = Var(2)/100%10 = 2 && StateNo != 905 && StateNo != 915 && StateNo != 925 && StateNo = [900,929]
Trigger5 = Var(2)/100%10 = 2 && StateNo = 1301

;---------------------------------------------------------------------------
;しゃがみシールド
[State -1]
Type = ChangeState
value = 910
TriggerAll = Var(59) <= 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "z" || Command = "holddown" && Command = "x" || Helper(25000),Var(6) = 6 && (Helper(25000),Var(7) = [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H
Trigger3 = Var(2)/100%10 = 5 && MoveType != H
Trigger4 = Var(2)/100%10 = 2 && StateNo != 905 && StateNo != 915 && StateNo != 925 && StateNo = [900,929]
Trigger5 = Var(2)/100%10 = 2 && StateNo = 1301

;---------------------------------------------------------------------------
;空中シールド
[State -1]
Type = ChangeState
Value = 920
TriggerAll = Var(59) <= 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "z" || Command = "x" || Helper(25000),Var(6) = 6 || Helper(25000),Var(6) = 4
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H
Trigger3 = Var(2)/100%10 = 5 && MoveType != H
Trigger4 = Var(2)/100%10 = 2 && StateNo != 905 && StateNo != 915 && StateNo != 925 && StateNo = [900,929]

;---------------------------------------------------------------------------
;H6A
[State -1]
Type = ChangeState
Value = 230
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 2
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "holdfwd" && Command = "a" || Command != "holddown" && Command = "holdfwd" && Command = "x" || Helper(25000),Var(6) = 1 && Helper(25000),Var(7) = 6 || Helper(25000),Var(6) = 4 && Helper(25000),Var(7) = 6
TriggerAll = StateType != A
Trigger1 = StateNo = 200
Trigger1 = Time = [4,14]

;---------------------------------------------------------------------------
;H6A2
[State -1]
Type = ChangeState
Value = 231
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 2
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "holdfwd" && Command = "a" || Command != "holddown" && Command = "holdfwd" && Command = "x" || Helper(25000),Var(6) = 1 && Helper(25000),Var(7) = 6 || Helper(25000),Var(6) = 4 && Helper(25000),Var(7) = 6
TriggerAll = StateType != A
Trigger1 = StateNo = 230
Trigger1 = Time = [8,20]

;---------------------------------------------------------------------------
;C5A
[State -1]
Type = ChangeState
Value = 200
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 != [3,4]
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "a" || Command != "holddown" && Command = "x" || Helper(25000),Var(6) = 1 && (Helper(25000),Var(7) != [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) != [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 1
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(20)%10 = 0
Trigger3 = StateNo = [200,209]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = (StateNo = [200,209]) || (StateNo = [400,409])
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;F5A
[State -1]
Type = ChangeState
Value = 201
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "a" || Command != "holddown" && Command = "x" || Helper(25000),Var(6) = 1 && (Helper(25000),Var(7) != [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) != [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 1
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(20)%10 = 0
Trigger3 = StateNo = [200,209]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = (StateNo = [200,209]) || (StateNo = [400,409])
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;E5A
[State -1]
Type = ChangeState
Value = 202
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "a" || Command != "holddown" && Command = "x" || Helper(25000),Var(6) = 1 && (Helper(25000),Var(7) != [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) != [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 1
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(20)%10 = 0
Trigger3 = StateNo = [200,209]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = (StateNo = [200,209]) || (StateNo = [400,409])
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;C5B
[State -1]
Type = ChangeState
Value = 210
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 1
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command != "holdback" && Command = "b" || Helper(25000),Var(6) = 2 && (Helper(25000),Var(7) != [1,4])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 2
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(21)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,209]) || StateNo = 230 || (StateNo = [400,409])
Trigger3 = Var(21)%10 = 0

;---------------------------------------------------------------------------
;H5B
[State -1]
Type = ChangeState
Value = 211
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 2
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command != "holdback" && Command = "b" || Helper(25000),Var(6) = 2 && (Helper(25000),Var(7) != [1,4])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 2
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(21)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,209]) || StateNo = 230 || (StateNo = [400,409])
Trigger3 = Var(21)%10 = 0

;---------------------------------------------------------------------------
;F5B
[State -1]
Type = ChangeState
Value = 212
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command != "holdfwd" && Command != "holdback" && Command = "b" || Helper(25000),Var(6) = 2 && (Helper(25000),Var(7) != [1,6])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 2
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(21)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,209]) || StateNo = 230 || (StateNo = [400,409])
Trigger3 = Var(21)%10 = 0

;---------------------------------------------------------------------------
;E5B
[State -1]
Type = ChangeState
Value = 213
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command != "holdback" && Command = "b" || Helper(25000),Var(6) = 2 && (Helper(25000),Var(7) != [1,4])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 2
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(21)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,209]) || StateNo = 230 || (StateNo = [400,409])
Trigger3 = Var(21)%10 = 0

;---------------------------------------------------------------------------
;C5C
[State -1]
Type = ChangeState
Value = 220
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 != 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "c" || Helper(25000),Var(6) = 3 && (Helper(25000),Var(7) != [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(22)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || (StateNo = [230,259]) || (StateNo = [400,419])
Trigger3 = Var(22)%10 = 0

;---------------------------------------------------------------------------
;E5C
[State -1]
Type = ChangeState
Value = 221
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "c" || Helper(25000),Var(6) = 3 && (Helper(25000),Var(7) != [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(22)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || (StateNo = [230,259]) || (StateNo = [400,419])
Trigger3 = Var(22)%10 = 0

;---------------------------------------------------------------------------
;C4B
[State -1]
Type = ChangeState
Value = 240
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 1
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holdback" && Command != "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && Helper(25000),Var(7) = 4
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(23)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || StateNo = 230 || (StateNo = [400,419])
Trigger3 = Var(23)%10 = 0

;---------------------------------------------------------------------------
;H4B
[State -1]
Type = ChangeState
Value = 242
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = [2,3]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holdback" && Command != "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && Helper(25000),Var(7) = 4
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(23)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || StateNo = 230 || (StateNo = [400,419])
Trigger3 = Var(23)%10 = 0

;---------------------------------------------------------------------------
;E4B
[State -1]
Type = ChangeState
Value = 243
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holdback" && Command != "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && Helper(25000),Var(7) = 4
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(23)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || StateNo = 230 || (StateNo = [400,419])
Trigger3 = Var(23)%10 = 0

;---------------------------------------------------------------------------
;F6B
[State -1]
Type = ChangeState
Value = 250
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holdfwd" && Command != "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && Helper(25000),Var(7) = 6
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(23)/100%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || StateNo = 230 || (StateNo = [400,419])
Trigger3 = Var(23)/100%10 = 0

;---------------------------------------------------------------------------
;C2A
[State -1]
Type = ChangeState
Value = 400
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "a" || Command = "holddown" && Command = "x" || Helper(25000),Var(6) = 1 && (Helper(25000),Var(7) = [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [1,3])
TriggerAll = Statetype != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 1
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(20)/10%10 = 0
Trigger3 = StateNo = [400,409]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = (StateNo = [200,209]) || (StateNo = [400,409])
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;F2A
[State -1]
Type = ChangeState
Value = 401
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "a" || Command = "holddown" && Command = "x" || Helper(25000),Var(6) = 1 && (Helper(25000),Var(7) = [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [1,3])
TriggerAll = Statetype != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 1
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(20)/10%10 = 0
Trigger3 = StateNo = [400,409]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = (StateNo = [200,209]) || (StateNo = [400,409])
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;E2A
[State -1]
Type = ChangeState
Value = 402
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "a" || Command = "holddown" && Command = "x" || Helper(25000),Var(6) = 1 && (Helper(25000),Var(7) = [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [1,3])
TriggerAll = Statetype != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 1
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(20)/10%10 = 0
Trigger3 = StateNo = [400,409]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = (StateNo = [200,209]) || (StateNo = [400,409])
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;C2B
[State -1]
Type = ChangeState
Value = 410
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 != [3,4]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && (Helper(25000),Var(7) = [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 2
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(21)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || StateNo = 230 || (StateNo = [400,409])
Trigger3 = Var(21)/10%10 = 0

;---------------------------------------------------------------------------
;F2B
[State -1]
Type = ChangeState
Value = 411
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && (Helper(25000),Var(7) = [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 2
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(21)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || StateNo = 230 || (StateNo = [400,409])
Trigger3 = Var(21)/10%10 = 0

;---------------------------------------------------------------------------
;E2B
[State -1]
Type = ChangeState
Value = 412
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && (Helper(25000),Var(7) = [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 2
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(21)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || StateNo = 230 || (StateNo = [400,409])
Trigger3 = Var(21)/10%10 = 0

;---------------------------------------------------------------------------
;C2C
[State -1]
Type = ChangeState
Value = 420
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 != 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holdfwd" && Command = "holddown" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) = [1,2]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(22)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || (StateNo = [230,259]) || (StateNo = [400,419])
Trigger3 = Var(22)/10%10 = 0

;---------------------------------------------------------------------------
;E2C
[State -1]
Type = ChangeState
Value = 423
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holdfwd" && Command = "holddown" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) = [1,2]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(22)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || (StateNo = [230,259]) || (StateNo = [400,419])
Trigger3 = Var(22)/10%10 = 0

;---------------------------------------------------------------------------
;3C
[State -1]
Type = ChangeState
Value = 430
TriggerAll = Var(59) <= 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holdfwd" && Command = "holddown" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) = 3
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(23)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,229]) || (StateNo = [230,259]) || (StateNo = [400,429])
Trigger3 = Var(23)/10%10 = 0

;---------------------------------------------------------------------------
;CJA
[State -1]
Type = ChangeState
Value = 600
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 != 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "a" || Command = "x" || Helper(25000),Var(6) = 1 || Helper(25000),Var(6) = 4
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(20)/100 = 0
Trigger3 = StateNo = [600,609]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = StateNo = [600,609]
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;EJA
[State -1]
Type = ChangeState
Value = 601
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "a" || Command = "x" || Helper(25000),Var(6) = 1 || Helper(25000),Var(6) = 4
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(20)/100 = 0
Trigger3 = StateNo = [600,609]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = StateNo = [600,609]
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;CJB
[State -1]
Type = ChangeState
Value = 610
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 != 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "b" || Helper(25000),Var(6) = 2
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(21)/100 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = StateNo = [600,609]
Trigger3 = Var(21)/100 = 0

;---------------------------------------------------------------------------
;EJB
[State -1]
Type = ChangeState
Value = 611
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "b" || Helper(25000),Var(6) = 2
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(21)/100 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = StateNo = [600,609]
Trigger3 = Var(21)/100 = 0

;---------------------------------------------------------------------------
;CJC
[State -1]
Type = ChangeState
Value = 620
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 != 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "c" || Command = "holddown" && Command = "holdfwd" && Command = "c" || Command = "holddown" && Command = "holdback" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) != 2
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(22)/100 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = StateNo = [600,619]
Trigger3 = Var(22)/100 = 0

;---------------------------------------------------------------------------
;EJC
[State -1]
Type = ChangeState
Value = 621
TriggerAll = Var(59) <= 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "c" || Command = "holddown" && Command = "holdfwd" && Command = "c" || Command = "holddown" && Command = "holdback" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) != 2
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger2 = Var(22)/100 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = StateNo = [600,619]
Trigger3 = Var(22)/100 = 0

;---------------------------------------------------------------------------
;J2C
[State -1]
Type = ChangeState
Value = 630
TriggerAll = Var(59) <= 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command != "holdfwd" && Command != "holdback" &&  Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) = 2
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = StateNo = [600,629]

;---------------------------------------------------------------------------
;挑発
[State -1]
Type = ChangeState
Value = 195
TriggerAll = Var(59) <= 0
TriggerAll = RoundState = [2,3]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "start" || Helper(25000),Var(6) = 7
Trigger1 = StateType != A
Trigger1 = Ctrl || (Var(2)/100%10 = [4,5]) && MoveType != H

;---------------------------------------------------------------------------
;猫歩き
[State -1]
Type = ChangeState
Value = 30
TriggerAll = Var(59) <= 0
TriggerAll = Command = "holddown"
TriggerAll = Command != "a" || Command != "b" || Command != "c" || Command != "x" || Command != "y" || Command != "z"
TriggerAll = StateType != A
TriggerAll = Anim != 6
Trigger1 = Command = "holdfwd"
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H || Var(57)%10 = 4 && Var(2)/100%10 = 3 && MoveType != H

;---------------------------------------------------------------------------
;ガード
[State -1]
Type = ChangeState
Value = 120
TriggerAll = Var(59) <= 0
TriggerAll = Command = "holdback"
TriggerAll = InGuardDist
TriggerAll = StateNo != 760
TriggerAll = StateNo != [920,923]
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H
