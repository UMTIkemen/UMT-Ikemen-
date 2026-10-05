

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
command.buffer.time = 0


;------------------------------------------------------------------------------
;-| AI起動用 |-----------------------------------------------------------------

[Command]
Name = "AI01"
Command = a, b, c
Time = 0
[Command]
Name = "AI02"
Command = a, c, b
Time = 0
[Command]
Name = "AI03"
Command = b, a, c
Time = 0
[Command]
Name = "AI04"
Command = b, c, a
Time = 0
[Command]
Name = "AI05"
Command = c, a, b
Time = 0
[Command]
Name = "AI06"
Command = c, b, a
Time = 0
[Command]
Name = "AI07"
Command = a, b, c, s
Time = 0
[Command]
Name = "AI08"
Command = a, c, b, s
Time = 0
[Command]
Name = "AI09"
Command = b, a, c, s
Time = 0
[Command]
Name = "AI10"
Command = b, c, a, s
Time = 0
[Command]
Name = "AI11"
Command = c, a, b, s
Time = 0
[Command]
Name = "AI12"
Command = c, b, a, s
Time = 0
[Command]
Name = "AI13"
Command = x, y, z
Time = 0
[Command]
Name = "AI14"
Command = x, z, y
Time = 0
[Command]
Name = "AI15"
Command = y, x, z
Time = 0
[Command]
Name = "AI16"
Command = y, z, x
Time = 0
[Command]
Name = "AI17"
Command = z, x, y
Time = 0
[Command]
Name = "AI18"
Command = z, y, x
Time = 0
[Command]
Name = "AI19"
Command = x, y, z, s
Time = 0
[Command]
Name = "AI20"
Command = x, z, y, s
Time = 0
[Command]
Name = "AI21"
Command = y, x, z, s
Time = 0
[Command]
Name = "AI22"
Command = y, z, x, s
Time = 0
[Command]
Name = "AI23"
Command = z, x, y, s
Time = 0
[Command]
Name = "AI24"
Command = z, y, x, s
Time = 0
[Command]
Name = "AI25"
Command = a, b, c, x
Time = 0
[Command]
Name = "AI26"
Command = a, c, b, x
Time = 0
[Command]
Name = "AI27"
Command = b, a, c, x
Time = 0
[Command]
Name = "AI28"
Command = b, c, a, x
Time = 0
[Command]
Name = "AI29"
Command = c, a, b, x
Time = 0
[Command]
Name = "AI30"
Command = c, b, a, x
Time = 0
[Command]
Name = "AI31"
Command = a, b, c, s, x
Time = 0
[Command]
Name = "AI32"
Command = a, c, b, s, x
Time = 0
[Command]
Name = "AI33"
Command = b, a, c, s, x
Time = 0
[Command]
Name = "AI34"
Command = b, c, a, s, x
Time = 0
[Command]
Name = "AI35"
Command = c, a, b, s, x
Time = 0
[Command]
Name = "AI36"
Command = c, b, a, s, x
Time = 0
[Command]
Name = "AI37"
Command = x, y, z, x
Time = 0
[Command]
Name = "AI38"
Command = x, z, y, x
Time = 0
[Command]
Name = "AI39"
Command = y, x, z, x
Time = 0
[Command]
Name = "AI40"
Command = y, z, x, x
Time = 0
[Command]
Name = "AI41"
Command = z, x, y, x
Time = 0
[Command]
Name = "AI42"
Command = z, y, x, x
Time = 0
[Command]
Name = "AI43"
Command = x, y, z, s, x
Time = 0
[Command]
Name = "AI44"
Command = x, z, y, s, x
Time = 0
[Command]
Name = "AI45"
Command = y, x, z, s, x
Time = 0
[Command]
Name = "AI46"
Command = y, z, x, s, x
Time = 0
[Command]
Name = "AI47"
Command = z, x, y, s, x
Time = 0
[Command]
Name = "AI48"
Command = z, y, x, s, x
Time = 0
[Command]
Name = "AI49"
Command = z, y, x, s, y
Time = 0
[Command]
Name = "AI50"
Command = z, y, x, s, z
Time = 0

;-------------------------------------------------------------------------------
;-| グリティカルハート |--------------------------------------------------------

;軍剣展開ヒンメルファールト
[Command]
name = "C-Heart"
command = F, B, DB, D, DF, F, x+y
time = 60

;軍剣展開ヒンメルファールト（簡易コマンド）
[Command]
name = "C-Heart"
command = F, B, D, F, x+y
time = 60

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

;突攻剣ツァールライヒ
[Command]
name = "hadou-x+y"
command = ~D, DF, F, x+y
time = 20

;-----------------
;穿孔剣ツェントルム
[Command]
name = "syoryu-x+y"
command = ~F, D, DF, x+y
time = 20

;-----------------
;巨襲剣メテオーア
[Command]
name = "gyakuyoga-x+y"
command = ~F, DF, D, DB, B, x+y
time = 30

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

;突剣グライデン
[Command]
name = "hadou-x"
command = ~D, DF, F, x
time = 15

[Command]
name = "hadou-y"
command = ~D, DF, F, y
time = 15

[Command]
name = "hadou-z"
command = ~D, DF, F, z
time = 15

;-----------------
;設剣ミーネ or 動剣ティーヒカイト
[Command]
name = "tatumaki-x"
command = ~D, DB, B, x
time = 15

[Command]
name = "tatumaki-y"
command = ~D, DB, B, y
time = 15

[Command]
name = "tatumaki-z"
command = ~D, DB, B, z
time = 15

;-----------------
;穿剣フリーゲン
[Command]
name = "syoryu-x"
command = ~F, D, DF, x
time = 15

[Command]
name = "syoryu-y"
command = ~F, D, DF, y
time = 15

[Command]
name = "syoryu-z"
command = ~F, D, DF, z
time = 15

;-----------------
;装剣ザイン

[Command]
name = "DD-x"
command = D, D, x
time = 15

[Command]
name = "DD-y"
command = D, D, y
time = 15

[Command]
name = "DD-z"
command = D, D, z
time = 15

;-----------------
;群剣グライフェン

[Command]
name = "gyaku-haousyokou-x"
command = ~F, DF, D, DB, B, F, x
time = 40

[Command]
name = "gyaku-haousyokou-y"
command = ~F, DF, D, DB, B, F, y
time = 40

[Command]
name = "gyaku-haousyokou-z"
command = ~F, DF, D, DB, B, F, z
time = 40

;-----------------
;アルカナ技汎用コマンド

;波動拳コマンド
[Command]
name = "hadou-x+y+z"
command = ~D, DF, F, x+y+z
time = 15

;波動拳コマンド
[Command]
name = "hadou-c"
command = ~D, DF, F, c
time = 15

;竜巻コマンド
[Command]
name = "tatumaki-c"
command = ~D, DB, B, c
time = 15

;昇竜拳コマンド
[Command]
name = "syoryu-c"
command = ~F, D, DF, c
time = 15

;覇王翔吼拳コマンド
[Command]
name = "haou-c"
command = ~F, B, D, F, c
time = 40

;真空竜巻コマンド
[Command]
name = "shinku-tatumaki-c"
command = ~D, DB, B, D, DB, B, c
time = 40

;真空波動拳コマンド
[Command]
name = "shinku-hadou-c"
command = ~D, DF, F, D, DF, F, c
time = 40

