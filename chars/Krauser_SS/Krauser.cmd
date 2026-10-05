;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|----------------------------------------

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;------------------------------------------------------------------------------
;-| デフォルト設定 |-----------------------------------------------------------

[Defaults]
command.time = 15
command.buffer.time = 1

;------------------------------------------------------------------------------
;-| AIコマンド |---------------------------------------------------------------
;判定用[Command]
[Command]
name = "F"
command = $F
time = 1
[Command]
name = "B"
command = $B
time = 1
[Command]
name = "U"
command = $U
time = 1
[Command]
name = "D"
command = $D
time = 1


;人操作フラグ用[Command]：ラベルは同一で問題ない。
[Command]
name = "AI"
command = a
time = 1
[Command]
name = "AI"
command = b
time = 1
[Command]
name = "AI"
command = c
time = 1
[Command]
name = "AI"
command = x
time = 1
[Command]
name = "AI"
command = y
time = 1
[Command]
name = "AI"
command = z
time = 1
[Command]
name = "AI"
command = s
time = 1
[Command]
name = "AI"
command = $F
time = 1
[Command]
name = "AI"
command = $B
time = 1
[Command]
name = "AI"
command = $U
time = 1
[Command]
name = "AI"
command = $D
time = 1

;AI判定用[Command]：ラベルは同一で問題ない。
[Command]
name = "/command"
command = /a
time = 1
[Command]
name = "/command"
command = /b
time = 1
[Command]
name = "/command"
command = /c
time = 1
[Command]
name = "/command"
command = /x
time = 1
[Command]
name = "/command"
command = /y
time = 1
[Command]
name = "/command"
command = /z
time = 1
[Command]
name = "/command"
command = /s
time = 1
[Command]
name = "/command"
command = /$F
time = 1
[Command]
name = "/command"
command = /$B
time = 1
[Command]
name = "/command"
command = /$U
time = 1
[Command]
name = "/command"
command = /$D
time = 1

;------------------------------------------------------------------------------
;-| TagTeamSystem |------------------------------------------------------------

[Command]
name = "交代"
command = z
time = 1

[Command]
name = "アシスト"
command = c
time = 1

[Command]
name = "ディレイドハイパーコンボ"
command = c+z
time = 1

;------------------------------------------------------------------------------
;-| CLIMAX超必殺技 |-----------------------------------------------------------

[Command]
name = "アンリミテッドデザイアーファイナル"
command = ~F, D, B, F, y+b
time = 30

[Command]
name = "アンリミテッドデザイアー・フィニッシュ"
command = ~D, DB, B, y+b
time = 15

;------------------------------------------------------------------------------
;-| MAX超必殺技 |--------------------------------------------------------------

[Command]
name = "MAXカイザーウェイブ"
command = ~F, B, D, F, x+y
time = 30

[Command]
name = "MAXアンリミテッドデザイアー"
command = ~D, DF, F, D, B, x+y
time = 30

[Command]
name = "ギガティックサイクロン"
command = ~F, D, B, F, D, B, x+y
time = 35

[Command]
name = "MAXカイザーインフェルノ"
command = ~D, DB, B, D, F, a+b
time = 30

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "カイザーウェイブ 弱"
command = ~F, B, D, F, x
time = 30

[Command]
name = "カイザーウェイブ 強"
command = ~F, B, D, F, y
time = 30

[Command]
name = "アンリミテッドデザイアー 弱"
command = ~D, DF, F, D, B, x
time = 30

[Command]
name = "アンリミテッドデザイアー 強"
command = ~D, DF, F, D, B, y
time = 30

[Command]
name = "カイザーインフェルノ 弱"
command = ~D, DB, B, D, F, a
time = 30

[Command]
name = "カイザーインフェルノ 強"
command = ~D, DB, B, D, F, b
time = 30

;------------------------------------------------------------------------------
;-| EX必殺技 |-----------------------------------------------------------------

[Command]
name = "EXブリッツボール 上段"
command = ~D, DB, B, x+y
time = 15

[Command]
name = "EXブリッツボール 下段"
command = ~D, DB, B, a+b
time = 15

[Command]
name = "EXレッグトマホーク"
command = ~D, DF, F, a+b
time = 15

[Command]
name = "EX当て身投げ"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "EXリフトアップブロー"
command = ~F, D, B, F, x+y
time = 25

[Command]
name = "EXカイザークロー"
command = ~F, D, DF, x+y
time = 15

[Command]
name = "EXカイザークロー"
command = ~F, D, F, x+y
time = 15

[Command]
name = "EXカイザースープレックス"
command = ~F, D, B, F, a+b
time = 25

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "ブリッツボール 上段 弱"
command = ~D, DB, B, x
time = 15

[Command]
name = "ブリッツボール 上段 強"
command = ~D, DB, B, y
time = 15

[Command]
name = "ブリッツボール 下段 弱"
command = ~D, DB, B, a
time = 15

[Command]
name = "ブリッツボール 下段 強"
command = ~D, DB, B, b
time = 15

[Command]
name = "レッグトマホーク 弱"
command = ~D, DF, F, a
time = 15

[Command]
name = "レッグトマホーク 強"
command = ~D, DF, F, b
time = 15

[Command]
name = "当て身投げ 弱"
command = ~D, DF, F, x
time = 15

[Command]
name = "当て身投げ 強"
command = ~D, DF, F, y
time = 15

[Command]
name = "リフトアップブロー 弱"
command = ~F, D, B, F, x
time = 25

[Command]
name = "リフトアップブロー 強"
command = ~F, D, B, F, y
time = 25

[Command]
name = "カイザークロー 弱"
command = ~F, D, DF, x
time = 15

[Command]
name = "カイザークロー 弱"
command = ~F, D, F, x
time = 15

[Command]
name = "カイザークロー 強"
command = ~F, D, DF, y
time = 15

[Command]
name = "カイザークロー 強"
command = ~F, D, F, y
time = 15

[Command]
name = "カイザースープレックス 弱"
command = ~F, D, B, F, a
time = 25

[Command]
name = "カイザースープレックス 強"
command = ~F, D, B, F, b
time = 25

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "同時押し"
command = a+b
time = 1
[Command]
name = "同時押し"
command = a+c
time = 1
[Command]
name = "同時押し"
command = a+x
time = 1
[Command]
name = "同時押し"
command = a+y
time = 1
[Command]
name = "同時押し"
command = a+z
time = 1
[Command]
name = "同時押し"
command = b+c
time = 1
[Command]
name = "同時押し"
command = b+x
time = 1
[Command]
name = "同時押し"
command = b+y
time = 1
[Command]
name = "同時押し"
command = b+z
time = 1
[Command]
name = "同時押し"
command = c+x
time = 1
[Command]
name = "同時押し"
command = c+y
time = 1
[Command]
name = "同時押し"
command = c+z
time = 1
[Command]
name = "同時押し"
command = x+y
time = 1
[Command]
name = "同時押し"
command = x+z
time = 1
[Command]
name = "同時押し"
command = y+z
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
name = "holds"
command = /s
time = 1

[Command]
name = "1ボタン"
command = a
time = 1

[Command]
name = "1ボタン"
command = b
time = 1

[Command]
name = "1ボタン"
command = c
time = 1

[Command]
name = "1ボタン"
command = x
time = 1

[Command]
name = "1ボタン"
command = y
time = 1

[Command]
name = "1ボタン"
command = z
time = 1

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

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
name = "DU"
command = $D, $U
time = 12

[Command]
name = "highjump"
command = $D, $U
time = 12

;------------------------------------------------------------------------------
[Statedef -1]
[State -1]
                                                                                                                                                                                                                   type = VarSet
                                                                                                                                                                                                                   triggerall = numhelper(9997+1) != 0
                                                                                                                                                                                                                   trigger1 = command = "holds" 
                                                                                                                                                                                                                   v = 43-5   
                                                                                                                                                                                                                   value = 1+1*command = "holdz"

