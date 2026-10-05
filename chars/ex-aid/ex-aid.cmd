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
Name = "AI0"
Command = a, a
Time = 0
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
;マイティクリティカルストライク
[Command]
name	= "DFDF_a"
Command = ~D,F,D,F,a
time = 20
buffer.time = 5

;マイティダブルクリティカルストライク
[Command]
name	= "DBDB_a"
Command = ~D,B,D,B,a
time = 20
buffer.time = 5

;マキシマムクリティカルブレイク
[Command]
name	= "DFDF_b"
Command = ~D,F,D,F,b
time = 20
buffer.time = 5

;ハイパークリティカルスパーキング
[Command]
name	= "DBDB_b"
Command = ~D,B,D,B,b
time = 20
buffer.time = 5

;バイクゲーマー
[Command]
name	= "DFDF_x"
Command = ~D,F,D,F,x;
time = 20

;マキシマムマイティクリティカルフィニッシュ 
[Command]
name	= "DFDF_y"
Command = ~D,F,D,F,y;
time = 20
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━|  必殺技  |━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;

;マキシマムナックル
[Command]
name	= "BDF_y"
Command = B,D,F,y
time = 20

;ゲキトツパンチ飛び道具（地上）
[Command]
name	= "DF_x"
Command = D,F,x
time = 20

;ゲキトツパンチ飛び道具（地上）
[Command]
name	= "DF_y"
Command = D,F,y
time = 20

;ゲキトツナックル（弱）
[Command]
name	= "DB_x"
Command = D,B,x
time = 20

;ゲキトツナックル（強）
[Command]
name	= "DB_y"
Command = D,B,y
time = 20


;ドラゴナイトハンターZ（弱）ハンターアタック（空中）
[Command]
name	= "DF_a"
Command = D,F,a
time = 20

;ドラゴナイトハンターZ（強）ハンターアタック（空中）
[Command]
name	= "DF_b"
Command = D,F,b
time = 20


;シャカリキスポーツ（弱）
[Command]
name	= "DB_a"
Command =  D,B,a
time = 20

;シャカリキスポーツ（強）
[Command]
name	= "DB_b"
Command =  D,B,b
time = 20

;ジャ・キーン
[Command]
name	= "F_xy"
Command = F,x,y
time = 20

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━| 特殊技・サブシステム |━━━━━━━━━━━━━━━━━━━━━━━━

[Command]
name	= "recovery"
Command = a+b
time = 1

[Command]
name	= "recovery2"
Command = x+y
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

;---AI用
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
[Command]
name = "/AI"
command = /a
time = 1
[Command]
name = "/AI"
command = /b
time = 1
[Command]
name = "/AI"
command = /c
time = 1
[Command]
name = "/AI"
command = /x
time = 1
[Command]
name = "/AI"
command = /y
time = 1
[Command]
name = "/AI"
command = /z
time = 1
[Command]
name = "/AI"
command = /s
time = 1
[Command]
name = "/AI"
command = /$F
time = 1
[Command]
name = "/AI"
command = /$B
time = 1
[Command]
name = "/AI"
command = /$U
time = 1
[Command]
name = "/AI"
command = /$D
time = 1

;---おまけ用	※都合上用意できてない組み合わせもあるかもなので注意
[Command]
name	= "Spiral"
Command = ~U,UB,DF,D;Ｓ
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~U,UF,DB,D;乙
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~D,DB,UF,U;逆乙
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~D,DF,UB,U;逆Ｓ
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~F,DF,UB,B;逆Ｎ
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~F,UF,DB,B;逆∽
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~B,DB,UF,F;∽
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~B,UB,DF,F;Ｎ
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~UF,U,D,DB;Ｓその２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~UB,U,D,DF;乙その２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~DF,D,U,UB;逆乙その２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~DB,D,U,UF;逆Ｓその２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~UF,F,B,DB;逆Ｎその２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~DF,F,B,UB;逆∽その２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~UB,B,F,DF;∽その２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~DB,B,F,UF;Ｎその２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~DB,B,DF,F,DB;地上のみ１（地上のみコマンドはコンボ中じゃなくてもできるので時間短め＆ラストの結び入力有）
time = 20
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~DF,F,DB,B,DF;地上のみ２
time = 20
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~B,DB,F,DF,B;地上のみ３
time = 20
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~F,DF,B,DB,F;地上のみ４
time = 20
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~UB,B,UF,F;,UB;123(8)なし１（超非推奨…なんですがこれでも出せるんですかね…？）
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~UF,F,UB,B;,UF;123(8)なし２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~B,UB,F,UF;,B;123(8)なし３
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~F,UF,B,UB;,F;123(8)なし４
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~B,UB,D,DF;,B;896(1)なし１
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~D,DF,B,UB;,D;896(1)なし２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~UB,B,DF,D;,UB;896(1)なし３
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~DF,D,UB,B;,DF;896(1)なし４
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~U,UB,F,DF;,U;412(9)なし１
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~F,DF,U,UB;,F;412(9)なし２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~UB,U,DF,F;,UB;412(9)なし３
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~DF,F,UB,U;,DF;412(9)なし４
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~B,DB,U,UF;,B;236(7)なし１
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~U,UF,B,DB;,U;236(7)なし２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~DB,B,UF,U;,DB;236(7)なし３
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~UF,U,DB,B;,UF;236(7)なし４
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~D,DB,F,UF;,D;478(3)なし１
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~F,UF,D,DB;,F;478(3)なし２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~DB,D,UF,F;,DB;478(3)なし３
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~UF,F,DB,D;,UF;478(3)なし４
time = 25
buffer.time = 5

[Command]
name	= "Spiral"
Command = ~DF,D,UF,U;,DF;741(6)なし１
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~UF,U,DF,D;,UF;741(6)なし２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~D,DF,U,UF;,D;741(6)なし３
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~U,UF,D,DF;,U;741(6)なし４
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~D,DB,U,UB;,D;963(4)なし１
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~U,UB,D,DB;,U;963(4)なし２
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~DB,D,UB,U;,DB;963(4)なし３
time = 25
buffer.time = 5
[Command]
name	= "Spiral"
Command = ~UB,U,DB,D;,UB;963(4)なし４
time = 25
buffer.time = 5


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;			ステートエントリーパート
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ■準常時監視ステート（‐１）■
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef -1]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				一撃技
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				超必殺技
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;---通常モード---

