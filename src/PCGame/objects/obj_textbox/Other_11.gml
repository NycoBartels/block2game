//name = names[page];
//portrait_index = portraits[page];

if(!is_array(dialogue[page])){
	text_wrapped = string_wrap(dialogue[page], text_max_width);
	str_len = string_length(text_wrapped);
	choice_dialogue = false;
} else {
		text_array = dialogue[page];
		text_array_len = array_length_1d(text_array);
		choice_dialogue = true;
		lines = line_counter(text_array,text_max_width)
		show_debug_message(lines)
}

counter = 0;