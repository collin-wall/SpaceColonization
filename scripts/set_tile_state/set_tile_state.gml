///@func set_tile_state(_inst = id, _tile_state = true);
///@desc Sets tile state based on the size of the calling instance.
///@param {Id.Instance} _inst The instance occupying tiles (default: id)
///@param {Real} _tile_state The state to set the tiles below the calling instance.

function set_tile_state(_inst = id, _tile_state = tile_state.occupied) {
	
	var grid_x = _inst.x div CELL_WIDTH;
	var grid_y = _inst.y div CELL_HEIGHT;
	var hcells = _inst.sprite_width div CELL_WIDTH;
	var vcells = _inst.sprite_height div CELL_HEIGHT;
	
	for (var xx = grid_x; xx < grid_x + hcells; xx++) {
		for (var yy = grid_y; yy < grid_y + vcells; yy++) {
			global.game_grid[# xx, yy] = _tile_state;
		}
	}
	
}