;アルカナイクリプス
[Command]
name = "tatumaki-y+z"
command = ~D, DB, B, y+z
time = 20

;逆昇竜拳
[Command]
name = "gyaku-syoryu-c"
command = ~B, D, DB, c
time = 15

[Command]
name = "DD-c"
command = D, D, c
time = 20

;------------------------------------------------------------------------------
;-| その他行動 |---------------------------------------------------------------

;ハイジャンプ
[Command]
name = "HJ"
command = D,U
time = 20

[Command]
name = "FHJ"
command = D,UF
time = 20

[Command]
name = "BHJ"
command = D,UB
time = 20

;------------------------------------------------------------------------------
;-| ボタン同時押し |-----------------------------------------------------------
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

[command]
name = "a+b"
command = a+b
time = 1

[command]
name = "c+z"
command = c+z
time = 1

[Command]
name = "a+x"
command = a+x
time = 1

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 15

[Command]
name = "UFUF"     ;Required (do not remove)
command = UF, UF
time = 15

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 15

[Command]
name = "UBUB"     ;Required (do not remove)
command = UB, UB
time = 15

[Command]
name = "UB"     ;Required (do not remove)
command = UB
time = 15


[Command]
name = "UF"     ;Required (do not remove)
command = UF
time = 15





[Command]
name = "Delay Homing"     ;Required (do not remove)
command = ~U,U
time = 7






;------------------------------------------------------------------------------
;-| リカバリーボタン |---------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
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
name = "recovery" ;必須コマンド名
command = a
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = b
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = c
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
;-| ボタン単発押しっぱなし | --------------------------------------------------
;-| ボタン単発放し |---------------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "/a"
command = /a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "/b"
command = /b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "/c"
command = /c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "/x"
command = /x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "/y"
command = /y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "/z"
command = /z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "/s"
command = /s
time = 1

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

