/// @description Insert description here
// You can write your code in this editor

#region Controls

up = (keyboard_check(vk_up) + keyboard_check(ord("W"))) % 2;
down = (keyboard_check(vk_down) + keyboard_check(ord("S"))) % 2;
right= (keyboard_check(vk_right) + keyboard_check(ord("D"))) % 2;
left = (keyboard_check(vk_left) + keyboard_check(ord("A"))) % 2;

attack = mouse_check_button_pressed(mb_left);
aura = mouse_check_button_pressed(mb_right);
dash = keyboard_check_pressed(vk_space) 
#endregion

#region Movement

vertical = down-up; //y axis inverted
horizontal = right-left;

image_angle=point_direction(x,y,mouse_x,mouse_y);

x+=(horizontal*Sp + lengthdir_x(kbLen,kbDir));
y+=(vertical*Sp + lengthdir_y(kbLen,kbDir));

kbLen *= 0.9;
if(kbLen <= 1){ kbLen = 0; }


if !(collision_ellipse(0+sprite_width,0+sprite_height,room_width-sprite_width,room_height-sprite_height,self,true,false)){
	x-=horizontal*Sp;
	y-=vertical*Sp;
}

if(dash and dashcd = 0){
	dashcd = 60;
	Sp = 20;
}

dashcd = max(0, dashcd-1);
if(dashcd <= 50){
	Sp = 5;
}

#endregion

#region Weaponry


if(keyboard_check_pressed(ord("1")) and playerHas(oPlayerScythe)){ currentWeapon = oPlayerScythe }
if(keyboard_check_pressed(ord("2")) and playerHas(oPlayerHammer)){ currentWeapon = oPlayerHammer }

if(attack && !playerAttacking){

	playerAttacking = true;
	playerAttack(currentWeapon);
}

#endregion 

#region Deconstructing aura

timedelay--;
if(aura && !playerAttacking && timedelay<0){
	instance_create_layer(x,y,"lEntities",oAura);
	timedelay=gamespeed_fps*3;//3 second delay
}

#endregion

#region Damage

with(instance_place(x,y,oEnemy) && immune){
	other.pHealth -= 1;
	other.kbDir = point_direction(x,y,other.x,other.y);
	other.kbLen = 20;
	immune = true;
}

if(pHealth <= 0){
	room_goto(rDefeat);
}
if(immune) immunity--;
if (immunity < 0){immune = false; immunity = 20}

#endregion