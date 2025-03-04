///@desc spawn colonist

var colonist = instance_create_layer(origin_x, origin_y, "Colonists", obj_colonist, {
	path : path,
	parent_town_hall : parent_town_hall
});

child_colonist = colonist;