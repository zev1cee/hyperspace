loader:

// Player Ship =1
// Player Lazer = 2
// Enemy Ship = 3
// Stars = 5 to 104
// Enemy Bullets = 110 to 114

loadimage(1,"navinha.png")
loadimage(2,"lazer.png")
loadimage(3,"naveinimiga.png")
loadimage(4,"enemyfire.png")


// cria a nave do jogador e posiciona na parte inferior
CreateSprite(1,1)
SetSpriteSize ( 1 , 120, 120)
playerx=GetVirtualWidth()/2 - GetSpriteWidth(1)/2
playery=GetVirtualHeight()-GetSpriteHeight(1)

SetSpritePosition(1,playerx,playery)

//cria o lazer e move para fora da tela
CreateSprite(2,2)
SetSpritePosition(2,-100,-100)

// cria a nave inimiga e posiciona no topo da tela

CreateSprite(3,3)
SetSpriteSize ( 3 , 120, 120)
SetSpritePosition(3,100,20)

// cria as balas inimigas (5)
for i=0 to 4
	CreateSprite(110+i,4)
next i

Return

