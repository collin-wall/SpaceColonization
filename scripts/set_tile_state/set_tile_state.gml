///@func set_tile_state(_inst = id, _tile_state = tile_state.occupied);
///@desc Sets tile state based on the size of the calling instance.
///@param {Id.Instance} _inst The instance occupying tiles (default: id)
///@param {Real} _tile_state The state to set the tiles below the calling instance.

function set_tile_state(_inst = id, _tile_state = tile_state.occupied) {
	
	// positioning variables
	var grid_x = _inst.x div CELL_WIDTH;
	var grid_y = _inst.y div CELL_HEIGHT;
	var hcells = _inst.sprite_width div CELL_WIDTH;
	var vcells = _inst.sprite_height div CELL_HEIGHT;
	
	// set tile state
	for (var xx = grid_x; xx < grid_x + hcells; xx++) {
		for (var yy = grid_y; yy < grid_y + vcells; yy++) {
			if (global.game_grid[# xx, yy] != _tile_state) global.game_grid[# xx, yy] = _tile_state;
		}
	}
	
	// remove tile from pathfinding grid when setting to empty
	if (_tile_state == tile_state.empty) {
		mp_grid_clear_cell(global.pathfinding_grid, grid_x, grid_y);
	}
	
}