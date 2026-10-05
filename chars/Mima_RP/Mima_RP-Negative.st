;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

;------------------------------------
; NO GUARD DURING FLIGHT
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = var(24)>0 || var(24)=-2 || stateno = 300
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard
ignorehitpause = 1

; RESET FLIGHT TIMER
[State -2, VS]
type = varset
trigger1 = statetype != A
trigger1 = var(24)>0 || var(24)=-2
var(24) = 0

; RESET FLIGHT TIMER
[State -2, VS]
type = varadd
trigger1 = statetype = A
trigger1 = var(24)>0
trigger1 = stateno != 2101
var(24) = -1

;------------------------------------
[State 200, Flare Star Dampen]
type = varset
trigger1 = projhit24010=1
fvar(10) = (fvar(10))*0.90*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && projhit24010=1 && (p2stateno!=[6020,6110])
value = 6020
ID = 4100
ignorehitpause = 1

;------------------------------------
[State 220, First Combo Hit]
type = varset
triggerall = numtarget(22010) && projhit22010=1
trigger1 = target(22010),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 1;Change index
ignorehitpause = 1
persistent = 0

[State 200, Orreries Dampen]
type = varset
trigger1 = projcontact22010=1
trigger1 = var(39)%10=8;6=4;10=8
trigger1 = (var(38):=(var(38)-1))||1
fvar(10) = (fvar(10))*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1

