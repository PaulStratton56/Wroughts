/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
oGame.inventory = [];
array_push(oGame.dialogQueue,"Oh no! Frownboi stole your weapons!");
size=1.5;
invince =60;
instance_create_depth(x,y,128,oBossAura);
hammer = instance_create_depth(oPlayer.x+20,oPlayer.y+100,-1,oBoss3Weapon);
hashammer=false;
scythe = instance_create_depth(oPlayer.x+20,oPlayer.y-100,-1,oBoss3Weapon);
hasScythe = false;
with(hammer){
	targetx=other.x;
	targety=other.y;
	sprite_index = sPlayerHammerHeld;
}
with(scythe){
	targetx=other.x;
	targety=other.y;
	sprite_index = sPlayerScytheHeld;
}
