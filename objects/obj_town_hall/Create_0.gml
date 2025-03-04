event_inherited();

// initialization
image_blend = make_color_rgb(irandom(255), irandom(255), irandom(255));

// town hall variables
house_spawn_radius = 8 * CELL_WIDTH;
child_houses = [];

// spawn starting houses
repeat (global.starting_house_count) {
	var house = spawn_building(obj_house, house_spawn_radius);
	house.parent_town_hall = id;
	house.image_blend = image_blend;
	
	array_push(child_houses, house);
}