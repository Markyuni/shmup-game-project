draw_set_halign(fa_center);
draw_set_font(fnt_menu_1);
draw_rectangle_colour(0, 0, display_get_width(), display_get_height(), c_black, c_black, c_black, c_black, false);

var _gap = 40;

for (var i = 0; i < array_length(pause); ++i) {
	draw_set_color(c_white);
	if i == index draw_set_color(c_red);
	
	draw_text(room_width / 2, room_height * (1 / array_length(pause) - .05) + _gap * i, pause[i]);
}

draw_set_colour(c_white);
draw_set_font(fnt_game_1);
draw_set_halign(fa_left);