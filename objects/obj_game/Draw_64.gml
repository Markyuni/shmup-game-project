if (!paused) {
	var _vx = camera_get_view_x(view_camera[1]) * 2 + 12;
	var _vy = camera_get_view_y(view_camera[1]) - 36;
    
    var _score = string(round(points));
    _score = string_repeat("0", max(0, 10 - string_length(_score))) + _score;
	
	draw_set_font(fnt_game_1);
	draw_text(_vx, _vy + 24, "LIVES: " + string(player_lives));
	draw_text(_vx, _vy + 48, "PLAYER LEVEL: " + string(player_level));
    draw_text(_vx, _vy + 72, "POWER METER: " + string(power_meter));
		
	draw_text(x + 5, y + 5, string(obj_waves.timer));
    
    /* SCORE START */
    font_enable_effects(fnt_ui, true, {
        glowEnable: true,
        glowEnd: 32,
        glowColour: c_white,
        glowAlpha: .3
    });
    
    draw_set_font(fnt_ui);
    draw_text(16 * 2, 20, "STAGE " + string(current_stage));
    draw_text(96 * 2, 20, string(_score));
    draw_set_font(fnt_game_1);
    /* SCORE END */
}