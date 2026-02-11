obj_game.points += points;

instance_destroy();

var score_number = instance_create_layer(x, y, "Instances", obj_score);

with (score_number) {
    points = other.points;
}