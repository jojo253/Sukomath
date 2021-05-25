/// @description Insert description here
// You can write your code in this editor
bmeet=instance_place(x,y,Obj_Box)
if(bmeet){
	if(get_open(self,bmeet.brand)){
		instance_destroy(bmeet)
		instance_destroy()
	}
	else instance_destroy(bmeet)
}
pmeet=instance_place(x,y,Obj_Player)
if(pmeet){
	if(get_open(self,pmeet.brand)){
		instance_destroy(pmeet)
		instance_destroy()
	}
	else instance_destroy(pmeet)
}