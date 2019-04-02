//Enemy alert state

//Follow player
facing = point_direction(x, y, obj_player.x, obj_player.y);
moveX = lengthdir_x(spd, facing);
moveY = lengthdir_y(spd, facing);

scr_collision();

//Apply movement
x += moveX;
y += moveY;

//If player is not close, switch to wander state
if (!collision_circle(x, y, 128, obj_player, false, false))
{
	state = enemyStates.idle;
}

//If player is very close switch to attack state
if (collision_circle(x, y, 24, obj_player, false, false))
{
	state = enemyStates.attack;
}