facing = point_direction(x, y, obj_parent_enemy.x, obj_parent_enemy.y);
moveX = lengthdir_x(spd, facing);
moveY = lengthdir_y(spd, facing);

scr_collision();

x += moveX;
y += moveY;