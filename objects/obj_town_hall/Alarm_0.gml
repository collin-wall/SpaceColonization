///@desc spawn house

var house = spawn_building(obj_house, house_spawn_radius, {
	parent_town_hall : id,
	image_blend : image_blend
});
	
array_push(child_houses, house);