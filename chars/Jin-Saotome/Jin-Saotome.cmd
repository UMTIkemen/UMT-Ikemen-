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
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "ブロディアバルカン"
command = ~D, B, z+x

[Command]
name = "ブロディアバルカン"
command = ~D, B, y+z

[Command]
name = "ブロディアバルカン"
command = ~D, B, x+y



[Command]
name = "プラネットスマッシャー"
command = ~F, D, DF, z+x

[Command]
name = "プラネットスマッシャー"
command = ~F, D, DF, y+z

[Command]
name = "プラネットスマッシャー"
command = ~F, D, DF, x+y



[Command]
name = "サオトメサイクロン"
command = ~D, F, c+a

[Command]
name = "サオトメサイクロン"
command = ~D, F, b+c

[Command]
name = "サオトメサイクロン"
command = ~D, F, a+b


[Command]
name = "ブロディアパンチ"
command = ~D, F, z+x

[Command]
name = "ブロディアパンチ"
command = ~D, F, y+z

[Command]
name = "ブロディアパンチ"
command = ~D, F, x+y



;-| Special Motions |------------------------------------------------------
[Command]
name = "サオトメフルメタルチャージ"
command = ~F, D, DF, c

[Command]
name = "サオトメフルメタルチャージ"
command = ~F, D, DF, b

[Command]
name = "サオトメフルメタルチャージ"
command = ~F, D, DF, a


[Command]
name = "サオトメガトリング"
command = ~D, DF, F, z

[Command]
name = "サオトメガトリング"
command = ~D, DF, F, y

[Command]
name = "サオトメガトリング"
command = ~D, DF, F, x


[Command]
name = "サオトメファイヤー"
command = ~D, DF, F, s


[Command]
name = "サオトメクラッシュ"
command = ~F, D, B, c

[Command]
name = "サオトメクラッシュ"
command = ~F, D, B, b

[Command]
name = "サオトメクラッシュ"
command = ~F, D, B, a


[Command]
name = "サオトメダイナマイト"
command = ~27$D, U, z

[Command]
name = "サオトメダイナマイト"
command = ~27$D, U, y

[Command]
name = "サオトメダイナマイト"
command = ~27$D, U, x


[Command]
name = "サオトメタイフーン"
command = ~27$B, F, z

[Command]
name = "サオトメタイフーン"
command = ~27$B, F, y

[Command]
name = "サオトメタイフーン"
command = ~27$B, F, x




[Command]
name = "明鏡止水"
command = s



