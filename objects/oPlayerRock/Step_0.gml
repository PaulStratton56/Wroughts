/// @description Insert description here
// You can write your code in this editor

image_angle++;

if !collision_ellipse(0+sprite_width,0+sprite_height,room_width-sprite_width,room_height-sprite_height,self,true,false){
	oPlayer.attacking = false;
	instance_destroy();
}

with(instance_place(x,y,oEnemy)){
	if(other.hurtbox and size <= 0.6){
		eHealth -= 1;
		oPlayer.attacking = false;
		instance_destroy(other);
	}
}