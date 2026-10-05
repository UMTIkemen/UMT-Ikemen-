;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]
[State -2, StopSound]
type = stopsnd
trigger1 = movetype = H
trigger1 = time <=2
channel = 7

[State -2, T]
type = varadd
triggerall = var(35)>0
trigger1 = stateno!=2100
var(35) = -1
ignorehitpause = 1

[State 21300, Hitsound]
type = playsnd
trigger1 = projhit24110=1
value = 1,9
channel = 3

[State 21300, Prorate]
type = varset
trigger1 = projhit24110=1
fvar(10) = fvar(10)*0.96
ignorehitpause = 1

[State 410, Bullet]
type = Helper
trigger1 = var(13)=1301;,1302]
trigger1 = numhelper(21300)
helpertype = normal ;player
name = "FlashBangGrenade"
ID = 21305
stateno = 20415
pos = (helper(21300),var(20))+42,(helper(21300),var(21))-51
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
[State 410, Bullet]
type = Helper
trigger1 = var(13)=1301;,1302]
trigger1 = numhelper(21300)
trigger1 = (var(13):=0)||1
helpertype = normal ;player
name = "AnalSuppository"
ID = 21305
stateno = 21305
pos = (helper(21300),var(20))+32,(helper(21300),var(21))-51
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 410, Bullet]
type = Helper
trigger1 = var(13)=1302
trigger1 = numhelper(21300)
helpertype = normal ;player
name = "FlashBangGrenade"
ID = 21305
stateno = 20415
pos = (helper(21300),var(20))+33,(helper(21300),var(21))-46
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
[State 410, Bullet]
type = Helper
trigger1 = var(13)=1302
trigger1 = numhelper(21300)
trigger1 = (var(13):=0)||1
helpertype = normal ;player
name = "AnalSuppository"
ID = 21306
stateno = 21305
pos = (helper(21300),var(20))+22,(helper(21300),var(21))-46
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

;--------REISEN MK CHAMELEON MODO---------
[State -2, T]
type = trans
trigger1 = var(20)
trans = addalpha
alpha = 256-floor(256.0*var(20)/12.0),floor(256.0*var(20)/12.0)
ignorehitpause = 1

[State -2, Graze States? In MY Mugen chars?!]
type = nothitby
triggerall = movetype != H
trigger1 = var(20)>1 ;You didnt think I'd really give Reisen that small of a vulnerability gap did I?
trigger2 = var(18)>0
value2 = ,AP
ignorehitpause = 1

[State -2, T]
type = varadd
triggerall = var(20)>0 && var(18)<=0
trigger1 = numhelper(21100)=0
trigger2 = !alive
trigger3 = movetype = H
var(20) = -1
ignorehitpause = 1

[State -2, Super Invis Timer]
type = varadd
trigger1 = stateno != 2000
trigger1 = var(18)>0
var(18) = -1
;-----------------------------------------
;--------REISEN CLONE MODO---------
[State 2000, Increment]
type = varadd
trigger1 = var(16)>0
trigger1 = var(21)<12
var(21)=1

[State 410, Bullet]
type = Helper
triggerall = var(21)>0
trigger1 = numhelper(30200)=0
helpertype = normal ;player
name = "IsThisTheRealReisen"
ID = 30200
stateno = 30200
pos = 100,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
supermovetime = 99999999
pausemovetime = 99999999

[State -2, T]
type = varadd
triggerall = var(21)>0
triggerall = var(16)<=0
trigger1 = numhelper(21110)=0
trigger2 = !alive
trigger3 = movetype = H
var(21) = -1
ignorehitpause = 1

[State -2, Super Clone Timer]
type = varadd
trigger1 = stateno != 2000
trigger1 = var(16)>0
var(16) = -1
;-----------------------------------------

[State -2, Varset]
type = Varset
trigger1 = (statetype = S) || (statetype = C)
trigger1 = var(8) >= 1
v = 8
value = 0

[State -2, AI Helper]
type = helper
trigger1 = roundstate=2
trigger1 = numhelper(30000)=0
name = "Flask Helper"
ID = 30000
pos = 0,0
postype = p1
stateno = 30000
ownpal = 0
facing = 1
ignorehitpause = 1

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

;-------FORCE GROUND RECOVERY-------
[State -2, P2 Safe Fall]
type= targetstate
triggerall= numtarget=1; Just to prevent Simul mode shenanigans
triggerall= target,pos y>=-20 && target,vel y>0
triggerall= target,alive && target,hitfall && target,gethitvar(fall.recover)
triggerall= target,stateno=5030 || target,stateno=5035 || target,stateno=5050 || target,stateno=5071
trigger1 = target,AILevel <= 0
trigger1 = target,command="recovery"
trigger2 = target,AILevel > 0
trigger2 = random%100 <= 10*ceil((target,AILevel)*(target,AILevel)/64.0)
value= 5205
ignorehitpause= 1

