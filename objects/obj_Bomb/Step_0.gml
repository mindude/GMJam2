/// @description Expand cloud
if(sprite_index == spr_Explosion_Smoke)
{
	image_alpha -= 0.02;
	image_xscale += 0.2;
	image_yscale += 0.2;
	if(image_alpha == 0)
	{
		instance_destroy();
	}
}