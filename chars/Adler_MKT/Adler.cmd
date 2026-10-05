;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部
[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃
;------------------------------------------------------------------------------
; 例えば「本来Ｘボタンで出す弱パンチをＢボタンに変えたい場合」なら、
;
; x = b
;
; で簡単に出来る。使わないボタンを使っているボタンに割り当てる事も可能。
;------------------------------------------------------------------------------

;-| デフォルト設定 |----------------------------------------------------------- 第２部

[Defaults]
command.time = 20
command.buffer.time = 3

;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "A+B+C"
command = x+y+z
time = 12

[Command]
name = "A+B+C"
command = c
time = 12

[Command]
name = "28B+C"
command = ~25$D, $U, y+z

[Command]
name = "28B+C"
command = ~25$D, $U, b

[Command]
name = "46B+C"
command = ~30$B, F, y+z

[Command]
name = "46B+C"
command = ~30$B, F, b

[Command]
name = "236B+C"
command = ~D, DF, F, y+z

[Command]
name = "236B+C"
command = ~D, DF, F, b

[Command]
name = "214B+C"
command = ~D, DB, B, y+z

[Command]
name = "214B+C"
command = ~D, DB, B, b

[Command]
name = "22B+C"
command = ~D, D, y+z
time = 15

[Command]
name = "22B+C"
command = ~D, D, b
time = 15

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "28A"
command = ~30$D, $U, x

[Command]
name = "28B"
command = ~30$D, $U, y

[Command]
name = "28C"
command = ~30$D, $U, z

[Command]
name = "46A"
command = ~30$B, F, x

[Command]
name = "46B"
command = ~30$B, F, y

[Command]
name = "46C"
command = ~30$B, F, z

[Command]
name = "236A"
command = ~D, DF, F, x

[Command]
name = "236B"
command = ~D, DF, F, y

[Command]
name = "236C"
command = ~D, DF, F, z

[Command]
name = "214A"
command = ~D, DB, B, x

[Command]
name = "214B"
command = ~D, DB, B, y

[Command]
name = "214C"
command = ~D, DB, B, z

[Command]
name = "22A"
command = ~D, D, x
time = 15

[Command]
name = "22B"
command = ~D, D, y
time = 15

[Command]
name = "22C"
command = ~D, D, z
time = 15

;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = y+z
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = x+z
time = 1

[Command]
name = "x+y"
command = x+y
time = 1

[Command]
name = "y+z"
command = y+z
time = 1

[Command]
name = "x+y+z"
command = x+y+z
time = 1

[Command]
name = "x+y"
command = a
time = 1

[Command]
name = "y+z"
command = b
time = 1

[Command]
name = "x+y+z"
command = c
time = 1

[Command]
name = "x+z"
command = x+z
time = 1

;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン単発 |---------------------------------------------------------------

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


;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

;============================================================================== 第４部
; ステートエントリーパート
;==============================================================================
[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; 超必殺技
;==============================================================================

[State -1, 最終特攻]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = power >= 3000
triggerall = command = "A+B+C"
triggerall = var(50) = 0
triggerall = NumHelper(3050) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [200,210]) || (stateno = [400,410]) || (stateno = 211) || (stateno = 221) || (stateno = 903) || (stateno = 913) || (stateno = [1000,1020]) || (stateno = [1100,1120]) || (stateno = [1200,1220])

[State -1, 特攻]
type = ChangeState
value = 2000
triggerall = !var(59)
triggerall = power >= 1000
triggerall = command = "236B+C"
triggerall = var(50) = 0
triggerall = NumHelper(2050) < 3
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [200,210]) || (stateno = [400,410]) || (stateno = 211) || (stateno = 221) || (stateno = 903) || (stateno = 913) || (stateno = [1000,1020]) || (stateno = [1100,1120]) || (stateno = [1200,1220])

[State -1, 特攻]
type = ChangeState
value = 2010
triggerall = !var(59)
triggerall = power >= 1000
triggerall = command = "236B+C"
triggerall = var(50) = 0
triggerall = NumHelper(2050) < 3
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [600,610]) || (stateno = 923) || (stateno = [1050,1070]) || (stateno = [1100,1120]) 

[State -1, 特攻]
type = ChangeState
value = 2100
triggerall = !var(59)
triggerall = power >= 1000
triggerall = command = "214B+C"
triggerall = statetype != A
triggerall = var(50) = 0
trigger1 = ctrl || stateno = 40
trigger2 = var(1) = 1
trigger2 = (stateno = [200,210]) || (stateno = [400,410]) || (stateno = 211) || (stateno = 221) || (stateno = 903) || (stateno = 913) || (stateno = [1000,1020]) || (stateno = [1100,1120]) || (stateno = [1200,1220])

