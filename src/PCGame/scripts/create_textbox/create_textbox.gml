function create_textbox(text, speakers){
	//create text box in layer tekst
var tbox = instance_create_layer(0,0, "Text", obj_textbox);

with(tbox){
	var len = array_length_1d(text);
	var i = 0; repeat(len){
		names[i]		= speakers[i].name;
		portraits[i]	= speakers[i].portrait_index;
		
		i++;
		}
		event_perform(ev_other, ev_user1);
	}
	return create_textbox;
}