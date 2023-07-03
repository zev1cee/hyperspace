MainMenu:


Createtext(2,"Hyperspace")
SetTextColor(2,255,255,255,255)
SetTextSize(2,140)
SetTextPosition(2,(768-GetTexttotalwidth(2))/2,360)

Createtext(3,"Maior pontuação:")
SetTextColor(5,138,0,34,255)
SetTextSize(3,60)
SetTextPosition(3,768-GetTexttotalwidth(3),0)

Createtext(4, "Aperte o botão do mouse pra iniciar")
SetTextSize(4,50)
Settextposition(4,(768-GetTexttotalwidth(4))/2,900)
SetTextColor(5,138,0,34,255)


gosub Hidegamesprites
gosub showmenutext

repeat 
	sync()
until GetPointerPressed()=1 

gameover=0
gosub Showgamesprites
gosub Hidemenutext

Return

// Player Ship =1
// Player Lazer = 2
// Enemy Ship = 3
// Stars = 5 to 104
// Enemy Bullets = 110 to 114

Hidegamesprites:
for i=1 to 114
	SetSpriteVisible(i,0)
next i
Return

Showgamesprites:
for i=1 to 114
	SetSpriteVisible(i,1)
next i
Return

Hidemenutext:
SetTextVisible(2,0)
SetTextVisible(4,0)
Return

Showmenutext:
SetTextVisible(2,1)
SetTextVisible(4,1)
Return
