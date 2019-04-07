//Draw textbox
textBoxX = 64;
textBoxY = 196;

draw_set_font(fnt_levelUp);
draw_set_color(c_black);

//Iterate through each character
if (charCount < string_length(text))
{
	charCount += 0.5;
}

//Draw Text
draw_text_ext(textBoxX + xBuffer, textBoxY + yBuffer, text, yBuffer, room_width);