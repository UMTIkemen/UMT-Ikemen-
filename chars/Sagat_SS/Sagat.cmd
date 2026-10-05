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
name = "タイガーランペイジ"
command = ~D, DF, F, D, DF, F, y+b
time = 30

;------------------------------------------------------------------------------
;-| MAX超必殺技 |--------------------------------------------------------------

[Command]
name = "タイガージェノサイド MAX"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "タイガーレイド MAX"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "タイガーキャノン MAX"
command = ~D, DF, F, D, DF, F, x+y
time = 30

[Command]
name = "グランドタイガーキャノン MAX"
command = ~D, DB, B, D, DB, B, x+y
time = 30

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------
[Command]
name = "タイガーキャノン 弱"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "タイガーキャノン 強"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "グランドタイガーキャノン 弱"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "グランドタイガーキャノン 強"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "タイガージェノサイド 弱"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "タイガージェノサイド 強"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "タイガーレイド 弱"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "タイガーレイド 強"
command = ~D, DB, B, D, DB, B, b
time = 30

;------------------------------------------------------------------------------
;-| EX必殺技 |-----------------------------------------------------------------

[Command]
name = "タイガーショット EX"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "グランドタイガーショット EX"
command = ~D, DF, F, a+b
time = 15

[Command]
name = "タイガーアッパーカット EX"
command = ~F, D, DF, x+y
time = 15

[Command]
name = "タイガーアッパーカット EX"
command = ~F, D, F, x+y
time = 15

[Command]
name = "タイガーニー EX"
command = ~F, D, DF, a+b
time = 15

[Command]
name = "タイガーニー EX"
command = ~F, D, F, a+b
time = 15

[Command]
name = "タイガークロウ EX"
command = ~D, DB, B, a+b
time = 15

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "タイガーショット 弱"
command = ~D, DF, F, x
time = 15

[Command]
name = "タイガーショット 強"
command = ~D, DF, F, y
time = 15

[Command]
name = "グランドタイガーショット 弱"
command = ~D, DF, F, a
time = 15

[Command]
name = "グランドタイガーショット 強"
command = ~D, DF, F, b
time = 15

[Command]
name = "タイガーアッパーカット 弱"
command = ~F, D, DF, x
time = 15

[Command]
name = "タイガーアッパーカット 弱"
command = ~F, D, F, x
time = 15

[Command]
name = "タイガーアッパーカット 強"
command = ~F, D, DF, y
time = 15

[Command]
name = "タイガーアッパーカット 強"
command = ~F, D, F, y
time = 15

[Command]
name = "タイガーニー 弱"
command = ~F, D, DF, a
time = 15

[Command]
name = "タイガーニー 弱"
command = ~F, D, F, a
time = 15

[Command]
name = "タイガーニー 強"
command = ~F, D, DF, b
time = 15

[Command]
name = "タイガーニー 強"
command = ~F, D, F, b
time = 15

[Command]
name = "タイガークロウ 弱"
command = ~D, DB, B, a
time = 15

