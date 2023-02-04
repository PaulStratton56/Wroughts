/// @description Insert description here
// You can write your code in this editor

chargeAura = mouse_check_button(mb_right);
releaseAura = mouse_check_button_released(mb_right);

if(chargeAura && image_index==4){
	image_speed=0;
}

if(releaseAura){
	image_speed=1;
}