///@desc spawn colonist

var colonist = instance_create_layer(origin_x, origin_y, "Colonists", obj_colonist, {
	path : path,
	parent_town_hall : parent_town_hall,
	image_blend : image_blend
});

child_colonist = colonist;