[Command]
name = "タイガークロウ 強"
command = ~D, DB, B, b
time = 15

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
trigger1 = stateno = 200 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger2 = stateno = 205 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger3 = stateno = 215 && animelemtime(4) > 0 && animelemtime(6) < 0
trigger4 = stateno = 230 && animelemtime(4) > 0 && animelemtime(7) < 0
trigger5 = stateno = 235 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 245 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger7 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger8 = stateno = 410 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger9 = stateno = 240 && animelemtime(6) > 0 && animelemtime(8) < 0
trigger10 = stateno = 400 && animelemtime(2) > 0 && animelemtime(6) < 0
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
trigger1 = stateno = 200 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger2 = stateno = 205 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger3 = stateno = 215 && animelemtime(4) > 0 && animelemtime(6) < 0
trigger4 = stateno = 230 && animelemtime(4) > 0 && animelemtime(7) < 0
trigger5 = stateno = 235 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 245 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger7 = stateno = 250 && animelemtime(9) > 0 && animelemtime(10) < 0
trigger8 = stateno = 400 && animelemtime(2) > 0 && animelemtime(6) < 0
trigger9 = stateno = 410 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger10 = stateno = 310 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger11 = stateno = 300 && animelemtime(4) > 0 && animelemtime(7) < 0 && var(1)
trigger12 = stateno = 240 && animelemtime(6) > 0 && animelemtime(8) < 0
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
trigger1 = stateno = 1100 && animelemtime(3) > 0 && animelemtime(6) < 0 && movecontact
trigger2 = stateno = 2100 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger3 = stateno = 1150 && animelemtime(3) > 0 && animelemtime(6) < 0 && movecontact
trigger4 = stateno = 2150 && animelemtime(3) > 0 && animelemtime(6) < 0 && movecontact
trigger5 = stateno = 1200 && animelemtime(3) > 0 && animelemtime(6) < 0 && movecontact
trigger6 = stateno = 1250 && animelemtime(3) > 0 && animelemtime(6) < 0 && movecontact
trigger7 = stateno = 1300 && animelemtime(5) > 0 && animelemtime(6) < 0 && movecontact
trigger8 = stateno = 1300 && animelemtime(14) > 0 && animelemtime(15) < 0 && movecontact
trigger9 = stateno = 1350 && animelemtime(5) > 0 && animelemtime(6) < 0 && movecontact
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
;タイガーストーム
[State -1, Tiger Storm]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(29) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;==============================================================================
; MAX超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;MAXタイガーレイド
[State -1, Tiger Raid MAX]
type = changestate
value = 3250
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(28) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;MAXタイガーランペイジ
[State -1, Tiger Rampage MAX]
type = changestate
value = 3350
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(25) > 0
triggerall = statetype != A
triggerall = var(49)
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;MAXタイガージェノサイド
[State -1, Tiger Genocid MAX]
type = changestate
value = 3150
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(25) > 0
triggerall = statetype != A
triggerall = var(49) = 0
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;MAXタイガーキャノン
[State -1, Tiger Cannon]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(19) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = var(21) = 0
triggerall = var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;タイガーレイド
[State -1, Tiger Raid]
type = changestate
value = 3200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(26) > 0 || helper(9999),var(27) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;タイガーランペイジ
[State -1, Tiger Rampage]
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

;タイガージェノサイド
[State -1, Tiger Genocide]
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

;タイガーキャノン
[State -1, Tiger Cannon]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(17) > 0 || helper(9999),var(18) > 0 || helper(9999),var(20) > 0 || helper(9999),var(21) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(21) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;==============================================================================
; EX必殺技
;==============================================================================
;------------------------------------------------------------------------------
;EXタイガーアッパーカット
[State -1, Tiger Uppercut EX]
type = changestate
value = 1150
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(10) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EXタイガーニー
[State -1, Tiger Knee EX]
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

;EXタイガークロウ
[State -1, Tiger Claw EX]
type = changestate
value = 1350
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(16) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EXタイガーショット
[State -1, EX Tiger Shot]
type = changestate
value = 1050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(4) > 0 || helper(9999),var(7) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(20) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
;タイガーニークラッシュ
[State -1, Tiger Knee Crush]
type = changestate
value = 1200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(11) > 0 || helper(9999),var(12) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;タイガーアッパーカット
[State -1, Tiger Uppercut]
type = changestate
value = 1100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(8) > 0 || helper(9999),var(9) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = stateno = 320 && animelemtime(10) >= 0

;タイガークロウ
[State -1, Tiger Craw]
type = changestate
value = 1300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(14) > 0 || helper(9999),var(15) > 0
triggerall = statetype != A
triggerall = var(20) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;タイガーショット
[State -1, Reppu Ken]
type = changestate
value = 1000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(2) > 0 || helper(9999),var(3) > 0 || helper(9999),var(5) > 0 || helper(9999),var(6) > 0
triggerall = statetype != A
triggerall = var(20) = 0
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

;タイガーレイジ
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
trigger1 = ctrl || stateno = [120,139]

;タイガーキャリー
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
trigger1 = ctrl || stateno = [120,139]

;タイガースラストキック
[State -1, Tiger Thrust Kick]
type = changestate
value = 310
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(1) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;アングリーチャージ
[State -1, Angry Charge]
type = changestate
value = 320
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(25) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;ティーソーク
[State -1, Ti Sok]
type = changestate
value = 300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(0) > 0
triggerall = statetype != A
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
value = 610
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
type = changestate
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
trigger2 = stateno = 205 && animelemtime(4) > 0
trigger3 = stateno = 400 && animelemtime(4) > 0
trigger4 = stateno = 430 && animelemtime(3) > 0

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
trigger2 = stateno = 205 && animelemtime(4) > 0
trigger3 = stateno = 400 && animelemtime(3) > 0
trigger4 = stateno = 430 && animelemtime(4) > 0

