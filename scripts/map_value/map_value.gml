///@func map_value(_value, _current_lower_bound, _current_upper_bound, _desired_lower_bound, _desired_upper_bound);
///@desc Map a value from one range to another.
///@param	{Real} _value						The value to map from one range to another.
///@param	{Real} _current_lower_bound	The current lower bound of the range.
///@param	{Real} _current_upper_bound	The current upper bound of the range.
///@param	{Real} _desired_lower_bound	The desired lower bound of the new range.
///@param	{Real} _desired_upper_bound	The desired upper bound of the new range.
///@returns {Real}								The mapped value that is returned.

function map_value(_value, _current_lower_bound, _current_upper_bound, _desired_lower_bound, _desired_upper_bound) {
	return (((_value - _current_lower_bound) / (_current_upper_bound - _current_lower_bound)) * (_desired_upper_bound - _desired_lower_bound)) + _desired_lower_bound;
}