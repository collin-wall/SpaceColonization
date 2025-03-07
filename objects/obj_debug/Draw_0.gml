///@desc draw pathfinding grid

if (global.debugging) {
	
	draw_set_alpha(0.25);
	mp_grid_draw(global.pathfinding_grid);
	draw_set_alpha(1);
	
}