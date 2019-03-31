/// @description Insert description here
// You can write your code in this editor
randomize();
room_goto_next();

debug = false;

enum dir
{
	right = 0,
	up = 90,
	left = 180,
	down = 270,
}

globalvar growthRateSlow, growthRateMedium, growthRateFast;

growthRateSlow = 1.1;
growthRateMedium = 1.15;
growthRateFast = 1.2;