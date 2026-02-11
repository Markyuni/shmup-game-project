// if the boss's health is 0, destroy the object and create an effect
if (current_hp <= 0) {
    instance_destroy();
    obj_game.points += death_points;
    
    effect_create_layer("Instances", ef_explosion, x, y, .5, c_white);
    
    obj_waves.state = "end";
}

// else, deplete some of its health and make it flash + give it a hit effect
else {
    current_hp -= other.damage;
    obj_game.points += hit_points;
    
    flash_alpha = 1;
    
    with (instance_create_depth(other.x, other.y, 550, obj_bullet_effect)) {
        image_angle = irandom(360);
    }
}

//destroys the bullet
instance_destroy(other);