// initialization
target_id = noone;

// enemy path setup
path = path_add();
temp_path = path_add();
path_update_delay = 0.5 * game_get_speed(gamespeed_fps);

// enemy stats
attack_range = 0;
attack_damage = 0;
attack_delay = 1 * game_get_speed(gamespeed_fps);

// enemy visuals setup
lunge_distance = 8;
lunge_start_x = x;
lunge_start_y = y;

#region state machine

// state machine setup
state_machine = new StateMachine();

#region pathfind state

pathfind = new State();

pathfind.update = function() {
	
	// reset pathfinding update alarm
	if (alarm[0] == -1) alarm[0] = path_update_delay;
	
	// swap to attack state when within attack range
	if (distance_to_object(target_id) <= attack_range) {
		state_machine.swap(attack);
	}
	
}

pathfind.destroy = function() {
	
	// stop pathfinding update alarm and end enemy path
	alarm[0] = -1;
	path_end();
	
}

#endregion

#region attack state

attack = new State();

attack.create = function() {
	
	// set lunge start position
	lunge_start_x = x;
	lunge_start_y = y;
	
}

attack.update = function() {
	
	// reset attack delay alarm
	if (alarm[1] == -1) alarm[1] = attack_delay;
	
	// attack lunge visual
	x = lerp(x, lunge_start_x, HIT_SHAKE_LERP);
	y = lerp(y, lunge_start_y, HIT_SHAKE_LERP);
	
}

#endregion

// set initial state
state_machine.swap(pathfind);

#endregion