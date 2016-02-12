var num = argument0
draw_x = x + ds_map_find_value(num,"xx")
draw_y = y + ds_map_find_value(num,"yy")
var i

draw_primitive_begin(pr_trianglefan)
draw_set_color(c_orange)

draw_vertex(draw_x,draw_y)
for (i = 0;i <= 6;i += 1)
    {
    var lx = lengthdir_x(size,i*60)
    var ly = lengthdir_y(size,i*60)
    draw_vertex(draw_x + lx,draw_y + ly)
    }
draw_primitive_end()
