///@desc debug gui

if (global.debugging) {
	
	var debug_text = [
		"instances: " + string(instance_count),
		"enemy count: " + string(instance_number(obj_enemy_parent))
	];

	for (var i = 0; i < array_length(debug_text); i++) {
		draw_text(5, 25 + (i * 25), string(debug_text[i]));
	}
	
}