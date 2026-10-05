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
name = "真・昇龍拳"
command = ~D, DF, F, D, DF, F, y+b
time = 30

[Command]
name = "双龍波動拳"
command = ~D, DB, B, D, DB, B, y+b
time = 30

;------------------------------------------------------------------------------
;-| MAX超必殺技 |--------------------------------------------------------------

[Command]
name = "電刃波動拳"
command = ~D, DF, F, D, DF, F, x+y
time = 30

[Command]
name = "滅・昇龍拳"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "MAX真空竜巻旋風脚"
command = ~D, DB, B, D, DB, B, a+b
time = 30

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "真空波動拳 弱"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "真空波動拳 強"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "真空竜巻旋風脚 弱"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "真空竜巻旋風脚 強"
command = ~D, DB, B, D, DB, B, b
time = 30

;------------------------------------------------------------------------------
;-| EX必殺技 |-----------------------------------------------------------------

[Command]
name = "EX波動拳"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "EX灼熱波動拳"
command = ~B, DB, D, DF, F, x+y
time = 15

[Command]
name = "EX昇龍拳"
command = ~F, D, DF, x+y
time = 15

[Command]
name = "EX昇龍拳"
command = ~F, D, F, x+y
time = 15

[Command]
name = "EX竜巻旋風脚"
command = ~D, DB, B, a+b
time = 15

[Command]
name = "EX上段足刀蹴り"
command = ~B, D, F, a+b
time = 20

[Command]
name = "EX葉流し"
command = ~D, DB, B, x+y
time = 15

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "波動拳 弱"
command = ~D, DF, F, x
time = 15

[Command]
name = "波動拳 強"
command = ~D, DF, F, y
time = 15

[Command]
name = "灼熱波動拳 弱"
command = ~B, DB, D, DF, F, x
time = 15

[Command]
name = "灼熱波動拳 強"
command = ~B, DB, D, DF, F, y
time = 15

[Command]
name = "昇龍拳 弱"
command = ~F, D, DF, x
time = 15

[Command]
name = "昇龍拳 弱"
command = ~F, D, F, x
time = 15

[Command]
name = "昇龍拳 強"
command = ~F, D, DF, y
time = 15

[Command]
name = "昇龍拳 強"
command = ~F, D, F, y
time = 15

[Command]
name = "竜巻旋風脚 弱"
command = ~D, DB, B, a
time = 15

[Command]
name = "竜巻旋風脚 強"
command = ~D, DB, B, b
time = 15

[Command]
name = "上段足刀蹴り 弱"
command = ~B, D, F, a
time = 20

[Command]
name = "上段足刀蹴り 強"
command = ~B, D, F, b
time = 20

[Command]
name = "葉流し 弱"
command = ~D, DB, B, x
time = 15

[Command]
name = "葉流し 強"
command = ~D, DB, B, y
time = 15

