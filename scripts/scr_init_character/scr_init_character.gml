// Initialises all the variables for the player object
walkSpd = 2;
spd = walkSpd;

xFrame = 1;
yFrame = 8;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

image_speed = 0;

facing = 0;

var enum playerStates
{
	move = scr_move_state_character,
	dash = scr_dash_state_character,
	attack = scr_attack_state_character,
}

state = playerStates.move;
scr_player_stats();
attacked = false;

globalvar inTextBox;
inTextBox = false;