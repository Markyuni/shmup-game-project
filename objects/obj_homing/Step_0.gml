if (!instance_exists(obj_enemy_parent)) {
	direction += 0;
} else {
	direction += 5 * sign( angle_difference( point_direction(x,y,obj_enemy_parent.x, obj_enemy_parent.y), direction));	
	image_angle = direction;	
}