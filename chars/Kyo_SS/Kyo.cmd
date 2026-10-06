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
name = "CLIMAX神塵"
command = ~F, D, B, F, D, B, y+b
time = 35

[Command]
name = "三神技之壱"
command = ~D, DF, F, D, DF, F, y+b
time = 30

[Command]
name = "天叢雲"
command = ~D, DB, B, D, DB, B, y+b
time = 30

[Command]
name = "最終決戦神技"
command = ~D, DB, B, D, F, y+b
time = 30

;------------------------------------------------------------------------------
;-| MAX超必殺技 |--------------------------------------------------------------

[Command]
name = "MAX大蛇薙"
command = ~D, DB, B, D, F, x+y
time = 30

[Command]
name = "MAX大蛇薙"
command = ~D, DB, B, DB, F, x+y
time = 30

; Alternative controller input: double QCF + RT (c)
[Command]
name = "MAX大蛇薙"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "MAX無式"
command = ~D, DF, F, D, DF, F, x+y
time = 30

[Command]
name = "MAX百八拾弐式"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "MAX神塵"
command = ~F, D, B, F, D, B, x+y
time = 35

[Command]
name = "MAX神威"
command = ~D, DB, B, D, F, a+b
time = 30

[Command]
name = "MAX神威"
command = ~D, DB, B, DB, F, a+b
time = 30

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "大蛇薙 弱"
command = ~D, DB, B, D, F, x
time = 30

[Command]
name = "大蛇薙 弱"
command = ~D, DB, B, DB, F, x
time = 30

[Command]
name = "大蛇薙 強"
command = ~D, DB, B, D, F, y
time = 30

[Command]
name = "大蛇薙 強"
command = ~D, DB, B, DB, F, y
time = 30

; Alternative controller input: double QCF + RB (z)
[Command]
name = "大蛇薙 強"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "無式 弱"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "無式 強"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "百八拾弐式 弱"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "百八拾弐式 強"
command = ~D, DF, F, D, DF, F, b
time = 30

;------------------------------------------------------------------------------
;-| EX必殺技 |-----------------------------------------------------------------

[Command]
name = "EX鬼焼き"
command = ~F, D, DF, x+y
time = 15

[Command]
name = "EX鬼焼き"
command = ~F, D, F, x+y
time = 15

[Command]
name = "EX毒咬み"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "EX七拾五式・改"
command = ~D, DF, F, a+b
time = 15

[Command]
name = "EXR.E.D.KicK"
command = ~B, D, DB, a+b
time = 15

[Command]
name = "EXR.E.D.KicK"
command = ~B, D, B, a+b
time = 15

[Command]
name = "EX轢鉄"
command = ~F, D, B, a+b
time = 20

[Command]
name = "EX闇払い"
command = ~D, DB, B, x+y
time = 15

[Command]
name = "EX朧車"
command = ~F, D, DF, a+b
time = 15

[Command]
name = "EX朧車"
command = ~F, D, F, a+b
time = 15

[Command]
name = "EX鵺摘み"
command = ~B, D, DB, x+y
time = 15

[Command]
name = "EX鵺摘み"
command = ~B, D, B, x+y
time = 15

[Command]
name = "EX空中R.E.D.KicK"
command = ~D, DB, B, a+b
time = 15

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "鬼焼き 弱"
command = ~F, D, DF, x
time = 15

[Command]
name = "鬼焼き 弱"
command = ~F, D, F, x
time = 15

[Command]
name = "鬼焼き 強"
command = ~F, D, DF, y
time = 15

[Command]
name = "鬼焼き 強"
command = ~F, D, F, y
time = 15

[Command]
name = "荒咬み"
command = ~D, DF, F, x
time = 15

[Command]
name = "毒咬み"
command = ~D, DF, F, y
time = 15

[Command]
name = "七拾五式・改 弱"
command = ~D, DF, F, a
time = 15

[Command]
name = "七拾五式・改 強"
command = ~D, DF, F, b
time = 15

[Command]
name = "R.E.D.KicK 弱"
command = ~B, D, DB, a
time = 15

[Command]
name = "R.E.D.KicK 弱"
command = ~B, D, B, a
time = 15

[Command]
name = "R.E.D.KicK 強"
command = ~B, D, DB, b
time = 15

[Command]
name = "R.E.D.KicK 強"
command = ~B, D, B, b
time = 15

[Command]
name = "轢鉄 弱"
command = ~F, D, B, a
time = 20

[Command]
name = "轢鉄 強"
command = ~F, D, B, b
time = 20

[Command]
name = "闇払い 弱"
command = ~D, DB, B, x
time = 15

[Command]
name = "闇払い 強"
command = ~D, DB, B, y
time = 15

[Command]
name = "朧車 弱"
command = ~F, D, DF, a
time = 15

[Command]
name = "朧車 弱"
command = ~F, D, F, a
time = 15

[Command]
name = "朧車 強"
command = ~F, D, DF, b
time = 15

[Command]
name = "朧車 強"
command = ~F, D, F, b
time = 15

[Command]
name = "鵺摘み 弱"
command = ~B, D, DB, x
time = 15

[Command]
name = "鵺摘み 弱"
command = ~B, D, B, x
time = 15

[Command]
name = "鵺摘み 強"
command = ~B, D, DB, y
time = 15

[Command]
name = "鵺摘み 強"
command = ~B, D, B, y
time = 15

[Command]
name = "空中R.E.D.KicK 弱"
command = ~D, DB, B, a
time = 15

[Command]
name = "空中R.E.D.KicK 強"
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
trigger1 = stateno = 200 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger2 = stateno = 205 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger3 = stateno = 210 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger4 = stateno = 215 && animelemtime(2) > 0 && animelemtime(4) < 0
trigger5 = stateno = 216 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger6 = stateno = 235 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 236 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger8 = stateno = 245 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger9 = stateno = 246 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger10 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger11 = stateno = 410 && animelemtime(4) > 0 && animelemtime(6) < 0
trigger12 = stateno = 411 && animelemtime(3) > 0 && animelemtime(6) < 0
trigger13 = stateno = 440 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger14 = stateno = 441 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger15 = stateno = 441 && animelemtime(7) > 0 && animelemtime(8) < 0
trigger16 = stateno = 630 && animelemtime(3) > 0 && animelemtime(4) < 0 && sysvar(2) = 0
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
trigger3 = stateno = 210 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger4 = stateno = 215 && animelemtime(2) > 0 && animelemtime(4) < 0
trigger5 = stateno = 216 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger6 = stateno = 235 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 236 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger8 = stateno = 245 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger9 = stateno = 246 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger10 = stateno = 246 && animelemtime(4) > 0 && movehit
trigger11 = stateno = 250 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger12 = stateno = 300 && animelemtime(6) > 0 && animelemtime(7) < 0 && var(1) = 2
trigger13 = stateno = 310 && animelemtime(3) > 0 && animelemtime(5) < 0 
trigger14 = stateno = 310 && animelemtime(3) > 0 && animelemtime(5) < 0 
trigger15 = stateno = 331 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger16 = stateno = 340 && animelemtime(10) > 0 && animelemtime(11) < 0
trigger17 = stateno = 370 && animelemtime(7) > 0 && animelemtime(8) < 0
trigger18 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger19 = stateno = 410 && animelemtime(4) > 0 && animelemtime(6) < 0
trigger20 = stateno = 411 && animelemtime(3) > 0 && animelemtime(6) < 0
trigger21 = stateno = 440 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger22 = stateno = 441 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger23 = stateno = 441 && animelemtime(7) > 0 && animelemtime(8) < 0
trigger24 = stateno = 630 && animelemtime(3) > 0 && animelemtime(4) < 0 && sysvar(2) = 0
trigger25 = stateno = 2960 && animelemtime(4) > 0 && animelemtime(5) < 0
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
trigger1 = stateno = 1000 && animelemtime(3) > 0 && animelemtime(7) < 0 && movecontact
trigger2 = stateno = 2000 && animelemtime(3) > 0 && animelemtime(7) < 0 && movecontact
trigger3 = stateno = 1050 && animelemtime(3) > 0 && animelemtime(4) < 0 && movecontact
trigger4 = stateno = 1050 && animelemtime(12) > 0 && animelemtime(13) < 0 && movecontact
trigger5 = stateno = 1070 && animelemtime(3) > 0 && animelemtime(7) < 0 && movecontact
trigger6 = stateno = 1070 && animelemtime(12) > 0 && animelemtime(16) < 0 && movecontact
trigger7 = stateno = 2050 && animelemtime(3) > 0 && animelemtime(11) < 0 && movecontact
trigger8 = stateno = 1120 && animelemtime(6) > 0 && animelemtime(7) < 0 && movecontact && var(15) = 3
trigger9 = stateno = 1121 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact && var(15) = 3
trigger10 = stateno = 1122 && animelemtime(5) > 0 && animelemtime(6) < 0 && movecontact && var(15) = 3
trigger11 = stateno = 1131 && animelemtime(5) > 0 && animelemtime(7) < 0 && movecontact && var(15) = 3
trigger12 = stateno = 1200 && animelemtime(10) > 0 && animelemtime(12) < 0 && movecontact
trigger13 = stateno = 1210 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger14 = stateno = 1220 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger15 = stateno = 1230 && animelemtime(2) > 0 && animelemtime(5) < 0 && movecontact
trigger16 = stateno = 1250 && animelemtime(10) > 0 && animelemtime(12) < 0 && movecontact
trigger17 = stateno = 1260 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger18 = stateno = 1270 && animelemtime(4) > 0 && animelemtime(6) < 0 && movecontact
trigger19 = stateno = 1280 && animelemtime(2) > 0 && animelemtime(5) < 0 && movecontact
trigger20 = stateno = 1500 && animelemtime(10) > 0 && animelemtime(11) < 0 && movecontact && var(1) = 0
trigger21 = stateno = 1500 && animelemtime(6) > 0 && animelemtime(10) < 0 && movecontact && var(1) = 1
trigger22 = stateno = 1550 && animelemtime(11) > 0 && animelemtime(15) < 0 && movecontact && var(1) = 1
trigger23 = stateno = 2510 && animelemtime(8) > 0 && animelemtime(9) < 0 && movecontact
trigger24 = stateno = 2510 && animelemtime(20) > 0 && animelemtime(21) < 0 && movecontact
trigger25 = stateno = 2520 && animelemtime(12) > 0 && animelemtime(13) < 0 && movecontact
trigger26 = stateno = 2550 && animelemtime(12) > 0 && animelemtime(13) < 0 && movecontact
trigger27 = stateno = 2560 && animelemtime(12) > 0 && animelemtime(13) < 0 && movecontact
trigger28 = stateno = 1670 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger29 = stateno = 1710 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger30 = stateno = 2710 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger31 = stateno = 2720 && animelemtime(4) > 0 && animelemtime(6) < 0 && movecontact
trigger32 = stateno = 2760 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger33 = stateno = 2770 && animelemtime(4) > 0 && animelemtime(6) < 0 && movecontact
trigger34 = stateno = 1900 && animelemtime(5) > 0 && animelemtime(7) < 0 && movecontact
trigger35 = stateno = 1950 && animelemtime(5) > 0 && animelemtime(7) < 0 && movecontact
trigger36 = stateno = 1190 && animelemtime(7) >= 0 && animelemtime(8) < 0 && movehit
v = 12
value = 1
ignorehitpause = 1

[State -1, Chancel Var]
type = varset
triggerall = !ishelper
trigger1 = stateno = 1000 && animelemtime(3) > 0 && animelemtime(7) < 0 && movecontact
trigger2 = stateno = 2000 && animelemtime(3) > 0 && animelemtime(7) < 0 && movecontact
trigger3 = stateno = 1050 && animelemtime(3) > 0 && animelemtime(4) < 0 && movecontact
trigger4 = stateno = 1050 && animelemtime(12) > 0 && animelemtime(13) < 0 && movecontact
trigger5 = stateno = 2050 && animelemtime(3) > 0 && animelemtime(11) < 0 && movecontact
trigger6 = stateno = 1220 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger7 = stateno = 1230 && animelemtime(2) > 0 && animelemtime(5) < 0 && movecontact
trigger8 = stateno = 1270 && animelemtime(4) > 0 && animelemtime(6) < 0 && movecontact
trigger9 = stateno = 1280 && animelemtime(2) > 0 && animelemtime(5) < 0 && movecontact
trigger10 = stateno = 1300 && animelemtime(6) > 0 && animelemtime(8) < 0 && movecontact
trigger11 = stateno = 1310 && animelemtime(3) > 0 && animelemtime(5) < 0 && movecontact
trigger12 = stateno = 1350 && animelemtime(6) > 0 && animelemtime(8) < 0 && movecontact
trigger13 = stateno = 1360 && animelemtime(3) > 0 && animelemtime(5) < 0 && movecontact
trigger14 = stateno = 1680 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger15 = stateno = 2300 && animelemtime(6) > 0 && animelemtime(8) < 0 && movecontact
trigger16 = stateno = 2310 && animelemtime(3) > 0 && animelemtime(5) < 0 && movecontact
trigger17 = stateno = 2350 && animelemtime(6) > 0 && animelemtime(8) < 0 && movecontact
trigger18 = stateno = 2360 && animelemtime(3) > 0 && animelemtime(5) < 0 && movecontact
trigger19 = stateno = 2720 && animelemtime(4) > 0 && animelemtime(6) < 0 && movecontact
trigger20 = stateno = 2770 && animelemtime(4) > 0 && animelemtime(6) < 0 && movecontact
trigger21 = stateno = 1800 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger22 = stateno = 1800 && animelemtime(8) > 0 && animelemtime(9) < 0 && movecontact && var(1) = 1
trigger23 = stateno = 2800 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger24 = stateno = 2800 && animelemtime(8) > 0 && animelemtime(9) < 0 && movecontact && var(1) = 1
trigger25 = stateno = 1850 && animelemtime(4) > 0 && animelemtime(5) < 0 && movecontact
trigger26 = stateno = 1850 && animelemtime(8) > 0 && animelemtime(9) < 0 && movecontact
trigger27 = stateno = 1850 && animelemtime(12) > 0 && animelemtime(13) < 0 && movecontact
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
trigger1 = numhelper(10001)
trigger1 = helper(10001),var(50) >= 0
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
type = null;varset
trigger1 = !ishelper
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
;伍百弐拾四式・神塵
[State -1, Kamukura]
type = changestate
value = 4000+((var(40) := 0)*0) 
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(35) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = (var(15) = 1 && var(49) = 0) || (var(15) = 2 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;最終決戦神技
[State -1, SaishuKessenJingi]
type = changestate
value = 4500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(47) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = var(17) = 25 || var(17) = 125
triggerall = partner,alive = 1
triggerall = var(15) = 0 || var(15) = 1 || var(15) = 2
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;CLIMAX火迦具槌
[State -1, CLIMAX Hinokagutsuchi]
type = changestate
value = 4700+((var(40) := 1)*0)
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(36) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;CLIMAX天羽々斬
[State -1, CLIMAX Amenohabakiri]
type = changestate
value = 4400+((var(40) := 1)*0)
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(47) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;裏百弐拾壱式・天叢雲
[State -1, Amenomurakumo]
type = changestate
value = 4800
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(52) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = var(15) = 2
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;最終決戦奥義・零式
[State -1, Zeroshiki]
type = changestate
value = 4300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(36) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = (var(15) = 3 && var(49) = 0)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;最終決戦奥義・零式
[State -1, Zeroshiki]
type = changestate
value = 4150
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(36) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;三神技之壱
[State -1, SanZingiNoIchi]
type = changestate
value = 4100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(36) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = (var(15) = 1 && var(49) = 0) || (var(15) = 2 && var(49) = 0)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;最終決戦秘奥義・十拳
[State -1, Totsuka]
type = changestate
value = 4200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(36) > 0
triggerall = statetype != A
triggerall = power >= 3000 || (fvar(2) && power >= 2000)
triggerall = var(15) = 0 || (var(15) = 1 && var(49))
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 4000 || (fvar(2) && power >= 3000))

;==============================================================================
; MAX超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;伍百弐拾四式・神塵
[State -1, MAX Kamukura]
type = changestate
value = 4000+((var(40) := 1)*0) 
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(50) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = (var(15) = 1 && var(49) = 1) || (var(15) = 2 && var(49) = 0)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;裏千百弐拾七式・八重垣
[State -1, Yaegaki]
type = changestate
value = 3750
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(34) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = var(15) = 2 && var(49) = 1
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;MAX百八拾弐式
[State -1, MAX 182Shiki]
type = changestate
value = 3150
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(34) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = var(15) = 1 && var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))
trigger4 = (stateno = 1180 || stateno = 1182) && animelemtime(7) >= 0 && movehit

;火迦具槌
[State -1, Hinokazutsuchi]
type = changestate
value = 4700+((var(40) := 0)*0)
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(43) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = (var(15) = 3 && var(49) = 0)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;MAX最終決戦奥義・無式
[State -1, MAX Mushiki]
type = changestate
value = 3350
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(34) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = var(15) = 0 || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;伍百伍拾伍式・神威
[State -1, Kamui]
type = changestate
value = 3800
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(31) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = var(15) = 2
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;天羽々斬
[State -1, Amenohabakiri]
type = changestate
value = 4400+((var(40) := 0)*0)
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(31) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = (var(15) = 3 && var(49) = 0)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;MAX裏百八式･大蛇薙
[State -1, MAX OrochiNagi]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(31) > 0
triggerall = statetype != A
triggerall = power >= 2000 || (fvar(2) && power >= 1000)
triggerall = (var(15) = 0) || (var(15) = 1) || (var(15) = 3 && var(49) = 1) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))
trigger4 = (stateno = 1180 || stateno = 1182) && animelemtime(7) >= 0 && movehit

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------

;布都御魂
[State -1, Hutunomitama]
type = changestate
value = 3600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(41) > 0 || helper(9999),var(42) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;千九百九拾九式・霧焔(KUSANAGI)
[State -1, Kirihomura]
type = changestate
value = 3700
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(41) > 0 || helper(9999),var(42) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;千九百九拾九式・霧焔
[State -1, Kirihomura]
type = changestate
value = 3700
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(32) > 0 || helper(9999),var(33) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = (var(15) = 3 && var(49) = 0)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;'00百八拾弐式(ネオ)
[State -1, 182Shiki]
type = changestate
value = 3200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(32) > 0 || helper(9999),var(33) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(15) = 2
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;'00百八拾弐式
[State -1, 182Shiki]
type = changestate
value = 3200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(41) > 0 || helper(9999),var(42) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = (var(15) = 0 && var(49)) || (var(15) = 1 && var(49))
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;'99百八拾弐式
[State -1, 182Shiki]
type = changestate
value = 3100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(32) > 0 || helper(9999),var(33) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(15) = 1 && var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))
trigger4 = (stateno = 1180 || stateno = 1182) && animelemtime(7) >= 0 && movehit && (power >= 2000 || (fvar(2) && power >= 1000))

;最終決戦奥義・無式
[State -1, Mushiki]
type = changestate
value = 3300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(32) > 0 || helper(9999),var(33) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(15) = 0 || (var(15) = 1 && var(49)) || (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;朱天祓(クローン)
[State -1, Shutenbarai]
type = changestate
value = 3500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(29) > 0 || helper(9999),var(30) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = (var(15) = 3 && var(49) = 0)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;朱天祓(京-1)
[State -1, Shutenbarai]
type = changestate
value = 3500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(32) > 0 || helper(9999),var(33) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))

;亜型裏百八式・空中大蛇薙
[State -1, Air OrochiNagi]
type = changestate
value = 3400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(29) > 0 || helper(9999),var(30) > 0
triggerall = statetype = A
triggerall = power >= 1000 || fvar(2)
triggerall = var(15) = 2
trigger1 = ctrl || stateno = 105 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))
trigger4 = var(12) = 1
trigger4 = stateno = 1300 || stateno = 1310 || stateno = 1350 || stateno = 1360 || stateno = 2300 || stateno = 2310 || stateno = 2350 || stateno = 2360
trigger5 = var(12) = 1
trigger5 = stateno = 1800 || stateno = 1850 || stateno = 2800 || stateno = 2850 || stateno = 1680

