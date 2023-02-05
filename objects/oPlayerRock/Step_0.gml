/// @description Insert description here
// You can write your code in this editor

image_angle+=3;
life -=1;

if (life <= 0 or !collision_ellipse(0+sprite_width,0+sprite_height,room_width-sprite_width,room_height-sprite_height,self,true,false)){
	oPlayer.playerAttacking = false;
	instance_destroy();
}

with(instance_place(x,y,oEnemy)){
	if(other.hurtbox and size <= 0.6){
		eHealth = max(0, eHealth - 0.5);
	}
	oPlayer.playerAttacking = false;
	instance_destroy(other);
}