;近距離立ち強キック
[State -1, Stand Hard Kick]
type = null;changestate
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
trigger2 = stateno = 205 && animelemtime(4) > 0
trigger3 = stateno = 400 && animelemtime(4) > 0
trigger4 = stateno = 430 && animelemtime(4) > 0

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
trigger2 = stateno = 205 && animelemtime(4) > 0
trigger3 = stateno = 400 && animelemtime(4) > 0
trigger4 = stateno = 430 && animelemtime(4) > 0

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
trigger2 = stateno = 205 && animelemtime(3) > 0
trigger3 = stateno = 400 && animelemtime(4) > 0
trigger4 = stateno = 430 && animelemtime(4) > 0

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
trigger2 = stateno = 205 && animelemtime(3) > 0
trigger3 = stateno = 400 && animelemtime(4) > 0
trigger4 = stateno = 430 && animelemtime(4) > 0

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
triggerall = var(59) > 0
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
triggerall = var(59) > 0
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
triggerall = var(59) > 0
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
trigger1 = var(59) > 0
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


;-------------------------< コンボ指定 >-------------------------

[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
trigger1 = command = "z"
v = 57
value = ifelse(var(57) >= 5,0,var(57)+1)

[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
trigger1 = command = "c"
v = 58
value = ifelse(var(58) >= 500,0,var(58)+500)

[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
trigger1 = command = "start"
v = 55
value = 0

[State -2, Clipboard]
type = displaytoclipboard
trigger1 = 1
text = "Gauge = %d Next = %d Random = %d Delay = %d Combo = %d \n"
params = var(57), var(55), var(58), var(54), var(51)
ignorehitpause = 1

[State -2, Clipboard]
type = appendtoclipboard
trigger1 = 1
text =  "P2X = %f P2Y = %f Prev = %d \n"
params = p2bodydist x,p2dist y, prevstateno
ignorehitpause = 1

;-------------------------< 割り込み >-------------------------
;--- 3ゲージ以上 ---
;タイガーストーム
[State -3, Tiger Storm]
type = changestate
value = 4000+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5*(10*(prevstateno = 5110 || prevstateno = 5120))
triggerall = p2bodydist x = [-10,85]
triggerall = p2bodydist y = [-50,0]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 3000) || (fvar(2) && power >= 2000)
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;--- 2ゲージ以上 ---
;MAXタイガージェノサイド
[State -3, MAX Tiger Genocide]
type = changestate
value = 3150
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5*(10*(prevstateno = 5110 || prevstateno = 5120))
triggerall = var(58) = [0,124]
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-80,0]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 2000 && power < 3000) || (fvar(2) && power >= 1000 && power < 2000)
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;タイガージェノサイド 強
[State -3, Tiger Genocide]
type = changestate
value = 3100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5*(10*(prevstateno = 5110 || prevstateno = 5120 || stateno = 320))
triggerall = var(58) = [125,249]
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-80,0]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 2000 && power < 3000) || (fvar(2) && power >= 1000 && power < 2000)
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;タイガーアッパーカット 強
[State -3, Tiger Uppercut H]
type = changestate
value = 1100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10*(10*(prevstateno = 5110 || prevstateno = 5120 || stateno = 320))
triggerall = var(58) = [250,999]
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = (fvar(2) = 0 && power >= 2000 && power < 3000) || (fvar(2) && power >= 1000 && power < 2000)
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = stateno = 320 && animelemtime(10) >= 0

;--- 1ゲージ ---
;タイガージェノサイド 強
[State -3, Tiger Genocide]
type = changestate
value = 3100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5*(10*(prevstateno = 5110 || prevstateno = 5120))
triggerall = var(58) = [125,249]
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-80,0]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;タイガーアッパーカット 強
[State -3, Tiger Uppercut H]
type = changestate
value = 1100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10*(10*(prevstateno = 5110 || prevstateno = 5120 || stateno = 320))
triggerall = var(58) = [250,999]
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = stateno = 320 && animelemtime(10) >= 0

;--- ゲージなし ---
;タイガーアッパーカット 強
[State -3, Tiger Uppercut H]
type = changestate
value = 1100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= 10*10*(10*(prevstateno = 5110 || prevstateno = 5120 || stateno = 320))
triggerall = var(58) = [250,999]
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = fvar(2) = 0 && power < 1000
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = stateno = 320 && animelemtime(10) >= 0

;-------------------------< 遠距離攻撃潰し >-------------------------
;タイガーキャノン 強
[State -3, Tiger Cannon H]
type = changestate
value = 3000+((var(1) := 1)*0)+((var(55) := ifelse(random < 500, 320, 0))*0)
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
triggerall = enemynear,animtime < -10-((p2bodydist x-100)/9)
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
;ティーソーク
[State -1, Ti Sok]
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
triggerall = enemynear,animtime = [-22+3,-20+3]
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
triggerall = enemynear,animtime = [-8+3,-6+3]
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

