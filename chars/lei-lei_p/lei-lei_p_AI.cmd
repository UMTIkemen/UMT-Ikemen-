
;==============================================================================
[Command]
name = "AI1"
command = U,D,B,F
time = 0
[Command]
name = "AI2"
command = U,D,U,D
time = 0
[Command]
name = "AI3"
command = U,F,B,D
time = 0
[Command]
name = "AI4"
command = x,x,x,x
time = 0
[Command]
name = "AI5"
command = y,y,y,y
time = 0
[Command]
name = "AI6"
command = z,z,z,z
time = 0
[Command]
name = "AI7"
command = x+y+z,x+y+z,x+y+z,x+y+z
time = 0
[Command]
name = "AI8"
command = a+b+c,a+b+c,a+b+c,a+b+c
time = 0
[Command]
name = "AI9"
command = y,a,B,B
time = 0
[Command]
name = "AI10"
command = c,U,B,B
time = 0
[Command]
name = "AI11"
command = x,z,x,z
time = 0
[Command]
name = "AI12"
command = y,z,y,z
time = 0
[Command]
name = "AI13"
command = z,y,z,x
time = 0
[Command]
name = "AI14"
command = a,a,a,a
time = 0
[Command]
name = "AI15"
command = b,b,b,b
time = 0
[Command]
name = "AI16"
command = c,c,c,c
time = 0
[Command]
name = "AI17"
command = U,x,U,x
time = 0
[Command]
name = "AI18"
command = D,x,D,x
time = 0
[Command]
name = "AI19"
command = B,x,B,x
time = 0
[Command]
name = "AI20"
command = F,x,F,x
time = 0
[Command]
name = "AI21"
command = a,b,c
time = 0
[Command]
name = "AI22"
command = b,c,a
time = 0
[Command]
name = "AI23"
command = c,a,b
time = 0
[Command]
name = "AI24"
command = b,a,c
time = 0
[Command]
name = "AI25"
command = c,b,a
time = 0
[Command]
name = "AI26"
command = x,y,z
time = 0
[Command]
name = "AI27"
command = y,z,x
time = 0
[Command]
name = "AI28"
command = z,x,y
time = 0
[Command]
name = "AI29"
command = x,z,y
time = 0
[Command]
name = "AI30"
command = y,x,z
time = 0

;------------------------------------------------------------------------------
[Command];天雷破P
name = "TenraihaP"
command = ~x, b, y, y, U
time = 50

[Command];天雷破P
name = "TenraihaP"
command = ~x, b, y, y, ~U
time = 50

[Command];天回傘S
name = "TenkaisanS"
command = ~F, D, DF, b
time = 20

[Command];天回傘P
name = "TenkaisanP"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command];天雷破S
name = "TenraihaS"
command = ~F, DF, D, DB, B, b
time = 30

[Command];来々球P
name = "RairaikyuP"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command];来々球S
name = "RairaikyuS"
command = ~D, DF, F, b
time = 20

;------------------------------------------------------------------------------

[Command];高放身
name = "Kouhoushin"
command = ~F, DF, D, DB, B, x+y
time = 20

[Command];放天撃
name = "Houtengeki"
command = ~B, DB, D, DF, F, x+y
time = 20

;------------------------------------------------------------------------------
[Command];地霊刀
name = "Jireitou"
command = ~B, DB, D, DF, F, y
time = 12

[Command];暗器砲
name = "Ankihou"
command = ~D, DF, F, x
time = 12

[Command];返響器
name = "Henkyouki"
command = ~D, DB, B, x
time = 12

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
[Command];メガクラッシュ/カウンタークラッシュ
name = "xyb"
command = x+y+b
time = 1

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

[Command];アイテム投げ1
name = "ItemThrow1"
command = /B, y+b
time = 3

[Command];アイテム投げ2
name = "ItemThrow2"
command = /D, y+b
time = 3

[Command];アイテム投げ3
name = "ItemThrow3"
command = y+b
time = 3

[Command];ガードクラッシュ前/ガードキャンセル
name = "FwdS"
command = /F, b
time = 3

[Command];ガードクラッシュ下
name = "DwnS"
command = /D, b
time = 3

[Command];ガードクラッシュカウンター
name = "BakS"
command = /B, b
time = 3

[Command];斜めP
name = "DFP"
command = /$DF, x
time = 3

[Command];斜めK
name = "DFK"
command = /$DF, y
time = 3

[Command];投げ
name = "TR"
command = x+y
time = 3

[Command];追い討ち1
name = "Oiuchi"
command = $U, x
time = 12

[Command];追い討ち2
name = "Oiuchi2"
command = $U, y
time = 12

