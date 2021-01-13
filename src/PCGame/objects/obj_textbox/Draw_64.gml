//draw box
draw_sprite(box, 0, box_x, box_y);
//draw portraitbox
draw_sprite(port, 0, port_x, port_y);
//draw namebox
draw_sprite(namebox, 0, namebox_x, namebox_y);

//draw name
var c = name_text_col
draw_set_halign(fa_center); draw_set_halign(fa_middle);
draw_text_color(name_text_x, name_text_y, npc_name, c,c,c,c, 1);
draw_set_halign(fa_left); draw_set_halign(fa_top);

//TEXT
draw_set_font(font);

if(!is_array(dialogue[page])){
	//type writter
	if(counter < str_len){
	counter++;
	}
	var substr = string_copy(text_wrapped, 1, counter);

	//draw text
	var c = text_col
	draw_text_color(text_x, text_y, substr, c,c,c,c, 1);
} else{
	c = text_col;
	
	var i = 0, y_add = 0;repeat(text_array_len){
		if (choice == i){c = choice_col; draw_text_color(box_x+text_max_width, text_y+y_add, "<", c,c,c,c, 1) }
		else{c = text_col;}
		draw_text_ext_color(text_x, text_y+y_add, text_array[i], text_height, text_max_width, c,c,c,c, 1);
		y_add += string_height_ext(text_array[i], text_height, text_max_width)
			draw_button(text_x, text_y+button_height[i]-button_height[0], text_x + text_max_width, text_y+button_height[i], false)
			if(button_height[0]){
				//draw_button(text_x, text_y, text_x + text_max_width, text_y+button_height[1], false)
				test++
			}
			show_debug_message(button_height[i])
		i++;
	}
	
}


