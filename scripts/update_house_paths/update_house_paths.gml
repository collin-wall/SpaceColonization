///@func update_house_paths();
///@desc Updates the path of all houses when an obstacle is destroyed.

function update_house_paths() {
	
	// update each house path
	with (obj_house) update_house_path();
	
}