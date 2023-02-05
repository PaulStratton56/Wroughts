/// @description Frame data


image_xscale = size;
image_yscale = size;
if(size <= 0.75){ image_index = 1; }

if(!attacking){
	//hammerBash();
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = 15;
	attacking = true;
}

if(attacking){
	if !collision_ellipse(0+sprite_width,0+sprite_height,room_width-sprite_width,room_height-sprite_height,self,true,false){
		attacking = false;
	}
}