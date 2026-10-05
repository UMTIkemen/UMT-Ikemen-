;ゲージヘルパー-------------------------------------------
[Statedef 8010, GG]
movetype = I
physics = N
velset = 0,0
anim = 2502
ctrl = 0


;ジェムストックゲージ-------------------------------------------
[State 1000,GR];赤ゲージ下地
type = Explod
triggerall = parent,var(51) = 1
triggerall = numexplod(232622) = 0
triggerall = parent,var(48) < 3
trigger1 = time
ID = 232622
anim = 2622
pos = ifelse(Facing = 1,20+parent,var(32),22+parent,var(32)),230+parent,var(33)
postype = back
scale = .5,.5
facing = 1
sprpriority = -2
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ownpal = 1
ontop = 0
bindtime = -1
ignorehitpause=1

[State 1000,GR];赤ゲージ
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = numexplod(242622) = 0
triggerall = parent,var(48) < 3
trigger1 = time
ID = 242622
anim = 2622 + ifelse((parent,var(58))>10,(parent,var(58)-10),(parent,var(58)))
pos = ifelse(Facing = 1,20+parent,var(32),22+parent,var(32)),230+parent,var(33)
postype = back
scale = .5,.5
facing = 1
sprpriority = -2
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ownpal = 1
ontop = 1
bindtime = -1
ignorehitpause=1

[State 1000,GR];赤ゲージMAX
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = numexplod(242622) = 0
triggerall = parent,var(48) = 3
trigger1 = time
ID = 242622
anim = 2622
pos = ifelse(Facing = 1,20+parent,var(32),22+parent,var(32)),230+parent,var(33)
postype = back
scale = .5,.5
facing = 1
sprpriority = -2
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ownpal = 1
ontop = 1
bindtime = -1
ignorehitpause=1

[State 1000 ,RemoveGR]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(55) = 1
trigger3 = parent,stateno = [2400,2500]
trigger4 = enemy,numhelper(247602)
trigger5 = enemy,numhelper(247604)
trigger6 = enemy,numhelper(247606)
trigger7 = enemy,numhelper(247608)
trigger8 = enemy,numhelper(247632)
trigger9 = enemy,numhelper(247634)
trigger10 = enemy,numhelper(247636)
trigger11 = enemy,numhelper(247638)
trigger12 = numpartner > 0
trigger12 = partner,numhelper(247602)
trigger13 = numpartner > 0
trigger13 = partner,numhelper(247604)
trigger14 = numpartner > 0
trigger14 = partner,numhelper(247606)
trigger15 = numpartner > 0
trigger15 = partner,numhelper(247608)
trigger16 = numpartner > 0
trigger16 = partner,numhelper(247632)
trigger17 = numpartner > 0
trigger17 = partner,numhelper(247634)
trigger18 = numpartner > 0
trigger18 = partner,numhelper(247636)
trigger19 = numpartner > 0
trigger19 = partner,numhelper(247638)
trigger20 = Matchover = 1
ID = 242622
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1


[State 1000,GY];黄ゲージ下地
type = Explod
triggerall = parent,var(51) = 1
triggerall = numexplod(232600) = 0
triggerall = parent,var(46) < 3
trigger1 = time
ID = 232600
anim = 2600
pos = ifelse(Facing = 1,47+parent,var(32),49+parent,var(32)),230+parent,var(33)
postype = back
scale = .5,.5
facing = 1
sprpriority = -2
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ownpal = 1
ontop = 0
bindtime = -1
ignorehitpause=1

[State 1000,GY];黄ゲージ
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = numexplod(242600) = 0
triggerall = parent,var(46) < 3
trigger1 = time
ID = 242600
anim = 2600 + ifelse((parent,var(56))>10,(parent,var(56)-10),(parent,var(56)))
pos = ifelse(Facing = 1,47+parent,var(32),49+parent,var(32)),230+parent,var(33)
postype = back
scale = .5,.5
facing = 1
sprpriority = -2
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ownpal = 1
ontop = 1
bindtime = -1
ignorehitpause=1

[State 1000,GY];黄ゲージMAX
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = numexplod(242600) = 0
triggerall = parent,var(46) = 3
trigger1 = time
ID = 242600
anim = 2600
pos = ifelse(Facing = 1,47+parent,var(32),49+parent,var(32)),230+parent,var(33)
postype = back
scale = .5,.5
facing = 1
sprpriority = -2
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ownpal = 1
ontop = 1
bindtime = -1
ignorehitpause=1

[State 1000 ,RemoveGY]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(55) = 1
trigger3 = parent,stateno = [2400,2500]
trigger4 = enemy,numhelper(247622)
trigger5 = enemy,numhelper(247624)
trigger6 = enemy,numhelper(247626)
trigger7 = enemy,numhelper(247628)
trigger8 = enemy,numhelper(247632)
trigger9 = enemy,numhelper(247634)
trigger10 = enemy,numhelper(247636)
trigger11 = enemy,numhelper(247638)
trigger12 = numpartner > 0
trigger12 = partner,numhelper(247622)
trigger13 = numpartner > 0
trigger13 = partner,numhelper(247624)
trigger14 = numpartner > 0
trigger14 = partner,numhelper(247626)
trigger15 = numpartner > 0
trigger15 = partner,numhelper(247628)
trigger16 = numpartner > 0
trigger16 = partner,numhelper(247632)
trigger17 = numpartner > 0
trigger17 = partner,numhelper(247634)
trigger18 = numpartner > 0
trigger18 = partner,numhelper(247636)
trigger19 = numpartner > 0
trigger19 = partner,numhelper(247638)
trigger20 = Matchover = 1
ID = 242600
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

[State 1000,GB];青ゲージ下地
type = Explod
triggerall = parent,var(51) = 1
triggerall = numexplod(232611) = 0
triggerall = parent,var(47) < 3
trigger1 = time
ID = 232611
anim = 2611
pos = ifelse(Facing = 1,74+parent,var(32),76+parent,var(32)),230+parent,var(33)
postype = back
scale = .5,.5
facing = 1
sprpriority = -2
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ownpal = 1
ontop = 0
bindtime = -1
ignorehitpause=1

[State 1000,GB];青ゲージ
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = numexplod(242611) = 0
triggerall = parent,var(47) < 3
trigger1 = time
ID = 242611
anim = 2611 + ifelse((parent,var(57))>10,(parent,var(57)-10),(parent,var(57)))
pos = ifelse(Facing = 1,74+parent,var(32),76+parent,var(32)),230+parent,var(33)
postype = back
scale = .5,.5
facing = 1
sprpriority = -2
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ownpal = 1
ontop = 1
bindtime = -1
ignorehitpause=1

