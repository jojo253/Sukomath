// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_hmeet_flag(dist){
	var box_meet = instance_position(x+16+(32*dist)*hmove,y+16,Obj_Wall)

	if(box_meet){
		/*
		show_debug_message("box_meet.x")
		show_debug_message(box_meet.x)
		show_debug_message("box_meet.y")
		show_debug_message(box_meet.y)
		show_debug_message("dist")
		show_debug_message(dist)
		*/
		if(box_meet.push)
		{
			final_brand=box_meet.brand
			array_push(hbox_array,box_meet)
			return get_hmeet_flag(dist+1)
		}
		if(box_meet.door)
		{
			if(array_length(box_meet.brand)==2){
				if (get_open(box_meet,final_brand)){
					instance_destroy(box_meet)
					return dist
				}
				return 0
			}
		}
		return 0
	}
	return dist
}

function get_vmeet_flag(dist){
	var box_meet = instance_position(x+16,y+16+(32*dist)*vmove,Obj_Wall)
	if(box_meet){
		if(box_meet.push)
		{
			final_brand=box_meet.brand
			array_push(vbox_array,box_meet)
			return get_vmeet_flag(dist+1)
		}
		if(box_meet.door)
		{
			if(array_length(box_meet.brand)==2){
				if (get_open(box_meet,final_brand)){
					instance_destroy(box_meet)
					return dist
				}
				return 0
			}
		}
		return 0
	}
	return dist
}

function get_open(door,key_num){
	if(typeof(key_num)=="number" and array_length(door.brand)){
		if(door.brand[0]=="=")  return key_num == door.brand[1]
		if(door.brand[0]=="<")  return key_num <  door.brand[1]
		if(door.brand[0]==">")  return key_num >  door.brand[1]
		if(door.brand[0]=="<=") return key_num <= door.brand[1]
		if(door.brand[0]==">=") return key_num >= door.brand[1]
		if(door.brand[0]=="!=") return key_num != door.brand[1]
	}
}

function inst_pos(xx,yy,obj){
	with (obj) {
    if (x == xx && y == yy) {
        return id;
    }
}
}