[State -1, 特攻]
type = ChangeState
value = 2200
triggerall = !var(59)
triggerall = power >= 1000
triggerall = command = "22B+C"
triggerall = var(50) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [200,210]) || (stateno = [400,410]) || (stateno = 211) || (stateno = 221) || (stateno = 903) || (stateno = 913) || (stateno = [1000,1020]) || (stateno = [1100,1120]) || (stateno = [1200,1220])

;------------------------------------------------------------------------------
;必殺技
;------------------------------------------------------------------------------

[State -1, 236A]
type = ChangeState
triggerall = !var(59)
triggerall = command = "236A"
triggerall = var(50) = 0
triggerall = statetype != A
triggerall = var(6) = 0
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [200,211]) || (stateno = [400,410]) || (stateno = 221) || (stateno = 711) || (stateno = 903) || (stateno = 913)
value = 1000

[State -1, 236B]
type = ChangeState
triggerall = !var(59)
triggerall = command = "236B"
triggerall = var(50) = 0
triggerall = statetype != A
triggerall = var(6) = 0
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [200,211]) || (stateno = [400,410]) || (stateno = 221) || (stateno = 711) || (stateno = 903) || (stateno = 913)
value = 1010

[State -1, 236C]
type = ChangeState
triggerall = !var(59)
triggerall = command = "236C"
triggerall = var(50) = 0
triggerall = statetype != A
triggerall = var(6) = 0
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [200,211]) || (stateno = [400,410]) || (stateno = 221) || (stateno = 711) || (stateno = 903) || (stateno = 913)
value = 1020

[State -1, 236A-Air]
type = ChangeState
triggerall = !var(59)
triggerall = command = "236A"
triggerall = var(50) = 0
triggerall = statetype = A
triggerall = var(7) = 0
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [600,610]) || (stateno = 923)
value = 1050

[State -1, 236B-Air]
type = ChangeState
triggerall = !var(59)
triggerall = command = "236B"
triggerall = var(50) = 0
triggerall = statetype = A
triggerall = var(7) = 0
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [600,610]) || (stateno = 923)
value = 1060

[State -1, 236C-Air]
type = ChangeState
triggerall = !var(59)
triggerall = command = "236C"
triggerall = var(50) = 0
triggerall = statetype = A
triggerall = var(7) = 0
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [600,610]) || (stateno = 923)
value = 1070

[State -1, 214]
type = ChangeState
triggerall = !var(59)
triggerall = command = "214A" || command = "214B" || command = "214C"
triggerall = var(50) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [200,211]) || (stateno = [400,410]) || (stateno = 221) || (stateno = 711) || (stateno = 903) || (stateno = 913)
value = 1100

[State -1, 22A]
type = ChangeState
triggerall = !var(59)
triggerall = statetype != A
triggerall = command = "22A"
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [200,211]) || (stateno = [400,410]) || (stateno = 221) || (stateno = 711) || (stateno = 903) || (stateno = 913)
value = 1200

[State -1, 22B]
type = ChangeState
triggerall = !var(59)
triggerall = statetype != A
triggerall = command = "22B"
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [200,211]) || (stateno = [400,410]) || (stateno = 221) || (stateno = 711) || (stateno = 903) || (stateno = 913)
value = 1210

[State -1, 22C]
type = ChangeState
triggerall = !var(59)
triggerall = statetype != A
triggerall = command = "22C"
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [200,211]) || (stateno = [400,410]) || (stateno = 221) || (stateno = 711) || (stateno = 903) || (stateno = 913)
value = 1220

;------------------------------------------------------------------------------
;必殺技-EX-
;------------------------------------------------------------------------------

[State -1, 236A-EX-]
type = ChangeState
triggerall = !var(59)
triggerall = command = "236A"
triggerall = var(50) != 0
triggerall = statetype != A
triggerall = var(6) = 0
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [205,207]) || (stateno = [215,216]) || (stateno = [405,407]) || (stateno = 415) || (stateno = 903) || (stateno = 913)
value = 1300

[State -1, 236B-EX-]
type = ChangeState
triggerall = !var(59)
triggerall = command = "236B"
triggerall = var(50) != 0
triggerall = statetype != A
triggerall = var(6) = 0
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [205,207]) || (stateno = [215,216]) || (stateno = [405,407]) || (stateno = 415) || (stateno = 903) || (stateno = 913)
value = 1310

[State -1, 236C-EX-]
type = ChangeState
triggerall = !var(59)
triggerall = command = "236C"
triggerall = var(50) != 0
triggerall = statetype != A
triggerall = var(6) = 0
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [205,207]) || (stateno = [215,216]) || (stateno = [405,407]) || (stateno = 415) || (stateno = 903) || (stateno = 913)
value = 1320

