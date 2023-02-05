/// @description Insert description here
// You can write your code in this editor
if(!defeated){
	#region Controls

	up = (keyboard_check(vk_up) + keyboard_check(ord("W"))) % 2;
	down = (keyboard_check(vk_down) + keyboard_check(ord("S"))) % 2;
	right= (keyboard_check(vk_right) + keyboard_check(ord("D"))) % 2;
	left = (keyboard_check(vk_left) + keyboard_check(ord("A"))) % 2;

	attack = mouse_check_button_pressed(mb_left);
	aura = mouse_check_button_pressed(mb_right);
	dash = keyboard_check_pressed(vk_space) 
	#endregion

	#region Movement

	vertical = down-up; //y axis inverted
	horizontal = right-left;


	if (collision_ellipse(0+sprite_width,0+sprite_height,room_width-sprite_width,room_height-sprite_height,self,true,false)){
	x+=(horizontal*Sp + lengthdir_x(kbLen,kbDir));
	y+=(vertical*Sp + lengthdir_y(kbLen,kbDir));
	}

	kbLen *= 0.9;
	if(kbLen <= 1){ 
		kbLen = 0;
	
	}


	if !(collision_ellipse(0+sprite_width,0+sprite_height,room_width-sprite_width,room_height-sprite_height,self,true,false)){
		x-=(horizontal*Sp + lengthdir_x(kbLen,kbDir));
		y-=(vertical*Sp + lengthdir_y(kbLen,kbDir));
	}
	else{
	
	}


	if(dash and dashcd = 0){
		dashcd = 60;
		Sp = 20;
	}

	dashcd = max(0, dashcd-1);
	if(dashcd <= 50){
		Sp = 5;
	}

	#endregion

	#region Weaponry


	if(keyboard_check_pressed(ord("1"))){ 
		currentWeapon = oPlayerRock;
		currentWeaponHeld = noone;
	}
	if(keyboard_check_pressed(ord("2")) and playerHas(oPlayerScythe)){ 
		currentWeapon = oPlayerScythe;
		currentWeaponHeld = sPlayerScytheHeld;
	}
	if(keyboard_check_pressed(ord("3")) and playerHas(oPlayerHammer)){ 
		currentWeapon = oPlayerHammer;
		currentWeaponHeld = sPlayerHammerHeld;
	}
	if(attack && !playerAttacking && playerHas(currentWeapon)){

		playerAttacking = true;
		playerAttack(currentWeapon);
	}

	#endregion 

	#region Deconstructing aura

	if(aura && !playerAttacking){
		playerAttacking = true;
		instance_create_layer(x,y,"lEntities",oAura);
	}

	#endregion

	#region Damage

	with(instance_place(x,y,oEnemy)){
		if(!other.immune){other.pHealth = max(0, other.pHealth - 1); other.immune = true; }
		other.kbDir = point_direction(x,y,other.x,other.y);
		other.kbLen = 20;
	}
	if(immune){
		immunityCd--;
		if(immunityCd < 0){immune = false; immunityCd = 10;}
	}

	if(pHealth <= 0){
		array_push(oGame.dialogQueue,"You've been defeated...");
		defeated = true;
	}

	#endregion

	#region Animation

		point = point_direction(x,y,mouse_x,mouse_y);

		if(point >= 337.5 or point < 22.5){ image_index = 0 };
		else if(point >= 22.5 and point < 67.5){ image_index = 1 };
		else if(point >= 67.5 and point < 112.5){ image_index = 2 };
		else if(point >= 112.5 and point < 157.5){ image_index = 3 };
		else if(point >= 157.5 and point < 202.5){ image_index = 4 };
		else if(point >= 202.5 and point < 247.5){ image_index = 5 };
		else if(point >= 247.5 and point < 292.5){ image_index = 6 };
		else image_index = 7;

	#endregion

	#region //Out of bounds check
	if !(collision_ellipse(0+sprite_width -20,0+sprite_height-20,room_width-sprite_width+20,room_height-sprite_height+20,self,true,false)){
		x = 990
		y = 445
	}
	#endregion
}
else{
	sprite_index = sPlayerDead;
}