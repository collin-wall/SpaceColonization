event_inherited();

// [DEBUG] - draw spawn radius circle
if (global.debugging) draw_circle(origin_x, origin_y, house_spawn_radius, true);

// draw town hall icon
var crown_x = draw_x + (sprite_width / 2);
var crown_y = draw_y + (sprite_height / 2);
draw_sprite(spr_town_hall_icon, 0, crown_x, crown_y);