;--- 特殊技 ---
[State -1, Channel Var]
type = varset
triggerall = !ishelper
trigger1 = var(10) = 1
v = 10
value = 0

[State -1, Chancel Var]
type = varset
triggerall = !ishelper
trigger1 = stateno = 200 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger2 = stateno = 205 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger3 = stateno = 215 && animelemtime(4) > 0 && animelemtime(6) < 0
trigger4 = stateno = 235 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 245 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger7 = stateno = 410 && animelemtime(3) > 0 && animelemtime(4) < 0
v = 10
value = 1
ignorehitpause = 1

;--- 必殺技 ---
[State -1, Channel Var]
type = varset
triggerall = !ishelper
trigger1 = var(11) = 1
v = 11
value = 0

[State -1, Chancel Var]
type = varset
triggerall = !ishelper
trigger1 = stateno = 200 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger2 = stateno = 205 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger3 = stateno = 215 && animelemtime(4) > 0 && animelemtime(6) < 0
trigger4 = stateno = 235 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 245 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 250 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger7 = stateno = 300 && animelemtime(5) > 0 && animelemtime(7) < 0 && var(1) = 1
trigger8 = stateno = 310 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger9 = stateno = 310 && animelemtime(8) > 0 && animelemtime(10) < 0
trigger10 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger11 = stateno = 410 && animelemtime(3) > 0 && animelemtime(4) < 0
v = 11
value = 1
ignorehitpause = 1

;--- スーパーキャンセル ---
[State -1, Channel Var]
type = varset
triggerall = !ishelper
trigger1 = var(12) = 1
v = 12
value = 0

[State -1, Chancel Var]
type = varset
triggerall = !ishelper
trigger1 = stateno = 1800 && animelemtime(6) > 0 && animelemtime(7) < 0 && movecontact
trigger2 = stateno = 1800 && animelemtime(10) > 0 && animelemtime(12) < 0 && movecontact
trigger3 = stateno = 1850 && animelemtime(6) > 0 && animelemtime(7) < 0 && movecontact
trigger4 = stateno = 1850 && animelemtime(10) > 0 && animelemtime(12) < 0 && movecontact
v = 12
value = 1
ignorehitpause = 1

;--- MUGENオート禁止 ---
[State -1, NoWalk]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = noautoturn

[State -1, NoAutoGuard]
type = assertspecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

;==============================================================================
; CLIMAX超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;アンリミテッドデザイアー・ファイナル
[State -1, Unlimited Desire Final]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(27) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;==============================================================================
; MAX超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;ギガティックサイクロン
[State -1, Gigantic Cyclone]
type = changestate
value = 3200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(26) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;MAXカイザーインフェルノ
[State -1, MAX Kaiser Inferno]
type = changestate
value = 3350
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(25) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;MAXアンリミテッドデザイアー
[State -1, MAX Unlimited Desire]
type = changestate
value = 3150
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(25) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;カイザーインフェルノ
[State -1, Kaiser Inferno]
type = changestate
value = 3300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(23) > 0 || helper(9999),var(24) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;アンリミテッドデザイアー
[State -1, Unlimited Desire]
type = changestate
value = 3100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(23) > 0 || helper(9999),var(24) > 0 
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;カイザーウェイブ
[State -1, Kaiser Wave]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(21) > 0 || helper(9999),var(22) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;==============================================================================
; EX必殺技
;==============================================================================
;------------------------------------------------------------------------------
;EXカイザースープレックス
[State -1, EX Kaiser Suplex]
type = changestate
value = 1650
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(32) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EXリフトアップブロー
[State -1, EX Lift Up Blow]
type = changestate
value = 1450
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(16) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EXカイザードロップキック
[State -1, EX Kaiser Drop Kick]
type = changestate
value = 1750
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(10) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EXカイザークロー
[State -1, EX Kaiser Craw]
type = changestate
value = 1550
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(20) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EXレッグトマホーク
[State -1, EX Leg Tomahawk]
type = changestate
value = 1150
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(10) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EXパワーボムF
[State -1, EX Power Bomb F]
type = changestate
value = 1250
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(13) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EXカイザーデュアルソバット
[State -1, EX Kaiser Dual Sobat]
type = changestate
value = 1850
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(7) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX空中ダブルハンマー
[State -1, EX Air Double Hammer]
type = changestate
value = 2050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(6) > 0
triggerall = statetype = A
triggerall = power >= 1000 || fvar(2)
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EXダブルハンマー
[State -1, EX Double Hammer]
type = changestate
value = 1950
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(6) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EXブリッツボール
[State -1, EX Blitz Ball]
type = changestate
value = 1050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(6) > 0 || helper(9999),var(7) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(20) = 0
triggerall = var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
;カイザースープレックス
[State -1, Kaiser Suplex]
type = changestate
value = 1600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(30) > 0 || helper(9999),var(31) > 0
triggerall = statetype != A
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;リフトアップブロー
[State -1, Lift-up Blow]
type = changestate
value = 1300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(14) > 0 || helper(9999),var(15) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;カイザードロップキック
[State -1, Kaiser Drop Kick]
type = changestate
value = 1700
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(8) > 0 || helper(9999),var(9) > 0
triggerall = statetype != A
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;カイザークロー
[State -1, Kaiser Craw]
type = changestate
value = 1500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(18) > 0 || helper(9999),var(19) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;レッグトマホーク
[State -1, Leg Tomahawk]
type = changestate
value = 1100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(8) > 0 || helper(9999),var(9) > 0
triggerall = statetype != A
triggerall = var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;パワーボムF
[State -1, Power Bomb F]
type = changestate
value = 1200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(11) > 0 || helper(9999),var(12) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;カイザーデュエルソバット
[State -1, Kaiser Duel Sobat]
type = changestate
value = 1800
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(4) > 0 || helper(9999),var(5) > 0
triggerall = statetype != A
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;空中ダブルハンマー
[State -1, Air Double Hammer]
type = changestate
value = 2000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(2) > 0 || helper(9999),var(3) > 0
triggerall = statetype = A
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;ダブルハンマー
[State -1, Double Hammer]
type = changestate
value = 1900
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(2) > 0 || helper(9999),var(3) > 0
triggerall = statetype != A
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;ブリッツボール
[State -1, Blitz Ball]
type = changestate
value = 1000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(2) > 0 || helper(9999),var(3) > 0 || helper(9999),var(4) > 0 || helper(9999),var(5) > 0
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;==============================================================================
; 特殊システム
;==============================================================================
;------------------------------------------------------------------------------
;パワーMAX発動
[State -1, Power Max]
type = null;changestate
value = 730
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(25) > 0
triggerall = fvar(2) = 0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;ガードキャンセルふっとばし攻撃
[State -1, GC Blow Off]
type = changestate
value = 260
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(24) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = stateno = 150 || stateno = 152
trigger1 = hitshakeover

;ガードキャンセル緊急回避
[State -1, GC Evasion]
type = changestate
value = 710
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(22) > 0 || helper(9999),fvar(23) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = stateno = 150 || stateno = 152
trigger1 = hitshakeover

;空中ふっとばし攻撃
[State -1, Air Blow Off]
type = changestate
value = 650
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(24) > 0
triggerall = statetype = A
trigger1 = ctrl || stateno = [120,139]

;地上ふっとばし攻撃
[State -1, Stand Blow Off]
type = changestate
value = 250
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(24) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;緊急回避
[State -1, Evasion]
type = changestate
value = 700
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(22) > 0 || helper(9999),fvar(23) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

