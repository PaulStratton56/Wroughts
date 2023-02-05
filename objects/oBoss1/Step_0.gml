// Inherit the parent event
event_inherited();
if(alive){
	#region //movement
	
	if(smash && !smashLimiter){
		instance_create_depth(oBoss1.x,oBoss1.y,-1,oHammerShock);
		speed *= -1;
		attacking = true;
		smash = false;
		smashLimiter = true;
	}

	if(charge){
		chargeCounter++;
		if(chargeCounter == 120){
			charge = false;
			direction = point_direction(x, y, oPlayer.x, oPlayer.y);
			speed = 35;
			image_speed=2;
			chargeCounter=0;
			smashCounter++;
			if(smashCounter==3){smashLimiter = false;smashCounter=0;}
		}
	}
	else if(!attacking){
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
		speed = 12;
		attacking = true;
		smashCounter++;
		if(smashCounter==3){smashLimiter = false;smashCounter=0;}
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
		
		else if(!smashLimiter){
			s = irandom_range(0,10);
			if(s < .0001){
				k = irandom_range(0,10);
				if(k < .0001) smash = true;
			}
		}
	}
	#endregion
}