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
;-| AI起動用 |-----------------------------------------------------------------
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
name = "CLIMAXデッドリーレイブ"
command = ~F, D, B, F, y+b
time = 30

[Command]
name = "デッドリーレイブ フィニッシュ"
command = D, DB, B, y+b
time = 15

;------------------------------------------------------------------------------
;-| MAX超必殺技 |--------------------------------------------------------------

[Command]
name = "サンダーブレイク"
command = ~DB, F, D, B, DF, x+y
time = 30

[Command]
name = "サンダーブレイク 簡易版"
command = ~D, DB, B, D, F, x+y
time = 30

[Command]
name = "サンダーブレイク 簡易版"
command = ~D, DB, B, DB, F, x+y
time = 30

[Command]
name = "阿修羅疾風拳"
command = ~D, DF, F, D, B, x+y
time = 30

[Command]
name = "阿修羅疾風拳"
command = ~D, DF, F, DF, B, x+y
time = 30

[Command]
name = "レイジングデッドエンド"
command = ~D, DB, B, D, DB, B, x+y
time = 30

[Command]
name = "MAXデッドリーレイブ"
command = ~F, D, B, F, x+y
time = 30

[Command]
name = "MAX羅生門"
command = ~F, D, B, F, D, B, x+y
time = 35

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "レイジングストーム 弱"
command = ~D, DB, B, DB, F
time = 30

[Command]
name = "レイジングストーム 強"
command = ~D, DB, B, D, F
time = 30

[Command]
name = "レイジングストーム 簡易版 弱"
command = ~D, DB, B, D, F, x
time = 30

[Command]
name = "レイジングストーム 簡易版 弱"
command = ~D, DB, B, DB, F, x
time = 30

[Command]
name = "レイジングストーム 簡易版 強"
command = ~D, DB, B, D, F, y
time = 30

[Command]
name = "レイジングストーム 簡易版 強"
command = ~D, DB, B, DB, F, y
time = 30

[Command]
name = "羅生門"
command = ~D, DB,B, D, DB,B, c
time = 35

[Command]
name = "羅生門"
command = ~F, D, B, F, D, B, y
time = 35

[Command]
name = "虚空烈風斬 弱"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "虚空烈風斬 強"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "デッドリーレイブ 弱"
command = ~F, D, B, F, x
time = 30

[Command]
name = "デッドリーレイブ 強"
command = ~F, D, B, F, y
time = 30

;------------------------------------------------------------------------------
;-| EX必殺技 |-----------------------------------------------------------------

[Command]
name = "EX烈風拳"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "EX疾風拳"
command = ~D, DB, B, x+y
time = 15

[Command]
name = "EX当て身投げ・螺旋"
command = ~F, D, B, x+y
time = 20

[Command]
name = "EX当て身投げ・裏雲隠し"
command = ~F, D, B, a+b
time = 20

[Command]
name = "EX邪影拳"
command = ~B, D, F, a+b
time = 20

[Command]
name = "EX雷鳴豪破投げ"
command = ~F, D, DF, x+y
time = 15

[Command]
name = "EX雷鳴豪破投げ"
command = ~F, D, F, x+y
time = 15

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "烈風拳 弱"
command = ~D, DF, F, x
time = 15

[Command]
name = "烈風拳 強"
command = ~D, DF, F, y
time = 15

[Command]
name = "上段当て身投げ"
command = ~F, D, B, x
time = 20

[Command]
name = "中段当て身打ち"
command = ~F, D, B, y
time = 20

[Command]
name = "下段当て身打ち"
command = ~F, D, B, a
time = 20

[Command]
name = "疾風拳 弱"
command = ~D, DB, B, x
time = 15

[Command]
name = "疾風拳 強"
command = ~D, DB, B, y
time = 15

[Command]
name = "邪影拳 弱"
command = ~B, D, F, a
time = 20

[Command]
name = "邪影拳 強"
command = ~B, D, F, b
time = 20

[Command]
name = "雷鳴豪破投げ"
command = ~F, D, DF, x
time = 15

[Command]
name = "雷鳴豪破投げ"
command = ~F, D, F, x
time = 15

[Command]
name = "雷鳴豪破投げ"
command = ~F, D, DF, y
time = 15

