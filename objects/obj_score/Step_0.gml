y -= .1

if image_alpha > 0 {
    image_alpha -= .015;
}

if image_alpha = 0 {
    instance_destroy();
}