[State 1000,GB];青ゲージ
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = numexplod(242611) = 0
triggerall = parent,var(47) = 3
trigger1 = time
ID = 242611
anim = 2611
pos = ifelse(Facing = 1,74+parent,var(32),76+parent,var(32)),230+parent,var(33)
postype = back
scale = .5,.5
facing = 1
sprpriority = -2
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ownpal = 1
ontop = 1
bindtime = -1
ignorehitpause=1

[State 1000 ,RemoveGB]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(55) = 1
trigger3 = parent,stateno = [2400,2500]
trigger4 = enemy,numhelper(247612)
trigger5 = enemy,numhelper(247614)
trigger6 = enemy,numhelper(247616)
trigger7 = enemy,numhelper(247618)
trigger8 = enemy,numhelper(247632)
trigger9 = enemy,numhelper(247634)
trigger10 = enemy,numhelper(247636)
trigger11 = enemy,numhelper(247638)
trigger12 = numpartner > 0
trigger12 = partner,numhelper(247612)
trigger13 = numpartner > 0
trigger13 = partner,numhelper(247614)
trigger14 = numpartner > 0
trigger14 = partner,numhelper(247616)
trigger15 = numpartner > 0
trigger15 = partner,numhelper(247618)
trigger16 = numpartner > 0
trigger16 = partner,numhelper(247632)
trigger17 = numpartner > 0
trigger17 = partner,numhelper(247634)
trigger18 = numpartner > 0
trigger18 = partner,numhelper(247636)
trigger19 = numpartner > 0
trigger19 = partner,numhelper(247638)
trigger20 = Matchover = 1
ID = 242611
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1




