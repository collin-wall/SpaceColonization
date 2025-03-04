function update_target_path() {
	if (instance_exists(obj_house)) {
		var target_x, target_y;
		do {
			target = instance_nearest(x, y, obj_house);
			target_x = target.origin_x;
			target_y = target.origin_y;
		} until (mp_grid_path(global.pathfinding_grid, path, x, y, target_x, target_y, true));
		path_start(path, 1, path_action_stop, true);
	}
}