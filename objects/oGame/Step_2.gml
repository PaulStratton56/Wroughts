/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) == "rFight1" or room_get_name(room) == "rFight2" or room_get_name(room) == "rFight3"){
	if(oPlayer.defeated and printTimer <= -60 and array_length(dialogQueue) == 1){
		room_goto(rDefeat);
	}
	if(instance_number(oEnemy) == 0 and instance_number(oDeathExplosion) == 0 and printTimer <= -60){
		room_goto_next();
		
	}
}
