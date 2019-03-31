facing = point_direction(x, y, obj_player.x, obj_player.y);
moveX = lengthdir_x(spd, facing);
moveY = lengthdir_y(spd, facing);

scr_collision();

x += moveX;
y += moveY;

if (!collision_circle(x, y, 128, obj_player, false, false))
{
	state = enemyStates.idle;
}
if (collision_circle(x, y, 24, obj_player, false, false))
{
	state = enemyStates.attack;
}