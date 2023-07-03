// checa as colisões dos sprites
collision:

if GetSpriteCollision( 2, 3 ) =1

	playsound(explosion)
	score=score+10
	enemyx=100: enemyy=-50
	lazer_fired=0
	lazerx=-50 :lazery=-50
endif



for i=0 to 4
	if GetSpriteCollision(110+i,1) =1
		playsound(explosion)
		gameover=1
		SetSpritePosition(110,-100,-100)
		SetSpritePosition(111,-100,-100)
		SetSpritePosition(112,-100,-100)
		SetSpritePosition(113,-100,-100)
		SetSpritePosition(114,-100,-100)
		
		
		enemyx=100: enemyy=-50


	endif
next i

return