[Command];ハイジャンプ
name = "HighJump"
command = $D, $U
time = 12

[Command]
name = "x+y"
command = x+y
time = 3

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
[Command]
name = "FC_x"
command = x,>~x
time = 3

[Command]
name = "FC_y"
command = y,>~y
time = 3

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

[command]
name = "up"
command = $U
time = 3

[command]
name = "down"
command = D
time = 3

[command]
name = "fwd"
command = F
time = 3

[command]
name = "back"
command = B
time = 3

[Command]
name = "flashx"
command = x,~x
time = 3

[Command]
name = "flashy"
command = y,~y
time = 3

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

[command]
name = "hld_x"
command = /x
time = 1

[command]
name = "hld_y"
command = /y
time = 1

[command]
name = "hld_z"
command = /z
time = 1

[command]
name = "hld_a"
command = /a
time = 1

[command]
name = "hld_b"
command = /b
time = 1

[command]
name = "hld_c"
command = /c
time = 1

[command]
name = "hld_start"
command = /start
time = 1

[Statedef -1]
;===========================================================================
[State -1, Activate AI]
type = VarSet
triggerall = var(59) = 0
triggerall = RoundState != 3
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
v = 59
value = 1

[State -1, AIRestart]
type = VarSet
triggerall = var(59) = 2
trigger1 = RoundState = 2 && alive = 1
v = 59
value = 1

;------------------------------------------------------------------------------
;ゲージのXY座標修正
;それぞれvalueに値を入れると表示位置がスライドします。
;初期設定は共に0。
;Gauge position Setting

[State -1, X];正で画面中央方向、負で画面端方向。
type = VarSet
triggerall = 1
trigger1 = RoundState != 3 && alive = 1
v = 32
value = 0

[State -1, Y];正で下方向、負で上方向。
type = VarSet
triggerall = 1
trigger1 = RoundState != 3 && alive = 1
v = 33
value = 0

;------------------------------------------------------------------------------
;はじめから持っているアイテム玉
;valueの値を1-バナナ、2-火、3-石、4-毒、5－爆弾、6-氷、7-雷、8-ランダム で変更します。
;Set starting ItemBall
;value = 1(Banana),2(Fire),3(Stone),4(Poison),5(Bomb),6(Ice),7(Tunder),8(Random)

[State -1, ItemSet]
type = VarSet
trigger1 = roundstate = 0 && roundno = 1
trigger1 = var(51) = 1 && var(40) = 0
v = 40
value = 7;8
persistent=0

[State -1, ItemRandomSet]
type = VarRandom
trigger1 = roundstate = 0 && roundno = 1
trigger1 = var(51) = 1 && var(40) = 8
v = 40
range = 1,7
persistent=0

;------------------------------------------------------------------------------
;コマンドアニメーションの表示/非表示
;ジェムゲージの上に表示されるコマンドアニメーションの表示スイッチ。
;Command Animation switch
;value = 1(on),0(off)

[State -1, CommandAnimation]
type = VarSet
trigger1 = 1
v = 18
value = 0
persistent=0

;==============================================================================
;フラッシュコンボの先行入力
[State -1, FlashComboP-3]
type = VarAdd
triggerall = var(59) = 0
triggerall = var(34) = 110 || var(34) = 120
triggerall = stateno = [500,580]
triggerall = command != "b"
trigger1 =  command = "x"
trigger2 =  command = "y"
v = 34
value = ifelse(command="x",1,2)
ignorehitpause = 1

[State -1, FlashComboP-2]
type = VarAdd
triggerall = var(59) = 0
triggerall = var(34) = 100
triggerall = stateno = [500,580]
triggerall = command != "b"
trigger1 = command = "x"
trigger2 = command = "y"
v = 34
value = ifelse(command="x",10,20)
ignorehitpause = 1

[State -1, FlashComboK-3]
type = VarAdd
triggerall = var(59) = 0
triggerall = var(34) = 210 || var(34) = 220
;triggerall = stateno = [500,580]
triggerall = stateno = 550 || (stateno = 570 && numhelper(100571) >= 1)
triggerall = command != "b"
trigger1 = command = "x"
trigger2 = command = "y"
v = 34
value = ifelse(command="x",1,2)
ignorehitpause = 1

[State -1, FlashComboK-2]
type = VarAdd
triggerall = var(59) = 0
triggerall = var(34) = 200
triggerall = stateno = [500,580]
triggerall = command != "b"
trigger1 = command = "x"
trigger2 = command = "y"
v = 34
value = ifelse(command="x",10,20)
ignorehitpause = 1

