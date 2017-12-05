//scr_text("Text", x, y, follow, leftOrRight, upOrDown, name);

if(argument4 == 1)
{
    txt = instance_create(argument1, argument2, obj_TalkLeftRight);
    with(txt)
    {
            name = argument6;
            follow = argument3;
            //image_xscale = argument4;
            image_yscale = argument5;
            padding = 8;
            maxLength = obj_TalkLeftRight.sprite_width;
            text = argument0;
            spd = argument1;
            font = fnt_Arial;
            
            numX = follow.x - x;
            numY = follow.y - y;
            
            text_length = string_length(text);
            font_size = font_get_size(font);
            
             //y = y - obj_Bubble.sprite_height;
            
            draw_set_font(font);
            
            text_height = string_height_ext(text, font_size + (font_size / 2), obj_TalkLeftRight.sprite_width);
    }
}
else
{
    txt = instance_create(argument1, argument2, obj_TalkRight);
    with(txt)
    {
            name = argument6;
            follow = argument3;
            //image_xscale = argument4;
            image_yscale = argument5;
            padding = 16;
            maxLength = obj_TalkRight.sprite_width;
            text = argument0;
            spd = argument1;
            font = fnt_Arial;
            
            numX = follow.x - x;
            numY = follow.y - y;
            
            text_length = string_length(text);
            font_size = font_get_size(font);
            
             //y = y - obj_Bubble.sprite_height;
            
            draw_set_font(font);
            
            text_height = string_height_ext(text, font_size + (font_size / 2), obj_TalkRight.sprite_width);
    }
}