;-------------------------< 特殊技ヒット時 動作指定 >-------------------------
;--- 5ゲージ以上 ---
;5消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 5000) || (fvar(2) && power >= 4000)
trigger1 = 1
v = 57
value = 5

;4消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 5000) || (fvar(2) && power >= 4000)
trigger1 = p2life < 500
v = 57
value = 4

;3消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 5000) || (fvar(2) && power >= 4000)
trigger1 = p2life < 450 
v = 57
value = 3

;2消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 5000) || (fvar(2) && power >= 4000)
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 5000) || (fvar(2) && power >= 4000)
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 5000) || (fvar(2) && power >= 4000)
trigger1 = p2life < 100 
v = 57
value = 1

;--- 4ゲージ ---
;4消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 4000 && power < 5000) || (fvar(2) && power >= 3000 && power < 4000)
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 4000 && power < 5000) || (fvar(2) && power >= 3000 && power < 4000)
trigger1 = p2life < 450 
v = 57
value = 3

;2消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 4000 && power < 5000) || (fvar(2) && power >= 3000 && power < 4000)
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 4000 && power < 5000) || (fvar(2) && power >= 3000 && power < 4000)
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 4000 && power < 5000) || (fvar(2) && power >= 3000 && power < 4000)
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
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
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
trigger1 = fvar(2) = 0 && power < 1000
v = 57
value = 0

;-------------------------< 弱攻撃ヒット時 動作指定 >-------------------------

;--- 3ゲージ ---
;3消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
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
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
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
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
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
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
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
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
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
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
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
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
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
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
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
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
trigger1 = var(58) = [500,999]
trigger2 = p2life < 100 
v = 57
value = 1

;--- ゲージなし ---
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
trigger1 = fvar(2) = 0 && power < 1000
v = 57
value = 0

;-------------------------< 弱攻撃ヒット時 連打 >--------------------------
;しゃがみ弱パンチ
[State -1, Crouch Light Panch]
type = changestate
value = 400
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = movehit
triggerall = p2bodydist x = [-10,55]
triggerall = statetype != A
trigger1 = stateno = 205 && animelemtime(4) > 0
trigger2 = stateno = 400 && animelemtime(4) > 0
trigger3 = stateno = 430 && animelemtime(4) > 0

;-------------------------< 弱攻撃ヒット時 近距離 >--------------------------
;--- Lv2,3 ---
;ティーソーク
[State -3, Ti Sok]
type = changestate
value = 300
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(58) = [0,499]
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = statetype != A
trigger1 = var(10) = 1

;スラストキック
[State -3, Tiger Thrust Kick]
type = changestate
value = 310
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(58) = [500,999]
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = statetype != A
trigger1 = var(10) = 1

;-------------------------< 弱攻撃ヒット時 近距離 >--------------------------
;------ 0ゲージ ------
;--- Lv2,3 ---
;タイガークロウ
[State -3, Tigar Claw]
type = changestate
value = 1300+((var(1) := 1)*0)+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 0
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [45,75]
triggerall = statetype != A
trigger1 = var(11) = 1

;------ 1ゲージ ------
;--- Lv2,3 ---
;タイガーキャノン
[State -3, Tigar Claw]
type = changestate
value = 3000+((var(1) := 1)*0)+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 1
triggerall = var(58) = [0,499]
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [45,100]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;タイガーレイド
[State -3, Tigar Raid]
type = changestate
value = 3200+((var(1) := 0)*0)+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 1
triggerall = (var(58) = [500,999]) || var(51) = 3
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [45,80]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;------ 2ゲージ ------
;--- Lv2,3 ---
;MAXタイガーレイド
[State -3, Tigar Raid]
type = changestate
value = 3250+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [45,75]
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = statetype != A
trigger1 = var(11) = 1

;------ 3ゲージ ------
;--- Lv2,3 ---
;タイガーストーム
[State -3, Tigar Storm]
type = changestate
value = 4000+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 3
triggerall = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [45,70]
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< 強攻撃ヒット時 >--------------------------
;------ 近距離 ------
;--- Lv2,3 ---
;ティーソーク
[State -3, Ti Sok]
type = changestate
value = 300
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(58) = [0,499]
triggerall = stateno = 215 || stateno = 240 || stateno = 410
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,20]
triggerall = statetype != A
trigger1 = var(10) = 1