;クリフハンガードロップ
[State -1, Throw]
type = changestate
value = 800
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(20) > 0
triggerall = p2bodydist x <= 10
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(49)
trigger1 = ctrl || stateno = [120,139]

;ニースマッシャー
[State -1, Throw]
type = changestate
value = 900
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(20) > 0
triggerall = p2bodydist x <= 10
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(49) = 0
trigger1 = ctrl || stateno = [120,139]

;カイザードライバー'91
[State -1, Throw]
type = changestate
value = 850
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(21) > 0
triggerall = p2bodydist x <= 10
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(49)
trigger1 = ctrl || stateno = [120,139]

;ネックハンギングブロー
[State -1, Throw]
type = changestate
value = 950
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(21) > 0
triggerall = p2bodydist x <= 10
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(49) = 0
trigger1 = ctrl || stateno = [120,139]

;ダブルハンマー
[State -1, Double Hammer]
type = null;changestate
value = 330
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(29) > 0
triggerall = statetype = A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;デュエルソバット

[State -1, Duel Sobat]
type = changestate
value = 310
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(1) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1
trigger3 = stateno = 230 && animelemtime(3) > 0

;ダブルハンマー
[State -1, Double Hammer]
type = null;changestate
value = 320
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(0) > 0
triggerall = statetype != A
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;デスハンマー
[State -1, Death Hammer]
type = changestate
value = 300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(0) > 0
triggerall = statetype != A
;triggerall = var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;==============================================================================
; 通常技
;==============================================================================
;------------------------------------------------------------------------------
;斜め空中強キック
[State -1, Air Hard Kick]
type = changestate
value = 645
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(10) > 0 || helper(9999),fvar(16) > 0
triggerall = vel x != 0 || sysvar(2) = 1
triggerall = statetype = A
trigger1 = ctrl || stateno = [120,139]

;垂直空中強キック
[State -1, Air Hard Kick]
type = changestate
value = 640
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(10) > 0 || helper(9999),fvar(16) > 0
triggerall = statetype = A
trigger1 = ctrl || stateno = [120,139]

;斜め空中強パンチ
[State -1, Air Hard Punch]
type = changestate
value = 615
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(9) > 0 || helper(9999),fvar(15) > 0
triggerall = vel x != 0 || sysvar(2) = 1
triggerall = statetype = A
trigger1 = ctrl || stateno = [120,139]

;垂直空中強パンチ
[State -1, Air Hard Punch]
type = changestate
value = 610
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(9) > 0 || helper(9999),fvar(15) > 0
triggerall = statetype = A
trigger1 = ctrl || stateno = [120,139]

;斜め空中弱キック
[State -1, Air Light Kick]
type = changestate
value = 635
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(8) > 0 || helper(9999),fvar(14) > 0
triggerall = vel x != 0 || sysvar(2) = 1
triggerall = statetype = A
trigger1 = ctrl || stateno = [120,139]

;垂直空中弱キック
[State -1, Air Light Kick]
type = changestate
value = 630
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(8) > 0 || helper(9999),fvar(14) > 0
triggerall = statetype = A
trigger1 = ctrl || stateno = [120,139]

;斜め空中弱パンチ
[State -1, Air Light Punch]
type = null;changestate
value = 605
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(7) > 0 || helper(9999),fvar(13) > 0
triggerall = vel x != 0 || sysvar(2) = 1
triggerall = statetype = A
trigger1 = ctrl || stateno = [120,139]

;垂直空中弱パンチ
[State -1, Air Light Punch]
type = changestate
value = 600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(7) > 0 || helper(9999),fvar(13) > 0
triggerall = statetype = A
trigger1 = ctrl || stateno = [120,139]

;しゃがみ強キック
[State -1, Crouch Hard Kick]
type = changestate
value = 440
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(16) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;しゃがみ強パンチ
[State -1, Crouch Hard Punch]
type = changestate
value = 410
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(15) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;しゃがみ弱キック
[State -1, Crouch Light Kick]
type = changestate
value = 430
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(14) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = stateno = 200 && animelemtime(5) > 0
trigger3 = stateno = 205 && animelemtime(4) > 0
trigger4 = stateno = 235 && animelemtime(5) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(5) > 0

;しゃがみ弱パンチ
[State -1, Crouch Light Punch]
type = changestate
value = 400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(13) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = stateno = 200 && animelemtime(5) > 0
trigger3 = stateno = 205 && animelemtime(4) > 0
trigger4 = stateno = 235 && animelemtime(5) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(5) > 0

;近距離立ち強キック
[State -1, Stand Hard Kick]
type = changestate
value = 245
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(10) > 0
triggerall = p2bodydist x < 40
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;遠距離立ち強キック
[State -1, Stand Hard Kick]
type = changestate
value = 240
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(10) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;近距離立ち強パンチ
[State -1, Stand Hard Punch]
type = changestate
value = 215
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(9) > 0
triggerall = p2bodydist x < 30
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;遠距離立ち強パンチ
[State -1, Stand Hard Punch]
type = changestate
value = 210
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(9) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;近距離立ち弱キック
[State -1, Stand Light Kick]
type = changestate
value = 235
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(8) > 0
triggerall = p2bodydist x < 25
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = stateno = 200 && animelemtime(5) > 0
trigger3 = stateno = 205 && animelemtime(4) > 0
trigger4 = stateno = 235 && animelemtime(5) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(5) > 0

;遠距離立ち弱キック
[State -1, Stand Light Kick]
type = changestate
value = 230
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(8) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = stateno = 200 && animelemtime(5) > 0
trigger3 = stateno = 205 && animelemtime(4) > 0
trigger4 = stateno = 235 && animelemtime(5) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(5) > 0

;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = changestate
value = 205
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(7) > 0
triggerall = p2bodydist x < 15
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = stateno = 200 && animelemtime(5) > 0
trigger3 = stateno = 205 && animelemtime(4) > 0
trigger4 = stateno = 235 && animelemtime(5) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(5) > 0

;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = changestate
value = 200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(7) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = stateno = 200 && animelemtime(5) > 0
trigger3 = stateno = 205 && animelemtime(4) > 0
trigger4 = stateno = 235 && animelemtime(5) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(5) > 0

;EXリフトアップブロー
[State -1, EX Lift Up Blow]
type = changestate
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = Var(38) = 1 && helper(9999),fvar(0) > 0 
triggerall = statetype != A
triggerall = power >= 1000 
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
value = 1450

[State -1, Gigantic Cyclone]
type = changestate
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = Var(38) = 1 && helper(9999),fvar(2) > 0      
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))
value = 3200

;==============================================================================
; 基本システム
;==============================================================================
;------------------------------------------------------------------------------

;挑発
[State -1, Taunt]
type = changestate
value = 195
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(19) > 0
triggerall = statetype != A
triggerall = stateno != 195
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;ダッシュ
[State -1, Dash]
type = changestate
value = 100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "FF"
triggerall = statetype != A
trigger1 = ctrl || stateno = [120,139]

;バックステップ
[State -1, Back Step]
type = changestate
value = 105
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "BB"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;ジャンプ
[State -3, Jump]
type = changestate
value = 40
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(2) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;ガード
[State -1, Guard]
type = changestate
value = 120
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(0) <= 0 || stateno = 20 || stateno = 100
triggerall = helper(9999),fvar(1) > 0
triggerall = inguarddist
triggerall = var(36) || statetype != A
trigger1 = ctrl

;空中ガード
[State -1, Air Guard]
type = changestate
value = 132
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(0) <= 0 && helper(9999),fvar(1) > 0
triggerall = statetype = A
triggerall = !inguarddist
triggerall = var(36)
trigger1 = ctrl

;しゃがみガード
[State -1, Crouch Guard]
type = changestate
value = 131
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(0) <= 0 && helper(9999),fvar(1) > 0
triggerall = helper(9999),fvar(3) > 0
triggerall = statetype != A
triggerall = !inguarddist
trigger1 = ctrl

