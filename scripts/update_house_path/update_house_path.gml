///@func update_house_path();
///@desc Updates only the path of the house calling the function.

function update_house_path() {
	
	if (object_index == obj_house) {
		
		if (instance_exists(parent_town_hall)) {
			
			// set path to town hall
			var target_x = parent_town_hall.origin_x;
			var target_y = parent_town_hall.origin_y;
			mp_grid_path(global.pathfinding_grid, path, origin_x, origin_y, target_x, target_y, true);
			
		}
		
	}
	
}