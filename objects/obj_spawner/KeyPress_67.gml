var _ion = 1;
var _repetitions = 4;
var _angle_of_motion = 0;
var _petal_quantity = 5;
var _bullet_xpoint = 360 / 5;
var _bullet_range = _bullet_xpoint / (_repetitions / _petal_quantity);

repeat (_repetitions) {
	_angle_of_motion = (360 / _repetitions) * _ion;
	instance_create_layer(250, 250, "Enemy_Projectiles", obj_enemy_bullet, {
		image_angle: _angle_of_motion,
		direction: _angle_of_motion,
		speed: 1 + 4 * abs((_ion * _bullet_range) / _bullet_xpoint - floor((_ion * _bullet_range) / _bullet_xpoint + 0.5))
	});
	_ion++
}