;裏百八式・大蛇薙
[State -1, OrochiNagi]
type = changestate
value = 3000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(29) > 0 || helper(9999),var(30) > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = !(var(15) = 3 && var(49) = 0) && !(var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && (power >= 2000 || (fvar(2) && power >= 1000))
trigger4 = (stateno = 1180 || stateno = 1182) && animelemtime(7) >= 0 && movehit && (power >= 2000 || (fvar(2) && power >= 1000))

;==============================================================================
; EX必殺技
;==============================================================================
;------------------------------------------------------------------------------
;EX朧車(クローン)
[State -1, EX Oboroguruma]
type = changestate
value = 2850
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(25) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX朧車(京-1)
[State -1, EX Oboroguruma]
type = changestate
value = 2850
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(25) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX百壱式・朧車
[State -1, EX Oboroguruma]
type = changestate
value = 1850
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(16) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = (var(15) = 0 && var(49) = 0) || (var(15) = 2 && var(49) = 1) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX空中R.E.D.KicK
[State -1, EX Air R.E.D.KicK]
type = changestate
value = 1480
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(46) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype = A
triggerall = (var(15) = 1 && var(49)) || (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 105 || stateno = [120,139]
trigger2 = var(11) = 1

;EXR.E.D.KicK クラシック
[State -1, EX R.E.D.KicK]
type = changestate
value = 2450
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(16) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = (var(15) = 0 && var(49)) || (var(15) = 3 && var(49) = 0)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EXR.E.D.KicK ネスツ
[State -1, EX R.E.D.KicK]
type = changestate
value = 1450
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(16) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(15) = 1 || (var(15) = 2 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX百式･鬼焼き(クローン)
[State -1, EX Oniyaki]
type = changestate
value = 1070
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(5) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 2) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX百式･鬼焼き(ネスツ)
[State -1, EX Oniyaki]
type = changestate
value = 2050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(5) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(15) = 1 || var(15) = 2
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX百式･鬼焼き(クラシック)
[State -1, EX Oniyaki]
type = changestate
value = 1050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(5) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(15) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX弐百拾弐式・琴月 陽(クローン)
[State -1, EX Kototsuki]
type = changestate
value = 2750
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(19) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 2) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX弐百拾弐式・琴月 陽
[State -1, EX Kototsuki]
type = changestate
value = 1750
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(19) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(15) = 0 || (var(15) = 2 && var(49) = 1) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX四百弐拾七式・轢鉄
[State -1, EX Hikigane]
type = changestate
value = ifelse(var(49),1550,2550)
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(19) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(15) = 1
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX蒼鬼
[State -1, EX Aoki]
type = changestate
value = 2750
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(22) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX九百拾式・鵺摘み(クローン)
[State -1, EX Nuetsumi]
type = changestate
value = 2950
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(22) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(15) = 3 && var(49) = 3
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger2 = stateno != 2960

;EX九百拾式・鵺摘み
[State -1, EX Nuetsumi]
type = changestate
value = 1950
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(22) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(15) = 0 || (var(15) = 1 && var(49))
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX七拾五式・改(クローン)
[State -1, EX 75ShikiKai]
type = changestate
value = 2350
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(13) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger2 = stateno != 246

;EX七拾五式・改
[State -1, EX 75ShikiKai]
type = changestate
value = 1350
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(13) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(15) = 0 || var(15) = 1 || var(15) = 2 || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger2 = stateno != 246

;EX百八式・闇払い(表ネオ)
[State -1, EX Yamibarai]
type = changestate
value = 1650+((var(40) := 0)*0) 
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(22) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = (var(15) = 2 && var(49) = 0)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX百八式・闇払い(クラシック、KUSANAGI)
[State -1, EX Yamibarai]
type = changestate
value = 1650+((var(40) := 1)*0) 
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(10) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = (var(15) = 0 && var(49) = 0) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX百八式・闇払い(京-1)
[State -1, EX Yamibarai]
type = changestate
value = 1650+((var(40) := 2)*0) 
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(10) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX百八式・闇払い(表ネオ)
[State -1, EX Yamibarai]
type = changestate
value = 1650+((var(40) := 0)*0) 
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(10) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = (var(15) = 2 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX闇払い(クローン)
[State -1, EX Yamibarai]
type = changestate
value = 2650
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(10) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = (var(15) = 3 && var(49) = 0)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX百拾五式･毒咬み(ネスツ)
[State -1, EX Dokugami]
type = changestate
value = 2250
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(10) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = (var(15) = 1 && var(49))
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX百拾五式・毒咬み
[State -1, EX Dokugami]
type = changestate
value = 1250
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(10) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = (var(15) = 0 && var(49)) || (var(15) = 2 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX百拾四式･荒咬み
[State -1, EX Aragami]
type = changestate
value = 1150
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(10) > 0
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = var(15) = 1 && var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------

;百壱式・朧車
[State -1, Oboroguruma]
type = changestate
value = 1800+((var(40) := 0)*0) 
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(14) > 0 || helper(9999),var(15) > 0
triggerall = statetype != A
triggerall = (var(15) = 0 && var(49) = 0) || (var(15) = 2 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)
trigger3 = stateno != [1800,1899]

;百壱式・朧車(KUSANAGI)
[State -1, Oboroguruma]
type = changestate
value = 1800+((var(40) := 2)*0) 
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(14) > 0 || helper(9999),var(15) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)
trigger3 = stateno != [1800,1899]

;百壱式・朧車(クローン)
[State -1, Oboroguruma]
type = changestate
value = 2800
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(23) > 0 || helper(9999),var(24) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)
trigger3 = stateno != [1800,1899]

;空中R.E.D.KicK
[State -1, R.E.D.KicK]
type = changestate
value = 1430
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(44) > 0 || helper(9999),var(45) > 0
triggerall = statetype = A
triggerall = (var(15) = 1 && var(49)) || (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 105 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)
trigger3 = stateno != [1400,1499]

;R.E.D.KicK(クローン)
[State -1, R.E.D.KicK]
type = changestate
value = 2400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(14) > 0 || helper(9999),var(15) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)
trigger3 = stateno != [1400,1499]

;R.E.D.KicK
[State -1, R.E.D.KicK]
type = changestate
value = 1400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(14) > 0 || helper(9999),var(15) > 0
triggerall = statetype != A
triggerall = var(15) = 0 && var(49) || var(15) = 1 || (var(15) = 2 && var(49) = 0)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)
trigger3 = stateno != [1400,1499]

;百式・鬼焼き(クラシック)
[State -1, Oniyaki]
type = changestate
value = 2000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(3) > 0 || helper(9999),var(4) > 0
triggerall = statetype != A
triggerall = var(15) = 0 || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)
trigger3 = stateno != [2000,2099]

;百式・鬼焼き
[State -1, Oniyaki]
type = changestate
value = 1000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(3) > 0 || helper(9999),var(4) > 0
triggerall = statetype != A
triggerall = var(15) = 1 || var(15) = 2 || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)
trigger3 = stateno != [1000,1099]

;弐百拾弐式・琴月 陽
[State -1, Kototsuki]
type = changestate
value = 1700
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(17) > 0 || helper(9999),var(18) > 0
triggerall = statetype != A
triggerall = var(15) = 0 || (var(15) = 2 && var(49) = 1) || (var(15) = 3 && var(49) = 2) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)
trigger3 = stateno != [1700,1799]

;四百弐拾七式・轢鉄('99)
[State -1, Hikigane]
type = changestate
value = 2500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(17) > 0 || helper(9999),var(18) > 0
triggerall = statetype != A
triggerall = var(15) = 1 && var(49)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)
trigger3 = stateno != [2500,2599]

;四百弐拾七式・轢鉄
[State -1, Hikigane]
type = changestate
value = 1500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(17) > 0 || helper(9999),var(18) > 0
triggerall = statetype != A
triggerall = var(15) = 1 && var(49) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)
trigger3 = stateno != [1500,1599]

;蒼鬼
[State -1, Aoki]
type = changestate
value = 2700
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(20) > 0 || helper(9999),var(21) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)
trigger3 = stateno != [1700,1799]

;九百拾式・鵺摘み(クローン)
[State -1, Nuetsumi]
type = changestate
value = 2900
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(20) > 0 || helper(9999),var(21) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)

;九百拾式・鵺摘み
[State -1, Nuetsumi]
type = changestate
value = 1900
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(20) > 0 || helper(9999),var(21) > 0
triggerall = statetype != A
triggerall = var(15) = 0 || (var(15) = 1 && var(49))
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)

;七拾五式・改(クローン)
[State -1, 75ShikiKai]
type = changestate
value = 2300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(11) > 0 || helper(9999),var(12) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger2 = stateno != 246
trigger3 = var(12) = 1 && fvar(2)

;七拾五式・改(ネオ)
[State -1, 75ShikiKai]
type = changestate
value = 1300+((var(40) := 1)*0) 
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(11) > 0 || helper(9999),var(12) > 0
triggerall = statetype != A
triggerall = var(15) = 2
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger2 = stateno != 246
trigger3 = var(12) = 1 && fvar(2)

;七拾五式・改
[State -1, 75ShikiKai]
type = changestate
value = 1300+((var(40) := 0)*0) 
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(11) > 0 || helper(9999),var(12) > 0
triggerall = statetype != A
triggerall = var(15) = 0 || var(15) = 1 || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)

;百八式・闇払い(ネオ)
[State -1, Yamibarai]
type = changestate
value = 1600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(20) > 0 || helper(9999),var(21) > 0
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = (var(15) = 2 && var(49) = 0)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)

;百八式・闇払い
[State -1, Yamibarai]
type = changestate
value = 1600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(6) > 0 || helper(9999),var(9) > 0
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = (var(15) = 0 && var(49) = 0) || (var(15) = 2 && var(49) = 1) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)

;闇払い(クローン)
[State -1, Yamibarai]
type = changestate
value = 2600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(6) > 0 || helper(9999),var(9) > 0
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)

;百拾五式･毒咬み
[State -1, Dokugami]
type = changestate
value = 1200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(9) > 0
triggerall = statetype != A
triggerall = (var(15) = 0 && var(49)) || var(15) = 1 || (var(15) = 2 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)

;百拾四式･荒咬み
[State -1, Aragami]
type = changestate
value = 1100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(6) > 0
triggerall = statetype != A
triggerall = (var(15) = 0 && var(49)) || var(15) = 1 || (var(15) = 2 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1
trigger3 = var(12) = 1 && fvar(2)

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

;外式・霞
[State -1, Kasumi]
type = changestate
value = 330
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(38) > 0
triggerall = statetype != A
triggerall = var(15) = 0
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

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
;外式・奈落落とし
[State -1, NarakuOtoshi]
type = changestate
value = 320
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(2) > 0
triggerall = statetype = A
triggerall = !(var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 105 || stateno = [120,139]
trigger2 = var(10) = 1

;八拾八式(ネオ)
[State -1, 88Shiki]
type = changestate
value = 310+((var(40) := 1)*0) 
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(1) > 0
triggerall = statetype != A
triggerall = var(15) = 2
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;八拾八式
[State -1, 88Shiki]
type = changestate
value = 310+((var(40) := 0)*0) 
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(1) > 0
triggerall = statetype != A
triggerall = var(15) = 0 || var(15) = 1 || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;砌穿ち
[State -1, Migiri Ugachi]
type = changestate
value = 360
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(40) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;穂振
[State -1, Honofuri]
type = changestate
value = 350
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(0) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;黒咬み
[State -1, GoufuYo]
type = changestate
value = 340
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(39) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;七拾五式
[State -1, 75 Shiki]
type = changestate
value = 370
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(39) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;外式・轟斧 陽
[State -1, GoufuYo]
type = changestate
value = 300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),var(0) > 0
triggerall = statetype != A
triggerall = !(var(15) = 3 && var(49) = 0) && !(var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = var(10) = 1

;==============================================================================
; 通常技
;==============================================================================
;------------------------------------------------------------------------------
;釟鉄
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

;一刹背負い投げ
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
triggerall = vel x != 0 || sysvar(2) = 1 || (var(15) = 3 && var(49) = 1)
triggerall = !(var(15) = 3 && var(49) = 2)
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
triggerall = vel x != 0 || sysvar(2) = 1 || (var(15) = 3 && var(49) = 1)
triggerall = !(var(15) = 3 && var(49) = 2)
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

;空中弱パンチ クローン	
[State -1, Air Light Punch]
type = changestate
value = 601
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(7) > 0 || helper(9999),fvar(13) > 0
triggerall = statetype = A
triggerall = (var(15) = 3 && (var(49) = [0,2]))
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
triggerall = (var(15) = [0,2]) || (var(15) = 3 && var(49) = 3)
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
triggerall = (var(15) = [0,2]) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = [120,139]

;しゃがみ強キック(クローン)
[State -1, Crouch Hard Kick]
type = changestate
value = 441
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(16) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

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

;しゃがみ強パンチ(クローン)
[State -1, Crouch Hard Punch]
type = changestate
value = 411
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(15) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 1)
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
trigger4 = stateno = 235 && animelemtime(4) > 0
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
trigger4 = stateno = 235 && animelemtime(4) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(3) > 0

;近距離立ち強キック(クローン)
[State -1, Stand Hard Kick]
type = changestate
value = 246
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(10) > 0
triggerall = p2bodydist x < 35
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;近距離立ち強キック
[State -1, Stand Hard Kick]
type = changestate
value = 245
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(10) > 0
triggerall = p2bodydist x < 25
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;遠距離立ち強キック(クローン)
[State -1, Stand Hard Kick]
type = changestate
value = 241
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(10) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
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

;近距離立ち強パンチ(クローン)
[State -1, Stand Hard Punch]
type = changestate
value = 216
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(9) > 0
triggerall = p2bodydist x < 30
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
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

;遠距離立ち強パンチ(クローン)
[State -1, Stand Hard Punch]
type = changestate
value = 211
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(9) > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) ||  (var(15) = 3 && var(49) = 1)
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

;近距離立ち弱キック(クローン)
[State -1, Stand Light Kick]
type = changestate
value = 236
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = helper(9999),fvar(8) > 0
triggerall = p2bodydist x < 35 || (var(15) = 3 && var(49) = 1)
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = stateno = 200 && animelemtime(3) > 0
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger4 = stateno = 235 && animelemtime(4) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(3) > 0

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
trigger4 = stateno = 235 && animelemtime(4) > 0
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
trigger4 = stateno = 235 && animelemtime(4) > 0
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
triggerall = p2bodydist x < 20 || (var(15) = 3 && var(49) = 1)
triggerall = statetype != A
triggerall = !(var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = stateno = 200 && animelemtime(3) > 0
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger4 = stateno = 235 && animelemtime(4) > 0
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
triggerall = !(var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = stateno = 200 && animelemtime(3) > 0
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger4 = stateno = 235 && animelemtime(4) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
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

;==============================================================================
; AI
;==============================================================================


;--- 確率用変数 ---
[State -3, VarSet]
type = varset
triggerall = !ishelper
trigger1 = var(59) > 0
v = 58
value = random

;--- 行動指定リセット ---
[State -3, VarSet]
type = null;varset
triggerall = !ishelper
trigger1 = var(55)
trigger1 = p2movetype != H
v = 55
value = 0 


;-------------------------< コンボ指定 >-------------------------
;--- ゲージなし ---
[State -3, VarSet]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 235 || stateno = 236 || stateno = 400 || stateno = 430
triggerall = movehit = 1
triggerall = p2movetype = H
trigger1 = (power >= 1000 && p2life < 100)
trigger1 = var(57) := 0
trigger2 = (power >= 2000 && p2life < 200)
trigger2 = var(57) := 1
trigger3 = (power >= 3000 && p2life < 300)
trigger3 = var(57) := 2
trigger4 = power >= 3000 && power < 4000 || (power >= 4000 && p2life < 400)
trigger4 = var(57) := 3
trigger5 = (power >= 4000 && power < 5000) || (power >= 5000 && p2life < 500)
trigger5 = var(57) := 4
trigger6 = power >= 5000
trigger6 = var(57) := 5
trigger7 = power < 1000
trigger7 = var(57) := 0
trigger8 = power >= 1000 && power < 2000
trigger8 = var(58) = [0,499]
trigger8 = var(57) := 1
trigger9 = power >= 1000 && power < 2000
trigger9 = var(58) = [500,999]
trigger9 = var(57) := 0
trigger10 = power >= 2000 && power < 3000
trigger10 = var(58) = [0,333]
trigger10 = var(57) := 2
trigger11 = power >= 2000 && power < 3000
trigger11 = var(58) = [334,666]
trigger11 = var(57) := 1
trigger12 = power >= 2000 && power < 3000
trigger12 = var(58) = [667,999]
trigger12 = var(57) := 0

[State -3, VarSet]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 210 || stateno = 215 || stateno = 216 || stateno = 245 || stateno = 410 || stateno = 411
triggerall = movehit = 1
triggerall = p2movetype = H
trigger1 = (power >= 1000 && p2life < 100)
trigger1 = var(57) := 0
trigger2 = (power >= 2000 && p2life < 200)
trigger2 = var(57) := 1
trigger3 = (power >= 3000 && p2life < 300)
trigger3 = var(57) := 2
trigger4 = power >= 3000 && power < 4000 || (power >= 4000 && p2life < 400)
trigger4 = var(57) := 3
trigger5 = (power >= 4000 && power < 5000) || (power >= 5000 && p2life < 500)
trigger5 = var(57) := 4
trigger6 = power >= 5000
trigger6 = var(57) := 5
trigger7 = power < 1000
trigger7 = var(57) := 0
trigger8 = power >= 1000 && power < 2000
trigger8 = var(58) = [0,499]
trigger8 = var(57) := 1
trigger9 = power >= 1000 && power < 2000
trigger9 = var(58) = [500,999]
trigger9 = var(57) := 0
trigger10 = power >= 2000 && power < 3000
trigger10 = var(58) = [0,333]
trigger10 = var(57) := 2
trigger11 = power >= 2000 && power < 3000
trigger11 = var(58) = [334,666]
trigger11 = var(57) := 1
trigger12 = power >= 2000 && power < 3000
trigger12 = var(58) = [667,999]
trigger12 = var(57) := 0

[State -3, VarSet]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 300 || stateno = 310 || stateno = 331 || stateno = 340 || stateno = 1910 || stateno = 1911 || stateno = 1960 || stateno = 1961
triggerall = movehit = 1
triggerall = p2movetype = H
trigger1 = (power >= 1000 && p2life < 100)
trigger1 = var(57) := 0
trigger2 = (power >= 2000 && p2life < 200)
trigger2 = var(57) := 1
trigger3 = (power >= 3000 && p2life < 300)
trigger3 = var(57) := 2
trigger4 = power >= 3000 && power < 4000 || (power >= 4000 && p2life < 400)
trigger4 = var(57) := 3
trigger5 = (power >= 4000 && power < 5000) || (power >= 5000 && p2life < 500)
trigger5 = var(57) := 4
trigger6 = power >= 5000
trigger6 = var(57) := 5
trigger7 = power < 1000
trigger7 = var(57) := 0
trigger8 = power >= 1000 && power < 2000
trigger8 = var(58) = [0,499]
trigger8 = var(57) := 1
trigger9 = power >= 1000 && power < 2000
trigger9 = var(58) = [500,999]
trigger9 = var(57) := 0
trigger10 = power >= 2000 && power < 3000
trigger10 = var(58) = [0,333]
trigger10 = var(57) := 2
trigger11 = power >= 2000 && power < 3000
trigger11 = var(58) = [334,666]
trigger11 = var(57) := 1
trigger12 = power >= 2000 && power < 3000
trigger12 = var(58) = [667,999]
trigger12 = var(57) := 0


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


[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = var(54)
trigger1 = !(ctrl || stateno = 30 || stateno = 100 || (stateno = [120,139]))
v = 54
value = 0

[State -3, VarSet]
type = varadd
triggerall = !ishelper
triggerall = roundstate = 2
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
v = 54
value = 1

[State -2, Clipboard]
type = null;displaytoclipboard
trigger1 = 1
text = "Gauge = %d Next = %d Random = %d Delay = %d Combo = %d \n"
params = var(57), var(55), var(58), var(54), var(51)
ignorehitpause = 1

[State -2, Clipboard]
type = null;appendtoclipboard
trigger1 = 1
text =  "P2X = %f P2Y = %f Prev = %d front = %f \n"
params = (p2dist x+enemynear,const(size.ground.back)),p2dist y, prevstateno ,helper(10000+facing*-1),fvar(39)
ignorehitpause = 1

;-------------------------< 当て身投げ >-------------------------
;EX鵺摘み
[State -3, Nuetumi EX]
type = changestate
value = 1950
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*1
triggerall = p2bodydist x = [-10,80]
triggerall = p2movetype = A
triggerall = p2statetype = C
triggerall = p2stateno < 1000
triggerall = statetype != A
triggerall = movetype != H
triggerall = power >= 1000
triggerall = (var(15) = 0) || (var(15) = 1 && var(49) = 1)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;鵺摘み 強
[State -3, Nuetumi H]
type = changestate
value = 1900+((var(1) :=1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = p2bodydist x = [-10,80]
triggerall = p2movetype = A
triggerall = p2statetype = C
triggerall = p2stateno < 1000
triggerall = statetype != A
triggerall = movetype != H
triggerall = (var(15) = 0) || (var(15) = 1 && var(49) = 1)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;鵺摘み 弱
[State -3, Nuetumi L]
type = changestate
value = 2900+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = p2bodydist x = [-10,80]
triggerall = p2movetype = A
triggerall = p2statetype = C
triggerall = p2stateno < 1000
triggerall = statetype != A
triggerall = movetype != H
triggerall = (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;鵺摘み 強
[State -3, Nuetumi H]
type = changestate
value = 2900+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = p2bodydist x = [-10,80]
triggerall = p2movetype = A
triggerall = p2statetype = S
triggerall = p2stateno < 1000
triggerall = statetype != A
triggerall = movetype != H
triggerall = (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;-------------------------< 割り込み >-------------------------

;--- 3ゲージ以上 ---
;零式(KUSANAGI)
[State -3, Totsuka]
type = changestate
value = 4150
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = p2bodydist x = [-10,80]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 3000) || (fvar(2) && power >= 2000)
triggerall = statetype != A
triggerall = movetype != H
triggerall = (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;最終決戦秘奥義・十拳
[State -3, Totsuka]
type = changestate
value = 4200
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = p2bodydist x = [-10,60]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 3000) || (fvar(2) && power >= 2000)
triggerall = statetype != A
triggerall = movetype != H
triggerall = var(15) = 0 || (var(15) = 1 && var(49) = 1)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;零式(クローン)
[State -3, Zeroshiki]
type = changestate
value = 4300
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-60,25]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 3000) || (fvar(2) && power >= 2000)
triggerall = statetype != A
triggerall = movetype != H
triggerall = (var(15) = 3 && var(49) = 0)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;CLIMAX天羽々斬
[State -3, CLIMAX Ame no Habakiri]
type = changestate
value = 4400
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = p2bodydist x = [-25,25]
triggerall = p2bodydist y = [-50,0]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 3000) || (fvar(2) && power >= 2000)
triggerall = statetype != A
triggerall = movetype != H
triggerall = var(15) = 3 && var(49) = 1
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;CLIMAX火迦具槌
[State -3, CLIMAX Hi no Kagutsuchi]
type = changestate
value = 4700
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-30,0]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 3000) || (fvar(2) && power >= 2000)
triggerall = statetype != A
triggerall = movetype != H
triggerall = var(15) = 3 && var(49) = 2
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;--- 2ゲージ以上 ---
;MAX火迦具槌
[State -3, MAX Hi no Kagutsuchi]
type = changestate
value = 4700
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = var(59) = [0,249]
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-30,0]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 2000) || (fvar(2) && power >= 1000)
triggerall = statetype != A
triggerall = movetype != H
triggerall = var(15) = 3 && var(49) = 0
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;MAX大蛇薙
[State -3, MAX Orochinagi]
type = changestate
value = 3050
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = var(59) = [0,249]
triggerall = p2bodydist x = [-25,25]
triggerall = p2bodydist y = [-50,0]
triggerall = p2movetype = A
triggerall = (fvar(2) = 0 && power >= 2000) || (fvar(2) && power >= 1000)
triggerall = statetype != A
triggerall = movetype != H
triggerall = (var(15) = [0,1]) || (var(15) = 3 && (var(49) = 1 || var(49) = 3))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;布都御魂
[State -3, Futsu no Mitama]
type = changestate
value = 3600
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = var(59) = [250,374]
triggerall = p2bodydist x = [-10,40]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
triggerall = statetype != A
triggerall = movetype != H
triggerall = var(15) = 3 && (var(49) = 0 || var(49) = 2)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX鬼焼き クラシック
[State -3, Oniyaki EX]
type = changestate
value = 1050
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = var(59) = [250,374]
triggerall = p2bodydist x = [-10,40]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
triggerall = statetype != A
triggerall = movetype != H
triggerall = var(15) = 0
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX鬼焼き ネスツ
[State -3, Oniyaki EX]
type = changestate
value = 2050
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = var(59) = [250,374]
triggerall = p2bodydist x = [-10,40]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
triggerall = statetype != A
triggerall = movetype != H
triggerall = var(15) = [1,2]
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX鬼焼き クローン
[State -3, Oniyaki EX]
type = changestate
value = 1070
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*5
triggerall = var(59) = [250,374]
triggerall = p2bodydist x = [-10,40]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
triggerall = statetype != A
triggerall = movetype != H
triggerall = (var(15) = 3 && var(49) = 2) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;鬼焼き クラシック 強
[State -3, Oniyaki H]
type = changestate
value = 2000+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = var(59) = [375,999]
triggerall = p2bodydist x = [-10,40]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = (fvar(2) = 0 && power >= 2000) || (fvar(2) && power >= 1000)
triggerall = statetype != A
triggerall = var(15) = 0 || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;鬼焼き ネスツ 強
[State -3, Oniyaki H]
type = changestate
value = 1000+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = var(59) = [375,999]
triggerall = p2bodydist x = [-10,40]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = (fvar(2) = 0 && power >= 2000) || (fvar(2) && power >= 1000)
triggerall = statetype != A
triggerall = (var(15) = [1,2]) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;朧車 クローン 弱
[State -3, Oboroguruma L]
type = changestate
value = 2800+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = var(59) = [375,999]
triggerall = p2bodydist x = [-10,80]
triggerall = p2bodydist y = [-80,0]
triggerall = p2movetype = A
triggerall = p2statetype != C
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = (fvar(2) = 0 && power >= 2000) || (fvar(2) && power >= 1000)
triggerall = statetype != A
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 1))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;--- 1ゲージ ---
;布都御魂
[State -3, Futsu no Mitama]
type = changestate
value = 3600
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
triggerall = var(15) = 3 && (var(49) = 0 || var(49) = 2)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX鬼焼き クラシック
[State -3, Oniyaki EX]
type = changestate
value = 1050
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
triggerall = var(15) = 0 || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX鬼焼き ネスツ
[State -3, Oniyaki EX]
type = changestate
value = 2050
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
triggerall = var(15) = [1,2]
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX鬼焼き 
[State -3, Oniyaki EX]
type = changestate
value = 2050
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
triggerall = var(15) = [1,2]
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;鬼焼き クラシック 強
[State -3, Oniyaki H]
type = changestate
value = 2000+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = var(59) = [250,999]
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
triggerall = statetype != A
triggerall = var(15) = 0 || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;鬼焼き ネスツ 強
[State -3, Oniyaki H]
type = changestate
value = 1000+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = var(59) = [250,999]
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
triggerall = statetype != A
triggerall = (var(15) = [1,2]) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;朧車 クローン 弱
[State -3, Oboroguruma L]
type = changestate
value = 2800+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = var(59) = [250,999]
triggerall = p2bodydist x = [-10,80]
triggerall = p2bodydist y = [-80,0]
triggerall = p2movetype = A
triggerall = p2statetype != C
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = (fvar(2) = 0 && power >= 1000 && power < 2000) || (fvar(2) && power < 1000)
triggerall = statetype != A
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 1))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;--- ゲージなし ---
;鬼焼き クラシック 強
[State -3, Oniyaki H]
type = changestate
value = 2000+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = fvar(2) = 0 && power < 1000
triggerall = statetype != A
triggerall = var(15) = 0 || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;鬼焼き ネスツ 強
[State -3, Oniyaki H]
type = changestate
value = 1000+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-60,0]
triggerall = p2movetype = A
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = fvar(2) = 0 && power < 1000
triggerall = statetype != A
triggerall = (var(15) = [1,2]) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;朧車 クローン 弱
[State -3, Oboroguruma L]
type = changestate
value = 2800+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = p2bodydist x = [-10,80]
triggerall = p2bodydist y = [-80,0]
triggerall = p2movetype = A
triggerall = p2statetype != C
triggerall = enemynear,vel y >= 0
triggerall = movetype != H
triggerall = fvar(2) = 0 && power < 1000
triggerall = statetype != A
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 1))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;--- EX蒼鬼/琴月 ---
[State -3, Oniyaki EX]
type = changestate
value = 2750
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*1
triggerall = p2bodydist x = [-10,110]
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = fvar(2) = 0 && power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = movetype != H
triggerall = var(15) = 3
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

