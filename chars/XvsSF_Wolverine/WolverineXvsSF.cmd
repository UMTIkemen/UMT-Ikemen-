[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 30
command.buffer.time = 1

;-| 2/3 Button Combination |-----------------------------------------------
[command]
name = "hold x"
command = /$x
time = 1

[command]
name = "hold y"
command = /$y
time = 1

[command]
name = "hold z"
command = /$z
time = 1

[command]
name = "guardpush"
command = x+y
time = 10

[command]
name = "guardpush"
command = x+z
time = 10

[command]
name = "guardpush"
command = z+y
time = 10

[command]
name = "xy"
command = x+y
time = 8

[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "ab"
command = a+b
time = 8

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


;-| Hold Button |--------------------------------------------------------
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
name = "holdstart"
command = /s
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1
;-| CPU |----------------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

;-| Super Motions |--------------------------------------------------------



[Command]
name = "S01"
command = ~D, DF, F, z

[Command]
name = "S02"
command = ~D, DB, B, z

[Command]
name = "S03"
command =~F, D, DF, z
time = 15


;-| Special Motions |------------------------------------------------------


[Command]
name = "01"
command = ~D, DF, F, x

[Command]
name = "02"
command = ~D, DF, F, y

[Command]
name = "03"
command = ~D, DF, F, x+y

[Command]
name = "04"
command = ~D, DB, B, x

[Command]
name = "05"
command =  ~D, DB, B, y

[Command]
name = "06"
command = ~D, DB, B, x+y

[Command]
name = "07"
command = ~F, D, DF, x
time = 15

[Command]
name = "08"
command = ~F, D, DF, y
time = 15

[Command]
name = "09"
command = ~F, D, DF,x+y
time = 15

[Command]
name = "10"
command = ~D, DF, F,a
time = 15

[Command]
name = "11"
command = ~D, DF, F,b
time = 15

[Command]
name = "12"
command = ~D, DF, F,a+b
time = 15

[Command]
name = "13"
command = ~F, D, B,a
time = 15

[Command]
name = "14"
command = ~F, D, B,b
time = 15

[Command]
name = "15"
command = ~F, D, B,a+b
time = 15


[Command]
name = "bwdb"
command = /B,b
time = 1

[Command]
name = "bwdz"
command = /B,z
time = 1

[Command]
name = "fwdz"
command = /F,z
time = 1

[Command]
name = "az"
command =/D,z

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "down";Required (do not remove)
command = $D
time = 1


;throw shouldersuplex

[Command]
name = "2k"
command = a+b
time = 5
[Command]
name = "2k"
command = b+c
time = 5
[Command]
name = "2k"
command = c+a
time = 5

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+a
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


;---------------------------------------------------------------------------
; 2. State entry
; --------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
;Artificial Intelligence
;===========================================================================
[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState!=2 ; the round is not started yet or is already over
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

;AI Taunt
[State 0]
type = changestate
value = 195
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = ctrl
triggerall = P2BodyDist X >= 50
triggerall = random <= 50
triggerall = life >= p2life+350
trigger1 = p2stateno = 5050
trigger2 = p2stateno = [5100,5101]
trigger3 = p2stateno = 5120   || p2stateno = 5020 || p2stateno = 5030

;AI Super Jump
[State 0]
type = ChangeState
value = 40
triggerall = var(59) != 0 && roundstate =2; Applied if AI is activated
trigger1 = statetype != A ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
trigger1 = movehit >= 1
trigger1 = stateno = 220 ||stateno = 1351

[State 0]
type = ChangeState
value = 40
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = AIlevel > 6 
triggerall = random <= 300
trigger1= p2movetype=A && ctrl && p2bodydist x <50
trigger1 = ctrl
trigger1 = p2statetype!=A 
trigger1 = p2stateno= 3000

[State -1]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = AILevel >= 7
triggerall = statetype != A
triggerall = random = [0,20]
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = stateno != 105
triggerall = p2bodydist x = [100,300]


[State 0]
Type=ChangeState
Triggerall=Inguarddist
Triggerall=var(59)>0
Triggerall=ctrl
Trigger1 = random< (var(50)*2+(AiLevel>=3)*100)
value=120


[State 0]
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

[State 0]
type = ChangeState
value = 160
triggerall = numhelper(160) = 0
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = prevstateno = 150
triggerall = statetype = S
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900  
ignorehitpause = 1

[State 0]
type = ChangeState
value = 130
triggerall = var(59) != 0 && roundstate =2
triggerall = StateType = S
triggerall = P2Movetype = A
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) 
triggerall = AIlevel > 8 || ((random < 799) && Time <= 1)
trigger1 = ctrl
trigger1 = p2stateno= [1000,3999]
trigger2 = P2BodyDist X < 90
trigger2 = ctrl
trigger2 = p2stateno= [200,299]


[State 0]
type = ChangeState
value = 161
triggerall = numhelper(160) = 0
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = prevstateno = 150
triggerall = statetype = C
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900  
ignorehitpause = 1

[State 0]
type = ChangeState
value = 131
triggerall = var(59) != 0 && roundstate =2
triggerall = StateType = C
triggerall = P2Movetype = A
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) 
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
trigger1 = ctrl
trigger1 = p2stateno= [1000,3999]
trigger2 = P2BodyDist X < 90
trigger2 = ctrl
trigger2 = p2stateno= [400,499]

[State 0]
type = ChangeState
value = 162
triggerall = numhelper(160) = 0
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = prevstateno = 150
triggerall = statetype = A
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900  
ignorehitpause = 1

[State 0]
type = ChangeState
value = 132
triggerall = var(59) != 0 && roundstate =2
triggerall = StateType = A
triggerall = P2Movetype = A
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) 
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
trigger1 = ctrl
trigger1 = p2stateno= [1000,3999]
trigger2 = P2BodyDist X < 90
trigger2 = ctrl
trigger2 = p2stateno= [600,699]


