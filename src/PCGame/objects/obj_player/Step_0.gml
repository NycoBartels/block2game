with(instance_nearest(mouse_x, mouse_y, par_npc)){ // getting var of npc your clicking on
obj_player.npc_x = n_x	
obj_player.npc_y = n_y
obj_player.npc_width = n_width / 2
obj_player.npc_height = n_height
}
if(point_in_rectangle(mouse_x,mouse_y,npc_x-npc_width,npc_y - npc_height ,npc_x+npc_width,npc_y)){ //checkes if clicked on the npc
	if(mouse_check_button_pressed(mb_left) && !instance_exists(obj_textbox) && distance_to_object(par_npc) < 25 && distance_to_point(mouse_x,mouse_y) < 50){
		instance_create_layer(obj_player.x, obj_player.y, "Text", obj_textbox);
	}
}

if(instance_exists(obj_textbox)){ //checkes if textbox existes 
	active_textbox = true //set active true when textbox exist(you can't walk if active textbox true)
} else {
	active_textbox = false//no textbox set active textbox falsa
}
path = undefined;
if (mouse_check_button_pressed(mb_left) and active_textbox= false){
	target_x = mouse_x 
	target_y = mouse_y 
	
	sprite_index = spr_player_walking;			// sprite walking
	if(obj_player.x > mouse_x) {
		image_xscale = -1;						// setting dir depending on mouse x
	} else {
		image_xscale = 1;
	}
	
	var inst = instance_position(target_x, target_y, par_depthobject);//checks if clicked space is valid
	vec_x = target_x - obj_player.x;
	vec_y = target_y - obj_player.y;
	
	while(inst != noone){ //if invalid space search for the closed valid space
	
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
	if(inst == noone){ //if valid space found walk to valid space
		path = path_add();
		mp_grid_path(grid, path, x, y, target_x, target_y, true);
		path_start(path, 1.2, path_action_stop, true);
		
	}
}

if (obj_player.x == target_x && obj_player.y == target_y) {
	sprite_index = spr_player_idle;				// resetting sprite to idle when reached destination
}
