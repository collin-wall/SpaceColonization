draw_self();

#region [DEBUG]

if (global.debugging) {
	
	// draw projectile origin
	draw_point(projectile_origin_x, projectile_origin_y);

	// draw tower vision range
	draw_circle(origin_x, origin_y, vision_range, true);

	// draw line to target
	if (instance_exists(target)) {
		draw_line(projectile_origin_x, projectile_origin_y, target.x, target.y);
	}
	
}

#endregion