///@desc draw_slime_sprite (color)
///@arg color
var animLength = 10;
var frameSize = 64;
var animSpeed = 10;
var framesPerSecond = 60;
var color = argument0;

if (!inCombat)
{
	switch (color)
	{
		case c_teal:
			switch (state)
			{
				case (enemyStates.idle):
					yFrame = 0;
					break;
				case (enemyStates.wander):
				case (enemyStates.alert):
					if (facing > 90 &&  facing < 270)
					{
						yFrame = 2;
					}
					else
					{
						yFrame = 3;
					}
					break;
				case (enemyStates.attack):
					if (facing > 90 &&  facing < 270)
					{
						yFrame = 4;
					}
					else
					{
						yFrame = 5;
					}
					break;
				//case (enemyStates.death):
			}
			break;
		case c_blue:
			switch (state)
			{
				case (enemyStates.idle):
					yFrame = 7;
					break;
				case (enemyStates.wander):
				case (enemyStates.alert):
					if (facing > 90 &&  facing < 270)
					{
						yFrame = 9;
					}
					else
					{
						yFrame = 10;
					}
					break;
				case (enemyStates.attack):
					if (facing > 90 &&  facing < 270)
					{
						yFrame = 11;
					}
					else
					{
						yFrame = 12;
					}
					break;
				//case (enemyStates.death):
			}
			break;
		case c_red:
			switch (state)
			{
				case (enemyStates.idle):
					yFrame = 14;
					break;
				case (enemyStates.wander):
				case (enemyStates.alert):
					if (facing > 90 &&  facing < 270)
					{
						yFrame = 16;
					}
					else
					{
						yFrame = 17;
					}
					break;
				case (enemyStates.attack):
					if (facing > 90 &&  facing < 270)
					{
						yFrame = 18;
					}
					else
					{
						yFrame = 19;
					}
					break;
				//case (enemyStates.death):
			}
			break;
		case c_yellow:
			switch (state)
			{
				case (enemyStates.idle):
					yFrame = 21;
					break;
				case (enemyStates.wander):
				case (enemyStates.alert):
					if (facing > 90 &&  facing < 270)
					{
						yFrame = 23;
					}
					else
					{
						yFrame = 24;
					}
					break;
				case (enemyStates.attack):
					if (facing > 90 &&  facing < 270)
					{
						yFrame = 25;
					}
					else
					{
						yFrame = 26;
					}
					break;
				//case (enemyStates.death):
			}
			break;
	}
}
else
{
	if (enemyAttacking)
	{
		switch (color)
		{
			case c_teal:
				yFrame = 4;
				break;
			case c_blue:
				yFrame = 11;
				break;
			case c_red:
				yFrame = 18;
				break;
			case c_yellow:
				yFrame = 25;
				break;
		}
	}
	else
	{
		switch (color)
		{
			case c_teal:
				yFrame = 0;
				break;
			case c_blue:
				yFrame = 7;
				break;
			case c_red:
				yFrame = 14;
				break;
			case c_yellow:
				yFrame = 21;
				break;
		}
	}
}

drawX = x - x_offset;
drawY = y - y_offset;

//Draw Character Shadow
draw_sprite(spr_slime_shadow, 0, x, y + 6);

draw_sprite_part(spr_enemy_base, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, drawX, drawY);

if (xFrame + animSpeed / framesPerSecond < animLength)
{
	xFrame += animSpeed / framesPerSecond;
}
else
{
	xFrame = 0;
}