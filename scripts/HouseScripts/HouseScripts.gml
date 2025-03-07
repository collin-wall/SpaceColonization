///@func update_house_path();
///@desc Updates only the path of the house calling the function.

function update_house_path() {
	
	// set path to town hall
	if (object_index == obj_house) {
		
		var target_x = parent_town_hall.origin_x;
		var target_y = parent_town_hall.origin_y;
		mp_grid_path(global.pathfinding_grid, path, origin_x, origin_y, target_x, target_y, true);
		
	}
	
}

///@func update_house_paths();
///@desc Updates the path of all houses when an obstacle is destroyed.

function update_house_paths() {
	
	// update each house path
	with (obj_house) update_house_path();
	
}