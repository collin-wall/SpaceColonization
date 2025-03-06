///@func instance_nth_nearest(_x, _y, _object, _n);
///@desc Returns the id of the nth nearest instance of an object.
///@param _x		{Real}				The x coordinate to search from.
///@param _y		{Real}				The y coordinate to search from.
///@param _object {Asset.GMObject}	The object to search for.
///@param _n		{Real}				The nth object to find.

function instance_nth_nearest(_x, _y, _object, _n) {
	
	_n = min(max(1, _n), instance_number(_object));
	
	var list = ds_priority_create();
	var nearest = noone;
	
	with (_object) ds_priority_add(list, id, distance_to_point(_x, _y));
	
	repeat (_n) nearest = ds_priority_delete_min(list);
	
	ds_priority_destroy(list);
	
	return nearest;
	
}