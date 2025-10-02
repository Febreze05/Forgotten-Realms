// creates the sprite
//draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//sets the text settings
draw_set_font(Default_Font);
draw_set_color(c_black);

draw_text(x + border,y + border + space, "                               Instructions:");
draw_text(x + border, y + border + space*2, "Spacebar to start fishing and press repeatedly to catch a fish");
draw_text(x + border, y + border + space*3, "Upgrade Your strength with the upgrade button");
draw_text(x + border, y + border + space*4, " if you have enough fish");
draw_text(x + border, y + border + space*5, " to survive you need to catch as many fish as required");