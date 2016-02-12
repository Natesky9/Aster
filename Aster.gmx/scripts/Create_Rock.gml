var hx,hy




grid = ds_grid_create(w,h)
list = ds_list_create()
for (hy = 0;hy < h;hy += 1)
    {
    for (hx = 0;hx < w;hx += 1)
        {
        n = ds_map_create()
        ds_list_add(list,n)
        ds_grid_set(grid,hx,hy,n)
        
        
        x_off = (hy mod 2)*(size*1.5)+1*size
        y_off = sqrt(3)/2*size
        xx = hx*size*3 + x_off
        yy = hy*size*sqrt(3)/2 + y_off
        ds_map_add(n,"grid_x",hx)
        ds_map_add(n,"grid_y",hy)
        
        ds_map_add(n,"xx",xx)
        ds_map_add(n,"yy",yy)
        
        ds_map_add(n,"col",choose(rock_color,rock_color,c_red,c_green,c_white))
        }
    }
Hex_Color()
Create_Hex()
Create_Hex_Border()
