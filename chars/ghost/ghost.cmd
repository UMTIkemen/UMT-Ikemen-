;〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓
;			Win版専用パート
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━| ボタンリマップ(ボタンコンフィグ) |━━━━━━━━━━━━━━━━━━
[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃



;━| デフォルト設定 |━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Defaults]
Command.time = 15	;標準のコマンド入力受付時間。
			;各コマンドで省略している場合に有効。
			;このパラメータを消した場合、デフォルトは１フレームになる。
			;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

Command.buffer.time = 1	;標準のコマンド入力記憶時間。
			;入力した直後にコマンドを記憶し、
			;指を離してもコマンドが成功している状態を
			;ここで設定した時間の分維持する。
			;１～３０フレームまでの間で設定可能。
			;デフォルトは１フレーム。






;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;			コマンド定義
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━|  < AI >  |━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Command]
name	= "AI0"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name	= "AI1"
Command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name	= "AI2"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name	= "AI3"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name	= "AI4"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name	= "AI5"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI6"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name	= "AI7"
Command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name	= "AI8"
Command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name	= "AI9"
Command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name	= "AI10"
Command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name	= "AI11"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name	= "AI12"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name	= "AI13"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name	= "AI14"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name	= "AI15"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI16"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name	= "AI17"
Command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name	= "AI18"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name	= "AI19"
Command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name	= "AI20"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name	= "AI21"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name	= "AI22"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name	= "AI23"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI24"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name	= "AI25"
Command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name	= "AI26"
Command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name	= "AI27"
Command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name	= "AI28"
Command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name	= "AI29"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name	= "AI30"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name	= "AI31"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name	= "AI32"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name	= "AI33"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI34"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name	= "AI35"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI36"
Command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI37"
Command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name	= "AI38"
Command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name	= "AI39"
Command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name	= "AI40"
Command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name	= "AI41"
Command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name	= "AI42"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI43"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name	= "AI44"
Command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name	= "AI45"
Command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name	= "AI46"
Command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name	= "AI47"
Command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI48"
Command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name	= "AI49"
Command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name	= "AI50"
Command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0	





;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━| 超必殺技 |━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;オメガドライブ
[Command]
name	= "DFDF_a"
Command = ~D, F, D, F, a
time = 20
buffer.time = 5

;ユルセーン！
[Command]
name	= "DBDB_a"
Command = ~D, B, D, B, a
time = 20
buffer.time = 5

;グレイトフルオメガドライブ
[Command]
name	= "DFDF_b"
Command = ~D, F, D, F, b
time = 20
buffer.time = 5

;ゴッドオメガドライブ
[Command]
name	= "DFDF_c"
Command = ~D, F, D, F, c
time = 20
buffer.time = 5

;∞
[Command]
name	= "Infinity"
Command = ~DB, B, UB, DF, F, UF, DB, c
time = 40
buffer.time = 10
[Command]
name	= "Infinity"
Command = ~U, c + z
time = 20
buffer.time = 5


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━|  必殺技  |━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Command]
name	= "FDDF_a"
Command = ~F, D, DF, a;   - ゴエモン魂(二段切り)  跳び蹴りからキャンセル可
time = 20

[Command]
name	= "FDDF_b"
Command = ~F, D, DF, b;   - リョウマ魂(既存の必殺技降格版)
time = 20

[Command]
name	= "BDDB_a"
Command = ~B, D, DB, a;   - ゴエモン魂(跳び蹴り案1)
time = 20

[Command]
name	= "BDDB_b"
Command = ~B, D, DB, b;   - ゴエモン魂(跳び蹴り案2)
time = 20

[Command]
name	= "BDDB_c"
Command = ~B, D, DB, c;   - ヒミコ魂
time = 20


;ロビン魂
[Command]
name	= "DF_a"
Command = D, F, a
time = 20

;エジソン魂
[Command]
name	= "DF_b"
Command = D, F, b
time = 20

;ビリー魂
[Command]
name	= "DF_c"
Command = D, F, c
time = 20

;ナギナタ
[Command]
name	= "DB_a"
Command = D, B, a
time = 20

;ムサシ魂
[Command]
name	= "DB_b"
Command = D, B, b
time = 20

;ベンケイ魂
[Command]
name	= "DB_c"
Command = D, B, c
time = 20


;ニュートン魂(引力)
[Command]
name	= "DD_a"
Command = D, D, a
time = 20

;ニュートン魂(斥力)
[Command]
name	= "DD_b"
Command = D, D, b
time = 20

