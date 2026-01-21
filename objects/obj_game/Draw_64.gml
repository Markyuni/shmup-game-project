if (!paused) {
	var _vx = camera_get_view_x(view_camera[1]) * 2 + 12;
	var _vy = camera_get_view_y(view_camera[1]) - 36;
	
	draw_set_font(fnt_game_1);
	draw_text(_vx, _vy, "SCORE: " + string(points));
	draw_text(_vx, _vy + 24, "LIVES: " + string(player_lives));
	draw_text(_vx, _vy + 48, "PLAYER LEVEL: " + string(player_level));
    draw_text(_vx, _vy + 72, "POWER METER: " + string(power_meter));
		
	draw_text(x + 5, y + 5, string(obj_waves.timer));
}