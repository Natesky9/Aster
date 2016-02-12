instance = argument0
get_x = argument1
get_y = argument2

for (i = 0;i < ds_list_size(instance.list);i += 1)
    {
    var get_val = ds_list_find_value(instance.list,i)
    var get_hex_x = ds_map_find_value(get_val,"xx")
    var get_hex_y = ds_map_find_value(get_val,"yy")
    
    if point_direction(get_x,get_y,get_hex_x,get_hex_y) <= instance.size
        {
        return get_val
        }
    
    }
return -1
