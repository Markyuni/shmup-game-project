// _ENEMY_PATH(obj_enemyothertest, enemy_gap);

switch (state)
{
	case STATE_WAVES.intro:
		//@todo
		if timer <= 0 {
			state = STATE_WAVES.waves;	
		} else {
			timer--;
		}
	break;
	
	case STATE_WAVES.waves:
		timeline_index = tml_level1;
		timeline_running = true;
		
	break;
}