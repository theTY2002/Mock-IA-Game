var inputLeft = keyboard_check(vk_left);
var inputRight = keyboard_check(vk_right);
var inputUp = keyboard_check(vk_up);
var inputDown = keyboard_check(vk_down);
var inputDash = keyboard_check_pressed(vk_lshift);
var inputAttack = keyboard_check_pressed(ord("X"));

xaxis = (inputRight - inputLeft);
yaxis = (inputDown - inputUp);

if (inputDash)
{
	state = scr_dash_state_character;
	alarm[0] = room_speed/7;
}
else if (inputAttack)
{
	xFrame = 0;
	state = scr_attack_state_character;
	alarm[0] = 24;
}
else
{
	state = scr_move_state_character;
}

//Reset variables
moveX = 0;
moveY = 0;

//Get direction player is facing
if (xaxis != 0 || yaxis != 0)
{
	facing = point_direction(0, 0, xaxis, yaxis);
}

//Get the length
if (xaxis == 0 && yaxis == 0)
{
	len = 0;
}
else
{
	len = spd;
}

//Movement
moveX = lengthdir_x(len, facing);
moveY = lengthdir_y(len, facing);

scr_collision();

//Apply movement
x += moveX;
y += moveY;

