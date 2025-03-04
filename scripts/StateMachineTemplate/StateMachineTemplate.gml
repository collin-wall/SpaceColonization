function State() constructor {
    static NOOP = function() {};
	 
    create = NOOP;
    update = NOOP;
    destroy = NOOP;
}

function StateMachine() constructor {
	static null_state = new State();

	state = null_state;
	time = 0;

	// Swap to New State
	swap = function(new_state = null_state) {
	   state.destroy();

	   state = new_state;
	   time = 0;

	   state.create();
	}

	// Run Current State
	run = function() {
	   state.update();
	   time++;
	}
}

// Example of State Machine
// example_state_machine = new StateMachine();
// example_state = new State();
// example_state.create = function() { }
// example_state.update = function() { }
// example_state.destroy = function() { }
// example_state_machine.run(); -- Step Event