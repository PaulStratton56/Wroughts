/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

if(eHealth < 2) rage = 1.5;
#region //movement
if(charge){
	k = irandom_range(1,1.2)//Time & speed coefficient
	chargeCounter++;
	if(chargeCounter > 120*k){
		charge = false;
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
<<<<<<< Updated upstream
		speed = 40;
=======
		speed = 45*k*rage;
>>>>>>> Stashed changes
		chargeCounter=0;
	}
}
else if(!attacking){
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = 15*rage;
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

