_ENEMY_PATH(obj_enemytest, pth_straight_leftdown, 2);

_ENEMY_PATH(obj_enemytest, pth_straight_rightdown, 2);

with (obj_enemytest) {
	timer = 60
	if (timer < 0) {
		_BULLET_CREATE(obj_enemy_bullet, x, y, point_direction(x, y, obj_player_parent.x, obj_player_parent.y), 1.5);
		timer = 60;
	} else {
		timer--;
	}	
}