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
name = "recovery";required (do not remove)
command = x+y
time = 1

[Command]
name = "undizzy"
command = ~B, F, B, F, B, F, B, F
time = 35

[Command]
name = "undizzy"
command = ~D, U, D, U, D, U, D, U
time = 35

;-| push back |-----------------------------------------------------------
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

;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "abc"
command = a+b+c
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

[Command]
name = "recovery2"
command = x+a
time = 1

;-| Hyper Motions |--------------------------------------------------------

[Command]
name = "STH"
command = ~D, DF, F, x+y

[Command]
name = "STH"
command = ~D, DF, F, y+z

[Command]
name = "STH"
command = ~D, DF, F, x+z

[Command]
name = "TMP"
command =~D, DB, B, x+y
time = 15

[Command]
name = "TMP"
command = ~D, DB ,B, y+z
time = 15

[Command]
name = "TMP"
command = ~D, DB,B, x+z
time = 15

[Command]
name = "KTE"
command = ~D, DF, F, a+b
time = 15

[Command]
name = "KTE"
command = ~D, DF, F, b+c
time = 15

[Command]
name = "KTE"
command =~D, DF, F, a+c
time = 15

[Command]
name = "EGG"
command = ~F, D, DF, x+y
time = 15

[Command]
name = "EGG"
command = ~F, D, DF, y+z
time = 15

[Command]
name = "EGG"
command =~F, D, DF, x+z
time = 15

;-| Super Motions |------------------------------------------------------


[Command]
name = "01"
command =  ~D, DF, F, x
time = 15

[Command]
name = "02"
command =  ~D, DF, F, y
time = 15

[Command]
name = "03"
command =  ~D, DF, F, z
time = 15

[Command]
name = "04"
command = ~F, D, DF, x
time = 15

[Command]
name = "05"
command = ~F, D, DF, y
time = 15

[Command]
name = "06"
command = ~F, D, DF, z
time = 15

[Command]
name = "07"
command = ~D, DF, F, a
time = 15

[Command]
name = "08"
command = ~D, DF, F, b
time = 15

[Command]
name = "09"
command = ~D, DF, F, c
time = 15


[Command]
name = "10"
command = ~D, DB, B, a
time = 15

[Command]
name = "11"
command = ~D, DB, B, b
time = 15

[Command]
name = "12"
command = ~D, DB, B, c
time = 15

[Command]
name = "13"
command = ~D, DB, B, x
time = 15

[Command]
name = "14"
command = ~D, DB, B, y
time = 15

[Command]
name = "15"
command = ~D, DB, B, z
time = 15

[command]
name = "xyz"
command = x+y+z

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

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

[Command]
name = "DF"     ;Required (do not remove)
command = DF, DF
time = 10

[Command]
name = "UF"     ;Required (do not remove)
command = UF, UF
time = 10

[Command]
name = "DB"     ;Required (do not remove)
command = DB, DB
time = 10

[Command]
name = "UB"     ;Required (do not remove)
command = UB, UB
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
;var(59) = AI variable
;var(50) = Difficulty variable

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

;--------------------------------------------------------------------------------------------------------------------------------
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
triggerall = statetype != A ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
triggerall = movehit >= 1
trigger1 = stateno = 420
trigger2 = stateno = 1303

[State -1: Recovery Roll]
type = ChangeState
triggerall = var(59) != 0
triggerall = Alive && Life > 0
triggerall = (StateNo = [5100, 5110]) 
triggerall = Pos Y >= -5
triggerall = time > 15
trigger1 = random < 499
value = 891


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
value = 171
triggerall = numhelper(174) = 0
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 150
triggerall = random = [0,30]
trigger1 = statetype = S
ignorehitpause = 1

[State 0]
type = ChangeState
value = 130
triggerall = numhelper(730) = 0
triggerall = var(59) != 0 && roundstate =2
triggerall = StateType = S
triggerall = P2Movetype = A
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) 
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
trigger1 = ctrl
trigger1 = p2stateno= [1000,3999]
trigger2 = P2BodyDist X < 90
trigger2 = ctrl
trigger2 = p2stateno= [200,299]


[State 0]
type = ChangeState
value = 172
triggerall = numhelper(730) = 0
triggerall = numhelper(174) = 0
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 152
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
trigger1 = statetype = C
ignorehitpause = 1

