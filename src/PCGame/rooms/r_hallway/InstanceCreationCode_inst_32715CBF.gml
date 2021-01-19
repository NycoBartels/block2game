n_x = x;
n_y = y;
n_width = sprite_get_width(spr_hallwaynpc_idle);
n_height = sprite_get_height(spr_hallwaynpc_idle);
sprite_index = spr_hallwaynpc_idle;
sprite_talking = spr_hallwaynpc_talking;
sprite_idle = spr_hallwaynpc_idle;

portrait_index = 0;
name = "Simon";
text = ["I can't believe he didn't show up again...",    //0, go to 1
         [
          "What happened?",                        //1, go to 2
          "Nevermind..."					// END
         ],
		  "Well it doesn't concern you, but maybe you could help us out...",	//2, go to 3
		  "One of our project members keeps ghosting our meetings.",			//3 go to 4
		  [
		  "Give him a strike through the contract.",			//4 go to 5
		  "Ask them why they can't join."						//4 go to 6
		  ],
		  "The contract states that, if they give a good reason, you can't strike them.",	//5 go to 6
		  "They always have a good excuse ready, but I think they're lying.",				//6 go to 7
		  [
		  "Confront them about their lies.",					//7 go to 8
		  "Suck it up and just keep doing the project.",		//7 go to 10
		  "Ask them to try coming on agreed dates more often"	//7 go to 12 
		  ],
		  //confront:
		  "We tried that, but we couldn't get through to them...",			//8 to go 9
		  "They insisted on them not lying. Even though it's always so convenient for them", //9, end for now
		  
		  //Suck it up:
		  "I guess that's what we'll have to do anyway, but it doesn't feel right...",  // 10, go to 11
		  "It feels too frustrating not to do anything about it.",						//11, end for now
			
		  //Ask them to be considerate
		  "We already did that, but the excuses still come up 30 minutes before the meeting."	//12, end for now
		  
		  
         ];                                        //
speakers = [id, obj_player, id, id];
next_line = [1, [2, -1], 3, 4, [5, 6], 6, 7, [8, 10, 12], 9, -1, 11, -1, -1];