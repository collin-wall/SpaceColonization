//draw_set_alpha(0.10);

//for (var xx = 0; xx < room_width; xx += CELL_WIDTH) {
//	draw_line(xx - 1, -1, xx - 1, room_height - 1);
//}

//for (var yy = 0; yy < room_height; yy += CELL_HEIGHT) {
//	draw_line(0, yy - 1, room_width - 1, yy - 1);
//}

//draw_set_alpha(1);

if (global.debugging) {
	
	// draw pathfinding grid
	draw_set_alpha(0.25);
	mp_grid_draw(global.pathfinding_grid);
	draw_set_alpha(1);
	
}