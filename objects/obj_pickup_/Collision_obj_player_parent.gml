obj_game.points += points * (1 + obj_game.player_level) + round(obj_game.power_meter * 100);
obj_game.power_meter += .01;
obj_game.pickups_collected++;

instance_destroy();

audio_play_sound(snd_point, 0, 0);
var score_number = instance_create_layer(x, y, "Instances", obj_score);

with (score_number) {
    points = other.points * (1 + obj_game.player_level) + round(obj_game.power_meter * 100);
}