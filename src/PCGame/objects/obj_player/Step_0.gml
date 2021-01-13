if(keyboard_check_pressed(vk_space) && !instance_exists(obj_textbox) && distance_to_object(par_npc) < 50 && interact = true){
	instance_create_layer(obj_player.x, obj_player.y, "Text", obj_textbox);
}
/*
//on left mouse press walk
path = undefined;
if (mouse_check_button_released(mb_left)){
	target_x = mouse_x
	target_y = mouse_y
	path = path_add();
	mp_grid_path(grid, path, x, y, target_x, target_y, true);
	path_start(path, 3, path_action_stop, true);
}
*/
if(instance_exists(obj_textbox)){
	active_textbox = true
}else{
	active_textbox = false
}
path = undefined;
if (mouse_check_button_released(mb_left) and active_textbox = false){
	target_x = mouse_x 
	target_y = mouse_y 
	inst = instance_position(target_x, target_y, par_depthobject);
	vec_x = target_x - obj_player.x;
	vec_y = target_y - obj_player.y;
	
	while(inst != noone){
	
		if(vec_x < 0){
			target_x = target_x + cellwidth
		}
		else if(vec_x > 0){
			target_x= target_x - cellwidth
		} 

		if(vec_y < 0){
			target_y = target_y + cellheight
		}

		else if(vec_y > 0){
			target_y = target_y - cellheight	
		}
		inst = instance_position(target_x, target_y, par_depthobject);
	}
	if(inst == noone){
		path = path_add();
		mp_grid_path(grid, path, x, y, target_x, target_y, true);
		path_start(path, 3, path_action_stop, true);
	}
}


