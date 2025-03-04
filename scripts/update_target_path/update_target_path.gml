///@func update_target_path();
///@desc Updates pathfinding of calling instance towards it's target.

function update_target_path() {
	
	if (instance_exists(obj_house)) {
		
		var target_x, target_y;
		
		do {
			
			// target positioning
			target = instance_nearest(x, y, obj_house);
			target_x = target.origin_x;
			target_y = target.origin_y;
			
			// ensure there is still a valid path to the target
		} until (mp_grid_path(global.pathfinding_grid, path, x, y, target_x, target_y, true));
		
		// begin updated path
		path_start(path, 1, path_action_stop, true);
		
	}
	
}