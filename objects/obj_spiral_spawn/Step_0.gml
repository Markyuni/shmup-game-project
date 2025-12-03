switch full_circle {
	case true:
		circle_angle = (360 * loops) / total_bullets;
			
		if (bullet_amount > 0) {
			if(cooldown <= 0){
				cooldown = cooldown_interval;
				var myBullet = instance_create_layer(x + lengthdir_x(radius, angle), y + lengthdir_y(radius, angle), "Enemy_Projectiles", obj_enemy_bullet);
				myBullet.image_angle = angle
				myBullet.direction = angle
				myBullet.speed = bullet_speed
				angle += circle_angle mod 360;
				bullet_amount--;
			} else {
				cooldown--;	
			}	
		} else {
			instance_destroy();	
		}
	break;
	case false:
		if (bullet_amount > 0) {
			if(cooldown <= 0){
			    cooldown = cooldown_interval;
			    var myBullet = instance_create_layer(x + lengthdir_x(radius, angle), y + lengthdir_y(radius, angle), "Enemy_Projectiles", obj_enemy_bullet);
			    myBullet.image_angle = angle
				myBullet.direction = angle
			    myBullet.speed = bullet_speed
			    angle += add_angle mod 360;
				bullet_amount--;
			} else {
				cooldown--;	
			}
		} else {
			instance_destroy();	
		}
	break;
}