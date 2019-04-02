// Draws the character sprite in the overworld

//Initialise variables
var animLength = 9;
var frameSize = 64;
var animSpeed = 12;
var framesPerSecond = 60;

//If in overworld draw overworld sprites
if (!inCombat)
{
	switch (state)
	{
		case (playerStates.move):
		case (playerStates.dash):
			if (moveX > 0)
			{
				yFrame = 11;
			}
			else if (moveX < 0)
			{
				yFrame = 9;
			}
			else if (moveY < 0)
			{
				yFrame = 8;
			}
			else if (moveY > 0)
			{
				yFrame = 10;
			}
			else
			{
				xFrame = 0;
			}
			break;
		case (playerStates.attack):
			switch (facing)
			{
				case 0:
					yFrame = 7;
					break;
				case 90:
					yFrame = 4;
					break;
				case 180:
					yFrame = 5;
					break;
				case 270:
					yFrame = 6;
					break;
				//THIS IS BAD
				default:
					yFrame = 5;
					break;
			}
	}

	drawX = x - x_offset;
	drawY = y - y_offset;

	//Animation
	if (xFrame + animSpeed / framesPerSecond < animLength)
	{
		xFrame += animSpeed / framesPerSecond;
	}
	else
	{
		xFrame = 1;
	}

	if (spr_attack != -1)
	{
		switch (facing)
		{
			case 0:
				draw_sprite_part(spr_attack, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX + 20, drawY);
				break;
			case 90:
				draw_sprite_part(spr_attack, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX, drawY - 20);
				break;
			case 180:
				draw_sprite_part(spr_attack, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX - 20, drawY);
				break;
			case 270:
				draw_sprite_part(spr_attack, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX, drawY + 20);
				break;
			//This is bad
			default:
				draw_sprite_part(spr_attack, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX - 20, drawY);
		}
	}
}
//If in battle draw battle sprites
else
{
	yFrame = 7;
	drawX = x - x_offset;
	drawY = y - y_offset;
	//Draw Character Shadow
	draw_sprite(spr_character_shadow, 0, x, y + 26);

	if (playerAttacking)
	{
		yFrame = 7;
		//Animation
		if (xFrame + animSpeed / framesPerSecond < animLength)
		{
			xFrame += animSpeed / framesPerSecond;
		}
		else
		{
			xFrame = 1;
		}
	}
	else if (playerMAttacking)
	{
		yFrame = 3;
		//Animation
		if (xFrame + animSpeed / framesPerSecond < animLength - 2)
		{
			xFrame += animSpeed / framesPerSecond;
		}
		else
		{
			xFrame = 0;
		}
	}
	if (spr_attack != -1)
	{
		draw_sprite_part(spr_attack, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX + 20, drawY);
	}
}

//Draw Character Shadow
draw_sprite(spr_character_shadow, 0, x, y + 26);

//Draw character base
if (spr_base != -1)
{
	draw_sprite_part(spr_base, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX, drawY);
}

//Draw character feet
if (spr_feet != -1)
{
	draw_sprite_part(spr_feet, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX, drawY);
}

//Draw character legs
if (spr_legs != -1)
{
	draw_sprite_part(spr_legs, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX, drawY);
}

//Draw character torso
if (spr_torso != -1)
{
	draw_sprite_part(spr_torso, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX, drawY);
}

//Draw character hair
if (spr_hair != -1)
{
	draw_sprite_part(spr_hair, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX, drawY);
}