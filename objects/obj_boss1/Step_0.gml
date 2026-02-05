// Inherit the parent event
event_inherited();

timer++

switch state {
    case "phase1":
        mask_index = Sprite17;
        
        if timer == 180 {
            state = "phase1_move1";   
        }
    break;

    case "phase1_move1":
        var dist1 = point_distance(x, y, 216, 136);
        
        if dist1 < 5 {
            speed = 0;
            state = "phase1_shoot";
        } else {
            move_towards_point(216, 136, lerp(.2, dist1, .03));
        }
    break;

    case "phase1_move2":
        var dist2 = point_distance(x, y, 320, 96);
        
        if dist2 < 5 {
            speed = 0;
            state = "phase1_shoot";
        } else {
            move_towards_point(320, 96, lerp(.2, dist2, .03));
        }
    break;

    case "phase1_move3":
        var dist3 = point_distance(x, y, 424, 144);
        
        if dist3 < 5 {
            speed = 0;
            state = "phase1_shoot";
        } else {
            move_towards_point(424, 144, lerp(.2, dist3, .03));
        }
    break;

    case "phase1_move4":
        var dist4 = point_distance(x, y, 320, 96);
        
        if dist4 < 5 {
            speed = 0;
            state = "phase1_shoot";
        } else {
            move_towards_point(320, 96, lerp(.2, dist4, .03));
        }
    break;

    case "phase1_shoot":
        if timer == 300 {
            for (var i = 0; i < 8; i++) {
                _BULLET_SPIRAL_PATTERN(90, .5, 10, 5, (360/8) * i, 5, true, 2);	
            }
        }
        
        if timer == 540 {
            state = "phase1_move2"
        }
        
        if timer == 660 {
            for (var i = 0; i < 8; i++) {
                _BULLET_SPIRAL_PATTERN(90, .5, 10, 5, (360/8) * i, 5, true, 2);	
            }
        }
        
        if timer == 900 {
            state = "phase1_move3"
        }
        
        if timer == 1020 {
            for (var i = 0; i < 8; i++) {
                _BULLET_SPIRAL_PATTERN(90, .5, 10, 5, (360/8) * i, 5, true, 2);	
            }
        }
        
        if timer == 1260 {
            state = "phase1_move4"
        }
        
        if timer == 1380 {
            for (var i = 0; i < 8; i++) {
                _BULLET_SPIRAL_PATTERN(90, .5, 10, 5, (360/8) * i, 5, true, 2);	
            }
        }
        
        if timer == 1620 {
            state = "phase1_move1"
            timer = 180;
        }
    break;
}