/// @description Insert description here
// You can write your code in this editor
event_inherited();

spd = 0.5;

xFrame = 0;
yFrame = 0;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

spr_enemy_base = spr_slime_base;

script_execute(scr_enemy_stats(10, 10, 2, 1, 1, 1, 1, 1, 1, 1, 5));