[Command]
name = "波動の構え"
command = ~D, DF, F, s
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
trigger1 = stateno = 200 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger2 = stateno = 205 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger3 = stateno = 215 && animelemtime(2) > 0 && animelemtime(4) < 0
trigger4 = stateno = 235 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger5 = stateno = 245 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 245 && animelemtime(6) > 0 && animelemtime(7) < 0
trigger7 = stateno = 350 && animelemtime(3) > 0 && animelemtime(4) < 0 && movecontact
trigger8 = stateno = 360 && animelemtime(3) > 0 && animelemtime(4) < 0 && movecontact
trigger9 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger10 = stateno = 410 && animelemtime(5) > 0 && animelemtime(8) < 0
trigger11 = stateno = 430 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger12 = stateno = 440 && animelemtime(6) > 0 && animelemtime(7) < 0
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
trigger1 = stateno = 200 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger2 = stateno = 205 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger3 = stateno = 215 && animelemtime(2) > 0 && animelemtime(4) < 0
trigger4 = stateno = 235 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger5 = stateno = 245 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 245 && animelemtime(6) > 0 && animelemtime(7) < 0
trigger7 = stateno = 250 && animelemtime(6) > 0 && animelemtime(8) < 0
trigger8 = stateno = 300 && animelemtime(5) > 0 && animelemtime(7) < 0 && var(1) = 1
trigger9 = stateno = 310 && animelemtime(6) > 0 && animelemtime(7) < 0 && var(1) = 1
trigger10 = stateno = 320 && animelemtime(6) > 0 && animelemtime(8) < 0 && var(1) = 1
trigger11 = stateno = 330 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger12 = stateno = 340 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger13 = stateno = 350 && animelemtime(3) > 0 && animelemtime(4) < 0 && movecontact
trigger14 = stateno = 360 && animelemtime(3) > 0 && animelemtime(4) < 0 && movecontact
trigger15 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger16 = stateno = 410 && animelemtime(5) > 0 && animelemtime(8) < 0
trigger17 = stateno = 430 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger18 = stateno = 440 && animelemtime(6) > 0 && animelemtime(7) < 0
trigger19 = stateno = 600 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger20 = stateno = 605 && animelemtime(2) > 0 && animelemtime(3) < 0
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
trigger1 = stateno = 1100 && animelemtime(2) > 0 && animelemtime(4) < 0 && movecontact
trigger2 = stateno = 1150 && animelemtime(2) > 0 && animelemtime(5) < 0 && movecontact
trigger3 = stateno = 1200 && animelemtime(6) > 0 && animelemtime(7) < 0 && movecontact
trigger4 = stateno = 1200 && animelemtime(9) > 0 && animelemtime(10) < 0 && movecontact
trigger5 = stateno = 1200 && animelemtime(12) > 0 && animelemtime(13) < 0 && movecontact
trigger6 = stateno = 1200 && animelemtime(15) > 0 && animelemtime(16) < 0 && movecontact && var(1) = 1
trigger7 = stateno = 1200 && animelemtime(18) > 0 && animelemtime(21) < 0 && movecontact && var(1) = 1
trigger8 = stateno = 1250 && animelemtime(6) > 0 && animelemtime(7) < 0 && movecontact
trigger9 = stateno = 1250 && animelemtime(9) > 0 && animelemtime(10) < 0 && movecontact
trigger10 = stateno = 1250 && animelemtime(12) > 0 && animelemtime(13) < 0 && movecontact
trigger11 = stateno = 1250 && animelemtime(15) > 0 && animelemtime(16) < 0 && movecontact
trigger12 = stateno = 1250 && animelemtime(18) > 0 && animelemtime(21) < 0 && movecontact
trigger13 = stateno = 1300 && animelemtime(6) > 0 && animelemtime(7) < 0 && movecontact
trigger14 = stateno = 1300 && animelemtime(9) > 0 && animelemtime(10) < 0 && movecontact
trigger15 = stateno = 1350 && animelemtime(6) > 0 && animelemtime(7) < 0 && movecontact
trigger16 = stateno = 1350 && animelemtime(9) > 0 && animelemtime(10) < 0 && movecontact
trigger17 = stateno = 1350 && animelemtime(12) > 0 && animelemtime(13) < 0 && movecontact
trigger18 = stateno = 1350 && animelemtime(15) > 0 && animelemtime(16) < 0 && movecontact
trigger19 = stateno = 1350 && animelemtime(18) > 0 && animelemtime(21) < 0 && movecontact
trigger20 = stateno = 1400 && animelemtime(7) > 0 && animelemtime(8) < 0 && movecontact
trigger21 = stateno = 1450 && animelemtime(7) > 0 && animelemtime(8) < 0 && movecontact
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
;双龍波動拳
[State -1, Souryu Hadouken]
type = changestate
value = 4200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = helper(9999),var(32) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
trigge/rall = var(17) = 21
triggerall = numpartner
triggerall = partner,alive = 1
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;真・昇龍拳(最強ファイターズ)
[State -1, Shin Shoryu Ken]
type = changestate
value = 4100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(31) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = helper(10000),var(7) = 0 && var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;真・昇龍拳(SF3)
[State -1, Shin Shoryu Ken]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(31) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = helper(10000),var(7) || var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;==============================================================================
; MAX超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;真・空中竜巻旋風脚
[State -1, Shin Tatsumaki Sempu Kyaku]
type = changestate
value = 3250
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(33) > 0
triggerall = statetype = A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = helper(10000),var(8) || var(49)
trigger1 = ctrl || stateno = 105 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;真・竜巻旋風脚
[State -1, Shin Tatsumaki Sempu Kyaku]
type = changestate
value = 3150
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(33) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = helper(10000),var(8) || var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;滅・昇竜拳(ZERO3)
[State -1, Metsu Shoryu Ken]
type = changestate
value = 3300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(30) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = helper(10000),var(6) || var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;滅・昇竜拳(SF4)
[State -1, Metsu Shoryu Ken]
type = changestate
value = 3400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(30) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = helper(10000),var(6) = 0 && var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;電刃波動拳
[State -1, Denjin Hadou Ken]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(29) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;空中真空竜巻旋風脚
[State -1, Shinku Tatsumaki Sempu Kyaku]
type = changestate
value = 3200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(27) > 0 || helper(9999),var(28) > 0
triggerall = statetype = A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 105 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;真空竜巻旋風脚
[State -1, Shinku Tatsumaki Sempu Kyaku]
type = changestate
value = 3100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(27) > 0 || helper(9999),var(28) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;真空波動拳
[State -1, Shinku Hadou Ken]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(25) > 0 || helper(9999),var(26) > 0
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
;EX上段足刀蹴り
[State -1, EX Joudan Sokutou Geri]
type = changestate
value = 1450
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(21) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX灼熱波動拳
[State -1, EX Shakunetsu Hadou Ken]
type = changestate
value = 2050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(12) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(20) = 0
triggerall = helper(10000),var(5) || var(49)
trigger1 = ctrl || stateno = 40 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX昇龍拳
[State -1, EX Shoryu Ken]
type = changestate
value = 1150
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(15) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 40 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX空中竜巻旋風脚
[State -1, EX Tatsumaki Sempu Kyaku]
type = changestate
value = 1350
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(18) > 0
triggerall = statetype = A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 40 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX竜巻旋風脚
[State -1, EX Tatsumaki Sempu Kyaku]
type = changestate
value = 1250
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(18) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 40 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX葉流し
[State -1, EX Hanagashi]
type = changestate
value = 1550
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(24) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 40 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX波動拳(雷光)
[State -1, EX Hadou Ken]
type = changestate
value = 1050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(9) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(20) = 0
triggerall = helper(10000),var(5) || var(49)
trigger1 = ctrl || stateno = 40 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX波動拳(灼熱)
[State -1, EX Hadou Ken]
type = changestate
value = 2050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(9) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(20) = 0
triggerall = helper(10000),var(5) = 0 && var(49) = 0
trigger1 = ctrl || stateno = 40 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
;上段足刀蹴り
[State -1, Joudan Sokutou Geri]
type = changestate
value = 1400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(19) > 0 || helper(9999),var(20) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;灼熱波動拳
[State -1, Shakunetsu Hadou Ken]
type = changestate
value = 2000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(10) > 0 || helper(9999),var(11) > 0
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = helper(10000),var(5) || var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;昇龍拳
[State -1, Shoryu Ken]
type = changestate
value = 1100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(13) > 0 || helper(9999),var(14) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;空中竜巻旋風脚
[State -1, Tatsumaki Sempu Kyaku]
type = changestate
value = 1300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(16) > 0 || helper(9999),var(17) > 0
triggerall = statetype = A
trigger1 = ctrl || stateno = 105 || stateno = [120,139]
trigger2 = var(11) = 1

