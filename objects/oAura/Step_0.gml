/// @description Insert description here
// You can write your code in this editor

releaseAura = mouse_check_button_released(mb_right);

if(!releaseAura && image_index >= 14){
	image_index = 11;
}

if(releaseAura){
	if(image_index < 3){
		oPlayer.playerAttacking = false;
		instance_destroy();
	}
	else if(image_index < 7){
		with(instance_create_layer(x,y,"lEntities",oAuraExplosion)){
			image_index = 0;
			charge = image_index/6 + 1;	
		}
		instance_destroy();
	}
	else if(image_index < 11){
		with(instance_create_layer(x,y,"lEntities",oAuraExplosion)){
			image_index = 6;	
			charge = image_index/6 + 1;	
		}
		instance_destroy();
	}
	else{
		with(instance_create_layer(x,y,"lEntities",oAuraExplosion)){
			image_index = 12;	
			charge = image_index/6 + 1;	
		}
		instance_destroy();
	}
}