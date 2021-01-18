n_x = x;
n_y = y;
n_width = sprite_get_width(spr_lunch_random);
n_height = sprite_get_height(spr_lunch_random);
sprite_index = spr_lunch_random;
sprite_talking = spr_lunch_random;
sprite_idle = spr_lunch_random;

portrait_index = 0;
name = "Hoody Person";
text = ["...",    
         [
          "Hey",                      
          "Nevermind..."                                     
         ],
		  "......",
		  "I think he's busy."

         ];                                        
speakers = [id, obj_player, id, id];
next_line = [1, [2, -1], 3, -1];