;竜巻旋風脚
[State -1, Tatsumaki Sempu Kyaku]
type = changestate
value = 1200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(16) > 0 || helper(9999),var(17) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;葉流し
[State -1, Hanagashi]
type = changestate
value = 1500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(22) > 0 || helper(9999),var(23) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;波動拳
[State -1, Hadou Ken]
type = changestate
value = 1000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(7) > 0 || helper(9999),var(8) > 0
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

;心眼・下段
[State -1, Kurubushi Kick]
type = changestate
value = 360
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(5) > 0
triggerall = statetype != A
triggerall = helper(10000),var(3) || var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;心眼・上段
[State -1, Shingan Joudan]
type = changestate
value = 350
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(4) > 0
triggerall = statetype != A
triggerall = helper(10000),var(2) || var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;背負い投げ
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

;巴投げ
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

;くるぶしキック
[State -1, Kurubushi Kick]
type = changestate
value = 330
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(3) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;肘打ち
[State -1, Hijiuchi]
type = changestate
value = 340
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(2) > 0
triggerall = statetype != A
triggerall = helper(10000),var(1) || var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;旋風脚
[State -1, Senpu Kyaku]
type = changestate
value = 310
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(1) > 0
triggerall = statetype != A
triggerall = helper(10000),var(0) || var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;鳩尾砕き
[State -1, Mizo-ochi Kudaki]
type = changestate
value = 320
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(1) > 0
triggerall = statetype != A
triggerall = helper(10000),var(0) = 0 && var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;鎖骨割り
[State -1, Sakotsu Wari]
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
trigger2 = stateno = 200 && animelemtime(3) > 0
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger4 = stateno = 235 && animelemtime(3) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(3) > 0

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
trigger2 = stateno = 200 && animelemtime(3) > 0
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger4 = stateno = 235 && animelemtime(3) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(3) > 0

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
trigger2 = stateno = 200 && animelemtime(3) > 0
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger4 = stateno = 235 && animelemtime(3) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(3) > 0

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
trigger2 = stateno = 200 && animelemtime(3) > 0
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger4 = stateno = 235 && animelemtime(3) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(3) > 0

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
trigger2 = stateno = 200 && animelemtime(3) > 0
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger4 = stateno = 235 && animelemtime(3) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(3) > 0

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
trigger2 = stateno = 200 && animelemtime(3) > 0
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger4 = stateno = 235 && animelemtime(3) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(3) > 0

