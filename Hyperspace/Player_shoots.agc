Player_shoots:


if  GetPointerPressed()=1 and lazer_fired=0
	playsound(lazer)
	lazer_fired=1
	lazerx=GetSpriteX(1)+GetSpriteWidth(1)/2-GetSpriteWidth(2)/2
	lazery=getspriteY(1)-40
endif


if lazer_fired=1
	lazery=lazery-12
endif


If lazery<-GetSpriteHeight(2)
	lazer_fired=0
endif
	


SetSpritePosition(2,lazerx,lazery)

return