[State #, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && projhit22010=1 && (p2stateno!=[6020,6110])
value = 6020
ID = 22010
ignorehitpause = 1

; COUNTDOWN ORRERIES TIMER
[State -2, VS]
type = varadd
triggerall = roundstate = 2
triggerall = var(39)>0
trigger1 = stateno != [2000,2010]
trigger2 = stateno = 2000 && anim = 2001
trigger2 = animelemtime(16)>=0
trigger3 = stateno=2001
var(39) = -1
ignorehitpause = 1

[State -2, Lock Power]
type = powerset
trigger1 = numhelper(22000)
trigger1 = helper(22000),stateno != [22020,22023]
trigger1 = power > helper(22000),var(1)
value = helper(22000),var(1)
ignorehitpause = 1

[State -2, Reset Orreries Timer]
type = varset
trigger1 = var(38)<=0
trigger1 = var(39)>0
var(39) = 0
ignorehitpause = 1

[State -2, Reset Orreries When Round Over]
type = varset
trigger1 = roundstate>2
trigger2 = !alive
var(39)=0+0*floor(var(38):=0)

;-----------------------------------
; Remove Excess Explods
[State -2, REX]
type = removeexplod
trigger1 = numexplod(20620)
trigger1 = stateno != 620
id = 20620

[State -2, REX]
type = removeexplod
trigger1 = numexplod(21200)
trigger1 = stateno != 1201
id = 21200

;-----------------------------------
; Sound Effect Channel Stop When Hit
[State -2, StopSnd]
type = stopsnd
trigger1 = movetype = H
trigger1 = time <=2
channel = 7

;-----------------------------------
; A.I. Helper
[State -2, AI Helper]
type = helper
trigger1 = AILevel > 0
trigger1 = roundstate=2
trigger1 = numhelper(20010)=0
name = "AI Helper"
ID = 20010
pos = 0,0
postype = p1
stateno = 20010
ownpal = 0
facing = 1
ignorehitpause = 1

;-----------------------------------
; Air Dash Limiter Reset
[State -2, Varset]
type = Varset
trigger1 = statetype=S || statetype=C || (var(24)>0)
trigger1 = var(8)>=1
var(8) = 0

;-------FORCE GROUND RECOVERY-------
[State -2, P2 Safe Fall]
type = targetstate
triggerall = numtarget=1 ;Just to prevent Simul mode shenanigans
triggerall = target,pos y>=-20 && target,vel y>0
triggerall = target,alive && target,hitfall && target,gethitvar(fall.recover)
triggerall = target,stateno=5030 || target,stateno=5035 || target,stateno=5050 || target,stateno=5071
trigger1 = target,AILevel <= 0
trigger1 = target,command="recovery"
trigger2 = target,AILevel > 0
trigger2 = random%100 <= 10*ceil((target,AILevel)*(target,AILevel)/64.0)
value = 5205
ignorehitpause = 1

;--------RESET--------
[State -2, P2 Recovery] ;Notice how ID 200 is being used. ID must match those Hitdefs
type = targetstate
trigger1 = numtarget(555)
trigger1 = (target(555),stateno=5020) && (target(555),alive) && (target(555),hitfall) ;Hit out of the air while alive and already falling
ID = 555 ;200
value = 5085 ;5025
ignorehitpause = 1

;-----------------------------------
; Debugging Tools
[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(1) = %d damage dampen = %f JuggleFlags1 = %d JuggleFlags2 = %d Flight Timer = %d"
params = var(1),fvar(11),var(33),var(34),var(24)
ignorehitpause = 1

;-----------------------------------
; Juggle Code Stuff
[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State reset all juggle vars]
type = VarSet
triggerall = var(33)
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear,movetype!=H || ((enemynear,statetype!=A) && (enemynear,statetype!=L))
var(33) = 0
ignorehitpause = 1
[State reset all juggle vars]
type = VarSet
triggerall = var(34)
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear,movetype!=H || ((enemynear,statetype!=A) && (enemynear,statetype!=L))
var(34) = 0
ignorehitpause = 1

;===============================================================================
; COUNTER HIT (Taken from Vans, who based his on Sander's Method)
;===============================================================================
[State -2, VarSet] ;Checks if opponent is in attack state
type = VarSet
triggerall = numenemy
trigger1 = enemy,movetype=A
var(42) = 1
ignorehitpause = 1

[State -2, VarSet] ;This resets the condition if counter not succesful and succesful
type = VarSet
triggerall = numenemy
trigger1 = enemy,movetype=I || var(43)>=1 ;Enemy is Idle | Counter was Succesful
trigger2 = var(43)>10 && enemy,movetype=H ;10 ticks passed & enemy is on gethit state
trigger3 = stateno = [1200,1201]
trigger4 = (time<=1) && (stateno!=[5000,5199]) && (movetype!=H)
var(42) = 0
ignorehitpause = 1

[State -2, VarSet] ;Counter Hit Succesful
type = VarSet
trigger1 = var(42)=1 && movehit ;Counter Check Ok, Move Hit Succesfully.
trigger1 = stateno != [190,199] ;Does not activate during intros.
trigger1 = stateno != [800,899] ;Does not activate during throws.
trigger1 = stateno != [950,951] ;Don't activate during throws.
;trigger2 = var(42)=1 && projhit=1 ;Counter Check Ok, Projectile Hit Succesfully.
;trigger3 = var(42)=1 && var(46)=1 ;Counter Check Ok, Projectile Hit Succesfully.
var(43) = 1
ignorehitpause = 1

[State -2, VarAdd] ;Counter Hit Timer
type = VarAdd
trigger1 = var(43)>=1 ;Counter was succesful
var(43) = 1
ignorehitpause = 1

[State -2, VarSet] ;Counter Hit Reset
type = VarSet
trigger1 = var(43)>=22 && movehit ;Reset if 22 ticks passed and move hit
trigger2 = p2movetype!=H ;Reset if P2 is no longer in gethit state
trigger3 = movetype=H ;Reset if P1 is getting hit
;trigger4 = var(43)>=22 && projhit=1 ;Reset if 22 ticks passed and projectile hit
;trigger5 = var(43)>=22 && var(46)=1
var(43) = 0
ignorehitpause = 1

[State -2, Counterhit Explod]
type = Explod
triggerall = numenemy
triggerall = stateno != [800,899] ;Does not activate during throws.
triggerall = stateno != [950,951] ;Don't activate during throws.
triggerall = !enemynear,movereversed
triggerall = var(42)=1
triggerall = enemy,movetype=H ;Enemy was indeed HIT, otherwise this'd be retarded.
triggerall = numexplod(980)+numexplod(981)=0
trigger1 = movehit ;Move hits
anim = 980+1*(teamside!=1)
ID = 980
pos = ifelse(teamside=1,10,320-10),(12*numexplod(980))+120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
;scale = .5,.5
sprpriority = 999
ontop = 1
ownpal = 1
ignorehitpause = 1

;-----------------------------------
; Level 3 Selection
[State -2, VS]
type = varset
trigger1 = numhelper(20002)
trigger1 = helper(20002),var(1)>0
trigger1 = helper(20002),var(1)<=helper(20002),var(5)
var(51) = helper(20002),var(1)

[State -2, RMP]
type = remappal
trigger1 = numhelper(20002)
source = 1,1
dest = 1,var(51)

[State -2, VS]
type = varset
trigger1 = numhelper(20002)
trigger1 = helper(20002),var(10)>0
trigger1 = helper(20002),var(10)<=2
var(52) = helper(20002),var(10)

;----------------------------------
; Custom Cornerpush System by PotS
;----------------------------------
[State -2, Superpause Check]
type = null ;VarAdd
trigger1 = Var(9)
var(9) = -1

[State -3, Corner Push Reset] ;Reset
type = varset
trigger1 = fvar(5)
trigger1 = numtarget
trigger1 = (target,hitover) || (target,gethitvar(hitshaketime) > 0 && target,time <= 0)
fvar(5) = 0

[State -3, Corner Push Initial Vel] ;Get initial velocity
type = varset
trigger1 = movecontact=1 && numtarget
fvar(5) = (target,gethitvar(xvel))
ignorehitpause = 1

[State -3, Corner Push Apply] ;Apply corner push
type = posadd
triggerall = fvar(5)
triggerall = (statetype=S || statetype=C || (statetype=A && var(24)>0)) && numtarget
triggerall = !hitpausetime && (target,gethitvar(hitshaketime) <= 0)
triggerall = (target,statetype=S || target,statetype=C) && !(target,gethitvar(yvel)) && !(target,hitfall) ;See note below
trigger1 = target,frontedgebodydist <= abs(target,vel x)
trigger1 = (target,gethitvar(xvel) * target,facing) > 0
trigger2 = target,backedgebodydist <= abs(target,vel x)
trigger2 = (target,gethitvar(xvel) * target,facing) < 0
x = ifelse(target,frontedgebodydist <= 0,-1,1) * (target,facing) * fvar(5)

[State -2, Freeze Pos During Superpause]
type = null ;PosFreeze
trigger1 = Var(9)
value = 1

[State -3, Corner Push Friction] ;Apply friction to the velocity
type = varset
trigger1 = numtarget
trigger1 = target,gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5)*0.85

;-----MODIFIED DAMAGE DAMPENER-----------------------------
[State -2, Min Scaling Test]
type = null
trigger1 = (stateno=[200,629])
trigger1 = (fvar(9):=0.1)||1
trigger2 = (stateno=[1000,1999])
trigger2 = (fvar(9):=0.1)||1
trigger3 = (stateno=[2000,4999])
trigger3 = (fvar(9):=0.1)||1

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
fvar(10) = 1.0

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
var(4) = 0

[State -2, Reset Groundbounce when the opponent recovers]
type = Varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
var(15) = 0

[State -2, Final Dampen]
type = null
trigger1 = (fvar(11):=ifelse(fvar(9)>fvar(10),fvar(9),fvar(10))*ifelse(var(4)>0 && (stateno!=[2000,4999]),0.5,1)) || 1
ignorehitpause = 1

[State reset Combo Rate Flag]
type = VarSet
triggerall = var(57)
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
var(57) = 0
ignorehitpause = 1

;-----------------------------------
[State -3, Prevent Undergound Juggles by POTS]
type = targetbind
trigger1 = var(31)=1 ;movehit=1
trigger1 = numtarget=1 && numenemy
trigger1 = (target,time<=1) && (target,ID=enemynear,ID) ;This is just to prevent Simul issues as usual
trigger1 = !(target,hitshakeover) && (target,hitfall) && (target,pos y>0)
pos = ceil(p2dist x),ceil(-pos y) ;Keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause = 1

;-----------------------------------
; Throw Flag
[State -2, Throws Allowed]
type = varset
triggerall = numenemy
trigger1 = enemynear,movetype != H
trigger1 = enemynear,stateno != 140
trigger1 = (enemynear,ctrl && enemynear,time >= 1) || (enemynear,time >= 8)
trigger2 = enemynear,movetype = A
trigger3 = (enemynear,stateno != [0,52]) && (enemynear,stateno != [120,155]) && (enemynear,stateno != [5000,5120])
var(30) = 0
[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear,stateno = [150,155]
trigger2 = (enemynear,stateno = 51 || enemynear,stateno = 140) && (enemynear,prevstateno = [150,155])
trigger3 = enemynear,movetype = H && enemynear,statetype != A && !var(20)
trigger4 = (enemynear,stateno = [5020,5040]) && enemynear,hitfall = 0
trigger5 = enemynear,stateno = 40 && enemynear,prevstateno != 52 && (enemynear,anim != [0,29])
var(30) = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8,0
ignorehitpause = 1

;-----------------------------------
; Sounds
[State -3, Hitsound 1]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5000
trigger2 = StateNo = 5020
value = 5000,0
channel = 0

[State -3, Hitsound 2]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5010
trigger2 = StateNo = 5070
value = 5000,1
channel = 0

[State -3, Hitsound 3]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5030
value = 5000,2
channel = 0

[State -3, Getup Sound]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5120
value = 5120,0
channel = 0