;【レバー前】
[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

;【レバー後ろ】
[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

;【レバー上】
[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

;【レバー上】2
[Command]
name = "U"
command = U
time = 2

;【レバー下】
[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;【レバー下】2
[Command]
name = "D"
command = D
time = 1



[Command]
name = "UBY"
command = ~U,B,y
time = 4




;==============================================================================
;==============================================================================
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[StateDef -1] ;←この行は絶対に消さないでね。必須項目です。
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;==============================================================================
;==============================================================================
; クリティカルハート
;==============================================================================
;------------------------------------------------------------------------------
;軍剣展開ヒンメルファールト
[State -1]
type = changestate
value = 9000
triggerall = Var(59) = 0
triggerall =  power >= 3000 && Var(8) = 1
triggerall = Statetype != A
triggerall = (Command = "C-Heart") || (Var(11) = 9000)
trigger1 = (ctrl) || (StateNo = 1800 && time <= 2)
trigger2 = (StateNo = [200,599]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1600]) || (StateNo = 1650) || (StateNo = 1700) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = [5120,5121] ;起き上がりリバーサル
trigger3 = animtime = 0
trigger4 = stateno = 5001    ;喰らい回復
trigger4 = HitOver = 1
trigger5 = stateno = 5011    ;屈喰らい回復
trigger5 = HitOver = 1
trigger6 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger7 = (StateNo = [1900,1950]) || (StateNo = [14500,14509])
trigger7 = Var(15) = 1

;==============================================================================
;==============================================================================
; アルカナ技
;==============================================================================
;==============================================================================
;------------------------------------------------------------------------------
;==============================================================================
;==============================================================================
; 釼神のガイスト
;==============================================================================
;==============================================================================
;剱神ゴットフリート（アルカナブレイズ）
[State -1]
type = changestate
value = 13400
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = 1
triggerall = command = "hadou-x+y+z" || (Var(11) = 13400)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1600]) || (StateNo = 1650) || (StateNo = 1700) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;剱疾シュトラッサー（アルカナイクリプス）
[State -1]
type = changestate
value = 13250
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = 1
triggerall = ((Var(18) = 0) && (Statetype != A)) || (Var(18) = 1)
triggerall = command = "tatumaki-y+z" || (Var(11) = 13250)
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;釼域ダリューゲ
[State -1]
type = changestate
value = 13300
triggerall = Var(59) = 0
triggerall = Var(24) = 1
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "shinku-tatumaki-c" || (Var(11) = 13300)
triggerall = Statetype != A
triggerall = NumHelper(13365) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,599]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1600]) || (StateNo = 1650) || (StateNo = 1700) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;剱斬クリューガー
[State -1]
type = changestate
value = 13200
triggerall = Var(59) = 0
triggerall = Var(24) = 1
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "haou-c" || (Var(11) = 13200)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1600]) || (StateNo = 1650) || (StateNo = 1700) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;釼刺ザロモン
[State -1]
type = changestate
value = 13100
triggerall = Var(59) = 0
triggerall = Var(24) = 1
triggerall = command = "syoryu-c" || (Var(11) = 13100)
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;釼衝レーム
[State -1]
type = changestate
value = 13000
triggerall = Var(59) = 0
triggerall = Var(24) = 1
triggerall = statetype != A
triggerall = ((Var(18) = 0) && (Statetype != A)) || (Var(18) = 1)
triggerall = command = "hadou-c" || (Var(11) = 13000)
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;==============================================================================
;==============================================================================
; 磁のアルカナ
;==============================================================================
;==============================================================================
;メランコリア
[State -1]
type = changestate
value = 13600
triggerall = Var(59) = 0
triggerall = Var(24) = 2
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "shinku-hadou-c" || (Var(11) = 13600)
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;スカンダロン
[State -1]
type = changestate
value = 13650
triggerall = Var(59) = 0
triggerall = Var(24) = 2
triggerall = command = "hadou-c" || (Var(11) = 13650)
triggerall = NumHelper(13660) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;==============================================================================
;==============================================================================
; 音のアルカナ
;==============================================================================
;==============================================================================
;アレルヤ（アルカナブレイズ）
[State -1]
type = changestate
value = 14450
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = 3
triggerall = command = "hadou-x+y+z" || (Var(11) = 14450)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;アド・リビトゥム（アルカナイクリプス）
[State -1]
type = changestate
value = 13950
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = 3
triggerall = ((Var(18) = 0) && (Statetype != A)) || (Var(18) = 1)
triggerall = command = "tatumaki-y+z" || (Var(11) = 13950)
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;カンティレーナ
[State -1]
type = changestate
value = 14350
triggerall = Var(59) = 0
triggerall = Var(24) = 3
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "shinku-hadou-c" || (Var(11) = 14350)
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;タセット
[State -1]
type = changestate
value = 14300
triggerall = Var(59) = 0
triggerall = Var(24) = 3
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "shinku-tatumaki-c" || (Var(11) = 14300)
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;ヴィーヴォ
[State -1]
type = changestate
value = 14400
triggerall = Var(59) = 0
triggerall = Var(24) = 3
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "haou-c" || (Var(11) = 14400)
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;アクセンタス
[State -1]
type = changestate
value = 14250
triggerall = Var(59) = 0
triggerall = Var(24) = 3
triggerall = command = "syoryu-c" || (Var(11) = 14250)
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;カノン
[State -1]
type = changestate
value = 14200
triggerall = Var(59) = 0
triggerall = Var(24) = 3
triggerall = command = "hadou-c" || (Var(11) = 14200)
triggerall = (NumHelper(14210)=0)||(NumHelper(14215)=0)||(NumHelper(14220)=0)||(NumHelper(14225)=0)||(NumHelper(14230)=0)
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;エコー
[State -1]
type = changestate
value = 14100
triggerall = Var(59) = 0
triggerall = Var(24) = 3
triggerall = command = "tatumaki-c" || (Var(11) = 14100)
triggerall = NumHelper(14110) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;==============================================================================
;==============================================================================
; 罪のアルカナ
;==============================================================================
;==============================================================================
;プリガヴォール（アルカナブレイズ）
[State -1]
type = changestate
value = 14900
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = 4
triggerall = command = "hadou-x+y+z" || (Var(11) = 14900)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;クリゥチォーク（アルカナイクリプス）
[State -1]
type = changestate
value = 14830
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = 4
triggerall = ((Var(18) = 0) && (Statetype != A)) || (Var(18) = 1)
triggerall = command = "tatumaki-y+z" || (Var(11) = 14830)
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;スリオーズイ
[State -1]
type = changestate
value = 14800
triggerall = Var(59) = 0
triggerall = Var(24) = 4
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "shinku-hadou-c" || (Var(11) = 14800)
triggerall = Statetype != A
triggerall = NumHelper(14820) <= 3
trigger1 = ctrl
trigger2 = (StateNo = [200,599]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1600]) || (StateNo = 1650) || (StateNo = 1700) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;クローフィ
[State -1]
type = changestate
value = 14750
triggerall = Var(59) = 0
triggerall = Var(24) = 4
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "shinku-hadou-c" || (Var(11) = 14750)
triggerall = Statetype = A
triggerall = NumHelper(14820) <= 3
trigger1 = ctrl
trigger2 = (StateNo = [200,599]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1600]) || (StateNo = 1650) || (StateNo = 1700)
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;アサーダ
[State -1]
type = changestate
value = 14600
triggerall = Var(59) = 0
triggerall = Var(24) = 4
triggerall = command = "syoryu-c" || (Var(11) = 14600)
triggerall = Statetype != A
triggerall = NumHelper(14610) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;ボーリ
[State -1]
type = changestate
value = 14650
triggerall = Var(59) = 0
triggerall = Var(24) = 4
triggerall = command = "hadou-c" || (Var(11) = 14650)
triggerall = NumHelper(14660) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;ザサーダ
[State -1]
type = changestate
value = 14700
triggerall = Var(59) = 0
triggerall = Var(24) = 4
triggerall = command = "tatumaki-c" || (Var(11) = 14700)
triggerall = NumHelper(14710) <= 2
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;==============================================================================
;==============================================================================
; 顎獣のガイスト
;==============================================================================
;==============================================================================
;神炮ヴァインガルトナー（アルカナブレイズ）
[State -1]
type = changestate
value = 15450
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = [5,6]
triggerall = command = "hadou-x+y+z" || (Var(11) = 15450)
triggerall = Statetype != A
triggerall = NumHelper(15110) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,599]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;爆炮ゼーネフェルダー（アルカナイクリプス）
[State -1]
type = changestate
value = 15400
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = [5,6]
triggerall = ((Var(18) = 0) && (Statetype != A)) || (Var(18) = 1)
triggerall = command = "tatumaki-y+z" || (Var(11) = 14830)
triggerall = NumHelper(15110) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;巨炮ディングフェルダー
[State -1]
type = changestate
value = 15300
triggerall = Var(59) = 0
triggerall = Var(24) = [5,6]
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "haou-c" || (Var(11) = 15300)
triggerall = NumHelper(15110) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;乱炮ファルケンハイン
[State -1]
type = changestate
value = 15250
triggerall = Var(59) = 0
triggerall = Var(24) = [5,6]
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "shinku-tatumaki-c" || (Var(11) = 15250)
triggerall = NumHelper(15110) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;重炮ドゥーゼ
[State -1]
type = changestate
value = 15200
triggerall = Var(59) = 0
triggerall = Var(24) = [5,6]
triggerall = command = "syoryu-c" || (Var(11) = 15200)
triggerall = NumHelper(15110) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;速炮ベルガー
[State -1]
type = changestate
value = 15100
triggerall = Var(59) = 0
triggerall = Var(24) = [5,6]
triggerall = command = "hadou-c" || (Var(11) = 15100)
triggerall = NumHelper(15110) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;散炮ファルク
[State -1]
type = changestate
value = 15150
triggerall = Var(59) = 0
triggerall = Var(24) = [5,6]
triggerall = command = "tatumaki-c" || (Var(11) = 15150)
triggerall = NumHelper(15110) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;==============================================================================
;==============================================================================
; 聖のアルカナ
;==============================================================================
;==============================================================================
;ゴスペル（アルカナブレイズ）
[State -1]
type = changestate
value = 15950
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = 7
triggerall = command = "hadou-x+y+z" || (Var(11) = 15950)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;サンクチュアリ（アルカナイクリプス）
[State -1]
type = changestate
value = 15900
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = 7
triggerall = ((Var(18) = 0) && (Statetype != A)) || (Var(18) = 1)
triggerall = command = "tatumaki-y+z" || (Var(11) = 15900)
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;ホーリーソング
[State -1]
type = changestate
value = 15800
triggerall = Var(59) = 0
triggerall = Var(24) = 7
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "shinku-hadou-c" || (Var(11) = 15800)
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;ファランクス
[State -1]
type = changestate
value = 15850
triggerall = Var(59) = 0
triggerall = Var(24) = 7
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "shinku-tatumaki-c" || (Var(11) = 15850)
triggerall = NumHelper(15665) != 3
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;ブレス
[State -1]
type = changestate
value = 15700
triggerall = Var(59) = 0
triggerall = Var(24) = 7
triggerall = command = "syoryu-c" || (Var(11) = 15700)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;ホーリーボイス
[State -1]
type = changestate
value = 15600
triggerall = Var(59) = 0
triggerall = Var(24) = 7
triggerall = command = "hadou-c" || (Var(11) = 15600)
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;シャベリン
[State -1]
type = changestate
value = 15650
triggerall = Var(59) = 0
triggerall = Var(24) = 7
triggerall = command = "tatumaki-c" || (Var(11) = 15650)
triggerall = NumHelper(15660) != 2
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;==============================================================================
;==============================================================================
; 氷のアルカナ
;==============================================================================
;==============================================================================
;フォルンヴェロルド（アルカナブレイズ）
[State -1]
type = changestate
value = 16450
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = 8
triggerall = command = "hadou-x+y+z" || (Var(11) = 16450)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;フルズレグルナァル（アルカナイクリプス）
[State -1]
type = changestate
value = 16400
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = 8
triggerall = ((Var(18) = 0) && (Statetype != A)) || (Var(18) = 1)
triggerall = command = "tatumaki-y+z" || (Var(11) = 16400)
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;スプレンギァ
[State -1]
type = changestate
value = 16250
triggerall = Var(59) = 0
triggerall = Var(24) = 8
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "shinku-hadou-c" || (Var(11) = 16250)
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;クルディ
[State -1]
type = changestate
value = 16300
triggerall = Var(59) = 0
triggerall = Var(24) = 8
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "shinku-tatumaki-c" || (Var(11) = 16300)
triggerall = NumHelper(16320) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;ナァル
[State -1]
type = changestate
value = 16100
triggerall = Var(59) = 0
triggerall = Var(24) = 8
triggerall = command = "hadou-c" || (Var(11) = 16100)
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;クルゥア
[State -1]
type = changestate
value = 16200
triggerall = Var(59) = 0
triggerall = Var(24) = 8
triggerall = command = "tatumaki-c" || (Var(11) = 16200)
triggerall = NumHelper(16210) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;==============================================================================
;==============================================================================
; 命のアルカナ
;==============================================================================
;==============================================================================
;エリクシーア（アルカナブレイズ）
[State -1]
type = changestate
value = 16950
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = [9,10]
triggerall = command = "hadou-x+y+z" || (Var(11) = 16950)
triggerall = Statetype != A
triggerall = NumHelper(16920) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;レーベンスゲファール（アルカナイクリプス）
[State -1]
type = changestate
value = 16900
triggerall = Var(59) = 0
triggerall = Var(50) >= 1
triggerall = Var(24) = [9,10]
triggerall = ((Var(18) = 0) && (Statetype != A)) || (Var(18) = 1)
triggerall = command = "tatumaki-y+z" || (Var(11) = 16900)
triggerall = NumHelper(16920) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;シュタルケ・アルツナイ
[State -1]
type = changestate
value = 16800
triggerall = Var(59) = 0
triggerall = Var(24) = [9,10]
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "shinku-hadou-c" || (Var(11) = 16800)
triggerall = NumHelper(16820) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;スヒツォフレニイ
[State -1]
type = changestate
value = 16830
triggerall = Var(59) = 0
triggerall = Var(24) = [9,10]
triggerall = (Var(18) != 1 && FVar(30) >= 0.1666) || (Var(18) = 1 && Power >= 1000)
triggerall = command = "shinku-tatumaki-c" || (Var(11) = 16830)
triggerall = NumHelper(16845) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1799]) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger4 = (StateNo = [1900,1950])
trigger4 = Var(15) = 1