;-------------------------< 遠距離攻撃潰し >-------------------------
;EX闇払い
[State -3, EX Yamibarai]
type = changestate
value = 1650
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = p2bodydist x >= 120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = enemynear,ctrl = 0
triggerall = enemynear,vel x <= 0
triggerall = enemynear,animtime < -11-((p2bodydist x-55)/9)
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = (var(15) = 0 && var(49) = 0) || var(15) = 2 || (var(15) = 3 && (var(49) = 1 || var(49) = 3))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;EX R.E.D.KicK(クラシック)
[State -3, EX Yamibarai]
type = changestate
value = 2450
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*10
triggerall = p2bodydist x = [120,200]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = A
triggerall = enemynear,ctrl = 0
triggerall = enemynear,vel x <= 0
triggerall = enemynear,animtime < -23
triggerall = power >= 1000 || fvar(2)
triggerall = statetype != A
triggerall = (var(15) = 0 && var(49) = 1) || (var(15) = 3 && var(49) = 0)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;-------------------------< 起き攻め >-------------------------
;外式・轟斧 陽(旧)
[State -1, Goufu]
type = changestate
value = 300
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (var(15) = 0) || (var(15) = 3 && var(49) = [2,3])
triggerall = random < var(59)*10
triggerall = !inguarddist
triggerall = p2statetype = L
triggerall = p2bodydist x = [-10,70]
triggerall = statetype != A
triggerall = enemynear,stateno = 5120
triggerall = enemynear,animtime = [-23,-17]
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;穂振
[State -1, Goufu]
type = changestate
value = 350
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 1))
;triggerall = random < var(59)*10
triggerall = !inguarddist
triggerall = p2statetype = L
triggerall = p2bodydist x = [-10,70]
triggerall = statetype != A
triggerall = enemynear,stateno = 5120
triggerall = enemynear,animtime = [-23,-20]
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
triggerall = enemynear,animtime = [-5,-2]
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 小足ヒット時 >-------------------------
;近C目押し
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (var(15) = [0,2]) || (var(15)  = 3 && (var(49) = 1 || var(49) = 3))
triggerall = stateno = 430
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2bodydist x = [-10,5]
trigger1 = 1
v = 55
value = 215

[State -1, Stand Light Punch]
type = changestate
value = 215
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 215
triggerall = (var(15) = [0,2]) || (var(15)  = 3 && (var(49) = 1 || var(49) = 3))
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,30]
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]

;連打
[State -3, VarSet]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (var(15) = [0,2]) || (var(15)  = 3 && (var(49) = 1 || var(49) = 3))
triggerall = stateno = 430
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
trigger1 = p2statetype = S
trigger1 = p2bodydist x = [5,25]
trigger1 = 1+((var(55) := 200)*0)
trigger2 = p2bodydist x = [5,18]
trigger2 = 1+((var(55) := 400)*0)

[State -3, VarSet]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (var(15)  = 3 && (var(49) = 0 || var(49) = 2))
triggerall = stateno = 430
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
trigger1 = p2statetype = S
trigger1 = p2bodydist x = [-10,25]
trigger1 = 1+((var(55) := 200)*0)
trigger2 = p2bodydist x = [-10,18]
trigger2 = 1+((var(55) := 400)*0)

[State -1, Crouch Light Punch]
type = changestate
value = var(55)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 200 || var(55) = 400
triggerall = movehit
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [-10,28]
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = [120,139]
trigger2 = stateno = 200 && animelemtime(3) > 0
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger4 = stateno = 235 && animelemtime(4) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 430 && animelemtime(3) > 0

;-------------------------< 弱攻撃ヒット時 >-------------------------
;--- 行動決定 ---
;簡易
[State -1, Light Normal]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) = 1
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 235 || stateno = 236 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (var(15) = [0,1]) || (var(15) = 3 && (var(49) = 2 || var(49) = 3))
trigger1 = p2bodydist x = [-10,25]
trigger1 = 1+((var(55) := 300)*0)

;クラシック表, KUSANAGI
[State -1, Light Normal]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 235 || stateno = 236 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (var(15) = 0 && var(49) = 0)
trigger1 = p2bodydist x = [-10,25]
trigger1 = 1+((var(55) := 300)*0)
trigger2 = p2bodydist x = [25,55]
trigger2 = var(57) <= 3
trigger2 = 1+((var(55) := 1300)*0)
trigger3 = p2bodydist x = [25,70]
trigger3 = var(57) >= 4
trigger3 = 1+((var(55) := 1350)*0)

;KUSANAGI
[State -1, Light Normal]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 235 || stateno = 236 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (var(15) = 3 && var(49) = 3)
trigger1 = p2bodydist x = [-10,70]
trigger1 = 1+((var(55) := 310)*0)

;クラシック裏
[State -1, Light Normal]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 235 || stateno = 236 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = var(15) = 0 && var(49) = 1
;近距離
trigger1 = p2bodydist x = [-10,25]
trigger1 = var(55) := 300
;中距離0ゲージ
trigger2 = p2bodydist x = [25,55]
trigger2 = var(57) = 0
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1300,1305)
;中距離1,2ゲージ
trigger3 = p2bodydist x = [25,55]
trigger3 = var(57) <= 2
trigger3 = var(55) := 1300
;中距離3ゲージ
trigger4 = p2bodydist x = [25,55]
trigger4 = var(57) = 3
trigger4 = var(55) := 1305
;中距離4ゲージ
trigger5 = p2bodydist x = [25,70]
trigger5 = var(57) >= 4
trigger5 = var(55) := 1305

;クローン,京-1
[State -1, Light Normal]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 235 || stateno = 236 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (var(15) = 3 && var(49) = 0 || var(49) = 1)
;近距離
trigger1 = p2bodydist x = [-10,75]
trigger1 = 1+((var(55) := 340)*0)
;遠距離
trigger2 = p2bodydist x = [75,90]
trigger2 = 1+((var(55) := 2701)*0)

;京-2
[State -1, Light Normal]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 235 || stateno = 236 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = (var(15) = 3 && var(49) = 2)
;近距離
trigger1 = p2bodydist x = [-10,55]
trigger1 = 1+((var(55) := 370)*0)
;遠距離
trigger2 = p2bodydist x = [55,90]
trigger2 = 1+((var(55) := 1700)*0)


;--- 攻撃 ---
[State -1, Light Normal]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 200 || stateno = 205 || stateno = 235 || stateno = 236 || stateno = 400
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(10) = 1
;轟斧
trigger1 = var(55) = 300
trigger1 = p2bodydist x = [-10,25]
;八拾八式
trigger2 = var(55) = 310
trigger2 = p2bodydist x = [-10,75]
;七拾五式
trigger3 = var(55) = 340
trigger3 = p2bodydist x = [-10,75]
;黒咬み
trigger4 = var(55) = 370
trigger4 = p2bodydist x = [-10,55]
:七拾五式・改
trigger5 = var(55) = 1300 || var(55) = 1305
trigger5 = 1+((var(1) := 0)*0)
trigger5 = p2bodydist x = [-10,55]
;EX七拾五式・改
trigger6 = var(55) = 1350 || var(55) = 1355
trigger6 = p2bodydist x = [-10,70]
trigger6 = power >= 1000
trigger6 = var(57) := var(57)-1
;弱琴月
trigger7 = var(55) = 1700
trigger7 = 1+((var(1) := 0)*0)
trigger7 = p2bodydist x = [-10,90]
;強蒼鬼
trigger8 = var(55) = 2701
trigger8 = 1+((var(1) := 1)*0)
trigger8 = p2bodydist x = [-10,90]

;-------------------------< 端空中ヒット時 >-------------------------
;近C目押し
[State -3, VarSet]
type = varset
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 411
triggerall = movehit = 1
triggerall = p2movetype = H
triggerall = p2statetype = A
trigger1 = helper(10000+facing),fvar(39) < 60
trigger1 = 1
v = 55
value = 430

[State -1, Stand Light Punch]
type = changestate
value = 430
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 430
triggerall = numtarget(0)
triggerall = p2statetype = A
triggerall = p2movetype = H
triggerall = p2bodydist x = [-10,30]
triggerall = statetype != A
triggerall = ctrl || stateno = 100 || stateno = [120,139]
trigger1 = var(54) = 1

;-------------------------< 強攻撃ヒット時 >-------------------------
;--- 行動決定 ---
;クラシック 簡易
[State -1, Hard Normal]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) = 1
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 210 || stateno = 215 || stateno = 245 || stateno = 410
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
triggerall = var(15) = 0
trigger1 = p2bodydist x = [-10,20]
trigger1 = var(55) := 330
trigger2 = p2bodydist x = [20,35]
trigger2 = var(55) := 300

;クラシック
[State -1, Hard Normal]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 210 || stateno = 215 || stateno = 245 || stateno = 410
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
triggerall = var(15) = 0
;画面端
trigger1 = p2bodydist x = [20,35]
trigger1 = helper(10000+facing),fvar(39) < 250
trigger1 = var(55) := 1306
;近距離
trigger2 = p2bodydist x = [-10,20]
trigger2 = var(55) := 330
;中距離 0,1ゲージ
trigger3 = p2bodydist x = [20,35]
trigger3 = var(57) = [0,1]
trigger3 = var(55) := 1301
;中距離 2ゲージ
trigger4 = p2bodydist x = [20,35]
trigger4 = var(57) = 2
trigger4 = var(55) := ifelse((var(51) = 3 || var(58) < 500),3350,1301)
;中距離 3ゲージ
trigger5 = p2bodydist x = [20,35]
trigger5 = var(57) = 3
trigger5 = var(55) := 1301
;中距離 4ゲージ 表
trigger6 = p2bodydist x = [20,35]
trigger6 = var(57) >= 4
trigger6 = var(49) = 0
trigger6 = var(55) := 1350
;中距離 4ゲージ 裏
trigger7 = p2bodydist x = [20,35]
trigger7 = var(57) >= 4
trigger7 = var(49) = 1
trigger7 = var(55) := 1356
;遠距離 ゲージなし
trigger8 = p2bodydist x = [35,70]
trigger8 = var(57) = 0
trigger8 = var(49) = 0
trigger8 = var(55) := 1701
trigger9 = p2bodydist x = [35,70]
trigger9 = var(57) = 0
trigger9 = var(49) = 1
trigger9 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1701,1200)
;遠距離 1ゲージ
trigger10 = p2bodydist x = [35,70]
trigger10 = var(57) = 1
trigger10 = var(55) := 3000
;遠距離 2ゲージ
trigger11 = p2bodydist x = [35,70]
trigger11 = var(57) = 2
trigger11 = var(55) := 3050
;遠距離 3ゲージ
trigger12 = p2bodydist x = [35,70]
trigger12 = var(57) >= 3
trigger12 = var(55) := 4200

;クローン, 京-1 簡易
[State -1, Hard Normal]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) = 1
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 210 || stateno = 215 || stateno = 245 || stateno = 410 || stateno = 411
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 1))
trigger1 = p2bodydist x = [-10,45]
trigger1 = var(55) := 340

;クローン, 京-1
[State -1, Hard Normal]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 210 || stateno = 215 || stateno = 216 || stateno = 245 || stateno = 410 || stateno = 411 || stateno = 441
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 1))
;近距離
trigger1 = p2bodydist x = [-10,45]
trigger1 = var(55) := 340
;遠距離 1ゲージ
trigger2 = p2bodydist x = [45,65]
trigger2 = var(57) = 1
trigger2 = var(55) := 2760
;遠距離 2ゲージ以上 クローン
trigger3 = p2bodydist x = [45,105]
trigger3 = var(57) >= 2
trigger3 = var(15) = 3 && var(49) = 0
trigger3 = var(55) := 4400
;遠距離 2ゲージ 京-1
trigger4 = p2bodydist x = [45,105]
trigger4 = var(57) = 2
trigger4 = var(15) = 3 && var(49) = 1
trigger4 = var(55) := 3050
;遠距離 3ゲージ以上 京-1
trigger5 = p2bodydist x = [45,105]
trigger5 = var(57) >= 3
trigger5 = var(15) = 3 && var(49) = 1
trigger5 = var(55) := 4400

;京-2
[State -1, Hard Normal]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 210 || stateno = 215 || stateno = 216 || stateno = 245 || stateno = 410 || stateno = 411 || stateno = 441
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
triggerall = var(15) = 3 && var(49) = 2
;近距離
trigger1 = p2bodydist x = [-10,35]
trigger1 = var(55) := 370
;遠距離
trigger2 = p2bodydist x = [35,70]
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1200,1701)

;KUSANAGI
[State -1, Hard Normal]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 210 || stateno = 215 || stateno = 216 || stateno = 245 || stateno = 410 || stateno = 411 || stateno = 441
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
triggerall = var(15) = 3 && var(49) = 3
;近距離
trigger1 = p2bodydist x = [-10,55]
trigger1 = var(55) := 310
;遠距離 ゲージなし
trigger2 = p2bodydist x = [55,70]
trigger2 = var(57) = 0
trigger2 = var(55) := 1701

;--- 攻撃 ---
[State -1, Hard Normal]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 210 || stateno = 215 || stateno = 216 || stateno = 245 || stateno = 410 || stateno = 411 || stateno = 441
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
;轟斧
trigger1 = var(55) = 300
trigger1 = p2bodydist x = [-10,30]
;八拾八式
trigger2 = var(55) = 310
trigger2 = p2bodydist x = [-10,55]
;霞裏肘
trigger3 = var(55) = 330
trigger3 = p2bodydist x = [-10,20]
;黒咬み	
trigger4 = var(55) = 340
trigger4 = p2bodydist x = [-10,45]
;七拾五式	
trigger5 = var(55) = 370
trigger5 = p2bodydist x = [-10,35]


