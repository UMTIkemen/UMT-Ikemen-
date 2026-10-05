;============================= NORMAL HITSPARK =================================
[Statedef 8020]
physics = N
anim = 8020
velset = 0, 0
sprpriority = 6

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "bg"
ID = 8021
stateno = 8021
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .9
size.yscale = .9
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
trigger1 = random = [0,333]
var(10) = 0

[State 1005, Strength]
type = varset
trigger1 = !time
trigger1 = random = [334,666]
var(10) = 1

[State 1005, Strength]
type = varset
trigger1 = !time
trigger1 = random = [667,1000]
var(10) = 2

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 0, AngleDraw]
type = angledraw
trigger1 = 1
value = ifelse(var(10) = 0, 0, ifelse(var(10) = 1, -22, -45))

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
;trigger2 = enemynear,movetype!=h
;=========================== NORMAL HITSPARK BG ================================
[Statedef 8021]
physics = N
anim = 8021
velset = 0, 0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = parent, var(10)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = sub
ignorehitpause = 1

[State 0, AngleDraw]
type = angledraw
trigger1 = 1
value = ifelse(var(10) = 0, 0, ifelse(var(10) = 1, -22, -45))
;scale = 1,1

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
;trigger2 = enemynear,movetype!=h
;============================ SPECIAL HITSPARK =================================
[Statedef 8030]
physics = N
anim = 8030
velset = 0, 0
sprpriority = 6

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "bg"
ID = 8031
stateno = 8031
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .9
size.yscale = .9
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
trigger1 = random = [0,333]
var(10) = 0

[State 1005, Strength]
type = varset
trigger1 = !time
trigger1 = random = [334,666]
var(10) = 1

[State 1005, Strength]
type = varset
trigger1 = !time
trigger1 = random = [667,1000]
var(10) = 2

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 0, AngleDraw]
type = angledraw
trigger1 = 1
value = ifelse(var(10) = 0, 0, ifelse(var(10) = 1, -22, -45))

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
;trigger2 = enemynear,movetype!=h
;============================ SPECIAL HITSPARK =================================
[Statedef 8031]
physics = N
anim = 8031
velset = 0, 0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = parent, var(10)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = sub
ignorehitpause = 1

[State 0, AngleDraw]
type = angledraw
trigger1 = 1
value = ifelse(var(10) = 0, 0, ifelse(var(10) = 1, -22, -45))
;scale = 1,1

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
;trigger2 = enemynear,movetype!=h
;============================= SUPER HITSPARK ==================================
[Statedef 8040]
physics = N
anim = 8040
velset = 0, 0
sprpriority = 6

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "bg"
ID = 8041
stateno = 8041
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .9
size.yscale = .9
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
trigger1 = random = [0,333]
var(10) = 0

[State 1005, Strength]
type = varset
trigger1 = !time
trigger1 = random = [334,666]
var(10) = 1

[State 1005, Strength]
type = varset
trigger1 = !time
trigger1 = random = [667,1000]
var(10) = 2

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 0, AngleDraw]
type = angledraw
trigger1 = 1
value = ifelse(var(10) = 0, 0, ifelse(var(10) = 1, -22, -45))

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
;trigger2 = enemynear,movetype!=h
;============================= SUPER HITSPARK ==================================
[Statedef 8041]
physics = N
anim = 8041
velset = 0, 0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = parent, var(10)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = sub
ignorehitpause = 1

[State 0, AngleDraw]
type = angledraw
trigger1 = 1
value = ifelse(var(10) = 0, 0, ifelse(var(10) = 1, -22, -45))
;scale = 1,1

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
;trigger2 = enemynear,movetype!=h
;============================ GUARDSPARK NORMAL ================================
[Statedef 8300]
physics = N
anim = 9741
velset = 0, 0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State Varset];Facing Randomizer
type = varset
trigger1 = time = 0
var(7) = ifelse(random<500,-1,1)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8300
ID = 8300
pos = 0,0
postype = p1
facing = -1
vfacing = -1*var(7)
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .35,.35
sprpriority = 5
ownpal = 1
trans = add

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8305
ID = 8305
pos = 0,0
postype = p1
facing = 1
vfacing = -1*var(7)
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .45,.375
sprpriority = 5
ownpal = 1
trans = add

