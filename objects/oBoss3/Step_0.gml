/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(eHealth <= 0){
	while(instance_exists(oBoss3Weapon)){
		instance_destroy(instance_find(oBoss3Weapon,0));	
	}
}

if(random(7.99)<1){
	image_index=floor(random(3.99));
}

if(floor(random(50))==0){
	if(hasScythe){
		angle = random(130)+120;
		with(scythe){
			direction=other.angle;
			speed=15;
			rico=0;
		}
		hasScythe=false;
	}
}
if(floor(random(50))==1){
	if(hashammer){
		angle = random(130)+120;
		with(hammer){
			direction=other.angle;
			speed=15;
			rico=0;
		}
		hashammer=false;
	}
}
invince--

