//Draw character sprite in combat
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

//Animation
if (xFrame + animSpeed / framesPerSecond < animLength)
{
	xFrame += animSpeed / framesPerSecond;
}
else
{
	xFrame = 1;
}

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

if (spr_attack != -1)
{
	draw_sprite_part(spr_attack, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX + 20, drawY);
}