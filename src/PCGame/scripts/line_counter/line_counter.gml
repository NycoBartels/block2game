function line_counter(str_array, max_width){
	//setting up
	var last_space = 1;
	var count = 1;
	var line_count = 1
	var substr;
	var len = array_length_1d(str_array);
	var lines;
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
				//counting lines
				line_count = string_count("\n", str) + 1
				}	
			count++;
			}
		//setting the line count back into an array
		lines[i] = line_count
		//resetting
		count = 1
		line_count = 1
		//next array
		i++;
		}
	//returning the line values in an array
	return (lines);
}
	


