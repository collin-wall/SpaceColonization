// draw structure sprite
var xx = draw_x + random_range(-hit_shake, hit_shake);
var yy = draw_y + random_range(-hit_shake, hit_shake);
draw_sprite_ext(sprite_index, image_index, xx, yy, 1, 1, 0, image_blend, 1);