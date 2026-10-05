; カンフーマンの入力コマンド定義ファイルです。
; コマンドの入力キーを設定するパートと、技を実行するための条件を設定するパートに分かれています。
;------------------------------------------------------------------------------
;==============================================================================
; 入力キーの設定パート
;==============================================================================
;------------------------------------------------------------------------------
;■設定はこの形が決まり事です。詳細は以下参照。
;
;[Command]
;name = "***"
;command = ###
;time = &&&
;
;■コマンドの名前：「name = "***"」という風に入れます。***に文字を入れてください。
; 　　　　　　　　アルファベットは大文字と小文字でも区別されます。日本語も可能です。
;
;■指定方法：「command = ###」という風に入れます。
;　　　　　　###に下記のキーを組み合わせ入力するコマンドを設定してください。
;
;　　方向キー：　B, DB, D, DF, F, UF, U, UB　（全て大文字で）
;　　　　　　　　B=Back（後）・D=Down（下）・F=Forward（前）・U=Up（上）になっています。
;
;　　ボタン　：　a, b, c, x, y, z, s 　　　　（全て小文字で）
; 
;　※特殊文字
;
;　　スラッシュ（ / ）：ボタンを押しっぱなしにする場合はこれを入れます。
;　　　　　　　　例：command = /F　　　（前キーを押したままにする）
;　　　　　　　　　　command = /B,y　　（後キーを押したままＹボタンを入力）
;
;　　チルダ　　（ ~ ）：ボタンが離される事を認識させる場合はこれを入れます。
;　　　　　　　　例：command = ~c　　　（Ｃボタンを離す）
;　　　　　　　　　　command = ~DB,DF,x（斜め後下を離して斜め前下=>Ｘボタンの順番に入力）
;
;　　　　　　　　※数値を追加する事で、ボタンを離すまでの時間、いわゆる『溜め』を設定出来ます。
;　　　　　　　　例：command = ~20z　　（Ｚボタンを押したままにし、２０フレーム後に離す）
;　　　　　　　　　　command = ~40B,F,b（後キーを押したままにし、４０フレーム後に離して前キー=>Ｂボタンの順番に入力）
;
;　　ドル　　　（ $ ）：複数の方向キー要素を入力出来るようにする場合はこれを入れます。
;　　　　　　　　例：command = $U　　　（上・斜め前上・斜め後上のどれからで始めても良い）
;　　　　　　　　　　command = $DF 　　（下・斜め前下・前のどれからで始めても良い）
;
;　　プラス　　（ + ）：ボタンを同時押しする場合はこれを入れます。
;　　　　　　　　例：command = a+b 　　（ＡボタンとＢボタンを同時押しします）
;　　　　　　　　　　command = x+y+z 　（ＸボタンとＹボタンとＺボタンを同時押しします）
;　　　　　　　　　　command = F+c 　　（前キーとＣボタンを同時押しします）
;
;　※これらの特殊文字は、組み合わせて使用する事も可能です。
;　　　　　　　　例：command = ~30$D,a+b
;　　　　　　　　　　　　　（下要素を３０フレーム溜めて離した後にＡボタンとＢボタンを同時押しします）
;
;■入力コマンド受付時間：「time = &&&」という風に入れます。オプションなので省略可能。
;　　　　　　　　　　　　&&&にコマンドを入力出来る時間を入れてください。時間はフレーム数です（１フレーム＝1/60秒）。
;　　　　　　　　例：time = 24　（入力受付時間を２４フレーム（0.4秒）に設定）
;
; 後は実際に登録されているものを参照してください。
;==============================================================================
;------------------------------------------------------------------------------
;【コマンド定義部】
; AI スイッチ用コマンド
[Command]
Name    = "AI_00"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_01"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_02"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_03"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_04"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_05"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_06"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_07"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_08"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_09"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_10"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_11"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_12"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_13"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_14"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_15"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_16"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_17"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_18"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_19"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_20"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_21"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_22"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_23"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_24"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_25"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_26"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_27"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_28"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_29"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_30"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_31"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_32"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_33"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_34"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_35"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_36"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_37"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_38"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_39"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_40"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_41"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_42"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_43"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_44"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_45"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_46"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_47"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_48"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_49"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_50"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_51"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_52"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_53"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_54"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_55"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_56"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_57"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_58"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_59"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_60"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0


;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 14

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 14

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

[Command]
name = "hold_z"
command = /$z
time = 1

;■コマンド

;■メタ宣言
[Command]
name = "meta"
command = z
time = 1

[Command]
name = "meta"
command = a+b+c
time = 6

;■完全なる検死
[Command]
name = "kenshi"
command = $F,$B,$D,$F,c
time = 30

