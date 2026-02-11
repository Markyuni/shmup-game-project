switch state {
    case "appearing":
        image_alpha += .02;
        
        if image_alpha >= 1 {
            state = "standby";
        }
    break;
    case "standby":
        timer++;
        
        if timer >= 180 {
            state = "disappearing";
        }
    break;
    case "disappearing":
        image_alpha -= .02;
        y -= .25;
        
        if image_alpha <= 0 {
            instance_destroy();
        }
    break;
}