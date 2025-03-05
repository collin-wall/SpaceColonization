draw_self();

// [DEBUG] draw projectile origin
if (global.debugging) draw_point(projectile_origin_x, projectile_origin_y);

// [DEBUG] draw tower vision range
if (global.debugging) draw_circle(origin_x, origin_y, vision_range, true);