if (state != noone) { 
    switch state { 
        case "initial":
            direction = -90;
            speed = enemy_speed;
            
            if y >= distance_traveled {
                speed = 0;
                state = "shooting"
            }
        break;
        case "shooting":
            _BULLET_BARRIER_PATTERN(3, 1.2, 10, 10, true, 90, "Enemy_Projectiles", obj_enemy_bullet);
            state = "retreat";
        break;
        case "retreat":
            speed -= .02;
            
            if speed >= .1 {
                speed = .1
            }
            
            if y < 0 {
                instance_destroy();
            }
        break;
   }    
}
