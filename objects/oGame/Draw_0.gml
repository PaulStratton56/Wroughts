/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) == "rFight1" or room_get_name(room) == "rFight2" or room_get_name(room) == "rFight3"){
	draw_sprite_ext(sPlayerHealth,0,34,22,6* (oPlayer.pHealth/10),3,0,c_white,1);
	draw_sprite_ext(sPlayerHealthFrame,0,10,10,1,1,0,c_white,1);
	draw_set_halign(fa_left);
	draw_text_color(10,80,"You",c_green,c_green,c_green,c_green,1);
	if(instance_exists(oEnemy)){
		enemyHealth = oEnemy.eHealth/10;
	}
	draw_sprite_ext(sEnemyHealth,0,room_width-34,22,6*enemyHealth,3,0,c_white,1);
	draw_sprite_ext(sEnemyHealthFrame,0,room_width-10,10,1,1,0,c_white,1);
	draw_set_halign(fa_right)
	draw_text_color(room_width-10,80,"Dave",c_red,c_red,c_red,c_red,1);

	#region Following Weapon
		
		if(!prevSet){
			prevSet = true;
			for(var i = 0; i < 3; i+=1){
				array_push(prevPlaces,[oPlayer.x,oPlayer.y]);
			}
		}
		
		prevPlaces[lastPos] = [oPlayer.x,oPlayer.y];
		lastPos = (lastPos + 1) % 3;		

	#endregion

}