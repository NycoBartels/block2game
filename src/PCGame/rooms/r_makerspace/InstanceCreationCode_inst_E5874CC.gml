n_x = x
n_y = y
n_width = sprite_get_width(spr_3dprinter_working)
n_height = sprite_get_height(spr_3dprinter_working)
sprite_index = spr_3dprinter_idle;
sprite_idle = spr_3dprinter_working;
sprite_talking = spr_3dprinter_idle;

portrait_index = 0;
name = "3D Printer";
text = ["Starting..."]; 
speakers = [id, obj_player, id, id];
next_line = [-1];