if (!instance_exists(obj_focus)) {
    instance_create_layer(x, y, "Instances_1", obj_focus);
}

if (!instance_exists(obj_afterimages)) {
    instance_create_layer(x, y, "AfterImages", obj_afterimages);
}