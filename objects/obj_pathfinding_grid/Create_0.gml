// pathfinding grid setup
var hcells = room_width div CELL_HEIGHT;
var vcells = room_height div CELL_HEIGHT;

global.pathfinding_grid = mp_grid_create(0, 0, hcells, vcells, CELL_WIDTH, CELL_HEIGHT);

// add obstacles to pathfinding grid
mp_grid_add_instances(global.pathfinding_grid, obj_obstacle_parent, false);