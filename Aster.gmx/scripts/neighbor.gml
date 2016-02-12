var test_edge = argument0
var get_hex
var ww = ds_grid_width(grid)-1
var hh = ds_grid_height(grid)-1
var check_x
var check_y
switch test_edge
    {
    case 5:
        {
        if (hex_x == ww && hex_y mod 2 == 1)
        || (hex_y == hh)
        return -1
        
        if hex_y mod 2 == 0
            {
            check_x = hex_x
            }
        if hex_y mod 2 == 1
            {
            check_x = hex_x+1
            }
        check_y = hex_y+1
        get_hex = ds_grid_get(grid,check_x,check_y)
        return get_hex
        }
    case 4:
        {
        if hex_y == hh || hex_y == hh - 1
        return -1
        get_hex = ds_grid_get(grid,hex_x,hex_y+2)
        return get_hex
        }
    case 3:
        {
        if (hex_x == 0 && hex_y mod 2 == 0)
        || (hex_y == hh)
        return -1
        
        if hex_y mod 2 == 0
            {
            check_x = hex_x-1
            }
        if hex_y mod 2 == 1
            {
            check_x = hex_x
            }
        check_y = hex_y+1
        get_hex = ds_grid_get(grid,check_x,check_y)
        return get_hex
        }
    case 2:
        {
        if (hex_x == 0 && hex_y mod 2 == 0)
        || (hex_y == 0)
        return -1
        
        if hex_y mod 2 == 0
            {
            check_x = hex_x-1
            }
        if hex_y mod 2 == 1
            {
            check_x = hex_x
            }
        check_y = hex_y-1
        get_hex = ds_grid_get(grid,check_x,check_y)
        return get_hex
        }
    case 1:
        {
        if hex_y == 0 || hex_y == 1
        return -1
        get_hex = ds_grid_get(grid,hex_x,hex_y-2)
        return get_hex
        }
    case 0:
        {
        if (hex_x == ww && hex_y mod 2 == 1)
        || (hex_y == 0)
        return -1
        
        if hex_y mod 2 == 0
            {
            check_x = hex_x
            }
        if hex_y mod 2 == 1
            {
            check_x = hex_x+1
            }
        check_y = hex_y-1
        get_hex = ds_grid_get(grid,check_x,check_y)
        return get_hex
        }
    default:
        {
        show("Error!")
        }
    }
