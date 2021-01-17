//dialouge skip
if(mouse_check_button_pressed(mb_left)){
	if(!choice_dialogue and counter < str_len){ counter = str_len; }//skip typewriter
		
		//page turning
		else if(page < array_length_1d(text)-1){
		var line = npc_next_line[page];
		if(choice_dialogue) line = line[choice];//setting the chosen line
	
		if(line == 0) page++;	
		else if(line == -1){ 
			with (obj_npc){
				sprite_index = sprite_idle;				//resetting sprite to idle once dialogue done
			}	
			instance_destroy(); exit; 
		}
		else page = line
		event_perform(ev_other, ev_user1);
		
		//no page destroy tekst box
	} else{ 
		instance_destroy();
		with (obj_npc){
				sprite_index = sprite_idle;				//resetting sprite to idle once dialogue done
			}	
	}
}

//changing dialouge choice
if(choice_dialogue){
	//getting the amount of questions
	var len = array_length_1d(button_height);
	//creating button to the amount of questions
	var i = 0; repeat(len){
		//first button checks if the mouse is in the rectangle of the text
	if(point_in_rectangle(mouse_x,mouse_y,text_x/scale, text_y/scale, (text_x+text_max_width)/scale, (text_y+button_height[0])/scale)){
			choice = 0
		}	
		//the rest of the buttons checks if the mouse is in the rectangle of the text
		if(i>=1){
	if(point_in_rectangle(mouse_x,mouse_y,text_x/scale, (text_y+button_height[i-1])/scale, (text_x+text_max_width)/scale, (text_y+button_height[i])/scale)){	
			choice = i
	}
		}
	i++
}
}
		