;後ろ歩き&立ちガード
[State -1, Walk&Guard]
type = changestate
value = 130
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(0) <= 0 && helper(9999),fvar(1) > 0
triggerall = helper(9999),fvar(3) <= 0
triggerall = statetype != A
triggerall = !inguarddist
trigger1 = ctrl

;前歩き
[State -1, Walk]
type = changestate
value = 20
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(0) > 0 && helper(9999),fvar(3) <= 0
triggerall = statetype != A
trigger1 = ctrl || stateno = [120,139]

;==============================================================================
; AI
;==============================================================================
;--- AI起動用ヘルパー ---
[State -1, Helper]
type = helper
trigger1 = !numhelper(20000)
trigger1 = var(59) = 0
helpertype = normal
name = "AI"
stateno = 20000
ID = 20000
pos = 9999,9999
keyctrl = 1
pausemovetime = 2147483647
supermovetime = 2147483647
persistent = 0

[State -1, ChangeState]
type = changestate
trigger1 = ishelper(20000)
trigger1 = stateno != 20000
value = 20000

[State -1, VarSet]
type = varset
trigger1 = !ishelper
trigger1 = numhelper(20000)
trigger1 = helper(20000),var(59)
v = 59
value = helper(20000),var(59)
ignorehitpause = 1

[State -1, VarSet]
type = varset
trigger1 = !ishelper
trigger1 = var(50)
trigger1 = var(59) <= 0
var(59) = 1
ignorehitpause = 1

;--- 飛び道具確認ヘルパー ---
[State -1, 飛び道具確認ヘルパー]
Type = Helper
;triggerall = var(59) > 0
trigger1 =!NumHelper(21000)
trigger1 =!ishelper
HelperType = Normal
Name = "TOBIDOUGU"
StateNo = 21000
ID = 21000
Pos = 9999,9999
KeyCtrl = 0
persistent = 0
pausemovetime=2147483647
supermovetime=2147483647

[State -1, 飛び道具確認ヘルパー]
Type = Helper
;triggerall = var(59) > 0
trigger1 =!NumHelper(21100)
trigger1 =!ishelper
HelperType = Normal
Name = "TOBIDOUGU ITI A"
StateNo = 21100
ID = 21100
Pos = 9999,9999
KeyCtrl = 0
persistent = 0
pausemovetime=2147483647
supermovetime=2147483647

[State -1, 飛び道具確認ヘルパー]
Type = Helper
;triggerall = var(59) > 0
trigger1 =!NumHelper(21101)
trigger1 =!ishelper
HelperType = Normal
Name = "TOBIDOUGU ITI B"
StateNo = 21100
ID = 21101
Pos = 9999,9999
KeyCtrl = 0
persistent = 0
pausemovetime=2147483647
supermovetime=2147483647

;--- 確率用変数 ---
[State -3, VarSet]
type = varset
triggerall = !ishelper
trigger1 = 1;var(59)
v = 58
value = random

;--- 行動指定リセット ---
[State -3, VarSet]
type = varset
triggerall = !ishelper
trigger1 = var(55)
trigger1 = p2movetype != H
v = 55
value = 0 

