;========================== NORMAL HITSPARK NORTH ==============================
[Statedef 8020]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .13,.13
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 10
time = 1
color = 0+(time*25)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .13+((time)*.01),.13+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .15-((time-2)*.024),.15-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .05+((time-8)*.006125),.05+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .23,.11
postype = p1
pos = 0,0
vel = 0,-.75
facing = 1
vfacing = 1
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .29,.13
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;===================== NORMAL HITSPARK NORTH EAST ==============================
[Statedef 8021]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .13,.13
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .13+((time)*.01),.13+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .15-((time-2)*.024),.15-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .05+((time-8)*.006125),.05+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .23,.11
postype = p1
pos = 0,0
vel = -.75,-.75
facing = 1
vfacing = 1
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .29,.13
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== NORMAL HITSPARK EAST ==============================
[Statedef 8022]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .13,.13
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .13+((time)*.01),.13+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .15-((time-2)*.024),.15-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .05+((time-8)*.006125),.05+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .23,.11
postype = p1
pos = -10,0
vel = -.75,0
facing = 1
vfacing = ifelse(random<500,1,-1)
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .29,.13
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;===================== NORMAL HITSPARK SOUTH EAST ==============================
[Statedef 8023]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .13,.13
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .13+((time)*.01),.13+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .15-((time-2)*.024),.15-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .05+((time-8)*.006125),.05+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .23,.11
postype = p1
pos = 0,0
vel = -.75,.75
facing = 1
vfacing = 1
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .29,.13
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== NORMAL HITSPARK SOUTH ==============================
[Statedef 8024]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .13,.13
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .13+((time)*.01),.13+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .15-((time-2)*.024),.15-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .05+((time-8)*.006125),.05+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .23,.11
postype = p1
pos = 0,0
vel = 0,.75
facing = 1
vfacing = 1
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .29,.13
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== SPECIAL HITSPARK NORTH =============================
[Statedef 8030]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .175,.175
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .175+((time)*.01),.175+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .195-((time-2)*.024),.195-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .065+((time-8)*.006125),.065+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .29,.14
postype = p1
pos = 0,0
vel = 0,-.75
facing = 1
vfacing = 1;ifelse(random<500,1,-1)
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .39,.18
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;======================= SPECIAL HITSPARK NORTH EAST ===========================
[Statedef 8031]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .175,.175
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .175+((time)*.01),.175+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .195-((time-2)*.024),.195-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .065+((time-8)*.006125),.065+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .29,.14
postype = p1
pos = 0,0
vel = -.75,-.75
facing = 1
vfacing = 1
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .39,.18
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================= SPECIAL HITSPARK EAST ===============================
[Statedef 8032]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .175,.175
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .175+((time)*.01),.175+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .195-((time-2)*.024),.195-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .065+((time-8)*.006125),.065+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .29,.14
postype = p1
pos = -10,0
vel = -.75,0
facing = 1
vfacing = ifelse(random<500,1,-1)
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .39,.18
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;====================== SPECIAL HITSPARK SOUTH EAST ============================
[Statedef 8033]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .175,.175
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .175+((time)*.01),.175+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .195-((time-2)*.024),.195-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .065+((time-8)*.006125),.065+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .29,.14
postype = p1
pos = 0,0
vel = -.75,.75
facing = 1
vfacing = 1
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .39,.18
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;======================== SPECIAL HITSPARK SOUTH ===============================
[Statedef 8034]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .175,.175
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .175+((time)*.01),.175+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .195-((time-2)*.024),.195-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .065+((time-8)*.006125),.065+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .29,.14
postype = p1
pos = 0,0
vel = 0,.75
facing = 1
vfacing = 1;ifelse(random<500,1,-1)
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .39,.18
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== SUPER HITSPARK NORTH =============================
[Statedef 8040]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .28,.28
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .30-((time-2)*.05),.30-((time-2)*.05)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 7
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 5
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .1+((time-8)*.015),.1+((time-8)*.015)
trans = addalpha
alpha = 200-((time-8)*40),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .39,.19
postype = p1
pos = 0,0
vel = 0,-.75
facing = 1
vfacing = 1
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
scale = .2,.2
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = -4
removetime = 8
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8023)
ID = 8023
trans = addalpha
alpha = 256-((time-2)*32),256
scale = .2+(time*.0125),.2+(time*.0125)

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .52,.25
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== SUPER HITSPARK NORTH EAST ===========================
[Statedef 8041]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .28,.28
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .30-((time-2)*.05),.30-((time-2)*.05)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 7
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 5
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .1+((time-8)*.015),.1+((time-8)*.015)
trans = addalpha
alpha = 200-((time-8)*40),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .39,.19
postype = p1
pos = 0,0
vel = -.75,-.75
facing = 1
vfacing = 1
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
scale = .2,.2
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = -4
removetime = 8
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8023)
ID = 8023
trans = addalpha
alpha = 256-((time-2)*32),256
scale = .2+(time*.0125),.2+(time*.0125)

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .52,.25
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== SUPER HITSPARK EAST ===============================
[Statedef 8042]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .28,.28
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .30-((time-2)*.05),.30-((time-2)*.05)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 7
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 5
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .1+((time-8)*.015),.1+((time-8)*.015)
trans = addalpha
alpha = 200-((time-8)*40),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .39,.19
postype = p1
pos = -10,0
vel = -.75,0
facing = 1
vfacing = ifelse(random<500,1,-1)
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
scale = .2,.2
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = -4
removetime = 8
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8023)
ID = 8023
trans = addalpha
alpha = 256-((time-2)*32),256
scale = .2+(time*.0125),.2+(time*.0125)

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .52,.25
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== SUPER HITSPARK SOUTH EAST ============================
[Statedef 8043]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .28,.28
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .30-((time-2)*.05),.30-((time-2)*.05)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 7
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 5
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .1+((time-8)*.015),.1+((time-8)*.015)
trans = addalpha
alpha = 200-((time-8)*40),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .39,.19
postype = p1
pos = 0,0
vel = -.75,.75
facing = 1
vfacing = 1
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
scale = .2,.2
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = -4
removetime = 8
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8023)
ID = 8023
trans = addalpha
alpha = 256-((time-2)*32),256
scale = .2+(time*.0125),.2+(time*.0125)

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .52,.25
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== SUPER HITSPARK SOUTH ===============================
[Statedef 8044]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .28,.28
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .30-((time-2)*.05),.30-((time-2)*.05)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 7
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 5
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .1+((time-8)*.015),.1+((time-8)*.015)
trans = addalpha
alpha = 200-((time-8)*40),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .39,.19
postype = p1
pos = 0,0
vel = 0,.75
facing = 1
vfacing = 1
sprpriority = 3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
scale = .2,.2
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = -4
removetime = 8
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8023)
ID = 8023
trans = addalpha
alpha = 256-((time-2)*32),256
scale = .2+(time*.0125),.2+(time*.0125)

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .52,.25
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
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
;================================================= V - TRIGGER SUPERSPARK ======
[Statedef 8400]
physics = N
anim = 9741

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time <=10
time = 1
add = -30+(time*3),-30+(time*3),-30+(time*3)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s8600,1
channel = -1
volumescale = 75

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8400
ID = 8400
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = 15
supermovetime = 999
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8400
trans = add
scale = .5+(time*.35),.5+(time*.35)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8401
ID = 8401
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = 15
supermovetime = 999
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8401
trans = add
scale = .5+(time*.35),.5+(time*.35)

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 5
freq = 120
ampl = 6

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 30
trigger2 = parent, movetype = H

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 30
trigger2 = parent, movetype = H
;========================================================== EX SUPERSPARK ======
[Statedef 8500]
physics = N
anim = 9741

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time <=10
time = 1
;add = -30+(time*3),-30+(time*3),-30+(time*3)
color = 0+(time*25)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S8500,0
channel = -1
volumescale = 50

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
scale = 1,1
sprpriority = 2
ownpal = 1
removeongethit = 1
trans = add

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 30
trigger2 = parent, movetype = H

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 30
trigger2 = parent, movetype = H
;======================================================== SUPERSPARK LVL1 ======
[Statedef 8600]
physics = N
anim = 9741

