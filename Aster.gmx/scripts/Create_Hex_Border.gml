vertex_begin(hex_edge,basic)
for (i = 0;i < ds_list_size(list);i += 1)
    {
    num = ds_list_find_value(list,i)
    draw_x = ds_map_find_value(num,"xx")
    draw_y = ds_map_find_value(num,"yy")
    hex_x = ds_map_find_value(num,"grid_x")
    hex_y = ds_map_find_value(num,"grid_y")
    
    draw_set_color(c_black)
    if neighbor(5) < 0
        {//bottom-right
        edge(5)
        }
    if neighbor(4) < 0
        {//bottom
        edge(4)
        }
    if neighbor(3) < 0
        {//bottom-left
        edge(3)
        }
    if neighbor(2) < 0
        {//top-left
        edge(2)
        }
    if neighbor(1) < 0
        {//top
        edge(1)
        }
    if neighbor(0) < 0
        {//top-right
        edge(0)
        }
    }
vertex_end(hex_edge)
