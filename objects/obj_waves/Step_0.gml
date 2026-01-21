// _ENEMY_PATH(obj_enemyothertest, enemy_gap);

switch (state)
{
	case "intro":
		//@todo
		if timer <= 0 {
			state = "waves";	
		} else {
			timer--;
		}
	break;
	
	case "waves":
		timeline_index = tml_level1;
		timeline_running = true;
		
	break;
}