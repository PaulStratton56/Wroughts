/// @description Frame Data
x = oPlayer.x;
y = oPlayer.y;

if(image_index == 3 and !hurtbox){ image_speed = 0; }

image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;

if(mouse_check_button_released(mb_left)){
	if(image_index == 3){
		image_speed = 2;
		hurtbox = true;
	}
	else{
		oPlayer.playerAttacking = false;
		instance_destroy();
	}
}

with(instance_place(x,y,oEnemy)){
	if(other.hurtbox and size <= 0.6){
		eHealth -= 5;
		other.hurtbox = false;
	}
}