function _ENEMY_PATH(_enemy_type, _enemy_path, _enemy_speed) {

	new_enemy = instance_create_layer(x, y, "Paths", _enemy_type);
	with (new_enemy) {
		path_start(_enemy_path, _enemy_speed, path_action_stop, true);
	}
}