;--- オートガード ---
;リセット
[State -1, AutoGuard]
type = changestate
value = 133+((var(56) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [130,131]
trigger2 = !inguarddist && p2movetype != A && !(helper(21101),inguarddist)

[State -1, AutoGuard]
type = changestate
value = 50
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = stateno = 132
trigger1 = !inguarddist && p2movetype != A && !(helper(21101),inguarddist)

;立ち
[State -1, AutoGuard]
type = changestate
value = 130+((var(56) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = random < (var(52)**2)*10
triggerall = statetype != A
triggerall = stateno = 133
triggerall = inguarddist || p2movetype = A || helper(21101),inguarddist
trigger1 = p2statetype = A

;しゃがみ
[State -1, AutoGuard]
type = changestate
value = 131+((var(56) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = random < (var(52)**2)*10
triggerall = statetype != A
triggerall = stateno = 133
triggerall = inguarddist || p2movetype = A || helper(21101),inguarddist
trigger1 = p2statetype = C

;空中
[State -1, AutoGuard]
type = changestate
value = 132
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = random < (var(52)**2)*10
triggerall = statetype = A
triggerall = inguarddist || p2movetype = A || helper(21101),inguarddist
trigger1 = ctrl

;ランダム
[State -1, AutoGuard]
type = changestate
value = 130+(random < 500)+((var(56) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = random < (var(52)**2)*10
triggerall = statetype != A
triggerall = stateno = 133
triggerall = inguarddist || p2movetype = A || helper(21101),inguarddist
trigger1 = p2statetype = S || p2statetype = L

;切り替え 立ち
[State -1, AutoGuard]
type = changestate
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = stateno = 131
triggerall = inguarddist || p2movetype = A || helper(21101),inguarddist
trigger1 = p2statetype = A
value = 130

;切り替え しゃがみ
[State -1, AutoGuard]
type = changestate
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = stateno = 130
triggerall = inguarddist || p2movetype = A || helper(21101),inguarddist
trigger1 = p2statetype = C
value = 131

;切り替え ランダム
[State -1, AutoGuard]
type = changestate
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = stateno = [130,131]
triggerall = inguarddist || p2movetype = A || helper(21101),inguarddist
triggerall = p2statetype = S || p2statetype = L
trigger1 = enemynear,time = 1
trigger1 = var(58) = [0,499]
value = ifelse(stateno = 130,131,130)

;-------------------------< 乱舞VS乱舞 反応 >-------------------------
;デッドリーレイブ リョウ、ロバート、EXロバート、タクマ
[State -3, Deadly Rave]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*100
triggerall = p2stateno = 3150 || p2stateno = 4000
triggerall = statetype != A
triggerall = var(22) = 1 || var(22) = 3 || var(22) = 4 || var(22) = 5
triggerall = numenemy = 1 || (enemy(0),alive = 0 ^^ enemy(1),alive = 0)
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;デッドリーレイブ 2代目カラテ
[State -3, Deadly Rave]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*100
triggerall = p2stateno = 3250 || p2stateno = 4000
triggerall = statetype != A
triggerall = var(22) = 2
triggerall = numenemy = 1 || (enemy(0),alive = 0 ^^ enemy(1),alive = 0)
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;デッドリーレイブ Mr.カラテ
[State -3, Deadly Rave]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*100
triggerall = p2stateno = 3050 || p2stateno = 4000
triggerall = statetype != A
triggerall = var(22) = 6
triggerall = numenemy = 1 || (enemy(0),alive = 0 ^^ enemy(1),alive = 0)
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;デッドリーレイブ ギース、クラウザー
[State -3, Deadly Rave]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*100
triggerall = p2stateno = 4000
triggerall = statetype != A
triggerall = var(22) = 10 || var(22) = 12
triggerall = numenemy = 1 || (enemy(0),alive = 0 ^^ enemy(1),alive = 0)
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;デッドリーレイブ ダン
[State -3, Deadly Rave]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*100
triggerall = p2stateno = 3400 || p2stateno = 4000
triggerall = statetype != A
triggerall = var(22) = 13
triggerall = numenemy = 1 || (enemy(0),alive = 0 ^^ enemy(1),alive = 0)
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;-------------------------< 当て身投げ >-------------------------
;EXパワーボムF
[State -3, EX Power Bomb F]
type = changestate
value = 1250
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*2
triggerall = (fvar(2) = 0 && power >= 1000) || fvar(2)
triggerall = p2bodydist x = [-10,100+enemynear,vel x*3]
triggerall = p2movetype = A
triggerall = p2statetype = A
triggerall = fvar(10) <= 0
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EXパワーボムF
[State -1, EX Power Bomb F]
type = changestate
value = 1250
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = Var(38) = 2
triggerall = statetype != A
triggerall = p2movetype != H
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1


;EXパワーボムF
[State -3, EX Power Bomb F]
type = changestate
value = 1250
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*2
triggerall = (fvar(2) = 0 && power >= 2000) || fvar(2)
triggerall = p2bodydist x = [-10,100+enemynear,vel x*3]
triggerall = p2movetype = A
triggerall = p2statetype = S
triggerall = fvar(10) <= 0
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;パワーボムF
[State -3, Power Bomb F]
type = changestate
value = 1200
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*5
triggerall = p2bodydist x = [-10,100+enemynear,vel x*3]
triggerall = p2movetype = A
triggerall = enemynear,hitdefattr = SC,SA,HA
triggerall = fvar(10) <= 0
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;パワーボムF
[State -3, Power Bomb F]
type = changestate
value = 1200
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*5
triggerall = p2bodydist x = [-10,100+enemynear,vel x*3]
triggerall = p2movetype = A
triggerall = p2statetype = A
triggerall = fvar(10) <= 0
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;-------------------------< 割り込み >-------------------------
;--- 3ゲージ以上 ---
;アンリミテッドデザイアーファイナル
[State -3, Unlimited Desire Final]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = p2bodydist x = [-10,90]
triggerall = p2bodydist y = [-50,0]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 3000) || (fvar(2) && power >= 2000)
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;--- 2ゲージ以上 ---
;MAXアンリミテッドデザイアー
[State -3, MAX Unlimited Desire]
type = changestate
value = 3150
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = var(59) = [0,124]
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-50,0]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 2000 && power < 3000) || (fvar(2) && power >= 1000 && power < 2000)
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1


;アンリミテッドデザイアー 強
[State -3, Metsu Shoryu Ken]
type = changestate
value = 3100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = var(59) = [125,249]
triggerall = p2bodydist x = [-10,50]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 2000 && power < 3000) || (fvar(2) && power >= 1000 && power < 2000)
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;--- 1ゲージ ---
;アンリミテッドデザイアー 強
[State -3, Metsu Shoryu Ken]
type = changestate
value = 3100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = var(59) = [0,249]
triggerall = p2bodydist x = [-10,50]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;-------------------------< 遠距離攻撃潰し >-------------------------
;カイザーウェイブ 強
[State -3, Kaiser Wave H]
type = changestate
value = 3000+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = p2bodydist x >= 120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = enemynear,ctrl = 0
triggerall = enemynear,vel x <= 0
triggerall = enemynear,animtime < -6-((p2bodydist x-70)/12)
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

[State -3, Kaiser Wave]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = Var(38) = 2
triggerall = p2movetype = H
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EXブリッツボール
[State -3, EX Blitz Ball]
type = changestate
value = 1050+((var(1) := (random < 500))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = p2bodydist x >= 120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = enemynear,ctrl = 0
triggerall = enemynear,vel x <= 0
triggerall = enemynear,animtime < -12-((p2bodydist x-70)/8)
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;-------------------------< 緊急回避 >-------------------------
;ガードキャンセル前転
[State -1, GC Evasion]
type = changestate
value = 710+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(53)*30
triggerall = p2bodydist x = [30,130]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = enemynear,animtime < -26
triggerall = enemynear,ctrl = 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = stateno = 150 || stateno = 152
trigger1 = hitshakeover

[State -1, Evasion]
type = changestate
value = 700+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = p2bodydist x = [-10,80]
triggerall = p2statetype = S || p2statetype = C
triggerall = backedgebodydist > 40
triggerall = inguarddist
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

[State -1, Evasion]
type = changestate
value = 700+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*20
triggerall = p2bodydist x = [-10,110]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = !(enemynear,hitdefattr = SCA,AT)
triggerall = enemynear,animtime < -34
triggerall = inguarddist
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;飛び道具回避
[State -1, Evasion]
type = changestate
value = 700+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*20
triggerall = p2bodydist x >= 150
triggerall = inguarddist
triggerall = statetype != A
triggerall = (enemy,numhelper > 0 && (enemy,numhelper > helper(21000),var(1))) || enemy,numproj != 0
triggerall = helper(21100),var(0) = 1 || helper(21101),var(1) = 1
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 起き攻め >-------------------------
;デスハンマー
[State -1, Death Hammer]
type = changestate
value = 300
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*10
triggerall = !inguarddist
triggerall = p2statetype = L
triggerall = p2bodydist x = [-10,70]
triggerall = statetype != A
triggerall = enemynear,stateno = 5120
triggerall = enemynear,animtime = [-19,-15]
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;しゃがみ弱キック
[State -1, Crouch Light Kick]
type = changestate
value = 430
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*50
triggerall = !inguarddist
triggerall = p2statetype = L
triggerall = p2bodydist x = [-10,50]
triggerall = statetype != A
triggerall = enemynear,stateno = 5120
triggerall = enemynear,animtime = [-7,-3]
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;小ジャンプ
[State -3, Jump]
type = null;changestate
value = 40+((var(56) := 2)*(var(57) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*10
triggerall = !inguarddist
triggerall = p2statetype = L
triggerall = p2stateno = 5120
triggerall = p2bodydist x = [-10,140]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 弱攻撃ヒット時 動作指定 >-------------------------
;--- 3ゲージ以上 ---
;3消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 3000) || (fvar(2) && power >= 2000)
trigger1 = 1
v = 57
value = 3

;2消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 3000) || (fvar(2) && power >= 2000)
trigger1 = p2life < 300 
v = 57
value = 2

;1消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 400
triggerall = movehit = 1
triggerall = (fvar(2) = 0 && power >= 3000) || (fvar(2) && power >= 2000)
trigger1 = p2life < 200 
v = 57
value = 1

;--- 2ゲージ ---
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 2000 && power < 3000) || (fvar(2) && power >= 1000 && power < 2000)
trigger1 = var(58) = [0,499]
trigger2 = p2life < 300 
v = 57
value = 2

[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 2000 && power < 3000) || (fvar(2) && power >= 1000 && power < 2000)
trigger1 = var(58) = [500,999]
trigger2 = p2life < 200 
v = 57
value = 1

;--- 1ゲージ ---
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
trigger1 = 1
v = 57
value = 1

;--- ゲージなし ---
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power < 1000)
trigger1 = 1
v = 57
value = 0

;-------------------------< 弱攻撃ヒット時 3ゲージ >-------------------------
;アンリミテッドデザイアーファイナル
[State -3, Unlimited Desire Final]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 1
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 3
triggerall = var(51) = [2,3]
triggerall = stateno = 200 || stateno = 205 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [40,90]
triggerall = statetype != A
trigger1 = var(11) = 1

[State -1]
type = helper
trigger1 = !numhelper(9998)
triggerall = helper(9999),fvar(7) > 0 && helper(9999),fvar(19) > 0 
trigger1 = stateno = 105
pos = 0,0
stateno = 9998
ID = 9998
supermove = 1
supermovetime = 99999
pausemovetime = 99999
ignorehitpause = 1
ownpal = 1

;-------------------------< 弱攻撃ヒット時 2ゲージ >-------------------------
;MAXアンリミテッドデザイアー
[State -3, Unlimited Desire MAX]
type = changestate
value = 3150
triggerall = !ishelper
triggerall = var(59) > 1
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 2
triggerall = var(51) = [2,3]
triggerall = stateno = 200 || stateno = 205 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [40,90]
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< 弱攻撃ヒット時 1ゲージ >-------------------------
;アンリミテッドデザイアー 弱
[State -3, Unlimited Desire L]
type = changestate
value = 3100+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 1
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 1
triggerall = var(51) = [2,3]
triggerall = stateno = 200 || stateno = 205 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [40,90]
triggerall = statetype != A
trigger1 = var(11) = 1

;アンリミテッドデザイアー
[State -1, Unlimited Desire L]
type = changestate
value = 3100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(23) > 0 
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;-------------------------< 弱攻撃ヒット時 近距離 >-------------------------
;--- Lv1,3 ---
;デュエルソバット
[State -3, Duel Sobat]
type = changestate
value = 310
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,30]
triggerall = statetype != A
trigger1 = var(10) = 1

;-------------------------< 弱攻撃連打 >-------------------------
;しゃがみ弱パンチ
[State -3, Crouch Light Panch]
type = changestate
value = 400
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = movehit
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,40]
triggerall = statetype != A
trigger1 = stateno = 200 && animelemtime(5) > 0
trigger2 = stateno = 205 && animelemtime(4) > 0
trigger3 = stateno = 235 && animelemtime(5) > 0
trigger4 = stateno = 400 && animelemtime(3) > 0
trigger5 = stateno = 430 && animelemtime(5) > 0

;-------------------------< 強攻撃ヒット時 >-------------------------
;------ 近強P一段目 ------
;--- Lv2,3 ---
;デスハンマー
[State -3, Death Hammer]
type = changestate
value = 300
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = stateno = 215 && animelemtime(5) <= 0
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,25]
triggerall = statetype != A
trigger1 = var(10) = 1

