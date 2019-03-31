/// @description Insert description here
// You can write your code in this editor
//Draw textbox
textBoxX = camera.x - camera_get_view_width(camera) / 8;
textBoxY = camera.y + boxHeight;//+ room_height / 2;

//textBoxX = clamp(textBoxX, camera_get_view_width(camera) / 4, room_width - boxWidth);
textBoxY = clamp(textBoxY, camera_get_view_height(camera) / 4, room_height);
draw_sprite(spr_textBox, 0, textBoxX, textBoxY);
//show_debug_message("textBoxX: " + string(textBoxX));
//show_debug_message("textBoxY: " + string(textBoxY));


//Draw text
draw_set_font(fnt_text);

if (charCount < string_length(text[page]))
{
	charCount += 0.5;
}
textPart = string_copy(text[page], 1, charCount);

//Draw Name
draw_set_halign(fa_center);
draw_text(textBoxX + (boxWidth / 2), textBoxY + yBuffer, name);
draw_set_halign(fa_left);

//Draw Text
draw_text_ext(textBoxX + xBuffer, textBoxY + stringHeight + yBuffer * 2, textPart, yBuffer, boxWidth);