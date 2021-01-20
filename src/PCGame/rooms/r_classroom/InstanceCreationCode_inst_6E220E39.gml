n_x = x;
n_y = y;
n_width = sprite_get_width(spr_projectgroup_idle);
n_height = sprite_get_height(spr_projectgroup_idle);
sprite_index = spr_projectgroup_idle;
sprite_talking = spr_projectgroup_talking;
sprite_idle = spr_projectgroup_idle;

portrait_index = 0;
name = "Melinda & Rachel";
text = ["Oh hey, you're back already?",
         [
                               //
          "What do I need to do again?",					//
		  "How's the project coming along?",   
		  "Nevermind..."
         ],
		
			"Balancing the game is giving us a headache...",	//1, 2
			"It would be easier, if we could playtest it.",		//2, 3	
			"Did you print the board and the game pieces?",		//3, 4
			
			[
			"Uh... I gotta go, something urgent came up."		//  4,END
			],
			
			"Well, if you still haven't printed the game board and pieces, you should probably do that already.",
			"And while you're at it, we're still lacking the culture part in the game",
			"Find some inspiration for that somewhere.",
			"Maybe ask the teacher, he gave us the assignment after all.", //8, END
         ];                                        //
speakers = [id, obj_player, id, id];
next_line = [0,[6, 2, -1], 3,4,5,[-1],7,8,9,1];