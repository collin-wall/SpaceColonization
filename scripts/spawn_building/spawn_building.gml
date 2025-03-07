///@func spawn_building(_building_object, _spawn_radius);
///@desc Spawns a designated building object within a specified radius.
///@param	{Asset.GMObject}	_building_object	The building object to spawn.
///@param	{Real}				_spawn_radius		The spawn radius of the building.
///@param	{Struct}				_struct				Variables to pass into the building instance.
///@returns {Id.Instance}								The building instance id that is returned.

function spawn_building(_building_object, _spawn_radius, _struct = {}) {
	
	// grid coordinates setup
	var grid_x, grid_y;
	
	do {
		
		// randomize spawn location
		var len = random(_spawn_radius);
		var dir = random(360);
		
		// convert spawn position to grid coordinates
		grid_x = (origin_x + lengthdir_x(len, dir)) div CELL_WIDTH;
		grid_y = (origin_y + lengthdir_y(len, dir)) div CELL_HEIGHT;
		
		// ensure grid location is unoccupied and within bounds
	} until	(global.game_grid[# grid_x, grid_y] != tile_state.occupied)
			&& (grid_x >= 0) && (grid_x < ds_grid_width(global.game_grid))
			&& (grid_y >= 0) && (grid_y < ds_grid_height(global.game_grid));
	
	// spawn building
	var building_x = grid_x * CELL_WIDTH;
	var building_y = grid_y * CELL_HEIGHT;
	var building = instance_create_layer(building_x, building_y, "Structures", _building_object, _struct);
	set_tile_state(building);
	
	// return building instance
	return building;
	
}