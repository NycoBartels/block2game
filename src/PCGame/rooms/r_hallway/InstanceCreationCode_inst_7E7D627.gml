n_x = x;
n_y = y;
n_width = sprite_get_width(spr_hallwaynpc2_idle);
n_height = sprite_get_height(spr_hallwaynpc2_idle);
sprite_index = spr_hallwaynpc2_idle;
sprite_talking = spr_hallwaynpc2_idle;
sprite_idle = spr_hallwaynpc2_idle;

portrait_index = 0;
name = "hallwayPerson";
text = ["Hi, you can have your stuff 3D printed here.",    //0, go to 1
         [
          "Can you print this? (Hand over USB-stick)",                        //1, go to 2
          "Nah, just want to talk.",                     //1, go to 4
          "Never mind..."                                      //1, END
         ],

         "Thanks, it might take a couple of minutes though. You can walk around a bit in the mean time.",             //2, go to 3
         "Or don't. I'm not your mom.",             //3, END
         "Okay, cool. How is your project coming along?",            //4, go to 5
         [
          "Doing okay",                        //5, go to 6
          "I don't want to talk about it.",       //5, go to 7
         ],
         "If you need anything else, let me know.",            //6, eND
         "Oh okay",
         ["please end it",
          "this is a bruh moment"
          ],
		  "ye it is"				//9
         ];                                        //7, END
speakers = [id, obj_player, id, id];
next_line = [0, [2, 4, -1], 3, -1, 5, [6, 7], -1, 0, [-1, 9], -1];
