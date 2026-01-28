image_angle += 2 mod 360;

if (instance_exists(obj_player_parent)) {
    x = obj_player_parent.x;
    y = obj_player_parent.y + 4;
    
    switch obj_player_parent.is_focused {
        case true:
            image_alpha = clamp(image_alpha + transparency, 0, 1);
        break;
        case false:
            image_alpha = clamp(image_alpha - transparency, 0, 1);
    }
}