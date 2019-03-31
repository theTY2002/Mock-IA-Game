var animLength = 6;
var frameSize = 192;
var animSpeed = 12;
var framesPerSecond = 60;

drawX = x - x_offset;
drawY = y - y_offset;

switch (facing)
{
	case 0:
		attackYFrame = 3;
		break;
	case 90:
		attackYFrame = 0;
		break;
	case 180:
		attackYFrame = 1;
		break;
	case 270:
		attackYFrame = 2;
}

//Animation
if (attackXFrame + animSpeed / framesPerSecond < animLength)
{
	attackXFrame += animSpeed / framesPerSecond;
}
else
{
	attackXFrame = 0;
}

draw_sprite_part(spr_attack, 0, floor(attackXFrame)*frameSize, attackYFrame*frameSize, frameSize, frameSize, drawX, drawY);