;------------------------------
;状態変化・スロウ（黄）
[State -1]
type = changestate
value = 16680
triggerall = Var(59) = 0
triggerall = Var(30) = 0
triggerall = Var(24) = [9,10]
triggerall = command = "gyaku-syoryu-c" || (Var(11) = 16680)
triggerall = NumHelper(16690) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;状態変化・毒（緑）
[State -1]
type = changestate
value = 16660
triggerall = Var(59) = 0
triggerall = Var(24) = [9,10]
triggerall = command = "syoryu-c" || (Var(11) = 16660)
triggerall = NumHelper(16670) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;フェアヴィルン（青）
[State -1]
type = changestate
value = 16640
triggerall = Var(59) = 0
triggerall = Var(24) = [9,10]
triggerall = command = "DD-c" || (Var(11) = 16640)
triggerall = NumHelper(16650) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;シュヴィンデル（赤）
[State -1]
type = changestate
value = 16620
triggerall = Var(59) = 0
triggerall = Var(24) = [9,10]
triggerall = command = "tatumaki-c" || (Var(11) = 16620)
triggerall = NumHelper(16630) = 0
triggerall = NumHelper(16635) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;アネステズイ
[State -1]
type = changestate
value = 16600
triggerall = Var(59) = 0
triggerall = Var(27) = 0
triggerall = Var(24) = [9,10]
triggerall = command = "hadou-c" || (Var(11) = 16600)
triggerall = NumHelper(16610) = 0
trigger1 = ctrl
trigger2 = (StateNo = [200,799])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;==============================================================================
;==============================================================================
; アルカナバースト、エクステンドフォース
;==============================================================================
;------------------------------------------------------------------------------
;アルカナバースト

[State -1]
type = ChangeState
value = 7000
triggerall = Var(59) = 0
triggerall = (Var(6) <= 1)&&(Var(50) <= 0 && Var(51) <= 0) || ((Var(6) >= 2)&&!(Var(51) >= 1))
triggerall = alive = 1
triggerall = Command = "c+z"
trigger1 = Ctrl
trigger2 = StateNo = [150,153]
trigger3 = StateNo = [5000,5071]
trigger4 = StateNo = [40,52]

;------------------------------
;エクステンドフォース発動
[State -1]
type = ChangeState
value = 7100
triggerall = Var(59) = 0
triggerall = Var(6) <= 1 || (Var(6) = 3)&&(Command != "holdback")
triggerall = (Var(50) <= 0 && Var(51) <= 0)
triggerall = Command = "x+y+z" || Command = "b"
triggerall = Statetype != A
triggerall = Statetype != L
trigger1 = Ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact



;フォースキャンセル発動
[State -1]
type = ChangeState
value = 7110
triggerall = Var(59) = 0
triggerall = (Var(50) <= 0 && Var(51) <= 0)
triggerall = Command = "x+y+z"
triggerall = Statetype != A
triggerall = Statetype != L
trigger1 = (StateNo = [200,599]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1600]) || (StateNo = 1650) || (StateNo = 1700) || (StateNo = 1800) || (StateNo = [1900,1999]) || (StateNo = 3300)
trigger1 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (StateNo = 3210) || (StateNo = 13220)
trigger2 = (MoveGuarded) || (MoveReversed)
trigger3 = (StateNo = [1900,1950]) || (StateNo = 13610) || (StateNo = [14500,14509])
trigger3 = Var(15) = 1
trigger4 = (StateNo = 13130)
trigger5 = StateNo = 910
trigger5 = anim = 915
trigger5 = (animelem = 8,2) || (animelem = 9) || (animelem = 10) || (animelem = 11)
trigger5 = (FVar(30) >= 0.1666)

;エクステンドブラスト発動
[State -1]
type = ChangeState
value = 7120
triggerall = Var(59) = 0
triggerall = Var(6) >= 2 || (Var(6) = 3)&&(Command = "holdback")
triggerall = (Var(50) <= 0 && Var(51) <= 0)
triggerall = Command = "x+y+z"
triggerall = Statetype != A
triggerall = Statetype != L
trigger1 = Ctrl
trigger2 = (StateNo = [150,159])

;==============================================================================
;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;穿孔剣ツェントルム
[State -1]
type = changestate
value = 3000
triggerall = Var(59) = 0
triggerall =  power >= 1000 
triggerall = Statetype != A
triggerall = command = "syoryu-x+y" || (Var(11) = 3000)
trigger1 = (ctrl) || (StateNo = 1800 && time <= 2)
trigger2 = (StateNo = [200,599]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1600]) || (StateNo = 1650) || (StateNo = 1700) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = [5120,5121] ;起き上がりリバーサル
trigger3 = animtime = 0
trigger4 = stateno = 5001    ;喰らい回復
trigger4 = HitOver = 1
trigger5 = stateno = 5011    ;屈喰らい回復
trigger5 = HitOver = 1
trigger6 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger7 = (StateNo = [1900,1950]) || (StateNo = [14500,14509])
trigger7 = Var(15) = 1

;------------------------------
;突攻剣ツァールライヒ
[State -1]
type = changestate
value = 3200
triggerall = Var(59) = 0
triggerall =  power >= 1000
triggerall = Statetype != A
triggerall = command = "hadou-x+y" || (Var(11) = 3200)
trigger1 = (ctrl) || (StateNo = 1800 && time <= 2)
trigger2 = (StateNo = [200,599]) || (StateNo = 1000) || (StateNo = 1100) || (StateNo = [1500,1600]) || (StateNo = 1650) || (StateNo = 1700) || (StateNo = [1900,1999])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = [5120,5121] ;起き上がりリバーサル
trigger3 = animtime = 0
trigger4 = stateno = 5001    ;喰らい回復
trigger4 = HitOver = 1
trigger5 = stateno = 5011    ;屈喰らい回復
trigger5 = HitOver = 1
trigger6 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))
trigger6 = command = "hadou-x+y"
trigger7 = (StateNo = [1900,1950]) || (StateNo = [14500,14509])
trigger7 = Var(15) = 1

