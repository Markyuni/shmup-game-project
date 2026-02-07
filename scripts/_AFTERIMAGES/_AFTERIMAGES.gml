/// @desc To create after images for an object.
/// @arg {asset.Object} _object The name of the object that is copied over.
/// @arg {constant.Colour} _colour Select the colour of the afterimage, set to c_white for nothing.
/// @arg {asset.Object} _object_parent If the object belongs to a specific parent, please set it here.
/// @arg {real} _angle Set the angle for the sprite, in the case that it's not 1:1 with it.

function _AFTERIMAGES(_object, _colour, _object_parent, _angle) {
    instance_create_layer(x, y, "AfterImages", obj_afterimages, {
        object: _object,
        colour: _colour,
        object_parent: _object_parent,
        angle: _angle
    });
}