;AI
[State -1, FlashComboP-3]
type = VarAdd
triggerall = var(59) = 1
triggerall = var(34) = 110 || var(34) = 120
triggerall = stateno = [500,580]
trigger1 =  1
v = 34
value = ifelse(random<500,1,2)
ignorehitpause = 1

[State -1, FlashComboP-2]
type = VarAdd
triggerall = var(59) = 1
triggerall = var(34) = 100
triggerall = stateno = [500,580]
trigger1 = 1
v = 34
value = ifelse(random<500,10,20)
ignorehitpause = 1

[State -1, FlashComboK-3]
type = VarAdd
triggerall = var(59) = 1
triggerall = var(34) = 210 || var(34) = 220
;triggerall = stateno = [500,580]
triggerall = stateno = 550 || (stateno = 570 && numhelper(100571) >= 1)
trigger1 = 1
v = 34
value = ifelse(random<500,1,2)
ignorehitpause = 1

[State -1, FlashComboK-2]
type = VarAdd
triggerall = var(59) = 1
triggerall = var(34) = 200
triggerall = stateno = [500,580]
trigger1 = 1
v = 34
value = ifelse(random<500,10,20)
ignorehitpause = 1

;==============================================================================
;AI
;------------------------------------------------------------------------------
;ガードキャンセルアタック
[State -1, GCA]
type = ChangeState
value = 2600
triggerall = var(59) = 1 && Power >= 1000 && Alive
triggerall = statetype != A && roundstate = 2
triggerall = (P2bodydist X = [0,50]) && (p2bodydist Y = [-10,50]) && (stateno = [150,153])
trigger1 = random <= 49
trigger2 = BackEdgeBodyDist <= 15 && random <= 49

[State -1, Guard_s]
type = ChangeState
value = 120
triggerall = var(59) = 1 && Alive
triggerall = roundstate = 2 && ctrl
triggerall = stateno != [120,155]
triggerall = !(enemynear,HitDefAttr = SCA,AT)
triggerall = statetype != A || (statetype = A && sysvar(1) != 1)
triggerall = random <= 249
trigger1 = InGuardDist

;立ちP
[State -1, SP]
type = ChangeState
value = 220
triggerall = Var(59) = 1 && Alive
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype != L && !(enemynear, NumProj)
triggerall = (P2bodydist X = [0,71]) && (p2bodydist Y = [-10,50])
trigger1 = ctrl && random <= 149

;しゃがみP
[State -1, CP]
type = ChangeState
value = 240
triggerall = Var(59) = 1 && Alive
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype != L && p2statetype != A && !(enemynear, NumProj)
triggerall = (P2bodydist X = [0,45]) && (p2bodydist Y >= 0)
trigger1 = ctrl && random <= 149

;暗器砲
[State -1, Ankihou]
type = ChangeState
value = 1500
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L && enemynear,movetype != A
triggerall = (p2bodydist Y = [-75,50])
triggerall = ctrl || (stateno = 240 && movecontact)
trigger1 = (p2bodydist X = [60,230]) && random <= 44

;地霊刀
[State -1, Jireitou]
type = ChangeState
value = 1600
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L && enemynear,movetype != A && !(enemynear, NumProj)
triggerall = (p2bodydist Y = [-110,50])
triggerall = ctrl || (stateno = 240 && movecontact)
trigger1 = (p2bodydist X = [-8,8]) && var(46) < 2 && random <= 24
trigger2 = (p2bodydist X = [-60,60]) && var(46) = 2 && random <= 34
trigger3 = (p2bodydist X = [-100,100]) && var(46) > 2 && random <= 34

;返響器
[State -1, Henkyouki]
type = ChangeState
value = 1700
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2
triggerall = p2statetype != L && enemynear,movetype != A
triggerall = (p2bodydist Y = [-25,50])
triggerall = ctrl || (stateno = 240 && movecontact) || stateno = 104 || stateno = 106
trigger1 = (p2bodydist X = [40,60]) && var(46) < 2 && random <= 24
trigger2 = (p2bodydist X = [40,75]) && var(46) >= 2 && random <= 34
trigger3 = (enemynear, NumProj) && random <= 212

;浮かせ投げ
[State -1, Kouhoushin]
type = ChangeState
value = 1100
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L && p2statetype != A && p2movetype != H && (enemynear,movetype != A) && !(enemynear, NumProj)
triggerall = (p2bodydist X = [-5,37]) && (p2bodydist Y = 0)
trigger1 = ctrl && random <= 249
trigger2 = ctrl && backedgebodydist <30 && random <= 500

;チャージ投げ
[State -1, Houtengeki]
type = ChangeState
value = 1200
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L && p2statetype != A && p2movetype != H && (enemynear,movetype != A) && !(enemynear, NumProj)
triggerall = (p2bodydist X = [-5,44]) && (p2bodydist Y = 0)
trigger1 = ctrl && random <= 249

