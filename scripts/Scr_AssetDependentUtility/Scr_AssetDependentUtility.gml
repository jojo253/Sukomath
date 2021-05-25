/*
	Utility functions that depend on the existence
	of some asset
*/

///@desc Checks whether or not a flag has been set
///@func flag_check(index)
///@arg {real} index
function flag_check(index) {
	return int_read_bit(global.save_active[SAVE.FLAG], index)
}

///@desc Sets a flag
///@func flag_set(index, bool)
///@arg {real} index
///@arg {bool} bool
function flag_set(index, val) {
	global.save_active[SAVE.FLAG] = int_set_bit(global.save_active[SAVE.FLAG], index, val);
}