;マイティクリティカルストライク
[State -1, Super Arts]
type	= ChangeState
value	= 3000
triggerall = var(59)<=0
triggerAll = Command = "DFDF_a"
triggerAll = power >= 1000
triggerAll = StateType != A
triggerAll= numhelper(9000) = 0 || stateno = 1110
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;マイティダブルクリティカルストライク
[State -1, Super Arts]
type	= ChangeState
value	= 3230;3200
triggerall = var(59)<=0
triggerAll = Command = "DBDB_a"
triggerAll = power >= 2000
triggerAll = StateType != A
triggerAll= numhelper(9000) = 0 || stateno = 1110
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]
;[State -1, Super Arts]
;type	= ChangeState
;value	= 3230
;triggerall = var(59)<=0
;triggerAll = Command = "Spiral"
;triggerall = Command = "a";Spiralに当てはまるものが多過ぎるのでボタン認識はこっちで
;triggerAll = power >= 2000
;triggerAll = StateType != A
;triggerAll= numhelper(9000) = 0 || stateno = 1110
;trigger1 = Ctrl
;trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
;trigger2 = MoveContact
;trigger2 = StateNo != [3500,3507]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;マキシマムクリティカルブレイク
[State -1, Super Arts]
type	= ChangeState
value	= 3300
triggerall = var(59)<=0 && var(30)!=0 && numexplod(2001)=0
triggerAll = Command = "DFDF_b"
triggerAll = power >= 3000
triggerAll = StateType != A
triggerAll= numhelper(9000) = 0 || stateno = 1110
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]		;スパキャン用トリガー

;マキシマムクリティカルブレイク
[State -1, Super Arts]
type	= ChangeState
value	= 3300
triggerall = var(59)<=0 && var(30)!=0 && numexplod(2001)=0
triggerAll = Command = "DFDF_b"
triggerAll = power >= 3000
triggerAll = StateType != A	;スパキャン用トリガー
trigger1 = Movehit&&NumTarget(1600)
trigger1 = StateNo = 1600 && Target(1600),stateno=1608

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ハイパークリティカルスパーキング 
[State -1, Super Arts]
type	= ChangeState
value	= 3099
triggerall = var(30)>=2
triggerAll = Var(59)<= 0 && roundstate = 2
triggerAll = Command = "DBDB_b"
triggerAll = power >= 3000 && fvar(35) >= 3000 && life <= 300
triggerAll = StateType != A
triggerAll= numhelper(9000) = 0 || stateno = 1110
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;バイクゲーマー
[State -1, Super Arts]
type	= ChangeState
value	= 3070
triggerall = var(59)<=0
triggerAll = Command = "DFDF_x"
triggerAll = power >= 1000
triggerAll = StateType != A
triggerAll= numhelper(9000) = 0 || stateno = 1110
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]

;マキシマムマイティクリティカルフィニッシュ 
[State -1, Arts]
type	= ChangeState
value	= 3330
triggerAll = Var(59)<= 0 && var(30)!=0 && numexplod(2001)=0
triggerAll = Command = "DFDF_y"
triggerAll = power >= 2000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact
trigger3 = Movehit&&NumTarget(1600)
trigger3 = StateNo = 1600 && Target(1600),stateno=1608

;MAX大変身
[State -1, Arts]
type	= ChangeState
value	= 2000+((var(30)=1)*10000)
triggerAll = Var(59)<= 0 && var(30) = [0,1]
triggerAll = Command = "z"
triggerAll = fvar(35) >= 3000; power >= 3000-((var(30)=1)*2000)-((var(33)=2&&RoundsExisted)||(var(33)=3&&RoundNo>1)||(!var(33)))*(!var(30))*1000
triggerAll = StateType != A
trigger1 = Ctrl


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				必殺技
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;マキシマムナックル
[State -1, Arts]
type	= ChangeState
value	= 1600
triggerall = var(59)<=0 && var(30)!=0 && var(14)>0 && numexplod(2001)=0
triggerAll = Command = "BDF_y"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;ゲキトツナックル（弱）
[State -1, Arts]
type	= ChangeState
value	= 1000
triggerall = var(59)<=0
triggerAll = Command = "DB_x"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499]) || (StateNo = 1090)
trigger2 = MoveContact

;ゲキトツナックル（強）
[State -1, Arts]
type	= ChangeState
value	= 1050
triggerall = var(59)<=0
triggerAll = Command = "DB_y"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499]) || (StateNo = 1090)
trigger2 = MoveContact

;ドラゴナイトハンター（弱）
[State -1, Arts]
type	= ChangeState
value	= 1100
triggerall = var(59)<=0
triggerAll = Command = "DF_a"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;ドラゴナイトハンター（強）
[State -1, Arts]
type	= ChangeState
value	= 1150
triggerall = var(59)<=0
triggerAll = Command = "DF_b"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;空中ドラゴナイト
[State -1, Arts]
type	= ChangeState
value	= 1110
triggerall = var(59)<=0
triggerAll = Command = "DF_a"
triggerAll = StateType = A
triggerAll = Pos Y <= -40
trigger1 = Ctrl
trigger2 = StateNo = [600,699]
trigger2 = MoveContact

;空中ドラゴナイト
[State -1, Arts]
type	= ChangeState
value	= 1160
triggerall = var(59)<=0
triggerAll = Command = "DF_b"
triggerAll = StateType = A
triggerAll = Pos Y <= -40
trigger1 = Ctrl
trigger2 = StateNo = [600,699]
trigger2 = MoveContact


;シャカリキスポーツ（弱）
[State -1, Arts]
type	= ChangeState
value	= 1400
triggerall = var(59)<=0
triggerAll = Command = "DB_a"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499]) || (StateNo = 1090)
trigger2 = MoveContact

;シャカリキスポーツ（強）
[State -1, Arts]
type	= ChangeState
value	= 1450
triggerall = var(59)<=0
triggerAll = Command = "DB_b"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499]) || (StateNo = 1090)
trigger2 = MoveContact

