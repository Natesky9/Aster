var instance = argument0
var test_x = argument1
var test_y = argument2
if instance_exists(Rock)
    {
    for (m = 0;m < ds_list_size(instance.list);m += 1)
        {
        rr = ds_list_find_value(instance.list,m)
        
        var xx = instance.x + ds_map_find_value(rr,"xx")
        var yy = instance.y + ds_map_find_value(rr,"yy")
        
        draw_set_color(c_green)
        draw_line(x,y,test_x,test_y)
        if point_distance(xx,yy,test_x,test_y) <= 16
            {
            nearest = rr
            draw_set_color(c_red)
            draw_line(x,y,xx,yy)
            //show("rr = " + string(rr))
            return rr
            }
        }
    }
return -1
