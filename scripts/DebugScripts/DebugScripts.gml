function print_grid_coords(_x, _y) {
	_x = _x div CELL_WIDTH;
	_y = _y div CELL_HEIGHT;
	print("grid_x: " + string(_x) + ", grid_y: " + string(_y) + ", value: " + string(global.game_grid[# _x, _y]));
}