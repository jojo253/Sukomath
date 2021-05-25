/// @description Insert description here
// You can write your code in this editor

// if meet is box, then check another 32 px until it's empty or wall.
// if final meet is empty, self and all box move.
// if final meet is wall, self and all box stop.

#region move and push

if (!run)
{
	run = true;
	hmove = keyboard_check(vk_right) - keyboard_check(vk_left);
	vmove = keyboard_check(vk_down)  - keyboard_check(vk_up);
	if (hmove==0 and vmove==0) run = false;
	else
	{
		final_brand = brand;
		hbox_array=[]
		hmeet_flag = hmove==0 ? 0 : get_hmeet_flag(1)
		vbox_array=[]
		vmeet_flag = vmove==0 ? 0 : get_vmeet_flag(1)
	}
}

else if(can_walk)
{
	if (hmeet_flag)
	{
		
		x += sp*hmove;
		if (hmeet_flag>1)
		{
			for (var i=0;i<hmeet_flag-1;i+=1)
			{
				if(instance_exists(hbox_array[i])) hbox_array[i].x += sp*hmove;
			}
		}
	}
	if (vmeet_flag and hmove==0)
	{
		y += sp*vmove;
		if (vmeet_flag>1)
		{
			for (var i=0;i<vmeet_flag-1;i+=1)
			{
				if(instance_exists(vbox_array[i])) vbox_array[i].y += sp*vmove;
			}
		}
	}
	if(x%32==0&&y%32==0)
	{
		run = false;
		can_walk = false;
		alarm[2] = cdwalk;
	}
}

#endregion

if (!operatable and !cd_start){
	alarm[1]=cdtime
	cd_start=true
}