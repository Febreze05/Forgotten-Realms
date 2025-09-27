// creates the sprite
//draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//sets the text settings
draw_set_font(Default_Font);
draw_set_color(c_black);

draw_text(x + border,y + border + space, "                               Instructions:");
draw_text(x + border, y + border + space*2, "Spacebar to start fishing the press it again to catch a fish");