[State 8010, End]
type = removeexplod
trigger1 = time >= 16

[State 8010, End]
type = destroyself
trigger1 = time >= 16
;=========================== GUARDSPARK SPECIAL ================================
[Statedef 8305]
physics = N
anim = 9741
velset = 0, 0
sprpriority = 5

[State Varset];Facing Randomizer
type = varset
trigger1 = time = 0
var(7) = ifelse(random<500,-1,1)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8300
ID = 8300
pos = 0,0
postype = p1
facing = -1
vfacing = -1*var(7)
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .5,.5
sprpriority = 5
ownpal = 1
trans = add

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8305
ID = 8305
pos = 0,0
postype = p1
facing = 1
vfacing = -1*var(7)
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .65,0.525
sprpriority = 5
ownpal = 1
trans = add

[State 8010, End]
type = removeexplod
trigger1 = time >= 16

[State 8010, End]
type = destroyself
trigger1 = time >= 16
;============================= SUPERSPARK LVL1 =================================
[Statedef 8500]
physics = N
anim = 9741

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S8500,0
volumescale = 50
channel = 17

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8500
ID = 8500
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1,1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 15
trigger2 = parent, movetype = H

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 15
trigger2 = parent, movetype = H
;============================= SUPERSPARK LVL1 =================================
[Statedef 8600]
physics = N
anim = 9741

[State 0, EnvColor]
type = BGPalFX
trigger1 = time < 40
mul=60,60,250
time = 1
invertall = 0
color = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S8600,0
volumescale = 75
channel = 17

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "spinner"
ID = 8601
stateno = 8601
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 5
trigger3 = time = 10
helpertype = normal
name = "circles"
ID = 8602
stateno = 8602
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8610
ID = 8610
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = .25,.25
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8610
scale = (.25+(time*.2)),(.25+(time*.2))
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 10
ID = 8610
scale = (.25+(time*.2)),(.25+(time*.2))
trans = add;alpha
alpha = 256-((time-10)*50),256

[State 0, StopSnd]
type = StopSnd
trigger1 = time > 40
trigger2 = parent, movetype = H
channel = 17

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 40
trigger2 = parent, movetype = H

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 40
trigger2 = parent, movetype = H
;============================ SPINNING EFFECT ==================================
[Statedef 8601]
type = A
anim = 8600
velset = 0, 0
sprpriority = 3

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8500, Scale]
type = angledraw
trigger1 = time <= 20
scale = 1-(time*.025),1-(time*.025)

[State 8500, Scale]
type = angledraw
trigger1 = time > 20
scale = .5,.5

[State 8500, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1

[State 8010, Trans]
type = trans
trigger1 = 1
trans = add

[State 8010, End]
type = destroyself
trigger1 = time >= 40
trigger2 = root, movetype = H
;trigger3 = root, stateno != [3000,3999]
;================================ CIRCLES ======================================
[Statedef 8602]
type = A
anim = 9741
velset = 0, 0
sprpriority = 3

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8620
ID = 8620
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = 15
supermovetime = 999
pausemovetime = 999
scale = .25,.25
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8620
scale = .3+(time*.025),.3+(time*.025)
trans = addalpha
alpha = 220-((time)*16),256

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 15
trigger2 = parent, movetype = H

[State 8010, End]
type = destroyself
trigger1 = time > 15
trigger2 = root, movetype = H
;trigger3 = root, stateno != [3000,3999]
;============================= SUPERSPARK LVL2 =================================
[Statedef 8700]
physics = N
anim = 9741

[State 0, EnvColor]
type = BGPalFX
trigger1 = time < 40
mul = 226,0,108;180,30,180;80,100,246
time = 1
invertall = 0
color = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S8600,0
channel = 17
volumescale = 75

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "spinner"
ID = 8701
stateno = 8701
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 5
trigger3 = time = 10
helpertype = normal
name = "circles"
ID = 8702
stateno = 8702
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8710
ID = 8710
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = .25,.25
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8710
scale = (.25+(time*.2)),(.25+(time*.2))
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 10
ID = 8710
scale = (.25+(time*.2)),(.25+(time*.2))
trans = add;alpha
alpha = 256-((time-10)*50),256

[State 0, StopSnd]
type = StopSnd
trigger1 = time > 40
trigger2 = parent, movetype = H
channel = 17

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 40
trigger2 = parent, movetype = H

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 40
trigger2 = parent, movetype = H
;============================ SPINNING EFFECT ==================================
[Statedef 8701]
type = A
anim = 8700
velset = 0, 0
sprpriority = 3

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8500, Scale]
type = angledraw
trigger1 = time <= 20
scale = 1-(time*.025),1-(time*.025)

