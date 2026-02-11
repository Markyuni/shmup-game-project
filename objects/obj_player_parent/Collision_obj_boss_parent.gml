with (obj_game) {
    if is_invul = false {
        global.deathless_check = false;
        instance_destroy(other);
    
        if (player_level >= 1) {
            player_level--;
        }
        
        if (power_meter > 0) {
            power_meter -= .25;
        }
        
        if (power_meter <= 0) {
            power_meter = 0;
        }
        
        if (player_lives >= 1) {
            player_lives--;
            
            instance_create_layer(320, 368, "Instances", other.current_character);
        } else {
            //do game over shit here	
        }
        
        is_invul = true;
    }
}