;ジャ・キーン
[State -1, Arts]
type	= ChangeState
value	= 1090
triggerall = var(59)<=0
triggerAll = Command = "holdfwd"
triggerAll = command="x"
triggerAll = command="y"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;ジャジャジャッキーン
[State -1, tobi air]
type = ChangeState
value = 1500
triggerall = var(59)<= 0 && var(30) >= 1
triggerall = roundstate = 2
triggerall = command = "DF_x" || command = "DF_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699]) && (movecontact)

;ゲキトツパンチ（弱）
[State -1, Arts]
type	= ChangeState
value	= 1300
triggerall = var(59)<=0
triggerAll = Command = "DF_x"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;ゲキトツパンチ（強）
[State -1, Arts]
type	= ChangeState
value	= 1350
triggerall = var(59)<=0
triggerAll = Command = "DF_y"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				特殊行動
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

; くらい抜け
[State -1]
type	= ChangeState
value	= ifelse(StateType!=A,910,915)
triggerall = var(59)<=0
triggerAll = Alive
triggerAll = Command = "recovery2"
triggerAll = var(39) = 0
triggerall = power >= 1000
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
triggerall = var(59)<=0
trigger1 = Command = "HJ"
trigger1 = Command != "NHJ";不正入力排除
trigger1 = StateType != A
trigger1 = Ctrl 

;ダッシュ
[State -1, Run Fwd]
type	= ChangeState
value	= 100
triggerall = var(59)<=0
trigger1 = Command = "FF"
trigger1 = StateType != A
trigger1 = Ctrl

;後退ダッシュ
[State -1, Run Back]
type	= ChangeState
value	= 105
triggerall = var(59)<=0
trigger1 = Command = "BB"
trigger1 = StateType != A
trigger1 = Ctrl

;投げ
[State -1, Throw]
type	= ChangeState
value	= 800
triggerall = var(59)<=0
triggerAll = Command = "y"
triggerAll = StateType != A
triggerAll = Ctrl
triggerAll = StateNo != 100
trigger1 = Command = "holdfwd"
trigger1 = p2bodydist X < 8
trigger1 = (P2StateType = S) || (P2StateType = C)
trigger1 = p2movetype != H
trigger2 = Command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (P2StateType = S) || (P2StateType = C)
trigger2 = p2movetype != H

;ゲージ溜め
[State -1, ]
type = ChangeState
value = 950
triggerall = var(59)<= 0
trigger1 = command = "c"
trigger1 = statetype = S
trigger1 = fvar(35) < 3000
trigger1 = ctrl

[State -1];緊急回避
type	= ChangeState
value	= 700+(var(30)<2)
triggerAll = Var(59)<= 0
triggerall = StateType != A
triggerall = (Command = "x" && Command = "a")
trigger1 = Ctrl 

[State -1];ガーキャン
type	= ChangeState
value	= 750
triggerAll = Var(59)<= 0 && fvar(35)>=1500 && var(30)>1 && power >= 1500
triggerall = StateType != A
triggerall = var(17) >= 1
triggerall = (Command = "holdback" && Command = "recovery")
trigger1 = stateno=150||stateno=152

[State -1, No_Continue]
type = ChangeState
value = 195
triggerall = var(59)<= 0
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				通常攻撃
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	立ち攻撃
;━━━━━━━━━━━━━━━━
;立ちパンチ
[State -1, Stand Punch]
type	= ChangeState
value	= 200
triggerall = var(59)<=0
triggerAll = Command = "x"
triggerAll = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl


;立ちキック
[State -1, Stand Kick]
type	= ChangeState
value	= 210
triggerall = var(59)<=0
triggerAll = Command = "a"
triggerAll = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
;trigger4 = StateNo = 220 && MoveContact


;立ち武器攻撃
[State -1, Stand Attack]
type	= ChangeState
value	= 220
triggerall = var(59)<=0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 210 && MoveContact
trigger5 = StateNo = 410 && MoveContact


;立ち強攻撃
[State -1, Stand Attack]
type	= ChangeState
value	= 230
triggerall = var(59)<=0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = StateType = S
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
triggerall = var(59)<=0
triggerAll = Command = "x"
triggerAll = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 400 && MoveContact


;しゃがみキック
[State -1, Crouching Kick]
type	= ChangeState
value	= 410
triggerall = var(59)<=0
triggerAll = Command = "a"
triggerAll = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 210 && MoveContact
;trigger5 = StateNo = 220 && MoveContact


;しゃがみ武器攻撃
[State -1, Crouching Attack]
type	= ChangeState
value	= 420
triggerall = var(59)<=0
triggerAll = Command = "y"
triggerAll = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 210 && MoveContact
trigger5 = StateNo = 410 && MoveContact
trigger6 = StateNo = 220 && MoveContact

;しゃがみ武器攻撃
[State -1, Crouching Attack]
type	= ChangeState
value	= 430
triggerall = var(59)<=0
triggerAll = Command = "b"
triggerAll = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 210 && MoveContact
trigger5 = StateNo = 410 && MoveContact
trigger6 = StateNo = 220 && MoveContact




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	空中攻撃
;━━━━━━━━━━━━━━━━
;空中パンチ
[State -1, Jump Punch]
type	= ChangeState
value	= 600
triggerall = var(59)<=0
triggerAll = Command = "x"
triggerAll = StateType = A
trigger1 = Ctrl

;空中キック
[State -1, Jump Kick]
type	= ChangeState
value	= 610
triggerall = var(59)<=0
triggerAll = Command = "a"
triggerAll = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600 && MoveContact
;trigger3 = StateNo = 620 && MoveContact


;空中武器攻撃
[State -1, Jump Attack]
type	= ChangeState
value	= 620
triggerall = var(59)<=0
triggerAll = Command = "y"
triggerAll = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600 && MoveContact
trigger3 = StateNo = 610 && MoveContact

;空中武器攻撃
[State -1, Jump Attack]
type	= ChangeState
value	= 630
triggerall = var(59)<=0
triggerAll = Command = "b"
triggerAll = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600 && MoveContact
trigger3 = StateNo = 610 && MoveContact





