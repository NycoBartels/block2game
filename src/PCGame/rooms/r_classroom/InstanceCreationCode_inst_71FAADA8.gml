n_x = x;
n_y = y;
n_width = sprite_get_width(spr_teacher_idle);
n_height = sprite_get_height(spr_teacher_idle);
sprite_index = spr_teacher_idle;
sprite_talking = spr_teacher_talking;
sprite_idle = spr_teacher_idle;
portrait_index = 0;
name = "Pierre deShawn";
text = [
		"Hey there, do you need help with something?",		//0, go to 1
		[
		"What should the project be about?",				//1, go to 2
		"Where can I print my game board and game pieces?",
		"Nevermind..."
		],
		//what should the project ...
		"Did you not pay attention in class?",				//2 to 3
		"Basically you have to create an analog game with culture elements.",
		"Wayfinding should also be a big part of the game.",
		"Your job now is to research and produce a prototype of a game that fits these requirements.",	// 5 to 1
		
		//where can i print ?
		"You should check out the MakerSpace. It's where most students lasercut their board and 3D print their game pieces.",	// 
		"It's just outside, check it out for yourself. The people there will help you.",  //7, go to 8
		[
		"Thanks, Pierre",		//8 go to 9
		"Thanks, Mr. deShawn"	//8 go to 10
		],
		"No worries, good luck with your game.",		//9, END
		"No need to be so formal, Pierre is fine.",		//10 go to 11
		"We're in the Netherlands here, teachers and professors tend to be more friendly and personal with the students.",
		"Anyway, off you go. Good luck with your game."	//12, END
		]; 
speakers = [id, obj_player, id, id];
next_line = [1,[2,6,-1],3,4,5,1,7,8,[9,10],-1,11,-1];