[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b



[Command]
name = "ダブルジャンプ"
command = U
time = 1

[Command]
name = "ダブルジャンプ"
command = UF
time = 1

[Command]
name = "ダブルジャンプ"
command = BU
time = 1



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10


[Command]
name = "アドガ"
command = x+y
time = 1

[Command]
name = "アドガ"
command = x+a
time = 1

[Command]
name = "アドガ"
command = a+y
time = 1

[Command]
name = "XF"
command = z+c
time = 1


[Command]
name = "回避"
command = x+a
time = 1

[Command]
name = "投げ"
command = y+b
time = 1

[Command]
name = "緊急回避後"
command = /$B,x+a
time = 1

[Command]
name = "緊急回避後"
command = /$B,z
time = 1

[Command]
name = "ふっ飛ばし"
command = c
time = 1

[Command]
name = "ふっ飛ばし"
command = y+b
time = 1

[Command]
name = "ヒートブロウ"
command = a+y
time = 1


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "D"
command = D
time = 1


;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1



; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================
;ハイパーコンボ
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;明鏡止水
[State -1, Stand Light Punch]
type = ChangeState
value = 2600
triggerall = var(25) = 0;command = "明鏡止水"
triggerall = life <= 200
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 251
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 450

trigger11= stateno = 1000
trigger12= stateno = 1003
trigger13= stateno = 1005
trigger14= stateno = 1100
trigger15= stateno = 1300
trigger16= stateno = 1301
trigger17= stateno = 1302
trigger18= stateno = 1303
trigger19= stateno = 1305
trigger20= stateno = 1400
trigger21= stateno = 1405


;---------------------------------------------------------------------------
;ブロディアバルカン
[State -1, Stand Light Punch]
type = ChangeState
value = 2500
triggerall = command = "ブロディアバルカン"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 251
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 450

trigger11= stateno = 1000
trigger12= stateno = 1003
trigger13= stateno = 1005
trigger14= stateno = 1100
trigger15= stateno = 1300
trigger16= stateno = 1301
trigger17= stateno = 1302
trigger18= stateno = 1303
trigger19= stateno = 1305
trigger20= stateno = 1400
trigger21= stateno = 1405

;---------------------------------------------------------------------------
;プラネットスマッシャー
[State -1, Stand Light Punch]
type = ChangeState
value = 2200
triggerall = command = "プラネットスマッシャー"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 251
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 450

trigger11= stateno = 1000
trigger12= stateno = 1003
trigger13= stateno = 1005
trigger14= stateno = 1100
trigger15= stateno = 1300
trigger16= stateno = 1301
trigger17= stateno = 1302
trigger18= stateno = 1303
trigger19= stateno = 1305
trigger20= stateno = 1400
trigger21= stateno = 1405

;---------------------------------------------------------------------------
;サオトメサイクロン
[State -1, Stand Light Punch]
type = ChangeState
value = 2100
triggerall = command = "サオトメサイクロン"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 251
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 450

trigger11= stateno = 1000
trigger12= stateno = 1003
trigger13= stateno = 1005
trigger14= stateno = 1100
trigger15= stateno = 1300
trigger16= stateno = 1301
trigger17= stateno = 1302
trigger18= stateno = 1303
trigger19= stateno = 1305
trigger20= stateno = 1400
trigger21= stateno = 1405

;---------------------------------------------------------------------------
;ブロディアパンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 2000
triggerall = command = "ブロディアパンチ"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 251
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 450

trigger11= stateno = 1000
trigger12= stateno = 1003
trigger13= stateno = 1005
trigger14= stateno = 1100
trigger15= stateno = 1300
trigger16= stateno = 1301
trigger17= stateno = 1302
trigger18= stateno = 1303
trigger19= stateno = 1305
trigger20= stateno = 1400
trigger21= stateno = 1405



;===========================================================================
;必殺技
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;サオトメフルメタルチャージ
[State -1, Stand Light Punch]
type = ChangeState
value = 1500
triggerall = command = "サオトメフルメタルチャージ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 251
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 450


;---------------------------------------------------------------------------
;サオトメガトリング
[State -1, Stand Light Punch]
type = ChangeState
value = 1400
triggerall = command = "サオトメガトリング"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 251
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 450


;---------------------------------------------------------------------------
;サオトメファイヤー
[State -1, Stand Light Punch]
type = ChangeState
value = 1300
triggerall = command = "サオトメファイヤー"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 251
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 450


;---------------------------------------------------------------------------
;サオトメクラッシュ
[State -1, Stand Light Punch]
type = ChangeState
value = 1200
triggerall = command = "サオトメクラッシュ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 251
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 450


;---------------------------------------------------------------------------
;サオトメダイナマイト
[State -1, Stand Light Punch]
type = ChangeState
value = 1100
triggerall = command = "サオトメダイナマイト"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 251
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 450
trigger11= stateno = 40


;---------------------------------------------------------------------------
;サオトメタイフーン
[State -1, Stand Light Punch]
type = ChangeState
value = 1000
triggerall = command = "サオトメタイフーン"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 251
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 450


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ガーキャン緊急回避・後
[State ga-kyannkawasiidou usiro]
type = ChangeState
value = 701
triggerall = command = "回避"
triggerall = command = "holdback"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;ガーキャン緊急回避・前
[State ga-kyannkawasiidou mae]
type = ChangeState
value = 700
triggerall = command = "回避"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;緊急回避・後
[State kawasiidou usiro]
type = ChangeState
value = 701
triggerall = command = "回避"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;緊急回避・前
[State kawasiidou mae]
type = ChangeState
value = 700
triggerall = command = "回避"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;攻撃避け
[State kawasiidou mae]
type = ChangeState
value = 710
triggerall = command = "回避"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダウン回避
[State daunkaihi]
type = ChangeState
value = 702
triggerall = var(9) >= 1
triggerall = alive
triggerall = pos y >= 0
trigger1 = stateno = 5050
trigger2 = stateno = 5071
trigger3 = stateno = 5100


;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100

;---------------------------------------------------------------------------
;後投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "投げ"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;前投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 801
triggerall = command = "投げ"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 802
triggerall = command = "投げ"
triggerall = statetype = A
trigger1 = stateno = 50
trigger1 = p2dist X < 56
trigger1 = p2statetype = A
trigger1 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
;立ち弱パンチ
[State tachijakupanchi]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち中パンチ
[State tachikyoupanchi]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;立ち強パンチ
[State tachikyoupanchi]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;立ち弱キック
[State tachijakukikku]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち中キック
[State ennkyoritachikyoukikku]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;立ち強キック
[State ennkyoritachikyoukikku]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State tachijakupanchi]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State tachijakupanchi]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State tachijakupanchi]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State shagamijakukikku]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ中キック
[State shagamikyoukikku]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;しゃがみ強キック
[State shagamikyoukikku]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;空中ドリル
[State -1, Jump Strong Kick]
type = ChangeState
value = 690
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = stateno = 50
trigger2 = ctrl = 1

