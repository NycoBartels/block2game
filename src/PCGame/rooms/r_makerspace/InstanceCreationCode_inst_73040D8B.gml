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
          "What do you do here?",
		  "Can you print these files from my USB-stick?",                        //1, go to 2
          "I just want to talk.",                     //1, go to 4
          "Never mind..."                                      //1, END
         ],
		 //What do you do here
		 "I take care of the 3D printer. I make sure the students use it the right way.",
		 "And I help out if something is not working correctly.",
		 "Ah, speaking of it, is your file the correct format?",
		 "It should be .stl, .obj or .amf.",
		 "Yours seems to be the wrong format, you have to change it.",
		 "Maybe check back with your project group for that.",
		 
		 [
			"Okay.",			// , END
			"Can you tell me more about the technical stuff?"
		 ],
		 //technical stuff
		 "Sure. Obj files is a standart 3D image format and amf stands for Additive Manufacturing file format.",
		 "The 3D printer doesn't support any other formats, so make sure to use these.",
		 "Was there something else you wanted to ask?",				// back to 1
		 
		 
		 // Print pls
		 "Sure, let me just check if you have the right format first though.",
		 "Yeah, you have the wrong format, you need to change it to .stl, .obj or .amf or else I can't print these...",
		 "Maybe your project group is here, you should ask them.",
		 
		 //Just chatting
		 

         ];                                        //7, END
speakers = [id, obj_player, id, id];
next_line = [0, [2, 4, -1], 3, 1, 5, [6, 7], -1, 0, [-1, 9], -1];



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