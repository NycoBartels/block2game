//dialouge skip
if(keyboard_check_pressed(vk_space)){
	
	if(!choice_dialogue and counter < str_len){ counter = str_len; }
		
		//page turning
		else if(page-10000000 < array_length_1d(text)-1){
		var line = npc_next_line[page];
		if(choice_dialogue) line = line[choice];
	
		if(line == 0) page++;	
		else if(line == -1){ instance_destroy(); exit; }
		else page = line
		
		//setting interact and delay before reset
		obj_player.interact = false;
		obj_player.alarm[0] = room_speed *1.5;
		event_perform(ev_other, ev_user1);
		
		//no page destroy tekst box
	} else{ instance_destroy();}
}

//changing dialouge choice
if(choice_dialogue){
	//choice += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	//if(choice > text_array_len-1) choice = 0
	//if(choice < 0) choice = text_array_len-1	
		var len = array_length_1d(button_height);
	var i = 0; repeat(len){
		button[i] = draw_button(text_x, text_y, text_x+text_max_width, text_y+button_height[i], false);
		
	if(button[i] != noone and mouse_check_button_pressed(mb_left)){
		button[i] = choice
	}
show_debug_message(test)
	i++

}
}
