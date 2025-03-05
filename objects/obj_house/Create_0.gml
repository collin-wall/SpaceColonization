event_inherited();

// initialization
alarm[0] = 1 * game_get_speed(gamespeed_fps);

// house path setup
path = path_add();
var target_x = parent_town_hall.origin_x;
var target_y = parent_town_hall.origin_y;
mp_grid_path(global.pathfinding_grid, path, origin_x, origin_y, target_x, target_y, true);