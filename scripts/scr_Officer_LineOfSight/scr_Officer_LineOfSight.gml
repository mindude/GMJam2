sight_detector_1 = 0;
sight_detector_2 = 0;

//This code is for managing line of sight

//Down
if(face_Direction == "down"){
	//1X2
	if(place_free(officer_x,officer_y+50)){
		if(place_meeting(officer_x,officer_y+50, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		//1X1
		if(place_free(officer_x-50,officer_y+50)){
			sight_detector_1 = 1;
			if(place_meeting(officer_x-50,officer_y+50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
		}
		//1X3
		if(place_free(officer_x+50,officer_y+50)){
			sight_detector_2 = 1;
			if(place_meeting(officer_x+50,officer_y+50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
		}
		//2X2
		if(place_free(officer_x,officer_y+100)){
			if(place_meeting(officer_x,officer_y+100, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			//2X1
			if(place_free(officer_x-50,officer_y+100)&&sight_detector_1 == 1){
				sight_detector_1 = 2;
				if(place_meeting(officer_x-50,officer_y+100, obj_character)){
				//Gets caught
				is_Walking = false;
				}
			}
			//2X3
			if(place_free(officer_x+50,officer_y+100)&&sight_detector_2 == 1){
				sight_detector_2 = 2;
				if(place_meeting(officer_x+50,officer_y+100, obj_character)){
				//Gets caught
				is_Walking = false;
				}
			}
			//3X2
			if(place_free(officer_x,officer_y+150)){
				if(place_meeting(officer_x,officer_y+150, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				//3X1
				if(place_free(officer_x+50,officer_y+150)&&sight_detector_1 == 2){
					if(place_meeting(officer_x+50,officer_y+150, obj_character)){
						//Gets caught
						is_Walking = false;
					}
				}
				//3X3
				if(place_free(officer_x-50,officer_y+150)&&sight_detector_2 == 2){
					if(place_meeting(officer_x-50,officer_y+150, obj_character)){
						//Gets caught
						is_Walking = false;
					}
				}
			}
		}
	}
}

//Up
else if(face_Direction == "up"){
	//1X2
	if(place_free(officer_x,officer_y-50)){
		if(place_meeting(officer_x,officer_y-50, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		//1X1
		if(place_free(officer_x-50,officer_y-50)){
			sight_detector_1 = 1;
			if(place_meeting(officer_x-50,officer_y-50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
		}
		//1X3
		if(place_free(officer_x+50,officer_y-50)){
			sight_detector_2 = 1;
			if(place_meeting(officer_x+50,officer_y-50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
		}
		//2X2
		if(place_free(officer_x,officer_y-100)){
			if(place_meeting(officer_x,officer_y-100, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			//2X1
			if(place_free(officer_x-50,officer_y-100)&&sight_detector_1 == 1){
				sight_detector_1 = 2;
				if(place_meeting(officer_x-50,officer_y-100, obj_character)){
				//Gets caught
				is_Walking = false;
				}
			}
			//2X3
			if(place_free(officer_x+50,officer_y-100)&&sight_detector_2 == 1){
				sight_detector_2 = 2;
				if(place_meeting(officer_x+50,officer_y-100, obj_character)){
				//Gets caught
				is_Walking = false;
				}
			}
			//3X2
			if(place_free(officer_x,officer_y-150)){
				if(place_meeting(officer_x,officer_y-150, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				//3X1
				if(place_free(officer_x+50,officer_y-150)&&sight_detector_1 == 2){
					if(place_meeting(officer_x+50,officer_y-150, obj_character)){
						//Gets caught
						is_Walking = false;
					}
				}
				//3X3
				if(place_free(officer_x-50,officer_y-150)&&sight_detector_2 == 2){
					if(place_meeting(officer_x-50,officer_y-150, obj_character)){
						//Gets caught
						is_Walking = false;
					}
				}
			}
		}
	}
}

//Left

else if(face_Direction == "left"){
	//1X2
	if(place_free(officer_x-50,officer_y)){
		if(place_meeting(officer_x-50,officer_y, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		//1X1
		if(place_free(officer_x-50,officer_y-50)){
			sight_detector_1 = 1;
			if(place_meeting(officer_x-50,officer_y-50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
		}
		//1X3
		if(place_free(officer_x-50,officer_y+50)){
			sight_detector_2 = 1;
			if(place_meeting(officer_x-50,officer_y+50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
		}
		//2X2
		if(place_free(officer_x-100,officer_y)){
			if(place_meeting(officer_x-100,officer_y, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			//2X1
			if(place_free(officer_x-100,officer_y-50)&&sight_detector_1 == 1){
				sight_detector_1 = 2;
				if(place_meeting(officer_x-100,officer_y-50, obj_character)){
				//Gets caught
				is_Walking = false;
				}
			}
			//2X3
			if(place_free(officer_x-100,officer_y+50)&&sight_detector_2 == 1){
				sight_detector_2 = 2;
				if(place_meeting(officer_x-100,officer_y+100, obj_character)){
				//Gets caught
				is_Walking = false;
				}
			}
			//3X2
			if(place_free(officer_x-150,officer_y)){
				if(place_meeting(officer_x-150,officer_y, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				//3X1
				if(place_free(officer_x-150,officer_y+50)&&sight_detector_1 == 2){
					if(place_meeting(officer_x-150,officer_y+50, obj_character)){
						//Gets caught
						is_Walking = false;
					}
				}
				//3X3
				if(place_free(officer_x-150,officer_y-50)&&sight_detector_2 == 2){
					if(place_meeting(officer_x-150,officer_y-50, obj_character)){
						//Gets caught
						is_Walking = false;
					}
				}
			}
		}
	}
}

//Right

else if(face_Direction == "right"){
	//1X2
	if(place_free(officer_x+50,officer_y)){
		if(place_meeting(officer_x+50,officer_y, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		//1X1
		if(place_free(officer_x+50,officer_y-50)){
			sight_detector_1 = 1;
			if(place_meeting(officer_x+50,officer_y-50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
		}
		//1X3
		if(place_free(officer_x+50,officer_y+50)){
			sight_detector_2 = 1;
			if(place_meeting(officer_x+50,officer_y+50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
		}
		//2X2
		if(place_free(officer_x+100,officer_y)){
			if(place_meeting(officer_x+100,officer_y, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			//2X1
			if(place_free(officer_x+100,officer_y-50)&&sight_detector_1 == 1){
				sight_detector_1 = 2;
				if(place_meeting(officer_x+100,officer_y-50, obj_character)){
				//Gets caught
				is_Walking = false;
				}
			}
			//2X3
			if(place_free(officer_x+100,officer_y+50)&&sight_detector_2 == 1){
				sight_detector_2 = 2;
				if(place_meeting(officer_x+100,officer_y+100, obj_character)){
				//Gets caught
				is_Walking = false;
				}
			}
			//3X2
			if(place_free(officer_x+150,officer_y)){
				if(place_meeting(officer_x+150,officer_y, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				//3X1
				if(place_free(officer_x+150,officer_y+50)&&sight_detector_1 == 2){
					if(place_meeting(officer_x+150,officer_y+50, obj_character)){
						//Gets caught
						is_Walking = false;
					}
				}
				//3X3
				if(place_free(officer_x+150,officer_y-50)&&sight_detector_2 == 2){
					if(place_meeting(officer_x+150,officer_y-50, obj_character)){
						//Gets caught
						is_Walking = false;
					}
				}
			}
		}
	}
}