;ニュートン魂(引力→斥力)
[Command]
name	= "DD_c"
Command = D, D, c
time = 20


;闘魂発動
[Command]
name	= "tokon"
Command = x
time = 20

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━| 特殊技・サブシステム |━━━━━━━━━━━━━━━━━━━━━━━━

[Command]
name	= "recovery"
Command = a+b
time = 1

[Command]
name = "AFF"	;技の名前 発動条件で使う
command	= ~F, F	;コマンド
time =	10 ;入力受付時間

[Command];ハイジャンプ
name	= "HJ"
Command = ~$D, $U
time = 8

[Command];ハイジャンプ暴発阻止
name	= "NHJ"
Command = ~12$D, $U
time = 8

[Command];ハイジャンプ暴発阻止
name	= "NHJ"
Command = /$D
time = 12 


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━| キー２回連続入力 |━━━━━━━━━━━━━━━━━━━━━━━━━━
[Command]
name	= "FF"     
Command = F, F
time = 10

[Command]
name	= "BB"     
Command = B, B
time = 10


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━| 方向キー＋ボタン |━━━━━━━━━━━━━━━━━━━━━━━━━━
[Command]
name	= "down_a"
Command = /$D,a
time = 1

[Command]
name	= "down_b"
Command = /$D,b
time = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━| ボタン単発 |━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Command]
name	= "a"
Command = a
time = 1

[Command]
name	= "b"
Command = b
time = 1

[Command]
name	= "c"
Command = c
time = 1

[Command]
name	= "x"
Command = x
time = 1

[Command]
name	= "y"
Command = y
time = 1

[Command]
name	= "z"
Command = z
time = 1

[Command]
name	= "start"
Command = s
time = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━|  押しっぱなし設定  |━━━━━━━━━━━━━━━━━━━━━━━━━
[Command]
name	= "holdfwd"
Command = /$F
time = 1

[Command]
name	= "holdback"
Command = /$B
time = 1

[Command]
name	= "holdup" 
Command = /$U
time = 1

[Command]
name	= "holddown"
Command = /$D
time = 1

[Command]
name	= "holda"
Command = /a
time = 1

[Command]
name	= "holdb"
Command = /b
time = 1

[Command]
name	= "holdc"
Command = /c
time = 1

[Command]
name	= "holdx"
Command = /x
time = 1

[Command]
name	= "holdy"
Command = /y
time = 1

[Command]
name	= "holdz"
Command = /z
time = 1

;-| Single Dir |------------------------------------------------------------
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


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;			ステートエントリーパート
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ■準常時監視ステート（－１）■
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef -1]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				一撃技
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;∞
[State -1, Hyper Arts]
type	= ChangeState
value	= 4000
triggerAll = var(45) = 1				;プロトモードのみ
triggerAll = Var(59) <= 0
triggerAll = Command = "Infinity"
triggerAll = life <= 200
triggerAll = power >= 3000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]