;地上投げ
[State -1, TR]
type = ChangeState
value = 800
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L && p2statetype != A && p2movetype != H && !(enemynear, NumProj)
triggerall = (p2bodydist X = [-5,25]) && (p2bodydist Y = 0)
trigger1 = ctrl && random <= 249

;空中投げ
[State -1, TR]
type = ChangeState
value = 900
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2 && statetype = A
triggerall = p2statetype = A && P2MoveType != H
triggerall = (p2bodydist X = [-5,24]) && (p2bodydist Y = [-10,10]) && !(enemynear, NumProj)
trigger1 = ctrl && random <= 249

;アイテム投げ1
[State -1, ItemThrow1]
type = ChangeState
value = 200
triggerall = Var(59) = 1 && Alive
triggerall = Var(40) >= 1
triggerall = roundstate = 2 && statetype != A
triggerall = (p2bodydist X = [68,250]) && (p2bodydist Y = [-50,0])
trigger1 = ctrl && random <= 24

;アイテム投げ2
[State -1, ItemThrow2]
type = ChangeState
value = 210
triggerall = Var(59) = 1 && Alive
triggerall = Var(40) >= 1
triggerall = roundstate = 2 && statetype != A
triggerall = (p2bodydist X = [0,70]) && (p2bodydist Y = [-100,0])
trigger1 = ctrl && random <= 24

;アイテム投げ3
[State -1, ItemThrow3]
type = ChangeState
value = 205
triggerall = Var(59) = 1 && Alive
triggerall = Var(40) >= 1
triggerall = roundstate = 2 && statetype != A
triggerall = (p2bodydist X = [50,150]) && (p2bodydist Y >= 0)
trigger1 = ctrl && random <= 24

;前P
[State -1, FP]
type = ChangeState
value = 290
triggerall = Var(59) = 1 && Alive
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype != L
triggerall = (P2bodydist X = [50,75]) && (P2bodydist Y = [-50,50])
trigger1 =  ctrl && random <= 149 && p2statetype != A
trigger2 =  ctrl && random <= 249 && p2statetype = A

;前K
[State -1, FK]
type = ChangeState
value = 295
triggerall = Var(59) = 1 && Alive
triggerall = Var(40) >= 1
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L && p2statetype != A
triggerall = (p2bodydist X = [55,110]) && (p2bodydist Y >= 0)
trigger1 =  ctrl && random <= 149

;斜めP
[State -1, DFP]
type = ChangeState
value = 280
triggerall = Var(59) = 1 && Alive
triggerall = Var(40) >= 1
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L && p2statetype != A
triggerall = (p2bodydist X = [17,35]) && (p2bodydist Y >= 0)
trigger1 = ctrl && random <= 149

;斜めK
[State -1, DFK]
type = ChangeState
value = 250
triggerall = Var(59) = 1 && Alive
triggerall = Var(40) >= 1
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L && p2statetype != A
triggerall = (p2bodydist X = [52,105]) && (p2bodydist Y >= 0)
trigger1 = ctrl && random <= 149 && p2statetype = C
trigger2 = ctrl && random <= 249 && p2statetype = S

;立ちK
[State -1, SK]
type = ChangeState
value = 230
triggerall = Var(59) = 1 && Alive
triggerall = Var(40) >= 1
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L && p2statetype != A
triggerall = (p2bodydist X = [32,65]) && (p2bodydist Y >= 0)
trigger1 = ctrl && random <= 149

;ダッシュP
[State -1, DushP]
type = ChangeState
value = 260
triggerall = Var(59) = 1 && Alive
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype != L
triggerall = stateno = 100 && anim = 102
triggerall = (p2bodydist X = [40,70]) && (P2bodydist Y = [-20,50])
trigger1 = random <= 49 && var(29) < 500
trigger2 = random <= 249 && var(29) >= 500

;ダッシュK
[State -1, DushK]
type = ChangeState
value = 270
triggerall = Var(59) = 1 && Alive
triggerall = statetype != A && roundstate = 2
triggerall = p2statetype != L
triggerall = stateno = 100 && anim = 102
triggerall = (p2bodydist X = [50,90]) && (P2bodydist Y = [-20,50])
trigger1 = random <= 49 && p2statetype = C
trigger2 = random <= 59 && p2statetype = S