;------------------------------
;巨襲剣メテオーア
[State -1]
type = ChangeState
value = 3100
triggerall = Var(59) = 0
triggerall =  power >= 1000
triggerall = command = "gyakuyoga-x+y" || (Var(11) = 3100)
triggerall = statetype = A
Triggerall = Pos Y <= -16
trigger1 = ctrl
trigger2 = (StateNo = [600,699]) || (StateNo = 1620) || (StateNo = 1670) || (StateNo = 1720)
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4100 || ((StateNo = 4550) && (Var(20) <= 12))
trigger4 = StateNo = 630
trigger4 = Var(15) = 1

;------------------------------------------------------------------------------
;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
;郡剣グライフェン
[State -1]
type = changestate
value = 2000
triggerall = Var(59) = 0
triggerall = (Command = "gyaku-haousyokou-x") || (Command = "gyaku-haousyokou-y") || (Command = "gyaku-haousyokou-z") || (Var(11) = 2000)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;穿剣フリーゲン・弱、地上
[State -1]
type = changestate
value = 1600
triggerall = Var(59) = 0
triggerall = Statetype != A
triggerall = command = "syoryu-x" || (Var(11) = 1600)
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = [5120,5121] ;起き上がりリバーサル
trigger3 = animtime = 0
trigger4 = stateno = 5001    ;喰らい回復
trigger4 = HitOver = 1
trigger5 = stateno = 5011    ;屈喰らい回復
trigger5 = HitOver = 1
trigger6 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;穿剣フリーゲン・中、地上
[State -1]
type = changestate
value = 1650
triggerall = Var(59) = 0
triggerall = Statetype != A
triggerall = command = "syoryu-y" || (Var(11) = 1650)
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = [5120,5121] ;起き上がりリバーサル
trigger3 = animtime = 0
trigger4 = stateno = 5001    ;喰らい回復
trigger4 = HitOver = 1
trigger5 = stateno = 5011    ;屈喰らい回復
trigger5 = HitOver = 1
trigger6 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;穿剣フリーゲン・強、地上
[State -1]
type = changestate
value = 1700
triggerall = Var(59) = 0
triggerall = Statetype != A
triggerall = command = "syoryu-z" || (Var(11) = 1700)
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = [5120,5121] ;起き上がりリバーサル
trigger3 = animtime = 0
trigger4 = stateno = 5001    ;喰らい回復
trigger4 = HitOver = 1
trigger5 = stateno = 5011    ;屈喰らい回復
trigger5 = HitOver = 1
trigger6 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;穿剣フリーゲン・弱、空中
[State -1]
type = changestate
value = 1620
triggerall = Var(59) = 0
triggerall = command = "syoryu-x" || (Var(11) = 1620)
triggerall = Statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600,699]
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4100 || ((StateNo = 4550) && (Var(20) <= 12))

;------------------------------
;穿剣フリーゲン・中、空中
[State -1]
type = changestate
value = 1670
triggerall = Var(59) = 0
triggerall = command = "syoryu-y" || (Var(11) = 1670)
triggerall = Statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600,699]
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4100 || ((StateNo = 4550) && (Var(20) <= 12))

;------------------------------
;穿剣フリーゲン・強、空中
[State -1]
type = changestate
value = 1720
triggerall = Var(59) = 0
triggerall = command = "syoryu-z" || (Var(11) = 1720)
triggerall = Statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600,699]
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4100 || ((StateNo = 4550) && (Var(20) <= 12))

;------------------------------
;突剣グライデン・弱
[State -1]
type = changestate
value = 1500
triggerall = Var(59) = 0
triggerall = Var(6) <= 1
triggerall = command = "hadou-x" || (Var(11) = 1500)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;突剣グライデン・弱、ラブマックス版
[State -1]
type = changestate
value = 1900
triggerall = Var(59) = 0
triggerall = Var(6) >= 2
triggerall = command = "hadou-x" || (Var(11) = 1900)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;突剣グライデン・中
[State -1]
type = changestate
value = 1530
triggerall = Var(59) = 0
triggerall = Var(6) <= 1
triggerall = command = "hadou-y" || (Var(11) = 1530)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;突剣グライデン・中、ラブマックス版
[State -1]
type = changestate
value = 1930
triggerall = Var(59) = 0
triggerall = Var(6) >= 2
triggerall = command = "hadou-y" || (Var(11) = 1930)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;突剣グライデン・強
[State -1]
type = changestate
value = 1550
triggerall = Var(59) = 0
triggerall = Var(6) <= 1
triggerall = command = "hadou-z" || (Var(11) = 1550)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;突剣グライデン・強、ラブマックス版
[State -1]
type = changestate
value = 1950
triggerall = Var(59) = 0
triggerall = Var(6) >= 2
triggerall = command = "hadou-z" || (Var(11) = 1950)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;設剣ミーネ
[State -1]
type = changestate
value = 1000
triggerall = Var(59) = 0
triggerall = Var(7) = 0
triggerall = (Command = "tatumaki-x") || (Command = "tatumaki-y") || (Command = "tatumaki-z") || (Var(11) = 1000)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;動剣テーティヒカイト
[State -1]
type = changestate
value = 1100
triggerall = Var(59) = 0
triggerall = Var(7) = 1
triggerall = (Command = "tatumaki-x") || (Command = "tatumaki-y") || (Command = "tatumaki-z") || (Var(11) = 1100)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;追剣ヤーゲン
[State -1]
type = changestate
value = 1200
triggerall = Var(59) = 0
triggerall = Var(7) = 2
triggerall = (Command = "tatumaki-x") || (Command = "tatumaki-y") || (Command = "tatumaki-z") || (Var(11) = 1200)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------
;装剣ザイン
[State -1]
type = changestate
value = 1800
triggerall = Var(59) = 0
;triggerall = Var(8) = 0
triggerall = (Command = "DD-x") || (Command = "DD-y") || (Command = "DD-z") || (Var(11) = 1800)
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 12))

;------------------------------------------------------------------------------
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) = 0
triggerall = command = "FF"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Var(59) = 0
triggerall = command = "BB"
triggerall = statetype != A
triggerall = StateNo != 52
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中ダッシュ

[State -1, Air Dash Fwd]
type = ChangeState
value = 110
triggerall = Var(59) = 0
triggerall = Var(1) = 0
triggerall = statetype = A
triggerall = Pos Y < -65
triggerall = (command = "FF") || (command = "UFUF") || (Var(11) = 110)
trigger1 = ctrl
trigger1 = (StateNo != [4100,4199])
;trigger2 = stateno = 600 || stateno = 610 || stateno = 650
;trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------
;空中バックダッシュ

[State -1,  Air Dash Back]
type = ChangeState
value = 115
triggerall = Var(59) = 0
triggerall = Var(1) = 0
triggerall = statetype = A
triggerall = Pos Y < -65
triggerall = (command = "BB") || (command = "UBUB") || (Var(11) = 115)
trigger1 = ctrl
trigger1 = (StateNo != [4100,4199])
;trigger2 = stateno = 600 || stateno = 610 || stateno = 650
;trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------

