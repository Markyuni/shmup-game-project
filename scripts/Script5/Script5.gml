function _ROOM_FADE(_room, _duration, _color) {
    var _inst = instance_create_depth(x, y, -10000, obj_trans_fade);
    
    with (_inst) {
        target_room = _room;
        duration = _duration;
        colour = _color;
    }
}