;------------------------------------------------------------------------------
;ジャンプ
[State -1, jump]
type = ChangeState
value = 39
triggerall = Var(59) = 1 && Alive
triggerall = (StateType = S || StateType = C) && roundstate = 2
triggerall = p2StateType != L
trigger1 = ctrl && random <= 159 && P2bodydist X < 50 && (enemynear,HitDefAttr = SC,AT) && (enemynear,movetype = A)
trigger2 = ctrl && random <= 29 && p2movetype != A && p2statetype = A && P2bodydist X <= 60 && P2bodydist Y <= -50

;ハイジャンプ
[State -1, HighJump]
type = ChangeState
value = 116
triggerall = Var(59) = 1 && Alive
triggerall = (StateType = S || StateType = C) && roundstate = 2
triggerall = p2StateType != L
;triggerall = FrontEdgeBodyDist > 170
triggerall = ctrl
trigger1 = random <= 69 && (P2bodydist X = [100,140])
trigger2 = enemynear,numproj && random <= 29

;ダッシュ/ラン
[State -1, Dash]
type = ChangeState
value = 100
triggerall = Var(59) = 1 && Alive
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear,movetype != A) && !(enemynear, NumProj)
triggerall = stateno != [100,105]
triggerall = stateno != [120,155]
triggerall = prevstateno != 100
triggerall = random <= 249
trigger1 = ctrl && (P2bodydist X = [200,250]) && p2statetype != L
trigger2 = ctrl && P2bodydist X >= 100 && p2statetype = L
trigger3 = ctrl && P2bodydist X >= 150 && p2movetype = I && p2stateno != 0

;消えるダッシュ
[State -1, InvDash]
type = ChangeState
value = 103
triggerall = Var(59) = 1 && Alive
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear,movetype != A) && !(enemynear, NumProj)
triggerall = stateno != [100,105]
triggerall = stateno != [120,155]
triggerall = prevstateno != 100
triggerall = random <= 149
trigger1 = ctrl && (P2bodydist X = [200,250]) && p2statetype != L
trigger2 = ctrl && P2bodydist X >= 100 && p2statetype = L
trigger3 = ctrl && P2bodydist X >= 150 && p2movetype = I && p2stateno != 0

;バックダッシュ
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = Var(59) = 1 && Alive
triggerall = statetype != A && roundstate = 2 && !(enemynear, NumProj)
triggerall = BackEdgeBodyDist >= 50
triggerall = stateno != [100,105]
trigger1 = ctrl && random <= 2 && p2StateType != L && P2bodydist X >= 20
trigger2 = ctrl && random <= 149 && p2StateType = L && P2bodydist X <= 10

;空中前ダッシュ
[State -1, AirDash]
type = ChangeState
value = 104
triggerall = Var(59) = 1 && Alive
triggerall = statetype = A && roundstate = 2
triggerall = (enemynear,movetype != A) && !(enemynear, NumProj)
triggerall = stateno != [100,105]
triggerall = stateno != [120,155]
triggerall = pos Y < 10
triggerall = ctrl || ((stateno = 104 || stateno = 106) && anim = 48)
triggerall = random <= 249
trigger1 = (P2bodydist X = [200,250]) && p2statetype != L
trigger2 = P2bodydist X >= 100 && p2statetype = L
trigger3 = P2bodydist X >= 150 && p2movetype = I && p2stateno != 0

;空中バックダッシュ
[State -1, AirBackDash]
type = ChangeState
value = 106
triggerall = Var(59) = 1 && Alive
triggerall = statetype = A && roundstate = 2 && !(enemynear, NumProj)
triggerall = BackEdgeBodyDist >= 50
triggerall = pos Y < 10
triggerall = ctrl || ((stateno = 104 || stateno = 106) && anim = 48)
trigger1 = random <= 2 && p2StateType != L && P2bodydist X >= 20
trigger2 = random <= 149 && p2StateType = L && P2bodydist X <= 10

;------------------------------------------------------------------------------
;天回傘
[State -1, Tenkaisan]
type = ChangeState
value = 2100
triggerall = Var(59) = 1 && Alive
triggerall = power >= 1000
triggerall = roundstate = 2 && statetype != A && enemynear,movetype != A && !(enemynear, NumProj)
triggerall = (P2bodydist X = [0,90]) && (P2bodydist Y = [-10,50]) && p2statetype != L
trigger1 =  ctrl && (random = [40,49])
trigger2 = stateno = 240 && movehit && (random = [39,59])

;天雷破
[State -1, Tenraiha]
type = ChangeState
value = 2000
triggerall = Var(59) = 1 && Alive
triggerall = power >= 1000
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L && (P2bodydist Y = [-20,50])
trigger1 =  ctrl && (random = [60,69])
trigger2 =  stateno = 240 && (random = [60,89])

