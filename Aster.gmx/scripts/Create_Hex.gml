vertex_begin(hex_center,basic)
for (i = 0;i < ds_list_size(list);i += 1)
    {
    num = ds_list_find_value(list,i)
    draw_x = ds_map_find_value(num,"xx")
    draw_y = ds_map_find_value(num,"yy")
    hex_x = ds_map_find_value(num,"grid_x")
    hex_y = ds_map_find_value(num,"grid_y")
    hex_c = ds_map_find_value(num,"col")
    //color 1

    for (j = 0;j < 6;j += 1)
        {
        //show(string(hex_center) + "," + string(draw_x) + "." + string(draw_y))
        vertex_position(hex_center,draw_x,draw_y)
        vertex_colour(hex_center,hex_c,1)
        var lx = lengthdir_x(size,j*60)
        var ly = lengthdir_y(size,j*60)
        var c = ds_map_find_value(num,j)
        vertex_position(hex_center,draw_x + lx,draw_y + ly)
        vertex_colour(hex_center,c,1)
        var lx = lengthdir_x(size,(j+1)*60)
        var ly = lengthdir_y(size,(j+1)*60)
        var c = ds_map_find_value(num,(j+1)%6)
        vertex_position(hex_center,draw_x + lx,draw_y + ly)
        vertex_colour(hex_center,c,1)
        
        }
    }
vertex_end(hex_center)