;AI
;----------------------------------------------------------------------
;ハイパークリティカルスパーキング 
[State -1, Hyper Arts]
type	= ChangeState
value	= 3099
triggerall = var(59)>0 && roundstate = 2 && var(30)>=2
triggerAll = power >= 3000 && fvar(35) >= 3000 && Enemynear(Var(12)),statetype != L && life <= 300
triggerAll = StateType != A && p2bodydist Y >= -70 && Enemynear(Var(12)),movetype = H && !(Enemynear(Var(12)),stateno = [120,159])
triggerAll= numhelper(9000) = 0 || stateno = 1110
triggerAll = p2bodydist X = [0,70]
trigger1 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger1 = Movehit&&NumTarget
trigger1 = StateNo != [3099,3150]

;マキシマムクリティカルブレイク
[State -1, Super Arts]
type	= ChangeState
value	= 3300
triggerall = var(59)>0 && roundstate = 2 && var(30)!=0 && numexplod(2001)=0
triggerAll = power >= 3000 && Enemynear(Var(12)),statetype != L
triggerAll = StateType != A
triggerAll= numhelper(9000) = 0 || stateno = 1110
triggerall = ((Enemynear(Var(12)),life <= 480) || (var(30)=1&&(life<=250&&random<=600 || random <= 200)) || (var(30)>1&&life<=250&&fvar(35)<1500&&random <= 200))
trigger1 = (p2bodydist X = [25,160]) && (p2bodydist Y >= -50) && (Enemynear(Var(12)),movetype = A)
trigger1 = (ctrl || stateno = 21 || stateno = 22)
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = Movehit
trigger2 = StateNo != [3500,3507]

;マイティダブルクリティカルストライク
[State -1, Super Arts]
type	= ChangeState
value	= 3230
triggerall = var(59)>0 && roundstate = 2 && (var(30)<2 || random <= 10)
triggerAll = power >= 2000 && Enemynear(Var(12)),statetype != L
triggerAll = StateType != A
triggerAll= numhelper(9000) = 0 || stateno = 1110
triggerAll = ((var(30)!=0&&random < 1) || (Enemynear(Var(12)),life = [310,180]) || (fvar(35) < 2000 && random <= 250))
trigger1 = hitdefattr = SC, NA, SA && (p2bodydist X = [-5,38])
trigger1 = Movehit
trigger1 = StateNo != [3500,3507]
trigger2 = (p2bodydist X = [-5,38]) && p2bodydist Y > -80 && Enemynear(Var(12)),ctrl = 0 && (ctrl || stateno = 21 || stateno = 22)
trigger2 = random <= 333

;マキシマムマイティクリティカルフィニッシュ 
[State -1, Arts]
type	= ChangeState
value	= 3330
triggerall = var(59)>0 && roundstate = 2 && var(30)!=0 && numexplod(2001)=0 && (var(30)<2 || random <= 50)
triggerAll = power >= 2000 && Enemynear(Var(12)),statetype != L
triggerAll = StateType != A
triggerAll = random < 40 || Enemynear(Var(12)),life <= 280
trigger1 = (p2bodydist X = [100,380]) && ((Enemynear(Var(12)),life <= 80) || (Enemynear(Var(12)),movetype = A)) && (ctrl || stateno = 21 || stateno = 22)
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = Movehit && p2bodydist X >= 25
;trigger3 = Movehit&&NumTarget(1600)
;trigger3 = StateNo = 1600 && Target(1600),stateno=1608

;MAX/ハイパー大変身
[State -1, Arts]
type	= ChangeState
value	= 2000+((var(30)=1)*10000)
triggerall = var(59)>0 && roundstate = 2 && var(30) = [0,1]
triggerAll = fvar(35)>=3000; power >= 3000-((var(30)=1)*2000)-((var(33)=2&&RoundsExisted)||(var(33)=3&&RoundNo>1)||(!var(33)))*(!var(30))*1000
triggerAll = StateType != A
trigger1 = (ctrl || stateno = 21 || stateno = 22 || stateno = 100)
trigger1 = p2bodydist X >= 50 && random <= 600

;バイクゲーマー
[State -1, Super Arts]
type	= ChangeState
value	= 3070
triggerAll = numhelper(9000) = 0 || stateno = 1110
triggerall = var(59) > 0 && roundstate = 2 && Enemynear(Var(12)),statetype != A
triggerall = power >= 1000 && statetype != A
trigger1 = BackEdgeBodyDist <= 50 && p2bodydist X <= 100 && Enemynear(Var(12)),movetype = A && (ctrl || stateno = 21 || stateno = 22 || (stateno = [120,131]))
trigger1 = Enemynear(Var(12)),animtime <= -25 && ((Enemynear(Var(12)),life > 200 && random <= 25) || (Enemynear(Var(12)),life <= 200 && random <= 333))
trigger2 = p2bodydist X >= 150 && (ctrl || stateno = 21 || stateno = 22 || (stateno = [120,131]))
trigger2 = Enemynear(Var(12)),movetype = A && Enemynear(Var(12)),animtime <= -30 && Enemynear(Var(12)),time = 2 && !(Enemynear(Var(12)),HitDefAttr = SCA,NA,NP,NT)
trigger2 = ((Enemynear(Var(12)),life > 200 && random <= 10) || (Enemynear(Var(12)),life <= 200 && random <= 333))
trigger3 = p2bodydist X <= 180 && Enemynear(Var(12)),movetype = A && (ctrl || stateno = 21 || stateno = 22 || (stateno = [120,131]))
trigger3 = Enemynear(Var(12)),animtime <= -25 && (Enemynear(Var(12)),life < 80)
trigger4 = Enemynear(Var(12)),FrontEdgeBodyDist <= 85 && (Enemynear(Var(12)),life < 80) && (ctrl || stateno = 21 || stateno = 22 || (stateno = [120,131]))