;来々球
[State -1, Rairaikyu]
type = ChangeState
value = 2200
triggerall = Var(59) = 1 && Alive
triggerall = power >= 1000
triggerall = roundstate = 2 && statetype != A && enemynear,movetype != A && !(enemynear, NumProj)
triggerall = (P2bodydist X = [0,150]) && (P2bodydist Y = [-20,50]) && p2statetype != L
trigger1 =  ctrl && (random = [50,59])
trigger2 = stateno = 240 && movehit && (random = [50,79])

;------------------------------------------------------------------------------
;空中P
[State -1, JP]
type = ChangeState
value = 300
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2 && statetype = A && p2statetype != L
triggerall = (P2bodydist X = [-5,45]) && (p2bodydist Y = [-20,80])
trigger1 = (ctrl || stateno = 104 || stateno = 106) && random <= 349

;空中K
[State -1, JK]
type = ChangeState
value = 310
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2 && statetype = A && p2statetype != L
triggerall = (P2bodydist X = [-5,35]) && (p2bodydist Y = [-20,80])
trigger1 = (ctrl || stateno = 104 || stateno = 106) && random <= 349

;追い討ち
[State -1, DownAttack]
type = ChangeState
value = 610
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2 && statetype != A && p2stateno != 5120
triggerall = !(enemynear, NumProj)
triggerall = (p2stateno = 5100 || p2stateno = 5101 || p2stateno = 5110) || (p2statetype = L && enemy,pos Y >= 0)
trigger1 = ctrl && random <= 14

;------------------------------------------------------------------------------
;ガードクラッシュ前
[State -1, GC3]
type = ChangeState
value = 420
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2 && statetype != A && (enemynear,movetype != A) && !(enemynear, NumProj)
triggerall = (p2bodydist X = [0,95]) && (p2bodydist Y = [-10,50])
trigger1 = ctrl && random <= 4
trigger2 = ctrl && random <= 8 && p2statetype = L

;ガードクラッシュ下
[State -1, GC2]
type = ChangeState
value = 410
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2 && statetype != A && (enemynear,movetype != A) && !(enemynear, NumProj)
triggerall = (p2bodydist X = [0,80]) && (p2bodydist Y = [-30,50])
trigger1 = ctrl && random <= 4
trigger2 = ctrl && random <= 8 && p2statetype = L

;ガードクラッシュ
[State -1, GC1]
type = ChangeState
value = 400
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2 && statetype != A && (enemynear,movetype != A) && !(enemynear, NumProj)
triggerall = (p2bodydist X = [0,63]) && (p2bodydist Y >= 0)
trigger1 = ctrl && random <= 4
trigger2 = ctrl && random <= 8 && p2statetype = L

;------------------------------------------------------------------------------
;カウンタークラッシュ
[State -1, CounterClash]
type = ChangeState
value = 2500
triggerall = Var(59) = 1 && alive && power >= 1000 && var(51) = 1
triggerall = statetype = A && life < 300
triggerall = stateno = 5020 || stateno = 5030 || stateno = 5035 || stateno = 5040 || stateno = 5050
trigger1 = ctrl && random <= 14

;メガクラッシュ
[State -1, MegaClash]
type = ChangeState
value = 2400
triggerall = Var(59) = 1 && alive && power >= 1000 && var(51) = 1
triggerall = statetype = A && life < 200
triggerall = (p2bodydist X = [0,50]) && (p2bodydist Y = [-20,50]) && p2statetype != L
triggerall = random <= 14
trigger1 = ctrl || (stateno = 240 && movecontact)

;ガードクラッシュカウンター
[State -1, GCC]
type = ChangeState
value = 430
triggerall = Var(59) = 1 && Alive
triggerall = Var(49) = 1 && (p2stateno = [410,430])
triggerall = roundstate = 2 && statetype != A
triggerall = (p2bodydist X = [0,54]) && (p2bodydist Y = [-20,50])
trigger1 = ctrl && random <= 214

;移動起き上がり
[State -1, MoveRise]
type = ChangeState
value = 118
triggerall = Var(59) = 1 && Alive
triggerall = roundstate = 2
triggerall = Var(23) < 500
triggerall = stateno = 5120
triggerall = AnimElemTime(2) < 0
trigger1 = random <= 249































;------------------------------------------------------------------------------
;ダッシュ/ラン
[State -1, Dash]
type = ChangeState
value = 100
triggerall = Var(59) = 0
trigger1 = command != "hld_b"
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;消えるダッシュ
[State -1, InvDash]
type = ChangeState
value = 103
triggerall = Var(59) = 0
trigger1 = command = "hld_b"
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;空中前ダッシュ
[State -1, AirDash]
type = ChangeState
value = 104
triggerall = Var(59) = 0
triggerall = pos Y < 10
triggerall = command = "FF"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 104 || stateno = 106
trigger2 = anim = 48

