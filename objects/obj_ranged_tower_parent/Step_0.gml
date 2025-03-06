// ds list to store enemies within
var enemy_list = ds_list_create();

// number of enemies within vision range
var enemy_count = collision_circle_list(
	origin_x,
	origin_y,
	vision_range,
	obj_enemy_parent,
	true,
	true,
	enemy_list,
	false
);

// check if enemies are within range
if (enemy_count > 0) {
	
	// create array to store enemy data
	enemy_data = array_create(enemy_count);
	
	for (var i = 0; i < enemy_count; i++) {
		
		// enemy id and weight value setup
		var enemy_id = enemy_list[| i];
		var enemy_weight = 0;
		
		// store current enemy id and weight
		enemy_data[i] = { id : enemy_id, weight : enemy_weight };
		
		switch (enemy_id.object_index) {
			case obj_house_enemy:
				enemy_weight = 100;
			break;
		}
		
	}
	
	// cleanup enemy data array
	enemy_data = [];
	
}

// enemy list cleanup
ds_list_destroy(enemy_list);