[State -1, 214A-EX-]
type = ChangeState
triggerall = !var(59)
triggerall = command = "214A"
triggerall = var(50) != 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [205,207]) || (stateno = [215,216]) || (stateno = [405,407]) || (stateno = 415) || (stateno = 903) || (stateno = 913)
value = 1400

[State -1, 214B-EX-]
type = ChangeState
triggerall = !var(59)
triggerall = command = "214B"
triggerall = var(50) != 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [205,207]) || (stateno = [215,216]) || (stateno = [405,407]) || (stateno = 415) || (stateno = 903) || (stateno = 913)
value = 1420

[State -1, 214C-EX-]
type = ChangeState
triggerall = !var(59)
triggerall = command = "214C"
triggerall = var(50) != 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [205,207]) || (stateno = [215,216]) || (stateno = [405,407]) || (stateno = 415) || (stateno = 903) || (stateno = 913)
value = 1440

;==============================================================================
; 移動関連
;==============================================================================

[State -1, ステップ]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 地上(原作版)受身]
type = ChangeState
value = 5201
triggerall = !var(59)
triggerall = Alive
triggerall = stateno = 5050 || stateno = 5071
triggerall = (Vel y > 0) && (Pos y >= 10)
triggerall = var(19) = 0
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"

[State -1, 地上(原作版)受身]
type = ChangeState
value = 5201
triggerall = !var(59)
triggerall = Alive
triggerall = stateno = 5100
triggerall = Pos y >= 0
triggerall = var(19) = 0
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"

;==============================================================================
; 特殊技
;==============================================================================

[State -1, 空中攻性防禦]
type = ChangeState
triggerall = !var(59)
triggerall = (command = "y+z")
triggerall = (StateType = A)
trigger1 = Ctrl
value = 920

[State -1, 屈攻性防禦]
type = ChangeState
triggerall = !var(59)
triggerall = (command = "y+z")
triggerall = (command = "holddown")
triggerall = (StateType != A)
triggerall = (StateType = C)
trigger1 = Ctrl
trigger2 = Var(53) != 0
trigger2 = stateno = [150,153]
trigger2 = power >= 1000
value = 910

[State -1, 地上攻性防禦]
type = ChangeState
triggerall = !var(59)
triggerall = (command = "y+z")
triggerall = (command != "holddown")
triggerall = (StateType != A)
triggerall = (StateType = S)
trigger1 = Ctrl
trigger2 = Var(53) != 0
trigger2 = stateno = [150,153]
trigger2 = power >= 1000
value = 900

[State -1, 投げ];地上投げ
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "x+y"

[State -1, 投げ];空中投げ
type = ChangeState
value = 850
triggerall = !var(59)
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "x+y"

[State -1, ヒュープシュラウバ]
type = ChangeState
value = 700
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = var(50) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [200,211]) || (stateno = [400,410]) || (stateno = 221)

[State -1, ズィヒェル]
type = ChangeState
value = 710
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = var(50) = 0
triggerall = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [200,211]) || (stateno = [400,410])

[State -1, テレポートアッパー]
type = ChangeState
value = 720
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = var(50) != 0
triggerall = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [205,207]) || (stateno = [215,216]) || (stateno = [405,407]) || (stateno = 415) || (stateno = 903) || (stateno = 913)

[State -1, ダッシュ攻撃]
type = ChangeState
value = 750
triggerall = !var(59)
triggerall = stateno = 101
triggerall = var(50) != 0
triggerall = statetype = S
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
trigger1 = command = "x" || command = "y" || command = "z"

[State -1, 原作版挑発]
type = ChangeState
value = 196
triggerall = !var(59)
triggerall = command = "x+z"
trigger1 = statetype != A
trigger1 = ctrl

;==============================================================================
; 通常技
;==============================================================================

[State -1, 立ちA]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = 200) || (stateno = 400)
trigger3 = (stateno = 200) || (stateno = 400)
trigger3 = AnimElemTime(3) >= 0
trigger3 = Var(1) = 0

[State -1, しゃがみA]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = 200) || (stateno = 400)
trigger3 = (stateno = 200) || (stateno = 400)
trigger3 = AnimElemTime(3) >= 0
trigger3 = Var(1) = 0

[State -1, 遠距離立ちB]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(50) = 0
triggerall = p2bodydist x >= 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = 200) || (stateno = 400)

[State -1, 近距離立ちB]
type = ChangeState
value = 211
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(50) = 0
triggerall = p2bodydist x < 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = 200) || (stateno = 400)

