event_inherited();

// initialization
image_blend = make_color_rgb(irandom(255), irandom(255), irandom(255));
alarm[0] = 2 * game_get_speed(gamespeed_fps);

// town hall variables
starting_house_count = 1;
house_spawn_radius = 8 * CELL_WIDTH;
house_spawn_delay = 1 * game_get_speed(gamespeed_fps);
child_houses = [];