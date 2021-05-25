/// @description Operation
show_debug_message("operate start")
if(operdir="lr")
{
	if(brand=="-") inst_r.brand*=-1;
	
	inst_r.brand+=inst_l.brand;
	inst_r.operatable=false;
	if(player_l) playerflag=true;
	instance_destroy(inst_l)
	if (playerflag){
		player=instance_create_layer(x+32,y,"Instances",Obj_Player)
		player.brand=inst_r.brand;
		player.operatable=false;
		instance_destroy(inst_r);
		playerflag=false;
	}
	prestart_lr=false
}
if(operdir="ud")
{
	if(brand=="-") inst_d.brand*=-1;
	
	inst_d.brand+=inst_u.brand;
	inst_d.operatable=false;
	if(player_u) playerflag=true;
	instance_destroy(inst_u)
	if (playerflag){
		player=instance_create_layer(x,y+32,"Instances",Obj_Player);
		player.brand=inst_d.brand;
		player.operatable=false;
		instance_destroy(inst_d);
		playerflag=false;
	}
	prestart_ud=false
}
show_debug_message("operate end")
operdir=noone


