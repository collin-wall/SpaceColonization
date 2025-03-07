event_inherited();

// initialization
alarm[0] = 1 * game_get_speed(gamespeed_fps);
child_colonist = noone;

// house path setup
path = path_add();
update_house_path();