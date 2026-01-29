with (obj_player_parent) {
    if instance_exists(other) {
    	if (fade_timer <= 0) {
    		fade_timer = 2;
    	
    		part_particles_create(other.particleSystem, x, y, other.particleType_Player_Fade, 1)
    	} else {
    		fade_timer--;	
    	}	
    }
}