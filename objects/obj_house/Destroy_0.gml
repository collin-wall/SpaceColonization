event_inherited();

// destroy colonist on deletion
if (instance_exists(child_colonist)) instance_destroy(child_colonist);

// remove self from parent town hall children list when destroyed
with (parent_town_hall) {
	for (var i = 0; i < array_length(child_houses); i++) {
		if (child_houses[i].id == other.id) {
			array_delete(child_houses, i, 1);
		}
	}
}

// path cleanup
path_delete(path);