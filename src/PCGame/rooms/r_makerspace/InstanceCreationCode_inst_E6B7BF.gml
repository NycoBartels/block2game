n_x = x
n_y = y
n_width = sprite_get_width(spr_desk_left)
n_height = sprite_get_height(spr_desk_left)
sprite_index = spr_desk_left;
sprite_idle = spr_desk_left;
sprite_talking = spr_desk_left;

portrait_index = 0;
name = "Computer";
text = ["Computer ready for file upload",
         [
		  "Upload your project",
		  "Leave"
		 ],
		 
		 "Uploaded file successfully!"]; 
speakers = [id, obj_player, id, id];
next_line = [0, [2, -1], -1];