[state -1, ハイジャンプ]
type = changestate
value = 60
triggerall = Var(59) = 0
triggerall = command = "HJ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 200) || (StateNo = 210) || (StateNo = [220,229]) || (StateNo = 435) || (StateNo = 439)
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------
[state -1, 前ハイジャンプ]
type = changestate
value = 60
triggerall = Var(59) = 0
triggerall = command = "FHJ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 200) || (StateNo = 210) || (StateNo = [220,229]) || (StateNo = 435) || (StateNo = 439)
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------
[state -1, 後ろハイジャンプ]
type = changestate
value = 60
triggerall = Var(59) = 0
triggerall = command = "BHJ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 200) || (StateNo = 210) || (StateNo = [220,229]) || (StateNo = 435) || (StateNo = 439)
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;------------------------------------------------------------------------------
;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
;レバー入れ投げ
[State -1]
type = ChangeState
value = 800
triggerall = Var(59) = 0
triggerall = command = "a+x"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 0))

;レバーニュートラル投げ
[State -1]
type = ChangeState
value = 900
triggerall = Var(59) = 0
triggerall = command = "a+x"
triggerall = command != "holdfwd" || command != "holdback"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 0))

;空中投げ
[State -1]
type = ChangeState
value = 950
triggerall = Var(59) = 0
triggerall = command = "a+x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 4100 || ((StateNo = 4550) && (Var(20) <= 0))

;------------------------------------------------------------------------------
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------
;立ち弱攻撃
[State -1]
type = ChangeState
value = 200
triggerall = Var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 && time >= 3)
trigger3 = stateno = 400
trigger3 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 0))

;---------------------------------------------------------------------------
;立ち中攻撃
[State -1]
type = ChangeState
value = 210
triggerall = Var(59) = 0
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 0))
trigger4 = Var(50) >= 1
trigger4 = stateno = 230
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------
;立ち強攻撃
[State -1]
type = ChangeState
value = 220
triggerall = Var(59) = 0
triggerall = command = "z"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 400 || stateno = 410
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 0))
trigger4 = (StateNo = [208,209])
trigger5 = Var(50) >= 1
trigger5 = stateno = 230
trigger5 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------
;レバー後ろ立ち中攻撃
[State -1]
type = ChangeState
value = 230
triggerall = Var(59) = 0
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || (stateno = [220,229]) || stateno = 400 || stateno = 410
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 0))

;---------------------------------------------------------------------------
;レバー前立ち強攻撃
[State -1]
type = ChangeState
value = 240
triggerall = Var(59) = 0
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || (stateno = [220,229]) || stateno = 400 || stateno = 410
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 0))
trigger4 = Var(50) >= 1
trigger4 = stateno = 230 || stateno = 420
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------
;立ちＥ攻撃
[State -1]
type = ChangeState
value = 250
triggerall = Var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || (stateno = [220,229]) || stateno = 400 || stateno = 410
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 0))
trigger4 = Var(50) >= 1
trigger4 = stateno = 230
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger5 = stateno = 240 && Movecontact  ;For Salvador 
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Taunt
;挑発
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱攻撃
[State -1]
type = ChangeState
value = 400
triggerall = Var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 && time >= 3)
trigger3 = stateno = 200
trigger3 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 0))

;---------------------------------------------------------------------------
;しゃがみ中攻撃
[State -1]
type = ChangeState
value = 410
triggerall = Var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 400
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 0))
trigger4 = Var(50) >= 1
trigger4 = stateno = 230
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------
;しゃがみ強攻撃
[State -1]
type = ChangeState
value = 420
triggerall = Var(59) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 400 || stateno = 410
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 0))
trigger4 = Var(50) >= 1
trigger4 = (stateno = [220,229]) || stateno = 230
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------
;しゃがみＥ攻撃
[State -1]
type = ChangeState
value = 430
triggerall = Var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || (stateno = [220,229]) || stateno = 400 || stateno = 410
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4020 || ((StateNo = 4500) && (Var(20) <= 0))
trigger4 = Var(50) >= 1
trigger4 = stateno = 230
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;空中弱攻撃
[state -1]
type = ChangeState
value = 600
triggerall = Var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 4100 || ((StateNo = 4550) && (Var(20) <= 0))
trigger3 = Var(50) >= 1
trigger3 = stateno = 640
trigger3 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------
;空中中攻撃
[state -1]
type = ChangeState
value = 610
triggerall = Var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
;trigger3 = StateNo = 4100 || ((StateNo = 4550) && (Var(20) <= 0))
trigger4 = Var(50) >= 1
trigger4 = stateno = 620 || stateno = 640
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------
;空中レバー後ろ中攻撃
[state -1]
type = ChangeState
value = 650
triggerall = Var(59) = 0
triggerall = command = "y"
triggerall = command = "holdback" 
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X < 0
trigger1 = Time >= 7
trigger2 = stateno = 600 || stateno = 610
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4100 || ((StateNo = 4550) && (Var(20) <= 0))
trigger4 = Var(50) >= 1
trigger4 = stateno = 620 || stateno = 640
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------
;空中強攻撃
[state -1]
type = ChangeState
value = 620
triggerall = Var(59) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 650
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4100 || ((StateNo = 4550) && (Var(20) <= 0))
trigger4 = Var(50) >= 1
trigger4 = stateno = 640
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)

;---------------------------------------------------------------------------
;空中Ｅ
[State -1]
type = ChangeState
value = 640
triggerall = Var(59) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620 ||  stateno = 621 || stateno = 630 || stateno = 650
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = StateNo = 4100 || ((StateNo = 4550) && (Var(20) <= 0))

;------------------------------------------------------------------------------
;ホーミング、地上

[state -1, ノーマルホーミング地上]
type = changestate
value = 4000
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = Statetype != A
trigger1 = ctrl
trigger1 = !((StateNo = 14600)&&(FVar(30) <= 0.1665))
trigger2 = (StateNo = [200,599]) || StateNo = 1000 || StateNo = 1100 || (StateNo = [1500,1599]) || StateNo = 1600 || StateNo = 1650 || StateNo = 1700 || (StateNo = [1900,1999]) || (StateNo = 3300)
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (FVar(30) >= 0.1666)
trigger3 = StateNo = 910
trigger3 = anim = 915
trigger3 = (animelem = 8,2) || (animelem = 9) || (animelem = 10) || (animelem = 11)
trigger3 = (FVar(30) >= 0.1666)
trigger4 = (StateNo = [13110,13229]) || (StateNo = 13610) || (StateNo = [15600,15819])  ;釼神技、メランコリア、聖カナ技
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = (FVar(30) >= 0.1666)
trigger5 = (StateNo = [14500,14509])  ;クラースヌイ
trigger5 = Var(15) = 1
trigger5 = time >= 3
trigger6 = (StateNo = 16260) || (StateNo = [16620,16699])  ;氷（スプレンギァ）、命のアルカナ状態変化系
trigger6 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger6 = (FVar(30) >= 0.1666)

