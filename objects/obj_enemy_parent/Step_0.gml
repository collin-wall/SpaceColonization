// shortest path length
var shortest_path_length = 999999;

with (obj_building_parent) {
	
	// enemy path variables
	var _path = other.path;
	var _temp_path = other.temp_path;
	
	// set temp path to target
	var path_to_check = mp_grid_path(global.pathfinding_grid, _temp_path, other.x, other.y, origin_x, origin_y, true);
	
	// check if temp path to target exists
	if (path_to_check) {
		
		// get length of temp path
		var path_length = path_get_length(_temp_path);
		
		// set shortest path length and assign temp path to main path
		if (path_length < shortest_path_length) {
			
			shortest_path_length = path_length;
			
			path_assign(_path, _temp_path);
			
		}
	}
}

// start path
path_start(path, 1, path_action_stop, false);