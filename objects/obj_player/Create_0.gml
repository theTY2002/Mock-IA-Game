/// @description Insert description here
// You can write your code in this editor

scr_init_character();

spr_base = spr_male_1;
spr_feet = spr_black_shoes_male;
spr_legs = spr_red_pants_male;
spr_torso = spr_white_longsleeve_male;
spr_hair = spr_bedhead_black_female;
spr_attack = spr_normal_attack;

facing = 0;

state = playerStates.move;
scr_player_stats();

var enum playerStates
{
	move = scr_move_state_character,
	dash = scr_dash_state_character,
	attack = scr_attack_state_character,
}

hp = 20;
attacked = false;

globalvar inTextBox;
inTextBox = false;