[State -1, Hard Normal]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 210 || stateno = 215 || stateno = 216 || stateno = 245 || stateno = 410 || stateno = 411 || stateno = 441
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
;毒咬み
trigger1 = var(55) = 1200
trigger1 = p2bodydist x = [-10,70]
;強七拾五式・改
trigger2 = var(55) = 1301 || var(55) = 1306
trigger2 = 1+((var(1) := 1)*0)
trigger2 = p2bodydist x = [-10,35]
;EX七拾五式・改
trigger3 = var(55) = 1350 || var(55) = 1355
trigger3 = p2bodydist x = [-10,35]
trigger3 = power >= 1000
trigger3 = var(57) := var(57)-1
;強琴月
trigger4 = var(55) = 1701
trigger4 = 1+((var(1) := 1)*0)
trigger4 = p2bodydist x = [-10,70]


[State -1, Hard Normal]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 210 || stateno = 215 || stateno = 216 || stateno = 245 || stateno = 410 || stateno = 411 || stateno = 441
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
;大蛇薙
trigger1 = var(55) = 3000
trigger1 = p2bodydist x = [-10,70]
trigger1 = power >= 1000
trigger1 = var(57) := var(57)-1
;MAX大蛇薙
trigger2 = var(55) = 3050
trigger2 = p2bodydist x = [-10,70]
trigger2 = power >= 2000
trigger2 = var(57) := var(57)-2
;MAX無式
trigger3 = var(55) = 3350
trigger3 = p2bodydist x = [-10,35]
trigger3 = power >= 2000
trigger3 = var(57) := var(57)-2
;十拳
trigger4 = var(55) = 4200
trigger4 = p2bodydist x = [-10,70]
trigger4 = power >= 3000
trigger4 = var(57) := var(57)-3
;天羽々斬
trigger5 = var(55) = 4400
trigger5 = p2bodydist x = [-10,105]
trigger5 = power >= 3000
trigger5 = var(57) := var(57)-3

;-------------------------< 近距離強Kヒット時 >-------------------------
;--- 行動決定 ---
;クローン京 画面端
[State -1, Stand Hard Kick]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 246
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = A
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = var(15) = 3 && var(49) = 0
triggerall = helper(10000+facing),fvar(39) < 120
;画面端
trigger1 = var(55) := 2800

;京-2 画面端
[State -1, Stand Hard Kick]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 246
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = A
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = var(15) = 3 && var(49) = 2
triggerall = helper(10000+facing),fvar(39) < 120
;画面端 0ゲージ
trigger1 = var(57) = 0
trigger1 = var(55) := 1200
;画面端 1ゲージ
trigger2 = var(57) = 1
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1200,1450)
;画面端 2ゲージ
trigger3 = var(57) = 2
trigger3 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1200,1250)
;画面端 3ゲージ
trigger4 = var(57) = 3
trigger4 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1250,1200)
;画面端 4ゲージ以上
trigger5 = var(57) >= 4
trigger5 = var(55) := 1450

;クローン京 通常
[State -1, Stand Hard Kick]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 246
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = A
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = var(15) = 3 && var(49) = 0
triggerall = helper(10000+facing),fvar(39) >= 120
;0ゲージ
trigger1 = var(57) = 0
trigger1 = var(55) := ifelse((var(51) = 3 || var(58) < 500),2401,2801)
;1ゲージ
trigger2 = var(57) = 1
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),2450,2650)
;2ゲージ
trigger3 = var(57) = 2
trigger3 = var(55) := ifelse((var(51) = 3 || var(58) < 500),4400,4700)
;3ゲージ
trigger4 = var(57) = 3
trigger4 = var(55) := 4300
;4ゲージ
trigger5 = var(57) = 4
trigger5 = var(55) := ifelse((var(51) = 3 || var(58) < 500),2450,4300)
;5ゲージ以上
trigger6 = var(57) >= 5
trigger6 = var(55) := 2450

;京-2 通常
[State -1, Stand Hard Kick]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 246
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = A
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = var(15) = 3 && var(49) = 2
triggerall = helper(10000+facing),fvar(39) >= 120
;0ゲージ
trigger1 = var(57) = 0
trigger1 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1205,1701)
;1ゲージ
trigger2 = var(57) = 1
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1450,3300)
;2ゲージ
trigger3 = var(57) = 2
trigger3 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1450,3350)
;3ゲージ
trigger4 = var(57) = 3
trigger4 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1450,4700)
;4ゲージ以上
trigger5 = var(57) >= 4
trigger5 = var(55) := 1450

;--- 攻撃 ---
;キャンセル
[State -1, Stand Hard Kick]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 246
triggerall = movehit
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = A
triggerall = statetype != A
triggerall = var(11) = 1
;毒咬み 罰詠み止め
trigger1 = var(55) = 1200
trigger1 = animelemtime(4) > 20
;毒咬み フルヒット
trigger2 = var(55) = 1205
trigger2 = animelemtime(4) > 23
;EX毒咬み カス当て
trigger3 = var(55) = 1250
trigger3 = animelemtime(4) > 23
trigger3 = power >= 1000
trigger3 = 1 || var(57) := var(57)-1
;EXR,E,Dキック
trigger4 = var(55) = 1450
trigger4 = animelemtime(4) > 18
trigger4 = power >= 1000
trigger4 = 1 || var(57) := var(57)-1
;強R,E,Dキック
trigger5 = var(55) = 2401
trigger5 = movehit = 1
trigger5 = 1 || var(1) := 1
;EXR,E,Dキック
trigger6 = var(55) = 2450
trigger6 = movehit = 1
trigger6 = power >= 1000
trigger6 = 1 || var(57) := var(57)-1
;EX闇払い
trigger7 = var(55) = 2650
trigger7 = animelemtime(4) > 18
trigger7 = power >= 1000
trigger7 = 1 || var(57) := var(57)-1
;弱朧車
trigger8 = var(55) = 2800
trigger8 = animelemtime(4) > 15
trigger8 = 1 || var(1) := 0
;天羽々斬
trigger9 = var(55) = 4400
trigger9 = movehit = 1
trigger9 = power >= ifelse(var(49) = 1,3000,2000)
trigger9 = 1 || var(57) := var(57)-ifelse(var(49) = 1,3,2)
;零式
trigger10 = var(55) = 4300
trigger10 = movehit = 1
trigger10 = power >= 3000
trigger10 = 1 || var(57) := var(57)-3

[State -1, Stand Hard Kick]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(246)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;琴月
trigger1 = var(55) = 1701
trigger1 = var(54) = 1
trigger1 = 1 || var(1) := 1
;強朧車
trigger2 = var(55) = 2801
trigger2 = var(54) = 1
trigger2 = 1 || var(1) := 1
;無式
trigger3 = var(55) = 3300
trigger3 = var(54) = 1
trigger3 = power >= 1000
trigger3 = 1 || var(1) := 1
trigger3 = 1 || var(57) := var(57)-1
;MAX無式
trigger4 = var(55) = 3350
trigger4 = var(54) = 1
trigger4 = power >= 2000
trigger4 = 1 || var(57) := var(57)-2
;火迦具槌
trigger5 = var(55) = 4700
trigger5 = var(54) = 1
trigger5 = power >= ifelse(var(49) = 2,3000,2000)
trigger5 = 1 || var(57) := var(57)-ifelse(var(49) = 2,3,2)

;-------------------------< 特殊技ヒット時 >-------------------------
;--- 行動決定 ---
;クラシック 簡易
[State -1, Command Move]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) = 1
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 300 || stateno = 310 || stateno = 331
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
triggerall = var(15) = 0
trigger1 = p2bodydist x = [-10,35]
trigger1 = var(55) := 1301
trigger2 = p2bodydist x = [35,70]
trigger2 = var(49) = 0
trigger2 = var(55) := 1701
trigger3 = p2bodydist x = [35,70]
trigger3 = var(49) = 1
trigger3 = var(55) := ifelse(var(58) < 500,1701,1200)

;クラシック
[State -1, Command Move]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 300 || stateno = 310 || stateno = 331
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
triggerall = var(15) = 0
;画面端
trigger1 = p2bodydist x = [-10,35]
trigger1 = helper(10000+facing),fvar(39) < 250
trigger1 = var(55) := 1306
;近距離 0,1,3ゲージ
trigger2 = p2bodydist x = [-10,35]
trigger2 = var(57) = 0 || var(57) = 1 || var(57) = 3
trigger2 = var(55) := 1301
;近距離 2ゲージ
trigger3 = p2bodydist x = [-10,35]
trigger3 = var(57) = 2
trigger3 = var(55) := ifelse((var(51) = 3 || var(58) < 500),3350,1301)
;近距離 4ゲージ以上
trigger4 = p2bodydist x = [-10,35]
trigger4 = var(57) >= 4
trigger4 = var(49) = 0
trigger4 = var(55) := 1350
trigger5 = p2bodydist x = [-10,35]
trigger5 = var(57) >= 4
trigger5 = var(49) = 1
trigger5 = var(55) := ifelse(p2bodydist x < 15,1355,1306)
;遠距離 0ゲージ 表
trigger6 = p2bodydist x = [35,70]
trigger6 = var(49) = 0
trigger6 = var(57) = 0
trigger6 = var(55) := 1701
;遠距離 0ゲージ 裏
trigger7 = p2bodydist x = [35,70]
trigger7 = var(49) = 1
trigger7 = var(57) = 0
trigger7 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1701,1200)
;遠距離 1ゲージ
trigger8 = p2bodydist x = [35,70]
trigger8 = var(57) = 1
trigger8 = var(55) := 3000
;遠距離 2ゲージ
trigger9 = p2bodydist x = [35,70]
trigger9 = var(57) = 2
trigger9 = var(55) := 3050
;遠距離 3ゲージ以上
trigger10 = p2bodydist x = [35,70]
trigger10 = var(57) >= 3
trigger10 = var(55) := 4200

;KUSANAGI
[State -1, Command Move]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 300 || stateno = 310 || stateno = 331
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
triggerall = (var(15) = 3 && var(49) = 3)
;画面端
trigger1 = p2bodydist x = [-10,35]
trigger1 = helper(10000+facing),fvar(39) < 250
trigger1 = var(55) := 1306
;近距離 1ゲージ
trigger2 = p2bodydist x = [-10,35]
trigger2 = var(57) = 1
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1301,2950)
;近距離 2ゲージ
trigger3 = p2bodydist x = [-10,35]
trigger3 = var(57) = 2
trigger3 = var(55) := ifelse((var(51) = 3 || var(58) < 500),2950,1301)
;近距離 0~3ゲージ
trigger4 = p2bodydist x = [-10,35]
trigger4 = var(57) = [0,3]
trigger4 = var(55) := 1301
;近距離 4ゲージ以上
trigger5 = p2bodydist x = [-10,35]
trigger5 = var(57) >= 4
trigger5 = var(55) := ifelse((var(51) = 3 || var(58) < 500),2950,1350)

;クローン, 京-1
[State -1, Command Move]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 300 || stateno = 310 || stateno = 331 || stateno = 340
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
triggerall = var(15) = 3 && var(49) = 0
;画面端 3ゲージ以下
trigger1 = p2bodydist x = [-10,35]
trigger1 = var(57) <= 3
trigger1 = helper(10000+facing),fvar(39) < 250
trigger1 = var(55) := 2306
;画面端 4ゲージ
trigger2 = p2bodydist x = [-10,35]
trigger2 = var(57) = 4
trigger2 = helper(10000+facing),fvar(39) < 250
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),2306,2355)
;画面端 5ゲージ以上
trigger3 = p2bodydist x = [-10,35]
trigger3 = var(57) >= 5
trigger3 = helper(10000+facing),fvar(39) < 250
trigger3 = var(55) := 2355
;近距離 1ゲージ
trigger4 = p2bodydist x = [-10,35]
trigger4 = var(57) = 1
trigger4 = var(55) := ifelse((var(51) = 3 || var(58) < 500),2301,2306)
;近距離 4ゲージ以下
trigger5 = p2bodydist x = [-10,35]
trigger5 = var(57) <= 4
trigger5 = var(55) := 2301
;近距離 5ゲージ以上
trigger6 = p2bodydist x = [-10,35]
trigger6 = var(57) >= 5
trigger6 = var(55) := ifelse((var(51) = 3 || var(58) < 500),2301,2306)

;京-1
[State -1, Command Move]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 300 || stateno = 310 || stateno = 331 || stateno = 340
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
triggerall = var(15) = 3 &&  var(49) = 1
;画面端 
trigger1 = p2bodydist x = [-10,35]
trigger1 = helper(10000+facing),fvar(39) < 250
trigger1 = var(55) := 2306
;近距離 4ゲージ以下
trigger2 = p2bodydist x = [-10,35]
trigger2 = var(57) <= 4
trigger2 = var(55) := 2301
;近距離 5ゲージ以上
trigger3 = p2bodydist x = [-10,35]
trigger3 = var(57) >= 5
trigger3 = var(55) := 2350

;京-2
[State -1, Command Move]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 300 || stateno = 370
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
triggerall = var(15) = 3 && var(49) = 2
;0ゲージ
trigger1 = p2bodydist x = [-10,70]
trigger1 = var(57) = 0
trigger1 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1200,1701)
;1ゲージ
trigger2 = p2bodydist x = [-10,35]
trigger2 = var(57) = 1
trigger2 = var(55) := 3300
;2ゲージ
trigger3 = p2bodydist x = [-10,35]
trigger3 = var(57) = 2
trigger3 = var(55) := 3350
;3ゲージ
trigger4 = p2bodydist x = [-10,70]
trigger4 = var(57) = 3
trigger4 = var(55) := 4700
;4ゲージ以上
trigger5 = p2bodydist x = [-10,70]
trigger5 = var(57) >= 4
trigger5 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1200,1100)


;--- 攻撃 ---
[State -1, Command Move]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 300 || stateno = 310 || stateno = 331 || stateno = 340 || stateno = 370
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
;荒咬み
trigger1 = var(55) = 1100
trigger1 = p2bodydist x = [-10,70]
;毒咬み
trigger2 = var(55) = 1200
trigger2 = p2bodydist x = [-10,70]
;強七拾五式
trigger3 = var(55) = 1301 || var(55) = 1306 || var(55) = 2301 || var(55) = 2306
trigger3 = 1+((var(1) := 1)*0)
trigger3 = p2bodydist x = [-10,35]
;EX七拾五式
trigger4 = var(55) = 1350 || var(55) = 1355 || var(55) = 2350 || var(55) = 2355
trigger4 = p2bodydist x = [-10,35]
trigger4 = power >= 1000
trigger4 = 1 || var(57) := var(57)-1
;強琴月
trigger5 = var(55) = 1701
trigger5 = 1+((var(1) := 1)*0)
trigger5 = p2bodydist x = [-10,70]
;EX鬼焼き
trigger6 = var(55) = 1070
trigger6 = p2bodydist x = [-10,50]
;EX鵺摘み
trigger7 = var(55) = 2950
trigger7 = p2bodydist x = [-10,50]
trigger7 = power >= 1000
trigger7 = 1 || var(57) := var(57)-1

[State -1, Command Move]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 300 || stateno = 310 || stateno = 331 || stateno = 340 || stateno = 370
triggerall = movehit = 1
triggerall = p2movetype = H && numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = var(11) = 1
;大蛇薙
trigger1 = var(55) = 3000
trigger1 = p2bodydist x = [-10,70]
trigger1 = power >= 1000
trigger1 = 1 || var(57) := var(57)-1
;MAX大蛇薙
trigger2 = var(55) = 3050
trigger2 = p2bodydist x = [-10,70]
trigger2 = power >= 2000
trigger2 = 1 || var(57) := var(57)-2
;無式
trigger3 = var(55) = 3300
trigger3 = p2bodydist x = [-10,35]
trigger3 = power >= 1000
trigger3 = 1 || var(57) := var(57)-1
;MAX無式
trigger4 = var(55) = 3350
trigger4 = p2bodydist x = [-10,35]
trigger4 = power >= 2000
trigger4 = 1 || var(57) := var(57)-2
;十拳
trigger5 = var(55) = 4200
trigger5 = p2bodydist x = [-10,70]
trigger5 = power >= 3000
trigger5 = 1 || var(57) := var(57)-3
;火迦具槌
trigger6 = var(55) = 4700
trigger6 = p2bodydist x = [-10,70]
trigger6 = power >= ifelse(var(49) = 2,3000,2000)
trigger6 = 1 || var(57) := var(57)-ifelse(var(49) = 2,3,2)

;-------------------------< 百式･鬼焼き ヒット時 >-------------------------
;--- 行動指定 ---
[State -1, Oniyaki]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1000) || numtarget(2000)
triggerall = p2movetype = H
triggerall = (stateno = 1000 || stateno = 2000) && movehit = 1 && var(1) = 1
;京-2 4ゲージ以上 SC
trigger1 = var(15) = 3 && var(49) = 2
trigger1 = var(57) >= 4
trigger1 = p2bodydist x = [-20,60]
trigger1 = p2bodydist y = [-30,30]
trigger1 = var(55) := 4700
;KUSANAGI 4ゲージ以上 SC
trigger2 = var(15) = 3 && var(49) = 3
trigger2 = var(57) >= 4
trigger2 = p2bodydist x = [-20,60]
trigger2 = p2bodydist y = [-10,40]
trigger2 = var(55) := 4150

;--- 攻撃 ---
[State -1, Oniyaki]
type = changestate
value = var(55)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1000) || numtarget(2000)
triggerall = (stateno = 1000 || stateno = 2000)
triggerall = p2movetype = H
triggerall = statetype != A
triggerall = movehit = 1 && var(12)
;零式(KUSANAGI)
trigger1 = var(55) = 4150
trigger1 = power >= 4000
trigger1 = 1 || var(57) := 4
;火迦具槌
trigger2 = var(55) = 4700
trigger2 = power >= ifelse(var(49) = 2,4000,3000)
trigger2 = 1 || var(57) := var(57)-ifelse(var(49) = 2,4,3)

;-------------------------< EX百式･鬼焼き ヒット時 >-------------------------
;--- 行動指定 ---
[State -1, Oniyaki]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1070)
triggerall = p2movetype = H
triggerall = (stateno = 1070 && animelemtime(12) >= 0) && movehit = 1
;京-2 4ゲージ以上 SC
trigger1 = var(15) = 3 && var(49) = 2
trigger1 = var(57) >= 4
trigger1 = p2bodydist x = [-20,60]
trigger1 = p2bodydist y = [-35,30]
trigger1 = var(55) := 4700

;--- 攻撃 ---
[State -1, Oniyaki]
type = changestate
value = var(55)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1070)
triggerall = (stateno = 1070)
triggerall = p2movetype = H
triggerall = statetype != A
triggerall = movehit = 1 && var(12)
;火迦具槌
trigger1 = var(55) = 4700
trigger1 = power >= ifelse(var(49) = 2,4000,3000)
trigger1 = 1 || var(57) := var(57)-ifelse(var(49) = 2,4,3)

;-------------------------< 荒咬み ヒット時 >-------------------------
;--- 行動決定 ---
;リセット
[State -1, Aragami]
type = varset
trigger1 = stateno = 1100 && time = 1
v = 55
value = 0

;クラシック/京-2 ヒット
[State -1, Aragami]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1100)
triggerall = p2movetype = H
triggerall = stateno = 1100 && movehit = 1
triggerall = var(15) = 0 || (var(15) = 3 && var(49) = 2)
;空中ヒット 画面端
trigger1 = helper(10000+facing),fvar(39) < 70
trigger1 = p2statetype = A
trigger1 = var(55) := 1111
;空中ヒット
trigger2 = helper(10000+facing),fvar(39) >= 70
trigger2 = p2bodydist x = [-20,45]
trigger2 = p2statetype = A
trigger2 = var(55) := ifelse(p2bodydist x >= 35,1110,1111)
;地上ヒット
trigger3 = p2bodydist x = [-20,10]
trigger3 = p2statetype = S || p2statetype = C
trigger3 = var(55) := 1110

;クラシック/京-2 ガード
[State -1, Aragami]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1100)
triggerall = p2movetype = H
triggerall = stateno = 1100 && moveguarded = 1
triggerall = var(15) = 0 || (var(15) = 3 && var(49) = 2)
trigger1 = p2bodydist x = [-20,45]
trigger1 = var(58) < 250
trigger1 = var(55) := 1111
trigger2 = (var(15) = 3 && var(49) = 2) && power >= 2000
trigger2 = p2bodydist x = [-20,15]
trigger2 = var(58) < 500
trigger2 = var(55) := 1111

;--- 攻撃 ---
[State -1, Aragami]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1100)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;強鬼焼き
trigger1 = var(55) = 2001
trigger1 = 1 || var(1) := 1
;trigger1 = p2bodydist x = [-20,110]
;trigger1 = p2dist y = [-80,-45]

;-------------------------< 九傷 ヒット時 >-------------------------
;--- 行動決定 ---
;クラシック 通常
[State -1, Konokizu]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1110)
triggerall = p2movetype = H
triggerall = stateno = 1110 && movehit = 1
;triggerall = var(15) = 0
trigger1 = var(15) = 3
trigger1 = var(57) >= 4
trigger1 = p2bodydist x = [-20,55]
trigger1 = var(55) := 1120
trigger2 = helper(10000+facing),fvar(39) < 120
trigger2 = var(55) := 1120
trigger3 = helper(10000+facing),fvar(39) >= 120
trigger3 = var(55) := 1122

;--- 攻撃 ---

