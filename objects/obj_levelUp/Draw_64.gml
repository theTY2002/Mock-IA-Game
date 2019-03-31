/// @description Insert description here
// You can write your code in this editor
//Draw textbox
textBoxX = 64;
textBoxY = 196;

//textBoxX = clamp(textBoxX, room_width / 4, room_width * 2 / 4);
//textBoxY = clamp(textBoxY, room_height / 4, room_height / 4 * 3);
//draw_sprite(spr_textBox, 0, textBoxX, textBoxY);
//show_debug_message("textBoxX: " + string(textBoxX));
//show_debug_message("textBoxY: " + string(textBoxY));


//Iterate through each character
draw_set_font(fnt_text);

if (charCount < string_length(text[page]))
{
	charCount += 0.5;
}
textPart = string_copy(text[page], 1, charCount);

/*
//Draw Name
draw_set_halign(fa_center);
draw_set_color(c_yellow);
draw_text(textBoxX + (boxWidth / 2), textBoxY + yBuffer / 2, name);
draw_set_halign(fa_left);
draw_set_color(c_white);
*/

//Draw Text
draw_text_ext(textBoxX + xBuffer, textBoxY + yBuffer * 2, textPart, yBuffer, room_width);