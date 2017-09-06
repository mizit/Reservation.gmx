///save_level(room);
var l_rstr = room_get_name(argument0);
var l_num = real(string_char_at(l_rstr, 8)) * 10 + real(string_char_at(l_rstr, 9)) + 1;
if (l_num > level_open)
{
    level_open = argument0;
    file = file_text_open_write("levels.txt");
    file_text_write_real(file, level_open);
    file_text_close(file);
}

