//Enemy attack state

//If player is not very close, switch to alert state
if (!collision_circle(x, y, 24, obj_player, false, false))
{
	state = enemyStates.alert;
}

//Create hitbox
if (xFrame == 7)
{
	var createX = 0;
	var createY = 0;
	if (facing > 0 && facing < 90 || facing > 270 && facing < 360)
	{
		createX = 20;
	}
	else if ( facing > 90 &&  facing < 270)
	{
		createX = -20;
	}
	else
	{
		//This is bad
		createX = -20;
	}
	
	/*
	with (instance_create_depth(x + createX, y + createY, depth, obj_enemy_damage))
	{
		creator = self;
		show_debug_message("Creator is set");
	}
	attacked = true;
	*/
}