;[State 0, AssertSpecial]
;type = AssertSpecial
;trigger1 = time <= 60
;flag = nobardisplay

[State 0, EnvColor]
type = BGPalFX
trigger1 = time = [0,60]
mul = 80,80,255
time = 1
invertall = 0
ignorehitpause = 1
color = 0

[State 0, EnvColor]
type = BGPalFX
trigger1 = time = [61,70]
mul=80+((time-61)*19),80+((time-61)*19),255+((time-61)*2)
time = 2
invertall = 0
ignorehitpause = 1
color=20+((time-61)*23)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S8600,0
channel = -1
volumescale = 75

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

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8604
ID = 8604
pos = 0,0
vel = 0,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
supermovetime = 999
;pausemovetime
scale = 1.25,1.25
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = add

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 59
trigger2 = parent, movetype = H

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 70
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

[State 8500, Rotate]
type = angleadd
trigger1 = time <= 5
value = -27

[State 8500, Scale]
type = angledraw
trigger1 = time <= 5
scale = (.075*time),(.075*time)

[State 8500, Rotate]
type = angleadd
trigger1 = time > 5
value = -27

[State 8500, Scale]
type = angledraw
trigger1 = time > 5
scale = .375,.375

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
trigger1 = time >= 59
trigger2 = root, movetype = H
trigger3 = root, stateno != [3000,3999]
;======================================================== SUPERSPARK LVL2 ======
[Statedef 8700]
physics = N
anim = 9741