;レベル数字-------------------------------------------
[State 1000, Level1];黄1
type = Explod
triggerall = !numexplod(242305)
triggerall = time
triggerall = parent,var(51) = 1
trigger1 = parent,var(46) = 1
Anim = 2305
id = 242305
pos = ifelse(Facing = 1,50+parent,var(32),54+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1

[State 1000 ,RemoveLevel1]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(46) = 2
trigger3 = parent,stateno = [2400,2500]
trigger4 = Matchover = 1
ID = 242305
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

[State 1000, Level2];黄2
type = Explod
triggerall = !numexplod(242308)
triggerall = time
triggerall = parent,var(51) = 1
trigger1 = parent,var(46) = 2
Anim = 2308
id = 242308
pos = ifelse(Facing = 1,50+parent,var(32),54+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -1

[State 1000 ,RemoveLevel2]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(46) = 3
trigger3 = parent,stateno = [2400,2500]
trigger4 = Matchover = 1
ID = 242308
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

[State 1000, Level3];黄3
type = Explod
triggerall = !numexplod(242314)
triggerall = time
triggerall = parent,var(51) = 1
trigger1 = parent,var(46) = 3
Anim = 2314
id = 242314
pos = ifelse(Facing = 1,50+parent,var(32),54+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -1

[State 1000 ,RemoveLevel3]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(46) = 1
trigger3 = parent,stateno = [2400,2500]
trigger4 = Matchover = 1
ID = 242314
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

[State 1000, Level1];青1
type = Explod
triggerall = !numexplod(242306)
triggerall = time
triggerall = parent,var(51) = 1
trigger1 = parent,var(47) = 1
Anim = 2306
id = 242306
pos = ifelse(Facing = 1,77+parent,var(32),82+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -1

[State 1000 ,RemoveLevel1]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(47) = 2
trigger3 = parent,stateno = [2400,2500]
trigger4 = Matchover = 1
ID = 242306
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

[State 1000, Level2];青2
type = Explod
triggerall = !numexplod(242309)
triggerall = time
triggerall = parent,var(51) = 1
trigger1 = parent,var(47) = 2
Anim = 2309
id = 242309
pos = ifelse(Facing = 1,77+parent,var(32),82+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -1

[State 1000 ,RemoveLevel2]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(47) = 3
trigger3 = parent,stateno = [2400,2500]
trigger4 = Matchover = 1
ID = 242309
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

[State 1000, Level3];青3
type = Explod
triggerall = !numexplod(242315)
triggerall = time
triggerall = parent,var(51) = 1
trigger1 = parent,var(47) = 3
Anim = 2315
id = 242315
pos = ifelse(Facing = 1,77+parent,var(32),82+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -1

[State 1000 ,RemoveLevel3]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(47) = 1
trigger3 = parent,stateno = [2400,2500]
trigger4 = Matchover = 1
ID = 242315
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

[State 1000, Level1];赤1
type = Explod
triggerall = !numexplod(242307)
triggerall = time
triggerall = parent,var(51) = 1
trigger1 = parent,var(48) = 1
Anim = 2307
id = 242307
pos = ifelse(Facing = 1,24+parent,var(32),28+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -1

[State 1000 ,RemoveLevel1]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(48) = 2
trigger3 = parent,stateno = [2400,2500]
trigger4 = Matchover = 1
ID = 242307
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

[State 1000, Level2];赤2
type = Explod
triggerall = !numexplod(242310)
triggerall = time
triggerall = parent,var(51) = 1
trigger1 = parent,var(48) = 2
Anim = 2310
id = 242310
pos = ifelse(Facing = 1,24+parent,var(32),28+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -1

[State 1000 ,RemoveLevel2]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(48) = 3
trigger3 = parent,stateno = [2400,2500]
trigger4 = Matchover = 1
ID = 242310
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

[State 1000, Level3];赤3
type = Explod
triggerall = !numexplod(242316)
triggerall = time
triggerall = parent,var(51) = 1
trigger1 = parent,var(48) = 3
Anim = 2316
id = 242316
pos = ifelse(Facing = 1,24+parent,var(32),28+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -1

[State 1000 ,RemoveLevel3]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(48) = 1
trigger3 = parent,stateno = [2400,2500]
trigger4 = Matchover = 1
ID = 242316
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

;レベル文字-------------------------------------------
[State 1000, LevelUP];黄2
type = Explod
triggerall = time
triggerall = parent,var(51) = 1
triggerall = !numexplod(242302)
trigger1 = parent,var(46) = 2
Anim = 2302
id = 242302
pos = ifelse(Facing = 1,62+parent,var(32),62+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -2
persistent=0

[State 1000, LevelUP];黄3
type = Explod
triggerall = time
triggerall = parent,var(51) = 1
triggerall = !numexplod(242302)
trigger1 = parent,var(46) = 3
Anim = 2302
id = 242302
pos = ifelse(Facing = 1,62+parent,var(32),62+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -2
persistent=0

[State 1000, LevelMAX];黄MAX
type = Explod
triggerall = time
triggerall = parent,var(51) = 1
triggerall = !numexplod(242302)
triggerall = !numexplod(242317)
triggerall = parent,stateno != [2400,2500]
trigger1 = parent,var(46) = 3
Anim = 2317
id = 242317
pos = ifelse(Facing = 1,62+parent,var(32),63+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -2

[State 1000 ,RemoveLevelMAX]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(46) != 3
trigger3 = parent,stateno = [2400,2500]
trigger4 = Matchover = 1
ID = 242317
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1


[State 1000, LevelUP];青2
type = Explod
triggerall = time
triggerall = parent,var(51) = 1
triggerall = !numexplod(242303)
trigger1 = parent,var(47) = 2
Anim = 2303
id = 242303
pos = ifelse(Facing = 1,89+parent,var(32),89+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -2
persistent=0

[State 1000, LevelUP];青3
type = Explod
triggerall = time
triggerall = parent,var(51) = 1
triggerall = !numexplod(242303)
trigger1 = parent,var(47) = 3
Anim = 2303
id = 242303
pos = ifelse(Facing = 1,89+parent,var(32),89+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -2
persistent=0

[State 1000, LevelMAX];青MAX
type = Explod
triggerall = time
triggerall = parent,var(51) = 1
triggerall = !numexplod(242303)
triggerall = !numexplod(242318)
triggerall = parent,stateno != [2400,2500]
trigger1 = parent,var(47) = 3
Anim = 2318
id = 242318
pos = ifelse(Facing = 1,89+parent,var(32),90+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -2

[State 1000 ,RemoveLevelMAX]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(47) != 3
trigger3 = parent,stateno = [2400,2500]
trigger4 = Matchover = 1
ID = 242318
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

[State 1000, LevelUP];赤2
type = Explod
triggerall = time
triggerall = parent,var(51) = 1
triggerall = !numexplod(242304)
trigger1 = parent,var(48) = 2
Anim = 2304
id = 242304
pos = ifelse(Facing = 1,35+parent,var(32),35+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -2
persistent=0

[State 1000, LevelUP];赤3
type = Explod
triggerall = time
triggerall = parent,var(51) = 1
triggerall = !numexplod(242304)
trigger1 = parent,var(48) = 3
Anim = 2304
id = 242304
pos = ifelse(Facing = 1,35+parent,var(32),35+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -2
persistent=0

[State 1000, LevelMAX];赤MAX
type = Explod
triggerall = time
triggerall = parent,var(51) = 1
triggerall = !numexplod(242304)
triggerall = !numexplod(242319)
triggerall = parent,stateno != [2400,2500]
trigger1 = parent,var(48) = 3
Anim = 2319
id = 242319
pos = ifelse(Facing = 1,35+parent,var(32),36+parent,var(32)),232+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1
removetime = -2

[State 1000 ,RemoveLevelMAX]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(48) != 3
trigger3 = parent,stateno = [2400,2500]
trigger4 = Matchover = 1
ID = 242319
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1




;ジェムエフェクト-------------------------------------------
[State 1000, Effect];黄小
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = !numexplod(242154)
trigger1 = parent,var(53) = 1
trigger2 = parent,var(53) = 13
Anim = 2154
id = 242154
pos = ifelse(Facing = 1,59+parent,var(32),62+parent,var(32)),230+parent,var(33)
postype = back
facing = ifelse(Facing = 1,1,-1)
vel = 0,-.8
scale = .5,.5
ownpal = 1
sprpriority = 3
bindtime = 1
removeongethit = 1

[State 1000, Effect];黄中
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = !numexplod(242155)
trigger1 = parent,var(53) = 2
trigger2 = parent,var(53) = 14
Anim = 2155
id = 242155
pos = ifelse(Facing = 1,59+parent,var(32),62+parent,var(32)),230+parent,var(33)
postype = back
facing = ifelse(Facing = 1,1,-1)
vel = 0,-.8
scale = .5,.5
ownpal = 1
sprpriority = 3
bindtime = 1
removeongethit = 1

[State 1000, Effect];黄大
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = !numexplod(242156)
trigger1 = parent,var(53) = 3
trigger2 = parent,var(53) = 15
Anim = 2156
id = 242156
pos = ifelse(Facing = 1,59+parent,var(32),62+parent,var(32)),230+parent,var(33)
postype = back
facing = ifelse(Facing = 1,1,-1)
vel = 0,-.8
scale = .5,.5
ownpal = 1
sprpriority = 3
bindtime = 1
removeongethit = 1

[State 1000, Effect];黄特大
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = !numexplod(242157)
trigger1 = parent,var(53) = 4
trigger2 = parent,var(53) = 16
Anim = 2157
id = 242157
pos = ifelse(Facing = 1,59+parent,var(32),62+parent,var(32)),230+parent,var(33)
postype = back
facing = ifelse(Facing = 1,1,-1)
vel = 0,-.8
scale = .5,.5
ownpal = 1
sprpriority = 3
bindtime = 1
removeongethit = 1

[State 1000, Effect];青小
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = !numexplod(2421558)
trigger1 = parent,var(53) = 5
trigger2 = parent,var(53) = 13
Anim = 2158
id = 242158
pos = ifelse(Facing = 1,83+parent,var(32),86+parent,var(32)),230+parent,var(33)
postype = back
facing = ifelse(Facing = 1,1,-1)
vel = 0,-.8
scale = .5,.5
ownpal = 1
sprpriority = 3
bindtime = 1
removeongethit = 1

[State 1000, Effect];青中
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = !numexplod(2421559)
trigger1 = parent,var(53) = 6
trigger2 = parent,var(53) = 14
Anim = 2159
id = 242159
pos = ifelse(Facing = 1,83+parent,var(32),86+parent,var(32)),230+parent,var(33)
postype = back
facing = ifelse(Facing = 1,1,-1)
vel = 0,-.8
scale = .5,.5
ownpal = 1
sprpriority = 3
bindtime = 1
removeongethit = 1

[State 1000, Effect];青大
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = !numexplod(24215460)
trigger1 = parent,var(53) = 7
trigger2 = parent,var(53) = 15
Anim = 2160
id = 242160
pos = ifelse(Facing = 1,83+parent,var(32),86+parent,var(32)),230+parent,var(33)
postype = back
facing = ifelse(Facing = 1,1,-1)
vel = 0,-.8
scale = .5,.5
ownpal = 1
sprpriority = 3
bindtime = 1
removeongethit = 1

[State 1000, Effect];青特大
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = !numexplod(24215461)
trigger1 = parent,var(53) = 8
trigger2 = parent,var(53) = 16
Anim = 2161
id = 242161
pos = ifelse(Facing = 1,83+parent,var(32),86+parent,var(32)),230+parent,var(33)
postype = back
facing = ifelse(Facing = 1,1,-1)
vel = 0,-.8
scale = .5,.5
ownpal = 1
sprpriority = 3
bindtime = 1
removeongethit = 1

[State 1000, Effect];赤小
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = !numexplod(2421562)
trigger1 = parent,var(53) = 9
trigger2 = parent,var(53) = 13
Anim = 2162
id = 242162
pos = ifelse(Facing = 1,33+parent,var(32),36+parent,var(32)),230+parent,var(33)
postype = back
facing = ifelse(Facing = 1,1,-1)
vel = 0,-.8
scale = .5,.5
ownpal = 1
sprpriority = 3
bindtime = 1
removeongethit = 1

[State 1000, Effect];赤中
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = !numexplod(2421563)
trigger1 = parent,var(53) = 10
trigger2 = parent,var(53) = 14
Anim = 2163
id = 242163
pos = ifelse(Facing = 1,33+parent,var(32),36+parent,var(32)),230+parent,var(33)
postype = back
facing = ifelse(Facing = 1,1,-1)
vel = 0,-.8
scale = .5,.5
ownpal = 1
sprpriority = 3
bindtime = 1
removeongethit = 1

[State 1000, Effect];赤大
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = !numexplod(2421564)
trigger1 = parent,var(53) = 11
trigger2 = parent,var(53) = 15
Anim = 2164
id = 242164
pos = ifelse(Facing = 1,33+parent,var(32),36+parent,var(32)),230+parent,var(33)
postype = back
facing = ifelse(Facing = 1,1,-1)
vel = 0,-.8
scale = .5,.5
ownpal = 1
sprpriority = 3
bindtime = 1
removeongethit = 1

[State 1000, Effect];赤特大
type = Explod
triggerall = 1
triggerall = parent,var(51) = 1
triggerall = !numexplod(2421565)
trigger1 = parent,var(53) = 12
trigger2 = parent,var(53) = 16
Anim = 2165
id = 242165
pos = ifelse(Facing = 1,33+parent,var(32),36+parent,var(32)),230+parent,var(33)
postype = back
facing = ifelse(Facing = 1,1,-1)
vel = 0,-.8
scale = .5,.5
ownpal = 1
sprpriority = 3
bindtime = 1
removeongethit = 1


[State 10100, Reset]
type = ParentVarSet
triggerall = 1
triggerall = parent,var(53) > 0
trigger1 = (numexplod(242154) >= 1) && (parent,var(53) < 13)
trigger2 = (numexplod(242155) >= 1) && (parent,var(53) < 13)
trigger3 = (numexplod(242156) >= 1) && (parent,var(53) < 13)
trigger4 = (numexplod(242157) >= 1) && (parent,var(53) < 13)
trigger5 = (numexplod(242158) >= 1) && (parent,var(53) < 13)
trigger6 = (numexplod(242159) >= 1) && (parent,var(53) < 13)
trigger7 = (numexplod(242160) >= 1) && (parent,var(53) < 13)
trigger8 = (numexplod(242161) >= 1) && (parent,var(53) < 13)
trigger9 = (numexplod(242162) >= 1) && (parent,var(53) < 13)
trigger10 = (numexplod(242163) >= 1) && (parent,var(53) < 13)
trigger11 = (numexplod(242164) >= 1) && (parent,var(53) < 13)
trigger12 = (numexplod(242165) >= 1) && (parent,var(53) < 13)
trigger13 = parent,var(53) = 13
trigger13 = (numexplod(242154) >= 1) && (numexplod(242158) >= 1) && (numexplod(242162) >= 1)
trigger14 = parent,var(53) = 14
trigger14 = (numexplod(242155) >= 1) && (numexplod(242159) >= 1) && (numexplod(242163) >= 1)
trigger15 = parent,var(53) = 15
trigger15 = (numexplod(242156) >= 1) && (numexplod(242160) >= 1) && (numexplod(242164) >= 1)
trigger16 = parent,var(53) = 16
trigger16 = (numexplod(242157) >= 1) && (numexplod(242161) >= 1) && (numexplod(242165) >= 1)
v = 53
value = 0
ignorehitpause=1

;アイテム玉スロット-------------------------------------------
[State 1000, Slot3];スロット3
type = Explod
triggerall = time
triggerall = !(parent,stateno = [200,210])
triggerall = !numexplod(242099)
triggerall = parent,var(51) = 1
trigger1 = parent,var(42) >= 1
Anim = 2099+parent,var(42)
id = 242099
pos = ifelse(Facing = 1,5+parent,var(32),5+parent,var(32)),233+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1

[State 1000 ,RemoveSlot3]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(52) = 1
trigger3 = parent,var(42) = 0
trigger4 = (parent,stateno = [200,210])
trigger5 = Matchover = 1
ID = 242099
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

[State 1000, Slot2];スロット2
type = Explod
triggerall = time
triggerall = !(parent,stateno = [200,210])
triggerall = !numexplod(242100)
triggerall = parent,var(51) = 1
trigger1 = parent,var(41) >= 1
Anim = 2099+parent,var(41)
id = 242100
pos = ifelse(Facing = 1,10+parent,var(32),10+parent,var(32)),233+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1

[State 1000 ,RemoveSlot2]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(52) = 1
trigger3 = parent,var(41) = 0
trigger4 = (parent,stateno = [200,210])
trigger5 = Matchover = 1
ID = 242100
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

[State 1000, Slot1];スロット1
type = Explod
triggerall = time
triggerall = !(parent,stateno = [200,210])
triggerall = !numexplod(242101)
triggerall = parent,var(51) = 1
trigger1 = parent,var(40) >= 1
Anim = 2099+parent,var(40)
id = 242101
pos = ifelse(Facing = 1,15+parent,var(32),15+parent,var(32)),233+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
ownpal = 1
ontop = 1
sprpriority = 1
bindtime = -1

[State 1000 ,RemoveSlot1]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,var(52) = 1
trigger3 = parent,var(40) = 0
trigger4 = (parent,stateno = [200,210])
trigger5 = Matchover = 1
ID = 242101
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1

;コマンドのアニメーション-------------------------------------------
[State 1000,Command]
type = Explod
triggerall = parent,var(51) = 1
triggerall = numexplod(242300) = 0
triggerall = parent,var(18) != 0
trigger1 = time
ID = 242300
anim = ifelse(Facing = 1,2300,2340)
pos = ifelse(Facing = 1,60+parent,var(32),63+parent,var(32)),233+parent,var(33)
postype = back
scale = .5,.5
facing = ifelse(Facing = 1,1,-1)
sprpriority = 9
ownpal = 1
ontop = 1
bindtime = -1
ignorehitpause=1

[State 1000 ,RemoveCommand]
type = RemoveExplod
triggerall = time
trigger1 = parent,var(51) >= 2
trigger2 = time >= 509
trigger2 = time/509 = 0
trigger3 = parent,var(55) > 0
trigger4 = parent,stateno = [2400,2500]
trigger5 = enemy,numhelper(247602) > 0
trigger6 = enemy,numhelper(247612) > 0
trigger7 = enemy,numhelper(247622) > 0
trigger8 = Matchover = 1
ID = 242300
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1


;アナウンス-------------------------------------------
;ファーストアタック-------------------------------------------
[State 3000,FirstAttack]
type = Explod
triggerall = 1
triggerall = parent,var(51) >= 1
triggerall = roundstate = 2
triggerall = numexplod(242229) = 0
trigger1 = parent,var(28) = 1 && parent,var(22) = 0
ID = 242229
anim = ifelse(parent,var(26)=1,2229,2230)
pos = ifelse(parent,var(26)=1,-70,5),50
postype = back
scale = 0.5,0.5
facing = ifelse(facing=1,1,-1)
sprpriority = -2
ownpal = 1
bindtime = -1
persistent=0
ignorehitpause=1

;フィニッシュ-------------------------------------------
[State 3000,Finish]
type = Explod
triggerall = parent,var(51) >= 1
triggerall = roundstate = 3
triggerall = parent,Alive
triggerall = numexplod(242231) = 0
triggerall = numexplod(242233) = 0
triggerall = numexplod(242235) = 0
triggerall = numexplod(242237) = 0
triggerall = numexplod(242239) = 0
triggerall = parent,var(34) = 0
triggerall = parent,stateno != [2000,2200]
triggerall = parent,stateno != [1500,1900]
triggerall = numhelper(246002) = 0
trigger1 = winko
ID = 242231
anim = ifelse(parent,var(26)=1,2231,2232)
pos = ifelse(parent,var(26)=1,-70,5),70
postype = back
scale = 0.5,0.5
facing = ifelse(facing=1,1,-1)
sprpriority = -2
ownpal = 1
bindtime = -1
persistent=0
ignorehitpause=1

;スペシャルフィニッシュ-------------------------------------------
[State 3000,SpecialFinish]
type = Explod
triggerall = parent,var(51) >= 1
triggerall = roundstate = 3
triggerall = parent,Alive
triggerall = numexplod(242231) = 0
triggerall = numexplod(242233) = 0
triggerall = numexplod(242235) = 0
triggerall = numexplod(242237) = 0
triggerall = numexplod(242239) = 0
triggerall = parent,var(34) = 0
triggerall = parent,stateno != [2000,2200]
triggerall = numhelper(246002) = 0
trigger1 = winko
ID = 242233
anim = ifelse(parent,var(26)=1,2233,2234)
pos = ifelse(parent,var(26)=1,-70,5),70
postype = back
scale = 0.5,0.5
facing = ifelse(facing=1,1,-1)
sprpriority = -2
ownpal = 1
bindtime = -1
persistent=0
ignorehitpause=1

;マイティコンボフィニッシュ-------------------------------------------
[State 3000,MightyComboFinish]
type = Explod
triggerall = parent,var(51) >= 1
triggerall = roundstate = 3
triggerall = parent,Alive
triggerall = numexplod(242231) = 0
triggerall = numexplod(242233) = 0
triggerall = numexplod(242235) = 0
triggerall = numexplod(242237) = 0
triggerall = numexplod(242239) = 0
triggerall = parent,var(34) = 0
triggerall = parent,stateno != [1500,1900]
triggerall = numhelper(246002) = 0
trigger1 = winko
ID = 242235
anim = ifelse(parent,var(26)=1,2235,2236)
pos = ifelse(parent,var(26)=1,-70,10),70
postype = back
scale = 0.5,0.5
facing = ifelse(facing=1,1,-1)
sprpriority = -2
ownpal = 1
bindtime = -1
persistent=0
ignorehitpause=1

;フラッシュコンボフィニッシュ-------------------------------------------
[State 3000,FlashComboFinish]
type = Explod
triggerall = parent,var(51) >= 1
triggerall = roundstate = 3
triggerall = parent,Alive
triggerall = numexplod(242231) = 0
triggerall = numexplod(242233) = 0
triggerall = numexplod(242235) = 0
triggerall = numexplod(242237) = 0
triggerall = numexplod(242239) = 0
triggerall = parent,var(34) > 0
triggerall = parent,stateno != [2000,2200]
triggerall = parent,stateno != [1500,1900]
triggerall = numhelper(246002) = 0
trigger1 = winko
ID = 242237
anim = ifelse(parent,var(26)=1,2237,2238)
pos = ifelse(parent,var(26)=1,-70,10),70
postype = back
scale = 0.5,0.5
facing = ifelse(facing=1,1,-1)
sprpriority = -2
ownpal = 1
bindtime = -1
persistent=0
ignorehitpause=1

;アイテムスローフィニッシュ-------------------------------------------
[State 3000,ItemThrowFinish]
type = Explod
triggerall = parent,var(51) >= 1
triggerall = roundstate = 3
triggerall = parent,Alive
triggerall = numexplod(242231) = 0
triggerall = numexplod(242233) = 0
triggerall = numexplod(242235) = 0
triggerall = numexplod(242237) = 0
triggerall = numexplod(242239) = 0
triggerall = parent,var(34) = 0
triggerall = parent,stateno != [2000,2200]
triggerall = parent,stateno != [1500,1900]
triggerall = numhelper(246002) > 0
trigger1 = winko
ID = 242239
anim = ifelse(parent,var(26)=1,2239,2240)
pos = ifelse(parent,var(26)=1,-70,10),70
postype = back
scale = 0.5,0.5
facing = ifelse(facing=1,1,-1)
sprpriority = -2
ownpal = 1
bindtime = -1
persistent=0
ignorehitpause=1

;イージーリバーサル-------------------------------------------
[State 3000,EasyRebersal]
type = Explod
triggerall = 1
triggerall = parent,var(51) >= 1
triggerall = roundstate = 2
triggerall = numexplod(242241) = 0
trigger1 = parent,stateno = 2300
ID = 242241
anim = ifelse(parent,var(26)=1,2241,2242)
pos = ifelse(parent,var(26)=1,-70,5),50
postype = back
scale = 0.5,0.5
facing = ifelse(facing=1,1,-1)
sprpriority = -2
ownpal = 1
bindtime = -1
ignorehitpause=1

;ヒットカウントGood!!-------------------------------------------
[State 3000,Good]
type = Explod
triggerall = 1
triggerall = parent,var(51) >= 1
triggerall = roundstate = 2
triggerall = numexplod(242250) = 0
trigger1 = parent,var(28) = 1
trigger1 = parent,var(25) >= 2 && parent,var(25) < 4
ID = 242250
anim = ifelse(parent,var(26)=1,2250,2251)
pos = ifelse(parent,var(26)=1,-70,-30),90
postype = back
scale = 0.5,0.5
facing = ifelse(facing=1,1,-1)
sprpriority = -2
ownpal = 1
bindtime = -1
ignorehitpause=1

;ヒットカウントGreat!!-------------------------------------------
[State 3000,Great]
type = Explod
triggerall = 1
triggerall = parent,var(51) >= 1
triggerall = roundstate = 2
triggerall = numexplod(242252) = 0
trigger1 = parent,var(28) = 1
trigger1 = parent,var(25) >= 4 && parent,var(25) < 6
ID = 242252
anim = ifelse(parent,var(26)=1,2252,2253)
pos = ifelse(parent,var(26)=1,-70,-30),90
postype = back
scale = 0.5,0.5
facing = ifelse(facing=1,1,-1)
sprpriority = -2
ownpal = 1
bindtime = -1
ignorehitpause=1

;ヒットカウントVeryGood!!-------------------------------------------
[State 3000,VeryGood]
type = Explod
triggerall = 1
triggerall = parent,var(51) >= 1
triggerall = roundstate = 2
triggerall = numexplod(242254) = 0
trigger1 = parent,var(28) = 1
trigger1 = parent,var(25) >= 6 && parent,var(25) < 8
ID = 242254
anim = ifelse(parent,var(26)=1,2254,2255)
pos = ifelse(parent,var(26)=1,-70,5),90
postype = back
scale = 0.5,0.5
facing = ifelse(facing=1,1,-1)
sprpriority = -2
ownpal = 1
bindtime = -1
ignorehitpause=1

;ヒットカウントWonderfull!!-------------------------------------------
[State 3000,Wonderfull]
type = Explod
triggerall = 1
triggerall = parent,var(51) >= 1
triggerall = roundstate = 2
triggerall = numexplod(242256) = 0
trigger1 = parent,var(28) = 1
trigger1 = parent,var(25) >= 8 && parent,var(25) < 10
ID = 242256
anim = ifelse(parent,var(26)=1,2256,2257)
pos = ifelse(parent,var(26)=1,-70,5),90
postype = back
scale = 0.5,0.5
facing = ifelse(facing=1,1,-1)
sprpriority = -2
ownpal = 1
bindtime = -1
ignorehitpause=1

;ヒットカウントFantastic!!-------------------------------------------
[State 3000,Fantastic]
type = Explod
triggerall = 1
triggerall = parent,var(51) >= 1
triggerall = roundstate = 2
triggerall = numexplod(242258) = 0
trigger1 = parent,var(28) = 1
trigger1 = parent,var(25) >= 10 && parent,var(25) < 12
ID = 242258
anim = ifelse(parent,var(26)=1,2258,2259)
pos = ifelse(parent,var(26)=1,-70,5),90
postype = back
scale = 0.5,0.5
facing = ifelse(facing=1,1,-1)
sprpriority = -2
ownpal = 1
bindtime = -1
ignorehitpause=1

;ヒットカウントMarvelous!!-------------------------------------------
[State 3000,Marvelous]
type = Explod
triggerall = 1
triggerall = parent,var(51) >= 1
triggerall = roundstate = 2
triggerall = numexplod(242260) = 0
trigger1 = parent,var(28) = 1
trigger1 = parent,var(25) >= 12
ID = 242260
anim = ifelse(parent,var(26)=1,2260,2261)
pos = ifelse(parent,var(26)=1,-70,5),90
postype = back
scale = 0.5,0.5
facing = ifelse(facing=1,1,-1)
sprpriority = -2
ownpal = 1
bindtime = -1
ignorehitpause=1

[State 3000, HitCountReset]
type = ParentVarSet
triggerall = time
trigger1 = numexplod(242250) = 1
trigger2 = numexplod(242252) = 1
trigger3 = numexplod(242254) = 1
trigger4 = numexplod(242256) = 1
trigger5 = numexplod(242258) = 1
trigger6 = numexplod(242260) = 1
trigger7 = roundstate != 2
v = 25
value = 0
ignorehitpause = 1


;KO-------------------------------------------
[State 3500, KOVoice01]
type = PlaySnd
trigger1 = parent,stateno = 3500
value = s200,26
persistent=0

[State 3500, KOVoice02]
type = PlaySnd
trigger1 = parent,stateno = 3510
value = s200,25
persistent=0

[State 3000,Suibotsu]
type = Explod
triggerall = 1
triggerall = numexplod(242004) = 0
trigger1 = parent,var(24) = 1
trigger1 = parent,stateno = 5150
ID = 242004
anim = 2004
pos = 0,ceil(240-screenpos Y)
postype = p1
scale = 0.8333,1
facing = ifelse(facing=1,1,-1)
sprpriority = 3
ownpal = 1
ontop = 1
bindtime = -1
persistent=0
ignorehitpause=1

[State 3500, SuibotsuSE]
type = PlaySnd
trigger1 = numexplod(242004) = 1
value = s100,34
persistent=0

[State 3500, AirSE]
type = PlaySnd
trigger1 = numexplod(242000) = 1
value = s100,35
volume = -200
persistent=0

[State 3000,Ring01]
type = Explod
triggerall = 1
triggerall = numexplod(242000) = 0
trigger1 = parent,var(24) = 2
trigger1 = parent,stateno = 5150
ID = 242000
anim = 2000
pos = 0,-35
postype = p1
scale = 0.8333,1
facing = ifelse(facing=1,1,-1)
vel = 0,-5.5
sprpriority = 3
ownpal = 1
ontop = 1
;bindtime = -1
persistent=0
ignorehitpause=1

[State 3000,Ring02]
type = Explod
triggerall = 1
triggerall = numexplod(2420002) = 0
trigger1 = parent,var(24) = 2
trigger1 = parent,stateno = 5150
ID = 2420002
anim = 2000
pos = 0,-35
postype = p1
scale = 0.8333,1
facing = ifelse(facing=1,1,-1)
vel = -4.0,-4.0
sprpriority = 3
ownpal = 1
ontop = 1
;bindtime = -1
persistent=0
ignorehitpause=1

[State 3000,Ring03]
type = Explod
triggerall = 1
triggerall = numexplod(2420003) = 0
trigger1 = parent,var(24) = 2
trigger1 = parent,stateno = 5150
ID = 2420003
anim = 2000
pos = 0,-35
postype = p1
scale = 0.8333,1
facing = ifelse(facing=1,1,-1)
vel = -5.5,0
sprpriority = 3
ownpal = 1
ontop = 1
;bindtime = -1
persistent=0
ignorehitpause=1

[State 3000,Ring04]
type = Explod
triggerall = 1
triggerall = numexplod(2420004) = 0
trigger1 = parent,var(24) = 2
trigger1 = parent,stateno = 5150
ID = 2420004
anim = 2000
pos = 0,-35
postype = p1
scale = 0.8333,1
facing = ifelse(facing=1,1,-1)
vel = -4.0,4.0
sprpriority = 3
ownpal = 1
ontop = 1
;bindtime = -1
persistent=0
ignorehitpause=1

[State 3000,Ring05]
type = Explod
triggerall = 1
triggerall = numexplod(2420005) = 0
trigger1 = parent,var(24) = 2
trigger1 = parent,stateno = 5150
ID = 2420005
anim = 2000
pos = 0,-35
postype = p1
scale = 0.8333,1
facing = ifelse(facing=1,1,-1)
vel = 0,5.5
sprpriority = 3
ownpal = 1
ontop = 1
;bindtime = -1
persistent=0
ignorehitpause=1

[State 3000,Ring06]
type = Explod
triggerall = 1
triggerall = numexplod(2420006) = 0
trigger1 = parent,var(24) = 2
trigger1 = parent,stateno = 5150
ID = 2420006
anim = 2000
pos = 0,-35
postype = p1
scale = 0.8333,1
facing = ifelse(facing=1,1,-1)
vel = 4.0,4.0
sprpriority = 3
ownpal = 1
ontop = 1
;bindtime = -1
persistent=0
ignorehitpause=1

[State 3000,Ring07]
type = Explod
triggerall = 1
triggerall = numexplod(2420007) = 0
trigger1 = parent,var(24) = 2
trigger1 = parent,stateno = 5150
ID = 2420007
anim = 2000
pos = 0,-35
postype = p1
scale = 0.8333,1
facing = ifelse(facing=1,1,-1)
vel = 5.5,0
sprpriority = 3
ownpal = 1
ontop = 1
;bindtime = -1
persistent=0
ignorehitpause=1

[State 3000,Ring08]
type = Explod
triggerall = 1
triggerall = numexplod(2420008) = 0
trigger1 = parent,var(24) = 2
trigger1 = parent,stateno = 5150
ID = 2420008
anim = 2000
pos = 0,-35
postype = p1
scale = 0.8333,1
facing = ifelse(facing=1,1,-1)
vel = 4.0,-4.0
sprpriority = 3
ownpal = 1
ontop = 1
;bindtime = -1
persistent=0
ignorehitpause=1

;気絶-------------------------------------------
[State 1000,PiyoPiyo]
type = Explod
triggerall = 1
triggerall = numexplod(242201) = 0
trigger1 = parent,stateno = 3600
ID = 242201
anim = 2201+random%3
pos = 0,-70
postype = p1
scale = .5,.5
facing = 1
sprpriority = -2
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
removetime = -1
ownpal = 1
ontop = 1
bindtime = -1
ignorehitpause=1

[State 1000 ,RemovePiyoPiyo]
type = RemoveExplod
triggerall = 1
trigger1 = parent,var(51) >= 2
trigger2 = parent,stateno != 3600
ID = 242201
supermovetime = 9999999999999999
pausemovetime = 9999999999999999
ignorehitpause=1


;相手が出したジェム-------------------------------------------
;赤小-------------------------------------------
[State 10100, Count]
type = parentVarAdd
triggerall = 1
trigger1 = enemy,numhelper(247602) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247602) = 1
v = 58
value = 1
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
triggerall = 1
trigger1 = enemy,numhelper(247602) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247602) = 1
v = 39
value = ifelse((parent,var(48)=3),70,50)
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
triggerall = 1
trigger1 = enemy,numhelper(247602) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247602) = 1
v = 53
value = 9
ignorehitpause=1

;黄小-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247622) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247622) = 1
v = 56
value = 1
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247622) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247622) = 1
v = 39
value = ifelse((parent,var(46)=3),70,50)
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247622) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247622) = 1
v = 53
value = 1
ignorehitpause=1

;青小-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247612) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247612) = 1
v = 57
value = 1
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247612) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247612) = 1
v = 39
value = ifelse((parent,var(47)=3),70,50)
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247612) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247612) = 1
v = 53
value = 5
ignorehitpause=1

;赤中-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247604) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247604) = 1
v = 58
value = 2
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247604) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247604) = 1
v = 39
value = ifelse((parent,var(48)=3),150,100)
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247604) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247604) = 1
v = 53
value = 10
ignorehitpause=1

