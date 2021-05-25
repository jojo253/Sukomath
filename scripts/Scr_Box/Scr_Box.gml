// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_block(){
	draw_sprite_ext(Spr_Box,0,x,y,image_xscale,image_yscale,0,draw_color,1);
	if (brand != noone){
		if (array_length(brand)) draw_text(x+8,y+4,brand[0]+string(brand[1]));
		else draw_text(x+12,y+4,brand);
		draw_text(x,y-16,type)
		draw_text(x,y-32,operatable)
	}
}

function number_check(obj_id){
	// valid, has brand, is number, and operatable
	if(obj_id) if(obj_id.brand!=noone) if(obj_id.type=="number") if(obj_id.operatable) return true
	return false
}

function set_brand(b){
	box_id = argument_count=1 ? self : argument[1]
	show_debug_message("box_id")
	show_debug_message(box_id)
	box_id.brand = b; //标签
	box_id.type = typeof(b); //类型
}

function box_init(p,w,d,dmg,b,dc){
	push = p; //是否可推动
	iswall = w; //是否是墙
	door = d; //是否是门
	damage = dmg; //是否销毁碰撞的箱子
	set_brand(b); //设置标签和类型
	draw_color = dc; //绘制颜色
	operatable = true; //当前能否进行运算
}

function strtobrand(str){
	if(str=="+" or str=="-") return str; // operator
	if(string_digits(str)=="") return noone; //blank
	if(string_char_at(str,1)=="=") return[string_char_at(str,1),string_digits(str)]; // =number
	try return real(string_digits(str)); //number
	return noone
}