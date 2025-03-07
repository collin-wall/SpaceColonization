///@func instance_nth_nearest(_x, _y, _object, _n);
///@desc Returns the id of the nth nearest instance of an object.
///@param	{Real}				_x			The x coordinate to search from.
///@param	{Real}				_y			The y coordinate to search from.
///@param	{Asset.GMObject}	_object	The object to search for.
///@param	{Real}				_n			The nth object to find.
///@returns {Id.Instance}					The instance id that is returned.

function instance_nth_nearest(_x, _y, _object, _n) {
	
	_n = min(max(1, _n), instance_number(_object));
	
	var list = ds_priority_create();
	var nearest = noone;
	
	with (_object) ds_priority_add(list, id, distance_to_point(_x, _y));
	
	repeat (_n) nearest = ds_priority_delete_min(list);
	
	ds_priority_destroy(list);
	
	return nearest;
	
}