[Command]
name = "kenshi"
command = $F,$B,$D,/$F,c
time = 30

[Command]
name = "kenshi"
command = s
time = 5


;■飛翔する推理
[Command]
name = "hisyou_1"
command = $B,$D,$DB,a
time = 30

[Command]
name = "hisyou_2"
command = $B,$D,$DB,b
time = 30

[Command]
name = "hisyou_3"
command = $B,$D,$DB,c
time = 30

[Command]
name = "hisyou_4"
command = $B,$D,$DB,a+b
time = 30

;■チーズを２つにするには
[Command]
name = "cheese2_1"
command = $D,$DB,$B,a
time = 30

[Command]
name = "cheese2_2"
command = $D,$DB,$B,b
time = 30

[Command]
name = "cheese2_3"
command = $D,$DB,$B,c
time = 30

[Command]
name = "cheese2_4"
command = $D,$DB,$B,a+b
time = 30


;■灰色の脳細胞
[Command]
name = "haiiro_1"
command = D,D,a
time = 16

;[Command]
;name = "haiiro_1"
;command = D,/D,a
;time = 16

[Command]
name = "haiiro_2"
command = D,D,b
time = 16

;[Command]
;name = "haiiro_2"
;command = D,/D,b
;time = 16

[Command]
name = "haiiro_3"
command = D,D,c
time = 16

;[Command]
;name = "haiiro_3"
;command = D,/D,c
;time = 16

[Command]
name = "haiiro_4"
command = D,D,a+b
time = 16

;[Command]
;name = "haiiro_4"
;command = D,/D,a+b
;time = 16


;■仮説の提示
[Command]
name = "kasetsu_1"
command = ~$B,F,a
time = 18

[Command]
name = "kasetsu_1"
command = ~$B,/F,a
time = 18

[Command]
name = "kasetsu_2"
command = ~$B,F,b
time = 18

[Command]
name = "kasetsu_2"
command = ~$B,/F,b
time = 18

[Command]
name = "kasetsu_3"
command = ~$B,F,c
time = 18

[Command]
name = "kasetsu_3"
command = ~$B,/F,c
time = 18

[Command]
name = "kasetsu_4"
command = ~$B,F,a+b
time = 18

[Command]
name = "kasetsu_4"
command = ~$B,/F,a+b
time = 18

;■山羊ども、ぶっ放せ！
[Command]
name = "P2_1"
command = D,F,D,F,c
time = 45

[Command]
name = "P2_1"
command = /D,/F,/D,/F,c
time = 45


;■セブンズ・エクスパンション
[Command]
name = "P4_1"
command =  F,D,B,a+b
time = 40

[Command]
name = "P4_1"
command =  F,D,B,b+c
time = 40

[Command]
name = "P4_1"
command =  F,D,B,c+a
time = 40

;■セブンズ・エクスプロージョン
[Command]
name = "P33_1"
command = F,D,B,x
time = 60

[Command]
name = "P33_1"
command = $F,D,/$B,x
time = 60

;■ドラノール_キルシュアイゼン
[Command]
name = "P22_1"
command = $B,D,F,x
time = 30

[Command]
name = "P22_1"
command = $B,D,/$FD,x
time = 30

;■ドラノール_ヘイリッヒ・トーデスルタイル
[Command]
name = "P33_1"
command = $F,D,B,x
time = 30

[Command]
name = "P33_1"
command = $F,D,/$DB,x
time = 30



;■地上投げ
[Command]
name = "nage"
command = b+c
time = 4




;■オヤシロアッパー
[Command]
name = "apper"
command = D,B,a
time = 18

[Command]
name = "apper"
command = D,B,b
time = 18

[Command]
name = "apper"
command = D,B,c
time = 18

;■オヤシロフィスティバル
[Command]
name = "P1_1"
command = D,B,D,B,a
time = 30

[Command]
name = "P1_1"
command = D,B,D,B,b
time = 30

[Command]
name = "P1_1"
command = D,B,D,B,c
time = 30

■ドラノール、ノーマルタッチ
[Command]
name = "dora_1"
command = $F,x
time = 8

[Command]
name = "dora_1"
command = /$F,x
time = 2

[Command]
name = "dora_1"
command = $B,x
time = 8

[Command]
name = "dora_1"
command = /$B,x
time = 2

[Command]
name = "dora_1"
command = x
time = 1

■トラップサトコ、タライ落とし
[Command]
name = "satoko_2"
command = $B,x
time = 8

[Command]
name = "satoko_2"
command = /$B,x
time = 2

■ドラノール、赤鍵と青鍵
[Command]
name = "dora_3"
command = B,F,x
time = 20

[Command]
name = "dora_3"
command = B,/F,x
time = 20

