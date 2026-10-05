;-| Button Remapping |-----------------------------------------------------
[Remap]
x=x
y=y
z=z
a=a
b=b
c=c
s=s
;-| Default Values |-------------------------------------------------------
[Defaults]
command.Time=15
command.buffer.Time=1


;-| Super Motions |--------------------------------------------------------
[Command]
name="BoundaryPeak"
command=~D, DB, B, D, DB, B, z+c
time=32
[Command]
name="BoundaryPeak"
command=~D, DB, B, D, DB, B, a+x
time=32
[Command]
name="BoundaryPeak"
command=~D, DB, B, D, DB, B, b+y
time=32

[Command]
name="M.E.D.P"
command=~D, DF, F, D, DF, F, z+c
time=32
[Command]
name="M.E.D.P"
command=~D, DF, F, D, DF, F, a+x
time=32
[Command]
name="M.E.D.P"
command=~D, DF, F, D, DF, F, b+y
time=32

[Command]
name="DashSlices"
command=~D, DF, F, D, DF, F, x
time=32
[Command]
name="DashSlices"
command=~D, DF, F, D, DF, F, y
time=32
[Command]
name="DashSlices"
command=~D, DF, F, D, DF, F, z
time=32
[Command]
name="DashSlices"
command=~D, DF, F, D, DF, F, ~x
time=32
[Command]
name="DashSlices"
command=~D, DF, F, D, DF, F, ~y
time=32
[Command]
name="DashSlices"
command=~D, DF, F, D, DF, F, ~z
time=32

[Command]
name="MaxDashSlices"
command=~D, DF, F, D, DF, F, x+z
time=32
[Command]
name="MaxDashSlices"
command=~D, DF, F, D, DF, F, x+y
time=32
[Command]
name="MaxDashSlices"
command=~D, DF, F, D, DF, F, y+z
time=32

[Command]
name="ShadowSlash"
command=~D, DB, B, D, DB, B, x
time=32
[Command]
name="ShadowSlash"
command=~D, DB, B, D, DB, B, y
time=32
[Command]
name="ShadowSlash"
command=~D, DB, B, D, DB, B, z
time=32
[Command]
name="ShadowSlash"
command=~D, DB, B, D, DB, B, ~x
time=32
[Command]
name="ShadowSlash"
command=~D, DB, B, D, DB, B, ~y
time=32
[Command]
name="ShadowSlash"
command=~D, DB, B, D, DB, B, ~z
time=32

[Command]
name="MaxShadowSlash"
command=~D, DB, B, D, DB, B, x+z
time=32
[Command]
name="MaxShadowSlash"
command=~D, DB, B, D, DB, B, x+y
time=32
[Command]
name="MaxShadowSlash"
command=~D, DB, B, D, DB, B, y+z
time=32

[Command]
name="HeelRaid"
command=~D, DF, F, D, DF, F, a
time=32
[Command]
name="HeelRaid"
command=~D, DF, F, D, DF, F, b
time=32
[Command]
name="HeelRaid"
command=~D, DF, F, D, DF, F, c
time=32
[Command]
name="HeelRaid"
command=~D, DF, F, D, DF, F, ~a
time=32
[Command]
name="HeelRaid"
command=~D, DF, F, D, DF, F, ~b
time=32
[Command]
name="HeelRaid"
command=~D, DF, F, D, DF, F, ~c
time=32

[Command]
name="MaxHeelRaid"
command=~D, DF, F, D, DF, F, a+b
time=32
[Command]
name="MaxHeelRaid"
command=~D, DF, F, D, DF, F, b+c
time=32
[Command]
name="MaxHeelRaid"
command=~D, DF, F, D, DF, F, a+c
time=32
;-| FlashSheath Motions |------------------------------------------------------
[Command]
name="DP1"
command=~F, D, DF, a
time=18
[Command]
name="DP2"
command=~F, D, DF, b
time=18
[Command]
name="DP3"
command=~F, D, DF, c
time=18
[Command]
name="DP1"
command=~F, D, DF, ~a
time=18
[Command]
name="DP2"
command=~F, D, DF, ~b
time=18
[Command]
name="DP3"
command=~F, D, DF, ~c
time=18

[Command]
name="DPEX"
command=~F, D, DF, a+b
time=18
[Command]
name="DPEX"
command=~F, D, DF, b+c
time=18
[Command]
name="DPEX"
command=~F, D, DF, a+c
time=18

[Command]
name="FlashSheath1"
command=~D, DF, F, x
time=15
[Command]
name="FlashSheath2"
command=~D, DF, F, y
time=15
[Command]
name="FlashSheath3"
command=~D, DF, F, z
time=15
[Command]
name="FlashSheath1"
command=~D, DF, F, ~x
time=15
[Command]
name="FlashSheath2"
command=~D, DF, F, ~y
time=15
[Command]
name="FlashSheath3"
command=~D, DF, F, ~z
time=15

[Command]
name="FlashSheathEX"
command=~D, DF, F, x+z
time=15
[Command]
name="FlashSheathEX"
command=~D, DF, F, y+z
time=15
[Command]
name="FlashSheathEX"
command=~D, DF, F, x+y
time=15

[Command]
name="Blitz1"
command=~D, DB, B, x
time=15
[Command]
name="Blitz2"
command=~D, DB, B, y
time=15
[Command]
name="Blitz3"
command=~D, DB, B, z
time=15
[Command]
name="Blitz1"
command=~D, DB, B, ~x
time=15
[Command]
name="Blitz2"
command=~D, DB, B, ~y
time=15
[Command]
name="Blitz3"
command=~D, DB, B, ~z
time=15

[Command]
name="BlitzEX"
command=~D, DB, B, x+y
time=15
[Command]
name="BlitzEX"
command=~D, DB, B, x+z
time=15
[Command]
name="BlitzEX"
command=~D, DB, B, y+z
time=15

[Command]
name="MoleSting1"
command=~D, DB, B, a
time=15
[Command]
name="MoleSting2"
command=~D, DB, B, b
time=15
[Command]
name="MoleSting3"
command=~D, DB, B, c
time=15
[Command]
name="MoleSting1"
command=~D, DB, B, ~a
time=15
[Command]
name="MoleSting2"
command=~D, DB, B, ~b
time=15
[Command]
name="MoleSting3"
command=~D, DB, B, ~c
time=15

[Command]
name="MoleStingEX"
command=~D, DB, B, a+c
time=15
[Command]
name="MoleStingEX"
command=~D, DB, B, b+c
time=15
[Command]
name="MoleStingEX"
command=~D, DB, B, a+b
time=15
;-------------------------------------------------------------
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, x
time=32
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, y
time=32
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, z
time=32
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, ~x
time=32
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, ~y
time=32
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, ~z
time=32
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, a
time=32
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, b
time=32
[Command]
name=  "412k" ;Zero Counter
command=~B, DB, D, c
time=32
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, ~a
time=32
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, ~b
time=32
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, ~c
time=32
;-| Double Tap |-----------------------------------------------------------
[Command]
name="FF"     ;Required (do not remove)
command=F, F
time=10
[Command]
name="BB"     ;Required (do not remove)
command=B, B
time=10
[Command]
name="UU"     
command=U, U
time=10
[Command]
name="DD"     
command=D, D
time=10
;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name="recovery";Required (do not remove)
command=x+y
time=1
[Command]
name= "recovery"
command=a+x
time=1
[Command]
name="recovery"
command=y+z
time=1
[Command]
name="recovery"
command=x+z
time=1
[Command]
name="recovery"
command=a+b
time=1
[Command]
name="recovery"
command=b+c
time=1
[Command]
name="recovery"
command=a+c
time=1

