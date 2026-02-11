switch state {
    case "entering":
        var distance = distance_to_point(320, 96)
        
        if distance < 5 {
            speed = 0;
            state = "phase1";
        } else {
            move_towards_point(320, 96, lerp(.5, distance, .05))
        }
    break;

    case "phase1":
        mask_index = Sprite17;
        
        
    break;
}