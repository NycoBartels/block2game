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