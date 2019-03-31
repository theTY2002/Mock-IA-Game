/// @description Insert description here
// You can write your code in this editor
event_inherited();

scr_init_character();

spr_base = -1;
spr_feet = -1;
spr_legs = -1;
spr_torso = -1;
spr_hair = -1;
spr_attack = -1;

state = playerStates.move;

moveX = 0;
moveY = 0;

alarm[1] = 1;

myTextBox = noone;
myText = noone;
myName = noone;