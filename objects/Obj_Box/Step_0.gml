/// @description Insert description here
// You can write your code in this editor
if(!prestart_lr)
{
player_l = inst_pos(x-32,y,Obj_Player)
player_r = inst_pos(x+32,y,Obj_Player)
inst_l = player_l?player_l:inst_pos(x-32,y,Obj_Box)
inst_r = player_r?player_r:inst_pos(x+32,y,Obj_Box)
}
if(!prestart_ud)
{
player_u = inst_pos(x,y-32,Obj_Player)
player_d = inst_pos(x,y+32,Obj_Player)
inst_u = player_u?player_u:inst_pos(x,y-32,Obj_Box)
inst_d = player_d?player_d:inst_pos(x,y+32,Obj_Box)
}

#region operation
//check operation condition
if (brand=="+" or brand=="-"){
	playerflag = false;
	if(number_check(inst_l) and number_check(inst_r) and !prestart_lr ){
		prestart_lr=true
		operdir="lr"
		alarm[0]=opertime; // wait [opertime] to start operation
	}
	if(number_check(inst_u) and number_check(inst_d) and !prestart_ud){
		prestart_ud=true
		operdir="ud"
		alarm[0]=opertime;
	}
}
#endregion

if (!operatable and !cd_start){
	alarm[1] = cdtime
	cd_start = true
}