;--------RESET--------
[State -2, P2 Recovery]; Notice how ID 200 is being used. ID must match those Hitdefs
type= targetstate
trigger1= numtarget(555)
;trigger1 = var(7)<=0
;trigger1= target,pos y>=-20 && target,vel y>0
trigger1= (target(555), stateno=5020) && (target(555), alive) && (target(555), hitfall); Hit out of the air while alive and already falling
ID= 555;200
value= 5085;5025
ignorehitpause= 1



[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(10) = %d damage dampen = %f Spellcard = %d Super Timer = %d Juggle Flags = %d"
params = var(4),fvar(11),var(11),var(16),var(34)
;ignorehitpause = 
;persistent = 

; ------------Juggle Code Stuff---------
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
trigger2 = enemynear,movetype != H || ((enemynear,statetype != A) && (enemynear,statetype != L))
var(33) = 0
ignorehitpause = 1
[State reset all juggle vars]
type = VarSet
triggerall = var(34)
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear,movetype != H || ((enemynear,statetype != A) && (enemynear,statetype != L))
var(34) = 0
ignorehitpause = 1

;===============================================================================
; COUNTER HIT (Taken from Vans, who based his on Sander's Method)
;===============================================================================

[State -2, VarSet];Checks if opponent is in attack state
type = VarSet
triggerall = numenemy
trigger1 = enemy, movetype = A
var(42) = 1
ignorehitpause = 1

[State -2, VarSet];This resets the condition if counter not succesful and succesful
type = VarSet
triggerall = numenemy
trigger1 = enemy, movetype = I || var(43) >= 1  ;Enemy is Idle | Counter was Succesful
trigger2 = var(43) > 10 && enemy, movetype = H  ;10 ticks passed & enemy is on gethit state
trigger3 = var(46)
var(42) = 0+0*(var(46):=0)
ignorehitpause = 1

[State -2, VarSet];Counter Hit Succesful
type = VarSet
trigger1 = var(42) = 1 && movehit ;Counter Check Ok, Move Hit Succesfully.
trigger1 = stateno != [190,199] ;Does not activate during intros.
trigger1 = stateno != [800,899] ;Does not activate during throws.
trigger1 = stateno != [950,951] ;Don't activate during throws.
;trigger2 = var(42) = 1 && projhit = 1  ;Counter Check Ok, Projectile Hit Succesfully.
;trigger3 = var(42) = 1 && var(46) = 1  ;Counter Check Ok, Projectile Hit Succesfully.
var(43) = 1
ignorehitpause = 1

[State -2, VarAdd];Counter Hit Timer
type = VarAdd
trigger1 = var(43) >= 1 ;Counter was succesful
var(43) = 1
ignorehitpause = 1

[State -2, VarSet];Counter Hit Reset
type = VarSet
trigger1 = var(43) >= 22 && movehit ;Reset if 22 ticks passed and move hit
trigger2 = p2movetype != H ;Reset if P2 is no longer in gethit state
trigger3 = movetype = H ;Reset if P1 is getting hit
;trigger4 = var(43) >= 22 && projhit = 1 ;Reset if 22 ticks passed and projectile hit
;trigger5 = var(43) >= 22 && var(46)=1
var(43) = 0;+0*(var(46):=0)
ignorehitpause = 1

[State -2, Counterhit Explod]
type = Explod
triggerall = numenemy
triggerall = stateno != [800,899] ;Does not activate during throws.
triggerall = stateno != [950,951] ;Don't activate during throws.
triggerall = !enemynear,movereversed
triggerall = var(42) = 1
triggerall = enemy, movetype = h ;Enemy was indeed HIT, otherwise this'd be retarded.
triggerall = numexplod(980)+numexplod(981)=0
trigger1 = movehit ;Move hits
;trigger2 = projhit = 1 ;Projectile Hits
;trigger3 = var(46)=1 ;Helper Projectile Hits
;trigger2 = projhittime = 1
anim = 980+1*(teamside!=1)
ID = 980
;pos = ifelse(teamside=1,43,320-43),(29*numexplod(980))+80
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

;--------------------
; Level 3 Selection
[State -2, VS]
type = varset
trigger1 = numhelper(20002)
trigger1 = helper(20002),var(1) > 0
trigger1 = helper(20002),var(1) <= helper(20002),var(5)
var(51) = helper(20002),var(1)

[State -2, RMP]
type = remappal
trigger1 = numhelper(20002)
source = 1,1
dest = 1,var(51);%10)+1;palno

[State -2, VS]
type = varset
trigger1 = numhelper(20002)
trigger1 = helper(20002),var(10) > 0
trigger1 = helper(20002),var(10) <= 2
var(52) = helper(20002),var(10)

;----------------------------------
; Custom Cornerpush System by PotS
;----------------------------------
[State -2, Superpause Check]
type = null;VarAdd
trigger1 = Var(9)
var(9) = -1

[State -3, Corner Push Reset]; Reset
type= varset
trigger1= fvar(5)
trigger1= numtarget
trigger1= (target, hitover) || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5)= 0

