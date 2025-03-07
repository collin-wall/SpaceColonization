event_inherited();

#region find target
	
// ds list to store targets within
var target_list = ds_list_create();

// number of targets within vision range
var target_count = collision_circle_list(
	origin_x,
	origin_y,
	vision_range,
	obj_enemy_parent,
	true,
	true,
	target_list,
	false
);

// check if targets are within range
if (target_count > 0) {
	
	// create array to store target data
	var target_data = array_create(target_count);
	
	for (var i = 0; i < target_count; i++) {
		
		// target and weight value setup
		var target = target_list[| i];
		var target_weight = 0;
		
		// store current target id and weight
		target_data[i] = { id : target, weight : target_weight };
		
		// get target distance
		var target_distance = distance_to_point(target.x, target.y);
		
		// set weight based on target type and modifiers
		switch (target.object_index) {
			case obj_house_enemy:
				target_weight = round(map_value(target_distance, vision_range, 0, 0, 100));
			break;
		}
		
		// add weight to target data array
		target_data[i].weight = target_weight;
		
	}
	
	// initialize value that stores index of highest weighted target
	var highest_target_index = 0;
	
	// loop through target data to find target with highest weight value
	if (array_length(target_data) > 0) {
		
		for (var i = 0; i < target_count; i++) {
			
			if (target_data[i].weight > target_data[highest_target_index].weight) {
				highest_target_index = i;
			}
			
		}
		
	}
	
	// set target to target with highest weight value
	if (target_data[highest_target_index].weight != 0) {
		
		var highest_enemy_id = target_data[highest_target_index].id;
		
		target_id = highest_enemy_id;
		
	}
	
	// cleanup target data array
	target_data = [];
	
} else {
	
	// set target to noone if targets aren't in range
	target_id = noone;
	
}

// target list cleanup
ds_list_destroy(target_list);
	
#endregion