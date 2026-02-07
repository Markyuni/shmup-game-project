fade_timer = 0;

particleSystem = part_system_create();

// #region

particleType_Player_Fade = part_type_create();

part_type_sprite(particleType_Player_Fade, object_get_sprite(object), 1, 0, 1);
part_type_size(particleType_Player_Fade, 1, 1, 0, 0);

part_type_orientation(particleType_Player_Fade, angle, angle, 0, 0, false);
part_type_life(particleType_Player_Fade, 20, 20);
part_type_alpha3(particleType_Player_Fade, .4, .1, .05);
part_system_layer(particleSystem, "AfterImages");

part_type_colour1(particleType_Player_Fade, colour);