[Command]
name="xy"
command=x+y
time=1
[Command]
name="xz"
command=x+z
time=1
[Command]
name="yz"
command=y+z
time=1

[Command]
name="pp"
command=x+y
time=1
[Command]
name="pp"
command=x+z
time=1
[Command]
name="pp"
command=y+z
time=1
[Command]
name="kk"
command=a+b
time=1
[Command]
name="kk"
command=a+c
time=1
[Command]
name="kk"
command=b+c
time=1
[Command]
name="a+x"
command=a+x
time=1
[Command]
name="b+y"
command=b+y
time=1
[Command]
name="c+z"
command=c+z
time=1
[Command]
name="a+c"
command=a+c
time=1
[Command]
name="a+b"
command=a+b
time=1
[Command]
name="b+c"
command=b+c
time=1
;-| Single Button |---------------------------------------------------------
[Command]
name="a"
command=a
time=1
[Command]
name="b"
command=b
time=1
[Command]
name="c"
command=c
time=1
[Command]
name="x"
command=x
time=1
[Command]
name="y"
command=y
time=1
[Command]
name="z"
command=z
time=1
[Command]
name="s"
command=s
time=1
;-| Single Dir |------------------------------------------------------------
[Command]
name="fwd" ;Required (do not remove)
command=$F
time=1
[Command]
name="downfwd"
command=$DF
time=1
[Command]
name="down" ;Required (do not remove)
command=$D
time=1
[Command]
name="downback"
command=$DB
time=1
[Command]
name="back" ;Required (do not remove)
command=$B
time=1
[Command]
name="upback"
command=$UB
time=1
[Command]
name="up" ;Required (do not remove)
command=$U
time=1
[Command]
name="upfwd"
command=$UF
time=1
;-| Hold Button |--------------------------------------------------------------
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holds"
command=/s
time=1
;-| Hold Dir |--------------------------------------------------------------
[Command]
name="holdfwd";Required (do not remove)
command=/$F
time=1
[Command]
name="holdback";Required (do not remove)
command=/$B
time=1
[Command]
name="holdup" ;Required (do not remove)
command=/$U
time=1
[Command]
name="holddown";Required (do not remove)
command=/$D
time=1
[Command]
name="holdfwd" ;Required (do not remove)
command=/$F
time=1
[Command]
name="holddownfwd"
command=/$DF
time=1
[Command]
name="holddown" ;Required (do not remove)
command=/$D
time=1
[Command]
name="holddownback"
command=/$DB
time=1
[Command]
name="holdback" ;Required (do not remove)
command=/$B
time=1
[Command]
name="holdupback"
command=/$UB
time=1
[Command]
name="holdup" ;Required (do not remove)
command=/$U
time=1
[Command]
name="holdupfwd"
command=/$UF
time=1
;---------------------------------------------------------------------------
;Release Direction
[Command]
name="rlsfwd"
command=~$F
time=1
[Command]
name="rlsback"
command=~$B
time=1
[Command]
name="rlsup"
command=~$U
time=1
[Command]
name="rlsdown"
command=~$D
time=1
;--------------------------------------------------------------------------
;Release Button
[Command]
name="rlsx"
command=~x
time=1
[Command]
name="rlsy"
command=~y
time=1
[Command]
name="rlsz"
command=~z
time=1
[Command]
name="rlsa"
command=~a
time=1
[Command]
name="rlsb"
command=~b
time=1
[Command]
name="rlsc"
command=~c
time=1
;---------------------------------------------------------------------------
;Other
[Command]
name="highjump"
command=$D, $U
time=15
[Command]
name="DU"
command=D, U
time=18
[Command]
name="DU"
command=DB, UF
time=18
[Command]
name="DU"
command=DF, UB
time=18
[Command]
name="DU"
command=$D, UF
time=18
[Command]
name="DU"
command=$D, UB
time=18
;---------------------------------------------------------------------------
[Statedef -1]

