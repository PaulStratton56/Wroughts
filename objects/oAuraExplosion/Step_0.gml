/// @description Insert description here
// You can write your code in this editor

timer -= 1;

if(timer <= 0){
	oPlayer.playerAttacking = false;
	instance_destroy();
}

if(!hit){
	with(instance_place(x,y,oEnemy)){
			other.hit = true;
			size = max(0.6,size - (0.05*other.charge));
			
	}
}