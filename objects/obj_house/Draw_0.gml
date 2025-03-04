draw_self();

#region DRAW TOWN HALL PATH

draw_set_color(image_blend);

if (instance_exists(parent_town_hall)) {
	
	var target_x = parent_town_hall.origin_x;
	var target_y = parent_town_hall.origin_y;
	
	if (mp_grid_path(global.pathfinding_grid, path, origin_x, origin_y, target_x, target_y, true)) {
		draw_path(path, origin_x, origin_y, true);
	}
	
}
draw_set_color(c_white);

#endregion