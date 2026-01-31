if (!instance_exists(obj_focus)) {
    instance_create_layer(x, y, "Focus", obj_focus);
}

if afterimages == false {
    _AFTERIMAGES(current_character, c_white, obj_player_parent);
    afterimages = true;
}