;黄中-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247624) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247624) = 1
v = 56
value = 2
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247624) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247624) = 1
v = 39
value = ifelse((parent,var(46)=3),150,100)
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247624) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247624) = 1
v = 53
value = 2
ignorehitpause=1

;青中-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247614) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247614) = 1
v = 57
value = 2
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247614) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247614) = 1
v = 39
value = ifelse((parent,var(47)=3),150,100)
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247614) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247614) = 1
v = 53
value = 6
ignorehitpause=1

;赤大-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247606) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247606) = 1
v = 58
value = 5
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247606) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247606) = 1
v = 39
value = ifelse((parent,var(48)=3),300,200)
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247606) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247606) = 1
v = 53
value = 11
ignorehitpause=1

;黄大-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247626) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247626) = 1
v = 56
value = 5
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247626) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247626) = 1
v = 39
value = ifelse((parent,var(46)=3),300,200)
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247626) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247626) = 1
v = 53
value = 3
ignorehitpause=1

;青大-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247616) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247616) = 1
v = 57
value = 5
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247616) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247616) = 1
v = 39
value = ifelse((parent,var(47)=3),300,200)
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247616) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247616) = 1
v = 53
value = 7
ignorehitpause=1

;赤特大-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247608) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247608) = 1
v = 58
value = 10
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247608) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247608) = 1
v = 39
value = ifelse((parent,var(48)=3),600,400)
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247608) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247608) = 1
v = 53
value = 12
ignorehitpause=1

