n_x = x;
n_y = y;
n_width = sprite_get_width(spr_lunchlady_idle);
n_height = sprite_get_height(spr_lunchlady_idle);
sprite_index = spr_lunchlady_idle;
sprite_talking = spr_lunchlady_talking;
sprite_idle = spr_lunchlady_idle;

portrait_index = 0;
name = "LunchPerson";
text = ["Hello. Can I help you with something?",    //0, go to 1
         [
          "I'd like to buy something",                        //1, go to 3
          "Nevermind..."                                      //1, go to 2
         ],
		 
		 "Alright, see you around.",						// 2,, END
         "Oh yeah, sure thing. What would you like?",             //3, go to 4
		 
         [
          "Whatever you recommend",                           //4 go to 5
          "One taco, please.",								  //4 go to 7
		  "I'd like on of those Dutch sausage rolls, please",  //4 go to 9
		  "Nevermind..."										//END
         ],
         "Just anything, huh?",            // 5 go to 6
		 "Hmmmm, I'd recommend the Berliner, it's our specialty.",	//6 go to 10
         "Ah, not a lot of people get this.",	//7 go to 8
		 "A nice change of pace, huh?",			//8 go to FINAL 
		 "Ah those are always nice.",			//9 go to FINAL
         [
		 "(Buy it)",							//10 go to 11
          "(Don't buy it)"						//10 go to 12
         ],
		  "Here you go, fijne dag!",				//11, END
		  "Anything else then?"					//12 go to 4
         ];                                        
speakers = [id, obj_player, id, id];
next_line = [0, [3, 2], -1, 4, [5, 7, 9, -1], 6, 10, 8, 11, 11, [11, 12], -1, 4];
