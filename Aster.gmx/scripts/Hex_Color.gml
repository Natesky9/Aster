for (i = 0;i < ds_list_size(list);i += 1)
    {
    num = ds_list_find_value(list,i)
    hex_x = ds_map_find_value(num,"grid_x")
    hex_y = ds_map_find_value(num,"grid_y")
    
    //color 1
    hex_c = ds_map_find_value(num,"col")
    for (j = 0;j < 6;j += 1)
        {
        
        //color 2
        get = neighbor(j)
        if get != -1
        hex_c2 = ds_map_find_value(get,"col")
        else hex_c2 = rock_color
        //color 3
        get = neighbor((j+5)%6)
        if get != -1
        hex_c3 = ds_map_find_value(get,"col")
        else hex_c3 = rock_color
        
        var hex_red = mean(color_get_red(hex_c),color_get_red(hex_c2),color_get_red(hex_c3))
        var hex_green = mean(color_get_green(hex_c),color_get_green(hex_c2),color_get_green(hex_c3))
        var hex_blue = mean(color_get_blue(hex_c),color_get_blue(hex_c2),color_get_blue(hex_c3))
        
        var hex_color = make_colour_rgb(hex_red,hex_green,hex_blue)
        ds_map_replace(num,j,hex_color)
        }
    }
