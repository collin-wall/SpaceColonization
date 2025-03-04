///@func print_grid_coords(_x, _y);
///@desc Prints x and y values as grid coordinates.
///@param {Real} _x The x coordinate to print.
///@param {Real} _y The y coordinate to print.

function print_grid_coords(_x, _y) {
	_x = _x div CELL_WIDTH;
	_y = _y div CELL_HEIGHT;
	print("grid_x: " + string(_x) + ", grid_y: " + string(_y) + ", value: " + string(global.game_grid[# _x, _y]));
}