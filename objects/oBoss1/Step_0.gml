// Inherit the parent event
event_inherited();
#region //movement



if(charge){
	chargeCounter++;
	if(chargeCounter == 120){
		charge = false;
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
		speed = 35;
		image_speed=2;
		chargeCounter=0;  
	}
}
else if(!attacking){
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = 12;
	attacking = true;
}

else if(attacking){
	if !collision_ellipse(0+sprite_width,0+sprite_height,room_width-sprite_width,room_height-sprite_height,self,true,false){
		r = irandom_range(0,100)
		if(r < 10){
			charge = true;
			speed = 0;
		}
		else attacking = false;
	}
}
#endregion

