radius =64
audio_play_sound(doorhandle, 1000, false)
var inst = collision_rectangle(x-radius, y-radius, x+radius, y+radius, obj_player, false, false);
	if(inst != noone){
		room_persistent = true
		room_goto(room_dest);

	}


//test