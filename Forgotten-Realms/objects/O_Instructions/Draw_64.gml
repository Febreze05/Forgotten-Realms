// creates the sprite
//draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//sets the text settings
draw_set_font(Default_Font);
draw_set_color(c_black);

draw_text(x + border,y + border + space, "Fishing Game:");
draw_text(x + border, y + border + space*2, "Spacebar to start fishing the press it again to catch a fish");
draw_text(x + border, y + border + space*3, "Medieval Game:");
draw_text(x + border, y + border + space*4, "WASD to move and SpaceBar to jump");
draw_text(x + border, y + border + space*5, "Medieval Game:");
draw_text(x + border, y + border + space*6, "WASD to move and SpaceBar to jump");