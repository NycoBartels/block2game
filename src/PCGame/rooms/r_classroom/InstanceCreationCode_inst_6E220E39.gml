n_x = x;
n_y = y;
n_width = sprite_get_width(spr_projectgroup_idle);
n_height = sprite_get_height(spr_projectgroup_idle);
sprite_index = spr_projectgroup_idle;
sprite_talking = spr_projectgroup_talking;
sprite_idle = spr_projectgroup_idle;

portrait_index = 0;
name = "Samira";
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