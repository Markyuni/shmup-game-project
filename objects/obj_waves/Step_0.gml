switch (state)
{
	case "intro":
		timer++;
        
		if timer == 60 {
            instance_create_depth(x, y, -45000, obj_stage_intro);
        }
        
        if timer >= 360 {
			state = "waves";	
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