// path setup
path = path_add();
temp_path = path_add();

#region state machine

// state machine setup
state_machine = new StateMachine();

// state delays
path_update_delay = 0.5 * game_get_speed(gamespeed_fps);

#region pathfind state

pathfind = new State();

pathfind.update = function() {
	if (alarm[0] == -1) alarm[0] = path_update_delay;
}

#endregion

state_machine.swap(pathfind);

#endregion