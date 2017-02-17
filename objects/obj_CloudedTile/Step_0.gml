/// @description Fade in & out
if(exists && image_alpha < 1)
{
	image_alpha += 0.1;
}
else if(!exists && image_alpha > 0)
{
	image_alpha -= 0.1;
}
if(!exists && image_alpha == 0)
{
	instance_destroy();
}