;-------------------------< 八錆(荒咬み派生) ヒット時 >-------------------------
;--- 行動決定 ---
;クラシック 画面端
[State -1, Yanosabi]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1111)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1111 && movehit = 1
triggerall = var(15) = 0 || (var(15) = 3 && var(49) = 2)
triggerall = helper(10000+facing),fvar(39) < 100
;0ゲージ 低空
trigger1 = var(57) = 0
trigger1 = p2dist y >= -20
trigger1 = var(55) := 2001
;0ゲージ
trigger2 = var(57) = 0
trigger2 = p2dist y < -20
trigger2 = var(55) := 1700
;1~3ゲージ クラシック 低空
trigger3 = var(57) = [1,3]
trigger3 = var(15) = 0
trigger3 = p2dist y >= -20
trigger3 = var(55) := 2001
;1ゲージ
trigger4 = var(57) = 1
trigger4 = p2dist y < -20
trigger4 = var(55) := 3300
;2ゲージ
trigger5 = var(57) = 2
trigger5 = p2dist y < -20
trigger5 = var(55) := 3350
;3ゲージ 以上
trigger6 = var(57) = 3
trigger6 = p2dist y < -20
trigger6 = var(55) := 4200


;京-2 画面端
[State -1, Yanosabi]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1111)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1111 && movehit = 1
triggerall =  (var(15) = 3 && var(49) = 2)
triggerall = helper(10000+facing),fvar(39) < 100
;0ゲージ 低空
trigger1 = var(57) = 0
trigger1 = p2dist y >= -20
trigger1 = var(55) := 1001
;0ゲージ
trigger2 = var(57) = 0
trigger2 = p2dist y < -20
trigger2 = var(55) := 1700
;1,2ゲージ 低空
trigger3 = var(57) = [1,2]
trigger3 = (var(15) = 3 && var(49) = 2)
trigger3 = p2dist y >= -20
trigger3 = var(55) := 3600
;1ゲージ
trigger4 = var(57) = 1
trigger4 = p2dist y < -20
trigger4 = var(55) := 3300
;2ゲージ
trigger5 = var(57) = 2
trigger5 = p2dist y < -20
trigger5 = var(55) := 3350
;3ゲージ
trigger6 = var(57) = 3
trigger6 = var(55) := 4700
;4ゲージ
trigger7 = var(57) = 4
trigger7 = var(55) := 1001
;5ゲージ以上
trigger8 = var(57) >= 5
trigger8 = var(55) := 1070

;クラシック, 京-2 通常
[State -1, Yanosabi]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1111)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1111 && movehit = 1
triggerall = var(15) = 0 || (var(15) = 3 && var(49) = 2)
triggerall = helper(10000+facing),fvar(39) >= 100
trigger1 = var(15) = 0
trigger1 = var(55) := 1122
;クローン京 4ゲージ以上
trigger2 = var(15) = 3 && var(49) = 2
trigger2 = var(57) >= 4
trigger2 = var(55) := 1121
;クローン京 通常
trigger3 = var(15) = 3 && var(49) = 2
trigger3 = var(55) := 1131

;--- 攻撃 ---
[State -1, Konokizu]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1111)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;強鬼焼き
trigger1 = var(55) = 1001 || var(55) = 2001
trigger1 = var(54) = 1
trigger1 = 1 || var(1) := 1
;無式
trigger2 = var(55) = 3300
trigger2 = var(54) = 1
trigger2 = power >= 1000
trigger2 = 1 || var(57) := var(57)-1
;MAX無式
trigger3 = var(55) = 3350
trigger3 = var(54) = 1
trigger3 = power >= 2000
trigger3 = 1 || var(57) := var(57)-2
;十拳
trigger4 = var(55) = 4200
trigger4 = var(54) = 1
trigger4 = power >= 3000
trigger4 = 1 || var(57) := var(57)-3
;火迦具槌
trigger5 = var(55) = 4700
trigger5 = var(54) = 1
trigger5 = power >= 3000
trigger5 = 1 || var(57) := var(57)-3

;-------------------------< 八錆(荒咬み派生) ガード時 >-------------------------
;京-2 通常
[State -1, Yanosabi]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1111)
triggerall = p2movetype = H
triggerall = stateno = 1111 && moveguarded = 1
triggerall = (var(15) = 3 && var(49) = 2)
trigger1 = p2bodydist x = [-30,25]
trigger1 = var(55) := 1131

;-------------------------< 八錆(九傷派生) ヒット時 >-------------------------
;--- 行動指定 ---
[State -1, Yanozabi]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1120)
triggerall = p2movetype = H
triggerall = stateno = 1120 && movehit = 1
;京-2 4ゲージ以上 SC
trigger1 = var(15) = 3 && var(49) = 2
trigger1 = var(57) >= 4
trigger1 = p2bodydist x = [-30,90]
trigger1 = var(55) := 4700

;--- 攻撃 ---
[State -1, Yanozabi]
type = changestate
value = var(55)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 1120 && numtarget(1120)
triggerall = p2movetype = H
triggerall = statetype != A
triggerall = movehit = 1 && var(12)
;火迦具槌
trigger1 = var(55) = 4700
trigger1 = power >= ifelse(var(49) = 2,4000,3000)
trigger1 = 1 || var(57) := var(57)-ifelse(var(49) = 2,4,3)

;-------------------------< 砌穿ち(八錆派生) ヒット時 >-------------------------
;--- 行動指定 ---
[State -1, Migirugachi]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1121)
triggerall = p2movetype = H
triggerall = stateno = 1121 && movehit = 1
;京-2 4ゲージ以上 SC
trigger1 = var(15) = 3 && var(49) = 2
trigger1 = var(57) >= 4
trigger1 = p2bodydist x = [-30,90]
trigger1 = var(55) := 4700

;--- 攻撃 ---
[State -1, Migirugachi]
type = changestate
value = var(55)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 1121 && numtarget(1121)
triggerall = p2movetype = H
triggerall = statetype != A
triggerall = movehit = 1 && var(12)
;火迦具槌
trigger1 = var(55) = 4700
trigger1 = power >= ifelse(var(49) = 2,4000,3000)
trigger1 = 1 || var(57) := var(57)-ifelse(var(49) = 2,4,3)

;-------------------------< 鵺摘み(八錆派生) ヒット時 >-------------------------
;--- 行動指定 ---
[State -3, VarSet]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 1131
triggerall = moveguarded = 1
triggerall = p2movetype = H
trigger1 = (power >= 2000 && p2life < 250)
trigger1 = var(57) := 2
trigger2 = (power >= 3000 && p2life < 400)
trigger2 = var(57) := 3
trigger3 = power >= 4000
trigger3 = var(57) := 4
trigger4 = power >= 3000 && power < 4000
trigger4 = var(57) := 2+var(58)%2
trigger5 = power >= 2000 && power < 3000
trigger5 = var(57) := 2

[State -1, Migirugachi]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1131)
triggerall = p2movetype = H
triggerall = stateno = 1131 && moveguarded = 1
triggerall = var(15) = 3 && var(49) = 2
;京-2 4ゲージ以上 SC
trigger1 = var(57) >= 4
trigger1 = p2bodydist x = [-30,90]
trigger1 = var(55) := 4700
;京-2 3ゲージ SC
trigger2 = var(57) = 3
trigger2 = p2bodydist x = [-30,90]
trigger2 = var(55) := 3350
;京-2 2ゲージ SC
trigger3 = var(57) = 2
trigger3 = p2bodydist x = [-30,90]
trigger3 = var(55) := 3300

;--- 攻撃 ---
[State -1, Migirugachi]
type = changestate
value = var(55)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 1131 && numtarget(1131)
triggerall = p2movetype = H
triggerall = statetype != A
triggerall = moveguarded = 1 && var(12)
;火迦具槌
trigger1 = var(55) = 4700
trigger1 = power >= ifelse(var(49) = 2,4000,3000)
trigger1 = 1 || var(57) := var(57)-ifelse(var(49) = 2,4,3)
;MAX無式
trigger2 = var(55) = 3350
trigger2 = power >= 3000
trigger2 = 1 || var(57) := var(57)-3
;無式
trigger3 = var(55) = 3300
trigger3 = power >= 2000
trigger3 = 1 || var(57) := var(57)-2

;-------------------------< 毒咬み ヒット時 >-------------------------
;--- 行動決定 ---
;リセット
[State -1, Dokugami]
type = varset
trigger1 = stateno = 1200 && time = 1
v = 55
value = 0

;クラシック 通常
[State -1, Dokugami]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1200)
triggerall = p2movetype = H
triggerall = stateno = 1200 && movehit = 1
;十拳
trigger1 = var(57) >= 3
trigger1 = var(15) = 0
trigger1 = helper(10000+facing),fvar(39) >= 70
trigger1 = p2statetype = A
trigger1 = var(55) := 4200
;罪詠み 地上ヒット
trigger2 = p2bodydist x = [-10,25]
trigger2 = p2statetype = S || p2statetype = C
trigger2 = var(55) := 1210
;罪詠み 空中ヒット
trigger3 = p2bodydist x = [-10,50]
trigger3 = p2statetype = A
trigger3 = var(55) := 1210

;--- 攻撃 ---
[State -1, Dokugami]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1200)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;十拳
trigger1 = var(55) = 4200
trigger1 = p2bodydist x = [-20,110]
trigger1 = var(54) = 1
trigger1 = power >= 3000
trigger1 = 1 || var(57) := var(57)-3

;-------------------------< 罪詠みヒット時 >-------------------------
;--- 行動指定 ---
[State -1, Tsumiyomi]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1210)
triggerall = p2movetype = H
triggerall = stateno = 1210 && movehit = 1
;京-2 4ゲージ以上 SC
trigger1 = var(15) = 3 && var(49) = 2
trigger1 = var(57) >= 4
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2bodydist x = [-30,40]
trigger1 = var(55) := 4700
trigger2 = p2bodydist x = [-30,40]
trigger2 = var(55) := 1220

;--- 攻撃 ---
[State -1, Tsumiyomi]
type = changestate
value = var(55)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 1210 && numtarget(1210)
triggerall = p2movetype = H
triggerall = statetype != A
triggerall = movehit = 1 && var(12)
;火迦具槌
trigger1 = var(55) = 4700
trigger1 = power >= ifelse(var(49) = 2,4000,3000)
trigger1 = 1 || var(57) := var(57)-ifelse(var(49) = 2,4,3)

;-------------------------< 罰詠みヒット時 >-------------------------
;--- 行動指定 ---
;クラシック
[State -1, Batsuyomi]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1220)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1220 && movehit = 1
triggerall = var(15) = 0
;4ゲージ以上画面端
trigger1 = var(57) >= 4
trigger1 = helper(10000+facing),fvar(39) < 70
trigger1 = var(55) := 3050
;3ゲージ画面端
trigger2 = var(57) >= 3
trigger2 = helper(10000+facing),fvar(39) < 70
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),3050,4200)
;2ゲージ画面端
trigger3 = var(57) = 2
trigger3 = helper(10000+facing),fvar(39) < 70
trigger3 = var(55) := ifelse((var(51) = 3 || var(58) < 500),3350,3050)
;1ゲージ画面端
trigger4 = var(57) = 1
trigger4 = helper(10000+facing),fvar(39) < 70
trigger4 = var(55) := 3300
;0ゲージ画面端 
trigger5 = var(57) = 0
trigger5 = helper(10000+facing),fvar(39) < 70
trigger5 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1700,2001)
;3ゲージ場所問わず
trigger6 = var(57) >= 3
trigger6 = 1+((var(55) := 4200)*0)

;京-2
[State -1, Batsuyomi]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1220)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1220 && movehit = 1
triggerall = var(15) = 3
trigger1 = helper(10000+facing),fvar(39) >= 70
trigger1 = 1+((var(55) := 1230)*0)
;0ゲージ画面端 
trigger2 = var(57) = 0
trigger2 = helper(10000+facing),fvar(39) < 70
trigger2 = enemynear,pos y <= -70
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1700,2001)
;1ゲージ画面端
trigger3 = var(57) = 1
trigger3 = helper(10000+facing),fvar(39) < 70
trigger3 = enemynear,pos y <= -70
trigger3 = var(55) := 3300
;2ゲージ画面端
trigger4 = var(57) = 2
trigger4 = helper(10000+facing),fvar(39) < 70
trigger4 = enemynear,pos y <= -70
trigger4 = var(55) := 3350
;3ゲージ画面端
trigger5 = var(57) = 3
trigger5 = helper(10000+facing),fvar(39) < 70
trigger5 = enemynear,pos y <= -70
trigger5 = var(55) := 4700

;--- 攻撃 ---
[State -1, Batsuyomi]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1220)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;強鬼焼き
trigger1 = var(55) = 2001
trigger1 = 1 || var(1) := 1
;trigger1 = p2bodydist x = [-20,70];
trigger1 = var(54) = 1
;trigger1 = p2dist y = [-130,-100]
;弱琴月
trigger2 = var(55) = 1700
trigger2 = 1 || var(1) := 0
trigger2 = p2bodydist x = [-20,70];
trigger2 = var(54) = 1
;無式
trigger3 = var(55) = 3300
trigger3 = p2bodydist x = [-20,80];
trigger3 = var(54) = 1
trigger3 = power >= 1000
trigger3 = 1 || var(57) := var(57)-1
;MAX大蛇薙
trigger4 = var(55) = 3050
trigger4 = var(54) = 1
trigger4 = power >= 2000
trigger4 = 1 || var(57) := var(57)-2
;MAX無式
trigger5 = var(55) = 3350
trigger5 = p2bodydist x = [-20,80];
trigger5 = var(54) = 1
trigger5 = power >= 2000
trigger5 = 1 || var(57) := var(57)-2
;十拳
trigger6 = var(55) = 4200
trigger6 = var(54) = 1
trigger6 = power >= 3000
trigger6 = 1 || var(57) := var(57)-3
;火迦具槌
trigger7 = var(55) = 4700
trigger7 = var(54) = 4
trigger7 = power >= 3000
trigger7 = 1 || var(57) := var(57)-3

;-------------------------< EX毒咬み ヒット時 >-------------------------
;--- 行動決定 ---
;リセット
[State -1, Dokugami EX]
type = varset
trigger1 = stateno = 1250 && time = 1
v = 55
value = 0

;クラシック 通常
[State -1, Dokugami EX]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1250)
triggerall = p2movetype = H
triggerall = stateno = 1250 && movehit = 1
;triggerall = var(15) = 0
;罪詠み 地上ヒット
trigger1 = p2bodydist x = [-10,30]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = var(55) := 1260
;罪詠み 空中ヒット
trigger2 = p2bodydist x = [-10,55]
trigger2 = p2statetype = A
trigger2 = var(55) := 1260

;--- 攻撃 ---

;-------------------------< EX罪詠みヒット時 >-------------------------
;--- 行動指定 ---
[State -1, Tsumiyomi EX]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1260)
triggerall = p2movetype = H
triggerall = stateno = 1260 && movehit = 1
trigger1 = p2bodydist x = [-30,40]
trigger1 = var(55) := 1270

;-------------------------< EX罰詠みヒット時 >-------------------------
;--- 行動指定 ---
[State -1, Batsuyomi EX]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1270)
triggerall = p2movetype = H
triggerall = stateno = 1270 && movehit = 1
trigger1 = p2bodydist x = [-30,40]
trigger1 = var(55) := 1280

;-------------------------< EX毒咬み派生鬼焼きヒット時 >-------------------------
;--- 行動指定 ---
[State -1, Dokugami-Oniyaki EX]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1280)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1280 && movehit = 1 && var(0) = 0
;画面端 
trigger1 = helper(10000+facing),fvar(39) < 70
trigger1 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1100,1100)

;--- 攻撃 ---
[State -1, Dokugami-Oniyaki EX]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1280) && var(0) = 0
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;荒咬み
trigger1 = var(55) = 1100
;trigger1 = 1 || var(1) := 1
;trigger1 = p2bodydist x = [-20,70];
;trigger1 = p2dist y = [-130,-100]


;-------------------------< 七拾五式・改 1段目 >-------------------------
;--- 通常版 ---
;最速
[State -3, 75 Shiki Kai]
type = changestate
value = 1310
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = [1300,1301]
triggerall = p2movetype = H
triggerall = p2statetype = A
trigger1 = stateno = 1300 && animelemtime(6) > 0

[State -3, 75 Shiki Kai]
type = changestate
value = 2310
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = [2300,2301]
triggerall = p2movetype = H
triggerall = p2statetype = A
trigger1 = stateno = 2300 && animelemtime(6) > 0

;ディレイ
[State -3, 75 Shiki Kai]
type = changestate
value = 1310
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = [1305,1306]
triggerall = p2movetype = H
triggerall = p2statetype = A
trigger1 = stateno = 1300 && animelemtime(8) > 4

[State -3, 75 Shiki Kai]
type = changestate
value = 2310
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = [2305,2306]
triggerall = p2movetype = H
triggerall = p2statetype = A
trigger1 = stateno = 2300 && animelemtime(8) > 4

;--- EX版 ---
[State -3, 75 Shiki Kai]
type = changestate
value = 1360
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1350
triggerall = p2movetype = H
triggerall = p2statetype = A
trigger1 = stateno = 1350 && animelemtime(6) > 0

[State -3, 75 Shiki Kai]
type = changestate
value = 2360
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 2350
triggerall = p2movetype = H
triggerall = p2statetype = A
trigger1 = stateno = 2350 && animelemtime(6) > 0

;ディレイ
[State -3, 75 Shiki Kai]
type = changestate
value = 1360
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 1355
triggerall = p2movetype = H
triggerall = p2statetype = A
trigger1 = stateno = 1350 && animelemtime(8) > 3

[State -3, 75 Shiki Kai]
type = changestate
value = 2360
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(55) = 2355
triggerall = p2movetype = H
triggerall = p2statetype = A
trigger1 = stateno = 2350 && animelemtime(8) > 4

;-------------------------< 七拾五式・改 2段目 弱 ヒット時 >-------------------------
;--- 行動決定 ---

;クラシック
[State -1, ChangeState]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1310)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1310 && var(1) = 0 && movehit = 1
triggerall = var(15) = 0
;0ゲージ 表
trigger1 = var(57) = 0
trigger1 = var(49) = 0
trigger1 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1801,1700)
;0ゲージ 裏
trigger2 = var(57) = 0
trigger2 = var(49) = 1
trigger2 = var(55) := ifelse(var(55) = 1305,1200,ifelse(p2bodydist x > 45,1700,1100))
;1ゲージ 
trigger3 = var(57) = 1
trigger3 = var(55) := 3300
;2ゲージ 
trigger4 = var(57) = 2
trigger4 = var(55) := 3350
;3ゲージ以上表
trigger5 = var(57) >= 3
trigger5 = var(49) = 0
trigger5 = var(55) := 4200
;3ゲージ以上裏
trigger6 = var(57) >= 3
trigger6 = var(49) = 1
trigger6 = var(55) := 1200

;--- 追撃 ---
[State -1, ChangeState]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1310)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;十拳
trigger1 = var(55) = 4200
trigger1 = power >= 3000
trigger1 = 1 || var(57) := var(57)-3
;MAX無式
trigger2 = var(55) = 3350
trigger2 = power >= 2000
trigger2 = 1 || var(57) := var(57)-2
;無式
trigger3 = var(55) = 3300
trigger3 = power >= 1000
trigger3 = 1 || var(57) := var(57)-1
;弱朧車
trigger4 = var(55) = 1800
trigger4 = 1+((var(1) := 0)*0)
;trigger4 = p2bodydist y = [-159,-155]
;強朧車
trigger5 = var(55) = 1801
;trigger5 = p2bodydist x = [-10,110]
;trigger5 = p2bodydist y = [-155,-140]
trigger5 = 1 || var(1) := 1
;弱琴月
trigger6 = var(55) = 1700
trigger6 = 1+((var(1) := 0)*0)
;trigger6 = ((p2bodydist x = [80,110]) && (p2bodydist y = [-150,-135])) || ((p2bodydist x = [-10,80]) && var(54) = 9)
;荒咬み
trigger7 = var(55) = 1100
;毒咬み
trigger8 = var(55) = 1200
trigger8 = p2bodydist y = [-100,-95]

;-------------------------< 七拾五式・改 2段目 強,EX ヒット時 >-------------------------
;--- 行動決定 ---
;クラシック 簡易
[State -1, 75 Shiki-2]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) = 1
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1311)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1310 && var(1) = 1 && movehit = 1
triggerall = var(15) = 0
;0ゲージ 表
trigger1 = var(57) = 0
trigger1 = var(49) = 0
trigger1 = var(55) := 1400
;0ゲージ 裏
trigger2 = var(57) = 0
trigger2 = var(49) = 1
trigger2 = var(55) := 1801
;1ゲージ
trigger3 = var(57) = 1
trigger3 = var(55) := 3000
;2ゲージ
trigger4 = var(57) = 2
trigger4 = var(55) := 3050
;3ゲージ以上
trigger5 = var(57) >= 3
trigger5 = var(55) := 4200