;バックダッシュ
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = Var(59) = 0
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"

;空中バックダッシュ
[State -1, AirBackDash]
type = ChangeState
value = 106
triggerall = Var(59) = 0
triggerall = pos Y < 10
triggerall = command = "BB"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 104 || stateno = 106
trigger2 = anim = 48

;ハイジャンプ
[State -1, HighJump]
type = ChangeState
value = 116
triggerall = Var(59) = 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "HighJump"

;追い討ち
[State -1, DownAttack]
type = ChangeState
value = 610
triggerall = Var(59) = 0
triggerall = statetype != A
triggerall = roundstate = 2 && statetype != A && p2stateno != 5120
triggerall = (p2stateno = 5100 || p2stateno = 5101 || p2stateno = 5110) || (p2statetype = L && enemy,pos Y >= 0)
triggerall = ctrl
trigger1 = command = "Oiuchi"
trigger2 = command = "Oiuchi2"
trigger3 = command = "x" && command = "holdup"
trigger4 = command = "y" && command = "holdup"
trigger5 = command = "x" && command = "up"
trigger6 = command = "y" && command = "up"


;------------------------------------------------------------------------------
;カウンタークラッシュ
[State -1, CounterClash]
type = ChangeState
value = 2500
triggerall = Var(59) = 0 && var(51) = 1
triggerall = alive
triggerall = power >= 1000
triggerall = statetype = A
triggerall = command = "xyb"
trigger1 = stateno = 5020 || stateno = 5030 || stateno = 5035 || stateno = 5040 || stateno = 5050

;メガクラッシュ
[State -1, MegaClash]
type = ChangeState
value = 2400
triggerall = Var(59) = 0 && var(51) = 1
triggerall = alive
triggerall = power >= 1000
triggerall = command = "xyb"
trigger1 = ctrl
trigger2 = stateno = 240 && movecontact

;浮かせ投げ
[State -1, Kouhoushin]
type = ChangeState
value = 1100
triggerall = Var(59) = 0
triggerall = statetype != A
triggerall = command = "Kouhoushin"
trigger1 = ctrl

;チャージ投げ
[State -1, Houtengeki]
type = ChangeState
value = 1200
triggerall = Var(59) = 0
triggerall = statetype != A
triggerall = command = "Houtengeki"
trigger1 = ctrl

;地上投げ
[State -1, TR]
type = ChangeState
value = 800
triggerall = Var(59) = 0
triggerall = statetype = S
triggerall = command = "TR"
trigger1 = ctrl

;空中投げ
[State -1, TR]
type = ChangeState
value = 900
triggerall = Var(59) = 0
triggerall = statetype = A
triggerall = command = "TR"
trigger1 = ctrl

;アイテム投げ1
[State -1, ItemThrow1]
type = ChangeState
value = 200
triggerall = Var(59) = 0
triggerall = Var(40) >= 1
triggerall = command = "ItemThrow1"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;アイテム投げ2
[State -1, ItemThrow2]
type = ChangeState
value = 210
triggerall = Var(59) = 0
triggerall = Var(40) >= 1
triggerall = command = "ItemThrow2"
triggerall = statetype != A
trigger1 = ctrl

;アイテム投げ3
[State -1, ItemThrow3]
type = ChangeState
value = 205
triggerall = Var(59) = 0
triggerall = Var(40) >= 1
triggerall = command = "ItemThrow3"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;ガードキャンセルアタック
[State -1, GCA]
type = ChangeState
value = 2600
triggerall = Var(59) = 0
triggerall = stateno = [130,153]
triggerall = statetype != A
trigger1 = command = "FwdS"

;天雷破P
[State -1, TenraihaP]
type = ChangeState
value = 2000
triggerall = Var(59) = 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl || (stateno = 240 && movecontact) || (stateno = [220,230])
trigger1 = command = "TenraihaP"
ignorehitpause = 0

;天回傘S
[State -1, TenkaisanS]
type = ChangeState
value = 2100
triggerall = Var(59) = 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl || (stateno = 240 && movecontact)
trigger1 = command = "TenkaisanS"

;天回傘P
[State -1, TenkaisanP]
type = ChangeState
value = 2100
triggerall = Var(59) = 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl || (stateno = 240 && movecontact)
trigger1 = command = "TenkaisanP"

;天雷破S
[State -1, TenraihaS]
type = ChangeState
value = 2000
triggerall = Var(59) = 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl || (stateno = 240 && movecontact)
trigger1 = command = "TenraihaS"

