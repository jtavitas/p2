draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (!selected)
{
    draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, c_white, 1.0);
    draw_text_colour(x, y, a, b_color, b_color, b_color, b_color, 1.0);
}
else if (selected && correct)
{
    draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, c_green, 1.0);
    draw_text_colour(x, y, a, c_black, c_black, c_black, c_black, 1.0);
    //speed up
    //next question
}
else if (selected && !correct)
{
    draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, c_red, 1.0);
    draw_text_colour(x, y, a, c_black, c_black, c_black, c_black, 1.0);
    //slow down
    //next question
}