trigger3 = stateno = 1305 && animelem = 6,>=0

trigger4 = stateno = 600 && movecontact && var(23) = 1
trigger5 = stateno = 610 && movecontact && var(23) = 1
trigger6 = stateno = 620 && movecontact && var(23) = 1
trigger7 = stateno = 630 && movecontact && var(23) = 1
trigger8 = stateno = 640 && movecontact && var(23) = 1


;---------------------------------------------------------------------------
;空中弱パンチ
[State kuuchuujakupanchi]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = stateno = 50
trigger2 = ctrl = 1

trigger3 = stateno = 1305 && animelem = 6,>=0
;---------------------------------------------------------------------------
;空中中パンチ
[State kuuchuukyoupanchi]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = stateno = 50
trigger2 = ctrl = 1

trigger3 = stateno = 1305 && animelem = 6,>=0

trigger4 = stateno = 600 && movecontact && var(23) = 1
trigger5 = stateno = 630 && movecontact && var(23) = 1
;---------------------------------------------------------------------------
;空中強パンチ
[State kuuchuukyoupanchi]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = statetype = A
trigger1 = stateno = 50
trigger2 = ctrl = 1

trigger3 = stateno = 1305 && animelem = 6,>=0

trigger4 = stateno = 600 && movecontact && var(23) = 1
trigger5 = stateno = 610 && movecontact && var(23) = 1
trigger6 = stateno = 630 && movecontact && var(23) = 1
trigger7 = stateno = 640 && movecontact && var(23) = 1
;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = stateno = 50
trigger2 = ctrl = 1

trigger3 = stateno = 1305 && animelem = 6,>=0

trigger4 = stateno = 600 && movecontact && var(23) = 1
;---------------------------------------------------------------------------
;空中中キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = stateno = 50
trigger2 = ctrl = 1

trigger3 = stateno = 1305 && animelem = 6,>=0

trigger4 = stateno = 600 && movecontact && var(23) = 1
trigger5 = stateno = 610 && movecontact && var(23) = 1
trigger6 = stateno = 630 && movecontact && var(23) = 1
;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
triggerall = statetype = A
trigger1 = stateno = 50
trigger2 = ctrl = 1

trigger3 = stateno = 1305 && animelem = 6,>=0

trigger4 = stateno = 600 && movecontact && var(23) = 1
trigger5 = stateno = 610 && movecontact && var(23) = 1
trigger6 = stateno = 620 && movecontact && var(23) = 1
trigger7 = stateno = 630 && movecontact && var(23) = 1
trigger8 = stateno = 640 && movecontact && var(23) = 1