;------------------------------------------------------------------------------
;==============================================================================
; 技を実行するための条件の設定（ステートエントリーパート）
;==============================================================================
;------------------------------------------------------------------------------
; ここから下は「どのコマンドでどの番号のステートをどういう条件で出せるか」を設定する場所です。
;（ステートに関してはCNSファイルを参照）
; 
;■設定は基本的にこの形になります。
;
; [State -1, Label]                  ;「Label」の部分はただのラベルです。何でも良いです。それ以外は変更不可。
; type = ChangeState                 ;「別のステートに変更する」という意味のステートコントローラ
; value = new_state_number           ;出したい技のステート番号を入れます
; trigger1 = command = command_name  ;入力キー設定パートで登録したコマンドの名前をどれか入れます
; . . .  (any additional triggers)   ;trigger（条件を指定するトリガー）を追加出来ます
;
;■triggerに使える基本的な条件（通常は「トリガー」と呼ばれています）
;
;   - StateType    - キャラクターがどの状態の時にそのステートを出せるかどうかを決められます。
;                    S=立った状態・C=座った状態・A=空中にいる状態・L=横に倒れた状態、の４つが決まり事です。
;                    CNSのStatedefの下にある「Type = *」の項目が状態の意味なので、これをこのトリガーで判断します。
;
;   - Ctrl         - コントロールが可能か不可能かどちらかの時にそのステートを出せるかどうかを決められます。
;                    0=コントロール不可能状態・1=コントロール可能状態、ですが通常は Ctrl = 1 ( = 1 省略可能)が基本。
;
;   - StateNo      - 別の番号のステートから出せる事が可能になります。
;                    これを応用してスーパーキャンセルも可能です。
;
;   - MoveContact  - 物理攻撃が相手に当たった時（攻撃がヒットした時、もしくはガードされた時）に、
;                    そのステートを出せるかどうかを決められます。２種類４パターンあります。
;                    MoveContact or MoveContact = 1  （攻撃が当たった時）
;                    !MoveContact or MoveContact = 0 （攻撃が当たってない時）
;                    これを応用してスーパーキャンセルも可能です。
;
;　※上の４つ以外にもありますが、他のトリガーはM.U.G.E.N本体docsフォルダの中の
;　　CNSドキュメンテーションを参照してください。
;
;■ステートエントリーの順序
;
; ChangeStateの登録の順番は重要です。上に来れば来るほどコマンド入力の優先度が高くなります。
;
; 引用になりますが、例えば「波動拳コマンドのChangeState（↓＼→＋パンチ）」を
;「昇龍拳コマンドのChangeState（→↓＼＋パンチ）」よりも上に登録した場合、
; ゲーム中では昇龍拳を出そうとしても波動拳が誤って暴発しやすくなってしまいます。
; 防止するためには、「波動拳のChangeState」を「昇龍拳のChangeState」よりも下に登録しなくてはなりません。
;「レバーを前に入れて出す特殊技」と「投げ技」の関係なども同様です。
;
; 順番をよく考えて登録しましょう。
;
;■[Statedef -1]とは？
;
; この部分はCNSプログラミングの拡張部分の、常時監視ステートになります。
; どのいかなる状態でも設定した記述が常に有効になるステートです（CNSの[Statedef -2]と似たような部分）。
;
; 必要な記述と行なので、絶対に消さないでください。
;
;==============================================================================
;------------------------------------------------------------------------------
; 次の行は絶対に消さないでください。必須の項目です。

[Statedef -1]

;------------------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 =stateno != 101

;;空中ダッシュ
;[State -1, Dash]
;type = ChangeState
;value = 102
;trigger1 =var(2)<3
;trigger1 = command = "FF"
;trigger1 = statetype = A
;trigger1 = ctrl

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = command = "x" && command = "holdback"
;trigger2 = statetype != A
;trigger2 = ctrl


;;空中バックステップ
;[State -1, Dash]
;type = ChangeState
;value = 107
;trigger1 =var(2)<3
;trigger1 = command = "BB"
;trigger1 = statetype = A
;trigger1 = ctrl

;■空中ジャンプ制御（開始）■
[State -1, Air Jump];手操作側のジャンプ
Type = ChangeState
Value = 45
TriggerAll = Var(59)=0 ;AIフラグ無し
TriggerAll = StateType = A && Ctrl && Pos Y < -1*Const(Movement.AirJump.Height);前提条件
TriggerAll =(Var(3)&1073741823)< 1 ;ジャンプ回数制限
TriggerAll =(Var(3)&1073741824)= 0 ;上レバー制限
Trigger1 = Command = "holdup"

