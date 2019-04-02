// Enemy idle state

counter += 1;

//If player is close, switch to alert state
if (collision_circle(x, y, 128, obj_player, false, false))
	{
		state = enemyStates.alert;
	}

//Randonly switch between idle and wander states
if (counter >= room_speed * 3)
{
	var change = choose(0, 1);
	switch (change)
	{
		case 0:
			state = enemyStates.wander;
		case 1:
			counter = 0;
			break;
	}
}