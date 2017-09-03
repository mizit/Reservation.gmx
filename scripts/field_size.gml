///field_size(x, y, onetwo);
var l_x = argument0;
var l_y = argument1;
var l_node_one = argument2;
var l_grid = obj_ground_control.nodes;
var l_size = 0;
if ((l_grid[# l_x, l_y] != NODE.FREE) && (l_grid[# l_x, l_y] != NODE.DEATH))
{
    return 0;
}
var l_list_x = ds_list_create();
var l_list_y = ds_list_create();
l_grid[# l_x, l_y] |= l_node_one;
ds_list_add(l_list_x, l_x);
ds_list_add(l_list_y, l_y);
l_size++;
while (ds_list_size(l_list_x))
{
    var cx, cy;
    cx = l_list_x[| 0];
    cy = l_list_y[| 0];
    if (l_grid[# cx - 1, cy] == NODE.FREE) || (l_grid[# cx - 1, cy] == NODE.DEATH)
    {
        l_grid[# cx - 1, cy] |= l_node_one;
        ds_list_add(l_list_x, cx - 1);
        ds_list_add(l_list_y, cy);
        l_size++;
    }
    if (l_grid[# cx + 1, cy] == NODE.FREE) || (l_grid[# cx + 1, cy] == NODE.DEATH)
    {
        l_grid[# cx + 1, cy] |= l_node_one;
        ds_list_add(l_list_x, cx + 1);
        ds_list_add(l_list_y, cy);
        l_size++;
    }
    if (l_grid[# cx, cy - 1] == NODE.FREE) || (l_grid[# cx, cy - 1] == NODE.DEATH)
    {
        l_grid[# cx, cy - 1] |= l_node_one;
        ds_list_add(l_list_x, cx);
        ds_list_add(l_list_y, cy - 1);
        l_size++;
    }
    if (l_grid[# cx, cy + 1] == NODE.FREE) || (l_grid[# cx, cy + 1] == NODE.DEATH)
    {
        l_grid[# cx, cy + 1] |= l_node_one;
        ds_list_add(l_list_x, cx);
        ds_list_add(l_list_y, cy + 1);
        l_size++;
    }
    ds_list_delete(l_list_x, 0);
    ds_list_delete(l_list_y, 0);
}
ds_list_destroy(l_list_x);
ds_list_destroy(l_list_y);
return l_size;
