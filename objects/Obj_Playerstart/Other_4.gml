/// @desc

if (!instance_exists(Obj_Player)) {
	player_spawn(x,y)
		
	if (save)
		player_save();
}