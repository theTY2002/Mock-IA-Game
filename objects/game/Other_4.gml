// @description Insert description here
// You can write your code in this editor

with (obj_player)
{
	switch (facing)
	{
		case dir.right:
			yFrame = 11;
			break;
		case dir.left:
			yFrame = 9;
			break;
		case dir.down:
			yFrame = 10;
			break;
		case dir.up:
			yFrame = 8;
			break;
	}
}

if (room == rm_battle)
{
	obj_battle_controller.alarm[0] = 1;
	inCombat = true;
}