[State -1, Air Jump];ジャンプ攻撃キャンセル用
Type = ChangeState
Value = 45
TriggerAll = Var(59)=0 ;AIフラグ無し
TriggerAll = StateType = A && Pos Y < -1*Const(Movement.AirJump.Height);前提条件
TriggerAll = Var(3)=0
TriggerAll = Command = "holdup"
trigger1 = stateno = 600 && MoveContact
trigger2 = stateno = 610 && MoveContact
trigger3 = stateno = 620 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact


[State -1, Air Jump Not Holdup];一度レバーを上以外にしなければいけない。
Type = Null
Trigger1 = Command = "holdup"
Trigger1 = 1|| Var(3):= (Var(3)|1073741824)
Trigger2 = StateType = A
Trigger2 = Command != "holdup"
Trigger2 = 1|| Var(3):=((Var(3)|1073741824)-1073741824)

[State -1, Air Jump Num Reset];回数制限リセット
Type = Null
Trigger1 = StateType != A
Trigger1 = 1|| Var(3):= (Var(3)&1073741824);リセット
;■空中ジャンプ制御（終わり）■






;■爆ぜろッ、役立たずの塔ッ！！
[State -1, 爆ぜろッ、役立たずの塔ッ！！ ]
type = ChangeState
value = 2800
triggerall= var(59)=0
triggerall =var(19)=1;メタ世界展開時
triggerall = life <= lifemax*5.0/10.0;現在ライフが半分以下
triggerall = command = "kenshi"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 260 && MoveContact
trigger9 = stateno = 270 && MoveContact
trigger10 = stateno = 400 && MoveContact
trigger11 = stateno = 410 && MoveContact
trigger12 = stateno = 420 && MoveContact

;■完全なる検死
[State -1, 完全なる検死 ]
type = ChangeState
value = 2400
triggerall= var(59)=0
triggerall =var(19)=1;メタ世界展開時
triggerall = command = "kenshi"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact
trigger6 = stateno = 640 && MoveContact

;■全てを呑み込む無慈悲なるリヴァイアサン
[State -1, 全てを呑み込む無慈悲なるリヴァイアサン]
type = ChangeState
value = 4400
triggerall= var(59)=0
triggerall = command = "P33_1"
triggerall = var(28) = 720;タッチゲージが条件満たしている
triggerall = var(58) >= 300;パートナーゲージ3以上
Triggerall = NumHelper(365) =0;ベルンがいないこと
Triggerall = var(57) = 2;パートナーがベルン
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 400 && MoveContact
trigger6 = stateno = 410 && MoveContact
trigger7 = stateno = 420 && MoveContact
trigger8 = stateno = 600 && MoveContact
trigger9 = stateno = 610 && MoveContact
trigger10 = stateno = 620 && MoveContact
trigger11 = stateno = 605 && MoveContact

;■ドラノール_ヘイリッヒ・トーデスルタイル
[State -1, ヘイリッヒ・トーデスルタイル]
type = ChangeState
value = 3400
triggerall= var(59)=0
triggerall = command = "P33_1"
triggerall = var(28) = 720;タッチゲージが条件満たしている
triggerall = var(58) >= 300;パートナーゲージ3以上
Triggerall = NumHelper(365) =0;ドラノールがいないこと
Triggerall = var(57) = 1;パートナーがドラノール
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 260 && MoveContact
trigger9 = stateno = 270 && MoveContact
trigger10 = stateno = 400 && MoveContact
trigger11 = stateno = 410 && MoveContact
trigger12 = stateno = 420 && MoveContact

;■ドラノール_キルシュアイゼン
[State -1, ドラノール_キルシュアイゼン]
type = ChangeState
value = 3200
triggerall= var(59)=0
triggerall = command = "P22_1"
triggerall = var(28) = 720;タッチゲージが条件満たしている
triggerall = var(58) >= 200;パートナーゲージ2以上
Triggerall = NumHelper(365) =0;ドラノールがいないこと
Triggerall = var(57) = 1;パートナーがドラノール
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 260 && MoveContact
trigger9 = stateno = 270 && MoveContact
trigger10 = stateno = 400 && MoveContact
trigger11 = stateno = 410 && MoveContact
trigger12 = stateno = 420 && MoveContact


;■全てを穿つ無慈悲なるミステリ
[State -1, 全てを穿つ無慈悲なるミステリ]
type = ChangeState
value = 4300
triggerall= var(59)=0
triggerall = command = "P22_1"
triggerall = var(28) = 720;タッチゲージが条件満たしている
triggerall = var(58) >= 200;パートナーゲージ2以上
Triggerall = NumHelper(365) =0;ベルンがいないこと
Triggerall = var(57) = 2;パートナーがベルン
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 400 && MoveContact
trigger6 = stateno = 410 && MoveContact
trigger7 = stateno = 420 && MoveContact
trigger8 = stateno = 600 && MoveContact
trigger9 = stateno = 610 && MoveContact
trigger10 = stateno = 620 && MoveContact
trigger11 = stateno = 605 && MoveContact

