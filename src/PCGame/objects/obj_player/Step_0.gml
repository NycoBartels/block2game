if(keyboard_check_pressed(vk_space) && !instance_exists(obj_textbox) && distance_to_object(par_npc) < 50 && interact = true){
	instance_create_layer(obj_player.x, obj_player.y, "Text", obj_textbox);
}
//on left mouse press walk
path = undefined;
if (mouse_check_button_released(mb_left)){
	target_x = mouse_x
	target_y = mouse_y
	path = path_add();
	mp_grid_path(grid, path, x, y, target_x, target_y, true);
	path_start(path, 3, path_action_stop, true);
}




