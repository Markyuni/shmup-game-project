var _vx = camera_get_view_x(view_camera[1]) * 2 + 12;
var _vy = camera_get_view_y(view_camera[1]) - 36;

draw_healthbar(_vx, _vy, _vx + 488, _vy + 16, (current_hp / max_hp) * 100, c_black, c_maroon, c_white, 0, true, true);