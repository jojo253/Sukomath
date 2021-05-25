/// @description Insert description here
// You can write your code in this editor
if(!persistent){
	leave_x = (Obj_Player.bbox_left > room_width - 1) - (Obj_Player.bbox_right < (room_width - room_height + 1));
	leave_y = (Obj_Player.bbox_top > room_height - 1) - (Obj_Player.bbox_bottom < 1);
	if (leave_x != 0 || leave_y != 0)
	{
		room_goto(roomto);
		persistent=true
	}
}