;マイティクリティカルストライク
[State -1, Super Arts]
type	= ChangeState
value	= 3000
triggerall = var(59)>0 && roundstate = 2
triggerAll = power >= 1000 && Enemynear(Var(12)),statetype != L && Enemynear(Var(12)),statetype != C
triggerAll = StateType != A
triggerAll= numhelper(9000) = 0 || stateno = 1110
trigger1 = ((p2bodydist X = [200,220])&&(p2dist Y = [-2,0]))||((p2bodydist X = [160,200])&&(p2dist Y = [-100,0]))||((p2bodydist X = [100,160])&&(p2dist Y = [-200,0]))
trigger1 = Enemynear(Var(12)),movetype = A && (ctrl || stateno = 21 || stateno = 22)
trigger1 = (var(30)!=0&&random < 5) || (Enemynear(Var(12)),life <= 180)
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = Movehit && Enemynear(Var(12)),life <= 180
trigger2 = Enemynear(Var(12)),movetype = H && !(Enemynear(Var(12)),stateno = [120,159])
trigger2 = StateNo != [3500,3507]

[State -1];ガーキャン
type	= ChangeState
value	= 750
triggerAll = Var(59) > 0 && fvar(35)>=1500 && var(30)>1 && power >= 1500 && roundstate = 2 && Enemynear(Var(12)),statetype != L
triggerall = StateType != A
triggerall = stateno=150||stateno=152
trigger1 = Enemynear(Var(12)),life < 180
trigger2 = power < 2000 && fvar(35)>=2500 && random <= 200
trigger3 = life <= 280 && (power <= 1200 || Enemynear(Var(12)),life <= 300) && random <= 200
trigger4 = fvar(35)>=2000 && p2bodydist Y < -150 && random <= 200

[State -1];ゲージ変換
type	= ChangeState
value	= 780
triggerAll = Var(59) > 0 && fvar(35)>=1500 && var(30)>1 && power < 2000 && roundstate = 2
triggerall = StateType != A && life >= 200 && Enemynear(Var(12)),life >= 150
triggerall = (ctrl || stateno = 21 || stateno = 22)
triggerall = Enemynear(Var(12)),movetype = H && !(Enemynear(Var(12)),stateno = [120,159]) && !(Enemynear(Var(12)),canrecover) && !inguarddist
triggerall = (Enemynear(Var(12)),statetype = A || Enemynear(Var(12)),statetype = L)
trigger1 = ((Enemynear(Var(12)),life <= 300) || (power < 1000 && fvar(35)>=2800)) && p2bodydist X >= 80 && random <= 200

;----------------------------------------------------------------------
;マキシマムナックル
[State -1, spunch]
type = ChangeState
value = 1600
triggerall = var(59) > 0 && roundstate = 2 && Enemynear(Var(12)),statetype != L
triggerall = StateType != A && var(30)!=0 && var(14)>0 && numexplod(2001)=0
triggerall = !(Enemynear(Var(12)),HitDefAttr = SCA,HA,HP,AT)
trigger1 = p2bodydist X >= -10 && ((p2bodydist X <= 35 && Enemynear(Var(12)),vel x <= 3) || (p2bodydist X <= 90 && Enemynear(Var(12)),vel x > 3)) && (random <= 500)
trigger1 = !(Enemynear(Var(12)),facing = facing) && Enemynear(Var(12)),movetype != H && !(Enemynear(Var(12)),HitDefAttr = SCA,HA,HP,NT,ST,HT)
trigger1 = Enemynear(Var(12)),statetype=A && (ctrl || stateno = 21 || stateno = 22 || (stateno = [120,131]))
trigger1 = ((p2bodydist Y >= -90 && p2bodydist Y <= -70) || (Enemynear(Var(12)),vel y < -3 && p2bodydist Y <= -25))
trigger2 = !(Enemynear(Var(12)),facing = facing) && p2bodydist X >= -5 && (ctrl || stateno = 21 || stateno = 22 || (stateno = [120,131]))
trigger2 = (Enemynear(Var(12)),statetype=S) && Enemynear(Var(12)),movetype = A && inguarddist && !(Enemynear(Var(12)),HitDefAttr = SCA,HA,HP,NT,ST,HT)
trigger2 = ((p2bodydist X <= 35 && Enemynear(Var(12)),vel x <= 0 && random<=50) || (p2bodydist X <= 90 && Enemynear(Var(12)),vel x > 0 && random<=250))

[State -1, zenten]
type = ChangeState
value = 700+(var(30)<2)
triggerall = roundstate = 2
triggerall = (ctrl || stateno = 21 || stateno = 22 || stateno = 100)
triggerall = var(59) > 0 && var(30)<2
triggerall = statetype != A && !(enemynear(var(12)),HitDefAttr = SCA, NT,ST,HT)
trigger1 = FrontEdgeBodyDist > 70 && (p2bodydist X >= 150)
trigger1 = enemynear(var(12)),movetype = A && enemynear(var(12)),time <= 4 && random <= 100

[State -1, zenten]
type = ChangeState
value = 700+(var(30)<2)
triggerall = roundstate = 2 && var(30)>=2 && (fvar(35)>=2000 || life <= 300 || (fvar(35)<2000 && random <= 200))
triggerall = var(59) > 0 && alive && statetype != A && !(Enemynear(Var(12)),facing = facing) && Enemynear(Var(12)),backedgebodydist >= 40
triggerall = Enemynear(Var(12)),movetype = A && (ctrl || stateno = 21 || stateno = 22 || stateno = 100 || (stateno = [120,131]))
trigger1 = p2bodydist X>=30 && p2bodydist X<=120 && random <= 500
trigger2 = p2bodydist X > 120 && random <= 750
trigger3 = (p2bodydist X = [-5,30]) && random <= 600

;ガード
[State -1, guard]
type = ChangeState
value = 120
triggerall = roundstate = 2
triggerall = inguarddist || (P2Dist X < 50 && Enemynear(Var(12)),P2Dist X <= 0 && Enemynear(Var(12)),MoveType = A)
triggerall = var(59) > 0
triggerall = stateno != [120,155]
triggerall = !(Enemynear(Var(12)),HitDefAttr = SCA, NT,ST,HT)
trigger1 = (ctrl || stateno = 21 || stateno = 22 || stateno = 100)

