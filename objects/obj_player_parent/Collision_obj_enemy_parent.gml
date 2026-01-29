if obj_game.is_invul = false {
    instance_destroy();
    
    with (obj_game) {
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
    }
    
    obj_game.is_invul = true;
}