;
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				超必殺技
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;---プロトモード---
;グレイトフルオメガドライブ(簡易)
[State -1, Super Arts]
type	= ChangeState
value	= 3230
triggerAll = Var(59) <= 0 && var(45) = 1
triggerAll = var(40) = 2
triggerAll = Command = "DFDF_a"
triggerAll = power >= 1000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;---通常モード---
;ムゲンゴッドオメガドライブ
[State -1, Super Arts]
type	= ChangeState
value	= 3300
triggerAll = Var(59) <= 0
triggerAll = Command = "DFDF_c"
triggerAll = power >= 3000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;グレイトフルオメガドライブ
[State -1, Super Arts]
type	= ChangeState
value	= 3200
triggerAll = Var(59) <= 0
triggerAll = Command = "DFDF_b"
triggerAll = power >= 2000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;闘魂オメガドライブ
[State -1, Super Arts]
type	= ChangeState
value	= 3100
triggerAll = var(40) > 0
triggerAll = Var(59) <= 0
triggerAll = Command = "DFDF_a"
triggerAll = power >= 1000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;分かってるじゃーん
[State -1, Super Arts]
type	= ChangeState
value	= 3070
triggerAll = Var(59) <= 0
triggerAll = Command = "DBDB_a"
triggerAll = power >= 1000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;オメガドライブ
[State -1, Super Arts]
type	= ChangeState
value	= 3000
triggerAll = Var(59) <= 0
triggerAll = Command = "DFDF_a"
triggerAll = power >= 1000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				必殺技
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;---プロトモード---
;闘魂_ゴエモン魂(二段切り)
[State -1, Arts]
type	= ChangeState
value	= 1710
triggerAll = var(45) = 1
triggerAll = var(40) > 0
triggerAll = Var(59) <= 0
triggerAll = Command = "FDDF_a"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;闘魂_ゴエモン魂(跳び蹴り案1)
[State -1, Arts]
type	= ChangeState
value	= 1700
triggerAll = var(45) = 1
triggerAll = var(40) > 0
triggerAll = Var(59) <= 0
triggerAll = Command = "BDDB_a"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;闘魂_ゴエモン魂(跳び蹴り案2)
[State -1, Arts]
type	= ChangeState
value	= 1705
triggerAll = var(45) = 1
triggerAll = var(40) > 0
triggerAll = Var(59) <= 0
triggerAll = Command = "BDDB_b"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;闘魂_ヒミコ魂
[State -1, Arts]
type	= ChangeState
value	= 1800
triggerAll = var(45) = 1
triggerAll = var(40) > 0
triggerAll = Var(59) <= 0
triggerAll = Command = "BDDB_c"
triggerAll = StateType != A
trigger1 = Ctrl
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;---通常モード---
;闘魂_リョウマ魂(既存の必殺技降格版)
[State -1, Arts]
type	= ChangeState
value	= 1610
triggerAll = var(40) > 0
triggerAll = Var(59) <= 0
triggerAll = Command = "FDDF_b"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ムサシ魂
[State -1, Arts]
type	= ChangeState
value	= 1000
triggerAll = Var(59) <= 0
triggerAll = Command = "DB_b"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;エジソン魂
[State -1, Arts]
type	= ChangeState
value	= 1100
triggerAll = Var(59) <= 0
triggerAll = Command = "DF_b"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ニュートン魂
[State -1, Arts]
type	= ChangeState
value	= 1200
triggerAll = Var(59) <= 0
triggerAll = Command = "DD_b"
triggerAll = StateType != A
triggerAll = Var(14)=0
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact
trigger3 = StateNo = 1210		;「引き寄せる…吹き飛べ！」用移行
trigger3 = ProjContactTime(1211)

[State -1, Arts]
type	= ChangeState
value	= 1210
triggerAll = Var(59) <= 0
triggerAll = Command = "DD_a"
triggerAll = Power >= 500
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ビリー魂
[State -1, Arts]
type	= ChangeState
value	= 1500+var(45)*5
triggerAll = Var(59) <= 0
triggerAll = Command = "DF_c"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ロビン魂
[State -1, Arts]
type	= ChangeState
value	= 1300
triggerAll = Var(59) <= 0
triggerAll = Command = "DF_a"
triggerAll = StateType = S
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;空中ロビン魂
[State -1, Arts]
type	= ChangeState
value	= 1310
triggerAll = Var(59) <= 0
triggerAll = Command = "DF_a"
triggerAll = StateType = A
triggerAll = Pos Y <= -40
trigger1 = Ctrl
trigger2 = StateNo = [600,699]
trigger2 = MoveContact

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ベンケイ魂
[State -1, Arts]
type	= ChangeState
value	= 1405
triggerAll = Var(59) <= 0
triggerAll = Command = "DB_c"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ナギナタ
[State -1, Arts]
type	= ChangeState
value	= 1090
triggerAll = Var(59) <= 0
triggerAll = Command = "DB_a"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;闘魂発動
[State -1, Stand]
type	= ChangeState
value	= 3090
triggerAll = Var(59) <= 0
triggerAll = Command = "tokon"
triggerAll = Command != "holddown"
triggerAll = var(40) = 0
triggerAll = StateType != A
triggerall = numexplod(3190)!=0 && power >= 1000
trigger1 = Ctrl

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				特殊行動
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

; くらい抜け
[State -1]
type	= ChangeState
value	= ifelse(StateType!=A,910,915)
triggerAll = Var(59) <= 0
triggerAll = Alive
triggerAll = (Command = "b" && Command = "c")
triggerAll = Power >= 2000
trigger1 = StateNo = 5000 && time > 0
trigger2 = StateNo = 5010 && time > 0
trigger3 = StateNo = 5020 && time > 0
trigger4 = StateNo = 5070 && time > 0
trigger5 = StateNo = 5030 && time > 0
trigger6 = StateNo = 5035 && time > 0
trigger7 = StateNo = 5040 && time > 0


[State -1];ハイジャンプ
type	= ChangeState
value	= 199
triggerAll = Var(59) <= 0
trigger1 = Command = "HJ"
trigger1 = Command != "NHJ";不正入力排除
trigger1 = StateType != A
trigger1 = Ctrl 


