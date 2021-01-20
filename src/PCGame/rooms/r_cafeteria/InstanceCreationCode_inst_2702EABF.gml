n_x = x;
n_y = y;
n_width = sprite_get_width(spr_vendingmachine);
n_height = sprite_get_height(spr_vendingmachine);
sprite_index = spr_vendingmachine;
sprite_talking = spr_vendingmachine;
sprite_idle = spr_vendingmachine;

portrait_index = 0;
name = "Vending Machine";
text = ["Enter the code of the item you'd like to purchase",    
         [
          "001: Giga sized Snockers bar",                      
          "007: Moreo cookies",
		  "015: Blue Bull",
		  "Abort"
         ],
		  "1,30 Euros please",
		 [
		  "Pay",
		  "Cancel"
		 ],
		  "......",
		  "The ejection mechanism seems to be broken.",
		  "*You reminisce the time you were 1,30 Euros richer*"

         ];                                        
speakers = [id, obj_player, id, id];
next_line = [0, [0,0,0, -1], 0, [0,-1], 0,0,-1];
