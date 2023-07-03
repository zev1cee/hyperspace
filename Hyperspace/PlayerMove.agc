PlayerMove:


playerx=playerx+GetDirectionX()*15


if playerx<0
	playerx=0
endif



if playerx>GetVirtualWidth()-GetSpriteWidth(1)
	playerx=GetVirtualWidth()-GetSpriteWidth(1)
endif


SetSpritePosition(1,playerx,playery)

Return
