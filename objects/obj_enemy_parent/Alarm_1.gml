///@desc attack

if (instance_exists(target_id)) {
	
	// damage target
	if (target_id.hp > attack_damage) target_id.hp -= attack_damage; else target_id.hp = 0;
	
	// set attack lunge direction
	var lunge_dir = point_direction(x, y, target_id.origin_x, target_id.origin_y);
	x += lengthdir_x(lunge_distance, lunge_dir);
	y += lengthdir_y(lunge_distance, lunge_dir);
	
	// apply hit shake to target
	target_id.hit_shake = TOWER_HIT_SHAKE;
	target_id.draw_x += lengthdir_x(TOWER_HIT_SHAKE, lunge_dir);
	target_id.draw_y += lengthdir_y(TOWER_HIT_SHAKE, lunge_dir);
	
}