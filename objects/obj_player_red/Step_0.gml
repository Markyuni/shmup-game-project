// Inherit the parent event
event_inherited();

if (keyboard_check(ord("Z"))) {
			
	if (sound_timer <= 0) {
		audio_play_sound(snd_shot, 0, false);
		sound_timer = 8;
	} else {
		sound_timer--;
	}
    
	switch obj_game.player_level {
		case 0:	// base level
    		if (bullet_timer <= 0) {
    			_BULLET_BARRIER_PATTERN(2, 15, 5, 2.5, false, 90, "Projectiles", obj_bullet);
    				
    			bullet_timer = 6;
    		} else {
    			bullet_timer--	
    		}
                
            if (obj_game.power_meter >= .25) {
                obj_game.player_level = 1;
                obj_game.leveled_up = true;
            }
		break;
		case 1:	// level up +1
    		if (bullet_timer <= 0) {
    			_BULLET_BARRIER_PATTERN(3, 15, 5, 5, false, 90, "Projectiles", obj_bullet);
    			bullet_timer = 8;
    		} else {
    			bullet_timer--	
    		}
                
            if (obj_game.power_meter >= .5) {
                obj_game.player_level = 2;
                obj_game.leveled_up = true;
            }
		break;
    	case 2:	// level up +2
    		if (bullet_timer <= 0) {
    			_BULLET_BARRIER_PATTERN(3, 15, 5, 5, false, 90, "Projectiles", obj_bullet);
                
    			bullet_timer = 8;
    		} else {
    			bullet_timer--	
    		}
    		if (homing_timer <= 0) {
    			_BULLET_BARRIER_PATTERN(2, 10, 10, 20, false, 90, "Projectiles", obj_homing);
                
    			homing_timer = 24;
    		} else {
    			homing_timer--;	
    		}
            
            if (obj_game.power_meter >= .75) {
                obj_game.player_level = 3;
                obj_game.leveled_up = true;
            }
        break;
    	case 3:	// level up +3
    		if (bullet_timer <= 0) {
    			_BULLET_BARRIER_PATTERN(5, 15, 5, 10, false, 90, "Projectiles", obj_bullet);
                
    			bullet_timer = 8;
    		} else {
    			bullet_timer--	
    		}
    		if (homing_timer <= 0) {
    			_BULLET_BARRIER_PATTERN(2, 10, 10, 20, false, 90, "Projectiles", obj_homing);
                
    			homing_timer = 24;
    		} else {
    			homing_timer--;	
    		}
            
            if (obj_game.power_meter >= 1) {
                obj_game.player_level = 4;
                obj_game.leveled_up = true;
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