;クラシック/KUSANAGI 通常
[State -1, 75 Shiki-2]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1311)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1310 && var(1) = 1 && movehit = 1
triggerall = helper(10000+facing),fvar(39) >= 150
triggerall = (var(15) = 0 && var(49) = 0) || (var(15) = 3 && var(49) = 3)
;0ゲージ
trigger1 = var(57) = 0
trigger1 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1801,1700)
;1ゲージ クラシック
trigger2 = var(57) = 1
trigger2 = var(15) = 0
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),3000,1850)
;1ゲージ KUSANAGI
trigger3 = var(57) = 1
trigger3 = var(15) = 3
trigger3 = var(55) := ifelse((var(51) = 3 || var(58) < 500),3700,3000)
;2ゲージ
trigger4 = var(57) = 2	
trigger4 = var(55) := 3050
;3ゲージ以上 クラシック
trigger5 = var(57) >= 3
trigger5 = var(15) = 0
trigger5 = var(55) := 4200
;3ゲージ以上 KUSANAGI
trigger6 = var(57) >= 3
trigger6 = var(15) = 3
trigger6 = var(55) := 4150

;クラシック 裏 通常
[State -1, 75 Shiki-2]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1311)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1310 && var(1) = 1 && movehit = 1
triggerall = helper(10000+facing),fvar(39) >= 150
triggerall = var(15) = 0 && var(49) = 1
;0ゲージ
trigger1 = var(57) = 0
trigger1 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1700,1205)
;1ゲージ
trigger2 = var(57) = 1
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),3000,1255)
;2ゲージ
trigger3 = var(57) = 2
trigger3 = var(55) := 3050
;3ゲージ
trigger4 = var(57) = 3
trigger4 = var(55) := 1200
;4ゲージ以上
trigger5 = var(57) >= 4
trigger5 = var(55) := ifelse(var(55) = 1306, 2450, 1200)

;行動決定 クラシック 画面端
[State -1, 75 Shiki-2]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1311) || numtarget(1360)
triggerall = p2movetype = H
triggerall = p2statetype = A;
triggerall = ((stateno = 1310 && var(1) = 1) || stateno = 1360) && movehit = 1
triggerall = helper(10000+facing),fvar(39) < 150
triggerall = var(15) = 0
;ディレイ七拾五式→最速七拾五式
trigger1 = var(55) = 1306
trigger1 = var(55) := 1301
;弱朧車(クラシック表)
trigger2 = var(55) = 1301 || var(55) = 1350
trigger2 = var(49) = 0
trigger2 = var(55) := 1800
;毒咬み(クラシック裏)
;1ゲージ以外
trigger3 = var(55) = 1301 || var(55) = 1350
trigger3 = var(49) = 1
trigger3 = var(57) = 0 || var(57) = 2 || var(57) = 3 || var(57) = 5
trigger3 = var(55) := 1200
;1ゲージ
trigger4 = var(55) = 1301 || var(55) = 1350
trigger4 = var(49) = 1
trigger4 = var(57) = 1
trigger4 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1200,1250)
;4ゲージ
trigger5 = var(55) = 1301 || var(55) = 1350
trigger5 = var(49) = 1
trigger5 = var(57) = 4
trigger5 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1200,1250)

;行動決定 画面端 KUSANAGI
[State -1, 75 Shiki-2]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1311) || numtarget(1360)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ((stateno = 1310 && var(1) = 1) || stateno = 1360) && movehit = 1
triggerall = var(15) = 3 && var(49) = 3
triggerall = helper(10000+facing),fvar(39) < 150
;ディレイ七拾五式 0,1ゲージ
trigger1 = var(55) = 1306
trigger1 = (var(57) = [0,1])
trigger1 = var(55) := 1301
;ディレイ七拾五式 2,3ゲージ
trigger2 = var(55) = 1306
trigger2 = (var(57) = [2,3]) || var(57) = 5
trigger2 = var(55) := 1805
;ディレイ七拾五式 4ゲージ
trigger3 = var(55) = 1306
trigger3 = var(57) = 4
trigger3 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1805,1301)
;1ゲージ
trigger4 = var(55) = 1301 || var(55) = 1350
trigger4 = var(57) = 1
trigger4 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1800,3700)
;3ゲージ以下
trigger5 = var(55) = 1301 || var(55) = 1350
trigger5 = var(57) < 5
trigger5 = var(55) := 1800

;クローン 通常
[State -1, 75 Shiki-2]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(2311)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = (stateno = 2310 && var(1) = 1) && movehit = 1
triggerall = helper(10000+facing),fvar(39) >= 150
triggerall = var(15) = 3 && var(49) = 0
;0ゲージ
trigger1 = var(57) = 0
trigger1 = var(55) := 2801
;1ゲージ クローン
trigger2 = var(57) = 1
trigger2 = var(55) := ifelse(var(55) = 2301,3700,2650)
;2ゲージ クローン
trigger3 = var(57) = 2
trigger3 = var(55) := ifelse((var(51) = 3 || var(58) < 500),4400,4700)
;3ゲージ クローン
trigger4 = var(57) = 3
trigger4 = var(55) := 4300
;4ゲージ クローン
trigger5 = var(57) = 4
trigger5 = var(55) = 2301
trigger5 = var(55) := ifelse((var(51) = 3 || var(58) < 500),4300,2701)
trigger5 = var(55) := 2701
;5ゲージ以上 クローン 通常
trigger6 = var(57) >= 5
trigger6 = var(55) = 2301
trigger6 = var(55) := 2701
;5ゲージ以上 クローン ディレイ
trigger7 = var(57) >= 5
trigger7 = var(55) = 2306
trigger7 = var(55) := 2450

;京-1 通常
[State -1, 75 Shiki-2]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(2311)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = (stateno = 2310 && var(1) = 1) && movehit = 1
triggerall = helper(10000+facing),fvar(39) >= 150
triggerall = var(15) = 3 && var(49) = 1
;0ゲージ
trigger1 = var(57) = 0
trigger1 = var(55) := 2801
;1ゲージ 京-1
trigger2 = var(57) = 1
trigger2 = var(55) := ifelse(var(58) < 500,2701,3000)
;2ゲージ 京-1
trigger3 = var(57) = 2
trigger3 = var(55) := ifelse(var(58) < 500,3050,2750)
;3ゲージ 京-1
trigger4 = var(57) = 3
trigger4 = var(55) := 4400
;4ゲージ以上 京-1
trigger5 = var(57) >= 4
trigger5 = var(55) = 2301
trigger5 = var(55) := 2701

;行動決定 画面端 クローン
[State -1, 75 Shiki-2]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(2311) || numtarget(2360)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ((stateno = 2310 && var(1) = 1) || stateno = 2360) && movehit = 1
triggerall = var(15) = 3 && var(49) = [0,1]
triggerall = helper(10000+facing),fvar(39) < 150
;3ゲージ以下
trigger1 = var(55) = 2306 || var(55) = 2355
trigger1 = var(57) < 4
trigger1 = var(55) := 2800
;4ゲージ 強七拾五式
trigger2 = var(55) = 2306
trigger2 = var(57) >= 4
trigger2 = var(55) := 2800
;4ゲージ EX強七拾五式
trigger3 = var(55) = 2355
trigger3 = var(57) = 4
trigger3 = var(55) := 2800
;5ゲージ以上
trigger4 = var(55) = 2355
trigger4 = var(57) >= 5
trigger4 = var(55) := 2450

;EX クラシック
[State -1, 75 Shiki-2]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1360)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1360 && movehit = 1
triggerall = helper(10000+facing),fvar(39) >= 150
trigger1 = var(15) = 0 && var(49) = 0
trigger1 = var(55) := 1805
trigger2 = var(15) = 0 && var(49) = 1
trigger2 = var(55) := 1301

;EX クローン, 京-1
[State -1, 75 Shiki-2]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(2360)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 2360 && movehit = 1
triggerall = helper(10000+facing),fvar(39) >= 150
triggerall = var(15) = 3 && var(49) = [0,1]
;3ゲージ クローン
trigger1 = var(57) = 3
trigger1 = var(55) = 2350
trigger1 = var(49) = 0
trigger1 = var(55) := 4300
;4ゲージ以上 クローン, 京-1
trigger2 = var(57) >= 4
trigger2 = var(55) = 2350
trigger2 = var(55) := 2701

;EX KUSANAGI
[State -1, 75 Shiki-2]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1360)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1360 && movehit = 1
triggerall = helper(10000+facing),fvar(39) >= 150
triggerall = var(15) = 3 && var(49) = 3
;3ゲージ以上
trigger1 = var(57) >= 3
trigger1 = var(55) = 1350
trigger1 = var(55) := 4150

;--- 追撃 ---
[State -1, 75 Shiki-2]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1311) || numtarget(1360) || numtarget(2311) || numtarget(2360)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;十拳
trigger1 = var(55) = 4200
trigger1 = var(54) = [3,10]
trigger1 = power >= 3000
trigger1 = 1 || var(57) := var(57)-3
;MAX大蛇薙
trigger2 = var(55) = 3050
trigger2 = var(54) = [1,4]
trigger2 = power >= 2000
trigger2 = 1 || var(57) := var(57)-2
;大蛇薙
trigger3 = var(55) = 3000
trigger3 = var(54) = [1,4]
trigger3 = power >= 1000
trigger3 = 1 || var(57) := var(57)-1
;EX朧車
trigger4 = var(55) = 1850
trigger4 = ((p2bodydist x = [85,120]) && (var(54) = 9)) || ((p2bodydist x = [-10,85]) && (var(54) = [10,11]))
trigger4 = power >= 1000
trigger4 = 1 || var(57) := var(57)-1
;弱朧車(最速)
trigger5 = var(55) = 1800
trigger5 = 1+((var(1) := 0)*0)
trigger5 = var(54) = 1
;弱朧車(ディレイ)
trigger6 = var(55) = 1805
trigger6 = 1+((var(1) := 0)*0)
trigger6 = var(54) = ifelse(var(15) = 3,8,4)
;強朧車
trigger7 = var(55) = 1801 || var(55) = 2801
trigger7 = 1 || var(1) := 1
trigger7 = p2bodydist x = [-10,110]
trigger7 = (var(54) = [4,8])
;弱琴月
trigger8 = var(55) = 1700
trigger8 = 1+((var(1) := 0)*0)
trigger8 = ((p2bodydist x = [80,110]) && (var(54) = [6,8])) || ((p2bodydist x = [-10,80]) && (var(54) = [8,10]))
;強七拾五式
trigger9 = var(55) = 1301 || var(55) = 2301
trigger9 = 1+((var(1) := 1)*0)
;trigger9 = var(54) = 1
;毒咬み(十拳追撃用)
trigger10 = var(55) = 1200
trigger10 = var(54) = [1,3]
trigger10 = helper(10000+facing),fvar(39) >= 70 && var(57) >= 3
;毒咬み(フルヒット用)
trigger11 = var(55) = 1205
trigger11 = var(54) = [5,6]
;毒咬み(画面端)
trigger12 = var(55) = 1200
trigger12 = var(54) = [2,3]
trigger12 = helper(10000+facing),fvar(39) < 70
;EX毒咬み
trigger13 = var(55) = 1250
trigger13 = var(54) = 4
trigger13 = power >= 1000
trigger13 = 1 || var(57) := var(57)-1
;EX毒咬み(フルヒット用)
trigger14 = var(55) = 1255
trigger14 = var(54) = [5,6]
;弱R.E.D.KicK
trigger15 = var(55) = 1400
trigger15 = 1+((var(1) := 0)*0)
trigger15 = var(54) = [0,6]
;強R.E.D.KicK
trigger16 = var(55) = 1401
trigger16 = 1+((var(1) := 1)*0)
trigger16 = var(54) = [0,6]
;EXR.E.D.KicK
trigger17 = var(55) = 2450
trigger17 = var(54) = [0,6]
trigger17 = power >= 1000
trigger17 = 1 || var(57) := var(57)-1

;クローン 通常
[State -1, 75 Shiki-2]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1311) || numtarget(2311)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;EX闇払い
trigger1 = var(55) = 2650
trigger1 = var(54) = 1
trigger1 = power >= 1000
trigger1 = 1 || var(57) := var(57)-1
;強蒼鬼
trigger2 = var(55) = 2701
trigger2 = 1 || var(1) := 1
trigger2 = var(54) = 3
;EX蒼鬼
trigger3 = var(55) = 2750
trigger3 = var(54) = 6
trigger3 = 1 || var(57) := var(57)-1
;弱朧車(クローン)
trigger4 = var(55) = 2800
trigger4 = 1 || var(1) := 0
trigger4 = var(54) = 7
;EX朧車(クローン)
trigger5 = var(55) = 2850
trigger5 = var(54) = 8
trigger5 = power >= 1000
trigger5 = 1 || var(57) := var(57)-1
;霧焔
trigger6 = var(55) = 3700
trigger6 = var(54) = [6,8]
trigger6 = power >= 1000
trigger6 = 1 || var(57) := var(57)-1
;天羽々斬
trigger7 = var(55) = 4400
trigger7 = var(54) = [4,6]
trigger7 = power >= ifelse(var(49) = 1,3000,2000)
trigger7 = 1 || var(57) := var(57)-ifelse(var(49) = 1,3,2)
;火迦具槌
trigger8 = var(55) = 4700
trigger8 = var(54) = [7,9]
trigger8 = power >= ifelse(var(49) = 2,3000,2000)
trigger8 = 1 || var(57) := var(57)-ifelse(var(49) = 2,3,2)
;零式(KUSANAGI)
trigger9 = var(55) = 4150
trigger9 = var(54) = 10
trigger9 = power >= 3000
trigger9 = 1 || var(57) := var(57)-3
;零式(クローン)
trigger10 = var(55) = 4300
trigger10 = var(54) = 14
trigger10 = power >= 3000
trigger10 = 1 || var(57) := var(57)-3

;クローン EX
[State -1, 75 Shiki-2]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1360) || numtarget(2360)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;強蒼鬼
trigger1 = var(55) = 2701
trigger1 = 1 || var(1) := 1
trigger1 = var(54) = 8
;弱朧車(クローン)
trigger2 = var(55) = 2800
trigger2 = 1 || var(1) := 0
trigger2 = var(54) = 10
;零式(KUSANAGI)
trigger3 = var(55) = 4150
trigger3 = var(54) = 10
trigger3 = power >= 3000
trigger3 = 1 || var(57) := var(57)-3
;零式(クローン)
trigger4 = var(55) = 4300
trigger4 = var(54) = 14
trigger4 = power >= 3000
trigger4 = 1 || var(57) := var(57)-3

[State -1, 75 Shiki-2]
type = changestate
value = 100
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1311) || numtarget(1360) || numtarget(2311) || numtarget(2360)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = [120,139]
trigger1 = var(55) = 4150
trigger1 = var(54) = 1
trigger2 = var(55) = 4300
trigger2 = var(54) = 1

;-------------------------< EX R.E.D.KicK ヒット時 >-------------------------
;--- 行動指定 ---
[State -1, EX R.E.D.KicK]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(2450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 2450 && movehit = 1
;クラシック 3ゲージ 以上
trigger1 = var(15) = 0
trigger1 = var(57) >= 3
trigger1 = var(55) := 4200

;クローン
[State -1, EX R.E.D.KicK]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(2450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 2450 && movehit = 1
triggerall = var(15) = 3 && var(49) = 0
;クローン京 1,2ゲージ
trigger1 = var(57) = [0,1]
trigger1 = var(55) := 2700
;クローン京 2ゲージ
trigger2 = var(57) = 2
trigger2 = var(55) := 4700
;クローン京 3ゲージ
trigger3 = var(57) = 3
trigger3 = var(55) := 4300
;クローン京, 京-1 4ゲージ以上
trigger4 = var(57) >= 4
trigger4 = var(55) := ifelse((var(51) = 3 || var(58) < 500),4300,2700)

;京-2
[State -1, EX R.E.D.KicK]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1450 && movehit = 1
;0ゲージ
trigger1 = var(15) = 0 || (var(15) = 3 && var(49) = 2)
trigger1 = var(57) = 0
trigger1 = var(55) := 1100
;1ゲージ 画面端 京-2
trigger2 = (var(15) = 3 && var(49) = 2)
trigger2 = helper(10000+facing),fvar(39) < 70
trigger2 = var(57) = 1
trigger2 = var(55) := 1100
;1ゲージ
trigger3 = var(15) = 0 || (var(15) = 3 && var(49) = 2)
trigger3 = var(57) = 1
trigger3 = var(55) := 3300
;2ゲージ
trigger4 = var(15) = 0 || (var(15) = 3 && var(49) = 2)
trigger4 = var(57) = 2
trigger4 = var(55) := 3350
;3ゲージ以上 京-2 画面端
trigger5 = (var(15) = 3 && var(49) = 2)
trigger5 = helper(10000+facing),fvar(39) < 70
trigger5 = var(57) >= 3
trigger5 = var(55) := 1100
;3ゲージ 京-2
trigger6 = (var(15) = 3 && var(49) = 2)
trigger6 = helper(10000+facing),fvar(39) >= 70
trigger6 = var(57) = 3
trigger6 = var(55) := 4700
;4ゲージ以上 京-2
trigger7 = (var(15) = 3 && var(49) = 2)
trigger7 = helper(10000+facing),fvar(39) >= 70
trigger7 = var(57) >= 4
trigger7 = var(55) := 1100

;--- 攻撃 ---
[State -1, EX R.E.D.KicK]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(2450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;火迦具槌
trigger1 = var(55) = 4700
trigger1 = var(54) = [1,4]
trigger1 = power >= ifelse(var(49) = 2,3000,2000)
trigger1 = 1 || var(57) := var(57)-ifelse(var(49) = 2,3,2)
;零式
trigger2 = var(55) = 4300
trigger2 = var(54) = [1,4]
trigger2 = power >= 3000
trigger2 = 1 || var(57) := var(57)-3
;十拳
trigger3 = var(55) = 4200
trigger3 = var(54) = [1,4]
trigger3 = power >= 3000
trigger3 = 1 || var(57) := var(57)-3
;蒼鬼
trigger4 = var(55) = 2700
trigger4 = 1 || var(1) := 0
trigger4 = var(54) = 1
;荒咬み
trigger5 = var(55) = 1100
trigger5 = 1 || var(1) := 0
trigger5 = var(54) = 1

[State -1, EX R.E.D.KicK]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1450)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;十拳
trigger1 = var(55) = 4200
trigger1 = var(54) = [1,4]
trigger1 = power >= 3000
trigger1 = 1 || var(57) := var(57)-3
;蒼鬼
trigger2 = var(55) = 2700
trigger2 = 1 || var(1) := 0
trigger2 = var(54) = 1
;荒咬み
trigger3 = var(55) = 1100
trigger3 = 1 || var(1) := 0
trigger3 = var(54) = 1
;無式
trigger4 = var(55) = 3300
trigger4 = 1 || var(1) := 0
trigger4 = var(54) = 1
trigger4 = power >= 1000
trigger4 = 1 || var(57) := var(57)-1
;MAX無式
trigger5 = var(55) = 3350
trigger5 = var(54) = 1
trigger5 = power >= 2000
trigger5 = 1 || var(57) := var(57)-2
;火迦具槌
trigger6 = var(55) = 4700
trigger6 = var(54) = 1
trigger6 = power >= ifelse(var(49) = 2,3000,2000)
trigger6 = 1 || var(57) := var(57)-ifelse(var(49) = 2,3,2)

;-------------------------< EX闇払いヒット時 >-------------------------
[State -1, ChangeState]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1650 && var(0) = 0
triggerall = numhelper(1660)
triggerall = var(0) = 0
trigger1 = var(57) >= 3
trigger1 = helper(10000+facing),fvar(39) < 70
trigger1 = 1+((var(55) := 4200)*0)
trigger2 = var(57) = 2
trigger2 = helper(10000+facing),fvar(39) < 70
trigger2 = 1+((var(55) := 3350)*0)
trigger3 = var(57) = 1
trigger3 = helper(10000+facing),fvar(39) < 70
trigger3 = 1+((var(55) := 3300)*0)
trigger4 = var(57) = 0
trigger4 = helper(10000+facing),fvar(39) < 70
trigger4 = 1+((var(55) := 1700)*0)


;--- 攻撃 ---
[State -1, ChangeState]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numhelper(1660)
triggerall = helper(1660),numtarget
triggerall = p2movetype = H
triggerall = p2statetype = A
;triggerall = p2bodydist x = [-10,25];
;triggerall = p2bodydist y = [-145,-130]
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;琴月 弱
trigger1 = var(55) = 1700
trigger1 = var(54) = 1
trigger1 = 1+((var(0) := 0)*0)
;無式
trigger2 = var(55) = 3300
trigger2 = var(54) = 1
trigger2 = power >= 1000
trigger2 = 1 || var(57) := var(57)-1
;MAX大蛇薙
trigger3 = var(55) = 3050
trigger3 = var(54) = 1
trigger3 = power >= 2000
trigger3 = 1 || var(57) := var(57)-2
;MAX無式
trigger4 = var(55) = 3350
trigger4 = var(54) = 1
trigger4 = power >= 2000
trigger4 = 1 || var(57) := var(57)-2
;十拳
trigger5 = var(55) = 4200
trigger5 = var(54) = 1
trigger5 = power >= 3000
trigger5 = 1 || var(57) := var(57)-3

;-------------------------< 蒼鬼ヒット時 SC >-------------------------
;--- 行動指定 ---
;クローン 画面端
[State -1, Aoki]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(15) = 3
triggerall = numtarget(2710)
triggerall = p2movetype = H
triggerall = stateno = 2710 && movehit = 1
triggerall = p2bodydist x = [40,65]
triggerall = helper(10000+facing),fvar(39) >= 90
;4ゲージ以上 クローン
trigger1 = var(57) >= 4
trigger1 = var(49) = 0
trigger1 = var(55) := 4300
;4ゲージ以上 京-1
trigger2 = var(57) >= 4
trigger2 = var(49) = 1
trigger2 = var(55) := 4400

;クローン 画面端
[State -1, Aoki]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(15) = 3
triggerall = numtarget(2720)
triggerall = p2movetype = H
triggerall = stateno = 2720 && movehit = 1
triggerall = helper(10000+facing),fvar(39) >= 90
;4ゲージ以上 クローン
trigger1 = var(57) >= 4
trigger1 = var(49) = 0
trigger1 = var(55) := 4300
;4ゲージ以上 京-1
trigger2 = var(57) >= 4
trigger2 = var(49) = 1
trigger2 = var(55) := 4400

;--- 攻撃 ---
[State -1, Aoki]
type = changestate
value = var(55)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (stateno = 2710 && numtarget(2710)) || (stateno = 2720 && numtarget(2720))
triggerall = p2movetype = H
triggerall = statetype != A
triggerall = movehit = 1 && var(12)
;零式(クローン)
trigger1 = var(55) = 4300
trigger1 = power >= 4000
trigger1 = 1 || var(57) := var(57)-4
;天羽々斬
trigger2 = var(55) = 4400
trigger2 = power >= ifelse(var(49) = 1,4000,3000)
trigger2 = 1 || var(57) := var(57)-ifelse(var(49) = 1,4,3)

;-------------------------< 蒼鬼ヒット時 浮かせ >-------------------------
;--- 行動指定 ---
;クローン 画面端
[State -1, Aoki]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(15) = 3
triggerall = numtarget(2720)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 2720 && movehit = 1
trigger1 = helper(10000+facing),fvar(39) < 90
;0ゲージ クローン, 京-1
trigger1 = var(57) = 0
trigger1 = var(55) := ifelse((var(51) = 3 || var(58) < 500),411,2600)
;1ゲージ クローン
trigger2 = var(57) = 1
trigger2 = var(49) = 0
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),3600,3500)
;1ゲージ 京-1
trigger3 = var(57) = 1
trigger3 = var(49) = 1
trigger3 = var(55) := 3500
;2ゲージ クローン
trigger4 = var(57) = 2
trigger4 = var(49) = 0
trigger4 = var(55) := 4700
;2ゲージ 京-1
trigger5 = var(57) = 2
trigger5 = var(49) = 1
trigger5 = var(55) := 3050
;3ゲージ クローン
trigger6 = var(57) >= 3
trigger6 = var(49) = 0
trigger6 = var(55) := 4300
;3ゲージ 京-1
trigger7 = var(57) >= 3
trigger7 = var(49) = 1
trigger7 = var(55) := 4400

