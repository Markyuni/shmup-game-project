draw_set_halign(fa_center);

draw_set_font(fnt_menu_1);
draw_set_alpha(image_alpha);
draw_text(room_width / 2, y + 192, "Stage " + string(obj_game.current_stage));
draw_set_alpha(1);

draw_set_halign(fa_left);