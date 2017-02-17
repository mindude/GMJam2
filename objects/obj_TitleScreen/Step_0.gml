/// @description Insert description here
// You can write your code in this editor
show_debug_message(step)
if(step < 200){
	step = step+1
}

if (step >= 100 && on_Title_Screen == false && image_index < 10){
	image_speed = 0.5
}


//Lights cutscene
if(image_index == 14)image_speed = 0
if(step == 180) image_index = 15
if(step == 200) image_speed = 0.5

if(image_index == 16){
	on_Title_Screen = true;
}

if(on_Title_Screen == true && clicked_Title_Screen == false && image_index == 18){
	image_index = 16;
}
if(on_Title_Screen == true && clicked_Title_Screen == true && image_index == 20){
	image_index = 18
}