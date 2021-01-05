box = spr_box;
port = spr_portrait;
namebox = spr_namebox;

//setting game view
gamewidth = room_width * 5;
gameheight = room_height * 5;


//getting box size
boxwidth = sprite_get_width(box);
boxheight = sprite_get_height(box);
portwidth = sprite_get_width(port);
portheight = sprite_get_height(port);
nameboxwidth = sprite_get_height(namebox);
nameboxheight = sprite_get_height(namebox);

//setting box placement
port_x = (gamewidth - boxwidth - portwidth) * 0.5;
port_y = (gameheight*0.98) - portheight;
box_x = (port_x + portwidth);
box_y = port_y;
namebox_x = port_x;
namebox_y = port_y - nameboxheight;

//space between box and text box
x_buffer = 15; //multiplied by 5 already
y_buffer = 10;

//setting placements for text box
text_x = box_x + x_buffer;
text_y = box_y + y_buffer;
name_text_x = namebox_x + (nameboxwidth/0.5);
name_text_y = namebox_y + (nameboxheight/5);

//setting the max text width
text_max_width = boxwidth - (2*x_buffer);

//setting the counter for typewriter
counter = 0;

//getting text collor and font
name_text_col = c_black;
text_col = c_white;
font= fnt_text;

//setting the font
draw_set_font(font);
text_height = string_height("M")

//old tekst box settings
page = 0;
text[0] = ""
name = ""
choice = 0;
text = par_npc.text
choice_col = c_yellow;
choice_dialogue = false


next_line = [0]
npc_name = "test name";

with(instance_nearest(obj_player.x, obj_player.y, par_npc)){
	obj_textbox.message_end = array_length_1d(text);
	obj_textbox.npc_name = name;
	obj_textbox.npc_next_line = next_line;
	obj_textbox.npc_speakers = speakers
	
	for(i = 0; i < obj_textbox.message_end; i++){
		obj_textbox.dialogue[i] = text[i];
	}
}

text_wrapped = string_wrap (dialogue[page], text_max_width);
str_len = string_length(dialogue[page]);
counter = 0;


//event_perform(ev_other, ev_user1);




//stringHeight = string_height(text);