/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (keyboard_check_pressed(vk_space))
{
	if (page + 1 < array_length_1d(text))
	{
		page += 1;
		charCount = 0;
	}
	else
	{
		instance_destroy();
		//obj_parent_NPC.alarm[0] = 1;
		inTextBox = false;
		obj_parent_NPC.myTextBox = noone;
	}
}