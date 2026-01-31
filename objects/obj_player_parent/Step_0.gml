var _right = keyboard_check(vk_right);
var _left = keyboard_check(vk_left);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);

var _xinput = _right - _left;
var _yinput = _down - _up;

move_and_collide(_xinput * flight_speed, _yinput * flight_speed, obj_wall, 4, 0, 0, flight_speed, flight_speed);

if (keyboard_check(vk_shift)) {
    is_focused = true;
	flight_speed = focused_speed;
} else {
    is_focused = false;
	flight_speed = normal_speed;
}

if (obj_game.is_invul && ++invul_timer >= 180) {
    obj_game.is_invul = false;
    invul_timer = 0;
}