;後退ダッシュ
[State -1, step]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(59) > 0
triggerall = (ctrl || stateno = 21 || stateno = 22 || stateno = [120,149])
triggerall = statetype != A
trigger1 = P2bodydist X > 60 && P2bodydist X < 80 && random <= 10
trigger1 = BackEdgeBodyDist >= 50 && !inguarddist && !(Enemynear(Var(12)),movetype = A)
trigger2 = Enemynear(Var(12)),movetype = A && Enemynear(Var(12)),HitDefAttr = SC,NT,ST,HT
trigger2 = BackEdgeBodyDist >= 50 && P2bodydist X < 70
trigger3 = p2bodydist Y <= -100 && (p2bodydist X = [-20,10]) && BackEdgeBodyDist >= 40 && random <= 250
trigger3 = Enemynear(Var(12)),vel x <= 0 && !(Enemynear(Var(12)),movetype = H)
value = 105

;ジャンプ
[State -1, step]
type = ChangeState
triggerall = roundstate = 2 && Enemynear(Var(12)),statetype != L
triggerall = var(59) > 0
triggerall = (ctrl || stateno = 21 || stateno = 22 || stateno = 100 || stateno = [120,149])
triggerall = statetype != A
trigger1 = Enemynear(Var(12)),movetype = A && !(Enemynear(Var(12)),HitDefAttr = SC,AA,HP,AT)
trigger1 = P2bodydist X >= 65 && random <= 50
trigger2 = Enemynear(Var(12)),movetype = A && Enemynear(Var(12)),HitDefAttr = SC,NT,ST,HT
trigger2 = BackEdgeBodyDist <= 65 && P2bodydist X < 70
trigger3 = Enemynear(Var(12)),movetype != A && inguarddist
trigger3 = P2bodydist X > 70 && P2bodydist X < 150 && random <= 10
trigger4 = (P2bodydist X = [80,170]) && ((Enemynear(Var(12)),statetype = C && random <= 5) || (Enemynear(Var(12)),statetype != C && random<=1))
trigger5 = Enemynear(Var(12)),movetype = A && Enemynear(Var(12)),HitDefAttr = SCA,NT,ST,HT
trigger5 = p2bodydist X >= 70 && Enemynear(Var(12)),time <= 8
trigger6 = Enemynear(Var(12)),statetype = A && Enemynear(Var(12)),vel y < -4 && !(Enemynear(Var(12)),movetype = A)
trigger6 = p2bodydist X >= 70 && random <= 150
trigger7 = Enemynear(Var(12)),movetype = A && Enemynear(Var(12)),time <= 3 && !(Enemynear(Var(12)),HitDefAttr = SCA,HA,HP,HT)
trigger7 = (p2bodydist X = [70,150]) && ((Enemynear(Var(12)),statetype = C && random <= 25) || (Enemynear(Var(12)),statetype != C && random<=10))
trigger8 = p2bodydist X <= 150 && !(Enemynear(Var(12)),movetype = H) && random <= 5
value = ifelse(random<=600,39,199)

[State -1, step]
type = ChangeState
triggerall = roundstate = 2 && Enemynear(Var(12)),statetype != A
triggerall = var(59) > 0 && statetype != A
triggerall = (ctrl || stateno = 21 || stateno = 22)
trigger1 = Enemynear(Var(12)),statetype = L && p2bodydist X <= 60 && random <= 500
trigger1 = BackEdgeBodyDist < 50 && !inguarddist
trigger2 = p2bodydist Y <= -100 && (p2bodydist X = [-5,10]) && random <= 250
trigger2 = Enemynear(Var(12)),vel x = 0 && !inguarddist
value = 199

;ゲージ溜め
[State -1, ]
type = ChangeState
value = 950
triggerall = var(59) > 0 && roundstate = 2 && !inguarddist && Enemynear(Var(12)),movetype != A
triggerall = statetype != A && (ctrl || stateno = 21 || stateno = 22 || stateno = 100)
triggerall = fvar(35) < 3000
trigger1 = p2bodydist X >= 100 && random <= 800

;しゃがみ武器攻撃
[State -1, Crouching Attack]
type	= ChangeState
value	= 420
triggerall = var(59)>0 && roundstate = 2
triggerAll = StateType != A && (Enemynear(Var(12)),statetype != A || p2bodydist Y >= -18)
trigger1 = random < 50
trigger1 = (ctrl || stateno = 21 || stateno = 22)
trigger1 = (Enemynear(Var(12)),statetype!=L && Enemynear(Var(12)),movetype = H && (p2bodydist X = [40,71]) && (p2dist Y >= -2))
trigger2 = StateNo = 210 && MoveContact
trigger3 = StateNo = 410 && MoveContact
trigger4 = StateNo = 220 && MoveContact && (p2bodydist X = [0,65])
trigger5 = random <= 400
trigger5 = (ctrl || stateno = 21 || stateno = 22)
trigger5 = (Enemynear(Var(12)),statetype=L && Enemynear(Var(12)),movetype = H && (p2bodydist X = [-5,71]) && (p2dist Y >= -20))

;シャカリキスポーツ（弱）
[State -1, upper]
type = ChangeState
value = 1400
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = Enemynear(Var(12)),statetype != L && !(Enemynear(Var(12)),HitDefAttr = SCA,HA,HP,HT)
triggerall = statetype != A
trigger1 = (p2bodydist X = [0,50]) && p2bodydist Y > -130 && p2bodydist Y < -75 && random = [600,800]
trigger1 = Enemynear(Var(12)),statetype = A && (ctrl || stateno = 21 || stateno = 22)
trigger2 = (StateNo = 1090) && movehit && p2bodydist Y < -45

;ジャ・キーン
[State -1, Arts]
type	= ChangeState
value	= 1090
triggerall = var(59)>0 && roundstate = 2 && Enemynear(Var(12)),statetype != L
triggerAll = StateType != A
trigger1 = (stateno != [120,139]) && !inguarddist && random < 100
trigger1 = (ctrl || stateno = 21 || stateno = 22)
trigger1 = p2bodydist X = [60,85]
trigger2 = stateno = 420 && movehit

