//Transition to battle room and start battle
playerTurn = true;

enemyID = other.id.object_index;

with (other)
{
	instance_destroy();
}

with (obj_player)
{
	beforeBattleX = x;
	beforeBattleY = y;
}

scr_fadeout(rm_battle, c_green, 0.1, 130, 225);

instance_destroy(self);