[state -1, ホーミング、地上前]
type = changestate
value = 4010
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = Statetype != A
trigger1 = ctrl
trigger1 = !((StateNo = 14600)&&(FVar(30) <= 0.1665))
trigger2 = (StateNo = [200,599]) || StateNo = 1000 || StateNo = 1100 || (StateNo = [1500,1599]) || StateNo = 1600 || StateNo = 1650 || StateNo = 1700 || (StateNo = [1900,1999]) || (StateNo = 3300)
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (FVar(30) >= 0.1666)
trigger3 = StateNo = 910
trigger3 = anim = 915
trigger3 = (animelem = 8,2) || (animelem = 9) || (animelem = 10) || (animelem = 11)
trigger3 = (FVar(30) >= 0.1666)
trigger4 = (StateNo = [13110,13229]) || (StateNo = 13610) || (StateNo = [15600,15819])  ;釼神技、メランコリア、聖カナ技
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = (FVar(30) >= 0.1666)
trigger5 = (StateNo = [14500,14509])  ;クラースヌイ
trigger5 = Var(15) = 1
trigger5 = time >= 3
trigger6 = (StateNo = 16260) || (StateNo = [16620,16699])  ;氷（スプレンギァ）、命のアルカナ状態変化系
trigger6 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger6 = (FVar(30) >= 0.1666)

[state -1, ホーミング、地上後ろ]
type = changestate
value = 4030
triggerall = Var(59) = 0
triggerall = (command = "a")&&(command = "holdback") || (Var(11) = 4030)
triggerall = Statetype != A
trigger1 = ctrl
trigger1 = !((StateNo = 14600)&&(FVar(30) <= 0.1665))
trigger2 = (StateNo = [200,599]) || StateNo = 1000 || StateNo = 1100 || (StateNo = [1500,1599]) || StateNo = 1600 || StateNo = 1650 || StateNo = 1700 || (StateNo = [1900,1999]) || (StateNo = 3300)
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (FVar(30) >= 0.1666)
trigger3 = StateNo = 910
trigger3 = anim = 915
trigger3 = (animelem = 8,2) || (animelem = 9) || (animelem = 10) || (animelem = 11)
trigger3 = (FVar(30) >= 0.1666)
trigger4 = (StateNo = [13110,13229]) || (StateNo = 13610) || (StateNo = [15600,15819])  ;釼神技、メランコリア、聖カナ技
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = (FVar(30) >= 0.1666)
trigger5 = (StateNo = [14500,14509])  ;クラースヌイ
trigger5 = Var(15) = 1
trigger5 = time >= 3
trigger6 = (StateNo = 16260) || (StateNo = [16620,16699])  ;氷（スプレンギァ）、命のアルカナ状態変化系
trigger6 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger6 = (FVar(30) >= 0.1666)

;----------------------------------

;ホーミング、空中

[state -1, ノーマルホーミング空中]
type = changestate
value = 4050
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = Statetype = A
triggerall = Pos Y <= -30         ; According to Salvador
triggerall = StateNo != 4100
trigger1 = ctrl



;ホーミング、空中

[state -1, ノーマルホーミング空中]
type = changestate
value = 4055
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = Statetype = A
triggerall = Pos Y <= -30         ; According to Salvador
triggerall = StateNo != 4100
trigger1 = ctrl
trigger1 = (StateNo = [600,699]) || StateNo = 962 || (StateNo = [1610,1640]) || (StateNo = [1660,1690]) || (StateNo = [1710,1740]) || (StateNo = [3015,3020])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (FVar(30) >= 0.1666)
trigger3 = (StateNo = [13120,13130]) || (StateNo = 13610) || (StateNo = [15600,15819])  ;ザロモン、メランコリア、聖カナ技
trigger3 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = (FVar(30) >= 0.1666)
trigger4 = (StateNo = 16260) || (StateNo = [16620,16699])  ;氷（スプレンギァ）、命のアルカナ状態変化系
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = (FVar(30) >= 0.1666)




[state -1, ホーミング、空中上昇]
type = changestate
value = 4060
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command = "holdup"  
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = Statetype = A
triggerall = StateNo != 4100
trigger1 = ctrl
trigger2 = (StateNo = [600,699]) || StateNo = 962 || (StateNo = [1610,1640]) || (StateNo = [1660,1690]) || (StateNo = [1710,1740]) || (StateNo = [3015,3020])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (FVar(30) >= 0.1666)
trigger3 = (StateNo = [13120,13130]) || (StateNo = 13610) || (StateNo = [15600,15819])  ;ザロモン、メランコリア、聖カナ技
trigger3 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = (FVar(30) >= 0.1666)
trigger4 = (StateNo = 16260) || (StateNo = [16620,16699])  ;氷（スプレンギァ）、命のアルカナ状態変化系
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = (FVar(30) >= 0.1666)

[state -1, ホーミング、空中前方上昇]
type = changestate
value = 4065
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command = "holdup"
triggerall = command = "holdfwd"
triggerall = Statetype = A
triggerall = StateNo != 4100
trigger1 = ctrl
trigger2 = (StateNo = [600,699]) || StateNo = 962 || (StateNo = [1610,1640]) || (StateNo = [1660,1690]) || (StateNo = [1710,1740]) || (StateNo = [3015,3020])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (FVar(30) >= 0.1666)
trigger3 = (StateNo = [13120,13130]) || (StateNo = 13610) || (StateNo = [15600,15819])  ;ザロモン、メランコリア、聖カナ技
trigger3 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = (FVar(30) >= 0.1666)
trigger4 = (StateNo = 16260) || (StateNo = [16620,16699])  ;氷（スプレンギァ）、命のアルカナ状態変化系
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = (FVar(30) >= 0.1666)






[state -1, ホーミング、空中上昇]
type = changestate
value = 4068
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command = "U"  
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = Statetype = A
triggerall = StateNo != 4100
trigger1 = ctrl
trigger2 = (StateNo = [600,699]) || StateNo = 962 || (StateNo = [1610,1640]) || (StateNo = [1660,1690]) || (StateNo = [1710,1740]) || (StateNo = [3015,3020])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (FVar(30) >= 0.1666)
trigger3 = (StateNo = [13120,13130]) || (StateNo = 13610) || (StateNo = [15600,15819])  ;ザロモン、メランコリア、聖カナ技
trigger3 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = (FVar(30) >= 0.1666)
trigger4 = (StateNo = 16260) || (StateNo = [16620,16699])  ;氷（スプレンギァ）、命のアルカナ状態変化系
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = (FVar(30) >= 0.1666)








[state -1, ホーミング、空中前方]
type = changestate
value = 4070
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command != "holdup"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = Statetype = A
triggerall = StateNo != 4100
trigger1 = ctrl
trigger2 = (StateNo = [600,699]) || StateNo = 962 || (StateNo = [1610,1640]) || (StateNo = [1660,1690]) || (StateNo = [1710,1740]) || (StateNo = [3015,3020])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (FVar(30) >= 0.1666)
trigger3 = (StateNo = [13120,13130]) || (StateNo = 13610) || (StateNo = [15600,15819])  ;ザロモン、メランコリア、聖カナ技
trigger3 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = (FVar(30) >= 0.1666)
trigger4 = (StateNo = 16260) || (StateNo = [16620,16699])  ;氷（スプレンギァ）、命のアルカナ状態変化系
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = (FVar(30) >= 0.1666)

