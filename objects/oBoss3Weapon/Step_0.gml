/// @description Insert description here
// You can write your code in this editor
if(sqrt(sqr(x-targetx)+sqr(y-targety))<3){
	if(sprite_index==sPlayerHammerHeld){
		oBoss3.hashammer=true;
	}
	if(sprite_index==sPlayerScytheHeld){
		oBoss3.hasScythe=true;
	}
	beingsummoned=false;
}
if(beingsummoned){
	move_towards_point(targetx,targety,s);
}
image_angle+=spin;

if(!collision_ellipse(0+sprite_width,0+sprite_height,room_width-sprite_width,room_height-sprite_height,self,true,false)){
	direction=point_direction(x,y,oPlayer.x,oPlayer.y);
	rico++;
}
if(rico>2){
	beingsummoned=true;
}
if(instance_exists(oBoss3)){
	if(!beingsummoned && rico>0){
		with(instance_place(x,y,oBoss3)){
			if(invince<0 && size<=.6){
				eHealth = max(0, eHealth - .5);
				invince=60;
			}
		}
	}
}

with(instance_place(x,y,oPlayer)){
	if(!immune){pHealth = max(0, pHealth - 1); immune = true;}
	else{
		immunityCd--;
		if(immunityCd < 0){immune = false; immunityCd = 10;}
	}
	kbDir = point_direction(other.x,other.y,x,y);
	kbLen = 20;
	other.direction = point_direction(oPlayer.x,oPlayer.y,x,y);
}