;黄特大-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247628) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247628) = 1
v = 56
value = 10
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247628) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247628) = 1
v = 39
value = ifelse((parent,var(46)=3),600,400)
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247628) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247628) = 1
v = 53
value = 4
ignorehitpause=1

;青特大-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247618) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247618) = 1
v = 57
value = 10
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247618) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247618) = 1
v = 39
value = ifelse((parent,var(47)=3),600,400)
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247618) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247618) = 1
v = 53
value = 8
ignorehitpause=1

;レインボー小-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247632) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247632) = 1
v = 56
value = 1
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247632) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247632) = 1
v = 57
value = 1
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247632) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247632) = 1
v = 58
value = 1
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247632) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247632) = 1
v = 39
value = 70
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247632) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247632) = 1
v = 53
value = 13
ignorehitpause=1

;レインボー中-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247634) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247634) = 1
v = 56
value = 2
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247634) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247634) = 1
v = 57
value = 2
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247634) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247634) = 1
v = 58
value = 2
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247634) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247634) = 1
v = 39
value = 100
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247634) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247634) = 1
v = 53
value = 14
ignorehitpause=1

;レインボー大-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247636) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247636) = 1
v = 56
value = 5
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247636) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247636) = 1
v = 57
value = 5
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247636) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247636) = 1
v = 58
value = 5
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247636) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247636) = 1
v = 39
value = 200
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247636) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247636) = 1
v = 53
value = 15
ignorehitpause=1

