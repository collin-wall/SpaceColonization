randomize();

// game grid setup
var hcells = room_width div CELL_WIDTH;
var vcells = room_height div CELL_HEIGHT;

global.game_grid = ds_grid_create(hcells, vcells);

// game variables
global.quota = 0;
global.quota_target = 20;