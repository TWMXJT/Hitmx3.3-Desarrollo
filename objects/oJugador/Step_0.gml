key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_space = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oPared)) && (key_space){
	vsp = -7;
}

if (place_meeting(x+hsp,y,oPared)){
	
		while (!place_meeting(x+sign(hsp),y,oPared))
		{
			x = x + sign(hsp); 
		}
		hsp = 0;
}
x = x + hsp;

if (place_meeting(x,y+vsp,oPared)){
	
		while (!place_meeting(x,y+sign(vsp),oPared))
		{
			y = y + sign(vsp); 
		}
		vsp = 0;
}
y = y + vsp;