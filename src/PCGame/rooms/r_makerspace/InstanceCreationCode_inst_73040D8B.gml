sprite_index = spr_3dprinter_npc_idle;
sprite_talking = spr_3dprinter_npc_talking;
sprite_idle = spr_3dprinter_npc_idle;

portrait_index = 0;
name = "Jan";
text = ["Hello, my name is Jan Peter van Goochelen, can I help you with something?",    //0, go to 1
         [
          "I would like to have some stuff 3D printed please.",                        //1, go to 3
          "What do you do here?",                     //1, go to 2
          "Never mind..."                                      //1, END
         ],
		 "I manage the 3D printer here. If you ever need help with anything just ask.",		// 2, go to 1
         "Ah sure, give me your USB please.",             //3, go to 4
         "Oh, these are not in the correct format. You should always know that these kind of files should be in an stl, obj or amf format. The 3d printer doesn't support any other format.",             //4, go to 5
         "Do you want to know more about the formats?",            // 5, go to 6
         [
          "Yes, please.",                        // 6, go to 7
          "No, that was helpful enough.",       //	6, go to 10
         ],
         "STereoLithography, obj files are just a standard 3d image format and amf stands for Additive manufacturing file format.",            // 7. go to 8
         "These are the only file formats we can use here and pretty much for most 3d printers.",				// 8, go to 9
		 "So whenever you save a file that will require 3d printing please use that kind of format.",			// 9. go to 10
		 "Anyway, please change the format and come back."		// 10, END
         ];                                        //
speakers = [id, obj_player, id, id];
next_line = [0, [3, 2, -1], 1, 4, 5, 6, [7, 1], 8, 9, 10, -1];



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