[State 0]
type = ChangeState
value = 131
triggerall = numhelper(730) = 0
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
value = 173
triggerall = numhelper(730) = 0
triggerall = numhelper(174) = 0
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 154
triggerall = random = [0,30]
trigger1 = statetype = A
ignorehitpause = 1

[State -1]
type = ChangeState
value = 0
triggerall = var(59) != 0
triggerall = roundstate = 3
trigger1 = statetype != A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = AILevel >= 7
triggerall = statetype != A
triggerall = random = [0,20]
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = stateno != 102
triggerall = p2bodydist x = [150,300]


[State -1]
type = ChangeState
value = 104
triggerall = var(59) = 1
triggerall = numhelper(109) = 0
triggerall = AILevel >= 7
triggerall = statetype = A
triggerall = random = [0,20]
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = stateno != 102
triggerall = p2bodydist x = [150,300]

;===========================================================================
;Artificial Intelligence - Light Normals
;===========================================================================
   
[State 0]
type = ChangeState
triggerall = P2statetype != A
trigger1 = p2stateno != [5100,5150]
triggerall = var(59) != 0 
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X <30 
triggerall = enemynear, statetype = S     
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
triggerall = P2statetype != A
trigger1 = p2stateno != [5100,5150]
triggerall = var(59) != 0
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 20 
triggerall = enemynear, statetype = S  
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
triggerall = P2statetype != A
triggerall = var(59) != 0 
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 40 
triggerall = enemynear, statetype = S
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
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype = A   
triggerall = p2bodydist X <= 40
triggerall = p2dist y = [-50,0]
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
triggerall = p2dist y = [-50,0]
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900
trigger5 = stateno = 600
trigger5 = movehit                                                            
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
triggerall = movetype != H
triggerall = stateno != [5000,5110]
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2statetype != L
trigger1 = AIlevel > 8 || ((random < 799) && Time <= 1) ; Difficulty level
trigger1 = ctrl
trigger1= p2bodydist X < 10

;===========================================================================
;Artificial Intelligence - Normals
;===========================================================================
   
