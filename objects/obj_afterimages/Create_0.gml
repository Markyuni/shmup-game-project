particleSystem = part_system_create();

// #region

particleType_Player_Fade = part_type_create();

part_type_sprite(particleType_Player_Fade, spr_test, 0, 0, 1);
part_type_size(particleType_Player_Fade, 1, 1, 0, 0);

part_type_life(particleType_Player_Fade, 20, 20);
part_type_alpha3(particleType_Player_Fade, 0.5, 0.3, .1);
part_system_depth(particleSystem, 701);

part_type_colour1(particleType_Player_Fade, c_red);