;--- 攻撃 ---
[State -1, Aoki]
type = changestate
value = var(55)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(2720)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
triggerall = helper(10000+facing),fvar(39) < 90
;しゃがみ強パンチ
trigger1 = var(55) = 411
trigger1 = var(54) = 1
;闇払い
trigger2 = var(55) = 2600
trigger2 = 1 || var(1) := 0
trigger2 = var(54) = 1
;朱天祓	
trigger3 = var(55) = 3500
trigger3 = var(54) = 1
trigger3 = power >= 1000
trigger3 = 1 || var(57) := var(57)-1
;布都御魂
trigger4 = var(55) = 3600
trigger4 = var(54) = 1
trigger4 = power >= 1000
trigger4 = 1 || var(57) := var(57)-1
;MAX大蛇薙
trigger5 = var(55) = 3050
trigger5 = var(54) = 1
trigger5 = power >= 2000
trigger5 = 1 || var(57) := var(57)-2
;天羽々斬
trigger6 = var(55) = 4400
trigger6 = var(54) = 1
trigger6 = power >= ifelse(var(49) = 1,3000,2000)
trigger6 = 1 || var(57) := var(57)-ifelse(var(49) = 1,3,2)
;火迦具槌
trigger7 = var(55) = 4700
trigger7 = var(54) = 1
trigger7 = power >= ifelse(var(49) = 1,3000,2000)
trigger7 = 1 || var(57) := var(57)-ifelse(var(49) = 2,3,2)
;零式(クローン)
trigger8 = var(55) = 4300
trigger8 = var(54) = 1
trigger8 = power >= 3000
trigger8 = 1 || var(57) := var(57)-3

;-------------------------< EX蒼鬼ヒット時 浮かせ >-------------------------
;--- 行動指定 ---
;クローン 画面端
[State -1, EX Aoki]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(15) = 3
triggerall = numtarget(2760)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 2760 && movehit = 1
trigger1 = helper(10000+facing),fvar(39) < 90
;クローン, 京-1
trigger1 = var(55) := 2601

;--- 攻撃 ---
[State -1, EX Aoki]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(2760)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
triggerall = helper(10000+facing),fvar(39) < 90
;闇払い
trigger1 = var(55) = 2601
trigger1 = 1 || var(1) := 1
trigger1 = var(54) = 1

;-------------------------< 弱朧車ヒット時 >-------------------------
;--- 行動指定 ---
;クラシック
[State -1, Oboroguruma]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(15) = 0
triggerall = numtarget(1800)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1800 && var(1) = 0 && movehit = 1
;4ゲージ画面端
trigger1 = var(57) >= 4
trigger1 = helper(10000+facing),fvar(39) < 150
trigger1 = var(55) := ifelse((var(51) = 3 || var(58) < 500),3050,1650)
;3ゲージ画面端
trigger2 = var(57) >= 3
trigger2 = helper(10000+facing),fvar(39) < 150
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),3050,4200)
;2ゲージ画面端
trigger3 = var(57) = 2
trigger3 = helper(10000+facing),fvar(39) < 150
trigger3 = var(55) := ifelse((var(51) = 3 || var(58) < 500),3350,3050)
;1ゲージ画面端
trigger4 = var(57) = 1
trigger4 = helper(10000+facing),fvar(39) < 150
trigger4 = var(55) := ifelse((var(51) = 3 || var(58) < 500),3300,1650)
;0ゲージ画面端 
trigger5 = var(57) = 0
trigger5 = helper(10000+facing),fvar(39) < 150
trigger5 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1700,2001)
;3ゲージ場所問わず
trigger6 = var(57) >= 3
trigger6 = 1+((var(55) := 4200)*0)

;クローン, 京-1 画面端
[State -1, Oboroguruma]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(15) = 3 && var(49) = [0,1]
triggerall = numtarget(2800)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 2800 && var(1) = 0 && movehit = 1
triggerall = helper(10000+facing),fvar(39) < 150
triggerall = enemynear,pos y < -65
;クローン
trigger1 = var(49) = 0
trigger1 = 1 || var(55) := 2700
;京-1 0ゲージ
trigger2 = var(57) = 0
trigger2 = var(49) = 1
trigger2 = 1 || var(55) := 2700
;京-1 1ゲージ
trigger3 = var(57) = 1
trigger3 = var(49) = 1
trigger3 = 1 || var(55) := ifelse((var(51) = 3 || var(58) < 500),2700,2750)
;京-1 2ゲージ画面端
trigger4 = var(57) = 2
trigger4 = var(49) = 1
trigger4 = var(55) := ifelse((var(51) = 3 || var(58) < 500),3050,2700)
;京-1 3,4ゲージ画面端
trigger5 = var(57) = [3,4]
trigger5 = var(49) = 1
trigger5 = var(55) := 2700
;京-1 5ゲージ画面端
trigger6 = var(57) >= 5
trigger6 = var(49) = 1
trigger6 = var(55) := 3050

;KUSANAGI
[State -1, Oboroguruma]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = (var(15) = 3 && var(49) = 3)
triggerall = numtarget(1800)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 1800 && var(1) = 0 && movehit = 1
;4ゲージ画面端
trigger1 = var(57) >= 4
trigger1 = helper(10000+facing),fvar(39) < 150
trigger1 = var(55) := ifelse((var(55) = 1805),3050,2001)
;3ゲージ画面端
trigger2 = var(57) >= 3
trigger2 = helper(10000+facing),fvar(39) < 150
trigger2 = var(55) := ifelse((var(51) = 3 || var(58) < 500),4150,3050)
;2ゲージ画面端
trigger3 = var(57) = 2
trigger3 = helper(10000+facing),fvar(39) < 150
trigger3 = var(55) := 3050
;1ゲージ画面端
trigger4 = var(57) = 1
trigger4 = helper(10000+facing),fvar(39) < 150
trigger4 = var(55) := 1070
;0ゲージ画面端 
trigger5 = var(57) = 0
trigger5 = helper(10000+facing),fvar(39) < 150
trigger5 = var(55) := ifelse((var(51) = 3 || var(58) < 500),1700,2001)

;--- 攻撃 ---
[State -1, Oboroguruma]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1800)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;強鬼焼き
trigger1 = var(55) = 2001
trigger1 = var(54) = 3
trigger1 = 1 || var(1) := 1
;強鬼焼き
trigger2 = var(55) = 2006
trigger2 = var(54) = 3
trigger2 = 1 || var(1) := 1
;EX鬼焼き
trigger3 = var(55) = 1070
trigger3 = var(54) =  1
;EX闇払い
trigger4 = var(55) = 1650
trigger4 = var(54) =  1
trigger4 = power >= 1000
trigger4 = 1 || var(57) := var(57)-1
;弱琴月
trigger5 = var(55) = 1700
trigger5 = 1 || var(1) := 0
trigger5 = p2bodydist x = [-20,70]
trigger5 = var(54) =  1
;無式
trigger6 = var(55) = 3300
trigger6 = p2bodydist x = [-20,80]
trigger6 = var(54) =  1
trigger6 = power >= 1000
trigger6 = 1 || var(57) := var(57)-1
;MAX大蛇薙
trigger7 = var(55) = 3050
trigger7 = var(54) = 1
trigger7 = power >= 2000
trigger7 = 1 || var(57) := var(57)-2
;MAX無式
trigger8 = var(55) = 3350
trigger8 = p2bodydist x = [-20,80];
trigger8 = var(54) =  1
trigger8 = power >= 2000
trigger8 = 1 || var(57) := var(57)-2
;十拳
trigger9 = var(55) = 4150
trigger9 = p2bodydist x = [-20,120]
trigger9 = var(54) =  1
trigger9 = power >= 3000
trigger9 = 1 || var(57) := var(57)-3
;十拳
trigger10 = var(55) = 4200
trigger10 = p2bodydist x = [-20,120]
trigger10 = var(54) =  1
trigger10 = power >= 3000
trigger10 = 1 || var(57) := var(57)-3

[State -1, Oboroguruma]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(2800)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;弱蒼鬼
trigger1 = var(55) = 2700
trigger1 = 1 || var(1) := 0
trigger1 = var(54) = 1
;EX蒼鬼
trigger2 = var(55) = 2750
trigger2 = var(54) = 1
trigger2 = power >= 1000
trigger2 = 1 || var(57) := var(57)-1
;MAX大蛇薙
trigger3 = var(55) = 3050
trigger3 = var(54) = 1
trigger3 = power >= 2000
trigger3 = 1 || var(57) := var(57)-2

;-------------------------< 鵺摘みヒット時 >-------------------------
;--- 行動指定 ---
;クラシック
[State -1, Nuetsumi]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1910) || numtarget(1911) || numtarget(1960) || numtarget(1961)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = (stateno = [1910,1911]) || (stateno = [1960,1961])
triggerall = var(15) = 0
;0ゲージ
trigger1 = var(57) = 0
trigger1 = var(55) := ifelse(var(49) = 0,1801,1700)
;1ゲージ
trigger2 = var(57) = 1
trigger2 = var(55) := 3300
;2ゲージ
trigger3 = var(57) = 2
trigger3 = var(55) := 3350
;3ゲージ以上
trigger4 = var(57) >= 3
trigger4 = var(55) := 4200

;KUSANAGI
[State -1, Nuetsumi]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1910) || numtarget(1911) || numtarget(1960) || numtarget(1961)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = (stateno = [1910,1911]) || (stateno = [1960,1961])
triggerall = var(15) = 3 && var(49) = 3
;0ゲージ
trigger1 = var(57) = 0
trigger1 = var(55) := 1801
;1ゲージ
trigger2 = var(57) = 1
trigger2 = var(55) := 3700
;2ゲージ
trigger3 = var(57) = 2
trigger3 = var(55) := 3700
;3ゲージ以上
trigger4 = var(57) >= 3
trigger4 = var(55) := 4150

;--- 攻撃 ---
[State -1, Nuetsumi]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(1910) || numtarget(1911) || numtarget(1960) || numtarget(1961)
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;琴月 弱
trigger1 = var(55) = 1700
trigger1 = var(54) = 1
trigger1 = 1 || var(1) := 0
;朧車 強
trigger2 = var(55) = 1801
trigger2 = var(54) = 1
trigger2 = 1 || var(1) := 1
;無式
trigger3 = var(55) = 3300
trigger3 = var(54) = 1
trigger3 = power >= 1000
trigger3 = 1 || var(57) := var(57)-1
;霧焔
trigger4 = var(55) = 3700
trigger4 = var(54) = 1
trigger4 = power >= 1000
trigger4 = 1 || var(57) := var(57)-1
;MAX無式
trigger5 = var(55) = 3350
trigger5 = var(54) = 1
trigger5 = power >= 2000
trigger5 = 1 || var(57) := var(57)-2
;十拳
trigger6 = var(55) = 4200
trigger6 = var(54) = 1
trigger6 = power >= 3000
trigger6 = 1 || var(57) := var(57)-3
;零式
trigger7 = var(55) = 4150
trigger7 = var(54) = 1
trigger7 = power >= 3000
trigger7 = 1 || var(57) := var(57)-3

;-------------------------< 鳳降し ヒット時 >-------------------------
;--- 行動決定 ---
;クラシック 通常
[State -1, Ohtorikudashi]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = var(51) >= 2
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numtarget(2960)
triggerall = p2movetype = H
triggerall = stateno = 2960 && movehit = 1
trigger1 = p2bodydist x = [-10,50]
trigger1 = var(55) := 1301

;--- 攻撃 ---
[State -1, Ohtorikudashi]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = stateno = 2960 && numtarget(2960)
triggerall = p2movetype = H
triggerall = statetype != A
triggerall = movehit = 1 && var(11)
;七拾五式・改 強
trigger1 = var(55) = 1301
trigger1 = 1 || var(1) := 1


;-------------------------< MAX大蛇薙ヒット時 >-------------------------
;クラシック
[State -1, ChangeState]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 3060 && var(0) = 0
triggerall = numhelper(3071)
triggerall = helper(3071),numtarget
triggerall = helper(3071),movehit = 1
triggerall = var(15) = 0
;3ゲージ以上
trigger1 = var(57) >= 3
trigger1 = helper(10000+facing),fvar(39) < 70
trigger1 = 1+((var(55) := 4200)*0)
;2ゲージ
trigger2 = var(57) = 2
trigger2 = helper(10000+facing),fvar(39) < 70
trigger2 = 1+((var(55) := 3350)*0)
;1ゲージ
trigger3 = var(57) = 1
trigger3 = helper(10000+facing),fvar(39) < 70
trigger3 = 1+((var(55) := 3300)*0)
;0ゲージ
trigger4 = var(57) = 0
trigger4 = helper(10000+facing),fvar(39) < 70
trigger4 = 1+((var(55) := 1700)*0)

;京-1
[State -1, ChangeState]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 3060 && var(0) = 0
triggerall = numhelper(3071)
triggerall = helper(3071),numtarget
triggerall = helper(3071),movehit = 1
triggerall = var(15) = 3 && var(49) = 1
trigger1 = var(57) = 0
trigger1 = helper(10000+facing),fvar(39) < 70
trigger1 = 1+((var(55) := 2700)*0)
trigger2 = var(57) = 1
trigger2 = helper(10000+facing),fvar(39) < 70
trigger2 = 1+((var(55) := 2700)*0)
trigger3 = var(57) >= 2
trigger3 = helper(10000+facing),fvar(39) < 70
trigger3 = 1+((var(55) := 2700)*0)

;KUSANAGI
[State -1, ChangeState]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = stateno = 3060 && var(0) = 0
triggerall = numhelper(3071)
triggerall = helper(3071),numtarget
triggerall = helper(3071),movehit = 1
triggerall = var(15) = 3 && var(49) = 3
;3ゲージ以上
trigger1 = var(57) >= 3
trigger1 = helper(10000+facing),fvar(39) < 70
trigger1 = 1+((var(55) := 4150)*0)
;2ゲージ
trigger2 = var(57) = 2
trigger2 = helper(10000+facing),fvar(39) < 70
trigger2 = 1+((var(55) := 3055)*0)
;1ゲージ
trigger3 = var(57) = 1
trigger3 = helper(10000+facing),fvar(39) < 70
trigger3 = 1+((var(55) := 1070)*0)
;0ゲージ
trigger4 = var(57) = 0
trigger4 = helper(10000+facing),fvar(39) < 70
trigger4 = 1 || var(55) := ifelse((var(51) = 3 || var(58) < 500),1700,2001)

;--- 攻撃 ---
[State -1, ChangeState]
type = changestate
value = ceil(var(55)/10)*10
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numhelper(3071)
triggerall = helper(3071),numtarget && var(0) = 0
triggerall = p2movetype = H
triggerall = p2statetype = A
;triggerall = p2bodydist x = [-10,25];
;triggerall = p2bodydist y = [-145,-130]
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
;鬼焼き 強
trigger1 = var(55) = 2001
trigger1 = 1+((var(1) := 1)*0)
;EX鬼焼き
trigger2 = var(55) = 1070
trigger2 = power >= 1000
trigger2 = 1 || var(57) := var(57)-1
;琴月 弱
trigger3 = var(55) = 1700
trigger3 = 1+((var(1) := 0)*0)
;蒼鬼 弱
trigger4 = var(55) = 2700
trigger4 = 1+((var(1) := 0)*0)
;無式
trigger5 = var(55) = 3300
trigger5 = power >= 1000
trigger5 = 1 || var(57) := var(57)-1
;MAX大蛇薙
trigger6 = var(55) = 3050 || var(55) = 3055
trigger6 = power >= 2000
trigger6 = 1 || var(57) := var(57)-2
;MAX無式
trigger7 = var(55) = 3350
trigger7 = power >= 2000
trigger7 = 1 || var(57) := var(57)-2
;零式(KUSANAGI)
trigger8 = var(55) = 4150
trigger8 = power >= 3000
trigger8 = 1 || var(57) := var(57)-3
;十拳
trigger9 = var(55) = 4200
trigger9 = power >= 3000
trigger9 = 1 || var(57) := var(57)-3

;しゃがみ強パンチ クローン
[State -1, ChangeState]
type = changestate
value = var(55)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = numhelper(3071)
triggerall = helper(3071),numtarget && var(0) = 0
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger1 = var(55) = 411

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
triggerall = (var(15) = [0,2]) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;近距離立ち強パンチ 京-2
[State -1, Stand Hard Panch]
type = changestate
value = 216
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
triggerall = (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;しゃがみ強パンチ クローン, 京-1
[State -1, Stand Hard Panch]
type = changestate
value = 411
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
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 1))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;しゃがみ強パンチ クローン, 京-2
[State -1, 88 Shiki]
type = changestate
value = 441
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = !inguarddist
triggerall = numtarget(600)
triggerall = p2movetype = H
triggerall = p2statetype = S || p2statetype = C
triggerall = p2bodydist x = [30,50]
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

;-------------------------< ダウン追撃 >-------------------------
[State -3, VarSet]
type = null
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = p2movetype = H
triggerall = (p2stateno = 5100 || p2stateno = 5612)
triggerall = enemynear,time = 1
trigger1 = p2bodydist x = [-10,80]
trigger1 = (power >= 1000 && p2life < 250.0*fvar(0))
trigger1 = var(57) := 1
trigger2 = p2bodydist x = [80,120]
trigger2 = (power >= 1000 && p2life < 150.0*fvar(0))
trigger2 = var(57) := 1
trigger3 = power >= 1000
trigger3 = var(57) := random%2
trigger4 = power < 1000
trigger4 = var(57) := 0

;朱天祓
[State -1, Shuten Barai]
type = changestate
value = 3500+(0*(var(57):=var(57)-1))
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) >= 2
triggerall = var(57) >= 1
triggerall = p2movetype = H
triggerall = p2statetype = L
triggerall = p2bodydist x = [-10,80]
triggerall = statetype != A
triggerall = var(15) = 3 && var(49) = [0,1]
triggerall = var(25) = 0
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
triggerall = power >= 1000
trigger1 = (p2stateno = 5100 || p2stateno = 5612)
trigger2 = enemynear,gethitvar(fall.yvel) = -6
trigger2 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 22
trigger3 = enemynear,gethitvar(fall.yvel) = -5
trigger3 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 16
trigger4 = enemynear,gethitvar(fall.yvel) = -4.5
trigger4 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 14
trigger5 = enemynear,gethitvar(fall.yvel) = -3.5
trigger5 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 7

