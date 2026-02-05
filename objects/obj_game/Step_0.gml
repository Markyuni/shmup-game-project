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

// To prevent the sound effect from repeating
if (leveled_up) {
    audio_play_sound(snd_levelup, 0, false);
    leveled_up = false;
}
	
if keyboard_check_pressed(ord("F")) {
	show_debug_message(display_get_gui_width());	
	show_debug_message(display_get_gui_height());
}