[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 16
triggerall = enemynear, statetype = S        
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
triggerall = statetype != A
triggerall = stateno = 200 
triggerall = movehit = 1
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
triggerall = statetype != A
triggerall = stateno = 220
triggerall = movehit > 3
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900
value = 221



[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 42
triggerall = enemynear, statetype = S        
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
triggerall = statetype != A
triggerall = stateno = 210 
triggerall = movehit = 1
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
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 25
triggerall = enemynear, statetype = S      
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
triggerall = statetype != A
triggerall = stateno = 230 
triggerall = movehit = 1
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
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 40 
triggerall = enemynear, statetype = S      
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                          
value = 250 

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A
triggerall = stateno = 240
triggerall = movehit = 1
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900   
value = 250


[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A
triggerall = stateno = 450
triggerall = movehit > 3
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900
value = 251


[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 13  
triggerall = enemynear, statetype = S   
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
triggerall = statetype != A
triggerall = stateno = 400 
triggerall = movecontact
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
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 25   
triggerall = enemynear, statetype = S  
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = p2bodydist x = [0,25]
trigger4 = random < 600                                                           
value = 420 


[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A
triggerall =  stateno = 410|| stateno = 440
triggerall = movehit = 1
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
triggerall = p2bodydist X < 12   
triggerall = enemynear, statetype = S  
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
triggerall = statetype != A
triggerall =  stateno = 430
triggerall = movecontact
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
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype != A   
triggerall = p2bodydist X < 39   
triggerall = enemynear, statetype = S  
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900                                                         
value = 450 

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A
triggerall =  stateno = 250||stateno = 440
triggerall = movecontact
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900
value = 450


[State 0]
type = ChangeState
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype = A   
triggerall = p2bodydist X <= 100
triggerall = p2dist y = [-30,60]  
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
triggerall = statetype = A
triggerall = stateno = 600 || stateno = 630 
triggerall = movecontact
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
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype = A   
triggerall = p2bodydist X <= 100
triggerall = p2dist y = [-30,60]  
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
triggerall = statetype = A
triggerall = stateno = 610 || stateno = 640 
triggerall = movecontact
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
triggerall = var(59) != 0 && roundstate =2
triggerall = Ctrl
triggerall = statetype = A   
triggerall = p2bodydist X <= 100
triggerall = p2dist y = [-30,60]  
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
triggerall = statetype = A
triggerall = stateno = 600 || stateno = 630 
triggerall = movecontact
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900
value = 640

;===========================================================================
;Artificial Intelligence - Specials
;===========================================================================


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
value = 1110

[State 0]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A
triggerall = p2movetype=A && ctrl && p2bodydist x <100
triggerall = p2stateno=[400,499]
trigger1 = AIlevel > 1 
trigger1 = random <= 50 
trigger2 = AIlevel > 3
trigger2 = random <= 300 
trigger3 = AIlevel > 6 
trigger3 = random <= 500  
trigger4 = AIlevel > 8                 
trigger4 = random <= 900 
value = 1200

[State -1,32]
type = ChangeState
triggerall = numhelper(2000) = 0
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A 
triggerall = p2bodydist X > 100
triggerall = ctrl
trigger1 = AIlevel < 6 
trigger1 = random <= 3  
trigger2 = AIlevel > 8                 
trigger2 = random <= 100 
value = 1400


[State -1,32]
type = ChangeState
triggerall = numhelper(2100) = 0
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A 
triggerall = p2bodydist X > 100
triggerall = ctrl
trigger1 = AIlevel < 6 
trigger1 = random <= 3  
trigger2 = AIlevel > 8                 
trigger2 = random <= 100 
value = 1410


[State -1,32]
type = ChangeState
triggerall = numhelper(2200) = 0
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A 
triggerall = p2bodydist X > 100
triggerall = ctrl
trigger1 = AIlevel < 6 
trigger1 = random <= 3  
trigger2 = AIlevel > 8                 
trigger2 = random <= 100 
value = 1420


[State -1,32]
type = ChangeState
triggerall = numhelper(2300) = 0
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A 
triggerall = p2bodydist X > 100
triggerall = ctrl
trigger1 = AIlevel < 6 
trigger1 = random <= 3  
trigger2 = AIlevel > 8                 
trigger2 = random <= 100 
value = 1430


[State -1,32]
type = ChangeState
triggerall = numhelper(2400) = 0
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A 
triggerall = p2bodydist X > 100
triggerall = ctrl
trigger1 = AIlevel < 6 
trigger1 = random <= 3  
trigger2 = AIlevel > 8                 
trigger2 = random <= 100 
value = 1440


[State -1,32]
type = ChangeState
triggerall = numhelper(2500) = 0
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = statetype != A 
triggerall = p2bodydist X > 100
triggerall = ctrl
trigger1 = AIlevel < 6 
trigger1 = random <= 3  
trigger2 = AIlevel > 8                 
trigger2 = random <= 100 
value = 1450

;===========================================================================
;Artificial Intelligence - Supers
;===========================================================================

[State -1, ]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = statetype = S && var(59) != 0 
triggerall = statetype !=A
triggerall = stateno != [800,850]
triggerall = p2bodydist x = [50,150]
triggerall = AIlevel > 6 || (( random = [0,3] ) && Time <= 1)  
trigger1=(stateno=[200,210]) 
trigger1 =movehit && p2movetype=H
trigger2=(stateno=[230,499]) 
trigger2 =movehit && p2movetype=H
trigger3 = stateno = [1200,1399]
trigger3 = movehit&& p2movetype=H
trigger4= enemynear,anim=5300 && ctrl 


[State 0]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
triggerall = p2bodydist x < 40
triggerall = statetype = S
triggerall = stateno != [800,899]
trigger1=(stateno=[200,210]) 
trigger1 =movehit && p2movetype=H
trigger2=(stateno=[230,499]) 
trigger2 =movehit && p2movetype=H
trigger3 = stateno = [1200,1399]
trigger3 = movehit&& p2movetype=H
trigger4= enemynear,anim=5300 && ctrl 


[State -1, ]
type = ChangeState
value = 3200
triggerall = numhelper(2000) = 1
triggerall = numhelper(2100) = 1
triggerall = numhelper(2200) = 1
triggerall = numhelper(2300) = 1
triggerall = numhelper(2400) = 1
triggerall = numhelper(2500) = 1
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = stateno != [800,850]
triggerall = power >= 3000
triggerall = AILevel >= 8
triggerall = p2statetype !=A||((p2bodydist y =[-55,-20])&&enemy,vel y >=0)
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [0,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >90
trigger2=(stateno=[200,499]) 
trigger2 =movehit && p2movetype=H
trigger3 = stateno = [1200,1399]
trigger3 = movehit&& p2movetype=H
trigger4= enemynear,anim=5300 && ctrl


;=======================================================================================
;HYPER COMBOS


[State -1, ]
type = ChangeState
value = 3200
triggerall = numhelper(2000) = 1
triggerall = numhelper(2100) = 1
triggerall = numhelper(2200) = 1
triggerall = numhelper(2300) = 1
triggerall = numhelper(2400) = 1
triggerall = numhelper(2500) = 1
triggerall = Command = "KTE"
triggerall = var(59) = 0
triggerall = statetype != a
triggerall = power >= 3000
trigger1 = ctrl
trigger2=(stateno=[200,699]) 
trigger3 = stateno = [1000,1999]

[State -1, ]
type = ChangeState
value = 3100
triggerall = Command = "TMP"
triggerall = var(59) = 0
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = ctrl
trigger2=(stateno=[200,699]) 
trigger3 = stateno = [1000,1999]

[State -1, ]
type = ChangeState
value = 3000
triggerall = Command = "STH"
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,699]) 
trigger3 = stateno = [1000,1999]


;=======================================================================================
;SUPER COMBOS

;
[state -1, a2]
type = ChangeState
value = 1400
triggerall = statetype != A
triggerall = numhelper(2000) = 0
triggerall = command = "13"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1410
triggerall = statetype != A
triggerall = numhelper(2100) = 0
triggerall = command = "14"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1420
triggerall = statetype != A
triggerall = numhelper(2200) = 0
triggerall = command = "15"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1430
triggerall = statetype != A
triggerall = numhelper(2300) = 0
triggerall = command = "10"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1440
triggerall = statetype != A
triggerall = numhelper(2400) = 0
triggerall = command = "11"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1450
triggerall = statetype != A
triggerall = numhelper(2500) = 0
triggerall = command = "12"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1100
triggerall = statetype != A
triggerall = numhelper(1100) = 0
triggerall = command = "04"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1110
triggerall = statetype != A
triggerall = numhelper(1100) = 0
triggerall = command = "05"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1120
triggerall = statetype != A
triggerall = numhelper(1100) = 0
triggerall = command = "06"
trigger1 = ctrl
trigger2 = stateno = [200,699]


;
[state -1, a2]
type = ChangeState
value = 1300
triggerall = numhelper(2000) = 1
triggerall = statetype != A
triggerall = command = "13"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1310
triggerall = numhelper(2100) = 1
triggerall = statetype != A
triggerall = command = "14"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1320
triggerall = numhelper(2200) = 1
triggerall = numhelper(1320) = 0
triggerall = statetype != A
triggerall = command = "15"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1330
triggerall = statetype != A
triggerall = command = "10"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1340
triggerall = statetype != A
triggerall = command = "11"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1350
triggerall = statetype != A
triggerall = command = "12"
trigger1 = ctrl
trigger2 = stateno = [200,699]


;
[state -1, a2]
type = ChangeState
value = 1200
triggerall = statetype != A
triggerall = command = "07" 
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1210
triggerall = statetype != A
triggerall = command = "08" 
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1220
triggerall = statetype != A
triggerall = command = "09" 
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall = command = "01" 
trigger1 = ctrl
trigger2 = stateno = [200,499]

;
[state -1, a2]
type = ChangeState
value = 1010
triggerall = statetype != A
triggerall = command = "02"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;
[state -1, a2]
type = ChangeState
value = 1020
triggerall = statetype != A
triggerall = command = "03" 
trigger1 = ctrl
trigger2 = stateno = [200,499]

;
[state -1, a2]
type = ChangeState
value = 1030
triggerall = statetype = A
triggerall = command = "01" 
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1040
triggerall = statetype = A
triggerall = command = "02"
trigger1 = ctrl
trigger2 = stateno = [200,699]

;
[state -1, a2]
type = ChangeState
value = 1050
triggerall = statetype = A
triggerall = command = "03" 
trigger1 = ctrl
trigger2 = stateno = [200,699]


;Super Jump
[state -1]
type = changestate
value = 40
triggerall = var(59) = 0
triggerall = command = "abc"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 420

;Dash Foward
[State -1]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = statetype != a
trigger1 = (command = "FF") && (stateno !=[100,106])
trigger1 = ctrl
trigger2 = (command = "xyz") && (command != "holdback")&& (stateno !=[100,106])
trigger2 = ctrl

;Air Dash FWD
[State -1]
type = ChangeState
value = 104
triggerall = numhelper(109) = 0
triggerall = var(59) = 0
triggerall = statetype = a
trigger1 = (command = "FF") && (stateno !=[100,106])
trigger1 = ctrl
trigger2 = (command = "xyz") && (command != "holdback")&& (stateno !=[100,106])
trigger2 = ctrl


;Hop back
[State -1]
type = ChangeState
value = 102
triggerall = var(59) = 0
triggerall = numhelper(9998) = 0
triggerall = statetype != a
trigger1 = (command = "BB") && (stateno !=[100,106])
trigger1 = ctrl
trigger2 = (command = "xyz") && (command != "holdfwd")&& (stateno !=[100,106])
trigger2 = ctrl

;Air Hop Back
[State -1]
type = ChangeState
value = 106
triggerall = var(59) = 0
triggerall = numhelper(109) = 0
triggerall = statetype = a
trigger1 = (command = "BB") && (stateno !=[100,106])
trigger1 = ctrl
trigger2 = (command = "xyz") && (command != "holdfwd")&& (stateno !=[100,106])
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

[State -1, Throw]
type = changestate
value = 800
triggerall = var(59) = 0
trigger1 = command = "z"
trigger1 = command = "holdfwd" 
trigger1 = statetype = s
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger1 = p2statetype = s || p2statetype = c
trigger1 = p2movetype != h

[State -1, Throw]
type = changestate
value = 810
triggerall = var(59) = 0
trigger1 = command = "z"
trigger1 = command = "holdback"
trigger1 = statetype = s
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger1 = p2statetype = s || p2statetype = c
trigger1 = p2movetype != h
;Stand Light Punch
[state -1]
type = changestate
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl


;Stand Medium Punch 
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

;Stand Strong Punch
[state -1]
type = changestate
value = 221
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9= stateno = 410 && movecontact
trigger10= stateno = 430 && movecontact
trigger11= stateno = 440 && movecontact
trigger12= stateno = 450 && movecontact

;Stand Strong Punch
[state -1]
type = changestate
value = 220
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9= stateno = 430 && movecontact
trigger10= stateno = 440 && movecontact
trigger11= stateno = 450 && movecontact

;Standing Light Kick
[state -1]
type = changestate
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact

;Standing Medium Punch
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
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

;Standing Strong Kick 02
[state -1]
type = changestate
value = 251
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9= stateno = 410 && movecontact
trigger10= stateno = 430 && movecontact
trigger11= stateno = 440 && movecontact
trigger12= stateno = 450 && movecontact

;Standing Strong Kick 01
[state -1]
type = changestate
value = 250
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9= stateno = 440 && movecontact

;Crouching Light Punch
[state ]
type = changestate
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact

;Crouching Medium Punch
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

;Crouching Strong Punch
[state -1]
type = changestate
value = 420
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact
trigger12 = stateno = 450 && movecontact
trigger13 = stateno = 451 && movecontact

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

;Crouching Medium Kick
[state -1]
type = changestate
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact


;Crouching Strong Kick 01
[state -1]
type = changestate
value = 450
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact



;Jump Light Punch
[state -1]
type = changestate
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = a
trigger1 = ctrl

;Jump Medium Punch
[state -1]
type = changestate
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600&& MoveContact
trigger3 = StateNo = 630&& MoveContact


;Jump Strong Punch
[state -1]
type = changestate
value = 620
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;Jump Light Kick
[state -1]
type = changestate
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact

;Jump Medium Kick
[state -1]
type = changestate
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 610) && movecontact

;Jump Strong Kick 02
[state -1]
type = changestate
value = 651
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holdfwd" && command = "holddown"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;Jump Strong Kick 01
[state -1]
type = changestate
value = 650
triggerall = var(59) = 0
triggerall = command = "c"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

; Push Block (Stand)
[State -1]
type = ChangeState
value = 171
triggerall = var(59) = 0
triggerall = numhelper(174) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 172
triggerall = var(59) = 0
triggerall = numhelper(174) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 173
triggerall = var(59) = 0
triggerall = numhelper(174) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

[State -1, Forward Recovery Roll]
type = ChangeState
value = 891
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1
