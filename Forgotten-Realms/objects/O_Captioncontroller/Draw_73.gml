if (caption_text != "") {
    var margin = 32;
    var caption_y = display_get_gui_height() - margin;
    var caption_x = display_get_gui_width() / 2;

    draw_set_alpha(caption_alpha);
    draw_set_color(c_white);
    draw_set_font(Default_Font); // optional custom font
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);

    // Draw shadow for readability
    draw_text(caption_x + 2, caption_y + 2, caption_text);


    draw_set_alpha(1); // reset
}
