/// @description Insert description here
// You can write your code in this editor



if(image_index >=1 and image_index <=3){
	draw_self();
	if(!playerAttacking and currentWeaponHeld != noone){
		draw_sprite_ext(currentWeaponHeld,0,oGame.prevPlaces[oGame.lastPos][0],oGame.prevPlaces[oGame.lastPos][1],1.5*heldScale[image_index],1.5,0,c_white,1);
	}
}
else{
	if(!playerAttacking and currentWeaponHeld != noone){
		draw_sprite_ext(currentWeaponHeld,0,oGame.prevPlaces[oGame.lastPos][0],oGame.prevPlaces[oGame.lastPos][1],1.5*heldScale[image_index],1.5,0,c_white,1);
	}
	draw_self();
}