;==============================================================================
; 基本システム
;==============================================================================
;------------------------------------------------------------------------------
;波動の構え
[State -1, Taunt]
type = changestate
value = 196
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(6) > 0
triggerall = statetype != A
triggerall = helper(10000),var(4) || var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

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

;-------------------------< 割り込み >-------------------------
;--- EXセービングアタック ---
;EX葉流し
[State -3, EX Hanagashi]
type = changestate
value = 1550
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = p2bodydist x = [-10,60]
triggerall = p2movetype = A
triggerall = p2statetype = S || p2statetype = C
triggerall = (fvar(2) = 0 && power >= 1000) || fvar(2)
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;--- 3ゲージ以上 ---

;双龍波動拳
[State -3, Souryu Hadouken]
type = changestate
value = 4200
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = p2bodydist x = [-10,90]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 3000) || (fvar(2) && power >= 2000)
triggerall = statetype != A
triggerall = movetype != H
triggerall = var(17) = 21
triggerall = numpartner
triggerall = partner,alive = 1
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;真・昇龍拳
[State -3, Shin Shoryu Ken]
type = changestate
value = 4100
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = p2bodydist x = [-10,90]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 3000) || (fvar(2) && power >= 2000)
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;--- 2ゲージ以上 ---
;滅・昇龍拳
[State -3, Metsu Shoryu Ken]
type = changestate
value = 3400
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = var(59) = [0,124]
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-50,0]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 2000) || (fvar(2) && power >= 1000)
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX昇龍拳
[State -3, EX Shoryu Ken]
type = changestate
value = 1150
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = var(59) = [125,249]
triggerall = p2bodydist x = [-10,40]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 2000) || (fvar(2) && power >= 1000)
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;昇竜拳 強
[State -3, Shoryu Ken H]
type = changestate
value = 1100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = var(59) = [250,999]
triggerall = p2bodydist x = [-10,40]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = (fvar(2) = 0 && power >= 2000) || (fvar(2) && power >= 1000)
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;--- 1ゲージ ---
;EX昇龍拳
[State -3, EX Shoryu Ken]
type = changestate
value = 1150
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = var(59) = [0,249]
triggerall = p2bodydist x = [-10,40]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;昇竜拳 強
[State -3, Shoryu Ken H]
type = changestate
value = 1100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = var(59) = [250,999]
triggerall = p2bodydist x = [-10,40]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;--- ゲージなし ---
;昇竜拳 強
[State -3, Shoryu Ken H]
type = changestate
value = 1100+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = p2bodydist x = [-10,40]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = fvar(2) = 0 && power < 1000
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;-------------------------< 遠距離攻撃潰し >-------------------------
;真空波動拳
[State -3, Shinku Hadou Ken]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*5
triggerall = p2bodydist x >= 120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = enemynear,ctrl = 0
triggerall = enemynear,vel x <= 0
triggerall = enemynear,animtime < -6-((p2bodydist x-80)/8)
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX波動拳
[State -3, EX Hadou Ken]
type = changestate
value = 2050
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*5
triggerall = p2bodydist x >= 120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = enemynear,ctrl = 0
triggerall = enemynear,vel x <= 0
triggerall = enemynear,animtime < -10-((p2bodydist x-80)/8)
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
;鎖骨割り
[State -1, Sakotsu Wari]
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
triggerall = enemynear,animtime = [-21,-16]
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
triggerall = enemynear,animtime = [-5,-1]
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;くるぶしキック
[State -1, Crouch Medium Kick]
type = changestate
value = 330
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*50
triggerall = !inguarddist
triggerall = p2statetype = L
triggerall = p2bodydist x = [-10,70]
triggerall = statetype != A
triggerall = enemynear,stateno = 5120
triggerall = enemynear,animtime = [-7,-3]
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;波動拳 強
[State -3, Hadou Ken H]
type = changestate
value = 1000+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*20
triggerall = !inguarddist
triggerall = p2statetype = L
triggerall = p2bodydist x >= 120
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = enemynear,stateno = 5120
triggerall = enemynear,animtime = -12-floor((p2bodydist x -80)/8)-3
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

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

;-------------------------< 弱攻撃ヒット時 >-------------------------
;--- Lv2,3 ---
;くるぶしキック
[State -3, Kurubushi Kick]
type = changestate
value = 330
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = stateno = 200 || stateno = 205 || stateno = 235 || stateno = 400 || stateno = 430
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,40]
triggerall = statetype != A
trigger1 = var(10) = 1