;タイガースラストキック
[State -3, Tiger Tail]
type = changestate
value = 310
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(58) = [500,999]
triggerall = stateno = 215 || stateno = 240 || stateno = 410
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,20]
triggerall = statetype != A
trigger1 = var(10) = 1

;-------------------------< 強/特殊技ヒット時 5ゲージ >--------------------------
;------ アングリーチャージ ------
;--- Lv2,3 ---
;EXタイガークラッシュ
[State -3, Tigar Crush EX]
type = changestate
value = 1250+((var(55) := 1301)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 5
triggerall = var(41) > 0
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;EXタイガークラッシュ
[State -3, Tigar Crush EX]
type = changestate
value = 1250+((var(55) := 1301)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 5
triggerall = var(41) > 0
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S
triggerall = p2bodydist x = [45,70]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガークラッシュ
[State -3, Tiger Crush]
type = changestate
value = 1200+((var(1) := 1)*0)+((var(55) := 1101)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1301
triggerall = var(57) = 5
triggerall = var(41) > 0
triggerall = numtarget(1260)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-80,-40]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;→→タイガーアッパーカット
[State -3, Tiger Uppercut]
type = changestate
value = 1100+((var(1) := 1)*0)+((var(55) := 4000)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1101
triggerall = var(57) = 5
triggerall = var(41) > 0
triggerall = numtarget(1200)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-50,-15]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;--- 近距離 ---
;EXタイガークラッシュ
[State -3, Tigar Crush EX]
type = changestate
value = 1250+((var(55) := 1101)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 5
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガーアッパーカット
[State -3, Tiger Uppercut H]
type = changestate
value = 1100+((var(1) := 1)*0)+((var(55) := 4000)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1101
triggerall = var(57) = 5
triggerall = numtarget(1260)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-50,-30]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;→→タイガーストーム
[State -3, Tigar Storm]
type = changestate
value = 4000+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 4000
triggerall = var(57) = 5
triggerall = stateno = 1100
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y >= -50
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = statetype != A
trigger1 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;--- 中距離 ---
;EXタイガークラッシュ
[State -3, Tigar Crush EX]
type = changestate
value = 1250+((var(55) := 1101)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 5
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S
triggerall = p2bodydist x = [45,70]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< 強/特殊技ヒット時 4ゲージ >--------------------------
;------ アングリーチャージ ------
;--- Lv2,3 ---
;タイガークラッシュ 強
[State -3, Tigar Crush]
type = changestate
value = 1200+((var(1) := 1)*0)+((var(55) := 1101)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 4
triggerall = var(41) > 0
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガーアッパーカット
[State -3, Tiger Uppercut]
type = changestate
value = 1100+((var(1) := 1)*0)+((var(55) := 4000)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1101
triggerall = var(57) = 4
triggerall = var(41) > 0
triggerall = numtarget(1200)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-40,-15]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;→→タイガーストーム
[State -3, Tigar Strom]
type = changestate
value = 4000+((var(1) := 0)*0)+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 4000
triggerall = var(57) = 4
triggerall = stateno = 1100
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = p2bodydist x = [-10,100]
triggerall = p2bodydist y >= -20
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = statetype != A
trigger1 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;------ 近距離 ------
;強タイガークロウ
[State -3, Tigar Claw H]
type = changestate
value = 1300+((var(1) := 1)*0)+((var(55) := 4000)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 4
triggerall = var(58) = [0,499]
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガーストーム
[State -3, Tigar Strom]
type = changestate
value = 4000+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 4000
triggerall = var(57) = 4
triggerall = stateno = 1300 && animelemtime(14) >= 0
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = statetype != A
trigger1 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;EXタイガークロウ
[State -3, Tigar Claw]
type = changestate
value = 1350+((var(55) := 4000)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 4
triggerall = var(58) = [500,999]
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガーストーム
[State -3, Tigar Strom]
type = changestate
value = 4000+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 4000
triggerall = var(57) = 4
triggerall = numtarget(1350)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,100]
triggerall = p2bodydist y = [-90,-60]
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;------ 中距離 ------
;EXタイガークラッシュ
[State -3, Tigar Crush EX]
type = changestate
value = 1250+((var(55) := 4000)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 4
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S
triggerall = p2bodydist x = [45,70]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガーストーム
[State -3, Tigar Strom]
type = changestate
value = 4000+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 4000
triggerall = var(57) = 4
triggerall = numtarget(1260)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-60,-40]
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 強/特殊技ヒット時 3ゲージ >--------------------------
;------ アングリーチャージ ------
;--- Lv2,3 ---
;EXタイガークラッシュ
[State -3, Tigar Crush EX]
type = changestate
value = 1250+((var(55) := 1301)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 3
triggerall = (var(58) = [0,499]) || var(51) = 3
triggerall = var(41) > 0
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガークラッシュ
[State -3, Tiger Crush]
type = changestate
value = 1200+((var(1) := 1)*0)+((var(55) := 1101)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1301
triggerall = var(57) = 3
triggerall = var(41) > 0
triggerall = numtarget(1260)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-80,-40]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;→→タイガーアッパーカット
[State -3, Tiger Uppercut]
type = changestate
value = 1100+((var(1) := 1)*0)+((var(55) := 3000)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1101
triggerall = var(57) = 3
triggerall = var(41) > 0
triggerall = numtarget(1200)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-50,-10]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;→→→タイガーキャノン
[State -3, Tigar Cannon]
type = changestate
value = 3000+((var(1) := 0)*0)+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 3000
triggerall = var(57) = 3
triggerall = stateno = 1100
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = p2bodydist x = [-10,100]
triggerall = p2bodydist y >= -20
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;タイガークラッシュ
[State -3, Tigar Crush H]
type = changestate
value = 1200+((var(1) := 1)*0)+((var(55) := 1102)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 2
triggerall = var(57) = 3
triggerall = var(58) = [500,999]
triggerall = var(41) > 0
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガーアッパーカット
[State -3, Tiger Uppercut]
type = changestate
value = 1100+((var(1) := 1)*0)+((var(55) := 3150)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1102
triggerall = var(57) = 3
triggerall = var(41) > 0
triggerall = numtarget(1200)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-50,-10]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;→→→MAXタイガージェノサイド
[State -3, Tigar Genocide MAX]
type = changestate
value = 3150
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 3150
triggerall = var(57) = 3
triggerall = stateno = 1100
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = p2bodydist x = [-10,80]
triggerall = p2bodydist y >= -20
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = statetype != A
trigger1 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;------ 近距離 ------
;タイガーストーム
[State -3, Tigar Strom]
type = changestate
value = 4000+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 3
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,55]
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = statetype != A
trigger1 = var(11) = 1

;------ 中距離 ------
;EXタイガークラッシュ
[State -3, Tigar Crush EX]
type = changestate
value = 1250+((var(55) := 3150)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 3
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S
triggerall = p2bodydist x = [45,70]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;→MAXタイガージェノサイド
[State -3, Tiger Genocide MAX]
type = changestate
value = 3150
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 3150
triggerall = var(57) = 3
triggerall = numtarget(1260)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-50,-30]
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 強/特殊技ヒット時 2ゲージ >--------------------------
;------ アングリーチャージ ------
;--- Lv2,3 ---
;タイガークラッシュ 強
[State -3, Tigar Crush]
type = changestate
value = 1200+((var(1) := 1)*0)+((var(55) := 1101)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 2
triggerall = var(41) > 0
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガーアッパーカット
[State -3, Tiger Uppercut]
type = changestate
value = 1100+((var(1) := 1)*0)+((var(55) := 3000)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1101
triggerall = var(57) = 2
triggerall = var(41) > 0
triggerall = numtarget(1200)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-40,-15]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;→→タイガーキャノン
[State -3, Tigar Cannon]
type = changestate
value = 3000+((var(1) := 0)*0)+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 3000
triggerall = var(57) = 2
triggerall = stateno = 1100
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C || p2statetype = A
triggerall = p2bodydist x = [-10,100]
triggerall = p2bodydist y >= -20
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;------ 近距離 ------
;MAXタイガーレイド
[State -3, Tigar Raid MAX]
type = changestate
value = 3250+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 2
triggerall = (var(58) = [0,499]) || var(51) = 3
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,55]
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = statetype != A
trigger1 = var(11) = 1

;MAXタイガージェノサイド
[State -3, Tigar Genocide MAX]
type = changestate
value = 3150
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 2
triggerall = var(57) = 2
triggerall = var(58) = [500,999]
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = statetype != A
trigger1 = var(11) = 1

;------ 中距離 ------
;EXタイガークラッシュ
[State -3, Tigar Crush EX]
type = changestate
value = 1250+((var(55) := 3101)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 2
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S
triggerall = p2bodydist x = [45,70]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガージェノサイド
[State -3, Tiger Genocide]
type = changestate
value = 3100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 3101
triggerall = var(57) = 2
triggerall = numtarget(1260)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-80,-40]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 強/特殊技ヒット時 1ゲージ >--------------------------
;------ アングリーチャージ ------
;--- Lv2,3 ---
;EXタイガークラッシュ
[State -3, Tigar Crush EX]
type = changestate
value = 1250+((var(55) := 1301)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 1
triggerall = (var(58) = [0,499]) || var(51) = 3
triggerall = var(41) > 0
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガークラッシュ
[State -3, Tiger Crush]
type = changestate
value = 1200+((var(1) := 1)*0)+((var(55) := 1101)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1301
triggerall = var(57) = 1
triggerall = var(41) > 0
triggerall = numtarget(1260)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-80,-40]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;→→タイガーアッパーカット
[State -3, Tiger Uppercut]
type = changestate
value = 1100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1101
triggerall = var(57) = 1
triggerall = var(41) > 0
triggerall = numtarget(1200)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-50,-15]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;タイガークラッシュ
[State -3, Tigar Crush H]
type = changestate
value = 1200+((var(1) := 1)*0)+((var(55) := 1150)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 2
triggerall = var(57) = 1
triggerall = var(58) = [500,999]
triggerall = var(41) > 0
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = statetype != A
trigger1 = var(11) = 1

;→EXタイガーアッパーカット
[State -3, Tiger Uppercut EX]
type = changestate
value = 1150
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1150
triggerall = var(57) = 1
triggerall = var(41) > 0
triggerall = numtarget(1200)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-50,-10]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;------ 近距離 ------
;タイガーレイド
[State -3, Tigar Raid H]
type = changestate
value = 3200+((var(1) := 1)*0)+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 1
triggerall = (var(58) = [0,499]) || var(51) = 3
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;EXタイガークラッシュ
[State -3, Tigar Crush EX]
type = changestate
value = 1250+((var(55) := 1101)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 2
triggerall = var(57) = 1
triggerall = var(58) = [500,749]
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガーアッパーカット
[State -3, Tiger Uppercut]
type = changestate
value = 1100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1101
triggerall = var(57) = 1
triggerall = numtarget(1260)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-60,-30]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;EXタイガークロウ
[State -3, Tigar Claw]
type = changestate
value = 1350+((var(55) := 1201)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 2
triggerall = var(57) = 1
triggerall = var(58) = [750,999]
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガークラッシュ
[State -3, Tiger Crush H]
type = changestate
value = 1200+((var(1) := 1)*0)+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1201
triggerall = var(57) = 1
triggerall = numtarget(1350)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,110]
triggerall = p2bodydist y = [-120,-100]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;------ 中距離 ------
;タイガーレイド 弱
[State -3, Tigar Raid L]
type = changestate
value = 3200+((var(1) := 1)*0)+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 1
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [45,70]
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< 強/特殊技ヒット時 ゲージなし >--------------------------
;------ アングリーチャージ ------
;--- Lv2,3 ---
;タイガークラッシュ
[State -3, Tigar Crush]
type = changestate
value = 1200+((var(1) := 1)*0)+((var(55) := 1101)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 0
triggerall = var(41) > 0
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = statetype != A
trigger1 = var(11) = 1

;→タイガーアッパーカット
[State -3, Tiger Uppercut]
type = changestate
value = 1100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1101
triggerall = var(57) = 0
triggerall = var(41) > 0
triggerall = numtarget(1200)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-50,-15]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;------ 近距離 ------
;--- Lv2,3 ---
;タイガークラッシュ
[State -3, Tigar Crush]
type = changestate
value = 1200+((var(1) := 1)*0)+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 0
triggerall = var(58) = [0,499]
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = statetype != A
trigger1 = var(11) = 1

;タイガークロウ
[State -3, Tigar Claw]
type = changestate
value = 1300+((var(1) := 1)*0)+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 0
triggerall = var(58) = [500,999]
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,45]
triggerall = statetype != A
trigger1 = var(11) = 1

;------ 遠距離 ------
;--- Lv2,3 ---
;タイガーショット 上段
[State -3, High Tiger Shot H]
type = changestate
value = 1000+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 0
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S
triggerall = p2bodydist x = [45,100]
triggerall = statetype != A
trigger1 = var(11) = 1
trigger2 = stateno = 410 && movecontact

;タイガーショット 下段
[State -3, Low Tiger Shot H]
type = changestate
value = 1000+((var(1) := 3)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 0
triggerall = stateno = 215 || stateno = 240 || stateno = 410 || stateno = 300 || stateno = 310
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = C
triggerall = p2bodydist x = [45,80]
triggerall = statetype != A
trigger1 = var(11) = 1
trigger2 = stateno = 410 && movecontact

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
trigger1 = enemynear,gethitvar(hittime) >= 3
trigger2 = stateno = 410 && movecontact

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
triggerall = p2bodydist x = [30,60]
triggerall = p2stateno != [140,159]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger1 = enemynear,gethitvar(hittime) >= 4

;しゃがみ弱キック
[State -1, Crouch Light Kick]
type = changestate
value = 430
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*20
triggerall = !inguarddist
triggerall = numtarget(600)
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,50]
triggerall = p2stateno != [140,159]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger1 = enemynear,gethitvar(hittime) < 3

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

;-------------------------< アドリブコンボ >-------------------------
;タイガーアッパーカット 弱
[State -1, Shoryu Ken L]
type = changestate
value = 1100+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = !inguarddist
triggerall = random <= var(59)*50
triggerall = p2movetype = H
triggerall = (numtarget(0) || numtarget(600)) || (!numtarget && !helper,numtarget)
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-60,0]
triggerall = p2stateno != [140,159]
triggerall = statetype != A
triggerall = var(0) = 0
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

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
triggerall = p2bodydist x = [-10,70+(7*vel x)]
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
triggerall = p2bodydist x = [-10,70+(7*vel x)]
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
triggerall = p2bodydist x = [-10,70+(7*vel x)]
triggerall = vel x > 0
triggerall = sysvar(1) = 2
triggerall = sysvar(2) = 0
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
trigger1 = vel y >= 0
trigger1 = pos y = [-90,-51]

;-------------------------< 空対空 >-------------------------
;空中強パンチ
[State -3, Air Hard Panch]
type = changestate
value = 610
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(53)*50
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60+(vel x*6)+(enemynear,vel x*6)]
triggerall = p2bodydist y = [-60,60]
triggerall = statetype = A && vel x != 0
trigger1 = ctrl || stateno = [120,139]

;-------------------------< 地対空 >-------------------------
;タイガーアッパーカット
[State -1, Tiger Uppercut]
type = changestate
value = 1100+((var(1) := (random < 500))*0)+((var(55) := ifelse(random < 500, 320, 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(58) = [0,499]
triggerall = random <= var(59)*30
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60+(enemynear,vel x*5)]
triggerall = p2bodydist y = [-90,-20]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;遠距離強キック
[State -1, Stand Hard Kick]
type = changestate
value = 240
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*25
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [60+(enemynear,vel x*9),120+(enemynear,vel x*9)]
triggerall = enemynear,vel y <= 0
triggerall = statetype != A
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
triggerall = var(58) = [0,749]
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
;しゃがみ中キック
[State -1, Crouch Medium Kick]
type = changestate
value = 310
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

;しゃがみ弱パンチ
[State -1, Crouch Light Panch]
type = changestate
value = 400
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*25
triggerall = var(58) = [500,999]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [30,70]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;--- 遠距離 ---
;遠距離強パンチ
[State -1, Stand Hard Panch]
type = changestate
value = 230
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = var(58) = [0,399]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S
triggerall = p2movetype != H
triggerall = p2bodydist x = [80,115]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;遠距離強パンチ
[State -1, Stand Hard Panch]
type = changestate
value = 210
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = var(58) = [400,699]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S
triggerall = p2movetype != H
triggerall = p2bodydist x = [80,110]
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
triggerall = var(58) = [700,999]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [60,90]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 遠距離 >-------------------------
;タイガーショット・上段
[State -1, Tiger Shot]
type = changestate
value = 1000+((var(1) := (random < 500))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = p2bodydist x >= 120
triggerall = !inguarddist
triggerall = p2movetype != H || !numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = statetype != A
triggerall = var(20) = 0
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;タイガーショット・下段
[State -1, Tiger Shot]
type = changestate
value = 1000+((var(1) := 2+(random < 500))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = p2bodydist x >= 120
triggerall = !inguarddist
triggerall = p2movetype != H || !numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = statetype != A
triggerall = var(20) = 0
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 投げ >-------------------------
;タイガーキャリー
[State -3, Throw]
type = changestate
value = 850+((var(55) := ifelse(random < 500, 320, 0))*0)
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

;タイガーレイジ
[State -3, Throw]
type = changestate
value = 800+((var(55) := ifelse(random < 500, 320, 0))*0)
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

;-------------------------< 挑発 >-------------------------

[State -1, Taunt]
type = changestate
value = 320
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A || p2movetype = H
triggerall = p2movetype != A
triggerall = !inguarddist
triggerall = var(41) <= 0
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger1 = random <= var(59)*1
trigger1 = life >= 300 && p2bodydist x >= 200
trigger2 = var(55) = 320 && p2movetype = H
