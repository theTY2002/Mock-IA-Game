counter += 1;

scr_collision();

x += moveX;
y += moveY;

if (collision_circle(x, y, 128, obj_player, false, false))
	{
		state = enemyStates.alert;
	}

if (counter >= room_speed * 3)
{
	var change = choose(0, 1);
	switch (change)
	{
		case 0:
			state = enemyStates.wander;
		case 1:
			facing = irandom_range(0, 359);
			moveX = lengthdir_x(spd, facing);
			moveY = lengthdir_y(spd, facing);
			counter = 0;
			break;
	}
}