;鳩尾砕き
[State -3, Mizo-ochi Kudaki]
type = changestate
value = 330
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = stateno = 200 || stateno = 205 || stateno = 235 || stateno = 400 || stateno = 430
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [40,60]
triggerall = statetype != A
trigger1 = var(10) = 1

;-------------------------< 強攻撃ヒット時 >-------------------------
;--- Lv2,3 ---
;鎖骨割り
[State -3, Sakotsu Wari]
type = changestate
value = 300
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = stateno = 215 || stateno = 245 || stateno = 410
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,15]
triggerall = statetype != A
trigger1 = var(10) = 1

;くるぶしキック
[State -3, Kurubushi Kick]
type = changestate
value = 330
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = stateno = 215 || stateno = 245 || stateno = 410
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [15,35]
triggerall = statetype != A
trigger1 = var(10) = 1

;鳩尾砕き
[State -3, Mizo-ochi Kudaki]
type = changestate
value = 320
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = stateno = 215 || stateno = 245 || stateno = 410
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [35,45]
triggerall = statetype != A
trigger1 = var(10) = 1

;-------------------------< 強攻撃ガード時 >-------------------------
;波動拳 弱
[State -3, Hadou Ken L]
type = changestate
value = 1000+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = random < var(59)*100
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 215 || stateno = 245 || stateno = 410 || stateno = 440 || stateno = 330
triggerall = moveguarded = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,60]
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< 特殊技ヒット時 動作指定 >-------------------------
;--- 5ゲージ以上 ---
;5消費
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 5000) || (fvar(2) && power >= 4000)
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 4000 && power < 5000) || (fvar(2) && power >= 3000 && power < 4000)
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
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
triggerall = stateno = 300 || stateno = 320 || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
trigger1 = fvar(2) = 0 && power < 1000
v = 57
value = 0

;-------------------------< 特殊技ヒット時 5ゲージ >-------------------------
;--- Lv1 ---
;電刃波動拳
[State -3, Denjin Hadou Ken]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 1
triggerall = var(57) = 5
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;--- Lv2,3 ---
;電刃波動拳
[State -3, Denjin Hadou Ken]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 5
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0) || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< 特殊技ヒット時 4ゲージ >-------------------------
;--- Lv1 ---
;EX上段足刀蹴り→真・昇龍拳
[State -3, EX Joudan Sokutou Geri]
type = changestate
value = 1450+((var(55) := 4100)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 1
triggerall = var(57) = 4
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,70]
triggerall = statetype != A
trigger1 = var(11) = 1

;--- Lv2,3 ---
;EX上段足刀蹴り→真・昇龍拳
[State -3, EX Joudan Sokutou Geri]
type = changestate
value = 1450+((var(55) := 4100)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 4
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0) || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,70]
triggerall = statetype != A
trigger1 = var(11) = 1

;後退
[State -1, Walk Back]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 4100
triggerall = var(57) = 4
triggerall = numtarget(1450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-20,30]
triggerall = statetype != A
trigger1 = ctrl || stateno = [120,139]
v = 56
value = 21

;→双龍波動拳
[State -3, Souryu Hadouken]
type = changestate
value = 4200
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 4100
triggerall = var(57) = 4
triggerall = numtarget(1450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-20,100]
triggerall = p2bodydist y = [-55,-50]
triggerall = statetype != A
triggerall = var(17) = 21
triggerall = numpartner
triggerall = partner,alive = 1
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;→真・昇龍拳
[State -3, Shin Shoryu Ken]
type = changestate
value = 4100
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 4100
triggerall = var(57) = 4
triggerall = numtarget(1450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-20,100]
triggerall = p2bodydist y = [-60,-50]
triggerall = statetype != A
triggerall = !(var(17) = 21 && numpartner && partner,alive)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 特殊技ヒット時 3ゲージ >-------------------------
;--- Lv1 ---
;双龍波動拳
[State -3, Souryu Hadouken]
type = changestate
value = 4200
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 1
triggerall = var(57) = 3
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,50]
triggerall = statetype != A
triggerall = var(17) = 21
triggerall = numpartner
triggerall = partner,alive = 1
trigger1 = var(11) = 1

;真・昇龍拳
[State -3, Shin Shoryu Ken]
type = changestate
value = 4100
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 1
triggerall = var(57) = 3
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,50]
triggerall = statetype != A
trigger1 = var(11) = 1

