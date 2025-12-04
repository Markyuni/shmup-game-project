function _BULLET_CIRCLE_PATTERN(_bullet_amount, _speed, _radius) {
	
	for (var i = 0; i < _bullet_amount; i++) {
		var _dir = (360 / _bullet_amount) * i;
		with instance_create_layer(x + lengthdir_x(_radius, _dir), y + lengthdir_y(_radius, _dir), "Enemy_Projectiles", obj_enemy_bullet) {
			image_angle = _dir;
			direction = _dir;
			speed = _speed;
		}
	}
}

function _BULLET_SPIRAL_PATTERN(_bullet_amount, _speed, _radius, _cooldown, _angle, _add_angle, _full_circle, _loops) {
	var inst = instance_create_layer(x, y, "Instances", obj_spiral_spawn);
	with (inst) {
		bullet_amount = _bullet_amount;
		total_bullets = _bullet_amount;
		loop_bullets = _bullet_amount;
		cooldown_interval = _cooldown;
		radius = _radius;
		bullet_speed = _speed;
		angle = _angle;
		add_angle = _add_angle;
		full_circle = _full_circle;
		loops = _loops;
	}
}

function _BULLET_FLOWER_PATTERN(_bullet_amount, _speed, _radius, _point_amount, _flower_depth) {
	
	for (var i = 0; i < _bullet_amount; i++) {
		var _dir = (360 / _bullet_amount) * i;
		instance_create_layer(x + lengthdir_x(_radius, _dir), y + lengthdir_y(_radius, _dir), "Enemy_Projectiles", obj_enemy_bullet, {
			image_angle: _dir,
			direction: _dir,
			speed: _speed + abs(_flower_depth * sin(_point_amount * _dir * (pi / 360)))
		});
	}
}

function _BULLET_STAR_PATTERN(_bullet_amount, _initial_speed, _minimal_speed, _radius, _point_amount, _depth) {
	
	var _bullet_xpoint = 360 / _bullet_amount; // "_bullet_xpoint" is read as "bullets per point"
	var _point_range = _bullet_xpoint / (_bullet_amount / _point_amount);
	for (var i = 0; i < _bullet_amount; i++) {
		var _image_angle = (360 / _bullet_amount) * i;
		instance_create_layer(x + lengthdir_x(_radius, _image_angle), y + lengthdir_y(_radius, _image_angle), "Enemy_Projectiles", obj_enemy_bullet, {
			image_angle: _image_angle,
			direction: _image_angle,
			speed: _initial_speed + _minimal_speed * abs((i * _point_range) / _bullet_xpoint - floor((i * _point_range) / _bullet_xpoint + 0.5))
		});
	}
}

function _BULLET_BARRIER_PATTERN(_bullet_amount, _speed, _radius, _spread, _homing, _aim_dir, _layer, _object) {

	switch _homing {
		case true:
            if (!instance_exists(obj_player_parent)) {
                _aim_dir = _aim_dir;
            } else {
                _aim_dir = point_direction(x, y, obj_player_parent.x, obj_player_parent.y);
            }
		break;
		case false:
			_aim_dir = _aim_dir;
		break;
	}
	var _dir_interval = _spread / (_bullet_amount - 1);
	var _start_dir = _aim_dir - (_spread / 2);
	var _dir;
	
	for (var i = 0; i < _bullet_amount; i++) {
		_dir = _start_dir + (i * _dir_interval);
		with instance_create_layer(x + lengthdir_x(_radius, _dir), y + lengthdir_y(_radius, _dir), _layer, _object) {
			image_angle = _dir;
			direction = _dir;
			speed = _speed;
		}
	}
}