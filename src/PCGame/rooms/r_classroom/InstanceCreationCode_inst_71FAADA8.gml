sprite_index = spr_teacher_idle;

portrait_index = 0;
name = "Pierre deShawn";
text = [
		"Do you need some help?",
		[
		"What am I supposed to do?",
		"Where do I need to go?",
		"I gotta go..."
		],
		"Did you not pay attention in class?",
		"Oh wait, it hasn't been programmed yet... my bad. Let me fill you in on the details.",
		"You have to design an analog game. You will be graded equally on 'wayfinding', culture and game mechanics.",
		"Your job now is to research and produce a prototype of a game that fits these requirements.",
		"In the end, you will be graded on how well each part is fleshed out.",
		"Keep in mind what I said about the inside of the onion.",
		
		"You should check out the MakerSpace. It's where most students lasercut their board and 3D print their characters.",
		"It's just outside, check it out for yourself. The staff will help you.",
		[
		"Thanks, Pierre"
		],
		]; 
speakers = [id, obj_player, id, id];
next_line = [0,[2,8,-1],3,4,5,6,7,1,9,1];