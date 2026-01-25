function _ENEMY_WAVE(_enemy_x, _enemy_y, _enemy_type, _enemy_health, _point_type, _wave_gap, _path_type, _path_speed, _path_action, _path_absolute, _enemy_amount) {

    var inst = instance_create_layer(x, y, "Instances", obj_waves_parent);
	with (inst) {
        enemy_amount = _enemy_amount;
        enemy_x = _enemy_x;
        enemy_y = _enemy_y;
        enemy_type = _enemy_type;
        enemy_health = _enemy_health;
        point_type = _point_type;
        path_type = _path_type;
        path_spd = _path_speed;
        path_action = _path_action;
        path_absolute = _path_absolute;
        wave_gap = _wave_gap;
    }
}

function _ENEMY_CREATE(_enemy_x, _enemy_y, _enemy_layer, _enemy_type, _enemy_health, _point_type, _distance_traveled, _enemy_state, _enemy_speed) {
    var inst = instance_create_layer(_enemy_x, _enemy_y, _enemy_layer, _enemy_type)
    with (inst) {
        point_type = _point_type;
        distance_traveled = _distance_traveled;
        enemy_hp = _enemy_health;
        state = _enemy_state;
        enemy_speed = _enemy_speed;
    }
}