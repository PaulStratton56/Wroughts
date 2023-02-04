/// @description Insert description here
// You can write your code in this editor

#region //controls

up = (keyboard_check(vk_up) + keyboard_check(ord("W"))) % 2;
down = (keyboard_check(vk_down) + keyboard_check(ord("S"))) % 2;
right= (keyboard_check(vk_right) + keyboard_check(ord("D"))) % 2;
left = (keyboard_check(vk_left) + keyboard_check(ord("A"))) % 2;

attack = mouse_check_button_pressed(mb_left);
aura = mouse_check_button_pressed(mb_right);
#endregion




#region // movement
vertical = down-up; //y axis inverted
horizontal = right-left;

image_angle=point_direction(x,y,mouse_x,mouse_y);

x+=horizontal*Sp;
y+=vertical*Sp;
if !(collision_ellipse(0+sprite_width,0+sprite_height,room_width-sprite_width,room_height-sprite_height,self,true,false)){
	x-=horizontal*Sp;
	y-=vertical*Sp;
}
#endregion

#region Weaponry

if(attack && !playerAttacking){

	if(keyboard_check_pressed(ord("1"))){ currentWeapon = "scythe" }
	if(keyboard_check_pressed(ord("2"))){ currentWeapon = "hammer" }
	playerAttacking = true;
	playerAttack(currentWeapon);
}

#endregion 

#region//deconstructing aura
timedelay--;
if(aura && !playerAttacking && timedelay<0){
	instance_create_layer(x,y,"lEntities",oAura);
	timedelay=gamespeed_fps*3;//3 second delay
}


#endregion