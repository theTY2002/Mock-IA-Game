//Initialise
text = "";
xBuffer = 25;
yBuffer = 25;
boxWidth = sprite_get_width(spr_textBox) - 2 * xBuffer;
boxHeight = sprite_get_height(spr_textBox);
stringHeight = string_height(text);
page = 0;
charCount = 0;
name = noone;