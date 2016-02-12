var ww = ds_grid_width(grid)-1
var hh = ds_grid_height(grid)-1

if hex_x <= 0 || hex_x >= ww
or hex_y <= 0 || hex_y >= hh
    {
    return true
    }
else return false
