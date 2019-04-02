/// @description Insert description here
// You can write your code in this editor
//Draw textbox
textBoxX = 64;
textBoxY = 196;

//Iterate through each character
draw_set_font(fnt_levelUp);
draw_set_color(c_black);

if (charCount < string_length(text))
{
	charCount += 0.5;
}

//Draw Text
draw_text_ext(textBoxX + xBuffer, textBoxY + yBuffer, text, yBuffer, room_width);