;EX闇払い
[State -1, Shuten Barai]
type = changestate
value = 1650+(0*(var(57):=var(57)-1))
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) >= 2
triggerall = var(57) >= 1
triggerall = p2movetype = H
triggerall = p2statetype = L
triggerall = p2bodydist x = [80,120]
triggerall = statetype != A
triggerall = var(15) = 3 && var(49) = 1
triggerall = var(25) = 0
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
triggerall = power >= 1000
trigger1 = (p2stateno = 5100 || p2stateno = 5612)
trigger2 = enemynear,gethitvar(fall.yvel) = -6
trigger2 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 18-((p2bodydist x -45)/9)
trigger3 = enemynear,gethitvar(fall.yvel) = -5
trigger3 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 12-((p2bodydist x -45)/9)
trigger4 = enemynear,gethitvar(fall.yvel) = -4.5
trigger4 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 10-((p2bodydist x -45)/9)
trigger5 = enemynear,gethitvar(fall.yvel) = -3.5
trigger5 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 3-((p2bodydist x -45)/9)

;闇払い 強
[State -1, Yamibarai H]
type = changestate
value = 2600+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) >= 2
triggerall = p2movetype = H
triggerall = p2bodydist x = [-10,80]
triggerall = statetype != A
triggerall = var(15) = 3 && var(49) = [0,1]
triggerall = var(25) = 0
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger1 = enemynear,gethitvar(fall.yvel) <= -4.5
trigger1 = (p2stateno = 5100 || p2stateno = 5612)
trigger2 = enemynear,gethitvar(fall.yvel) = -6
trigger2 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 11
trigger3 = enemynear,gethitvar(fall.yvel) = -5
trigger3 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 5
trigger4 = enemynear,gethitvar(fall.yvel) = -4.5
trigger4 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 3

;砌穿ち
[State -1, Migiri Ugachi]
type = changestate
value = 360
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(51) >= 2
triggerall = p2movetype = H
triggerall = p2statetype = L
triggerall = p2bodydist x = [-10,80]
triggerall = statetype != A
triggerall = var(15) = 3 && var(49) = [0,1]
triggerall = var(25) = 0
triggerall = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger1 = (p2stateno = 5100 || p2stateno = 5612)
trigger2 = enemynear,gethitvar(fall.yvel) = -6
trigger2 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 17
trigger3 = enemynear,gethitvar(fall.yvel) = -5
trigger3 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 11
trigger4 = enemynear,gethitvar(fall.yvel) = -4.5
trigger4 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 9
trigger5 = enemynear,gethitvar(fall.yvel) = -3.5
trigger5 = (p2stateno = 5101 || p2stateno = 5613) && enemynear,time <= 2

;-------------------------< アドリブコンボ >-------------------------
;鬼焼き クラシック 強
[State -1, Oniyaki H]
type = changestate
value = 2000+((var(1) := 1)*0)
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
triggerall = var(15) = 0 || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]
trigger2 = var(11) = 1

;鬼焼き ネスツ 強
[State -1, Oniyaki H]
type = changestate
value = 1000+((var(1) := 1)*0)
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
triggerall = (var(15) = [1,2]) || (var(15) = 3 && var(49) = 2)
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

;奈落落とし
[State -1, Naraku Otoshi]
type = changestate
value = 320
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*25
triggerall = statetype = A
triggerall = (var(15) = [0,2]) || (var(15) = 3 && (var(49) = 0 || var(49) = 2 || var(49) = 3))
trigger1 = stateno = 105

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
triggerall = (var(58) = [0,249]) || numhelper(1610) || numtarget(1122)
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
triggerall = (p2dist x+enemynear,const(size.ground.back)) = [120,140]
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

;空中強キック 小J 京-2
[State -1, Air Hard Kick]
type = changestate
value = 640
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*30
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2bodydist x = [-10,50+(10*vel x)]
triggerall = vel x > 0
triggerall = sysvar(2) = 1
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
triggerall = (var(15) = 3 && var(49) = 2)
trigger1 = vel y >= 0
trigger1 = pos y <= -44
trigger2 = vel y < 0
trigger2 = pos y <= -45

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
triggerall = p2bodydist x = [-10,50+(10*vel x)]
triggerall = vel x > 0
triggerall = sysvar(2) = 1
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
triggerall = (var(15) = [0,2]) || (var(15) = 3 && (var(49) = 1 || var(49) = 2 || var(49) = 3))
trigger1 = vel y >= 0
trigger1 = pos y <= -44
trigger2 = vel y < 0
trigger2 = pos y <= -45

;空中強キック 京-2 小J
[State -1, Air Hard Kick]
type = changestate
value = 640
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*30
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2bodydist x = [-10,50+(10*vel x)]
triggerall = vel x > 0
triggerall = sysvar(2) = 1
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
triggerall = var(15) = 3 && var(49) = 2
trigger1 = vel y >= 0
trigger1 = pos y <= -44
trigger2 = vel y < 0
trigger2 = pos y <= -45

;空中強キック めくり
[State -1, Naraku Otoshi]
type = changestate
value = 640
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*75
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2dist x = [-20+(10*vel x),10+(10*vel x)]
triggerall = vel x > 0
triggerall = sysvar(1) >= 1
triggerall = sysvar(2) = 0
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
triggerall = (var(15) = 3 && var(49) = 2)
trigger1 = vel y < 0
trigger1 = pos y <= -75

;空中弱パンチ めくり
[State -1, Air Light Kick]
type = changestate
value = 601
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*75
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2dist x = [-25+(6*vel x),5+(6*vel x)]
triggerall = vel x > 0
triggerall = sysvar(1) >= 1
triggerall = sysvar(2) = 0
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
triggerall = (var(15) = 3 && (var(49) = [0,2]))
trigger1 = vel y > 0
trigger1 = pos y <= -78

;空中弱キック めくり
[State -1, Air Light Kick]
type = changestate
value = 635
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*75
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2dist x = [-10+(6*vel x),5+(6*vel x)]
triggerall = vel x > 0
triggerall = sysvar(1) >= 1
triggerall = sysvar(2) = 0
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
triggerall = (var(15) = [0,2]) || (var(15) = 3 && (var(49) = 0 || var(49) = 2 || var(49) = 3))
trigger1 = vel y < 0
trigger1 = pos y <= -78

;奈落落とし めくり
[State -1, Naraku Otoshi]
type = changestate
value = 320
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*75
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2dist x = [-20+(7*vel x),10+(7*vel x)]
triggerall = vel x > 0
triggerall = sysvar(1) >= 1
triggerall = sysvar(2) = 0
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
triggerall = (var(15) = [0,2]) || (var(15) = 3 && (var(49) = 0 || var(49) = 2 || var(49) = 3))
trigger1 = vel y < 0
trigger1 = pos y <= -78

;奈落落とし
[State -1, Naraku Otoshi]
type = changestate
value = 320
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*75
triggerall = var(58) = [500,999]
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2bodydist x = [-10+(7*vel x),30+(7*vel x)]
triggerall = vel x > 0
triggerall = sysvar(1) >= 1
triggerall = sysvar(2) = 0
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
triggerall = (var(15) = [0,2]) || (var(15) = 3 && (var(49) = 0 || var(49) = 2 || var(49) = 3))
trigger1 = vel y >= 0
trigger1 = pos y = [-77,-60]

;空中強キック 京-2 通常J
[State -1, Air Hard Kick]
type = changestate
value = 640
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*75
triggerall = var(58) = [0,499]
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2bodydist x = [-10+(10*vel x),50+(10*vel x)]
triggerall = vel x > 0
triggerall = sysvar(1) >= 1
triggerall = sysvar(2) = 0
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
triggerall = var(15) = 3 && var(49) = 2
trigger1 = vel y >= 0
trigger1 = pos y = [-77,-60]

;空中強キック 通常J
[State -1, Air Hard Kick]
type = changestate
value = 645
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*75
triggerall = var(58) = [0,499]
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2bodydist x = [-10+(10*vel x),50+(10*vel x)]
triggerall = vel x > 0
triggerall = sysvar(1) >= 1
triggerall = sysvar(2) = 0
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
triggerall = (var(15) = [0,2]) || (var(15) = 3 && (var(49) = 0 || var(49) = 1 || var(49) = 3))
trigger1 = vel y >= 0
trigger1 = pos y = [-77,-60]

;バックジャンプ
[State -3, Jump]
type = changestate
value = 40+((var(56) := (-1-random%2))*(var(57) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != [5710,5715]
triggerall = p2bodydist x = [90,130]
triggerall = statetype != A
triggerall = helper(10000+facing*-1),fvar(39) > 180
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 2))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;空中R,E,Dキック 低空
[State -1, Air Hard Kick]
type = changestate
value = 1430+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*10
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2bodydist x = [90,120]
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 2))
trigger1 = pos y = [-40,-20]

;空中R,E,Dキック 高空
[State -1, Air Hard Kick]
type = changestate
value = 1430+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(59)*10
triggerall = p2statetype = S || p2statetype = C || p2stateno = 5120
triggerall = p2bodydist x = [120,140]
triggerall = statetype = A
triggerall = ctrl || stateno = [120,139]
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 2))
trigger1 = pos y = [-80,-60]

;-------------------------< 空対空 >-------------------------
;空中弱パンチ オリジナル、KUSANAGI
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
triggerall = p2bodydist x = [-10,30+(vel x*6)+(enemynear,vel x*6)]
triggerall = p2bodydist y = [-60,60]
triggerall = statetype = A && vel x != 0
triggerall = (var(15) = [0,2]) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = [120,139]

;空中弱キック 京-2
[State -3, Air Light Panch]
type = changestate
value = 630
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(53)*50
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,30+(vel x*6)+(enemynear,vel x*6)]
triggerall = p2bodydist y = [-60,60]
triggerall = statetype = A && vel x != 0
triggerall = var(15) = 3 && var(49) = 2
trigger1 = ctrl || stateno = [120,139]

;空中強パンチ クローン、京-1
[State -3, Air Light Panch]
type = changestate
value = 615
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(53)*50
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,30+(vel x*6)+(enemynear,vel x*6)]
triggerall = p2bodydist y = [-60,60]
triggerall = statetype = A && vel x != 0
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = [120,139]

;-------------------------< 地対空 >-------------------------

;鬼焼き クラシック 強
[State -1, Oniyaki H]
type = changestate
value = 2000+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*30
triggerall = var(58) = [0,399]
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,55+(enemynear,vel x*6)]
triggerall = p2bodydist y = [-80,-20]
triggerall = enemynear,vel y > 0
triggerall = p2dist y >= -60 || p2bodydist x >= (enemynear,vel x*6)
triggerall = statetype != A
triggerall = var(15) = 0 || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;鬼焼き ネスツ 強
[State -1, Oniyaki H]
type = changestate
value = 1000+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*30
triggerall = var(58) = [0,399]
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,55+(enemynear,vel x*6)]
triggerall = p2bodydist y = [-80,-20]
triggerall = enemynear,vel y > 0
triggerall = p2dist y >= -60 || p2bodydist x >= (enemynear,vel x*6)
triggerall = statetype != A
triggerall = (var(15) = [1,2]) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;朧車 クローン
[State -1, Oboroguruma]
type = changestate
value = 2800+((var(1) := (random < 500))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*30
triggerall = var(58) = [0,399]
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,80+(enemynear,vel x*10)]
triggerall = p2bodydist y = [-120,-40]
;triggerall = enemynear,vel y > 0
triggerall = p2dist y >= -60 || p2bodydist x >= (enemynear,vel x*6)
triggerall = statetype != A
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 1))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;EX鬼焼き クラシック
[State -1, Oniyaki H]
type = changestate
value = 1050
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*30
triggerall = var(58) = [400,549]
triggerall = power >= 1000
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,55+(enemynear,vel x*6)]
triggerall = p2bodydist y = [-80,-20]
triggerall = enemynear,vel y > 0
triggerall = statetype != A
triggerall = var(15) = 0
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;EX鬼焼き ネスツ
[State -1, Oniyaki H]
type = changestate
value = 2050
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*30
triggerall = var(58) = [400,549]
triggerall = power >= 1000
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,55+(enemynear,vel x*6)]
triggerall = p2bodydist y = [-80,-20]
triggerall = enemynear,vel y > 0
triggerall = statetype != A
triggerall = (var(15) = [1,2])
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;EX鬼焼き クローン
[State -1, Oniyaki]
type = changestate
value = 1070
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*30
triggerall = var(58) = [400,549]
triggerall = power >= 1000
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10,55+(enemynear,vel x*6)]
triggerall = p2bodydist y = [-80,-20]
triggerall = enemynear,vel y > 0
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 2) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;無式
[State -1, Mushiki]
type = changestate
value = 3300
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random <= var(53)*30
triggerall = var(58) = [550,699]
triggerall = power >= 1000
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [50+(enemynear,vel x*9),80+(enemynear,vel x*9)]
triggerall = p2bodydist y = [-90,-60]
triggerall = enemynear,vel y > 0
triggerall = statetype != A
triggerall = power >= 1000 || fvar(2)
triggerall = var(15) = 0 || (var(15) = 1 && var(49) = 1) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;しゃがみ強パンチ(クローン)
[State -1, Crouch Hard Panch]
type = changestate
value = 411
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(58) = [700,999]
triggerall = random <= var(53)*30
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10+(enemynear,vel x*8),30+(enemynear,vel x*8)]
triggerall = p2bodydist y = [-95,-20]
triggerall = statetype != A
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 1))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;しゃがみ強パンチ
[State -1, Crouch Hard Panch]
type = changestate
value = 410
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = var(58) = [700,999]
triggerall = random <= var(53)*30
triggerall = p2movetype != H
triggerall = p2statetype = A
triggerall = p2bodydist x = [-10+(enemynear,vel x*8),30+(enemynear,vel x*8)]
triggerall = p2bodydist y = [-105,-20]
triggerall = statetype != A
triggerall = (var(15) = [0,2]) || (var(15) = 3 && (var(49) = 2 || var(49) = 3))
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
triggerall = prevstateno != 5120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [-10,30]
triggerall = statetype != A
triggerall = (var(15) = [0,2]) || (var(15) = 3 && (var(49) = 1 || var(49) = 3))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;近距離強パンチ(京-2)
[State -1, Stand Hard Panch]
type = changestate
value = 216
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*30
triggerall = var(58) = [0,499]
triggerall = prevstateno != 5120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [-10,30]
triggerall = statetype != A
triggerall = var(15) = 3 && var(49) = 2
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;近距離強パンチ(クローン)
[State -1, Stand Hard Panch]
type = changestate
value = 216
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*30
triggerall = var(58) = [0,249]
triggerall = prevstateno != 5120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [-10,30]
triggerall = statetype != A
triggerall = var(15) = 3 && var(49) = 0
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;しゃがみ強パンチ(クローン)
[State -1, Stand Hard Panch]
type = changestate
value = 216
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*30
triggerall = var(58) = [250,499]
triggerall = prevstateno != 5120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [-10,35]
triggerall = statetype != A
triggerall = var(15) = 3 && var(49) = 0
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;しゃがみ弱キック
[State -1, Crouch Light Kick]
type = changestate
value = ifelse(p2bodydist x >= 15,215,430)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*30
triggerall = var(58) = [500,999]
triggerall = prevstateno != 5120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [-10,30]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;--- 中距離 ---
;しゃがみ弱キック
[State -1, Crouch Light Kick]
type = changestate
value = 430
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*25
triggerall = var(58) = [0,749]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [30,55]
triggerall = statetype != A
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;弱キック 京-1
[State -1, Stand Light Kick]
type = changestate
value = 236
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*25
triggerall = var(58) = [750,999]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [30,55]
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 1)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;八拾八式
[State -1, 88 Shiki]
type = changestate
value = 310
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*25
triggerall = var(58) = [750,999]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [30,60]
triggerall = statetype != A
triggerall = (var(15) = [0,1]) || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;--- 遠距離 ---
;荒咬み
[State -1, Aragemi]
type = changestate
value = 1100
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*2
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [60,120]
triggerall = statetype != A
triggerall = (var(15) = 0 && var(49) = 1) || var(15) = 1 || (var(15) = 2 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;遠距離弱キック
[State -1, Stand Light Kick]
type = changestate
value = 230
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = var(58) = [0,499]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [50,85]
triggerall = statetype != A
triggerall = (var(15) = [0,2]) || (var(15) = 3 && (var(49) = 0 || var(49) = 2 || var(49) = 3))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;遠距離強キック
[State -1, Stand Hard Kick]
type = changestate
value = 240
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = var(58) = [500,749]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [50,70]
triggerall = statetype != A
triggerall = (var(15) = [0,2]) || (var(15) = 3 && (var(49) = 1 || var(49) = 3))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;しゃがみ強キック クローン
[State -1, Crouch Hard Kick]
type = changestate
value = 441
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = var(58) = [500,999]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [50,70]
triggerall = statetype != A
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 2))
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
triggerall = var(58) = [750,999]
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [50,70]
triggerall = statetype != A
triggerall = (var(15) = [0,2]) || (var(15) = 3 && (var(49) = 1 || var(49) = 3))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;遠距離強パンチ クローン
[State -1, Stand Hard Panch]
type = changestate
value = 211
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*3
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [75,85]
triggerall = statetype != A
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 1))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;穂振
[State -1, Honofuri]
type = changestate
value = 350
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*3
triggerall = !inguarddist && p2movetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = p2bodydist x = [100,110]
triggerall = statetype != A
triggerall = (var(15) = 3 && (var(49) = 0 || var(49) = 1))
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 遠距離 >-------------------------
;闇払い
[State -1, Yamibarai]
type = changestate
value = 1600+((var(1) := (random < 500))*0)
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
triggerall = (var(15) = 0 && var(49) = 0) || var(15) = 2 || (var(15) = 3 && var(49) = 3)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;闇払い クローン
[State -1, Yamibarai]
type = changestate
value = 2600+((var(1) := (random < 500))*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = p2bodydist x >= 180
triggerall = !inguarddist
triggerall = p2movetype != H || !numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = var(15) = 3 && (var(49) = 0 || var(49) = 1)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;R.E.D.KicK 弱 (クローン)
[State -1, R.E.D.Kick]
type = changestate
value = 2400+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*5
triggerall = p2bodydist x = [75,90]
triggerall = !inguarddist
triggerall = p2movetype != H || !numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;R.E.D.KicK 強 (クローン)
[State -1, R.E.D.Kick]
type = changestate
value = 2400+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*10
triggerall = p2bodydist x = [115,135]
triggerall = !inguarddist
triggerall = p2movetype != H || !numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = statetype != A
triggerall = (var(15) = 3 && var(49) = 0) || (var(15) = 3 && var(49) = 2)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;R.E.D.KicK 弱
[State -1, R.E.D.Kick]
type = changestate
value = 1400+((var(1) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*10
triggerall = p2bodydist x = [115,135]
triggerall = !inguarddist
triggerall = p2movetype != H || !numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = statetype != A
triggerall = (var(15) = 0 && var(49) = 1) || var(15) = 1 || (var(15) = 2 && var(49) = 0)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;R.E.D.KicK 強
[State -1, R.E.D.Kick]
type = changestate
value = 1400+((var(1) := 1)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(59)*10
triggerall = p2bodydist x = [170,190]
triggerall = !inguarddist
triggerall = p2movetype != H || !numtarget
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = statetype != A
triggerall = (var(15) = 0 && var(49) = 1) || var(15) = 1 || (var(15) = 2 && var(49) = 0)
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

;-------------------------< 投げ >-------------------------
;EX琴月
[State -3, EX Kototsuki]
type = changestate
value = 1750
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = sysfvar(2) = 0
triggerall = roundstate = 2
triggerall = random < var(53)*20
triggerall = (var(15) = 0)
triggerall = p2bodydist x = [10,45]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno != 40
triggerall = fvar(7) = 0
triggerall = statetype != A
triggerall = power >= 1000
triggerall = var(15) = 0
trigger1 = ctrl || stateno = 30 || stateno = 100 || stateno = [120,139]

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

;-------------------------< 最終決戦神技 >-------------------------
[State -2, ChangeState]
type = ChangeState
triggerall = !ishelper
triggerall = numpartner
triggerall = var(17) = 25 || var(17) = 125
triggerall = partner,stateno = 4620 && partner,time >= 18
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || (stateno = [120,139])
trigger2 = var(11) = 1
value = 4601

;-------------------------< ガード >-------------------------
;リセット
[State -1, AutoGuard]
type = changestate
value = ifelse(prevstateno = 5120,130+(p2statetype = C),133)+((var(56) := 0)*0)
triggerall = !ishelper
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl && (stateno != [130,133])
trigger2 = stateno = [130,131]
trigger2 = time > 0
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
triggerall = random < (var(52)**2)*10 || prevstateno = 5120
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
triggerall = random < (var(52)**2)*10 || prevstateno = 5120
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


[State -2, Clipboard]
type = null;powerset
trigger1 = 1
value = 0
