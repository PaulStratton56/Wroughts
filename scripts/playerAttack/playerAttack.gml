function playerAttack(weapon){
	if(weapon == "scythe"){
		with(instance_create_layer(oPlayer.x, oPlayer.y,"lEntities",oPlayerScythe)){
			image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
			image_speed = 0;
		}
	}
}