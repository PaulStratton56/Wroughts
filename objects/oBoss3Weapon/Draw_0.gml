/// @description Insert description here
// You can write your code in this editor
draw_self()
if(sprite_index==sPlayerHammerHeld){
	draw_text(500,450,"Hammer")
	draw_text(500,550,"damage" +string(sprite_index==sPlayerHammerHeld && rico>0 && !beingsummoned))
}
if(sprite_index==sPlayerScytheHeld){
	draw_text(800,450,"scythe")
	draw_text(800,550,"damage" + string(sprite_index==sPlayerScytheHeld && rico>0 && !beingsummoned))
}