[State -1]
type = ChangeState
value = 0
triggerall = var(59) != 0
triggerall = roundstate = 3
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;Artificial Intelligence - Light Normals
;===========================================================================
   
[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2statetype != A  
triggerall = p2bodydist X < 13   
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                           
value = 200  

[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2statetype != A  
triggerall = p2bodydist X < 15   
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                          
value = 230 

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 5
triggerall = statetype != A
trigger1 = stateno = 200
trigger1 = movecontact
value = 230

[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 10   
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                        
value = 400 

[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 11    
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                         
value = 430 

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 5
triggerall = statetype != A
trigger1 = stateno = 200
trigger1 = movecontact
value = 430

[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype = A   
triggerall = p2bodydist X <= 40
triggerall = p2dist y = [-30,0]  
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                           
value = 600 

[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype = A   
triggerall = p2bodydist X <= 40
triggerall = p2dist y = [-30,0]  
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900
trigger5 = stateno = 600
trigger5 = movecontact                                                             
value = 630 

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 5
triggerall = statetype = A
trigger1 = stateno = 600
trigger1 = movecontact
value = 630

[State 0]
type = ChangeState
value = 800
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2statetype != L
triggerall = ctrl
trigger1 = AIlevel > 4 
trigger1 = Random <= 20
trigger1 = p2bodydist X < 3
trigger2 = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger2 = p2bodydist X < 2

[State 0]
type = ChangeState
value = 810
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2statetype != L
triggerall = p2bodydist X < 4
triggerall = ctrl
trigger1 = AIlevel > 4 
trigger1 = Random <= 20
trigger1 = p2bodydist X < 3
trigger2 = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger2 = p2bodydist X < 2


[State 0]
type = ChangeState
value = 850
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = A
triggerall = P2movetype != H
triggerall = P2statetype = A
triggerall = P2statetype != L
triggerall = p2bodydist X < 3
triggerall = p2dist y = [-30,0] 
triggerall = P2stateno!= 5040
triggerall = ctrl
trigger1 = AIlevel > 4 
trigger1 = Random <= 20
trigger1 = p2bodydist X < 3
trigger2 = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger2 = p2bodydist X < 2
 

[State 0]
type = ChangeState
value = 860
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = A
triggerall = P2movetype != H
triggerall = P2statetype = A
triggerall = P2statetype != L
triggerall = P2stateno!= 5040
triggerall = p2bodydist X < 3
triggerall = p2dist y = [-30,0] 
triggerall = ctrl
trigger1 = AIlevel > 4 
trigger1 = Random <= 20
trigger1 = p2bodydist X < 3
trigger2 = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger2 = p2bodydist X < 2
  


;===========================================================================
;Artificial Intelligence - Normals
;===========================================================================
   
[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 30    
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                           
value = 210  

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 5
triggerall = statetype != A
trigger1 = stateno = 200 || stateno = 230 
trigger1 = movecontact
trigger1 = random <= 200
value = 210

  [State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 5
triggerall = statetype != A
trigger1 = stateno = 210
trigger1 = movecontact
trigger1 = random <= 200
value = 211

[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 20    
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                           
value = 212

  [State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 5
triggerall = statetype != A
trigger1 = stateno = 211
trigger1 = movecontact
trigger1 = random <= 200
value = 212


[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 15   
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                          
value = 220 


[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 6
triggerall = statetype != A
trigger1 = stateno = 210 || stateno = 240 || stateno = 410 || stateno = 440
trigger1 = movecontact
trigger1 = random <= 200
value = 220

[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 8   
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                          
value = 240 

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 5
triggerall = statetype != A
trigger1 = stateno = 210 || stateno = 230 
trigger1 = movecontact
trigger1 = random <= 200
value = 240

[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 6   
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                        
value = 410 

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 5
triggerall = statetype != A
trigger1 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger1 = movecontact
trigger1 = random <= 200
value = 410

[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 30 
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                         
value = 420 

[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 15   
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                         
value = 440 

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 5
triggerall = statetype != A
trigger1 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400|| stateno = 410|| stateno = 430
trigger1 = movecontact
trigger1 = random <= 200
value = 440

[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype = A   
triggerall = p2bodydist X <= 100
triggerall = p2dist y = [-30,0]  
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                           
value = 610 

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 5
triggerall = statetype = A
trigger1 = stateno = 600 || stateno = 630 
trigger1 = movecontact
trigger1 = random <= 200
value = 610


[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 5
triggerall = statetype = A
trigger1 = stateno = 610 
trigger1 = movecontact
trigger1 = random <= 200
value = 611

[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype = A   
triggerall = p2bodydist X <= 100
triggerall = p2dist y = [-30,0]  
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                           
value = 620 

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 5
triggerall = statetype = A
trigger1 = stateno = 611 || stateno = 640 
trigger1 = movecontact
trigger1 = random <= 200
value = 620

[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype = A   
triggerall = p2bodydist X <= 100
triggerall = p2dist y = [-30,0]  
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                           
value = 640 

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 5
triggerall = statetype = A
trigger1 = stateno = 600 || stateno = 630 
trigger1 = movecontact
trigger1 = random <= 200
value = 640


;===========================================================================
;Artificial Intelligence - Specials
;===========================================================================

[State -1,32]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A 
triggerall = p2bodydist x < 80
triggerall = ctrl
trigger1 = AIlevel > 6 
trigger1 = random <= 3  
trigger2 = AIlevel > 8                 
trigger2 = random <= 6   
value = 1000

[State -1,32]
type = ChangeState 
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A 
triggerall = p2bodydist x < 150
triggerall = ctrl
trigger1 = AIlevel > 6 
trigger1 = random <= 3  
trigger2 = AIlevel > 8                 
trigger2 = random <= 6    
value = 1010

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 7
triggerall = statetype != A
trigger1 = stateno = 220 || stateno = 212 || stateno = 410 || stateno = 450 
trigger1 = movecontact
trigger1 = random <= 200
value = 1010

[State 0]
type = ChangeState
triggerall = power >= 500
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 7
triggerall = statetype != A
trigger1 = stateno = 220 || stateno = 212 || stateno = 410 || stateno = 450 
trigger1 = movecontact
trigger1 = random <= 200
value = 1050

[State -1,32]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A 
triggerall = (p2dist x = [50,100]) && (p2dist y = [-200,-50])
triggerall = ctrl
trigger1 = AIlevel < 6 
trigger1 = random <= 3  
trigger2 = AIlevel > 8                 
trigger2 = random <= 100 
value = 1100

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 6
triggerall = statetype != A
trigger1 = stateno = 420  || stateno = 440
trigger1 = movecontact
trigger1 = random <= 100
value = 1110


[State 0]
type = ChangeState
triggerall = power >= 500
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 7
triggerall = statetype != A
trigger1 = stateno = 420  || stateno = 440
trigger1 = movehit=1
trigger1 = random <= 100
value = 1150

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 6
triggerall = statetype != A
trigger1 = stateno = 210 || stateno = 240 || stateno = 410 || stateno = 440 
trigger1 = movecontact
trigger1 = random <= 200
value = 1200

[State -1,32]
type = ChangeState 
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A 
triggerall = p2bodydist x < 150
triggerall = ctrl
trigger1 = AIlevel > 6 
trigger1 = random <= 3  
trigger2 = AIlevel > 8                 
trigger2 = random <= 6    
value = 1210

[State -1,32]
type = ChangeState 
triggerall = power >= 500
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A 
triggerall = p2bodydist x < 150
triggerall = ctrl
trigger1 = AIlevel > 6 
trigger1 = random <= 3  
trigger2 = AIlevel > 8                 
trigger2 = random <= 6    
value = 1250

[State 0]
type = ChangeState
triggerall = power >= 500
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 7
triggerall = statetype = A
trigger1 = stateno = 1504
trigger1 = time > 10
trigger1 = random <= 200
value = 1350

[State -1,32]
type = ChangeState 
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A 
triggerall = p2bodydist x < 150
triggerall = ctrl
trigger1 = AIlevel > 6 
trigger1 = random <= 3  
trigger2 = AIlevel > 8                 
trigger2 = random <= 6    
value = 1500

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 7
triggerall = statetype != A
trigger1 = stateno = 220 || stateno = 212 || stateno = 410 || stateno = 450 
trigger1 = movecontact
trigger1 = random <= 200
value = 1500


[State -1,32]
type = ChangeState 
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype!= A 
triggerall = p2bodydist x < 150
triggerall = ctrl
trigger1 = AIlevel > 6 
trigger1 = random <= 3  
trigger2 = AIlevel > 8                 
trigger2 = random <= 6    
value = 1550

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = AILevel >= 7
triggerall = statetype = A
trigger1 = stateno = 611 || stateno = 640 
trigger1 = movecontact
trigger1 = random <= 200
value = 1550

;===========================================================================
;Artificial Intelligence - Supers
;===========================================================================

[State -1, ]
type = ChangeState
triggerall = power >= 1000
triggerall = statetype = S && var(59) != 0 
triggerall = statetype !=A
triggerall = stateno != [800,850]
triggerall = ctrl
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [0,100]
trigger1 = AIlevel > 6
trigger1 = random = [0,3] 
trigger2 = AIlevel > 8                 
trigger2 = random = [0,5]  
value = 3000

[State -1, ]
type = ChangeState
triggerall = power >= 1000
triggerall = statetype = S && var(59) != 0 
triggerall = statetype !=A
triggerall = stateno != [800,850]
triggerall = p2bodydist x = [50,150]
triggerall = AIlevel > 7 || (( random = [0,3] ) && Time <= 1)  
trigger1 = stateno = [200,450]
trigger1 = movehit
trigger2 = stateno = [1000,1299]
trigger2 = movehit
value = 3000


[State -1, ]
type = ChangeState
triggerall = power >= 1000
triggerall = statetype !=A
triggerall = stateno != [800,850]
triggerall = ctrl
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [0,50]
trigger1 = AIlevel > 6
trigger1 = random = [0,3] 
trigger2 = AIlevel > 8                 
trigger2 = random = [0,6]  
value = 3100


[State -1]
type = ChangeState
triggerall = power >= 1000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = statetype != A
triggerall = AIlevel > 7 || (( random = [0,3] ) && Time <= 1)
trigger1 = movehit
trigger1 = stateno = 212||stateno = 1201 || stateno = 1251 
value = 3100


[State -1, ]
type = ChangeState
triggerall = power >= 1000
triggerall = statetype = A && var(59) != 0 
triggerall = statetype !=S
triggerall = stateno != [800,850]
triggerall = ctrl
triggerall = AIlevel > 6   
trigger1 = stateno = [600,640]
trigger1 = movehit
trigger1 = random = [0,10] 
trigger2 = stateno = 1501
trigger2 = movecontact && p2movetype=H
trigger2 = random = [0,3] 
value = 3150

[State -1, ]
type = ChangeState
value = 3200
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = stateno != [800,850]
triggerall = power >= 3000
triggerall = AILevel >= 8
triggerall = p2statetype !=A||((p2bodydist y =[-55,-20])&&enemy,vel y >=0)
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [0,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >90
trigger2= enemynear,anim=5300 && ctrl

;=======================================================================================
;Super 03
[State -1, ]
type = ChangeState
value = 3200
triggerall = Command = "S03"
triggerall = var(59) = 0
triggerall = statetype != a
triggerall = power >= 3000
trigger1 = ctrl
trigger2=(stateno=[200,499]) 
trigger3 = stateno = [1000,1399]
trigger4 = stateno = [1500,1599]

;Super 02
[State -1, ]
type = ChangeState
value = 3100
triggerall = Command = "S02"
triggerall = var(59) = 0
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = ctrl
trigger2=(stateno=[200,499]) 
trigger3 = stateno = [1000,1399]
trigger4 = stateno = [1500,1599]

;Super 01
[State -1, ]
type = ChangeState
value = 3150
triggerall = Command = "S02"
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) 
trigger3 = stateno = [1000,1399]
trigger4 = stateno = [1500,1599]

;Super 01
[State -1, ]
type = ChangeState
value = 3000
triggerall = Command = "S01"
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) 
trigger3 = stateno = [1000,1399]
trigger4 = stateno = [1500,1599]

;---------------------------------------------------------------------------;

;Special 04 
[state -1]
type = ChangeState
value = 1575
triggerall = statetype = A
triggerall = var(59) = 0
triggerall = command = "y" && command = "a" && command = "holddown" && command = "holdfwd"
trigger1 = ctrl
trigger2 = stateno = [600,699]


;Special 04 
[state -1]
type = ChangeState
value = 1585
triggerall = statetype = A
triggerall = var(59) = 0
triggerall =  command = "y" && command = "a" && command = "holddown" && command = "holdback"
trigger1 = ctrl
trigger2 = stateno = [600,699]

;Special 04 
[state -1]
type = ChangeState
value = 1580
triggerall = statetype = A
triggerall = var(59) = 0
triggerall = command = "y" && command = "a" && command = "holddown" 
trigger1 = ctrl
trigger2 = stateno = [600,699]


;Special 04 
[state -1]
type = ChangeState
value = 1555
triggerall = statetype = A
triggerall = var(59) = 0
triggerall = command = "y" && command = "a" && command = "holdup" && command = "holdfwd"
trigger1 = ctrl
trigger2 = stateno = [600,699]

;Special 04 
[state -1]
type = ChangeState
value = 1510
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = command = "y" && command = "a" && command = "holdup" && command = "holdfwd"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;Special 04 
[state -1]
type = ChangeState
value = 1565
triggerall = statetype = A
triggerall = var(59) = 0
triggerall = command = "y" && command = "a" && command = "holdup" && command = "holdback"
trigger1 = ctrl
trigger2 = stateno = [600,699]

;Special 04 
[state -1]
type = ChangeState
value = 1530
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = command = "y" && command = "a" && command = "holdup" && command = "holdback"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;Special 04 
[state -1]
type = ChangeState
value = 1560
triggerall = statetype = A
triggerall = var(59) = 0
triggerall = command = "y" && command = "a" && command = "holdup" 
trigger1 = ctrl
trigger2 = stateno = [600,699]

;Special 04 
[state -1]
type = ChangeState
value = 1520
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = command = "y" && command = "a" && command = "holdup" 
trigger1 = ctrl
trigger2 = stateno = [200,499]

;Special 04 
[state -1]
type = ChangeState
value = 1570
triggerall = statetype = A
triggerall = var(59) = 0
triggerall = command = "holdback"
triggerall = command = "y" && command = "a"
trigger1 = ctrl
trigger2 = stateno = [600,699]

;Special 04 
[state -1]
type = ChangeState
value = 1540
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = command = "holdback"
triggerall = command = "y" && command = "a"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;Special 04 
[state -1]
type = ChangeState
value = 1550
triggerall = statetype = A
triggerall = var(59) = 0
triggerall = command = "holdfwd"
triggerall = command = "y" && command = "a"
trigger1 = ctrl
trigger2 = stateno = [600,699]


;Special 04 
[state -1]
type = ChangeState
value = 1500
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = command = "holdfwd"
triggerall = command = "y" && command = "a"
trigger1 = ctrl
trigger2 = stateno = [200,499]


;Special 02 EX
[state -1]
type = ChangeState
value = 1150
triggerall = power >= 500
triggerall = statetype != A
triggerall = command = "09"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;Special 02 
[state -1]
type = ChangeState
value = 1100
triggerall = statetype != A
triggerall = command = "07"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;Special 02 
[state -1]
type = ChangeState
value = 1110
triggerall = statetype != A
triggerall = command = "08"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;Special 01 EX
[state -1]
type = ChangeState
value = 1050
triggerall = power >= 500
triggerall = statetype != A
triggerall = command = "03"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;Special 01
[state -1]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall = command = "01"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;Special 01
[state -1]
type = ChangeState
value = 1010
triggerall = statetype != A
triggerall = command = "02"
trigger1 = ctrl
trigger2 = stateno = [200,499]


;Special 03 EX
[state -1]
type = ChangeState
value = 1250
triggerall = power >= 500
triggerall = statetype != A
triggerall =  command = "06"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;Special 04 
[state -1]
type = ChangeState
value = 1200
triggerall = statetype != A
triggerall =  command = "04"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;Special 04 
[state -1]
type = ChangeState
value = 1210
triggerall = statetype != A
triggerall =  command = "05"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;Special 04 EX
[state -1]
type = ChangeState
value = 1350
triggerall = power >= 500
triggerall = statetype = A
triggerall =  command = "12"
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger3 = stateno = 1504
trigger3 = time > 5

;Special 03 
[state -1]
type = ChangeState
value = 1300
triggerall = statetype = A
triggerall =  command = "10"
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger3 = stateno = 1504
trigger3 = time > 5

;Special 03 
[state -1]
type = ChangeState
value = 1310
triggerall = statetype = A
triggerall =  command = "11"
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger3 = stateno = 1504
trigger3 = time > 5

;Special 03 EX
[state -1]
type = ChangeState
value = 1450
triggerall = power >= 500
triggerall = statetype != A
triggerall =  command = "15"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;Special 04 
[state -1]
type = ChangeState
value = 1400
triggerall = statetype != A
triggerall =  command = "13" ||command = "14"
trigger1 = ctrl
trigger2 = stateno = [200,499]


[State -1, WallCling]
type = ChangeState
value = 60
triggerall = var(59) = 0
trigger1 = command = "holdfwd" && ctrl && var(59) = 0 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]


;Super Jump
[state -1]
type = changestate
value = 40
triggerall = var(59) = 0
triggerall = command = "ab"
trigger1 = statetype != a
trigger1 = ctrl
trigger3 = stateno = 420

;Dash FWD
[State -1]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = statetype != a
trigger1 = (command = "FF") && (stateno !=[100,106])
trigger1 = ctrl
trigger2 = (command = "xy") && (command != "holdback")&& (stateno !=[100,106])
trigger2 = ctrl


;Hop Back
[State -1]
type = ChangeState
value = 102
triggerall = var(59) = 0
triggerall = statetype != a
trigger1 = (command = "BB") && (stateno !=[100,106])
trigger1 = ctrl
trigger2 = (command = "xy") && (command != "holdfwd")&& (stateno !=[100,106])
trigger2 = ctrl


;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;Throw FWD
[State -1]
type = changestate
value = 800
triggerall = var(59) = 0
triggerall = p2movetype != h
trigger1 = command = "z"
trigger1 = command = "holdfwd" 
trigger1 = statetype = s
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger1 = p2statetype = s || p2statetype = c

;Throw Back
[State -1]
type = changestate
value = 810
triggerall = var(59) = 0
triggerall = p2movetype != h
trigger1 = command = "z"
trigger1 = command = "holdback"
trigger1 = statetype = s
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger1 = p2statetype = s || p2statetype = c


;Air Throw FWD
[State ]
type = ChangeState
value = 850
triggerall = var(59) = 0
triggerall = p2movetype != h
triggerall = command = "z"
triggerall = command = "holdfwd" 
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger1 = p2statetype = A 

;Air Throw Back
[State ]
type = ChangeState
value = 860
triggerall = var(59) = 0
triggerall = p2movetype != h
triggerall = command = "z"
triggerall = command = "holdback"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger1 = p2statetype = A 

;Stand Light Punch
[state -1]
type = changestate
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl


;Crouching Strong Punch 02
[state -1]
type = changestate
value = 420
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown" && command = "holdfwd"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 211 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 241 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 430 && movecontact

;Stand Strong Punch 03
[state -1]
type = changestate
value = 212
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holdfwd"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 211 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 241 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact



;Stand Strong Punch02
[state -1]
type = changestate
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;Special Attack
[state -1]
type = changestate
value = 220
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 211 && movecontact
trigger5 = stateno = 212 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 241 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact

;Stand Light Kick
[state -1]
type = changestate
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact


;Stand Strong Kick
[state -1]
type = changestate
value = 240
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 211 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact

;Crouching Light Punch
[state -1]
type = changestate
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact


;Crouching Strong Punch 01
[state -1]
type = changestate
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 430 && movecontact

;Crouching Light Kick
[state -1]
type = changestate
value = 430
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact

;Crouching Strong Kick
[state -1]
type = changestate
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 211 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 241 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;Jump Light Punch
[state -1]
type = changestate
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = a
trigger1 = ctrl

;Jump Strong Punch
[state -1]
type = changestate
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;Jump Special Attack
[state -1]
type = changestate
value = 620
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 611 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

;Jump Light Kick
[state -1]
type = changestate
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;Jump Strong Kick 01
[state -1]
type = changestate
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 611 && movecontact
trigger5 = stateno = 630 && movecontact

; Guard Push Stand
[State -1]
type = ChangeState
value = 160
triggerall = numhelper(160) = 0
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") 
trigger1 = stateno = [150,151]

; Guard Push Crouch
[State -1]
type = ChangeState
value = 161
triggerall = numhelper(160) = 0
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") 
trigger1 = stateno = [152,153]

; Guard Push  Air
[State -1]
type = ChangeState
value = 162
triggerall = numhelper(160) = 0
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y")
trigger1 = stateno = 154
trigger2 = stateno = 155

;Recovery Roll FWD
[State -1, Forward Recovery Roll]
type = ChangeState
value = 891
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;Recovery Roll Back
[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1
