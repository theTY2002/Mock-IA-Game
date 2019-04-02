//Player dash state

//Set speed to 4 times the walking speed
len = spd * 4;

//Movement
moveX = lengthdir_x(len, facing);
moveY = lengthdir_y(len, facing);

scr_collision();

//Apply movement
x += moveX;
y += moveY;

//Create dash effect
var dash = instance_create_depth(drawX, drawY, depth, obj_dash_effect);

if (sign(moveX) == -1)
{
	dash.sprite_index = spr_shadow_left;
}
else if (sign(moveX) == 1)
{
	dash.sprite_index = spr_shadow_right;
}
else if (sign(moveY) == -1)
{
		dash.sprite_index = spr_shadow_up;
}
else if (sign(moveY) == 1)
{
		dash.sprite_index = spr_shadow_down;
}

dash.image_index = image_index;