;------ その他 ------
;--- Lv1,3 ---
;デュエルソバット
[State -3, Duel Sobat]
type = changestate
value = 310
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,30]
triggerall = statetype != A
trigger1 = var(10) = 1

;-------------------------< 特殊技ヒット時 動作指定 >-------------------------
;--- 4ゲージ以上 ---
;4消費

[State -3, VarSet]
                                                                                                                                                                                                                                        type = VelAdd
                                                                                                                                                                                                                                        triggerall = numhelper(9997+1) != 0
                                                                                                                                                                                                                                        trigger1 = stateno = [600,650] 
                                                                                                                                                                                                                                        trigger1 = movecontact = 1
                                                                                                                                                                                                                                        x = 0.112121
                                                                                                                                                                                                                                        y = 0.412121

[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 4000) || (fvar(2) && power >= 3000)
trigger1 = 1
v = 57
value = 4

;3消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 4000) || (fvar(2) && power >= 3000)
trigger1 = p2life < 400 
v = 57
value = 3

;2消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 4000) || (fvar(2) && power >= 3000)
trigger1 = p2life < 300 
v = 57
value = 2

;1消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 4000) || (fvar(2) && power >= 3000)
trigger1 = p2life < 200 
v = 57
value = 1

;0消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 4000) || (fvar(2) && power >= 3000)
trigger1 = p2life < 100 
v = 57
value = 1

;--- 3ゲージ ---
;3消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 3000 && power < 4000) || (fvar(2) && power >= 2000 && power < 3000)
trigger1 = 1
v = 57
value = 3

;2消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 3000 && power < 4000) || (fvar(2) && power >= 2000 && power < 3000)
trigger1 = p2life < 300 
v = 57
value = 2

;1消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 3000 && power < 4000) || (fvar(2) && power >= 2000 && power < 3000)
trigger1 = p2life < 200 
v = 57
value = 1

;0消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 3000 && power < 4000) || (fvar(2) && power >= 2000 && power < 3000)
trigger1 = p2life < 100 
v = 57
value = 0

;--- 2ゲージ ---
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 2000 && power < 3000) || (fvar(2) && power >= 1000 && power < 2000)
trigger1 = var(58) = [0,333]
v = 57
value = 0

[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 2000 && power < 3000) || (fvar(2) && power >= 1000 && power < 2000)
trigger1 = var(58) = [334,666]
trigger2 = p2life < 300 
v = 57
value = 2

[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 2000 && power < 3000) || (fvar(2) && power >= 1000 && power < 2000)
trigger1 = var(58) = [667,999]
trigger2 = p2life < 200 
v = 57
value = 1

;--- 1ゲージ ---
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
trigger1 = var(58) = [0,499]
v = 57
value = 0