;来々球P
[State -1, RairaikyuP]
type = ChangeState
value = 2200
triggerall = Var(59) = 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl || (stateno = 240 && movecontact)
trigger1 = command = "RairaikyuP"

;来々球S
[State -1, RairaikyuS]
type = ChangeState
value = 2200
triggerall = Var(59) = 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl || (stateno = 240 && movecontact)
trigger1 = command = "RairaikyuS"

;------------------------------------------------------------------------------
;地霊刀
[State -1, Jireitou]
type = ChangeState
value = 1600
triggerall = Var(59) = 0
triggerall = command = "Jireitou"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 240 && movecontact

;暗器砲
[State -1, Ankihou]
type = ChangeState
value = 1500
triggerall = Var(59) = 0
triggerall = command = "Ankihou"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 240 && movecontact

;返響器
[State -1, Henkyouki]
type = ChangeState
value = 1700
triggerall = Var(59) = 0
triggerall = command = "Henkyouki"
trigger1 = ctrl
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 104 || stateno = 106

;------------------------------------------------------------------------------
;前P
[State -1, FP]
type = ChangeState
value = 290
triggerall = Var(59) = 0
triggerall = command = "holdfwd"

triggerall = command != "holddown"
triggerall = command = "x"
trigger1 = statetype != A
trigger1 = ctrl

;前K
[State -1, FK]
type = ChangeState
value = 295
triggerall = Var(59) = 0
triggerall = command = "holdfwd"

triggerall = command != "holddown"
triggerall = command = "y"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;ガードクラッシュカウンター
[State -1, GCC]
type = ChangeState
value = 430
triggerall = Var(59) = 0
triggerall = command = "BakS"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;ガードクラッシュ前
[State -1, GC3]
type = ChangeState
value = 420
triggerall = Var(59) = 0
triggerall = command = "FwdS"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;ガードクラッシュ下
[State -1, GC2]
type = ChangeState
value = 410
triggerall = Var(59) = 0
triggerall = command = "DwnS"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl

;ガードクラッシュ
[State -1, GC1]
type = ChangeState
value = 400
triggerall = Var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;立ちP
[State -1, SP]
type = ChangeState
value = 220
triggerall = Var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;立ちK
[State -1, SK]
type = ChangeState
value = 230
triggerall = Var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;しゃがみP
[State -1, CP]
type = ChangeState
value = 240
triggerall = Var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl

;しゃがみK
[State -1, CK]
type = ChangeState
value = 250
triggerall = Var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------
;ダッシュP
[State -1, DushP]
type = ChangeState
value = 260
triggerall = Var(59) = 0
triggerall = command = "x"
triggerall = stateno = 100
triggerall = anim = 102
trigger1 = statetype != A

;ダッシュK
[State -1, DushK]
type = ChangeState
value = 270
triggerall = Var(59) = 0
triggerall = command = "y"
triggerall = stateno = 100
triggerall = anim = 102
trigger1 = statetype != A

;------------------------------------------------------------------------------
;斜めP
[State -1, DFP]
type = ChangeState
value = 280
triggerall = Var(59) = 0
triggerall = command = "DFP"
trigger1 = statetype != A
trigger1 = ctrl

;斜めK
[State -1, DFK]
type = ChangeState
value = 250
triggerall = Var(59) = 0
triggerall = command = "DFK"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;空中P
[State -1, JP]
type = ChangeState
value = 300
triggerall = Var(59) = 0
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 104 || stateno = 106

;空中K
[State -1, JK]
type = ChangeState
value = 310
triggerall = Var(59) = 0
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 104 || stateno = 106


;------------------------------------------------------------------------------
;移動起き上がり
[State -1, MoveRise]
type = ChangeState
value = 118
triggerall = Var(59) = 0
triggerall = Alive
triggerall = Var(23) < 500
triggerall = stateno = 5120
triggerall = AnimElemTime(2) < 0
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"

;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = Var(59) = 0
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl


;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[State -1, DebugY]
type = null;VarSet
trigger1 = roundstate = 0 && roundno = 1
trigger1 = var(51) = 1 && var(46) = 0
v = 46
value = 3
persistent=0

[State -1, DebugB]
type = null;VarSet
trigger1 = roundstate = 0 && roundno = 1
trigger1 = var(51) = 1 && var(47) = 0
v = 47
value = 3
persistent=0

[State -1, DebugR]
type = null;VarSet
trigger1 = roundstate = 0 && roundno = 1
trigger1 = var(51) = 1 && var(48) = 0
v = 48
value = 3
persistent=0

[State -1, Check]
type = null;ChangeState
value = 580
triggerall = Var(59) = 0
trigger1 = command = "a"
trigger1 = ctrl
