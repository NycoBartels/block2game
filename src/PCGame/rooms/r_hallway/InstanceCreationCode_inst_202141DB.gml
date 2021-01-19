n_x = x;
n_y = y;
n_width = sprite_get_width(spr_hallwaynpc2_idle);
n_height = sprite_get_height(spr_hallwaynpc2_idle);
sprite_index = spr_hallwaynpc2_idle;
sprite_talking = spr_hallwaynpc2_talking;
sprite_idle = spr_hallwaynpc2_idle;

portrait_index = 0;
name = "Diya";
text = ["Hi, did you already hear about hallway1 and my unfortunate project member?",    //0, go to 1
         [
          "Yeah, I talked with him.",				// 1, go to 3
          "No, not yet."								// 1, go to 2
         ],
		  "Then you should talk to him first.",	//2, END
		  "So you heard about our absent team mate...",	// 3, go to 4
		  "While I feel a bit frustrated about it, I also worry about them.",		//4, go to 5
		  //5, go to 6
		  "Because I don't know what's going on in their life, maybe they are struggling with something mentally...",
		  [
		   "But they were dishonest about their excuses.",
		   "Maybe some people aren't made to be university students...",
		   "I understand your worries."
		  ],
		  //dishonest
		  //what if its his coping mechanism, cant 
		  "And what if that's their coping mechanism?", //7 go to 8
		  "You can't blame them too much for having difficulties being open about their feelings to almost complete strangers.",
		  "In my opinion, that's too much to ask of someone.",	//9, END
		  
		  //not made to be
		  //but what if bad upbringing/not his fault/he's learning/leave slower behind? NO
		  "That could be the case... Or if they are not ready YET.",	//10, go to 11
		  "Isn't it our responsibility to help them out during that time",
		  "Until they figure out if university is something for them or not",
		  "We shouldn't just leave the slower ones behind...",		//13, END
		  
		  //i understand
		  //i just worry, but how to help
		  "There is so little I can do to help...",		//14, go to 15
		  "All we can do as a team is give them a bit of leniency."		//15, END
		  
         ];                                        //
speakers = [id, obj_player, id, id];
next_line = [1,[3, 2], -1, 4,5,6,[7, 10, 14], 8, 9, -1, 11, 12, 13, -1, 15, -1];