;レインボー特大-------------------------------------------
[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247638) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247638) = 1
v = 56
value = 10
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247638) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247638) = 1
v = 57
value = 10
ignorehitpause=1

[State 10100, Count]
type = parentVarAdd
trigger1 = enemy,numhelper(247638) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247638) = 1
v = 58
value = 10
ignorehitpause=1

[State 10100, Power]
type = ParentVarSet
trigger1 = enemy,numhelper(247638) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247638) = 1
v = 39
value = 400
ignorehitpause=1

[State 10100, Effect]
type = parentVarSet
trigger1 = enemy,numhelper(247638) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(247638) = 1
v = 53
value = 16
ignorehitpause=1


;相手が出した食べ物-------------------------------------------
;イチゴ-------------------------------------------
[State 10100, LifeUp]
type = parentVarAdd
trigger1 = enemy,numhelper(248104) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(248104) = 1
v = 54
value = 10
ignorehitpause=1

;スイカ-------------------------------------------
[State 10100, LifeUp]
type = parentVarAdd
trigger1 = enemy,numhelper(248114) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(248114) = 1
v = 54
value = 15
ignorehitpause=1

;桃缶-------------------------------------------
[State 10100, LifeUp]
type = parentVarAdd
trigger1 = enemy,numhelper(248124) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(248124) = 1
v = 54
value = 20
ignorehitpause=1

