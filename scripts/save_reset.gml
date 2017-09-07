///save_reset();
file = file_text_open_write("levels.txt");
file_text_write_real(file, 1);
file_text_close(file);
level_open = 1;
