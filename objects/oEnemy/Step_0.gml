/// @description Insert description here
// You can write your code in this editor
image_xscale = size;
image_yscale = size;
if(eHealth == 0 and alive){ 
	alive = false; 
	speed = 0;
	deathPlace = [x,y];
}
if(!alive){
	deathTimer -= 1;
	if(deathTimer <= 240){
		if(deathTimer % 2 == 0){
			x = deathPlace[0] + random_range(-3,3);
			y = deathPlace[1] + random_range(-3,3);
		}
		if(deathTimer % 20 == 0){
			randomize();
			instance_create_depth(x+random_range(-30,30),y+random_range(-30,30),-1,oDeathExplosion);		
		}
		if(deathTimer <= 0){
			with(instance_create_depth(x,y,-1,oDeathExplosion)){
				image_xscale = 3;
				image_yscale = 3;
				image_speed = 0.5;
			}
			array_push(oGame.dialogQueue,"You've defeated " + oGame.bossNames[room-1] + "!");
			if(room == 1){
				array_push(oGame.dialogQueue,"Among the ashes, you find a scythe. (2 to equip)");
				array_push(oGame.inventory,oPlayerScythe);
			}
			if(room == 2){
				array_push(oGame.dialogQueue,"From his body, you find a simple hammer. (3 to equip)");
				array_push(oGame.inventory,oPlayerHammer);
			}
			if(room == 3){
				array_push(oGame.dialogQueue,"With him gone, the game is back to its roots!");
			}
			instance_destroy();	
			
		}
	}
}