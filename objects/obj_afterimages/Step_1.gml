if instance_exists(self) {
    fade_timer++;
    
    if (fade_timer >= 2) {
        fade_timer = 0;
    
        part_particles_create(particleSystem, object_parent.x, object_parent.y, particleType_Player_Fade, 1);
    }
}

if !instance_exists(object_parent) {
    instance_destroy(self);
}