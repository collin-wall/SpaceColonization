///@func map_value(_value, _current_lower_bound, _current_upper_bound, _desired_lower_bound, _desired_upper_bound);
///@desc Map a value from one range to another.
///@param _value					 {Real} The value to map from one range to another.
///@param _current_lower_bound {Real} The current lower bound of the range.
///@param _current_upper_bound {Real} The current upper bound of the range.
///@param _desired_lower_bound {Real} The desired lower bound of the new range.
///@param _desired_upper_bound {Real} The desired upper bound of the new range.

function map_value(_value, _current_lower_bound, _current_upper_bound, _desired_lower_bound, _desired_upper_bound) {
	return (((_value - _current_lower_bound) / (_current_upper_bound - _current_lower_bound)) * (_desired_upper_bound - _desired_lower_bound)) + _desired_lower_bound;
}