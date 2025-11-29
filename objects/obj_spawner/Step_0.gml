//var _ion = 2;
//var _repetitions = 10;
//var _angle_of_motion = 0;
//var _petal_quantity = 4;
//var _bullet_xpoint = 360 / 5;
//var _bullet_range = _bullet_xpoint / _repetitions;

//repeat (_repetitions) {
//	_angle_of_motion = (360 / _repetitions) * _ion;
//	instance_create_layer(250, 250, "Projectiles", obj_enemy_bullet, {
//		image_angle: _angle_of_motion +  50,
//		direction: _angle_of_motion,
//		speed: 2
//	});
//	_ion++
//}