;ケーキ-------------------------------------------
[State 10100, LifeUp]
type = parentVarAdd
trigger1 = enemy,numhelper(248134) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(248134) = 1
v = 54
value = 25
ignorehitpause=1

;クリームソーダ-------------------------------------------
[State 10100, LifeUp]
type = parentVarAdd
trigger1 = enemy,numhelper(248144) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(248144) = 1
v = 54
value = 30
ignorehitpause=1

;パフェ-------------------------------------------
[State 10100, LifeUp]
type = parentVarAdd
trigger1 = enemy,numhelper(248154) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(248154) = 1
v = 54
value = 40
ignorehitpause=1

;ハンバーガ-------------------------------------------
[State 10100, LifeUp]
type = parentVarAdd
trigger1 = enemy,numhelper(248164) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(248164) = 1
v = 54
value = 50
ignorehitpause=1

;ピザ-------------------------------------------
[State 10100, LifeUp]
type = parentVarAdd
trigger1 = enemy,numhelper(248174) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(248174) = 1
v = 54
value = 70
ignorehitpause=1

;ステーキ-------------------------------------------
[State 10100, LifeUp]
type = parentVarAdd
trigger1 = enemy,numhelper(248184) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(248184) = 1
v = 54
value = 80
ignorehitpause=1