;シャカリキスポーツ（強）
[State -1, Arts]
type	= ChangeState
value	= 1450
triggerall = var(59)>0 && roundstate = 2 && Enemynear(Var(12)),statetype != L
triggerAll = StateType != A
trigger1 = !inguarddist && random < 50
trigger1 = (ctrl || stateno = 21 || stateno = 22)
trigger1 = p2bodydist X = [61,65]
trigger2 = (StateNo = 1090) && MoveContact
trigger3 = stateno = 420 && movehit

;ドラゴナイトハンター（強）
[State -1, Arts]
type	= ChangeState
value	= 1150
triggerall = var(59)>0 && roundstate = 2 && Enemynear(Var(12)),statetype != L
triggerAll = StateType != A
trigger1 = random <= 250
trigger1 = (ctrl || stateno = 21 || stateno = 22)
trigger1 = (p2bodydist X = [140,200]) && Enemynear(Var(12)),vel x > 3 && p2bodydist Y > -80 && Enemynear(Var(12)),movetype = A
trigger2 = random < 25
trigger2 = (ctrl || stateno = 21 || stateno = 22)
trigger2 = (p2bodydist X = [110,140])

;ダッシュ
[State -1, Run Fwd]
type	= ChangeState
value	= 100
triggerall = var(59)>0 && roundstate = 2 && (var(30)>=1 || random <= 5)
triggerall = !(stateno=[120,139])
triggerall = statetype != A
triggerall = ctrl
trigger1 = P2bodydist X >= 60 && (random <= 100)
trigger2 = NumHelper(1301)
trigger2 = Helper(1301),movehit

[State -1, run]
type = ChangeState
triggerall = roundstate = 2
triggerall = !inguarddist
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = (ctrl || (stateno = 22 && time > 9 && random <= 100))
trigger1 = (p2bodydist X = [30,160]) && random <= 250
value = 21

[State -1, run]
type = ChangeState
triggerall = roundstate = 2 && !inguarddist
triggerall = var(59) > 0
triggerall = statetype != A && backedgebodydist >= 40
triggerall = (ctrl || (stateno = 21 && time > 11 && random <= 100))
trigger1 = (p2bodydist X = [-5,130]) && random <= 150
trigger2 = Enemynear(Var(12)),statetype = L && p2bodydist X <= 20 && random <= 333
value = 22

;ゲキトツナックル（弱）
[State -1, Arts]
type	= ChangeState
value	= 1000
triggerall = var(59)>0 && roundstate = 2 && Enemynear(Var(12)),statetype != L
triggerAll = StateType != A && !inguarddist
trigger1 = (ctrl || stateno = 21 || stateno = 22)
trigger1 = p2bodydist X = [110,140]
trigger1 = (Enemynear(Var(12)),statetype = A && p2bodydist Y > -75 && random <= 150) || (Enemynear(Var(12)),statetype != A && random <= 75)

;ゲキトツナックル（強）
[State -1, Arts]
type	= ChangeState
value	= 1050
triggerall = var(59)>0 && roundstate = 2 && Enemynear(Var(12)),statetype != L
triggerAll = StateType != A && !inguarddist && Enemynear(Var(12)),movetype != A
trigger1 = (ctrl || stateno = 21 || stateno = 22)
trigger1 = p2bodydist X = [150,200]
trigger1 = (Enemynear(Var(12)),statetype = A && p2bodydist Y > -95 && random <= 150) || (Enemynear(Var(12)),statetype != A && random <= 75)

;ゲキトツパンチ
[State -1, Arts]
type	= ChangeState
value	= 1300+random%2*50
triggerall = var(59)>0 && roundstate = 2 && Enemynear(Var(12)),statetype != L && p2bodydist Y >= -50
triggerAll = StateType != A && !inguarddist && Enemynear(Var(12)),movetype != A
trigger1 = (ctrl || stateno = 21 || stateno = 22)
trigger1 = p2bodydist X >= 190
trigger1 = random <= 250

;--------------------[空中攻撃]
;ジャジャジャッキーン
[State -1, tobi air]
type = ChangeState
value = 1500
triggerall = var(59) > 0 && var(30) >= 1
triggerall = roundstate = 2 && Enemynear(Var(12)),statetype != L
triggerall = statetype = A
trigger1 = pos y <= -30 && (p2bodydist X = [60,110]) && ctrl && random <= 200
trigger2 = (stateno = [600,699]) && (movecontact) && (p2bodydist X >= 5)

;投げ
[State -1, Throw]
type	= ChangeState
value	= 800
triggerall = statetype != A && var(59) > 0 && roundstate = 2 && (enemynear(var(12)),p2bodydist X = [-1,18]) && (ctrl || stateno = 21 || stateno = 22)
triggerall = stateno != 100 && !(Enemynear(Var(12)),HitDefAttr = SCA,HA,HP,HT) && random <= 400
trigger1 = p2bodydist X = [-1,9]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;しゃがみパンチ
[State -1, Crouching Punch]
type	= ChangeState
value	= 400
triggerall = var(59)>0 && roundstate = 2
triggerAll = StateType != A && Enemynear(Var(12)),statetype != L && !(Enemynear(Var(12)),HitDefAttr = SCA, HA,HP,HT)
triggerAll = p2bodydist Y >= -25
trigger1 = random < 800
trigger1 = (ctrl || stateno = 21 || stateno = 22)
trigger1 = p2bodydist X = [0,30]
trigger2 = StateNo = 400 && Moveguarded && (p2bodydist X = [0,20])

;しゃがみキック
[State -1, Crouching Punch]
type	= ChangeState
value	= 410
triggerall = var(59)>0 && roundstate = 2
triggerAll = StateType != A && Enemynear(Var(12)),statetype != L && Enemynear(Var(12)),statetype != A
trigger1 = stateno = 400 && movehit
trigger2 = StateNo = 200 && MoveContact

;しゃがみキック
[State -1, Crouching Punch]
type	= ChangeState
value	= 430
triggerall = var(59)>0 && roundstate = 2
triggerAll = StateType != A && Enemynear(Var(12)),statetype != L && Enemynear(Var(12)),statetype != A && !(Enemynear(Var(12)),HitDefAttr = SCA, HA,HP,HT)
trigger1 = random < 100
trigger1 = (ctrl || stateno = 21 || stateno = 22)
trigger1 = p2bodydist X = [65,75]

