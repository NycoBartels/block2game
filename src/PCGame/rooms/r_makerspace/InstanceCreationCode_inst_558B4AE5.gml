n_x = x
n_y = y
n_width = sprite_get_width(spr_lasercutter_npc_idle)
n_height = sprite_get_height(spr_lasercutter_npc_idle)
sprite_index = spr_lasercutter_npc_idle;
sprite_talking = spr_lasercutter_npc_talking;
sprite_idle = spr_lasercutter_npc_idle;

portrait_index = 0;
name = "Roberto";
text = ["Hey, do you need something?",
         [
		  "Could you help me lasercut?",	//1 go to 2
		  "How does the lasercutter even work?",		//1, go to 10
		  "I gotta go." //END
		 ],
		 // help cut
		 "Sure, did you bring your file with you?",				// 2, go to 3
		 "Hmm, you brought a .png file...",						// 3, go to 4
		 "That means you can't engrave stuff on the wood.",		// 4, go to 5
		 
		 [
		  "What do I need to fix it?",			// 5, go to 6
		  "It's good enough for what I need."	// 5, go to 9
		 ],
		 
		 //fix it
		 "If you bring me an Adobe Illustrator file, the program will be able to detect different shades of gray",	//6, go to 7
		 "Then it knows where to cut and what to engrave.",		//7, go to 8
		 "With a .png file you're sadly stuck with only cutting.",								//8, go to 14
		 
		 //good enough
		 "Okay, then upload the file to the computer and you're ready to go.",  //9 , END
		 
		 
		 //how does it work
		 "A program scans your file for lines and will cut along those.",				//10, go to 11
		 "If you provide an Adobe Illustrator file, you can even engrave things!",		//11, go to 12
		 "It does so by 'lasering' certain areas for a shorter time than others.",		//12, go to 13
		 "For cutting it's using full force, cutting through wood in split seconds!",	//13, go to 14
		 
		 [
		  "I have another question.",													//14, go to 1
		  "You know your stuff!"														//14, go to 15
		 ],
		 
		 //know ur stuff!
		 "Yes! Did you know that the word 'laser' is actually an abbreviation?",		//15, go to 16
		 "It's true expression is 'Light Amplification by Stimulated Emission of Radiation'!",	//16, go to 17
		 "Sounds way more technical than 'laser', right?",		// 17, go to 1
		 ];	//4
speakers = [id, obj_player, id, id];
next_line = [0, [2, 10, -1], 3,4,5, [6,9], 7,8,14,-1,11,12,13,14,[1,15],16,17,1];