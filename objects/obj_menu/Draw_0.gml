draw_set_halign(fa_center);
draw_set_font(fnt_menu_1);

var _gap = 40;

for (var i = 0; i < array_length(menu[sub_menu]); ++i) {
	draw_set_color(c_white);
	if i == index draw_set_color(c_red);
	
	draw_text(room_width / 2, room_height * (1 / array_length(menu[sub_menu]) + .05) + _gap * i, menu[sub_menu][i]);
}

draw_set_colour(c_white);
draw_set_font(fnt_game_1);
draw_set_halign(fa_left);