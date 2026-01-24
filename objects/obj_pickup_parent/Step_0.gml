// overall behaviour for points

switch state {
    case "normal":
        if (instance_exists(obj_player_parent)) {
            if (distance_to_object(obj_player_parent) <= 10 || (distance_to_object(obj_player_parent) <= 50 && obj_player_parent.state = "focused")) {
                state = "alert";
            } else {
                y += vsp;
                
                if (vsp < 2.4) vsp += y_speed;
                
                if (y_speed == 2.4) { y_speed = 2.4 }
            }
            with (obj_top) {
                if (place_meeting(x, y, obj_player_parent)) {
                    if (instance_exists(obj_pickup_parent)) {
                        other.state = "alert";
                    }
                }
            }
        }   
    break;
    case "alert":
        move_towards_point(obj_player_parent.x, obj_player_parent.y, 5);
    break;
}

if y >= 440 {
    instance_destroy();
}