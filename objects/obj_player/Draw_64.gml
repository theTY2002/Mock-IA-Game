/// @description Draw the GUI
/*
if (room == rm_pause)
{
	//Draw Stats Box
	draw_rectangle(room_width * 0.5, room_height * 0.5, room_width * 1.1, room_height * 1.65, false);
	draw_set_color(c_black);
	draw_rectangle(room_width * 0.5, room_height * 0.5, room_width * 1.1, room_height * 1.65, true);
	//Draw Stats
	draw_set_font(fnt_small);
	draw_set_color(c_black);
	draw_text(room_width * 0.45, room_height * 0.55, "Level: " + string(p_level));
	draw_text(room_width * 0.45, room_height * 0.55, "Health: " + string(p_health) + "/" + string(p_maxHealth));
	draw_text(room_width * 0.45, room_height * 0.55, "Attack: " + string(p_attack));
	draw_text(room_width * 0.45, room_height * 0.55, "Magic Attack: " + string(p_mAttack));
	draw_text(room_width * 0.45, room_height * 0.55, "Defense: " + string(p_defense));
	draw_text(room_width * 0.45, room_height * 0.55, "Magic Defense: " + string(p_mDefense));
	draw_text(room_width * 0.45, room_height * 0.55, "Magic Points: " + string(p_magic) + "/" + string(p_maxMagic));
	draw_text(room_width * 0.45, room_height * 0.55, "Speed: " + string(p_speed));
	draw_text(room_width * 0.45, room_height * 0.55, "Accuracy: " + string(p_accuracy) + "%");
	draw_text(room_width * 0.45, room_height * 0.55, "Dodge: " + string(p_dodge) + "%");
	draw_text(room_width * 0.45, room_height * 0.55, "Luck: " + string(p_luck));
	draw_text(room_width * 0.45, room_height * 0.55, "Exp: " + string(p_exp) + "/" + string(p_maxExp));
	draw_set_color(c_white);
}