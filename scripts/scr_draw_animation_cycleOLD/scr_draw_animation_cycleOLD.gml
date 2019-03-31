/*
var animLength = argument0;
var frameSize = argument1;
var animSpeed = argument2;
var spriteToDraw = argument3;
var xFrame = argument4;
var framesPerSecond = 60;

draw_sprite_part(spriteToDraw, 0, floor(xFrame)*frameSize, 0, frameSize, frameSize, drawX, drawY);

//Animation
if (xFrame + animSpeed / framesPerSecond < animLength)
{
	xFrame += animSpeed / framesPerSecond;
}
else
{
	xFrame = 1;
}