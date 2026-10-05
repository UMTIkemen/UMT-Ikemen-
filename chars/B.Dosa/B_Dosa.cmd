
;------------------------------------------------------------------------------
;==============================================================================
; 入力キーの設定パート
;==============================================================================
;------------------------------------------------------------------------------
;-| ボタン配置 |-----------------------------------------------------
;各ボタンの配置を簡単に変更できます。
;このキャラクターのボタン配置を変えたいときなどに使います。
;x = x を x = a に変えれば、xがaに変わります。

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| 標準化 |-------------------------------------------------------
[Defaults]
; timeを記述しなかった場合、以下の値が参照されます。最小値は1です。
command.time = 15

; buffer.timeの値です。1～30まで設定できます。
; 普通は1です。
command.buffer.time = 1

;-| CPUアルゴリズム用コマンド |------------------------------
[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name = "AI50"
command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

;AMIME PUNCH
[Command]
name = "236236_xy"
command = ~D, F, D, F, x+y
time = 20

;真空 SPIN KICK
[Command]
name = "214214_a"
command = ~D, B, D, B, a
time = 20

[Command]
name = "214214_b"
command = ~D, B, D, B, b
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

;SPIN KICK
[Command]
name = "41236_a"
command = ~B, D, F, a

[Command]
name = "41236_b"
command = ~B, D, F, b

;ARC SPIN KICK
[Command]
name = "21478_a"
command = ~D, B, U, a

[Command]
name = "21478_b"
command = ~D, B, U, b

;ULTRA FIST
[Command]
name = "236_x"
command = ~D, DF, F, x

[Command]
name = "236_y"
command = ~D, DF, F, y

;EAGLE WING
[Command]
name = "214_x"
command = ~D, DB, B, x

[Command]
name = "214_y"
command = ~D, DB, B, y

;ARC SPIN KICK
[Command]
name = "646_x"
command = ~F, B, F, x

[Command]
name = "646_y"
command = ~F, B, F, y

;JUMP CUT
[Command]
name = "19_a"
command = ~30DB, UF, a

[Command]
name = "19_b"
command = ~30DB, UF, b

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------
[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+y
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a+b
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
[command]
name = "fwd"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name  ="down"
command = D
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

;------------------------------------------------------------------------------
;-| 方向キー押しっぱなし |-----------------------------------------------------
[Command]
name = "holdfwd"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1

;------------------------------------------------------------------------------
;==============================================================================
; 技を実行するための条件の設定（ステートエントリーパート）
;==============================================================================
;------------------------------------------------------------------------------
;==============================================================================
[Statedef -1];←この行は絶対に消さないでください。必須の項目です。
;==============================================================================
;------------------------------------------------------------------------------

;連続技を決める変数

[State -1, Combo Condition Reset] ;初期化
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo Condition Check] ;キャンセル可なステートナンバーを決定
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
var(1) = 1
ignorehitpause = 1

;---------------------------------------------------------------------------

;真空 SPIN KICK
[State -1, 真空 SPIN KICK]
type = ChangeState
value = 3050
triggerall = command = "214214_a" || command = "214214_b"
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)

;AMIME PUNCH
[State -1, ]
type = ChangeState
value = 3000
triggerall = command = "236236_xy"
triggerall = statetype != A
triggerall = power >= 2000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = stateno != 440
trigger1 = var(1)

;---------------------------------------------------------------------------

;ARC SPIN KICK
[State -1, ARC SPIN KICK]
type = ChangeState
value = 1250
triggerall = command = "21478_a" || command = "21478_b"
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = 40
trigger3 = statetype = A
trigger3 = ctrl
trigger4 = stateno = [600,699]

;---------------------------------------------------------------------------

;HEAD TOP STRIKE
[State -1, HEAD TOP STRIKE]
type = ChangeState
value = 1200
triggerall = command = "646_x" || command = "646_y"
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)

;------------------------------------------------------------------------------

;EAGLE WING
[State -1, EAGLE WING]
type = ChangeState
value = 1150
triggerall = command = "214_x" || command = "214_y"
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)

;------------------------------------------------------------------------------

;JUMP CUT
[State -1, JUMP CUT]
type = ChangeState
value = 1100
triggerall = command = "19_a" || command = "19_b"
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = 40

;------------------------------------------------------------------------------

;SPIN KICK
[State -1, SPIN KICK]
type = ChangeState
value = 1050
triggerall = command = "41236_a" || command = "41236_b"
triggerall = var(59) = 0
; Original cancel condition
trigger1 = movetype != H
trigger1 = var(1)
; Cancel from crouching kick on contact
trigger2 = stateno = 430
trigger2 = movecontact

;------------------------------------------------------------------------------

;ULTRA FIST
[State -1, ULTRA FIST]
type = ChangeState
value = 1000
triggerall = command = "236_x" || command = "236_y"
triggerall = numhelper(1000) = 0
triggerall = numhelper(1010) = 0
triggerall = numhelper(3000) = 0
triggerall = numhelper(3010) = 0
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)

;==============================================================================

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------

;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2movetype != H
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = ctrl
triggerall = var(59) = 0
trigger1 = p2bodydist X = [-30,30]

;==============================================================================

;立ち弱パンチ(遠)
[State -1, Stand Punch x]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X > 10
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = time > 7

;立ち弱パンチ(近)
[State -1, Stand Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X <= 10
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = time > 7

;立ち強パンチ
[State -1, Stand Punch y]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact

;------------------------------------------------------------------------------

;立ち弱キック(遠)
[State -1, Stand Kick a]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X > 10
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = time > 7
trigger3 = stateno = 200
trigger3 = time > 7
trigger4 = stateno = 235
trigger4 = time > 8

;立ち弱キック(近)
[State -1, Stand Kick a]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X <= 10
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = time > 7
trigger3 = stateno = 235
trigger3 = time > 8

;立ち強キック(遠)
[State -1, Stand Kick b]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X > 20
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 235
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact

;立ち強キック(近)
[State -1, Stand Kick b]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X <= 20
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 235
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact

;------------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(59) = 0
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

;しゃがみ弱パンチ
[State -1, Crouching Punch x]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl

;しゃがみ強パンチ
[State -1, Crouching Punch y]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------

;しゃがみ弱キック
[State -1, Crouching Kick a]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(59) = 0
; Normal use from crouch
trigger1 = statetype = C
trigger1 = ctrl
; Self-chain
trigger2 = stateno = 430
trigger2 = time > 9
; Cancel from State 400 ONLY on contact
trigger3 = stateno = 400
trigger3 = movecontact


;しゃがみ強キック
[State -1, Crouching Kick b]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact

;------------------------------------------------------------------------------

;空中弱パンチ
[State -1, Jump Punch x]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl

;空中強パンチ(neutral)
[State -1, Jump Punch y]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = vel x = 0
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl

;空中強パンチ(in move)
[State -1, Jump Punch y]
type = ChangeState
value = 615
triggerall = command = "y"
triggerall = vel x != 0
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------

;空中弱キック(neutral)
[State -1, Jump Kick a1]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = vel x = 0
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl

;空中弱キック(in move)
[State -1, Jump Kick a2]
type = ChangeState
value = 635
triggerall = command = "a"
triggerall = vel x != 0
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl

;空中強キック(neutral)
[State -1, Jump Kick b]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = vel x = 0
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl

;空中強キック(in move)
[State -1, Jump Kick b]
type = ChangeState
value = 645
triggerall = command = "b"
triggerall = vel x != 0
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl


;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------



