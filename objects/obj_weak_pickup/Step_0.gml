// Inherit the parent event
event_inherited();

if (instance_exists(obj_player_parent)) {
    move_towards_point(obj_player_parent.x, obj_player_parent.y, 5);
}