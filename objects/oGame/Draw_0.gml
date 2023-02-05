/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) == "rFight1" or room_get_name(room) == "rFight2" or room_get_name(room) == "rFight3"){
	draw_sprite_stretched(sArenaBoundary,0,0,0,room_width,room_height)
	draw_sprite_ext(sPlayerHealth,0,34,22,6* (oPlayer.pHealth/10),3,0,c_white,1);
	draw_sprite_ext(sPlayerHealthFrame,0,10,10,1,1,0,c_white,1);
	draw_set_halign(fa_left);
	draw_text_color(10,80,"SmileBoi",c_green,c_green,c_green,c_green,1);
	if(instance_exists(oEnemy)){
		enemyHealth = oEnemy.eHealth/10;
	}
	draw_sprite_ext(sEnemyHealth,0,room_width-34,22,6*enemyHealth,3,0,c_white,1);
	draw_sprite_ext(sEnemyHealthFrame,0,room_width-10,10,1,1,0,c_white,1);
	draw_set_halign(fa_right);
	draw_text_color(room_width-10,80,bossNamesShort[room-1],c_red,c_red,c_red,c_red,1);
	

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

	#region Text Box
		if(array_length(dialogQueue) != 1 and printText == ""){
			printText = dialogQueue[1];
			if(array_length(dialogQueue) == 1){
				dialogQueue[0] = "";	
			}
			else{
				array_delete(dialogQueue,0,1);
			}
			printTimer = 120;
		}
		printTimer -= 1;
		if(printTimer > 0){
			draw_rectangle_color(500,room_height-110,room_width-500,room_height-10,c_white,c_white,c_gray,c_white,false);
			draw_rectangle_color(500,room_height-110,room_width-500,room_height-10,c_black,c_black,c_black,c_black,true);
			draw_rectangle_color(501,room_height-109,room_width-499,room_height-11,c_black,c_black,c_black,c_black,true);
			draw_set_valign(fa_middle);
			draw_set_halign(fa_left);
			draw_set_font(fTextSmall);
			draw_text_color(550,room_height-50,printText,c_black,c_black,c_black,c_black,1);
			draw_set_font(fTextBig);
			draw_set_valign(fa_top);
		}
		else{
			printText = "";	
		}
			
	
	#endregion

}