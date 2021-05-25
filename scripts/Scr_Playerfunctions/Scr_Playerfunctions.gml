///@desc	Respawns the player at the last saved position
///@func	player_respawn()
function player_respawn() {
	//instance_destroy(obj_Gameover);
	//instance_destroy(obj_BloodEmitter);
	instance_destroy(Obj_Player);
	return player_spawn(global.save_active[SAVE.X], global.save_active[SAVE.Y], global.save_active[SAVE.BRAND]);
}

///@func			player_spawn(x, y)
///@arg {real} x	x
///@arg {real} y	y
///@arg {real} [brand]	brand
///@desc			Spawns player at the set position
function player_spawn(xx, yy) {
	player = instance_create_depth(
		xx,
		yy,
		global.player_depth,
		Obj_Player);
	if (argument_count > 2)
	{
		player.brand=argument[2]
	}
	return player
}

///@desc				Saving as done in obj_Save and adjacent objects
///@func				scr_Save_Live([x], [y], [room])
///@arg {real} [x]		x position to save
///@arg {real} [y]		y position to save
///@arg {real} [room]	room to save
function player_save() {

	if (argument_count >= 2)
	{
		global.save_active[SAVE.X] = argument[0];
		global.save_active[SAVE.Y] = argument[1];
	}
	else
	{
		global.save_active[SAVE.X] = Obj_Player.x;
		global.save_active[SAVE.Y] = Obj_Player.y;
	}

	if (argument_count >= 3)
		global.save_active[SAVE.ROOM] = room_get_name(argument[2]);
	else
		global.save_active[SAVE.ROOM] = room_get_name(room);
	
	if (argument_count >= 4)
		global.save_active[SAVE.BRAND] = argument[3];
	else
		global.save_active[SAVE.BRAND] = Obj_Player.brand;
	savedata_save();
}