;■山羊ども、ぶっ放せ！
[State -1, 山羊ども、ぶっ放せ！]
type = ChangeState
value = 2700
triggerall= var(59)=0
triggerall = power >= 2000
triggerall = command = "P2_1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 260 && MoveContact
trigger9 = stateno = 270 && MoveContact
trigger10 = stateno = 400 && MoveContact
trigger11 = stateno = 410 && MoveContact
trigger12 = stateno = 420 && MoveContact

;■メタ宣言
[State -1, メタ宣言 ]
type = ChangeState
value = 2900
triggerall= var(59)=0
triggerall = statetype != A
triggerall = var(17) = 1
triggerall = var(19) = 0
triggerall = fvar(0) = 0
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "meta"
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 260 && MoveContact
trigger9 = stateno = 270 && MoveContact
trigger10 = stateno = 400 && MoveContact
trigger11 = stateno = 410 && MoveContact
trigger12 = stateno = 420 && MoveContact

;■仮説の提示_SP
[State -1, 仮説の提示_SP]
type = ChangeState
value = 2030
triggerall= var(59)=0
triggerall = command = "kasetsu_4"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 260 && MoveContact
trigger9 = stateno = 270 && MoveContact
trigger10 = stateno = 400 && MoveContact
trigger11 = stateno = 410 && MoveContact
trigger12 = stateno = 420 && MoveContact

;■仮説の提示_弱
[State -1, 仮説の提示_弱]
type = ChangeState
value = 2000
triggerall= var(59)=0
triggerall = command = "kasetsu_1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 260 && MoveContact
trigger9 = stateno = 270 && MoveContact
trigger10 = stateno = 400 && MoveContact
trigger11 = stateno = 410 && MoveContact
trigger12 = stateno = 420 && MoveContact

;■仮説の提示_中
[State -1, 仮説の提示_中]
type = ChangeState
value = 2010
triggerall= var(59)=0
triggerall = command = "kasetsu_2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 260 && MoveContact
trigger9 = stateno = 270 && MoveContact
trigger10 = stateno = 400 && MoveContact
trigger11 = stateno = 410 && MoveContact
trigger12 = stateno = 420 && MoveContact

;■仮説の提示_強
[State -1, 仮説の提示_強]
type = ChangeState
value = 2020
triggerall= var(59)=0
triggerall = command = "kasetsu_3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 260 && MoveContact
trigger9 = stateno = 270 && MoveContact
trigger10 = stateno = 400 && MoveContact
trigger11 = stateno = 410 && MoveContact
trigger12 = stateno = 420 && MoveContact


;■チーズを２つにするには_SP
[State -1, チーズを２つにするには_SP ]
type = ChangeState
value = 2130
triggerall= var(59)=0
triggerall = command = "cheese2_4"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact
trigger6 = stateno = 640 && MoveContact

;■チーズを２つにするには_弱
[State -1, チーズを２つにするには_弱 ]
type = ChangeState
value = 2100
triggerall= var(59)=0
triggerall = command = "cheese2_1"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact
trigger6 = stateno = 640 && MoveContact

;■チーズを２つにするには_中
[State -1, チーズを２つにするには_中 ]
type = ChangeState
value = 2110
triggerall= var(59)=0
triggerall = command = "cheese2_2"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact
trigger6 = stateno = 640 && MoveContact

;■チーズを２つにするには_強
[State -1, チーズを２つにするには_強 ]
type = ChangeState
value = 2120
triggerall= var(59)=0
triggerall = command = "cheese2_3"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact
trigger6 = stateno = 640 && MoveContact

;■チーズを４つにするには_SP
[State -1, チーズを４つにするには_SP ]
type = ChangeState
value = 2180
triggerall= var(59)=0
triggerall = command = "recovery";コマンドa+b
triggerall = statetype != A
trigger1 = prevstateno =2130
trigger1 = stateno =2140
trigger1 = animelemtime(3)>=1 && animelemtime(4)<1

;■チーズを４つにするには_弱
[State -1, チーズを４つにするには_弱 ]
type = ChangeState
value = 2150
triggerall= var(59)=0
triggerall = command = "a"
triggerall = statetype != A
trigger1 = stateno =2140
trigger1 = animelemtime(3)>=1 && animelemtime(4)<1