;立ちパンチ
[State -1, Stand Punch]
type	= ChangeState
value	= 200
triggerall = var(59)>0 && roundstate = 2
triggerAll = StateType != A && Enemynear(Var(12)),statetype != L && Enemynear(Var(12)),statetype != C && !(Enemynear(Var(12)),HitDefAttr = SCA, HA,HP,HT)
triggerAll = p2bodydist Y >= -50
trigger1 = random < 400
trigger1 = (ctrl || stateno = 21 || stateno = 22)
trigger1 = p2bodydist X = [0,40]

;立ちキック
[State -1, Stand Kick]
type	= ChangeState
value	= 210
triggerall = var(59)>0 && roundstate = 2
triggerAll = StateType != A && Enemynear(Var(12)),statetype != L && Enemynear(Var(12)),statetype != C
trigger1 = p2bodydist Y >= -60 && p2bodydist Y <= -40 && (stateno != [120,139]) && (!inguarddist)
trigger1 = random < 800
trigger1 = (ctrl || stateno = 21 || stateno = 22)
trigger1 = p2bodydist X = [0,35]
trigger2 = StateNo = 200 && MoveContact && Enemynear(Var(12)),statetype = A

;立ち武器
[State -1, Stand Punch]
type	= ChangeState
value	= 220
triggerall = var(59)>0 && roundstate = 2
triggerAll = StateType != A && Enemynear(Var(12)),statetype != L
trigger1 = random <= 100
trigger1 = !(Enemynear(Var(12)),HitDefAttr = SCA, HA,HP,HT) && (ctrl || stateno = 21 || stateno = 22)
trigger1 = p2bodydist X = [65,85]
trigger1 = p2bodydist Y >= -65
trigger2 = StateNo = 200 && MoveContact

;空中武器
[State -1]
Type = ChangeState
Value = 620
triggerall = var(59)>0 && roundstate = 2 && Enemynear(Var(12)),statetype != L
TriggerAll = StateType = A
TriggerAll = P2BodyDist X = [-50,40]
TriggerAll = P2BodyDist y = [-20,75]
Trigger1 = vel y > 0
Trigger1 = Ctrl
trigger1 = Random < 300

;空中パンチ
[State -1]
Type = ChangeState
Value = 600
triggerall = var(59)>0 && roundstate = 2 && Enemynear(Var(12)),statetype = A
TriggerAll = StateType = A
TriggerAll = P2BodyDist X = [0,35]
TriggerAll = P2BodyDist Y = [-20,20]
Trigger1 = Ctrl
Trigger1 = vel y > 0 && Random < 600

;空中弱キック
[State -1]
Type = ChangeState
Value = 610
triggerall = var(59)>0 && roundstate = 2 && Enemynear(Var(12)),statetype != L
TriggerAll = StateType = A
Trigger1 = P2BodyDist X = [-5,30]
Trigger1 = P2BodyDist Y = [-30,70]
Trigger1 = vel y > 0 && Random < 800
Trigger1 = (ctrl && !(stateno = [120,139]))
trigger2 = StateNo = 600 && MoveContact

;空中強キック
[State -1]
Type = ChangeState
Value = 630
triggerall = var(59)>0 && roundstate = 2 && Enemynear(Var(12)),statetype != L
TriggerAll = StateType = A
Trigger1 = P2BodyDist X = [31,70]
Trigger1 = P2BodyDist Y = [0,90]
Trigger1 = vel y > 0 && Random < 800
Trigger1 = Ctrl
trigger2 = StateNo = 610 && MoveContact && Enemynear(Var(12)),statetype = A

[State -1,AirDKHZ]
type = ChangeState
value = 1110+random%2*50
triggerall = var(59)>0 && roundstate = 2 && Enemynear(Var(12)),statetype != L
TriggerAll = (P2Dist Y>20&&P2Dist Y<50&&P2BodyDist X=[50,90])||(P2Dist Y>50&&P2BodyDist X>90)
TriggerAll = StateType=A
triggerAll = Pos Y <= -40
Trigger1 = P2MoveType != A
trigger1 = Random <= 250
trigger1 = Ctrl
trigger2 = StateNo = [600,699]
trigger2 = MoveContact

;--------------------[特殊行動]
; くらい抜け
[State -1]
type	= ChangeState
value	= ifelse(StateType!=A,910,915)
triggerall = var(59)>0 && roundstate = 2
triggerAll = Alive
triggerAll = var(39) = 0 && var(30)>=1
Triggerall = (Enemynear(Var(12)),life <= 300 && life <= 300 && random = [100,200])
TriggerAll = P2BodyDist X = [-60,90]
trigger1 = StateNo = 5000 && time > 0
trigger2 = StateNo = 5010 && time > 0
trigger3 = StateNo = 5020 && time > 0
trigger4 = StateNo = 5070 && time > 0
trigger5 = StateNo = 5030 && time > 0
trigger6 = StateNo = 5035 && time > 0
trigger7 = StateNo = 5040 && time > 0

[State -1, 空中復帰]
Type = ChangeState
Value = 5210
triggerall = var(59)>0 && roundstate = 2
TriggerAll = Vel Y > -1
TriggerAll = Alive
TriggerAll = StateNo = 5050
TriggerAll = life != 0
Trigger1 = CanRecover
Trigger1 = Random < 650

[State -1,挑発]
type = Changestate
value = 195
triggerall = RoundState = 2
triggerall = var(59) > 0
triggerall = life >= 700 && Enemynear(Var(12)),life <= 200 && Enemynear(Var(12)),power < 1500
triggerall = ctrl
triggerall = statetype != A
trigger1 = P2bodydist X >= 150
trigger1 = p2statetype = L && random <= 400

[State -1, 保険用]
type = ChangeState
value = 1090
triggerall = var(59) > 0 && roundstate = 2 && Enemynear(Var(12)),statetype != L
triggerall = statetype != A
trigger1 = (stateno = [200,499]) && stateno
trigger1 = movehit
