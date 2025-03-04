draw_self();

// [DEBUG] - draw spawn radius circle
if (global.debugging) draw_circle(origin_x, origin_y, house_spawn_radius, true);

// draw town hall icon
draw_sprite(spr_town_hall_icon, 0, origin_x, origin_y);