;■チーズを４つにするには_中
[State -1, チーズを４つにするには_中 ]
type = ChangeState
value = 2160
triggerall= var(59)=0
triggerall = command = "b"
triggerall = statetype != A
trigger1 = stateno =2140
trigger1 = animelemtime(3)>=1 && animelemtime(4)<1

;■チーズを４つにするには_強
[State -1, チーズを４つにするには_強 ]
type = ChangeState
value = 2170
triggerall= var(59)=0
triggerall = command = "c"
triggerall = statetype != A
trigger1 = stateno =2140
trigger1 = animelemtime(3)>=1 && animelemtime(4)<1

;■灰色の脳細胞_SP
[State -1, 灰色の脳細胞_SP]
type = ChangeState
value = 1930
triggerall= var(59)=0
triggerall = power >= 1000
triggerall = command = "haiiro_4"

triggerall = statetype != A
trigger1 = ctrl

;■灰色の脳細胞_弱
[State -1, 灰色の脳細胞_弱]
type = ChangeState
value = 1900
triggerall= var(59)=0
triggerall = command = "haiiro_1"
triggerall = statetype != A
trigger1 = ctrl

;■灰色の脳細胞_中
[State -1, 灰色の脳細胞_中]
type = ChangeState
value = 1910
triggerall= var(59)=0
triggerall = command = "haiiro_2"
triggerall = statetype != A
trigger1 = ctrl

;■灰色の脳細胞_強
[State -1, 灰色の脳細胞_強]
type = ChangeState
value = 1920
triggerall= var(59)=0
triggerall = command = "haiiro_3"
triggerall = statetype != A
trigger1 = ctrl

;■飛翔する推理_SP
[State -1, 飛翔する推理_SP ]
type = ChangeState
value = 2360
triggerall= var(59)=0
triggerall = command = "hisyou_4"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 260 && MoveContact
trigger9 = stateno = 270 && MoveContact
trigger10 = stateno = 400 && MoveContact
trigger11 = stateno = 410 && MoveContact
trigger12 = stateno = 420 && MoveContact

;■飛翔する推理_弱
[State -1, 飛翔する推理_弱 ]
type = ChangeState
value = 2300
triggerall= var(59)=0
triggerall = command = "hisyou_1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 260 && MoveContact
trigger9 = stateno = 270 && MoveContact
trigger10 = stateno = 400 && MoveContact
trigger11 = stateno = 410 && MoveContact
trigger12 = stateno = 420 && MoveContact

;■飛翔する推理_弱
[State -1, 飛翔する推理_中 ]
type = ChangeState
value = 2310
triggerall= var(59)=0
triggerall = command = "hisyou_2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 260 && MoveContact
trigger9 = stateno = 270 && MoveContact
trigger10 = stateno = 400 && MoveContact
trigger11 = stateno = 410 && MoveContact
trigger12 = stateno = 420 && MoveContact

;■飛翔する推理_弱
[State -1, 飛翔する推理_強 ]
type = ChangeState
value = 2320
triggerall= var(59)=0
triggerall = command = "hisyou_3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 260 && MoveContact
trigger9 = stateno = 270 && MoveContact
trigger10 = stateno = 400 && MoveContact
trigger11 = stateno = 410 && MoveContact
trigger12 = stateno = 420 && MoveContact




;■ドラノール、赤鍵と青鍵
[State -1, ドラノール、赤鍵と青鍵 ]
Type     = Helper
triggerall= var(59)=0
triggerall = var(28) = 720;タッチゲージが条件満たしている
triggerall = var(58) >= 100;パートナーゲージ1以上
triggerall = command = "dora_3"
Triggerall = NumHelper(365) =0;ドラノールがいないこと
Triggerall = var(57) = 1;パートナーがドラノール
trigger1 = ctrl || (stateno = 2720 && animelemtime(14) >= 70)
Stateno  = 3300
ID       = 365
Pos      = 400,0
PosType  = P2
OwnPal   = 1
size.xscale =0.5
size.yscale =0.5
SuperMoveTime = 0
PauseMoveTime = 0
IgnoreHitPause = 1
Persistent = 0
facing = -1

;■ドラノール、ドロップキック
[State -1, ドラノール、ドロップキック ]
Type     = Helper
triggerall= var(59)=0
triggerall = var(28) = 720;タッチゲージが条件満たしている
Triggerall = var(57) = 1;パートナーがドラノール
trigger1 = command = "dora_1"
trigger1 = ctrl || (stateno = 2720 && animelemtime(14) >= 70)
Trigger1 = NumHelper(365) =0;ドラノールがいないこと
Stateno  = 2505
ID       = 365
Pos      = 420,-260
PosType  = P2
OwnPal   = 1
size.xscale =0.5
size.yscale =0.5
SuperMoveTime = 0
PauseMoveTime = 0
IgnoreHitPause = 1
Persistent = 0
facing = -1