[Command]
name = "雷鳴豪破投げ"
command = ~F, D, F, y
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
trigger3 = stateno = 215 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 235 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger5 = stateno = 245 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 245 && animelemtime(6) > 0 && animelemtime(7) < 0
trigger7 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger8 = stateno = 410 && animelemtime(2) > 0 && animelemtime(5) < 0
trigger9 = stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger10 = stateno = 600 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger11 = stateno = 605 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger12 = stateno = 610 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger13 = stateno = 615 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger14 = stateno = 615 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger15 = stateno = 630 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger16 = stateno = 640 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger17 = stateno = 645 && animelemtime(3) > 0 && animelemtime(4) < 0
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
trigger3 = stateno = 215 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 235 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger5 = stateno = 245 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 245 && animelemtime(6) > 0 && animelemtime(7) < 0
trigger7 = stateno = 250 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger8 = stateno = 300 && animelemtime(7) > 0 && var(1) = 1
trigger9 = stateno = 330 && animelemtime(5) > 0 && animelemtime(6) < 0 && var(1) = 1
trigger10 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger11 = stateno = 410 && animelemtime(2) > 0 && animelemtime(5) < 0
trigger12 = stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger13 = stateno = 600 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger14 = stateno = 605 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger15 = stateno = 610 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger16 = stateno = 615 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger17 = stateno = 615 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger18 = stateno = 630 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger19 = stateno = 645 && animelemtime(3) > 0 && animelemtime(4) < 0
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
trigger1 = 0;stateno = 1050 && animelemtime(21) > 0 && animelemtime(23) < 0 && movecontact
trigger2 = stateno = 1110 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger3 = stateno = 1210 && numhelper(1220)
trigger3 = helper(1220),movecontact = [1,12]
trigger4 = stateno = 1310 && animelemtime(7) > 0 && animelemtime(9) < 0
trigger5 = stateno = 1500 && animelemtime(5) > 0 && movecontact
trigger6 = stateno = 1520 && var(1) = 0 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger7 = stateno = 1520 && var(1) = 1 && animelemtime(3) > 0 && animelemtime(4) < 0 && movecontact
trigger8 = stateno = 1520 && var(1) = 1 && animelemtime(7) > 0 && animelemtime(8) < 0 && movecontact
trigger9 = stateno = 1550 && animelemtime(7) > 0 && movecontact
trigger10 = stateno = 1570 && animelemtime(3) > 0 && animelemtime(4) < 0 && movecontact
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
trigger1 = var(59) <= 0
trigger1 = var(50)
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

;==============================================================================
; CLIMAX超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;デッドリーレイブ
[State -1, Deadly Rave]
type = changestate
value = 4000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(32) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;==============================================================================
; MAX超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;MAX羅生門
[State -1, Rasho Mon]
type = changestate
value = 3150
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(37) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = var(49) = 1
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;サンダーブレイク
[State -1, Thunder Break]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(25) > 0 || helper(9999),var(26) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;レイジングデッドエンド 当て身
[State -1, Raging Dead End]
type = changestate
value = 3500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(31) > 0
triggerall = statetype != A
triggerall = fvar(10) > 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;レイジングデッドエンド 準備
[State -1, Raging Dead End]
type = changestate
value = 3400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(31) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = fvar(10) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;MAXデッドリーレイブ
[State -1, MAX Deadly Rave]
type = changestate
value = 3750
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(36) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = var(49) = 1
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;阿修羅疾風拳
[State -1, Asyura Shippu Ken]
type = changestate
value = 3300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(30) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 3000 || (fvar(2) && power >= 2000))

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;羅生門
[State -1, Rashoumon]
type = changestate
value = 3100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(27) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;デッドリーレイブ
[State -1, Deadly Rave]
type = changestate
value = 3700
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(34) > 0 || helper(9999),var(35) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(49) = 1
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;レイジングストーム
[State -1, Raging Storm]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(21) > 0 || helper(9999),var(22) > 0 || helper(9999),var(23) > 0 || helper(9999),var(24) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;虚空烈風斬
[State -1, Koku Reppu Zan]
type = changestate
value = 3600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(28) > 0 || helper(9999),var(29) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;==============================================================================
; EX必殺技
;==============================================================================
;------------------------------------------------------------------------------
;EX当て身投げ・裏雲隠し
[State -1, EX Athemi Nage Urakumo-Gakushi]
type = changestate
value = 1350
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(12) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX当て身投げ・螺旋
[State -1, EX Athemi Nage Rasen]
type = changestate
value = 1150
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(11) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX邪影拳
[State -1, EX Jaei Ken]
type = changestate
value = 1550
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(18) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = stateno = 230 && animelemtime(3) > 0

