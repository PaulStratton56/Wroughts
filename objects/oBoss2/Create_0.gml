/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//for 1920x1080
choice=0;

image_speed=0;
image_index=1;
points=[
	[0+room_width/2,126],
	[1569,457],
	[1195,843],
	[703,843],
	[348,457]];
waitTime=game_get_speed(gamespeed_fps);
midpoint = [(points[choice][0]+x)/2,(points[choice][1]+y)/2];
rundelay = 7;
swingdelay = 30;