;■ベルンカステル、冷酷なるカケラ
[State -1, ベルンカステル、冷酷なるカケラ ]
Type     = Helper
triggerall= var(59)=0
triggerall = var(28) = 720;タッチゲージが条件満たしている
Triggerall = var(57) = 2;パートナーがベルンカステル
trigger1 = command = "dora_3"
trigger1 = ctrl || (stateno = 2720 && animelemtime(14) >= 70)
Trigger1 = NumHelper(365) =0;ベルンカステルがいないこと
Stateno  = 4200
ID       = 365
Pos      = 120,0
PosType  = P2
OwnPal   = 1
size.xscale =0.5
size.yscale =0.5
SuperMoveTime = 0
PauseMoveTime = 0
IgnoreHitPause = 1
Persistent = 0
facing = -1

;■ベルンカステル、魔法障壁
[State -1, ベルンカステル、魔法障壁]
Type     = Helper
triggerall= var(59)=0
triggerall = var(28) = 720;タッチゲージが条件満たしている
Triggerall = var(57) = 2;パートナーがベルンカステル
trigger1 = command = "dora_1"
trigger1 = ctrl || (stateno = 2720 && animelemtime(14) >= 70)
Trigger1 = NumHelper(365) =0;ベルンカステルがいないこと
Stateno  = 4100
ID       = 365
Pos      = 420,-260
PosType  = P2
OwnPal   = 1
size.xscale =0.5
size.yscale =0.5
SuperMoveTime = 0
PauseMoveTime = 0
IgnoreHitPause = 1
Persistent = 0
facing = -1



;------------------------------------------------------------------------------

;■ドラノール or ベルンカステル、ダメージタッチ
[State -1, ダメージタッチ ]
type = ChangeState
value = 1100
triggerall= var(59)=0
triggerall = var(58) >= 300;パートナーゲージ3以上
triggerall = var(28) = 720;タッチゲージが条件満たしている
triggerall = movetype = H
triggerall = stateno != [120,155]
triggerall = stateno != [5080,5150]
triggerall = ctrl = 0
triggerall = alive = 1
triggerall = command = "x"
triggerall = statetype != L
triggerall = RoundState = 2
trigger1 = 1


;=================================
;------------------------------------------------------------------------------

;■攻撃_地上投げ
[State -1, 攻撃_地上投げ ]
type = ChangeState
value = 800
triggerall= var(59)=0
triggerall = command = "nage"
;triggerall = P2BodyDist X = [-5,20]
trigger1 = statetype != A
trigger1 = ctrl


;■攻撃_立ち_強3
[State -1, 攻撃_立ち_強3 ]
type = ChangeState
value = 270
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "c"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 400 && MoveContact
trigger8 = stateno = 410 && MoveContact

;■攻撃_立ち_強2
[State -1, 攻撃_立ち_強2 ]
type = ChangeState
value = 260
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "c"
TriggerAll = P2BodyDist X <= 55+vel x*2+Enemynear,vel x*4
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 400 && MoveContact
trigger8 = stateno = 410 && MoveContact


;■攻撃_立ち_強1
[State -1, 攻撃_立ち_強1 ]
type = ChangeState
value = 250
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 400 && MoveContact
trigger8 = stateno = 410 && MoveContact

;■攻撃_立ち_中3
[State -1, 攻撃_立ち_中3 ]
type = ChangeState
value = 240
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 220 && MoveContact
trigger6 = stateno = 230 && MoveContact

;■攻撃_立ち_中2
[State -1, 攻撃_立ち_中2 ]
type = ChangeState
value = 230
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "b"
TriggerAll = P2BodyDist X <= 50+vel x*2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 410 && MoveContact



;■攻撃_立ち_中1
[State -1, 攻撃_立ち_中1 ]
type = ChangeState
value = 220
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 410 && MoveContact

;■攻撃_立ち_弱2
[State -1, 攻撃_立ち_弱2 ]
type = ChangeState
value = 210
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 400 && MoveContact

;■攻撃_立ち_弱1
[State -1, 攻撃_立ち_弱1 ]
type = ChangeState
value = 200
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 400 && MoveContact



;■攻撃_しゃがみ_強
[State -1, 攻撃_しゃがみ_強]
type = ChangeState
value = 420
triggerall= var(59)=0
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 410 && MoveContact
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 210 && MoveContact
trigger6 = stateno = 220 && MoveContact
trigger7 = stateno = 230 && MoveContact
trigger8 = stateno = 240 && MoveContact
trigger9 = stateno = 250 && MoveContact
trigger10 = stateno = 260 && MoveContact
trigger11 = stateno = 270 && MoveContact