;EX雷鳴豪波投げ
[State -1, EX Raimei Gouha Nage]
type = changestate
value = 1650
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(20) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX疾風拳
[State -1, EX Shippu Ken]
type = changestate
value = 1450
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(15) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype = A
triggerall = var(20) = 0
trigger1 = ctrl || stateno = 105 || stateno = [120,139]
trigger2 = var(11) = 1

;EX烈風拳
[State -1, EX Reppu Ken]
type = changestate
value = 1050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(7) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(20) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = stateno = 230 && animelemtime(3) > 0
;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
;邪影拳
[State -1, Jaei Ken]
type = changestate
value = 1500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(16) > 0 || helper(9999),var(17) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = stateno = 230 && animelemtime(3) > 0

;中段当て身打ち
[State -1, Jodan Atemi Uchi]
type = changestate
value = 1200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(9) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;下段当て身打ち
[State -1, Gedan Atemi Uchi]
type = changestate
value = 1300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(10) > 0
triggerall = statetype != A
triggerall = stateno != 1310
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;上段当て身投げ
[State -1, Jodan Atemi Nage]
type = changestate
value = 1100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(8) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;雷鳴豪波投げ
[State -1, Raimei Gouha Nage]
type = changestate
value = 1600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(19) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;疾風拳
[State -1, Shippu Ken]
type = changestate
value = 1400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(13) > 0 || helper(9999),var(14) > 0
triggerall = statetype = A
triggerall = var(20) = 0
trigger1 = ctrl || stateno = 105 || stateno = [120,139]
trigger2 = var(11) = 1

;烈風拳
[State -1, Reppu Ken]
type = changestate
value = 1000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(5) > 0 || helper(9999),var(6) > 0
triggerall = statetype != A
triggerall = var(20) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = stateno = 230 && animelemtime(3) > 0

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
trigger2 = stateno = 200 || stateno = 400
trigger2 = movehit || moveguarded

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
;フェイント
[State -1, Feint]
type = null;changestate
value = 340
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(4) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;雷光回し蹴り
[State -1, RaiKou Mawashi-Geri]
type = changestate
value = 330
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(3) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;飛燕失脚・地
[State -1, Hien Shikkyaku]
type = changestate
value = 310
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(1) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;飛燕失脚・天
[State -1, Hien Shikkyaku]
type = changestate
value = 300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(0) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1



;飛燕失脚・天
[State -1, Hien Shikkyaku Two]
type = changestate
value = 305
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
;虎殺掌
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

;真空投げ
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
trigger5 = stateno = 400 && animelemtime(4) > 0
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
trigger5 = stateno = 400 && animelemtime(4) > 0
trigger6 = stateno = 430 && animelemtime(3) > 0

;近距離立ち強キック
[State -1, Stand Hard Kick]
type = changestate
value = 245
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(10) > 0
triggerall = p2bodydist x < 30
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
triggerall = p2bodydist x < 25
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
triggerall = p2bodydist x < 20
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = stateno = 200 && animelemtime(3) > 0
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger4 = stateno = 235 && animelemtime(3) > 0
trigger5 = stateno = 400 && animelemtime(4) > 0
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

;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = changestate
value = 205
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(7) > 0
triggerall = p2bodydist x < 20
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = stateno = 200 && animelemtime(3) > 0
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger4 = stateno = 235 && animelemtime(3) > 0
trigger5 = stateno = 400 && animelemtime(4) > 0
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
trigger5 = stateno = 400 && animelemtime(4) > 0
trigger6 = stateno = 430 && animelemtime(3) > 0

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
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(2) > 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;ガード
[State -1, Guard]
type = changestate
value = 120
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(0) <= 0 || stateno = 20 || stateno = 100
triggerall = helper(9999),fvar(1) > 0
triggerall = inguarddist
trigger1 = ctrl

;空中ガード
[State -1, Air Guard]
type = changestate
value = 132
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(0) <= 0 && helper(9999),fvar(1) > 0
triggerall = statetype = A
triggerall = !inguarddist
trigger1 = ctrl

;しゃがみガード
[State -1, Crouch Guard]
type = changestate
value = 131
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
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(0) > 0 && helper(9999),fvar(3) <= 0
triggerall = statetype != A
trigger1 = ctrl || stateno = [120,139]
