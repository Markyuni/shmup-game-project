switch state {
    case "entering":
        var distance = distance_to_point(320, 96)
        
        if distance > 5 {
            move_towards_point(320, 96, lerp(2, distance, 0.05))
        } else {
            speed = 0;
            state = "phase1";
        }
    break;

    case "phase1": {
        mask_index = Sprite17;
    }
}