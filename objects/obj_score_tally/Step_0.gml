switch difficulty {
    case "easy":
        difficulty_mult = 1.0;
    break;
    case "normal":
        difficulty_mult = 1.5;
    break;
    case "hard":
        difficulty_mult = 2.0;
    break;
    case "lost":
        difficulty_mult = 3.0;
    break;
}

if cleared {
    if global.deathless_check == true {
        total_points = ((obj_game.current_stage * 5000) + (obj_game.pickups_collected * 100) + deathless_points) * difficulty_mult;
        obj_game.points += ((obj_game.current_stage * 5000) + (obj_game.pickups_collected * 100) + deathless_points) * difficulty_mult;
        cleared = false;
    } else {
        total_points = ((obj_game.current_stage * 5000) + (obj_game.pickups_collected * 100)) * difficulty_mult;
        obj_game.points += ((obj_game.current_stage * 5000) + (obj_game.pickups_collected * 100)) * difficulty_mult;
        cleared = false;
    }
}

if timer >= 180 {
    if (!instance_exists(obj_trans_fade)) {
        _ROOM_FADE(rm_start, 10, c_black);
        
        if obj_waves.state = "score" {
            if obj_game.points >= global.high_score {
                global.high_score = obj_game.points;
                obj_game.points = 0;
            }
        }
    }
} else {
    timer++
}