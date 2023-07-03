
SetVirtualResolution( 768, 1024 )
UseNewDefaultFonts(1)

playerx as float
playery as float
lazerx as float = -100
lazery as float
lazer_fired = 0

enemyx as float
enemyy as float
enemy_direction = 4
enemy_fired=0
gameover=1

score=0
highscore=0

#include "Loader.agc"
#include "PlayerMove.agc"
#include "Player_shoots.agc"
#include "enemy_move.agc"
#include "collision.agc"
#include "stars.agc"
#include "Text.agc"
#include "Sounds.agc"
#include "mainmenu.agc"

Gosub loader
Gosub make_stars
Gosub Make_text
Gosub Load_sounds
Gosub Load_Music

do
	if gameover=1
		Gosub MainMenu
		score=0
	endif
    
	Gosub PlayerMove
	Gosub Player_shoots
	Gosub Enemy_move
	Gosub Enemy_Shoot

	Gosub Move_stars


	SetTextString(1,"Pontuação: "+str(score))
	SetTextSize(1,40)
	if score>highscore
		highscore=score
	endif
	SetTextString(3,"Maior Pontuação: "+str(highscore))
	SetTextSize(3,40)


	Gosub collision
    Sync()
loop
