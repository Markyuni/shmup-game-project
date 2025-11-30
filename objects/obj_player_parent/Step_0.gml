var _right = keyboard_check(vk_right);
var _left = keyboard_check(vk_left);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);

var _xinput = _right - _left;
var _yinput = _down - _up;

move_and_collide(_xinput * flight_speed, _yinput * flight_speed, obj_wall, 4, 0, 0, flight_speed, flight_speed);

if (keyboard_check(vk_shift)) {
	flight_speed = focused_speed;
} else {
	flight_speed = normal_speed;
}

if (keyboard_check(ord("Z"))) {
			
	if (sound_timer <= 0) {
		audio_play_sound(snd_shot, 0, false);
		sound_timer = 8;
	} else {
		sound_timer--;
	}
			
	switch obj_game.player_level {
	case 2:		// after power-up
		if (bullet_timer <= 0) {
			_BULLET_CREATE(obj_bullet, x, y - 5, 90, 15);
			_BULLET_CREATE(obj_bullet, x - 12, y - 5, 90 + 20, 15);
			_BULLET_CREATE(obj_bullet, x - 5, y - 5, 90 + 10, 15);
			_BULLET_CREATE(obj_bullet, x + 5, y - 5, 90 - 10, 15);
			_BULLET_CREATE(obj_bullet, x + 12, y - 5, 90 - 20, 15);
				
			bullet_timer = 8;
		} else {
			bullet_timer--	
		}
		if (homing_timer <= 0) {
			_BULLET_CREATE(obj_homing, x - 10, y + 10, 100, 10);
			_BULLET_CREATE(obj_homing, x + 10, y + 10, 80, 10);	
				
			homing_timer = 24;
		} else {
			homing_timer--;	
		}
		break;
		case 1:		// level up +1
		if (bullet_timer <= 0) {
			_BULLET_CREATE(obj_bullet, x, y - 5, 90, 15);
			_BULLET_CREATE(obj_bullet, x - 11, y - 5, 90 + 2.5, 15);
			_BULLET_CREATE(obj_bullet, x + 11, y - 5, 90 - 2.5, 15);
				
			bullet_timer = 8;
		} else {
			bullet_timer--	
		}
		if (homing_timer <= 0) {
			_BULLET_CREATE(obj_homing, x - 10, y + 10, 100, 10);
			_BULLET_CREATE(obj_homing, x + 10, y + 10, 80, 10);	
				
			homing_timer = 24;
		} else {
			homing_timer--;	
		}
		break;
		default:	// base level
		if (bullet_timer <= 0) {
			_BULLET_CREATE(obj_bullet, x, y - 18, 90, 15);
			_BULLET_CREATE(obj_bullet, x - 11, y - 16, 95, 15);
			_BULLET_CREATE(obj_bullet, x + 11, y - 16, 85, 15);
				
			bullet_timer = 6;
		} else {
			bullet_timer--	
		}
		break;
	}
} else {	// resets the timers after half a second passed without pressing them
	cooldown_timer++
	if (cooldown_timer >= 30) {
		sound_timer = 0;
		bullet_timer = 0;
		homing_timer = 0;
				
		cooldown_timer = 0;
	}
}

if instance_exists(obj_afterimages) {
	if (fade_timer <= 0) {
		fade_timer = 5
	
		part_particles_create(obj_afterimages.particleSystem, x, y, obj_afterimages.particleType_Player_Fade, 1)
	} else {
		fade_timer--;	
	}	
}