[State 8500, Scale]
type = angledraw
trigger1 = time > 20
scale = .5,.5

[State 8500, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1

[State 8010, Trans]
type = trans
trigger1 = 1
trans = add

[State 8010, End]
type = destroyself
trigger1 = time >= 40
trigger2 = root, movetype = H
;trigger3 = root, stateno != [3000,3999]
;================================ CIRCLES ======================================
[Statedef 8702]
type = A
anim = 9741
velset = 0, 0
sprpriority = 3

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8720
ID = 8720
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = 15
supermovetime = 999
pausemovetime = 999
scale = .25,.25
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8720
scale = .35+(time*.025),.35+(time*.025)
trans = addalpha
alpha = 220-((time)*16),256

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 15
trigger2 = parent, movetype = H

[State 8010, End]
type = destroyself
trigger1 = time > 15
trigger2 = root, movetype = H
;trigger3 = root, stateno != [3000,3999]
;============================= SUPERSPARK LVL3 =================================
[Statedef 8800]
physics = N
anim = 9741

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S8600,0
channel = 17
volumescale = 75

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time <= 10
time = 1
mul = 256-(time*25),256-(time*25),256-(time*25)

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time > 10;[146,165]
time = 1
mul = 0,0,0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "spinner"
ID = 8801
stateno = 8801
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "spinner2"
ID = 88010
stateno = 88010
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 5
trigger3 = time = 10
helpertype = normal
name = "circles"
ID = 8802
stateno = 8802
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8810
ID = 8810
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = .25,.25
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8810
scale = (.25+(time*.2)),(.25+(time*.2))
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 10
ID = 8810
scale = (.25+(time*.2)),(.25+(time*.2))
trans = add;alpha
alpha = 256-((time-10)*25),256

[State 0, StopSnd]
type = StopSnd
trigger1 = time > 40
trigger2 = parent, movetype = H
channel = 17

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 40
trigger2 = parent, movetype = H

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 40
trigger2 = parent, movetype = H
;============================ SPINNING EFFECT ==================================
[Statedef 8801]
type = A
anim = 8800
velset = 0, 0
sprpriority = 3

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8500, Scale]
type = angledraw
trigger1 = time <= 20
scale = 1-(time*.0215),1-(time*.0215)

[State 8500, Scale]
type = angledraw
trigger1 = time > 20
scale = .525,.55

[State 8500, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1

[State 8010, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 100,256

[State 8010, End]
type = destroyself
trigger1 = time >= 40
trigger2 = root, movetype = H
;trigger3 = root, stateno != [3000,3999]
;============================ SPINNING EFFECT ==================================
[Statedef 88010]
type = A
anim = 8800
velset = 0, 0
sprpriority = 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8500, Scale]
type = angledraw
trigger1 = time <= 20
scale = 1-(time*.0225),1-(time*.0225)

[State 8500, Scale]
type = angledraw
trigger1 = time > 20
scale = .55,.55

[State 8500, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1

[State 8010, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 156,256

[State 8010, End]
type = destroyself
trigger1 = time >= 40
trigger2 = root, movetype = H
;trigger3 = root, stateno != [3000,3999]
;================================ CIRCLES ======================================
[Statedef 8802]
type = A
anim = 9741
velset = 0, 0
sprpriority = 3

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8820
ID = 8820
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = 15
supermovetime = 999
pausemovetime = 999
scale = .25,.25
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8820
scale = .325+(time*.025),.325+(time*.025)
trans = addalpha
alpha = 220-((time)*16),256

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 15
trigger2 = parent, movetype = H

[State 8010, End]
type = destroyself
trigger1 = time > 15
trigger2 = root, movetype = H
;trigger3 = root, stateno != [3000,3999]


