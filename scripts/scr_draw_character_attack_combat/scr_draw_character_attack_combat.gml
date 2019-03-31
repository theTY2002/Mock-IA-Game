var animLength = 9;
var frameSize = 64;
var animSpeed = 12;
var framesPerSecond = 60;

xFrame = 0;
yFrame = 7;

drawX = x - x_offset;
drawY = y - y_offset;

//Draw Character Shadow
draw_sprite(spr_character_shadow, 0, x, y + 26);

draw_sprite_part(spr_attack_right, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX, drawY);

//Animation
while (xFrame + animSpeed / framesPerSecond < animLength)
{
	xFrame += animSpeed / framesPerSecond;
}