;■攻撃_しゃがみ_中
[State -1, 攻撃_しゃがみ_中]
type = ChangeState
value = 410
triggerall= var(59)=0
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 220 && MoveContact
trigger6 = stateno = 230 && MoveContact


;■攻撃_しゃがみ_弱
[State -1, 攻撃_しゃがみ_弱 ]
type = ChangeState
value = 400
triggerall= var(59)=0
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 210 && MoveContact

;■攻撃_空中_強2
[State -1, 攻撃_空中_強2 ]
type = ChangeState
value = 640
triggerall= var(59)=0
triggerall = command = "c"
triggerall = vel x !=0;垂直ジャンプ以外
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact

;■攻撃_空中_強1
[State -1, 攻撃_空中_強1 ]
type = ChangeState
value = 630
triggerall= var(59)=0
triggerall = command = "c"
triggerall = vel x =0;垂直ジャンプ
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact


;■攻撃_空中_中2
[State -1, 攻撃_空中_中2 ]
type = ChangeState
value = 620
triggerall= var(59)=0
triggerall = command = "b"
triggerall = vel x !=0;垂直ジャンプ以外
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact


;■攻撃_空中_中1
[State -1, 攻撃_空中_中1 ]
type = ChangeState
value = 610
triggerall= var(59)=0
triggerall = command = "b"
triggerall = vel x =0;垂直ジャンプ
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact


;;■攻撃_空中_弱2
;[State -1, 攻撃_空中_弱2 ]
;type = ChangeState
;value = 605
;triggerall= var(59)=0
;triggerall = command = "a"
;trigger1 = statetype = A
;trigger1 = stateno = 600 && MoveContact

;■攻撃_空中_弱
[State -1, 攻撃_空中_弱 ]
type = ChangeState
value = 600
triggerall= var(59)=0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;■アピール
[State -1, アピール ]
type = ChangeState
value = 195
triggerall= var(59)=0
triggerall = command = "y"
trigger1 = statetype != A
trigger1 = ctrl


;------------------------------------------------------------------------------
;■AI設定

[State -1,AI]
type = Varset
TriggerAll = ((Var(59) = 0) && (RoundState != 3))
TriggerAll = Var(59) = 0
trigger1 = command = "AI_00"
trigger2 = command = "AI_01"
trigger3 = command = "AI_02"
trigger4 = command = "AI_03"
trigger5 = command = "AI_04"
trigger6 = command = "AI_05"
trigger7 = command = "AI_06"
trigger8 = command = "AI_07"
trigger9 = command = "AI_08"
trigger10= command = "AI_09"
trigger11= command = "AI_10"
trigger12= command = "AI_11"
trigger13= command = "AI_12"
trigger14= command = "AI_13"
trigger15= command = "AI_14"
trigger16= command = "AI_15"
trigger17= command = "AI_16"
trigger18= command = "AI_17"
trigger19= command = "AI_18"
trigger20= command = "AI_19"
trigger21= command = "AI_20"
trigger22= command = "AI_21"
trigger23= command = "AI_22"
trigger24= command = "AI_23"
trigger25= command = "AI_24"
trigger26= command = "AI_25"
trigger27= command = "AI_26"
trigger28= command = "AI_27"
trigger29= command = "AI_28"
trigger30= command = "AI_29"
trigger31= command = "AI_30"
trigger32= command = "AI_31"
trigger33= command = "AI_32"
trigger34= command = "AI_33"
trigger35= command = "AI_34"
trigger36= command = "AI_35"
trigger37= command = "AI_36"
trigger38= command = "AI_37"
trigger39= command = "AI_38"
trigger40= command = "AI_39"
trigger41= command = "AI_40"
trigger42 = command = "AI_41"
trigger43 = command = "AI_42"
trigger44 = command = "AI_43"
trigger45 = command = "AI_44"
trigger46 = command = "AI_45"
trigger47 = command = "AI_46"
trigger48 = command = "AI_47"
trigger49 = command = "AI_48"
trigger50 = command = "AI_49"
trigger51 = command = "AI_50"
trigger52 = command = "AI_51"
trigger53 = command = "AI_52"
trigger54 = command = "AI_53"
trigger55 = command = "AI_54"
trigger56 = command = "AI_55"
trigger57 = command = "AI_56"
trigger58 = command = "AI_57"
trigger59 = command = "AI_58"
trigger60 = command = "AI_59"
trigger61 = command = "AI_60"
;trigger62 = 1

v = 59
;■下の"Value = 6"となっている数字の箇所を1～10で指定し、CPUのAIレベルを変更できます。
;■（10が最強）。
value = 10
IgnoreHitPause = 1
