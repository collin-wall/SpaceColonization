function spawn_building(_building_object, _spawn_radius) {
	
	var grid_x, grid_y;
	
	do {
		
		var len = random(_spawn_radius);
		var dir = random(360);
		
		grid_x = (origin_x + lengthdir_x(len, dir)) div CELL_WIDTH;
		grid_y = (origin_y + lengthdir_y(len, dir)) div CELL_HEIGHT;
		
	} until	(global.game_grid[# grid_x, grid_y] != 1)
			&& (grid_x >= 0) && (grid_x < ds_grid_width(global.game_grid))
			&& (grid_y >= 0) && (grid_y < ds_grid_height(global.game_grid));
	
	var building = instance_create_layer(grid_x * CELL_WIDTH, grid_y * CELL_HEIGHT, "Buildings", _building_object);
	set_tile_state(building);
	print_grid_coords(building.x, building.y);
	
	return building;
	
}