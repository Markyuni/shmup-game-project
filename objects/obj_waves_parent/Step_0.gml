if (!is_undefined(enemy_type)) {
    if (enemy_amount > 0) {
        if (wave_time <= 0) {
            
        new_enemy = instance_create_layer(enemy_x, enemy_y, "Instances", enemy_type);
        with new_enemy {
            path_start(other.path_type, other.path_spd, other.path_action, other.path_absolute);
        }
    
        wave_time = wave_gap;
        enemy_amount--;
        new_enemy = noone;
        } else {
            wave_time--;
        }
    } else {
        instance_destroy();
    }   
}