;ダッシュ
[State -1, Run Fwd]
type	= ChangeState
value	= 100
triggerAll = Var(59) <= 0
trigger1 = Command = "FF"
trigger1 = StateType != A
trigger1 = Ctrl


;後退ダッシュ
[State -1, Run Back]
type	= ChangeState
value	= 105
triggerAll = Var(59) <= 0
trigger1 = Command = "BB"
trigger1 = StateType != A
trigger1 = Ctrl


;投げ
[State -1, Throw]
type	= ChangeState
value	= 800
triggerAll = Var(59) <= 0
triggerAll = Command = "c"
triggerAll = StateType != A
triggerAll = Ctrl
triggerAll = StateNo != 100
trigger1 = Command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (P2StateType = S) || (P2StateType = C)
trigger1 = p2movetype != H
trigger2 = Command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (P2StateType = S) || (P2StateType = C)
trigger2 = p2movetype != H


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				通常攻撃
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	立ち攻撃
;━━━━━━━━━━━━━━━━
;立ちパンチ
[State -1, Stand Punch]
type	= ChangeState
value	= 200
triggerAll = Var(59) <= 0
triggerAll = Command = "a"
triggerAll = Command != "holddown"
triggerAll = StateType != A
trigger1 = Ctrl


;立ちキック
[State -1, Stand Kick]
type	= ChangeState
value	= 210
triggerAll = Var(59) <= 0
triggerAll = Command = "b"
triggerAll = Command != "holddown"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
;trigger4 = StateNo = 220 && MoveContact


;立ち武器攻撃
[State -1, Stand Attack]
type	= ChangeState
value	= 220
TriggerAll = Var(59) <= 0 && Var(40) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 210 && MoveContact
trigger5 = StateNo = 410 && MoveContact

;立ち闘魂ブースト
[State -1, Stand Attack]
type	= ChangeState
value	= 250
triggerAll = Var(59) <= 0 && var(40) > 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerAll = StateType != A

trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 210 && MoveContact
trigger5 = StateNo = 410 && MoveContact

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	しゃがみ攻撃
;━━━━━━━━━━━━━━━━
;しゃがみパンチ
[State -1, Crouching Punch]
type	= ChangeState
value	= 400
triggerAll = Var(59) <= 0
triggerAll = Command = "a"
triggerAll = Command = "holddown"
triggerAll = StateType != A
trigger1 = Ctrl


;しゃがみキック
[State -1, Crouching Kick]
type	= ChangeState
value	= 410
triggerAll = Var(59) <= 0
triggerAll = Command = "b"
triggerAll = Command = "holddown"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 210 && MoveContact
;trigger5 = StateNo = 220 && MoveContact


;しゃがみ武器攻撃
[State -1, Crouching Attack]
type	= ChangeState
value	= 420
triggerAll = Var(59) <= 0 && Var(40) = 0
triggerAll = Command = "c"
triggerAll = Command = "holddown"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 210 && MoveContact
trigger5 = StateNo = 410 && MoveContact
trigger6 = StateNo = 220 && MoveContact


;しゃがみ闘魂ブースト
[State -1, Crouching Attack]
type	= ChangeState
value	= 450
triggerAll = Var(59) <= 0 && var(40) > 0
triggerAll = Command = "c"
triggerAll = Command = "holddown"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 210 && MoveContact
trigger5 = StateNo = 410 && MoveContact
trigger6 = StateNo = 250 && MoveContact

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	空中攻撃
;━━━━━━━━━━━━━━━━
;空中パンチ
[State -1, Jump Punch]
type	= ChangeState
value	= 600
triggerAll = Var(59) <= 0
triggerAll = Command = "a"
triggerAll = StateType = A
trigger1 = Ctrl

;空中キック
[State -1, Jump Kick]
type	= ChangeState
value	= 610
triggerAll = Var(59) <= 0
triggerAll = Command = "b"
triggerAll = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600 && MoveContact
;trigger3 = StateNo = 620 && MoveContact


;空中武器攻撃
[State -1, Jump Attack]
type	= ChangeState
value	= 620
triggerAll = Var(59) <= 0 && Var(40) = 0
triggerAll = Command = "c"
triggerAll = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600 && MoveContact
trigger3 = StateNo = 610 && MoveContact


;空中闘魂ブースト
[State -1, Jump Attack]
type	= ChangeState
value	= 650
triggerAll = Var(59) <= 0 && var(40) > 0
triggerAll = Command = "c"
triggerAll = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600 && MoveContact
trigger3 = StateNo = 610 && MoveContact
