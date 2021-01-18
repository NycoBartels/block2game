radius = 64
var inst = collision_rectangle(x-radius, y-radius, x+radius, y+radius, obj_player, false, false);
if(inst != noone) {
	room_goto(room_dest);
	if(room_dest != r_classroom) {
		room_instance_add(room_dest, dest_x, dest_y, obj_player);
	}
}