n_x = x
n_y = y
n_width = sprite_get_width(spr_3dprinter)
n_height = sprite_get_height(spr_3dprinter)
sprite_index = spr_3dprinter;
sprite_idle = spr_3dprinter;
sprite_talking = spr_3dprinter;

portrait_index = 0;
name = "3D Printer";
text = ["I have no idea how this printer works. I should talk to the guy next to it."]; 
speakers = [id, obj_player, id, id];
next_line = [-1];