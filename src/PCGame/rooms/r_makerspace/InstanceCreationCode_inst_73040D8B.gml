n_x = x
n_y = y
n_width = sprite_get_width(spr_3dprinter_npc_idle)
n_height = sprite_get_height(spr_3dprinter_npc_idle)
sprite_index = spr_3dprinter_npc_idle;
sprite_talking = spr_3dprinter_npc_talking;
sprite_idle = spr_3dprinter_npc_idle;

portrait_index = 0;
name = "Jan";
text = ["Hello, my name is Jan Peter van Goochelen, can I help you with something?",    //0, go to 1
         [
          "What do you do here?",								//1, go to 2
		  "Can you print these files from my USB-stick?",                        
          "I just want to talk.",                     //1, go to 4
          "Never mind..."                                      //1, END
         ],
		 //What do you do here
		 "I take care of the 3D printer. I make sure the students use it the right way.",	// 2
		 "And I help out if something is not working correctly.",			// 3
		 "Ah, speaking of it, is your file the correct format?",			// 4
		 "It should be .stl, .obj or .amf.",								// 5
		 "Yours seems to be the wrong format, you have to change it.",		// 6
		 "Maybe check back with your project group for that.",				// 7
		 
		 [
			"Okay.",			// 8, END
			"Can you tell me more about the technical stuff?"	// 8, go to 9
		 ],
		 //technical stuff		9, go to 10
		 "Sure. Obj files is a standart 3D image format and amf stands for Additive Manufacturing file format.",
		 //10, go to 11
		 "The 3D printer doesn't support any other formats, so make sure to use these.",
		 "Was there something else you wanted to ask?",				//11,  back to 1
		 
		 
		 // Print pls
		 "Sure, let me just check if you have the right format first though.",	// 12, go to 13
		 // 13, go to 14
		 "Yeah, you have the wrong format, you need to change it to .stl, .obj or .amf or else I can't print these...",
		 "Maybe your project group is here, you should ask them.",		// 14, END
		 
		 //Just chatting
		 "That's nice, but I'm busy."

         ];                                        //7, END
speakers = [id, obj_player, id, id];
next_line = [0, [2, 13, 15, -1], 3, 4, 5, 6, 7, 8, [-1, 9], 10, 11, 1, 13, 14, -1, -1];



/*
image_speed = 1;

portrait_index = 0;
name = "Kris";
text = ["Hi, you can have your stuff 3D printed here.",	//0
         [
		  "Here's my USB stick",						//1
		  "Nah, just want to talk",
		  "Never mind."
		 ],
		 
		 "Thanks, it might take a couple of minutes though. You can walk around a bit in the mean time.",
		 "Or don't. I'm not your mom.",
		 "Okay, cool. How is your project coming along?",			//4, go to 5
         [
		  "Doing okay",						//5
		  "I don't want to talk about it."
		 ],
		 "If you need anything else, let me know.",			//6, eND
		 "Oh okay"];										//7, END
speakers = [id, obj_player, id, id];
next_line = [0, [2, 4, -1], 3, -1, 5, [6, 7], -1, -1];