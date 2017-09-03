///behavior_move();
//run from obj_gg
var check = check_next_node();
var l_x = real_to_grid_x(x);
var l_y = real_to_grid_y(y);
switch (check)
{
    case NODE.BORDER:
    {
        speed = my_speed;
        break;
    }
    case NODE.BLOCKED:
    {
        speed = 0;
        status = GG.STOP;
        break;
    }
    case NODE.FREE:
    {
        if (obj_ground_control.nodes[# l_x, l_y] == NODE.FREE)
        {
            speed = my_speed;
        }
        else
        {
            speed = 0;
            status = GG.STOP;
        }
        break;
    }
    case NODE.TEMP:
    case NODE.DEATH:
    {
        speed = 0;
        status = GG.DEATH;
        break;
    }
}