[state -1, ホーミング、空中前方下降]
type = changestate
value = 4075
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = Statetype = A
triggerall = StateNo != 4100
trigger1 = ctrl
trigger2 = (StateNo = [600,699]) || StateNo = 962 || (StateNo = [1610,1640]) || (StateNo = [1660,1690]) || (StateNo = [1710,1740]) || (StateNo = [3015,3020])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (FVar(30) >= 0.1666)
trigger3 = (StateNo = [13120,13130]) || (StateNo = 13610) || (StateNo = [15600,15819])  ;ザロモン、メランコリア、聖カナ技
trigger3 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = (FVar(30) >= 0.1666)
trigger4 = (StateNo = 16260) || (StateNo = [16620,16699])  ;氷（スプレンギァ）、命のアルカナ状態変化系
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = (FVar(30) >= 0.1666)

[state -1, ホーミング、空中下降]
type = changestate
value = 4080
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "holddown"
triggerall = Statetype = A
triggerall = StateNo != 4100
trigger1 = ctrl
trigger2 = (StateNo = [600,699]) || StateNo = 962 || (StateNo = [1610,1640]) || (StateNo = [1660,1690]) || (StateNo = [1710,1740]) || (StateNo = [3015,3020])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (FVar(30) >= 0.1666)
trigger3 = (StateNo = [13120,13130]) || (StateNo = 13610) || (StateNo = [15600,15819])  ;ザロモン、メランコリア、聖カナ技
trigger3 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = (FVar(30) >= 0.1666)
trigger4 = (StateNo = 16260) || (StateNo = [16620,16699])  ;氷（スプレンギァ）、命のアルカナ状態変化系
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = (FVar(30) >= 0.1666)

[state -1, ホーミング、空中後方下降]
type = changestate
value = 4085
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command = "holddown"
triggerall = Statetype = A
triggerall = StateNo != 4100
trigger1 = ctrl
trigger2 = (StateNo = [600,699]) || StateNo = 962 || (StateNo = [1610,1640]) || (StateNo = [1660,1690]) || (StateNo = [1710,1740]) || (StateNo = [3015,3020])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (FVar(30) >= 0.1666)
trigger3 = (StateNo = [13120,13130]) || (StateNo = 13610) || (StateNo = [15600,15819])  ;ザロモン、メランコリア、聖カナ技
trigger3 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = (FVar(30) >= 0.1666)
trigger4 = (StateNo = 16260) || (StateNo = [16620,16699])  ;氷（スプレンギァ）、命のアルカナ状態変化系
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = (FVar(30) >= 0.1666)

[state -1, ホーミング、空中後方]
type = changestate
value = 4090
triggerall = Var(59) = 0
triggerall = (command = "a")&&(command = "holdback")&&(command != "holdup")&&(command != "holddown") || (Var(11) = 4090)
triggerall = Statetype = A
triggerall = StateNo != 4100
trigger1 = ctrl
trigger2 = (StateNo = [600,699]) || StateNo = 962 || (StateNo = [1610,1640]) || (StateNo = [1660,1690]) || (StateNo = [1710,1740]) || (StateNo = [3015,3020])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (FVar(30) >= 0.1666)
trigger3 = (StateNo = [13120,13130]) || (StateNo = 13610) || (StateNo = [15600,15819])  ;ザロモン、メランコリア、聖カナ技
trigger3 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = (FVar(30) >= 0.1666)
trigger4 = (StateNo = 16260) || (StateNo = [16620,16699])  ;氷（スプレンギァ）、命のアルカナ状態変化系
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = (FVar(30) >= 0.1666)

[state -1, ホーミング、空中後方上昇]
type = changestate
value = 4095
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command = "holdup"
triggerall = command = "holdback"
triggerall = Statetype = A
triggerall = StateNo != 4100
trigger1 = ctrl
trigger2 = (StateNo = [600,699]) || StateNo = 962 || (StateNo = [1610,1640]) || (StateNo = [1660,1690]) || (StateNo = [1710,1740]) || (StateNo = [3015,3020])
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger2 = (FVar(30) >= 0.1666)
trigger3 = (StateNo = [13120,13130]) || (StateNo = 13610) || (StateNo = [15600,15819])  ;ザロモン、メランコリア、聖カナ技
trigger3 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = (FVar(30) >= 0.1666)
trigger4 = (StateNo = 16260) || (StateNo = [16620,16699])  ;氷（スプレンギァ）、命のアルカナ状態変化系
trigger4 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger4 = (FVar(30) >= 0.1666)

;------------------------------------------------------------------------------
;ガードキャンセル、地上・前
[state -1]
type = changestate
value = 4500
triggerall = Var(59) = 0
triggerall = (FVar(30) >= 0.1666)
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = Statetype != A
trigger1 = StateNo = [150,159]

;ガードキャンセル、空中・前
[state -1]
type = changestate
value = 4550
triggerall = Var(59) = 0
triggerall = (FVar(30) >= 0.1666)
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = Statetype = A
trigger1 = StateNo = [150,159]

;ガードキャンセル、地上後ろ
[state -1]
type = changestate
value = 4030
triggerall = Var(59) = 0
triggerall = (FVar(30) >= 0.1666)
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = Statetype != A
trigger1 = StateNo = [150,159]

;ガードキャンセル、空中後ろ
[state -1]
type = changestate
value = 4590
triggerall = Var(59) = 0
triggerall = (FVar(30) >= 0.1666)
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = Statetype = A
trigger1 = StateNo = [150,159]








;------------------------------------------------------------------------------
[State -1, ダッシュジャンプ]
type = Changestate
value = 65
triggerall = Var(59) = 0
trigger1 = (StateNo = [100,104])
trigger1 = command = "U"
trigger1 = command = "holdfwd"

;------------------------------------------------------------------------------
[state -1, Jump]
type = changestate
value = 40
triggerall = Var(59) = 0
triggerall = command = "holdup"
triggerall = statetype != A
triggerall = (StateNo != 4000)
triggerall = (StateNo != 100)
trigger1 = ctrl
trigger2 = (StateNo = 200) || (StateNo = 210) || ((StateNo = [221,229]) && Var(6) != 2) || (StateNo = 435) || (StateNo = 439) || (StateNo = 400)
trigger2 = (MoveContact) || (MoveReversed) || (Var(15) = 1 && Var(19) <= 0)
trigger3 = (StateNo = [208,209]) || (StateNo = 219) || (StateNo = 229)
trigger3 = Var(19) <= 0

;------------------------------------------------------------------------------
[state -1, 空中ジャンプ1]
type = changestate
value = 45
triggerall = Var(59) = 0
triggerall = Var(2) = 0
triggerall = (command = "U") || command = "UF" || command = "UB"
triggerall = statetype = A
trigger1 = time >= 13
trigger1 = ctrl
trigger1 = (StateNo != [4100,4199])
trigger2 = StateNo = 600 || StateNo = 610 || StateNo = 650 
trigger2 = (MoveContact) || (MoveReversed)




[state -1, 空中ジャンプ2]
type = null;changestate
value = 45
triggerall = Var(59) = 0
triggerall = Var(2) = 0
triggerall = command = "holdup"
triggerall = statetype = A
trigger1 = StateNo = 600 || StateNo = 610 || StateNo = 650 
trigger1 = (MoveContact) || (MoveReversed)
trigger2 = Var(50) >= 1
trigger2 = StateNo = 620 || StateNo = 630 || stateno = 640
trigger2 = (MoveContact) || (MoveReversed)
trigger3 = Var(50) >= 1
trigger3 = StateNo = 630
trigger3 = Var(15) = 1

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;テスト

[State -1]
type = null;ChangeState
value = 195
;triggerall = Statetype != A
triggerall = Command = "b"
trigger1 = Ctrl
