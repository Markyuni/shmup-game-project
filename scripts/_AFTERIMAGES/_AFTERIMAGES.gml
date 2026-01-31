/// @desc To create after images on an object.
/// @arg {asset.Object} _object The name of the object that is copied over.
/// @arg {constant.Colour} _colour Select the colour of the afterimage, set to c_white for nothing.
/// @arg {asset.Object} _object_parent If the object belongs to a specific parent, please set it here.

function _AFTERIMAGES(_object, _colour, _object_parent) {
    var inst = instance_create_layer(x, y, "AfterImages", obj_afterimages);
    with (inst) {
        object = _object;
        colour = _colour;
        object_parent = _object_parent;
    }
}