var _vx = camera_get_view_x(view_camera[1]) * 2 + 12;
var _vy = camera_get_view_y(view_camera[1]) - 36;

draw_set_font(fnt_ui);
draw_text(_vx, _vy + 128, "Level Clear: " + string(obj_game.current_stage) + " x 5000");
draw_text(_vx, _vy + 160, "Pickups: " + string(obj_game.pickups_collected) + " x 100 = ");
draw_text(_vx, _vy + 256, "Multiplier:");
draw_text(_vx, _vy + 320, "Total:")

draw_set_halign(fa_right);
draw_text(_vx + 480, _vy + 128, string(level_points));
draw_text(_vx + 480, _vy + 160, string(obj_game.pickups_collected * 100));
draw_text(_vx + 480, _vy + 256, "x" + string(difficulty_mult));
draw_text(_vx + 480, _vy + 320, string(total_points));
draw_set_halign(fa_left);

if global.deathless_check {
    draw_text(_vx, _vy + 192, "Deathless:");
    draw_set_halign(fa_right);
    draw_text(_vx + 480, _vy + 192, string(deathless_points));
    draw_set_halign(fa_left);
}
draw_set_font(-1);