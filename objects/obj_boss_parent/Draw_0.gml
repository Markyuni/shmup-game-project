draw_self();

//funny flash
if flash_alpha > 0 {
	flash_alpha -= 0.1;

	gpu_set_blendmode(bm_add);
	shader_set(shd_flash);
	shader_alpha = shader_get_uniform(shd_flash, "_alpha");
	shader_set_uniform_f(shader_alpha, flash_alpha);
	
	draw_self();
	
	shader_reset();
	gpu_set_blendmode(bm_normal);
}