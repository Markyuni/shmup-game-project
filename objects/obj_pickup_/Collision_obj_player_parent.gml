obj_game.points += points;
obj_game.power_meter += .01;

instance_destroy();

audio_play_sound(snd_point, 0, 0);
var score_number = instance_create_layer(x, y, "Instances", obj_score);

with (score_number) {
    points = other.points * (1 + obj_game.player_level);
}