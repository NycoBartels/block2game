function line_counter(str_array, max_width){
	//setting up
	var last_space = 1;
	var count = 1;
	var line_count = 0
	var substr;
	var button_height;
	var len = array_length_1d(str_array);
		//getting string out of array
		var i = 0; repeat(len){
		var str = str_array[i]
		var str_len = string_length(str);
			//usual textwrapping
			repeat(str_len){
			substr = string_copy(str, 1, count);
			if(string_char_at(str, count) == " ") last_space = count;
				if(string_width(substr) > max_width){
				str = string_delete(str, last_space, 1);
				str = string_insert("\n", str, last_space)
				//counting extra lines
				line_count = string_count("\n", str)+1
				}
			count++;
			}
		//adding the normal lines
		line_count++
		//putting button y value in array
		button_height[i] = line_count * text_height
			show_debug_message(line_count)
		//resetting
		count = 1
		//next array
		i++;
		}
	//returning the line values in an array
	return (button_height);
	exit
}
	


