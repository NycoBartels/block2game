n_x = x
n_y = y
n_width = sprite_get_width(spr_lasercutter_npc_idle)
n_height = sprite_get_height(spr_lasercutter_npc_idle)
sprite_index = spr_lasercutter_npc_idle;
sprite_talking = spr_lasercutter_npc_talking;
sprite_idle = spr_lasercutter_npc_idle;

portrait_index = 0;
name = "Marcello";
text = ["Hey, do you need something?",
         [
		  "Could you help me lasercut?",	//1
		  "How does the lasercutter even work?",
		  "I gotta go."
		 ],
		 
		 "Sure, just upload your file to the Computer and click print.",		//2
		 "It uses dark areas from your submitted file and cuts those with a precise laser. It's simple to use and even supports .PNG ... to some extent. You should use Illustrator to stay on the safe side though",			//3
		 "If you need anything else, let me know."];	//4
speakers = [id, obj_player, id, id];
next_line = [0, [2, 3, -1], 4, -1, -1];