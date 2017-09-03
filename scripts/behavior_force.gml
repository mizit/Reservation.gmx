///behavior_force();
//run from obj_gg
var check = check_next_node();
switch (check)
{
    case NODE.FREE:
    case NODE.BORDER:
    {
        speed = my_speed;
        status = GG.MOVE;
        break;
    }
    case NODE.BLOCKED:
    {
        if (old_dir != direction)
        {
            direction = old_dir;
            status = GG.MOVE;
            behavior_move();
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
    }
    break;
}
