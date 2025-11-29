function _BULLET_CREATE(_bullet, _e_x, _e_y, _dir, _spd){
	
	b = instance_create_layer(_e_x, _e_y, "Projectiles", _bullet);
	b.direction = _dir;
	b.image_angle = _dir;
	b.speed = _spd;
}

function _BULLET_CREATE_ENEMY(_bullet, _amount, _can_shoot, _target_at_player, _e_x, _e_y, _dir, _spd) {
	
	switch _can_shoot {
		case true:
			b = instance_create_layer(_e_x, _e_y, "Enemy_Projectiles", _bullet)
		break;
	}
}