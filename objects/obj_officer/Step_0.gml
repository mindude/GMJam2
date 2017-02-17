/// @description Insert descripis_tion here
// You can write your code in this editor

if(sleep_steps < 100) sleep_steps = sleep_steps + 1

if(!place_meeting(x,y,obj_CloudedTile) && started == true) is_Walking = true;
else is_Walking = false;

if(started == true){
	if(ds_list_find_value(obj_character.orders, obj_character.indexOrder) == "hypnosis" && 
	(place_meeting(x+50, y, obj_character) || place_meeting(x-50, y, obj_character) ||  place_meeting(x, y+50, obj_character) ||  place_meeting(x, y-50, obj_character)  )
	){
		sleep_steps = 0
		image_speed = 0
	}
}

if(is_Walking == true && sleep_steps == 100 && spotted == false){
	image_speed = 1
	residue_x = (x-25) mod 50;
	residue_y = (y-25) mod 50;
	if(residue_x == 0 && residue_y == 0){officer_x = x; officer_y = y;}
	scr_Officer_LineOfSight();
	if(following_Path == true){
		if (face_Direction == "left"){
			if(place_meeting(x-55,y,obj_officerPath)){
				vspeed = 0;
				hspeed = -5;
			}
			else{
				if(place_meeting(x,y-55,obj_officerPath)){
					face_Direction = "up";
				}
				else if(place_meeting(x,y+55,obj_officerPath)){
					face_Direction = "down";

				}
				else{
					face_Direction = "right";
				}
			}
		}
		else if (face_Direction == "right"){
			if(place_meeting(x+55,y,obj_officerPath)){
				vspeed = 0;
				hspeed = 5;
			}
			else{
				if(place_meeting(x,y-55,obj_officerPath)){
					face_Direction = "up";
				}
				else if(place_meeting(x,y+55,obj_officerPath)){
					face_Direction = "down";
				}
				else{
					face_Direction = "left";
				}
			}
		}
		else if (face_Direction == "up"){
			if(place_meeting(x,y-55,obj_officerPath)){
				hspeed = -0;
				vspeed = -5;
			}
			else{
				if(place_meeting(x-55,y,obj_officerPath)){
					face_Direction = "left";
				}
				else if(place_meeting(x+55,y,obj_officerPath)){
					face_Direction = "right";
				}
				else{
					face_Direction = "down";
				}
			}
		}
		else if (face_Direction == "down"){
			if(place_meeting(x,y+55,obj_officerPath)){
				hspeed = 0;
				vspeed = +5;
			}
			else{
				if(place_meeting(x-55,y,obj_officerPath)){
					face_Direction = "left";
				}
				else if(place_meeting(x+55,y,obj_officerPath)){
					face_Direction = "right";
				}
				else{
					face_Direction = "up";
				}
			}
		}
	}
}
else{
	vspeed = 0;
	hspeed = 0;
}

if(vspeed > 0) {sprite_index = spr_Police_Down; image_xscale = 1;}
else if(vspeed < 0) {sprite_index = spr_Police_Up; image_xscale = 1;}
else if(hspeed > 0) {sprite_index = spr_Police_Side; image_xscale = 1;}
else if(hspeed < 0) {sprite_index = spr_Police_Side; image_xscale = -1;}