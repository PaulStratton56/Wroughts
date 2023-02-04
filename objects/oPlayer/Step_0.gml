/// @description Insert description here
// You can write your code in this editor
up = (keyboard_check(vk_up) + keyboard_check(ord("W"))) % 2;
down = (keyboard_check(vk_down) + keyboard_check(ord("S"))) % 2;
right= (keyboard_check(vk_right) + keyboard_check(ord("D"))) % 2;
left = (keyboard_check(vk_left) + keyboard_check(ord("A"))) % 2;

vertical = down-up; //y axis inverted
horizontal = right-left;

x+=horizontal*xSp;
y+=vertical*ySp;


#region Weaponry

if(mouse_check_button_pressed(mb_left) && playerAttacking == false){
	playerAttacking = true;
	playerAttack(currentWeapon);
}

#endregion 