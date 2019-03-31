/// @description Insert description here
// You can write your code in this editor

/*
//Draw textbox
textBoxX = camera.x - 187.5;
textBoxY = camera.y + 110;

textBoxX = clamp(textBoxX, 0, room_width - 400);
textBoxY = clamp(textBoxY, 320, room_height - 100);
draw_sprite(spr_textBox, 0, textBoxX, textBoxY);
//show_debug_message("textBoxX: " + string(textBoxX));
//show_debug_message("textBoxY: " + string(textBoxY));


//Draw text
draw_set_font(fnt_text);
draw_text_ext(textBoxX, textBoxY, text[page], stringHeight, boxWidth);