if (instance_exists(camera_target)) {
	var cam_x = camera_target.origin_x - (RES_WIDTH / 2);
	var cam_y = camera_target.origin_y - (RES_HEIGHT / 2);
	
	cam_x = clamp(cam_x, 0, room_width - RES_WIDTH);
	cam_y = clamp(cam_y, 0, room_height - RES_HEIGHT);
	
	camera_set_view_pos(camera, cam_x, cam_y);
	camera_set_view_size(camera, RES_WIDTH, RES_HEIGHT);
}