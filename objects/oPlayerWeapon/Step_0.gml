/// @description Frame Data
x = oPlayer.x;
y = oPlayer.y;

image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;

if(mouse_check_button_released(mb_left)){
	image_speed = 1;
	hurtbox = true;
}

with(instance_place(x,y,oEnemy1)){
	if(image_index == 1){
		array_push(oGame.inventory,oPlayerScythe);
		instance_destroy();
	}
}