[State -1, Tick Fix]
type=CtrlSet
triggerall=!ctrl && roundstate=2
trigger1=(StateNo=52 || StateNo=101 || StateNo=5120) && !AnimTime
trigger2=(StateNo=[200,499]) && !AnimTime
trigger3=StateNo=810 && !AnimTime
trigger4=(StateNo=5001 || StateNo=5011 || StateNo=151 || StateNo=153) && HitOver
trigger5=(StateNo=[700,715]) && !AnimTime
trigger6=(StateNo=[6080,6082]) && !AnimTime
value=1
;-----------------------------------------------------------------
[State -1, Parry Stand]
type=HitOverride
triggerall=!AILevel && roundstate=2 && statetype!= A 
triggerall=command="fwd" && command!= "back" && command != "up" && command != "down"
trigger1=Ctrl
attr=SA,AA,AP
stateno=6080
slot=0
time=5
;------------------------------------------------------------------
[State -1, Crouching Parry]
type=HitOverride
triggerall=!AILevel && roundstate=2 && statetype!= A 
triggerall=(statetype=S && command="down")|| (statetype=C && command="fwd") && command != "back" && command != "up"
trigger1=Ctrl
attr=C,AA,AP
stateno=6081
slot=0
time=5
;-------------------------------------------------------------------
[State -1, Aerial Parry]
type= HitOverride
triggerall=!AILevel && roundstate=2 && statetype= A 
triggerall=(statetype= A && command="fwd") && command != "back" && command != "up" && command != "down"
trigger1=Ctrl
attr=SA,AA,AP
stateno=6082
forceair=1
slot=0
time=5
;--------------------------------------------------------------------
[State -1, Boundary Peak]
type=ChangeState
value=3500
triggerall=!AILevel && RoundState=2 
triggerall=StateType != A && var(20)<=60 && power >= 3000 
triggerall=command="BoundaryPeak"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)||var(7)
;--------------------------------------------------------------------
[State -1, Seventeen Dissection/Mystic Eyes of Death Perception]
type=ChangeState
value=3400+(50*var(11))
triggerall=!AILevel && RoundState=2 
triggerall=StateType != A && var(20)<=60 && power >= 3000 
triggerall=!Numtarget(3450)
triggerall=command="M.E.D.P"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)||var(7)
;----------------------------------------------------------------------
[State -1, Max Hornet's Nest]
type=ChangeState
value=3350
triggerall=!AILevel && RoundState=2 
triggerall=StateType=A && command="MaxDashSlices"
triggerall=pos y <=-15 
triggerall=!Numtarget(3350) && stateno!=3350 
triggerall=var(20) <=60 && power >=2000
trigger1=ctrl
trigger2=var(6)||var(7)
;----------------------------------------------------------------------
[State -1, Hornet's Nest]
type=ChangeState
value=3300
triggerall=!AILevel && RoundState=2 
triggerall=StateType=A && command="DashSlices"
triggerall=pos y <=-15 
triggerall=!Numtarget(3300) && stateno!=3300 
triggerall=var(20) <=60 && power >=1000
trigger1=ctrl
trigger2=var(6)||var(7)
;----------------------------------------------------------------------
[State -1, Max Flying Graze/Max Shadow Slash]
type=ChangeState
value=3275-(25*var(11))
triggerall=!AILevel && RoundState=2 
triggerall=(stateno!= [3200,3250]) && StateType != A 
triggerall=var(20) <= 60 && power >= 2000 && command="MaxShadowSlash"
trigger1=ctrl || StateNo=40 || StateNo=52 || (stateno=[100,102])
trigger2=var(6)||var(7)
;----------------------------------------------------------------------
[State -1, Flying Graze/Shadow Slash]
type=ChangeState
value=3225-(25*var(11))
triggerall=!AILevel && RoundState=2 
triggerall=(stateno!= [3200,3201]) && StateType != A 
triggerall=var(20) <= 60 && power >= 1000 && command="ShadowSlash"
trigger1=ctrl || StateNo=40 || StateNo=52 || (stateno=[100,102])
trigger2=var(6)||var(7)
;----------------------------------------------------------------------
[State -1, Max Inverse Heel Raid/Max Rising Mole Sting]
type=ChangeState
value=3150+(25*var(11))
triggerall=!AILevel && RoundState=2 
triggerall=(stateno!= [3150,3175]) && StateType != A 
triggerall=!Numtarget(3125) && !Numtarget(3175)
triggerall=var(20) <= 60 && power >= 2000 && command="MaxHeelRaid"
trigger1=ctrl || StateNo=40 || StateNo=52 || (stateno=[100,102])
trigger2=var(6)||var(7)
;----------------------------------------------------------------------
[State -1, Inverse Heel Raid/Rising Mole Sting]
type=ChangeState
value=3100+(25*var(11))
triggerall=!AILevel && RoundState=2 
triggerall=(stateno!= [3100,3125]) && StateType != A 
triggerall=!Numtarget(3125) && !Numtarget(3175)
triggerall=var(20) <= 60 && power >= 1000 && command="HeelRaid"
trigger1=ctrl || StateNo=40 || StateNo=52 || (stateno=[100,102])
trigger2=var(6)||var(7)
;----------------------------------------------------------------------
[State -1, Max Dashing Slices/Max Hundred Thousand Slashes]
type=ChangeState
value=3050+(25*var(11))
triggerall=!AILevel && RoundState=2 
triggerall=(stateno!=[3050,3075])  && StateType != A 
triggerall=var(20) <= 60 && power >= 2000 && command="MaxDashSlices"
trigger1=ctrl || StateNo=40 || StateNo=52 || (stateno=[100,102])
trigger2=var(6)||var(7)
;----------------------------------------------------------------------
[State -1, Dashing Slices/Hundred Thousand Slashes]
type=ChangeState
value=3000+(25*var(11))
triggerall=!AILevel && RoundState=2 
triggerall=(stateno!=[3000,3025]) && StateType != A 
triggerall=var(20) <= 60 && power >= 1000 && command="DashSlices"
trigger1=ctrl || StateNo=40 || StateNo=52 || (stateno=[100,102])
trigger2=var(6)||var(7)
;--------------------------------------------------------------------------
[State -1, Sidestep/Dodge]
type=ChangeState
value=Ifelse(command="holdfwd",710,Ifelse(command="holdback",715,700))
triggerall=command="a+x"
triggerall=!AILevel && RoundState=2 && StateType != A
trigger1=(ctrl || (stateno=[100,102]))
;------------------------------------------------------------------------
[State -1, Shiki's Blitz/Soaring Graze]
type=ChangeState
value=Ifelse(command="BlitzEX" && var(20) <= 60 && power>=500,1350,1300)+(25*var(11))
triggerall=!AILevel && RoundState=2 
triggerall=StateType != A && ((command="Blitz1")||(command="Blitz2")||(command="Blitz3")||(command="BlitzEX" && power>=500 && var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno=450) && movecontact && (command="BlitzEX" && power>=500 && var(20) <= 60)
;------------------------------------------------------------------------
[State -1, Mole Sting/Blitz Edge]
type=ChangeState
value=Ifelse(command="MoleStingEX" && var(20) <= 60 && power>=500,1250,1200)+(25*var(11))
triggerall=!AILevel && RoundState=2 
triggerall=StateType != A && ((command="MoleSting1")||(command="MoleSting2")||(command="MoleSting3")||(command="MoleStingEX" && power>=500 && var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno=450) && movecontact && (command="MoleStingEX" && power>=500 && var(20) <= 60)
;------------------------------------------------------------------------
[State -1, Air Flash Run - Six Fish]
type=ChangeState
value=Ifelse(command="DPEX" && var(20) <= 60 && power>=500,1170,1120)
triggerall=!AILevel && RoundState=2 
triggerall=var(11)=0 && StateType=A
triggerall=Pos y<=-25 && ((command="DP1")||(command="DP2")||(command="DP3")||(command="DPEX" && power>=500 && var(20) <= 60))
trigger1=ctrl
trigger2=var(5)
trigger3=((stateno =[600,619])||(stateno =[630,649])) && movecontact 
;------------------------------------------------------------------------
[State -1, Flash Run - Six Fish/Flying Knee]
type=ChangeState
value=Ifelse(command="DPEX" && var(20) <= 60 && power>=500,1150,1100)+(40*var(11))
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="DP1")||(command="DP2")||(command="DP3")||(command="DPEX" && power>=500 && var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno=450) && movecontact && (command="DPEX" && power>=500 && var(20) <= 60)
;------------------------------------------------------------------------
[State -1, Hornet's Sting]
type=ChangeState
value=Ifelse(command="FlashSheathEX" && var(20) <= 60 && power>=500,1450,1400) 
triggerall=!AILevel && RoundState=2 
triggerall=StateType=A && ((command="FlashSheath1")||(command="FlashSheath2")||(command="FlashSheath3")||(command="FlashSheathEX" && power>=500 && var(20) <= 60))
triggerall=var(11)=1 && Pos y<=-25
trigger1=ctrl
trigger2=var(5)
trigger3=((stateno=[600,619])||(stateno=[630,649])) && movecontact
;------------------------------------------------------------------------
[State -1, Flash Sheath - Single Strike/Thousand Slashes]
type=ChangeState
value=Ifelse(command="FlashSheathEX" && var(20) <= 60 && power>=500,1050,1000)+(25*var(11))
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="FlashSheath1")||(command="FlashSheath2")||(command="FlashSheath3")||(command="FlashSheathEX" && power>=500 && var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno=450) && movecontact && (command="FlashSheathEX" && power>=500 && var(20) <= 60)
;========================================================================
[State -1, Zero Counter]
type=ChangeState
value=750
trigger1=StateNo=150 || StateNo=152
trigger1=command="412p" || command="412k"
trigger1=!AILevel && RoundState=2 && StateType != A
trigger1=power >= 1000 && !var(20)
;------------------------------------------------------------------------
[State -1, Throw]
type=ChangeState
value=800
trigger1=(command="holdfwd"||command="holdback")&&(command="pp"||command="kk")
trigger1=!AILevel && RoundState=2 && Statetype!=A && !var(20)
trigger1=ctrl
;------------------------------------------------------------------------
[State -1, Air Throw]
type=ChangeState
value=850
triggerall=(command="holdfwd"||command="holdback")&&(command="pp")
triggerall=!AILevel && RoundState=2 
triggerall=Statetype=A && Pos Y<=-30
trigger1=ctrl
trigger2=((stateno=[600,619])||(stateno=[630,649])) && movecontact && var(55)=2
trigger3=var(11)=1 && stateno=1140
trigger3=movehit
;-------------------------------------------------------------------------
[State -1, Power Charge]
type=ChangeState
value=730
trigger1=command="holdb" && command="holdy"
trigger1=!AILevel && RoundState=2 && StateType != A
trigger1=power < const(data.power) && power < PowerMax && !var(20)
trigger1=ctrl || (stateno=[100,102])
;--------------------------------------------------------------------------
[State -1, Jump]
type=ChangeState
value=123
triggerall= !AILevel && var(55)=2 && roundstate=2 && statetype != A
trigger1=ctrl && command="DU" 
trigger2=stateno=420 && movehit && command="holdup"
;--------------------------------------------------------------------------
[State -1, Custom Combo]
type=ChangeState
value=Ifelse(StateType=A,905,900)
triggerAll=!AILevel && command="c+z" && RoundState=2 && power >= 1000 && !var(20)
trigger1=ctrl || StateNo=52 || (stateno=[100,102])
trigger1=!var(41)
;--------------------------------------------------------------------------
[State -1, Run /Dash Back]
type=ChangeState
value=Ifelse(command="BB",105,102)
trigger1=!AILevel && RoundState=2 && statetype=S
trigger1=command="FF"||command="BB"
trigger1=ctrl
;--------------------------------------------------------------------------
[State -1, Standing Low Punch]
type=ChangeState
value=200
triggerall=!AILevel && Roundstate=2 && statetype != A && command != "holddown"&& command="x"
trigger1=ctrl||stateno=[100,102]
trigger2=var(4)
trigger3=(stateno=200 && anim!=205 || stateno=400 || stateno=430) && movecontact
trigger4=(stateno=[230,239]) && movecontact && var(55)
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type=ChangeState
value=210
triggerall=!AILevel && Roundstate=2 && statetype != A && command != "holddown"&& command="y"
trigger1=ctrl||stateno=[100,102]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439])) && movecontact && var(55)
trigger4=(stateno=200||stateno=230) && movecontact && !var(55)
;---------------------------------------------------------------------------
[State -1, Standing High Punch]
type=ChangeState
value=220
triggerall=!AILevel && Roundstate=2 && statetype != A && command != "holddown"&& command="z"
trigger1=ctrl||stateno=[100,102]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449])) && movecontact && var(55)
trigger4=(stateno=210||stateno=240) && movecontact && !var(55)
;---------------------------------------------------------------------------
[State -1, Standing Low Kick]
type=ChangeState
value=230
triggerall=!AILevel && Roundstate=2 && statetype != A && command != "holddown"&& command="a"
trigger1=ctrl||stateno=[100,102]
trigger2=var(4)
trigger3=(stateno=200 || stateno=230 || stateno=430) && time >= 5 && !var(55)
trigger4=(stateno=[200,209]) && movecontact && var(55)
trigger5=(stateno=430) && movecontact 
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick]
type=ChangeState
value=240
triggerall=!AILevel && Roundstate=2 && statetype != A && command != "holddown"&& command="b"
trigger1=ctrl||stateno=[100,102]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439])) && movecontact && var(55)
trigger4=(stateno=230||stateno=430) && movecontact && !var(55)
;---------------------------------------------------------------------------
[State -1, Standing High Kick]
type=ChangeState
value=250
triggerall=!AILevel && Roundstate=2 && statetype != A && command != "holddown" && command="c"
trigger1=ctrl||stateno=[100,102]
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,419])||(stateno=[430,449])) && movecontact && var(55)
trigger4=(stateno=240||stateno=440) && movecontact && !var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type=ChangeState
value=400
triggerall=!AILevel && Roundstate=2 && statetype != A && command="holddown"&& command="x"
trigger1=ctrl||stateno=[100,102]
trigger2=var(4)
trigger3=(stateno=200 || stateno=400 || stateno=430) && movecontact
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type=ChangeState
value=410
triggerall=!AILevel && Roundstate=2 && statetype != A && command="holddown"&& command="y"
trigger1=ctrl||stateno=[100,102]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439])) && movecontact && var(55)
trigger4=(stateno=200||stateno=400) && movecontact && !var(55)
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type=ChangeState
value=420
triggerall=!AILevel && Roundstate=2 && statetype != A && command="holddown"&& command="z"
trigger1=ctrl||stateno=[100,102]
trigger2=var(4)
trigger3=((stateno=[200,220]) && anim!=222||(stateno=[230,250])||(stateno=[400,419])||(stateno=[430,449]))&& movecontact && var(55)
trigger4=(stateno=210||stateno=410) && movecontact && !var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type=ChangeState
value=430
triggerall=!AILevel && Roundstate=2 && statetype != A && command="holddown"&& command="a"
trigger1=ctrl||stateno=[100,102]
trigger2=var(4)
trigger3=(stateno=200 && anim!=205 || stateno=400 || stateno=430) && movecontact 
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type=ChangeState
value=440
triggerall=!AILevel && Roundstate=2 && statetype != A && command="holddown"&& command="b"
trigger1=ctrl||stateno=[100,102]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439])) && movecontact && var(55)
trigger4=(stateno=230||stateno=430) && movecontact && !var(55)
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type=ChangeState
value=450
triggerall=!AILevel && Roundstate=2 && statetype != A && command="holddown" && command="c"
trigger1=ctrl||stateno=[100,102]
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,449])) && movecontact && var(55)
trigger4=(stateno=240||stateno=440) && movecontact && !var(55)
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type=ChangeState
value=600
triggerall=!AILevel && Roundstate=2 && statetype=A && command="x"
trigger1=ctrl
trigger2=var(4)
trigger3=var(11)=1 && stateno=1140
trigger3=movehit
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type=ChangeState
value=610
triggerall=!AILevel && Roundstate=2 && statetype=A && command="y"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,609])||(stateno=[630,639])) && movecontact && var(55)=2
trigger4=var(11)=1 && stateno=1140
trigger4=movehit
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type=ChangeState
value=620
triggerall=!AILevel && Roundstate=2 && statetype=A && command="z"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,649])) && movecontact && var(55)=2
trigger4=var(11)=1 && stateno=1140
trigger4=movehit
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type=ChangeState
value=630
triggerall=!AILevel && Roundstate=2 && statetype=A && command="a"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,609]) && movecontact && var(55)=2
trigger4=var(11)=1 && stateno=1140
trigger4=movehit
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type=ChangeState
value=640
triggerall=!AILevel && Roundstate=2 && statetype=A && command="b"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,639])) && movecontact && var(55)=2
trigger4=var(11)=1 && stateno=1140
trigger4=movehit
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type=ChangeState
value=650
triggerall=!AILevel && Roundstate=2 && statetype=A && command="c"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,649]) && movecontact && var(55)=2
trigger4=var(11)=1 && stateno=1140
trigger4=movehit
;---------------------------------------------------------------------------
[State -1, Taunt]
type=ChangeState
value=195
triggerall=command="s"
triggerall=!AILevel && Roundstate=2 && stateType != A
triggerall=StateNo != [200,699]
trigger1=ctrl || (stateno=[100,102])
trigger2=var(5)
;--------------------------------------------------------------------------
[State -1, Air Dash]
type=ChangeState
value=110
triggerall=!AILevel && Roundstate=2 && statetype=A 
triggerall=!var(14) && Pos Y<-20 
triggerall=command="FF"||command="UU"||command="DD"||command="BB"
trigger1=ctrl
;--------------------------------------------------------------------------
;AI
;--------------------------------------------------------------------------
[State -1, AI Parry Stand]
type=HitOverride
triggerall=AILevel && statetype != A && roundstate=2
triggerall=Numenemy && random < (250 * (AIlevel ** 2 / 64.0))
triggerall=enemynear, movetype=A && inguarddist
trigger1=ctrl
slot=0
stateno=6080
attr=SA, AA, AP
time=3
;---------------------------------------------------------------
[State -1, AI Crouching Parry]
type=HitOverride
triggerall=AILevel && statetype != A && roundstate=2
triggerall=Numenemy && random < (250 * (AIlevel ** 2 / 64.0))
triggerall=enemynear, movetype=A && inguarddist
trigger1=ctrl
slot=0
stateno=6081
attr=C, AA, AP
time=3
;---------------------------------------------------------------
[State -1, AI Aerial Parry]
type=HitOverride
triggerall=AILevel && statetype=A && roundstate=2
triggerall=Numenemy && random < (250 * (AIlevel ** 2 / 64.0))
triggerall=enemynear, movetype=A && inguarddist
trigger1=ctrl
slot=0
stateno=6082
attr=SCA, AA, AP
time=3
;-------------------------------------------------------------------
[State -1, Throw]
type=ChangeState
value=800
triggerall=AILevel && Random < (500 * (AIlevel ** 2 / 64.0))
triggerall=roundstate=2 && statetype!=A && enemynear,statetype!=L&&(enemynear,stateno!=[5120,5201]) && !var(20)
triggerall=enemynear,movetype!=H&&enemynear,statetype!=A &&enemynear,Hitover&&(p2bodydist x=[0,30])
triggerall=ctrl||stateno=100||stateno=52
trigger1=random>=800
trigger2=enemynear,stateno=[120,155]
trigger2=random>=500
trigger3=stateno=100
trigger4=(p2bodydist x=[0,30])&&random<250
trigger5=(p2stateno=[120,155])&&(p2bodydist x=[0,30])&&random<500
;-------------------------------------------------------------------
[State -1, Air Throw]
type=ChangeState
value=850
triggerall=AILevel && Random < (500 * (AIlevel ** 2 / 64.0)) && !var(20)
triggerall=roundstate=2 && statetype=A&& enemynear,statetype!=L&&(enemynear,stateno!=[5120,5201])
triggerall=enemynear,movetype!=H&&enemynear,statetype=A&&enemynear,Hitover&&(p2bodydist x =[0,30])&&(p2bodydist y =[-50,0])
trigger1=ctrl && random>=800
trigger2=enemynear,stateno=[120,155]
trigger2=ctrl && random>=500
trigger3=ctrl && (p2bodydist x=[0,30]) && random<250
trigger4=ctrl && (p2stateno=[120,155])
trigger4=(p2bodydist x=[0,30]) && random<500
trigger5=((stateno=[600,619])||(stateno=[630,649])) && movehit 
trigger5=var(55)=2 && random<500
trigger6=var(11)=1 && stateno=1140
trigger6=movehit && random<500
;------------------------------------------------------------------------
[State -1, Standing Low Punch AI]
type=ChangeState
value=200
triggerall=AILevel && numenemy && roundstate=2 && stateType != A
triggerall=(p2bodydist x=[-20, 35])  && (p2bodydist y=[-80,5]) && P2statetype != C && P2statetype != L
trigger1=ctrl && random < (500 * (AIlevel ** 2 / 64.0))
trigger2=(stateno=[100,102]) && random < (200 * (AIlevel ** 2 / 64.0))
trigger3=(stateno=[200,209]) && movecontact && random < (400 * (AIlevel ** 2 / 64.0)) && !var(55)
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch AI]
type=ChangeState
value=210
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A 
triggerall=(p2bodydist x=[10, 70]) && p2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (250 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[200,209])|| (stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&& movehit&&var(55)
trigger2=random < 250
trigger3=(stateno=200||stateno=230) && movecontact && !var(55)
trigger3=random<500
;---------------------------------------------------------------------------
[State -1, Standing High Punch AI]
type=ChangeState
value=220
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall=(p2bodydist x=[15, 115]) && (p2bodydist y=[ -80, 80]) && p2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[210,219])|| (stateno=[240,249])||(stateno=[410,419])||(stateno=[440,449]))&& movecontact && var(55)
trigger2=random < 750
trigger3=(stateno=210||stateno=410) && movecontact && !var(55)
trigger3=random < 500
;---------------------------------------------------------------------------
[State -1, Standing Low Kick AI]
type=ChangeState
value=230
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall=(p2bodydist x=[-25, 55]) && p2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (250 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[200,209])|| (stateno=[400,409]))&& movecontact && var(55)
trigger2=random < 200
trigger3=(stateno=230||stateno=430) && movecontact && !var(55)
trigger3=random < 500
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick AI]
type=ChangeState
value=240
triggerall=AILevel && numenemy && roundstate=2 && StateType != A 
triggerall=(p2bodydist x=[0, 95]) && p2statetype != L && p2statetype=S && !(enemynear, hitfall)
trigger1=ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[210,219])|| (stateno=[230,239])||(stateno=[410,419])||(stateno=[430,439]))&& movecontact && var(55)
trigger2=random < 350
trigger3=(stateno=230||stateno=430) && movecontact && !var(55)
trigger3=random < 500
;---------------------------------------------------------------------------
[State -1, Standing High Kick AI]
type=ChangeState
value=250
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != L
triggerall=(p2bodydist x=[30, 90]) && (p2bodydist y=[ -40, 50]) && !(enemynear, hitfall)
trigger1=ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[200,249])||(stateno=[400,419])||(stateno=[430,449])) && movecontact && var(55) && random < 400 
trigger3=(stateno=240||stateno=440) && movecontact && !var(55)
trigger3=random < 500
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type=ChangeState
value=400
triggerall=AILevel && numenemy && roundstate=2 && StateType != A
triggerall=(p2bodydist x=[10, 55]) &&(p2bodydist y=[-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger2=stateno=[100,102]
trigger3=(stateno=[400,409]) && movecontact && random < 400 && !var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type=ChangeState
value=410
triggerall=AILevel && numenemy && roundstate=2 && StateType != A
triggerall=(p2bodydist x=[15, 85]) &&(p2bodydist y=[-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[200,209])|| (stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&& movecontact && var(55)
trigger2=random < 800
trigger3=(stateno=200||stateno=400) && movecontact && !var(55)
trigger3=random < 500
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type=ChangeState
value=420
triggerall=AILevel && numenemy && roundstate=2 && StateType != A
triggerall=(p2bodydist x=[20, 60]) &&(p2bodydist y=[-90,5]) && P2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (125 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[210,220])&& anim!=222|| (stateno=[240,250])||(stateno=[410,419])||(stateno=[440,449]))&& movecontact && var(55)
trigger2=random < 600
trigger3=(stateno=210||stateno=410) && movecontact && !var(55)
trigger3=random < 500
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type=ChangeState
value=430
triggerall=AILevel && numenemy && roundstate=2 && StateType != A
triggerall=(p2bodydist x=[5, 85]) &&(p2bodydist y=[-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[200,209])|| (stateno=[400,409]))&& movecontact && var(55)
trigger3=(stateno=230||stateno=430) && movecontact && !var(55)
trigger3=random < 500
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type=ChangeState
value=440
triggerall=AILevel && numenemy && roundstate=2 && StateType != A
triggerall=(p2bodydist x=[15, 95]) &&(p2bodydist y=[-110,-25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (125 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[210,219])|| (stateno=[230,239])||(stateno=[410,419])||(stateno=[430,439]))&& movecontact && var(55)
trigger2=random < 350
trigger3=(stateno=230||stateno=430) && movecontact && !var(55)
trigger3=random < 500
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type=ChangeState
value=450
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall=(p2bodydist x=[25, 110]) && (p2bodydist y=[ -50, 50]) && p2statetype != L && p2statetype=S && !(enemynear, hitfall)
trigger1=ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[220,229])|| (stateno=[240,249])||(stateno=[420,429])||(stateno=[440,449]))&& movecontact && var(55)
trigger2=random < 900
trigger3=(stateno=240||stateno=440) && movecontact && !var(55)
trigger3=random < 500
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type=ChangeState
value=600
triggerall=AILevel && numenemy&&roundstate=2 && statetype=A && (p2bodydist x=[-5,50]) && (p2bodydist y=[ -100, -20]) && p2statetype != L
trigger1=ctrl && random < (250 * (AIlevel ** 2 / 64.0))
trigger2=var(11)=1 && stateno=1140
trigger2=movehit && random<500
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type=ChangeState
value=610
triggerall=AILevel && numenemy&&roundstate=2 && statetype=A && (p2bodydist x=[5, 90]) && (p2bodydist y=[ -85, -10]) && p2statetype != L 
trigger1=ctrl && random < (ifelse((vel x > 0 && p2statetype=A), 250, 150) * (AIlevel ** 2 / 64.0)) 
trigger2=(stateno=[600,609])&& movecontact && var(55)=2 && random < 750
trigger3=(stateno=[630,639])&& movecontact && var(55)=2 && random < 250
trigger4=var(11)=1 && stateno=1140
trigger4=movehit && random<200
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type=ChangeState
value=620
triggerall=AILevel && numenemy&&roundstate=2 && statetype=A && (p2bodydist x=[-20, 100]) && (p2bodydist y=[ -95, 40]) && p2statetype != L 
trigger1=ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2=(stateno=[610,619])&& movecontact && var(55)=2 && random < 700
trigger3=(stateno=[640,649])&& movecontact && var(55)=2 && random < 200
trigger4=var(11)=1 && stateno=1140
trigger4=movehit && random<150
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type=ChangeState
value=630
triggerall=AILevel && numenemy&&roundstate=2 && statetype=A && (p2bodydist x=[-20, 40]) && (p2bodydist y=[ -80, 20]) && p2statetype != L 
trigger1=ctrl && random < (250 * (AIlevel ** 2 / 64.0))
trigger2=(stateno=[600,609])&& movecontact && var(55)=2 && random < 500
trigger3=var(11)=1 && stateno=1140
trigger3=movehit && random<350
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type=ChangeState
value=640
triggerall=AILevel && numenemy&&roundstate=2 && statetype=A && (p2bodydist x=[-10, 80]) && (p2bodydist y=[ -80, 25]) && p2statetype != L 
trigger1=ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2=(stateno=[610,619])&& movecontact && var(55)=2 && random < 250
trigger3=(stateno=[630,639])&& movecontact && var(55)=2 && random < 750
trigger4=var(11)=1 && stateno=1140
trigger4=movehit && random<150
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type=ChangeState
value=650
triggerall=AILevel && numenemy &&roundstate=2 && statetype=A && (p2bodydist x=[20, 90]) && (p2bodydist y=[ -90, 70]) && p2statetype != L 
trigger1=ctrl && random < (500 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall) 
trigger2=(stateno=[610,619])&& movecontact && var(55)=2 && random < 250
trigger3=(stateno=[640,649])&& movecontact && var(55)=2 && random < 750
trigger4=var(11)=1 && stateno=1140
trigger4=movehit && random<100
;---------------------------------------------------------------------------
[State -1, run]
type=changestate
value=102
trigger1=AIlevel && numenemy
trigger1=statetype=S && roundstate=2 && ctrl && random < (400 * (AIlevel ** 2 / 64.0))
trigger1=(stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 120

[State -1, dash]
type=changestate
value=105
triggerall=AIlevel && numenemy
triggerall=statetype=S && roundstate=2 && ctrl
triggerall=(p2bodydist x=[0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1=enemynear, movetype=A && random < (150 * (AIlevel ** 2 / 64.0))
trigger2=enemynear, stateno=5120 && enemynear, animtime= -3 && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type=changestate
value=40
trigger1=AIlevel && numenemy && random < (350 * (AIlevel ** 2 / 64.0))
trigger1=roundstate=2 && statetype != A && ctrl
trigger1=enemynear, movetype=A && p2bodydist x < 120 && enemynear, hitdefattr=SC, AT

[state -1,AI Air Guard]
type=ChangeState
value=132
triggerall=AIlevel && numenemy&& roundstate=2&&InGuardDist
triggerall=ctrl&&statetype=A
trigger1=enemynear,numproj
trigger2=enemynear,HitDefAttr=SCA, NA,SA,HA
trigger2=random <=ifelse(backedgedist<=10,950,900)

[State -1, Guard]
type=changestate
value=120
trigger1=AIlevel && numenemy
trigger1=roundstate=2 && inguarddist
trigger1=ctrl && (stateno != [120, 155]) && !var(20)
trigger1=!(enemynear, hitdefattr=SCA, AT) && (enemynear, time < 120)
trigger1=statetype != A || p2statetype=A
trigger1=random < (ifelse((p2stateno=[200, 699]), 700, ifelse((p2stateno=[1000, 2999]), 850, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Guard]
type=ChangeState
value=120
triggerall= AILevel && numenemy&& (StateNo!=[120,155]) && !(enemynear,ctrl) && random < (500 * (AIlevel ** 2 / 64.0))
triggerall= Ctrl||stateno=21
triggerall=enemynear,Movetype=A && !(enemynear,hitdefattr=SCA,AT) 
trigger1=inguarddist

[State -1,  Jump]
type=ChangeState
value=123
triggerall=AILevel && numenemy && var(55)=2 && statetype != A && roundstate=2 && (p2bodydist y=[-320,5])
triggerall=stateno != 100 && pos y=0 && (enemynear,Statetype!=C)
trigger1=ctrl && enemy,vel y < -1 && (p2bodydist x=[ 10, 70]) && enemynear,movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger2=ctrl && enemy,vel y < -1 && random < (150 * (AIlevel ** 2 / 64.0))
trigger2=enemynear,movetype=H && (enemynear,stateno=5040)
trigger2=p2bodydist x <= 50 && random < (150 * (AIlevel ** 2 / 64.0))
trigger3=ctrl && enemynear,MoveType != H&&P2BodyDist Y < -90&& enemy,vel y <= 0 && random < (350 * (AIlevel ** 2 / 64.0))
trigger4=stateno=420 && anim=425 && MoveHit && random < (800 * (AIlevel ** 2 / 64.0))
trigger5=ctrl && (p2bodydist x<=140) && (enemynear,statetype!=A) && (enemynear,movetype=A) && (enemynear,stateno=[2000,4999]) && random < (750 * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type=changestate
value=750
trigger1=AIlevel && numenemy
trigger1=(p2dist x=[-90, 90]) && stateno=150 || stateno=152
trigger1=roundstate=2 && power >= 2000 && !var(20) && life < 500 && random < (10 * (AIlevel ** 2 / 64.0))

[State -1, powercharge]
type=changestate
value=730
trigger1=AIlevel && numenemy
trigger1=roundstate=2 && statetype != A && ctrl
trigger1=power < const(data.power) && power < powermax && !var(20)
trigger1=random < (50 * (AIlevel ** 2 / 64.0)) && !inguarddist && p2movetype != A && p2dist x >= 160

[State -1, roll forward]
type=changestate
value=710
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && !var(20)
triggerall= (facing=1 && (enemynear,facing=-1)) || (facing=-1 && (enemynear,facing=1))
triggerall= (ctrl || (stateno=[100,102])) && !(enemy,hitdefattr=SC,ST,HT,AT)
trigger1= enemynear,movetype=A && (p2bodydist x=[40,80]) && random<200*(AIlevel**2/64.0)
trigger2= ((enemynear,stateno>=1000 && enemynear,animtime<=-30) || (enemynear,numproj) || (enemynear,numhelper)) && p2bodydist x>=80 && inguarddist && random<250*(AIlevel**2/64.0)

[State -1, roll backward]
type=changestate
value=715
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A 
triggerall= !(enemy,hitdefattr=SC,AT) && !var(20)
triggerall= backedgebodydist>=80 && !(enemy,hitdefattr=SC,ST,HT,AT)
triggerall= !(stateno=[6080,6081]) && !(numtarget(1520)) && !(enemynear,stateno=5300)
triggerall= !numtarget(3000) && !numtarget(3010) && !numtarget(3060) && !(enemynear,stateno=[1110000,1115120])
triggerall= (ctrl || (stateno=[100,102])) && (p2bodydist x=[25,50])
trigger1= enemynear,movetype=A && random<200*(AIlevel**2/64.0)
trigger2= enemynear,statetype=L && random<150*(AIlevel**2/64.0)

[State -1, dodge]
type=changestate
value=700
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && !var(28)
triggerall= (facing=1 && (enemynear,facing=-1)) || (facing=-1 && (enemynear,facing=1))
triggerall= (ctrl || (stateno=[100,102])) && !(enemy,hitdefattr=SC,ST,HT,AT)
trigger1= enemynear,movetype=A && (p2bodydist x=[0,35]) && !var(15) && random<150*(AIlevel**2/64.0)
trigger2= ((enemynear,numproj) || (enemynear,numhelper)) && inguarddist && p2bodydist x>=50 && random<200*(AIlevel**2/64.0)

[State -1, airrecover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall= AILevel && numenemy
triggerall= roundstate=2 && stateno=5050
trigger1= vel y>-1 && alive && canrecover && random < (400 * (AIlevel ** 2 / 64.0))
;--------------------------------------------------------------------
[State -1, Boundary Peak]
type=ChangeState
value=3500
triggerall=AILevel && numenemy 
triggerall=RoundState=2 && (stateno!=[3500,3501]) 
triggerall=StateType != A && var(20)<=0 && power >= 3000 && random < (400 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220]) 
triggerall=(enemynear,Movetype != A) && (enemynear,stateno!=[120,155]) && (p2bodydist x =[10,120]) && (p2bodydist y=[-80,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7) && movehit && random < (500 * (AIlevel ** 2 / 64.0)) 
;--------------------------------------------------------------------
[State -1, Seventeen Dissection/Mystic Eyes of Death Perception]
type=ChangeState
value=3400+(50*var(11))
triggerall=AILevel && numenemy 
triggerall=RoundState=2 && (stateno!=[3400,3470]) 
triggerall=StateType != A && var(20)<=0 && power >= 3000 && random < (350 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220]) 
triggerall=(enemynear,Movetype != A) && (enemynear,stateno!=[120,155]) && (p2bodydist x =[20,180]) && (p2bodydist y=[-80,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7) && movehit && random < (500 * (AIlevel ** 2 / 64.0)) 
;----------------------------------------------------------------------
[State -1, Hornet's Nest]
type=ChangeState
value=Ifelse(power>=2000 && random<=50,3350,3300)
triggerall=AILevel && RoundState=2 
triggerall=StateType=A && pos y <=-15 
triggerall=!Numtarget(3300) && !Numtarget(3350) && (stateno!=[3300,3350]) 
triggerall=var(20) <=60 && power >=1000
triggerall=(enemynear,statetype != L) && (enemynear,stateno!=[5100,5220]) 
triggerall=(p2bodydist x=[25,120])&&(p2bodydist y=[-70,255]) && !(enemynear, hitfall)
trigger1=ctrl
trigger2=var(6)||var(7)
;----------------------------------------------------------------------
[State -1, Flying Graze]
type=ChangeState
value=Ifelse(power>=2000 && random<=50,3275,3225)
triggerall=AILevel && numenemy 
triggerall=RoundState=2 && (prevstateno!=[3200,3245]) 
triggerall=var(11)=0 && !var(16)
triggerall=StateType != A && var(20)<=60 && power >= 1000 && random < (200 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) && (enemynear,stateno!=[5100,5220]) 
triggerall=(p2bodydist x=[75,220])&&(p2bodydist y=[-150,5]) && !(enemynear, hitfall)
trigger1=ctrl || StateNo=40 || StateNo=52 || (stateno=[100,102])
trigger1=ctrl 
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Shadow Slash]
type=ChangeState
value=Ifelse(power>=2000 && random<=50,3250,3200)
triggerall=AILevel && numenemy 
triggerall=RoundState=2 && (prevstateno!=[3200,3251]) 
triggerall=var(11)=1 && !var(16)
triggerall=StateType != A && var(20)<=60 && power >= 1000 && random < (200 * (AIlevel ** 2 / 64.0)) 
triggerall=(enemynear,Movetype = A) && (enemynear, hitdefattr = SCA, NA,SA) 
triggerall=(enemynear,stateno!=5120) && (enemynear,stateno!=[120,155]) 
triggerall=((p2bodydist x =[-5,80])|| inguarddist) &&(p2bodydist y=[-140,35])
trigger1=ctrl 
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Inverse Heel Raid/Rising Mole Sting]
type=ChangeState
value=Ifelse(power>=2000 && random<=50,3150,3100)+(25*var(11))
triggerall=AILevel && numenemy 
triggerall=RoundState=2 && (stateno!=[3100,3145]) 
triggerall=StateType != A && var(20)<=60 && power >= 1000 && random < (200 * (AIlevel ** 2 / 64.0))
triggerall=Ifelse(var(11)=1,enemynear,statetype != A,enemynear,statetype != L) && (enemynear,stateno!=[5100,5220]) 
triggerall=(p2bodydist x=[15,75])&&(p2bodydist y=[-70,5]) && !var(16)
trigger1=ctrl || StateNo=40 || StateNo=52 || (stateno=[100,102])
trigger2=var(6)|| var(7)
;--------------------------------------------------------------------
[State -1, Dashing Slices/Hundred Thousand Slashes]
type=ChangeState
value=Ifelse(power>=2000 && random<=50,3050,3000)+(25*var(11))
triggerall=AILevel && numenemy 
triggerall=RoundState=2 && (stateno!=[3000,3045]) 
triggerall=StateType != A && var(20)<=60 && power >= 1000 && random < (200 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) && (enemynear,statetype != A) && (enemynear,stateno!=[5100,5220]) 
triggerall=(p2bodydist x=[25,120])&&(p2bodydist y=[-90,5]) && !(enemynear, hitfall)
trigger1=ctrl || StateNo=40 || StateNo=52 || (stateno=[100,102])
trigger2=var(6)|| var(7)
;=====================================================================
[State -1, Dashing Slices/Hundred Thousand Slashes]
type=ChangeState
value=Ifelse(power>=500 && random<=50,1050,1000)+(25*var(11))
triggerall=AILevel && numenemy 
triggerall=RoundState=2 && StateType != A && random < (200 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) && Ifelse(var(11)=0,enemynear,statetype != A,enemynear,statetype != C)
triggerall=(enemynear,stateno!=[5100,5220]) && (enemynear,stateno!=[150,155])
triggerall=(p2bodydist x=[25,95]) && (enemynear,vel y=0||(p2bodydist y=[-110,5])) && !(enemynear, hitfall)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,103])
trigger2=var(5)
;---------------------------------------------------------------------
[State -1, Hornet's Sting]
type=ChangeState
value=Ifelse(power>=500 && random<=50,1450,1400)
triggerall=AILevel && numenemy 
triggerall=RoundState=2 && StateType = A && random < (250 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) && (enemynear,stateno!=[5100,5220]) && (enemynear,stateno!=[120,155])
triggerall=(p2bodydist x=[25,175]) && (enemynear,vel y=0||(p2bodydist y=[-90,355])) && !(enemynear, hitfall)
triggerall=var(11)=1 && Pos y<=-25
trigger1=ctrl
trigger2=var(5)
trigger3=((stateno=[600,619])||(stateno=[630,649])) && movecontact
;------------------------------------------------------------------------
[State -1, Shiki's Blitz/Soaring Graze]
type=ChangeState
value=Ifelse(power>=500 && random<=50,1350,1300)+(25*var(11))
triggerall=AILevel && numenemy 
triggerall=RoundState=2 && StateType != A && random < (150 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != A) && (enemynear,statetype != L) 
triggerall=(enemynear,stateno!=[5100,5220]) && (enemynear,stateno!=[120,155])
triggerall=(p2bodydist x>=50) && (enemynear,vel y=0||(p2bodydist y=[-110,5])) && !(enemynear, hitfall)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,103])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, Mole Sting/Blitz Edge]
type=ChangeState
value=Ifelse(power>=500 && random<=50,1250,1200)+(25*var(11))
triggerall=AILevel && numenemy 
triggerall=RoundState=2 && StateType != A && random < (175 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != A) && !var(16) && Ifelse(var(11)=1,fvar(8)<3,enemynear,statetype != L)
triggerall=(enemynear,stateno!=[5100,5220]) && (enemynear,stateno!=[120,155])
triggerall=(p2bodydist x=[50,110]) && (enemynear,vel y=0||(p2bodydist y=[-110,5])) 
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,103])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, Air Flash Run - Six Fish]
type=ChangeState
value=Ifelse(power>=500 && random<=50,1170,1120)
triggerall=AILevel && numenemy 
triggerall=RoundState=2 && StateType = A && random < (200 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) && (enemynear,statetype = A)
triggerall=(enemynear,stateno!=[5100,5220]) && (enemynear,stateno!=[120,155])
triggerall=(p2bodydist x=[5,85]) && (p2bodydist y=[-110,15]) 
triggerall=var(11)=0 && Pos y<=-25
trigger1=ctrl
trigger2=var(5)
trigger3=((stateno=[600,619])||(stateno=[630,649])) && movecontact
;------------------------------------------------------------------------
[State -1, Flash Run - Six Fish/Flying Knee]
type=ChangeState
value=Ifelse(power>=500 && random<=50,1150,1100)+(40*var(11))
triggerall=AILevel && numenemy 
triggerall=RoundState=2 && StateType != A && random < (250 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) && (enemynear,statetype != C) 
triggerall=(enemynear,stateno!=[5100,5220]) && (enemynear,stateno!=[120,155])
triggerall=(p2bodydist x=[10,65]) && (enemynear,vel y=0||(p2bodydist y=[-100,45])) 
triggerall=!var(16)
trigger1=ctrl
trigger2=var(5)