n_x = x
n_y = y
n_width = sprite_get_width(spr_lasercutter)
n_height = sprite_get_height(spr_lasercutter)
sprite_index = spr_lasercutter;
sprite_idle = spr_lasercutter;
sprite_talking = spr_lasercutter;

portrait_index = 0;
name = "Lasercutter";
text = ["Lasercutter is ready. Waiting for file upload."]; 
speakers = [id, obj_player, id, id];
next_line = [-1];