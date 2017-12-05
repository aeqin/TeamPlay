//scr_Bubble("Text", x, y, type, name);
//pm, inGame, inLobby, inNeed
if(argument3 == "pm")
{
    txt = instance_create(argument1, argument2, obj_Bubble);
    with(txt)
    {
        padding = 16;
        maxLength = obj_Bubble.sprite_width;
        text = argument0;
        spd = argument1;
        font = fnt_Arial;
        
        text_length = string_length(text);
        font_size = font_get_size(font);
        
         y = y - obj_Bubble.sprite_height;
        
        draw_set_font(font);
        
        text_height = string_height_ext(text, font_size + (font_size / 2), obj_Bubble.sprite_width);
    }
}
else if(argument3 == "inGame")
{
    for (count = 0; count < 4; count ++)
    {
        //
        txt = instance_create(argument1, argument2, obj_Bubble);
        with(txt)
        {
            orgX = x;
            orgY = y;
            //show_debug_message("aslidhasldasd" + argument0[other.count]);
            text = string(argument0[other.count]);

            font = fnt_Arial;
            
            text_length = string_length(text);
            font_size = font_get_size(font);
            
            draw_set_font(font);
            
            if(other.count == 0) 
            {
                x -= obj_Bubble.sprite_width/2;
                y += obj_Bubble.sprite_height/3;
                number = 12;
                //show_debug_message("IT'S MOVING");
            }
            else if(other.count == 1)
            {
                x += obj_Bubble.sprite_width/2;
                y += obj_Bubble.sprite_height/3;
                number = 11;
                //show_debug_message("IT'S MOVING2");
            }
            else if(other.count == 2) 
            {
                x -= obj_Bubble.sprite_width/2;
                y -= obj_Bubble.sprite_height/3;
                number = 0;
                //show_debug_message("IT'S MOVING3");
            }
            else if(other.count == 3)
            {
                x += obj_Bubble.sprite_width/2;
                y -= obj_Bubble.sprite_height/3;
                number = 1;
                //show_debug_message("IT'S MOVING4");
            }
            text_height = string_height_ext(text, font_size + (font_size / 2), obj_Bubble.sprite_width);
        }
    }
}
else if(argument3 == "inLobby")
{
    for (count = 0; count < 4; count ++)
    {
        //
        txt = instance_create(argument1, argument2, obj_Bubble);
        with(txt)
        {
            //show_debug_message("aslidhasldasd" + argument0[other.count]);
            text = string(argument0[other.count]);
           
            name = argument4;
            //show_debug_message("+" + name);
            //show_debug_message("asdasd"+text);
            font = fnt_Arial;
            
            text_length = string_length(text);
            font_size = font_get_size(font);
            
            draw_set_font(font);
            
            if(other.count == 0) 
            {
                x -= obj_Bubble.sprite_width*1.5;
                y -= obj_Bubble.sprite_height/3;
                number = 2;
                
                //greet
            }
            /*
            else if(other.count == 1)
            {
                x -= obj_Bubble.sprite_width*1.5;
                y -= obj_Bubble.sprite_height/3;
                number = 4;
                //yes
            }
            else if(other.count == 2) 
            {
                x -= obj_Bubble.sprite_width/2;
                y -= obj_Bubble.sprite_height/3;
                number = 3;
                //no
            }
            */
            else if(other.count == 1)
            {
                x -= obj_Bubble.sprite_width/2;
                y -= obj_Bubble.sprite_height/3;
                number = 5;
                //need
            }
            else if(other.count == 2)
            {
                x += obj_Bubble.sprite_width/2;
                y -= obj_Bubble.sprite_height/3;
                number = 6;
                //thank
            }
            else if(other.count == 3)
            {
                x += obj_Bubble.sprite_width*1.5;
                y -= obj_Bubble.sprite_height/3;
                number = 1;
                //bad
            }
            text_height = string_height_ext(text, font_size + (font_size / 2), obj_Bubble.sprite_width);
        }
            
    }   
}
else if(argument3 == "inNeed")
{
    with (obj_Bubble)
    {
        instance_destroy();
    }
    for (count = 0; count < 3; count ++)
    {
        show_debug_message("We do need.");
        txt = instance_create(argument1, argument2, obj_Bubble);
        with(txt)
        {
            //show_debug_message("aslidhasldasd" + argument0[other.count]);
            text = string(argument0[other.count]);
           
            name = argument4;
            //show_debug_message("+" + name);
            //show_debug_message("asdasd"+text);
            font = fnt_Arial;
            
            text_length = string_length(text);
            font_size = font_get_size(font);
            
            draw_set_font(font);
            
            if(other.count == 0) 
            {
                x -= obj_Bubble.sprite_width;
                y -= obj_Bubble.sprite_height/3;
                //show_debug_message("IT'S MOVING");
            }
            else if(other.count == 1)
            {
                y -= obj_Bubble.sprite_height/3;
                //show_debug_message("IT'S MOVING2");
            }
            else if(other.count == 2)
            {
                x += obj_Bubble.sprite_width;
                y -= obj_Bubble.sprite_height/3;
                //show_debug_message("IT'S MOVING2");
            }
            number = 5;
            text_height = string_height_ext(text, font_size + (font_size / 2), obj_Bubble.sprite_width);
        }
            
    }   
}
