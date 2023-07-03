Enemy_move:
// move o inimigo para baixo na msm proporção
enemyy=enemyy+1


//Move a nave inimiga para direita ou esquerda
If enemy_direction=4 and enemyx>GetVirtualWidth()-GetSpriteWidth(3)
	enemy_direction=-4
endif

enemyx=enemyx+enemy_direction

If enemy_direction=-4 and enemyx<0
	enemy_direction=4
endif

enemyx=enemyx+enemy_direction

SetSpritePosition(3,enemyx,enemyy)

return


Enemy_Shoot:
if enemy_fired=0
	if random(1,5)=5
		enemy_fired=1
		for i=0 to 4
			SetSpritePosition(110+i,getspritex(3)+60,getspritey(3)+70)
		next i
	endif
endif

if enemy_fired=1
		SetSpritePosition(110,getspritex(110)-3,getspritey(110)+3)
		SetSpritePosition(111,getspritex(111)-1,getspritey(111)+3)
		SetSpritePosition(112,getspritex(112),getspritey(112)+3)
		SetSpritePosition(113,getspritex(113)+1,getspritey(113)+3)
		SetSpritePosition(114,getspritex(114)+3,getspritey(114)+3)

endif

if getspritey(110)>1024
	enemy_fired=0
endif
Return
