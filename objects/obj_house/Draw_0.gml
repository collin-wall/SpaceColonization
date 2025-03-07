event_inherited();

#region draw town hall path

draw_set_color(image_blend);

// [DEBUG] draw path path
if (instance_exists(parent_town_hall)) {
	if (global.debugging) draw_path(path, origin_x, origin_y, true);
}

draw_set_color(c_white);

#endregion