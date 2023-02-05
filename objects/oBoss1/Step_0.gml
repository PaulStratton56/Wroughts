/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();
#region //movement
if(charge){
	chargeCounter++;
	if(chargeCounter == 120){
		charge = false;
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
		speed = 40;
		chargeCounter=0;
	}
}
else if(!attacking){
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = 15;
	attacking = true;
}

else if(attacking){
	if !collision_ellipse(0+sprite_width,0+sprite_height,room_width-sprite_width,room_height-sprite_height,self,true,false){
		r = irandom_range(0,100)
		if(r < 33){
			charge = true;
			speed = 0;
		}
		else attacking = false;
	}
}
#endregion

