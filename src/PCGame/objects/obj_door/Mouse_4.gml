radius =16
var inst = collision_rectangle(x-radius, y-radius, x+radius, y+radius, obj_player, false, false);
	if(inst != noone){
		room_goto(r_makerspace);
		//obj_player.x = 10
		//obj_player.y = 10
	}


//test