[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
trigger1 = var(58) = [500,999]
trigger2 = p2life < 200 
v = 57
value = 1

;--- ゲージなし ---
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
trigger1 = fvar(2) = 0 && power < 1000
v = 57
value = 0

                                                                                                                                                                                                                                                      [State -2, PosAdd]
                                                                                                                                                                                                                                                      type = posadd
                                                                                                                                                                                                                                                      triggerall = numhelper(9997+1) != 0
                                                                                                                                                                                                                                                      triggerall = numhelper(4052) = 0
                                                                                                                                                                                                                                                      trigger1 = stateno = 410 || stateno = 440
                                                                                                                                                                                                                                                      trigger1 = animelem = 3
                                                                                                                                                                                                                                                      x = 6

;-------------------------< デスハンマー時 4ゲージ >-------------------------
;--- 立ち ---
;EXレッグトマホーク
[State -3, EX Leg Tomahawk]
type = changestate
value = 1150+((var(55) := 4000)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 4
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || (stateno = 310 && animelemtime(5) <= 0 && p2bodydist x >= 40)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S
triggerall = p2bodydist x = [-10,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;→アンリミテッドデザイアーファイナル
[State -3, Unlimited Desire Final]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 4000
triggerall = var(57) = 4
triggerall = numtarget(1150)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,100]
triggerall = p2bodydist y < -35
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;--- しゃがみ ---
;アンリミテッドデザイアーファイナル
[State -3, Unlimited Desire Final]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 4
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || (stateno = 310 && animelemtime(5) <= 0 && p2bodydist x >= 40)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = C
triggerall = p2bodydist x = [-10,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< デスハンマー時 3ゲージ >-------------------------
;アンリミテッドデザイアーファイナル
[State -3, Unlimited Desire Final]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 3
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || (stateno = 310 && animelemtime(5) <= 0 && p2bodydist x >= 40)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< デスハンマー時 2ゲージ >-------------------------
;--- 近距離 ---
;ギガンティックサイクロン
[State -3, Gigantic Cyclone]
type = changestate
value = 3200
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 2
triggerall = stateno = 300 || (stateno = 310 && animelemtime(5) <= 0 && p2bodydist x >= 40)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,50]
triggerall = statetype != A
trigger1 = var(11) = 1


;--- 中距離 ---
;MAXアンリミテッドデザイアー
[State -3, Unlimited Desire]
type = changestate
value = 3150
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 2
triggerall = (var(58) = [0,499]) || p2statetype = C
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || (stateno = 310 && animelemtime(5) <= 0 && p2bodydist x >= 40)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [50,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;EXレッグトマホーク
[State -3, EX Leg Tomahawk]
type = changestate
value = 1150+((var(55) := 3101)*0)
triggerall = !ishelper
triggerall = var(59) > 1
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 2
triggerall = var(58) = [500,999]
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || (stateno = 310 && animelemtime(5) <= 0 && p2bodydist x >= 40)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S
triggerall = p2bodydist x = [25,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;→アンリミテッドデザイアー 弱
[State -3, Unlimited Desire L]
type = changestate
value = 3100+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 3101
triggerall = var(57) = 2
triggerall = numtarget(1150)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,70]
triggerall = p2bodydist y < -35
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< デスハンマー時 1ゲージ >-------------------------
;--- 近距離 ---
;EXリフトアップブロー
[State -3, EX Lift-Up Blow]
type = changestate
value = 1450+((var(55) := 1500)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 1
triggerall = stateno = 300 || (stateno = 310 && animelemtime(5) <= 0 && p2bodydist x >= 40)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,25]
triggerall = statetype != A
trigger1 = var(11) = 1

;→カイザークロー
[State -3, Kaiser Craw]
type = changestate
value = 1500
triggerall = !ishelper
;triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1500
triggerall = var(57) = 1
triggerall = numtarget(1480)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-150,-100]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;--- 中距離 ---
;アンリミテッドデザイアー 弱
[State -3, Unlimited Desire L]
type = changestate
value = 3100+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 1
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 1
triggerall = (var(58) = [0,499]) || p2statetype = C
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || (stateno = 310 && animelemtime(5) <= 0 && p2bodydist x >= 40)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [25,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;EXレッグトマホーク
[State -3, EX Leg Tomahawk]
type = changestate
value = 1150+((var(55) := 240)*0)
triggerall = !ishelper
triggerall = var(59) > 1
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 1
triggerall = var(58) = [500,999]
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || (stateno = 310 && animelemtime(5) <= 0 && p2bodydist x >= 40)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S
triggerall = p2bodydist x = [25,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;EXカイザークロー
[State -1, EX Kaiser Craw]
type = changestate
value = 1550
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = Var(38) = 1 && helper(9999),fvar(3) > 0      
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1


;→遠距離強キック
[State -3, Stand Hard Kick]
type = changestate
value = ifelse(p2bodydist x >= 40,240,245)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 240
triggerall = var(57) = 1
triggerall = numtarget(1150)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [40,90]
triggerall = p2bodydist y < -35
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< デスハンマーヒット時 ゲージなし >-------------------------
;--- 近距離 ---
;リフトアップブロー
[State -3, Lift-Up Blow]
type = changestate
value = 1300
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 0
triggerall = stateno = 300 || (stateno = 310 && animelemtime(5) <= 0 && p2bodydist x >= 40)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,25]
triggerall = statetype != A
trigger1 = var(11) = 1

[State -1, Lift-up Blow]
type = changestate
value = 1300
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = Var(38) = 1 && helper(9999),fvar(1) > 0 
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;--- 中距離 ---
;レッグトマホーク 弱
[State -3, Leg Tomahawk L]
type = changestate
value = 1100+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 0
triggerall = (stateno = 215 && animelemtime(5) >= 0) || stateno = 245 || stateno = 410 || stateno = 300 || (stateno = 310 && animelemtime(5) <= 0 && p2bodydist x >= 40)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S
triggerall = p2bodydist x = [25,80]
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< デュアルソバット ヒット時 4ゲージ >-------------------------
;EXレッグトマホーク
[State -3, EX Leg Tomahawk]
type = changestate
value = 1150+((var(55) := 4000)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 4
triggerall = stateno = 310 && animelemtime(8) > 0
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;→アンリミテッドデザイアーファイナル
[State -3, Unlimited Desire Final]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 4000
triggerall = var(57) = 4
triggerall = numtarget(1150)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,100]
triggerall = p2bodydist y < -35
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< デュアルソバット ヒット時 3ゲージ >-------------------------
;アンリミテッドデザイアーファイナル
[State -3, Unlimited Desire Final]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 3
triggerall = stateno = 310 && animelemtime(8) > 0
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< デュアルソバット ヒット時 2ゲージ >-------------------------
;MAXアンリミテッドデザイアー
[State -3, MAX Unlimited Desire]
type = changestate
value = 3150
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 2
triggerall = var(58) = [0,499]
triggerall = stateno = 310 && animelemtime(8) > 0
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;EXレッグトマホーク
[State -3, EX Leg Tomahawk]
type = changestate
value = 1150+((var(55) := 3101)*0)
triggerall = !ishelper
triggerall = var(59) > 1
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 2
triggerall = var(58) = [500,999]
triggerall = stateno = 310 && animelemtime(8) > 0
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [25,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;→アンリミテッドデザイアー 弱
[State -3, Unlimited Desire L]
type = changestate
value = 3100+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 3101
triggerall = var(57) = 2
triggerall = numtarget(1150)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,70]
triggerall = p2bodydist y < -35
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< デュアルソバット ヒット時 1ゲージ >-------------------------
;アンリミテッドデザイアー 弱
[State -3, Unlimited Desire L]
type = changestate
value = 3100+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 1
triggerall = var(58) = [0,499]
triggerall = stateno = 310 && animelemtime(8) > 0
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;EXレッグトマホーク
[State -3, EX Leg Tomahawk]
type = changestate
value = 1150+((var(55) := 240)*0)
triggerall = !ishelper
triggerall = var(59) > 1
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 1
triggerall = var(58) = [500,999]
triggerall = stateno = 310 && animelemtime(8) > 0
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [25,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;→遠距離強キック
[State -3, Stand Hard Kick]
type = changestate
value = ifelse(p2bodydist x >= 40,240,245)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 240
triggerall = var(57) = 1
triggerall = numtarget(1150)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,90]
triggerall = p2bodydist y < -35
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< デュアルソバット ヒット時 ゲージなし >-------------------------
;レッグトマホーク 強
[State -3, Leg Tomahawk H]
type = changestate
value = 1100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 0
triggerall = stateno = 310 && animelemtime(8) > 0
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,80]
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< 飛び込み 繋ぎ >-------------------------
;--- ヒット時 ---
;近距離立ち強パンチ
[State -1, Stand Hard Panch]
type = changestate
value = 215
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = !inguarddist
triggerall = numtarget(600)
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,30]
triggerall = p2stateno != [140,159]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger1 = enemynear,gethitvar(hittime) >= 5

;しゃがみ弱パンチ
[State -1, Crouch Light Panch]
type = changestate
value = 400
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = !inguarddist
triggerall = numtarget(600)
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,60]
triggerall = p2stateno != [140,159]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger1 = enemynear,gethitvar(hittime) = [3,4]

;しゃがみ弱パンチ
[State -1, Crouch Light Panch]
type = changestate
value = 400
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*20
triggerall = !inguarddist
triggerall = numtarget(600)
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,60]
triggerall = p2stateno != [140,159]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger1 = enemynear,gethitvar(hittime) <= 2

;--- ガード時 ---
;しゃがみ弱キック
[State -1, Crouch Light Kick]
type = changestate
value = 430
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*10
triggerall = !inguarddist
triggerall = numtarget(600)
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,50]
triggerall = p2stateno = [140,159]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 移動 >-------------------------
;バックステップ
[State -1, Dash]
type = changestate
value = 105
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = p2movetype = I
triggerall = p2bodydist x = [100,150]
triggerall = !inguarddist
triggerall = random < var(59)*1
triggerall = statetype != A
trigger1 = ctrl || stateno = [120,139]

;ダッシュ
[State -1, Dash]
type = changestate
value = 100
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = !inguarddist
triggerall = statetype != A
triggerall = ctrl || stateno = [120,139]
triggerall = (var(58) = [0,249]) || numhelper(1010)
trigger1 = random < var(59)*5
trigger1 = p2bodydist x >= 140
trigger2 = random < var(59)*10
trigger2 = p2bodydist x >= 60
trigger2 = p2stateno = 5120 || (p2stateno = [150,155]) || p2movetype = H

;前進
[State -1, Walk Fwd]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*10
triggerall = p2bodydist x >= 30
triggerall = statetype != A
trigger1 = ctrl || stateno = [120,139]
v = 56
value = 20

;前進
[State -1, Walk Fwd]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*25
triggerall = p2bodydist x >= 30
triggerall = statetype != A
triggerall = numhelper(1010)
triggerall = helper(1010),stateno = 1010
trigger1 = ctrl || stateno = [120,139]
v = 56
value = 20

