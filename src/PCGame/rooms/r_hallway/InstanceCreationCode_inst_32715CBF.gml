n_x = x;
n_y = y;
n_width = sprite_get_width(spr_hallwaynpc_idle);
n_height = sprite_get_height(spr_hallwaynpc_idle);
sprite_index = spr_hallwaynpc_idle;
sprite_talking = spr_hallwaynpc_idle;
sprite_idle = spr_hallwaynpc_idle;

portrait_index = 0;
name = "hallway1";
text = ["Heya, can I ask you some question?",    //0, go to 1
		 "I'm researching cultural aspects and would like to hear your input!",		//1, go to 2
         [
          "Yeah, sure.",                        //
          "Sorry, I'm busy..."					//
         ],
		  "That's fine, good luck with your project!",	//3, END
		  "test stop here",
         ];                                        //
speakers = [id, obj_player, id, id];
next_line = [1, 2, [4, 3], ];