[State -1, しゃがみB]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = 200) || (stateno = 400)

[State -1, 近距離立ちC]
type = ChangeState
value = 221
triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(50) = 0
triggerall = p2bodydist x < 25
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 遠距離立ちC]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(50) = 0
triggerall = p2bodydist x >= 25
trigger1 = statetype = S
trigger1 = ctrl

[State -1, しゃがみC]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, ジャンプA]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
triggerall = var(50) = 0
triggerall = statetype = A
trigger1 = ctrl

[State -1, ジャンプB]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
triggerall = var(50) = 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = stateno = 600

[State -1, ジャンプC]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "z"
triggerall = var(50) = 0
triggerall = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;通常技-EX
;------------------------------------------------------------------------------

[State -1, 立ちA-EX-]
type = ChangeState
value = 205
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(50) != 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 立ちA2-EX-]
type = ChangeState
value = 206
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(50) != 0
trigger1 = var(1) = 1
trigger1 = (stateno = 205) || (stateno = 405)
trigger2 = (stateno = 205) || (stateno = 405)
trigger2 = AnimElemTime(3) >= 0
trigger2 = Var(1) = 0

[State -1, 立ちA3-EX-]
type = ChangeState
value = 207
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(50) != 0
trigger1 = var(1) = 1
trigger1 = (stateno = 206) || (stateno = 406)
trigger2 = (stateno = 206) || (stateno = 406)
trigger2 = AnimElemTime(3) >= 0
trigger2 = Var(1) = 0

[State -1, 立ちA4-EX-]
type = ChangeState
value = 208
triggerall = !var(59)
triggerall = command = "x"
triggerall = var(50) != 0
trigger1 = var(1) = 1
trigger1 = (stateno = 207) || (stateno = 407)

[State -1, 立ちB-EX-]
type = ChangeState
value = 215
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(50) != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = 205) || (stateno = 405)

[State -1, 立ちB2-EX-]
type = ChangeState
value = 216
triggerall = !var(59)
triggerall = command = "y"
triggerall = var(50) != 0
trigger1 = var(1) = 1
trigger1 = (stateno = 206) || (stateno = 215) || (stateno = 406)

[State -1, 立ちB3-EX-]
type = ChangeState
value = 217
triggerall = !var(59)
triggerall = command = "y"
triggerall = var(50) != 0
trigger1 = var(1) = 1
trigger1 = (stateno = 207) || (stateno = 216) || (stateno = 407) || (stateno = 415)

[State -1, 立ちC-EX-]
type = ChangeState
value = 225
triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(50) != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [205,207]) || (stateno = [215,216]) || (stateno = [405,407]) || (stateno = 415)

[State -1, 立ちC2-EX-]
type = ChangeState
value = 226
triggerall = !var(59)
triggerall = command = "z"
triggerall = var(50) != 0
trigger1 = var(1) = 1
trigger1 = (stateno = 225)

[State -1, しゃがみA-EX-]
type = ChangeState
value = 405
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(50) != 0
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみA2-EX-]
type = ChangeState
value = 406
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(50) != 0
trigger1 = var(1) = 1
trigger1 = (stateno = 205) || (stateno = 405)
trigger2 = (stateno = 205) || (stateno = 405)
trigger2 = AnimElemTime(3) >= 0
trigger2 = Var(1) = 0

[State -1, しゃがみA3-EX-]
type = ChangeState
value = 407
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(50) != 0
trigger1 = var(1) = 1
trigger1 = (stateno = 206) || (stateno = 406)
trigger2 = (stateno = 206) || (stateno = 406)
trigger2 = AnimElemTime(3) >= 0
trigger2 = Var(1) = 0

[State -1, しゃがみB-EX-]
type = ChangeState
value = 415
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(50) != 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [205,206]) || (stateno = [405,406])

[State -1, しゃがみC-EX-]
type = ChangeState
value = 425
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = var(50) != 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = (stateno = [205,207]) || (stateno = [215,216]) || (stateno = [405,407]) || (stateno = 415)

;------------------------------------------------------------------------------

[State -1, ジャンプA-EX-]
type = ChangeState
value = 605
triggerall = !var(59)
triggerall = command = "x"
triggerall = var(50) != 0
triggerall = statetype = A
trigger1 = ctrl

[State -1, ジャンプB-EX-]
type = ChangeState
value = 615
triggerall = !var(59)
triggerall = command = "y"
triggerall = var(50) != 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = stateno = 605

[State -1, ジャンプC-EX-]
type = ChangeState
value = 625
triggerall = !var(59)
triggerall = command = "z"
triggerall = var(50) != 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = stateno = 605 || stateno = 615

