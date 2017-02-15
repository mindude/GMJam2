sight_detector_1 = 0;
sight_detector_2 = 0;

officer_x = officer_x
officer_y = officer_y
show_debug_message(officer_x)
show_debug_message(officer_y)

//This code is for managing line of sight

//Down
if(face_Direction == "down"){
	//1X2
	if(place_free(officer_x,officer_y+50)){
		if(place_meeting(officer_x,officer_y+50, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		else if(place_meeting(officer_x,officer_y+50, obj_dollarBill)&&is_Distracted == false){
				is_Distracted = true;
				following_Path = false;
				timeline_index = d1X2;
				timeline_position = 0;
				timeline_loop = false;
				timeline_running = true;
		}
		//1X1
		if(place_free(officer_x-50,officer_y+50)){
			sight_detector_1 = 1;
			if(place_meeting(officer_x-50,officer_y+50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			else if(place_meeting(officer_x-50,officer_y+50, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = d1X1;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
		}
		//1X3
		if(place_free(officer_x+50,officer_y+50)){
			sight_detector_2 = 1;
			if(place_meeting(officer_x+50,officer_y+50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			else if(place_meeting(officer_x+50,officer_y+50, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = d1X3;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
		}
		//2X2
		if(place_free(officer_x,officer_y+100)){
			if(place_meeting(officer_x,officer_y+100, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			else if(place_meeting(officer_x,officer_y+100, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = d2X2;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
			//2X1
			if(place_free(officer_x-50,officer_y+100)&&sight_detector_1 == 1){
				sight_detector_1 = 2;
				if(place_meeting(officer_x-50,officer_y+100, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				else if(place_meeting(officer_x-50,officer_y+100, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = d2X1;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
			}
			//2X3
			if(place_free(officer_x+50,officer_y+100)&&sight_detector_2 == 1){
				sight_detector_2 = 2;
				if(place_meeting(officer_x+50,officer_y+100, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				else if(place_meeting(officer_x+50,officer_y+100, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = d2X3;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
			}
			//3X2
			if(place_free(officer_x,officer_y+150)){
				if(place_meeting(officer_x,officer_y+150, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				else if(place_meeting(officer_x,officer_y+150, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = d3X2;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
				}
				//3X1
				if(place_free(officer_x-50,officer_y+150)&&sight_detector_1 == 2){
					if(place_meeting(officer_x-50,officer_y+150, obj_character)){
						//Gets caught
						is_Walking = false;
					}
					else if(place_meeting(officer_x-50,officer_y+150, obj_dollarBill)&&is_Distracted == false){
						is_Distracted = true;
						following_Path = false;
						timeline_index = d3X1;
						timeline_position = 0;
						timeline_loop = false;
						timeline_running = true;
					}
				}
				//3X3
				if(place_free(officer_x+50,officer_y+150)&&sight_detector_2 == 2){
					if(place_meeting(officer_x+50,officer_y+150, obj_character)){
						//Gets caught
						is_Walking = false;
					}
					else if(place_meeting(officer_x+50,officer_y+150, obj_dollarBill)&&is_Distracted == false){
						is_Distracted = true;
						following_Path = false;
						timeline_index = d3X3;
						timeline_position = 0;
						timeline_loop = false;
						timeline_running = true;
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
		else if(place_meeting(officer_x,officer_y-50, obj_dollarBill)&&is_Distracted == false){
				is_Distracted = true;
				following_Path = false;
				timeline_index = u1X2;
				timeline_position = 0;
				timeline_loop = false;
				timeline_running = true;
		}
		//1X1
		if(place_free(officer_x-50,officer_y-50)){
			sight_detector_1 = 1;
			if(place_meeting(officer_x-50,officer_y-50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			else if(place_meeting(officer_x-50,officer_y-50, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = u1X1;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
		}
		//1X3
		if(place_free(officer_x+50,officer_y-50)){
			sight_detector_2 = 1;
			if(place_meeting(officer_x+50,officer_y-50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			else if(place_meeting(officer_x+50,officer_y-50, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = u1X3;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
		}
		//2X2
		if(place_free(officer_x,officer_y-100)){
			if(place_meeting(officer_x,officer_y-100, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			else if(place_meeting(officer_x,officer_y-100, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = u2X2;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
			//2X1
			if(place_free(officer_x-50,officer_y-100)&&sight_detector_1 == 1){
				sight_detector_1 = 2;
				if(place_meeting(officer_x-50,officer_y-100, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				else if(place_meeting(officer_x-50,officer_y-100, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = u2X1;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
			}
			//2X3
			if(place_free(officer_x+50,officer_y-100)&&sight_detector_2 == 1){
				sight_detector_2 = 2;
				if(place_meeting(officer_x+50,officer_y-100, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				else if(place_meeting(officer_x+50,officer_y-100, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = u2X3;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
			}
			//3X2
			if(place_free(officer_x,officer_y-150)){
				if(place_meeting(officer_x,officer_y-150, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				else if(place_meeting(officer_x,officer_y-150, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = u3X2;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
				}
				//3X1
				if(place_free(officer_x-50,officer_y-150)&&sight_detector_1 == 2){
					if(place_meeting(officer_x-50,officer_y-150, obj_character)){
						//Gets caught
						is_Walking = false;
					}
					else if(place_meeting(officer_x-50,officer_y-150, obj_dollarBill)&&is_Distracted == false){
						is_Distracted = true;
						following_Path = false;
						timeline_index = u3X1;
						timeline_position = 0;
						timeline_loop = false;
						timeline_running = true;
					}
				}
				//3X3
				if(place_free(officer_x+50,officer_y-150)&&sight_detector_2 == 2){
					if(place_meeting(officer_x+50,officer_y-150, obj_character)){
						//Gets caught
						is_Walking = false;
					}
					else if(place_meeting(officer_x+50,officer_y-150, obj_dollarBill)&&is_Distracted == false){
						is_Distracted = true;
						following_Path = false;
						timeline_index = u3X3;
						timeline_position = 0;
						timeline_loop = false;
						timeline_running = true;
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
		else if(place_meeting(officer_x-50,officer_y, obj_dollarBill)&&is_Distracted == false){
				is_Distracted = true;
				following_Path = false;
				timeline_index = l1X2;
				timeline_position = 0;
				timeline_loop = false;
				timeline_running = true;
		}
		//1X1
		if(place_free(officer_x-50,officer_y-50)){
			sight_detector_1 = 1;
			if(place_meeting(officer_x-50,officer_y-50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			else if(place_meeting(officer_x-50,officer_y-50, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = l1X1;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
		}
		//1X3
		if(place_free(officer_x-50,officer_y+50)){
			sight_detector_2 = 1;
			if(place_meeting(officer_x-50,officer_y+50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			else if(place_meeting(officer_x-50,officer_y+50, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = l1X3;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
		}
		//2X2
		if(place_free(officer_x-100,officer_y)){
			if(place_meeting(officer_x-100,officer_y, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			else if(place_meeting(officer_x-100,officer_y, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = l2X2;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
			//2X1
			if(place_free(officer_x-100,officer_y-50)&&sight_detector_1 == 1){
				sight_detector_1 = 2;
				if(place_meeting(officer_x-100,officer_y-50, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				else if(place_meeting(officer_x-100,officer_y-50, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = l2X1;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
			}
			//2X3
			if(place_free(officer_x-100,officer_y+50)&&sight_detector_2 == 1){
				sight_detector_2 = 2;
				if(place_meeting(officer_x-100,officer_y+50, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				else if(place_meeting(officer_x-100,officer_y+50, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = l2X3;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
			}
			//3X2
			if(place_free(officer_x-150,officer_y)){
				if(place_meeting(officer_x-150,officer_y, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				else if(place_meeting(officer_x-150,officer_y, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = l3X2;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
				}
				//3X1
				if(place_free(officer_x-150,officer_y-50)&&sight_detector_1 == 2){
					if(place_meeting(officer_x-150,officer_y-50, obj_character)){
						//Gets caught
						is_Walking = false;
					}
					else if(place_meeting(officer_x-150,officer_y-50, obj_dollarBill)&&is_Distracted == false){
						is_Distracted = true;
						following_Path = false;
						timeline_index = l3X1;
						timeline_position = 0;
						timeline_loop = false;
						timeline_running = true;
					}
				}
				//3X3
				if(place_free(officer_x-150,officer_y+50)&&sight_detector_2 == 2){
					if(place_meeting(officer_x-150,officer_y+50, obj_character)){
						//Gets caught
						is_Walking = false;
					}
					else if(place_meeting(officer_x-150,officer_y+50, obj_dollarBill)&&is_Distracted == false){
						is_Distracted = true;
						following_Path = false;
						timeline_index = l3X3;
						timeline_position = 0;
						timeline_loop = false;
						timeline_running = true;
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
		else if(place_meeting(officer_x+50,officer_y, obj_dollarBill)&&is_Distracted == false){
				is_Distracted = true;
				following_Path = false;
				timeline_index = r1X2;
				timeline_position = 0;
				timeline_loop = false;
				timeline_running = true;
		}
		//1X1
		if(place_free(officer_x+50,officer_y-50)){
			sight_detector_1 = 1;
			if(place_meeting(officer_x+50,officer_y-50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			else if(place_meeting(officer_x+50,officer_y-50, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = r1X1;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
		}
		//1X3
		if(place_free(officer_x+50,officer_y+50)){
			sight_detector_2 = 1;
			if(place_meeting(officer_x+50,officer_y+50, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			else if(place_meeting(officer_x+50,officer_y+50, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = r1X3;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
		}
		//2X2
		if(place_free(officer_x+100,officer_y)){
			if(place_meeting(officer_x+100,officer_y, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			else if(place_meeting(officer_x+100,officer_y, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = r2X2;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
			//2X1
			if(place_free(officer_x+100,officer_y-50)&&sight_detector_1 == 1){
				sight_detector_1 = 2;
				if(place_meeting(officer_x+100,officer_y-50, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				else if(place_meeting(officer_x+100,officer_y-50, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = r2X1;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
			}
			//2X3
			if(place_free(officer_x+100,officer_y+50)&&sight_detector_2 == 1){
				sight_detector_2 = 2;
				if(place_meeting(officer_x+100,officer_y+50, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				else if(place_meeting(officer_x+100,officer_y+50, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = r2X3;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
			}
			}
			//3X2
			if(place_free(officer_x+150,officer_y)){
				if(place_meeting(officer_x+150,officer_y, obj_character)){
					//Gets caught
					is_Walking = false;
				}
				else if(place_meeting(officer_x+150,officer_y, obj_dollarBill)&&is_Distracted == false){
					is_Distracted = true;
					following_Path = false;
					timeline_index = r3X2;
					timeline_position = 0;
					timeline_loop = false;
					timeline_running = true;
				}
				//3X1
				if(place_free(officer_x+150,officer_y-50)&&sight_detector_1 == 2){
					if(place_meeting(officer_x+150,officer_y-50, obj_character)){
						//Gets caught
						is_Walking = false;
					}
					else if(place_meeting(officer_x+150,officer_y-50, obj_dollarBill)&&is_Distracted == false){
						is_Distracted = true;
						following_Path = false;
						timeline_index = r3X1;
						timeline_position = 0;
						timeline_loop = false;
						timeline_running = true;
					}
				}
				//3X3
				if(place_free(officer_x+150,officer_y+50)&&sight_detector_2 == 2){
					if(place_meeting(officer_x+150,officer_y+50, obj_character)){
						//Gets caught
						is_Walking = false;
					}
					else if(place_meeting(officer_x+150,officer_y+50, obj_dollarBill)&&is_Distracted == false){
						is_Distracted = true;
						following_Path = false;
						timeline_index = r3X3;
						timeline_position = 0;
						timeline_loop = false;
						timeline_running = true;
					}
				}
			}
		}
	}
}







