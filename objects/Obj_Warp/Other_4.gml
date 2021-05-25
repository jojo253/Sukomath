/// @description Insert description here
// You can write your code in this editor
if (persistent){
	if (leave_x == -1)
		with(Obj_Player) x += 480;
	else if (leave_x == 1)
		with(Obj_Player) x -= 480;
	
	//with(Obj_Player) x += warp_xoffset;
	
	if (leave_y == -1)
		with(Obj_Player) y += 480;
	else if (leave_y == 1)
		with(Obj_Player) y -= 480;
	
	//with(Obj_Player) y += warp_yoffset;
	
	instance_destroy();
}