// initialization
image_blend = parent_town_hall.image_blend;

#region state machine

// state machine setup
state_machine = new StateMachine();

// state delays
at_work_delay = 2 * game_get_speed(gamespeed_fps);
at_house_delay = 5 * game_get_speed(gamespeed_fps);

#region walk_to_work state

walk_to_work = new State();

walk_to_work.create = function() {
	path_start(path, 1, path_action_stop, true);
}

walk_to_work.update = function() {
	if (path_position == 1) {
		state_machine.swap(at_work);
	}
}

#endregion

#region at_work state

at_work = new State();

at_work.update = function() {
	if (state_machine.time >= at_work_delay) {
		global.quota++;
		state_machine.swap(walk_to_house);
	}
}

#endregion

#region walk_to_house state

walk_to_house = new State();

walk_to_house.create = function() {
	path_start(path, -1, path_action_stop, true);
}

walk_to_house.update = function() {
	if (path_position == 0) {
		state_machine.swap(at_house);
	}
}

#endregion

#region at_house state

at_house = new State();

at_house.update = function() {
	if (state_machine.time >= at_house_delay) {
		state_machine.swap(walk_to_work);
	}
}

#endregion

#region flee state

flee = new State();

flee.create = function() {
	instance_destroy();
}

#endregion

// set initial state
state_machine.swap(at_house);

#endregion