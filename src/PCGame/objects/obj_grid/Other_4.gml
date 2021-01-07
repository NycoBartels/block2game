/*
globalvar grid;
grid = mp_grid_create(0, 0, room_width, room_height, room_width / 200, room_height / 100);
mp_grid_add_instances(grid, obj_npc, true);
mp_grid_add_instances(grid, obj_wall, true);
//mp_grid_add_instances(grid, obj_door, true);
//mp_grid_add_instances(grid, obj_door1, true);
*/
globalvar grid;
globalvar cellwidth;
globalvar cellheight;

cellwidth = 1
cellheight = 1
grid = mp_grid_create(0, 0, room_width, room_height, cellwidth, cellheight);

mp_grid_add_instances(grid, obj_npc, true);
mp_grid_add_instances(grid, obj_wall, true);
