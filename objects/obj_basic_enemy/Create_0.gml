path = path_add();
state_machine = new StateMachine();

target = noone;
attack_damage = 0.25;

find_target = new State();
find_target.create = function() {
	update_target_path();
}
find_target.update = function() {
	if (path_position == 1) state_machine.swap(attack);
	if (state_machine.time mod (1 * game_get_speed(gamespeed_fps)) == 0) {
		update_target_path();
	}
}

attack = new State();
attack.update = function() {
	if (instance_exists(target)) {
		if (state_machine.time mod (1 * game_get_speed(gamespeed_fps)) == 0) {
			if (target.image_alpha > attack_damage) {
				target.image_alpha -= attack_damage;
			} else {
				instance_destroy(target);
				state_machine.swap(find_target);
			}
		}
	} else {
		state_machine.swap(find_target);
	}
}

state_machine.swap(find_target);