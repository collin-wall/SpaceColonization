event_inherited();

// change colonist state to flee
with (child_colonist) state_machine.swap(flee);

// remove self from parent town hall children list when destroyed
with (parent_town_hall) {
	for (var i = 0; i < array_length(child_houses); i++) {
		if (child_houses[i].id == other.id) {
			array_delete(child_houses, i, 1);
		}
	}
}