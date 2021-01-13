sprite_index = spr_survey_npc_idle;
sprite_talking = spr_survey_npc_talking;
sprite_idle = spr_survey_npc_idle;
portrait_index = 0;
name = "Samira";
text = [
		"Hey, do you have some time for a quick survey? It's for our game project.",
		[
		"Sure.",
		"Sorry, I'm busy.",
		"Secret cat?"
		],
		"Great! We've been thinking of adding diversity to our game project, but struggle with the details.",
		"If you are allowed to choose from a unique set of cultures for a game, do you choose one close to your own culture, or a completely different one?",
		[
		"Culture similar to mine.",
		"Vastly different culture.",
		"No idea."
		],		// v 5
		"Okay..., what aspect would you like to explore more in a game? cultural differences between countries or the impact of culture on individuals?",
		[
		"Cultural difference bewteen countries.",
		"Impact of culture on individuals.",
		"That's too difficult to answer for me."
		],		// v 7
		"Thanks for the feedback, these were all the questions I have at the moment...",
		"Have a nice day!",
		"~[,_,]:3",
		" ~[._.]:3",
		"  ~[,_,]:3",
		"   ~[._.]:3",
		"    ~[,_,]:3,",
		"    ~[,_,]:3 meow",
		"    ~[,_,]:3 meow meow",
		"    ~[,_,]:3 meEEOOWWW"
		]; 
speakers = [id, obj_player, id, id];
next_line = [0,[2,-1,9],0,0,[5,5,5],0,[7,7,7],0,-1,0,0,0,0,0,0,0,-1];