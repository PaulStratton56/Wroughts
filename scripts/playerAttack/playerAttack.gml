function playerAttack(weapon){
	if(weapon == oPlayerRock){
		with(instance_create_layer(oPlayer.x, oPlayer.y,"lEntities",weapon)){
			speed = 2;
			direction = point_direction(x,y,mouse_x,mouse_y);
		}
	}
	else{
		with(instance_create_layer(oPlayer.x, oPlayer.y,"lEntities",weapon)){
			image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
			image_xscale = 1.5;
			image_yscale = 1.5;
		}
	}
}