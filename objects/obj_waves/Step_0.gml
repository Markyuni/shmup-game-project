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
        if (timeline_over = true) {
            timeline_running = false;
            state = "spawn_boss";
        } else {
            timeline_index = tml_level1;
    		timeline_running = true;    
        }
		
	break;
    case "spawn_boss":
        instance_create_layer(fa_center, fa_top, "Instances", obj_boss1);
        
        state = "boss";
    break;
    case "boss":
        
    break;
}