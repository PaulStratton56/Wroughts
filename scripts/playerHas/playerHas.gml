// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerHas(item){
	for(var i = 0; i < array_length(oGame.inventory); i++){
		if(oGame.inventory[i] == item){
			return true;	
		}
	}
}
return false;