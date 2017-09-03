///check_next_node();
//Run from obj_gg

var l_x = real_to_grid_x(x);
var l_y = real_to_grid_y(y);
var l_grid = obj_ground_control.nodes;

switch (direction)
{
    case 0:
    {
        return l_grid[# l_x + 1, l_y]; 
        break;
    }
    case 90:
    {
        return l_grid[# l_x, l_y - 1]; 
        break;
    }
    case 180:
    {
        return l_grid[# l_x - 1, l_y]; 
        break;
    }
    case 270:
    {
        return l_grid[# l_x, l_y + 1]; 
        break;
    }
}
