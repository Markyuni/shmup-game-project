instance_destroy();

if (player_level >= 1) {
	player_level--;
	
}

if (obj_game.player_lives > 0) {
	obj_game.player_lives--;
	
	instance_create_layer(320, 368, "Instances", current_character);
} else {
	//do game over shit here	
}