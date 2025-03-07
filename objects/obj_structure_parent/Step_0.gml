// update visual damage
image_index = floor(map_value(hp, 0, max_hp, image_number - 1, 0));

// lerp hit visual values to zero
hit_shake = lerp(hit_shake, 0, HIT_SHAKE_LERP);
draw_x = lerp(draw_x, x, HIT_SHAKE_LERP);
draw_y = lerp(draw_y, y, HIT_SHAKE_LERP);