;[State 0, AssertSpecial]
;type = AssertSpecial
;trigger1 = time <= 60
;flag = nobardisplay

[State 0, EnvColor]
type = BGPalFX
trigger1 = time = [0,60]
mul = 150,80,200
time = 1
invertall = 0
ignorehitpause = 1
color = 0

[State 0, EnvColor]
type = BGPalFX
trigger1 = time = [61,70]
mul=150+((time-61)*10),80+((time-61)*17),200+((time-61)*5)
time = 2
invertall = 0
ignorehitpause = 1
color=20+((time-61)*23)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S8600,0
channel = -1
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

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8704
ID = 8704
pos = 0,0
vel = 0,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
supermovetime = 999
;pausemovetime
scale = 1.25,1.25
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = add

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 59
trigger2 = parent, movetype = H

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 70
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

[State 8500, Rotate]
type = angleadd
trigger1 = time <= 5
value = -27

[State 8500, Scale]
type = angledraw
trigger1 = time <= 5
scale = (.075*time),(.075*time)

[State 8500, Rotate]
type = angleadd
trigger1 = time > 5
value = -27

[State 8500, Scale]
type = angledraw
trigger1 = time > 5
scale = .375,.375

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
trigger1 = time >= 59
trigger2 = root, movetype = H
trigger3 = root, stateno != [3000,3999]
;======================================================== SUPERSPARK LVL3 ======
[Statedef 8800]
physics = N
anim = 9741

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time <= 60
flag = nobardisplay

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S8600,0
channel = -1
volumescale = 75

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

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8804
ID = 8804
pos = 0,0
vel = 0,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
supermovetime = 999
;pausemovetime
scale = 1.25,1.25
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = add

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 59
trigger2 = parent, movetype = H

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 70
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

[State 8500, Rotate]
type = angleadd
trigger1 = time <= 5
value = -27

[State 8500, Scale]
type = angledraw
trigger1 = time <= 5
scale = (.075*time),(.075*time)

[State 8500, Rotate]
type = angleadd
trigger1 = time > 5
value = -27

[State 8500, Scale]
type = angledraw
trigger1 = time > 5
scale = .375,.375

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
trigger1 = time >= 59
trigger2 = root, movetype = H
trigger3 = root, stateno != [3000,3999]
;================================ SHADOW 1 =====================================
[Statedef 8802]
type = A
anim = 9741
velset = 0, 0
sprpriority = -2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = root,anim

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, BindToParent]
type = BindToParent
trigger1 = time = 0
time = 1
pos = 0,0
ignorehitpause = 1

[State 8010, Trans]
type = trans
trigger1 = time <= 30
trans = addalpha
alpha = 256,256

[State 8010, Trans]
type = trans
trigger1 = time > 30
trans = addalpha
alpha = 256-((time-30)*9),256

[State 0, VelSet]
type = VelSet
trigger1 = time <= 15;1
x = -.75;-.125

[State 0, VelSet]
type = VelSet
trigger1 = time > 15;1
x = -.125;-.125

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 512,-256,-256;128,-256,-256
color = 0

[State 8010, End]
type = destroyself
trigger1 = time >= 59
trigger2 = root, movetype = H
trigger3 = root, stateno != [3000,3999]