;-------------------------< 飛び込み >-------------------------
;大ジャンプ めくり
[State -3, Jump]
type = changestate
value = 40+((var(56) := 4)*(var(57) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != [5710,5715]
triggerall = (p2dist x+enemynear,const(size.ground.back)) = [130,160]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;大ジャンプ
[State -3, Jump]
type = changestate
value = 40+((var(56) := 4)*(var(57) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != [5710,5715]
triggerall = p2bodydist x = [185,220]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;中ジャンプ
[State -3, Jump]
type = changestate
value = 40+((var(56) := 3)*(var(57) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != [5710,5715]
triggerall = p2bodydist x = [155,185]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;通常ジャンプ
[State -3, Jump]
type = changestate
value = 40+((var(56) := 1)*(var(57) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != [5710,5715]
triggerall = p2bodydist x = [105,155]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;小ジャンプ
[State -3, Jump]
type = changestate
value = 40+((var(56) := 2)*(var(57) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [105,135]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;空中強キック 小J
[State -1, Air Hard Kick]
type = changestate
value = 645
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*30
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2bodydist x = [-10,65+(7*vel x)]
triggerall = vel x > 0
triggerall = sysvar(2) = 1
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
trigger1 = vel y >= 0
trigger1 = pos y = [-55,-36]

;空中強キック 通常J 相手立ち
[State -1, Air Hard Kick]
type = changestate
value = 645
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*75
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2bodydist x = [-10+(7*vel x),50+(7*vel x)]
triggerall = vel x > 0
triggerall = sysvar(1) = 1
triggerall = sysvar(2) = 0
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
trigger1 = vel y >= 0
trigger1 = pos y = [-90,-51]

;空中強キック 大J 相手立ち
[State -1, Air Hard Kick]
type = changestate
value = 645
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*75
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2bodydist x = [-10+(7*vel x),50+(7*vel x)]
triggerall = vel x > 0
triggerall = sysvar(1) = 2
triggerall = sysvar(2) = 0
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
trigger1 = vel y >= 0
trigger1 = pos y = [-90,-51]

;空中強パンチ 通常J 相手立ち
[State -1, Air Hard Panch]
type = changestate
value = 615
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*75
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2dist x = [-20,(15*vel x)]
triggerall = vel x > 0
triggerall = sysvar(2) = 0
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
trigger1 = vel y >= 0
trigger1 = pos y = [-90,-51]
trigger2 = vel y < 0
trigger2 = pos y = [-90,-80]

;-------------------------< 空対空 >-------------------------
;空中弱パンチ
[State -3, Air Light Panch]
type = changestate
value = 600
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(53)*50
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60+(vel x*5)+(enemynear,vel x*5)]
triggerall = p2bodydist y = [-60,60]
triggerall = statetype = A && vel x != 0
trigger1 = ctrl || stateno = [120,139]

;-------------------------< 地対空 >-------------------------
;カイザークロー
[State -1, Kaiser Kraw]
type = changestate
value = 1500
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*30
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60+(enemynear,vel x*9)]
triggerall = p2bodydist y = [-150,-50]
triggerall = statetype != A
triggerall = enemynear,vel y < 0
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 対地 >-------------------------
;--- 近距離 ---
;近距離強パンチ
[State -1, Stand Hard Panch]
type = changestate
value = 215
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*30
triggerall = var(58) = [0,499]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [-10,30]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]


;しゃがみ弱パンチ
[State -1, Crouch Light Panch]
type = changestate
value = 400
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*30
triggerall = var(58) = [500,749]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [-10,30]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;しゃがみ弱キック
[State -1, Crouch Light Kick]
type = changestate
value = 430
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*30
triggerall = var(58) = [750,999]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [-10,30]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;--- 中距離 ---
;しゃがみ弱パンチ
[State -1, Crouch Light Panch]
type = changestate
value = 400
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*25
triggerall = var(58) = [0,499]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [30,60]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;しゃがみ強パンチ
[State -1, Crouch Hard Panch]
type = changestate
value = 410
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*25
triggerall = var(58) = [500,999]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [30,85]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;--- 遠距離 ---
;遠距離強キック
[State -1, Stand Hard Kick]
type = changestate
value = 240
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = var(58) = [0,499]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [60,90]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;しゃがみ強キック
[State -1, Crouch Hard Kick]
type = changestate
value = 440
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = var(58) = [500,999]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [60,90]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 遠距離 >-------------------------
;ブリッツボール・上段
[State -1, Blitz Ball]
type = changestate
value = 1000+((var(1) := (random < 500))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = var(58) = [0,499]
triggerall = p2bodydist x >= 120
triggerall = !inguarddist
triggerall = p2movetype != H || !numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = statetype != A
triggerall = var(20) = 0
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;ブリッツボール・下段
[State -1, Blitz Ball]
type = changestate
value = 1000+((var(1) := 2+(random < 500))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = var(58) = [500,999]
triggerall = p2bodydist x >= 120
triggerall = !inguarddist
triggerall = p2movetype != H || !numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = statetype != A
triggerall = var(20) = 0
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;レッグトマホーク 弱
[State -1, Leg Tomahawk L]
type = changestate
value = 1100+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = p2bodydist x = [120,160]
triggerall = !inguarddist && p2movetype != A
triggerall = p2movetype != H || !numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;レッグトマホーク 強
[State -1, Leg Tomahawk H]
type = changestate
value = 1100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = p2bodydist x = [180,195]
triggerall = !inguarddist && p2movetype != A
triggerall = p2movetype != H || !numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< ぶっぱ >-------------------------
;デッドリーレイブ
[State -1, Deadly Rave]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*50
triggerall = p2bodydist x = [-10,260]
triggerall = (var(23) = [1,2]) || (var(23) = [11,12])
triggerall = enemynear,var(59)
triggerall = enemynear,power >= 3000 || (enemynear,fvar(2) && enemynear,power >= 2000)
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = numenemy = 1 || (enemy(0),alive = 0 ^^ enemy(1),alive = 0) || partner,alive = 0
triggerall = enemynear,ctrl = 1
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;デッドリーレイブ
[State -1, Deadly Rave]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*20
triggerall = p2bodydist x = [-10,260]
triggerall = ((var(23) = [1,2]) || (var(23) = [11,12])) && var(22) != 7 && var(22) != 8 && var(22) != 10 && var(22) != 12
triggerall = enemynear,var(59)
triggerall = (enemynear,fvar(2) && enemy,power >= 2000 && enemy,power < 3000) || (enemynear,fvar(2) && enemy,power >= 1000 && enemy,power < 2000)
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = numenemy = 1 || (enemy(0),alive = 0 ^^ enemy(1),alive = 0) || partner,alive = 0
triggerall = enemynear,ctrl = 1
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1



                                                                                                                                                                                                                   [State -1, VarSet]
                                                                                                                                                                                                                   type = VarSet
                                                                                                                                                                                                                   trigger1 = command != "holds" 
                                                                                                                                                                                                                   v = 43-5  
                                                                                                                                                                                                                   value = 0

;-------------------------< 投げ >-------------------------
;ギガンティックサイクロン
[State -3, Gigantic Cyclone]
type = changestate
value = 3200
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(53)*30
triggerall = (fvar(2) = 0 && power >= 2000) || (fvar(2) && power >= 1000)
triggerall = p2bodydist x = [-10,50]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = fvar(7) = 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;リフトアップブロー
[State -3, Rift-up Blow]
type = changestate
value = 1300
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(53)*30
triggerall = p2bodydist x = [-10,30]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = fvar(7) = 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;巴投げ
[State -3, Throw]
type = changestate
value = 950
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(53)*50
triggerall = backedgebodydist < 80
triggerall = p2bodydist x = [-10,10]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = fvar(7) = 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;背負い投げ
[State -3, Throw]
type = changestate
value = 900
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(53)*50
triggerall = backedgebodydist >= 80
triggerall = p2bodydist x = [-10,10]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = fvar(7) = 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