;漫画肉-------------------------------------------
[State 10100, LifeUp]
type = parentVarAdd
trigger1 = enemy,numhelper(248194) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(248194) = 1
v = 54
value = 100
ignorehitpause=1

;チキン-------------------------------------------
[State 10100, LifeUp]
type = parentVarAdd
trigger1 = enemy,numhelper(248204) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(248204) = 1
v = 54
value = 150
ignorehitpause=1

;丸焼き-------------------------------------------
[State 10100, LifeUp]
type = parentVarAdd
trigger1 = enemy,numhelper(248214) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(248214) = 1
v = 54
value = 200
ignorehitpause=1



;相手が出したアイテム玉-------------------------------------------
;バナナ-------------------------------------------
[State 10100, Slot3Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) >= 1
triggerall = parent,var(42) = 0
trigger1 = enemy,numhelper(246402) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246402) = 1
v = 42
value = 1
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) = 0
trigger1 = enemy,numhelper(246402) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246402) = 1
v = 41
value = 1
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
triggerall = parent,var(40) = 0
trigger1 = enemy,numhelper(246402) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246402) = 1
v = 40
value = 1
ignorehitpause=1

;火-------------------------------------------
[State 10100, Slot3Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) >= 1
triggerall = parent,var(42) = 0
trigger1 = enemy,numhelper(246412) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246412) = 1
v = 42
value = 2
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) = 0
trigger1 = enemy,numhelper(246412) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246412) = 1
v = 41
value = 2
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
triggerall = parent,var(40) = 0
trigger1 = enemy,numhelper(246412) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246412) = 1
v = 40
value = 2
ignorehitpause=1

;石-------------------------------------------
[State 10100, Slot3Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) >= 1
triggerall = parent,var(42) = 0
trigger1 = enemy,numhelper(246422) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246422) = 1
v = 42
value = 3
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) = 0
trigger1 = enemy,numhelper(246422) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246422) = 1
v = 41
value = 3
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
triggerall = parent,var(40) = 0
trigger1 = enemy,numhelper(246422) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246422) = 1
v = 40
value = 3
ignorehitpause=1

;毒-------------------------------------------
[State 10100, Slot3Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) >= 1
triggerall = parent,var(42) = 0
trigger1 = enemy,numhelper(246432) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246432) = 1
v = 42
value = 4
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) = 0
trigger1 = enemy,numhelper(246432) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246432) = 1
v = 41
value = 4
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
triggerall = parent,var(40) = 0
trigger1 = enemy,numhelper(246432) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246432) = 1
v = 40
value = 4
ignorehitpause=1

;爆弾-------------------------------------------
[State 10100, Slot3Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) >= 1
triggerall = parent,var(42) = 0
trigger1 = enemy,numhelper(246442) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246442) = 1
v = 42
value = 5
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) = 0
trigger1 = enemy,numhelper(246442) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246442) = 1
v = 41
value = 5
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
triggerall = parent,var(40) = 0
trigger1 = enemy,numhelper(246442) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246442) = 1
v = 40
value = 5
ignorehitpause=1

;氷-------------------------------------------
[State 10100, Slot3Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) >= 1
triggerall = parent,var(42) = 0
trigger1 = enemy,numhelper(246452) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246452) = 1
v = 42
value = 6
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) = 0
trigger1 = enemy,numhelper(246452) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246452) = 1
v = 41
value = 6
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
triggerall = parent,var(40) = 0
trigger1 = enemy,numhelper(246452) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246452) = 1
v = 40
value = 6
ignorehitpause=1

;雷-------------------------------------------
[State 10100, Slot3Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) >= 1
triggerall = parent,var(42) = 0
trigger1 = enemy,numhelper(246462) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246462) = 1
v = 42
value = 7
ignorehitpause=1

[State 10100, Slot2Check]
type = parentVarAdd
triggerall = parent,var(40) >= 1
triggerall = parent,var(41) = 0
trigger1 = enemy,numhelper(246462) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246462) = 1
v = 41
value = 7
ignorehitpause=1

[State 10100, Slot1Check]
type = parentVarAdd
triggerall = parent,var(40) = 0
trigger1 = enemy,numhelper(246462) = 1
trigger2 = teammode = simul
trigger2 = numpartner > 0
trigger2 = partner,numhelper(246462) = 1
v = 40
value = 7
ignorehitpause=1





;通常KOボイス-----------------------------------------------------------------
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = parent,alive = 0
trigger1 = parent,var(24) = 0
value = s11, 0
persistent=0







[State 3000, Assert]
type = AssertSpecial
trigger1 = time
flag = noshadow
flag1 = invisible
ignorehitpause = 1

[State 9000, bind]
type = BindToRoot
trigger1 = time
ignorehitpause=1

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = parent,var(51) >= 3
;trigger2 = Matchover = 1
ignorehitpause=1