//Transition to battle
enemyID = creator.object_index;

with (creator)
{
	instance_destroy();
}

with (obj_player)
{
	beforeBattleX = x;
	beforeBattleY = y;
}

scr_fadeout(rm_battle, c_red, 0.05, x, y);

instance_destroy(self);