;--- Lv2,3 ---
;双龍波動拳
[State -3, Souryu Hadouken]
type = changestate
value = 4200
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 3
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0) || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,50]
triggerall = statetype != A
triggerall = var(17) = 21
triggerall = numpartner
triggerall = partner,alive = 1
trigger1 = var(11) = 1

;真・昇龍拳
[State -3, Shin Shoryu Ken]
type = changestate
value = 4100
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 3
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0) || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,50]
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< 特殊技ヒット時 2ゲージ >-------------------------
;--- Lv1 ---
;電刃波動拳
[State -3, Denjin Hadou Ken]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 1
triggerall = var(57) = 2
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;--- Lv2,3 ---
;電刃波動拳
[State -3, Denjin Hadou Ken]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 2
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0) || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< 特殊技ヒット時 1ゲージ >-------------------------
;--- Lv1 ---
;真空波動拳
[State -3, Shinku Hadou Ken]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 1
triggerall = var(57) = 1
triggerall = var(58) = [0,499]
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;EX上段足刀蹴り→竜巻旋風脚 強
[State -3, EX Joudan Sokutou Geri]
type = changestate
value = 1450+((var(55) := 1201)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 1
triggerall = var(57) = 1
triggerall = var(58) = [500,999]
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0)
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,70]
triggerall = statetype != A
trigger1 = var(11) = 1

;→竜巻旋風脚 強
[State -3, Tatsumaki Sempu Kyaku]
type = changestate
value = 1200+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 1
triggerall = var(55) = 1201
triggerall = var(57) = 1
triggerall = numtarget(1450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-20,200]
triggerall = enemynear,vel y < 0 || p2bodydist y < -85
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;--- Lv2 ---
;真空波動拳
[State -3, Shinku Hadou Ken]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 2
triggerall = var(57) = 1
triggerall = var(58) = [0,499]
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0) || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,100]
triggerall = statetype != A
trigger1 = var(11) = 1

;EX上段足刀蹴り→竜巻旋風脚 強
[State -3, EX Joudan Sokutou Geri]
type = changestate
value = 1450+((var(55) := 1201)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 2
triggerall = var(57) = 1
triggerall = var(58) = [500,749]
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0) || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,70]
triggerall = statetype != A
trigger1 = var(11) = 1

;→竜巻旋風脚 強
[State -3, Tatsumaki Sempu Kyaku]
type = changestate
value = 1200+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 2
triggerall = var(55) = 1201
triggerall = var(57) = 1
triggerall = numtarget(1450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-20,200]
triggerall = enemynear,vel y < 0 || p2bodydist y < -85
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;EX上段足刀蹴り→空中弱パンチ
[State -3, EX Joudan Sokutou Geri]
type = changestate
value = 1450+((var(55) := 605)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 2
triggerall = var(57) = 1
triggerall = var(58) = [750,999]
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0) || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,70]
triggerall = statetype != A
trigger1 = var(11) = 1

;→中ジャンプ→空中弱パンチ
[State -3, Jump]
type = changestate
value = 40+((var(56) := 3)*(var(57) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 2
triggerall = var(55) = 605
triggerall = var(57) = 1
triggerall = numtarget(1450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-20,120]
triggerall = p2bodydist y <= -80
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;→空中弱パンチ
[State -3, Air Light Panch]
type = changestate
value = 605
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 2
triggerall = var(55) = 605
triggerall = var(57) = 1
triggerall = numtarget(1450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-20,80]
triggerall = p2bodydist x = [-60,60]
triggerall = statetype = A
trigger1 = ctrl || stateno = [120,139]

;--- Lv3 ---
;EX上段足刀蹴り→空中弱パンチ
[State -3, EX Joudan Sokutou Geri]
type = changestate
value = 1450+((var(55) := 605)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 3
triggerall = var(57) = 1
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0) || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,70]
triggerall = statetype != A
trigger1 = var(11) = 1

;→中ジャンプ→空中弱パンチ
[State -3, Jump]
type = changestate
value = 40+((var(56) := 3)*(var(57) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 3
triggerall = var(55) = 605
triggerall = var(57) = 1
triggerall = numtarget(1450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-20,120]
triggerall = p2bodydist y <= -80
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;→空中弱パンチ
[State -3, Air Light Panch]
type = changestate
value = 605
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = 3
triggerall = var(55) = 605
triggerall = var(57) = 1
triggerall = numtarget(1450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-20,80]
triggerall = p2bodydist x = [-60,60]
triggerall = statetype = A
trigger1 = ctrl || stateno = [120,139]

;-------------------------< 特殊技ヒット時 ゲージなし >-------------------------
;竜巻旋風脚 強
[State -3, Tatsumaki Sempu Kyaku H]
type = changestate
value = 1200+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 0
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0) || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S
triggerall = p2bodydist x = [-10,50]
triggerall = statetype != A
trigger1 = var(11) = 1

;上段足刀蹴り 強
[State -3, Joudan Sokutou Geri H]
type = changestate
value = 1400+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 0
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0) || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = C
triggerall = p2bodydist x = [-10,50]
triggerall = statetype != A
trigger1 = var(11) = 1

;波動拳 強
[State -3, Hadou Ken H]
type = changestate
value = 1000+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(57) = 0
triggerall = (stateno = 300 && animelemtime(6) >= 0) || (stateno = 320 && animelemtime(7) >= 0) || stateno = 330
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [50,70]
triggerall = statetype != A
trigger1 = var(11) = 1

;-------------------------< 空中弱攻撃ヒット時 動作指定 >-------------------------
;--- 1ゲージ ---
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 600 || stateno = 605
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
triggerall = stateno = 600 || stateno = 605
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
trigger1 = var(58) = [500,999]
trigger2 = p2life < 150 
v = 57
value = 1

;--- ゲージなし ---
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 600 || stateno = 605
triggerall = movehit = 1
triggerall = p2movetype = H
trigger1 = fvar(2) = 0 && power < 1000
v = 57
value = 0

;-------------------------< 空中弱攻撃ヒット時 1ゲージ >-------------------------
;--- Lv2,3 ---
;空中真空竜巻旋風脚
[State -3, Airborne Shinku Tatumaki Sempu Kyaku]
type = changestate
value = 3200
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 1
triggerall = stateno = 600 || stateno = 605
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,40]
triggerall = p2bodydist y = [-40,80]
triggerall = statetype = A
trigger1 = var(11) = 1

