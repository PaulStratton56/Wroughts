function playerAttack(weapon){
	with(instance_create_layer(oPlayer.x, oPlayer.y,"lEntities",weapon)){
		image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
		image_speed = 0;
	}
}