[State -3, Corner Push Initial Vel]; Get initial velocity
type= varset
trigger1= movecontact=1 && numtarget
fvar(5) = (target, gethitvar(xvel))
ignorehitpause= 1

[State -3, Corner Push Apply]; Apply corner push
type= posadd
triggerall = fvar(5)
triggerall = (statetype = S || statetype = C) && numtarget
triggerall = !hitpausetime && (target, gethitvar(hitshaketime) <= 0)
triggerall = (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall); See note below
trigger1 = target, frontedgebodydist <= abs(target, vel x)
trigger1 = (target, gethitvar(xvel) * target, facing) > 0
trigger2 = target, backedgebodydist <= abs(target, vel x)
trigger2 = (target, gethitvar(xvel) * target, facing) < 0
x = ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)

[State -2, Freeze Pos During Superpause]
type = null;PosFreeze
trigger1 = Var(9)
value = 1

[State -3, Corner Push Friction]; Apply friction to the velocity
type= varset
trigger1= numtarget
trigger1= target, gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5)*0.85

;-----MODIFIED DAMAGE DAMPENER-----------------------------

[State -2, Min Scaling Test]
type = null
trigger1 = (stateno=[200,620])
trigger1 = (fvar(9):=0.1) || 1
trigger2 = (stateno=[1000,1999])
trigger2 = (fvar(9):=0.15) || 1
trigger3 = (stateno=[2000,4999])
trigger3 = (fvar(9):=0.2) || 1

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
trigger1 = (stateno != [1000,1099]) && (stateno!=[2000,3999])
trigger1 = (fvar(11) := ifelse(fvar(9)>fvar(10),fvar(9),fvar(10))*ifelse(var(4)>0,0.5,1)) || 1
ignorehitpause = 1

[State -2, Final Dampen]
type = null;
trigger1 = (stateno = [1000,1099]) || (stateno=[2000,3999])
trigger1 = (fvar(11) := ifelse(fvar(9)>fvar(10),fvar(9),fvar(10))) || 1
;trigger1 = (fvar(11):=fvar(10))||1
ignorehitpause = 1

[State -2, Final Dampen]
type = null
trigger1 = (stateno=[4000,4999])
trigger1 = (fvar(11) := 1) || 1
ignorehitpause = 1

[State -2, Dampener itself]
type = Attackmulset
trigger1 = 1
value = fvar(11)*ifelse(var(42),1.25,1.0)
ignorehitpause = 1

;------------------------------

;------------------------------

[State -3, Prevent Undergound Juggles by POTS]
type= targetbind
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID); this is just to prevent Simul issues as usual
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y); keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause= 1

[State -2, Throws Allowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, movetype != H
trigger1 = enemynear, stateno != 140
trigger1 = (enemynear, ctrl && enemynear, time >= 1) || (enemynear, time >= 8)
trigger2 = enemynear, movetype = A
trigger3 = (enemynear, stateno != [0, 52]) && (enemynear, stateno != [120, 155]) && (enemynear, stateno != [5000, 5120])
var(30) = 0
[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, stateno = [150, 155]
trigger2 = (enemynear, stateno = 51 || enemynear, stateno = 140) && (enemynear, prevstateno = [150, 155])
trigger3 = enemynear, movetype = H && enemynear, statetype != A && !var(20)
trigger4 = (enemynear, stateno = [5020, 5040]) && enemynear, hitfall = 0
trigger5 = enemynear, stateno = 40 && enemynear, prevstateno != 52 && (enemynear, anim != [0, 29])
var(30) = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -3, Hitsound 1]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5000
trigger2 = StateNo = 5020
value = 5000, 0
channel = 0

[State -3, Hitsound 2]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5010
trigger2 = StateNo = 5070
value = 5000, 1
channel = 0

[State -3, Hitsound 3]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5030
value = 5000, 2
channel = 0

[State -3, Hitsound 3]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5120
value = 5120, 0
channel = 0

;This controller plays a sound everytime KFM lands from a jump, or
;from his back-dash.
[State -3, Landing Sound]
type = PlaySnd
trigger1 = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = Time = 1
trigger2 = stateno = 106 ;Run-back land
trigger3 = stateno = 100
trigger3 = time > 2
trigger3 = Vel Y > 0
trigger3 = Pos Y >= 10
value = 40, 0