;-------------------------< 空中弱攻撃ヒット時 ゲージなし >-------------------------
;--- Lv2,3 ---
;空中竜巻旋風脚
[State -3, Airborne Tatumaki Sempu Kyaku]
type = changestate
value = 1300+((var(1) := (p2bodydist y <= 0))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = var(57) = 0
triggerall = stateno = 600 || stateno = 605
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,60]
triggerall = statetype = A
trigger1 = var(11) = 1

;-------------------------< EX上段足刀蹴りヒット時 >-------------------------
;--- Lv2,3 ---
;ダッシュ
[State -3, Run]
type = changestate
value = 100
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = numtarget(1450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2bodydist x >= 120
triggerall = p2bodydist y <= -40
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = [120,139]

;-------------------------< 電刃波動拳ヒット時 >-------------------------
;ダッシュ
[State -3, Run]
type = changestate
value = 100
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numhelper(3070)
triggerall = helper(3070),numtarget(3070)
triggerall = p2stateno = [5710,5715]
triggerall = p2movetype = H
triggerall = p2bodydist x >= 60
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = [120,139]

;葉流し
[State -1, Hanagashi]
type = changestate
value = 1500
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno = [5714,5715]
triggerall = p2movetype = H
triggerall = p2bodydist x = [-10,60]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< セービングアタックヒット時 >-------------------------
;--- Lv2,3 ---
;近距離立ち強パンチ
[State -1, Stand Hard Panch]
type = changestate
value = 215
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = numtarget(1510) || numtarget(1560)
triggerall = p2movetype = H
triggerall = p2statetype = S
triggerall = p2bodydist x = [-10,25]
triggerall = statetype != A
triggerall = var(40) = [0,1]
trigger1 = ctrl || stateno = 30 || stateno = [120,139]

;近距離立ち強キック
[State -1, Stand Hard Kick]
type = changestate
value = 245
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = numtarget(1510) || numtarget(1560)
triggerall = p2movetype = H
triggerall = p2statetype = S
triggerall = p2bodydist x = [-10,40]
triggerall = statetype != A
triggerall = var(40) = 2
trigger1 = ctrl || stateno = 30 || stateno = [120,139]

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
triggerall = var(51) = [2,3]
triggerall = !inguarddist
triggerall = numtarget(600)
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,30]
triggerall = p2stateno != [140,159]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;くるぶしキック
[State -1, Kurubushi Kick]
type = changestate
value = 330
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) = [2,3]
triggerall = !inguarddist
triggerall = numtarget(600)
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [30,60]
triggerall = p2stateno != [140,159]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

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
triggerall = p2bodydist x = [-10,45]
triggerall = p2stateno = [140,159]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;くるぶしキック
[State -1, Kurubushi Kick]
type = changestate
value = 330
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*10
triggerall = !inguarddist
triggerall = numtarget(600)
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [45,60]
triggerall = p2stateno = [140,159]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< アドリブコンボ >-------------------------
;昇龍拳 弱
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
triggerall = p2bodydist x = [-10,40]
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
;大ジャンプ めくり
[State -3, Jump]
type = null;changestate
value = 40+((var(56) := 4)*(var(57) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*50
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != [5710,5715]
triggerall = (p2dist x+enemynear,const(size.ground.back)) = [130,150]
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
triggerall = p2bodydist x = [-10,50+(9*vel x)]
triggerall = vel x > 0
triggerall = sysvar(2) = 1
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
trigger1 = p2statetype = S
trigger1 = vel y >= 0
trigger1 = pos y = [-55,-36]
trigger2 = p2statetype = C || p2stateno = 5120
trigger2 = vel y >= 0
trigger2 = pos y = [-50,-36]

;空中強キック 通常J 相手立ち
[State -1, Air Hard Kick]
type = changestate
value = 645
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*30
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2bodydist x = [-10,50+(9*vel x)]
triggerall = vel x > 0
triggerall = sysvar(2) = 0
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
trigger1 = p2statetype = S
trigger1 = vel y >= 0
trigger1 = pos y = [-80,-51]
trigger2 = p2statetype = C || p2stateno = 5120
trigger2 = vel y >= 0
trigger2 = pos y = [-70,-51]

;空中強キック 通常J めくり
[State -1, Air Hard Kick]
type = changestate
value = 645
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*50
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2dist x = [-enemynear,const(size.ground.back)+(6*vel x),0+(6*vel x)]
triggerall = vel x > 0
triggerall = sysvar(2) = 0
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
trigger1 = p2statetype = S
trigger1 = vel y >= 0
trigger1 = pos y = [-85,-51]
trigger2 = p2statetype = C || p2stateno = 5120
trigger2 = vel y >= 0
trigger2 = pos y = [-70,-51]

;-------------------------< 空対空 >-------------------------
;空中弱パンチ
[State -3, Air Light Panch]
type = changestate
value = 605
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(53)*50
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,40+(vel x*6)+(enemynear,vel x*6)]
triggerall = p2bodydist y = [-60,60]
triggerall = statetype = A && vel x != 0
trigger1 = ctrl || stateno = [120,139]

;-------------------------< 地対空 >-------------------------
;EX昇龍拳
[State -1, Shoryu Ken EX]
type = changestate
value = 1150
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*10
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,30+(enemynear,vel x*5)]
triggerall = p2bodydist y = [-90,-20]
triggerall = enemynear,vel y > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;昇龍拳 強
[State -1, Shoryu Ken H]
type = changestate
value = 1100+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(58) = [0,499]
triggerall = random <= var(59)*30
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,40+(enemynear,vel x*5)]
triggerall = p2bodydist y = [-90,-20]
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
triggerall = var(58) = [500,999]
triggerall = random <= var(59)*30
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10+(enemynear,vel x*7),30+(enemynear,vel x*7)]
triggerall = p2bodydist y = [-90,20]
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
triggerall = p2bodydist x = [40+(enemynear,vel x*10),65+(enemynear,vel x*10)]
triggerall = p2bodydist y = [-90,-40]
triggerall = enemynear,vel y >= 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 対地 >-------------------------
;--- セービング ---
;葉流し
[State -1, Hanagashi]
type = changestate
value = 1500
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [30,60]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;--- 近距離 ---
;近距離強パンチ
[State -1, Stand Hard Panch]
type = changestate
value = 215
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*50
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [-10,30]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;近距離弱キック
[State -1, Stand Light Kick]
type = changestate
value = 235
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*25
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [-10,25]
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
triggerall = random < var(59)*25
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [25,50]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;--- 中距離 ---
;遠距離強パンチ
[State -1, Stand Hard Panch]
type = changestate
value = 210
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(58) = [0,499]
triggerall = random < var(59)*20
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [45,65]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;くるぶしキック
[State -1, Crouch Medium Kick]
type = changestate
value = 330
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(58) = [500,999]
triggerall = random < var(59)*20
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [50,70]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;--- 遠距離 ---
;しゃがみ強キック
[State -1, Stand Hard Panch]
type = changestate
value = 440
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = var(58) = [0,499]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [60,80]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;鎖骨割り
[State -1, Sakotsu Wari]
type = changestate
value = 300
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = var(58) = [500,749]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [60,75]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;鳩尾砕き
[State -1, Mizo-ochi Kudaki]
type = changestate
value = 320
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = var(58) = [750,999]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [60,90]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 遠距離 >-------------------------
;波動拳
[State -1, Hadou Ken]
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

;-------------------------< 投げ >-------------------------
;巴投げ
[State -3, Throw]
type = changestate
value = 850
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
value = 800
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
