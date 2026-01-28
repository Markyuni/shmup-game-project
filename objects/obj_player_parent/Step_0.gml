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

if instance_exists(obj_afterimages) {
	if (fade_timer <= 0) {
		fade_timer = 5
	
		part_particles_create(obj_afterimages.particleSystem, x, y, obj_afterimages.particleType_Player_Fade, 1)
	} else {
		fade_timer--;	
	}	
}