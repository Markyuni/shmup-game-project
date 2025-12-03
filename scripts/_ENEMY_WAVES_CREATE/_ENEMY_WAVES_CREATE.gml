function _ENEMY_PATH(_enemy_type, _enemy_path, _enemy_speed) {

	new_enemy = instance_create_layer(x, y, "Paths", _enemy_type);
	with (new_enemy) {
		path_start(_enemy_path, _enemy_speed, path_action_stop, true);
	}
}

function _ENEMY_WAVE(_enemy_x, _enemy_y, _enemy_type, _wave_gap, _path_type, _path_speed, _path_action, _path_absolute, _enemy_amount) {

    var inst = instance_create_layer(x, y, "Instances", obj_waves_parent);
	with (inst) {
        enemy_amount = _enemy_amount;
        enemy_x = _enemy_x;
        enemy_y = _enemy_y;
        enemy_type = _enemy_type;
        path_type = _path_type;
        path_spd = _path_speed;
        path_action = _path_action;
        path_absolute = _path_absolute;
        wave_gap = _wave_gap;
    }
}