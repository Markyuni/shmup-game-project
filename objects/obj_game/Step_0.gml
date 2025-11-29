if room == rm_game {
	// To pause the game
	if keyboard_check_pressed(vk_escape) {
		paused = !paused;
		switch paused {
		case true:
			instance_deactivate_all(true);
			paused = true;
			
			instance_create_depth(x, y, -50000, obj_pause);
		break
		case false:
			instance_destroy(obj_pause);
			instance_activate_all();
			paused = false;
		break
		}
	}
	
	with (obj_player_parent) {
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
		} else {			// resets the timers after
			cooldown_timer++
			if (cooldown_timer >= 30) {
				sound_timer = 0;
				bullet_timer = 0;
				homing_timer = 0;
				
				cooldown_timer = 0;
			}
		}
	}

	
	if keyboard_check_pressed(ord("R")) {
		game_restart();	
	}
	
	if keyboard_check_pressed(ord("F")) {
		show_debug_message(display_get_gui_width());	
		show_debug_message(display_get_gui_height());
		show_debug_message(instance_exists(obj_waves));
		show_debug_message(keyboard_check(ord("Z")));
	}
}