/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//if(hspeed!=0){
//	image_xscale=size*sign(-hspeed);
//}

#region Travelling
	if(sqrt(sqr(points[choice][0]-x)+sqr(points[choice][1]-y))<1){//if and pentagon vertex
		speed=0;
		if(collision_circle(x,y,160,oPlayer,true, false) && (image_index>2)){
			image_speed=1;
		}
		else if(collision_circle(x,y,320,oPlayer,true, false)&& (image_index<3) && swingdelay<0){
			image_index=3;
			swingdelay = 30;
		}
		else if(image_index<3 || !(collision_circle(x,y,400,oPlayer,true, false))){
			waitTime--;
			swingdelay--;
			image_index=0;
		}
		if(waitTime<0){
			current=choice;
			do{
				choice = floor(random(4.99));
			}until(current!=choice);
			midpoint = [(points[choice][0]+x)/2,(points[choice][1]+y)/2];
			waitTime=game_get_speed(gamespeed_fps)*2;//1 second
			image_index=1;
		}
	}
	else{
		if(image_index==1 || image_index==2 && rundelay<0){
			image_index^= 3;
			rundelay=7;
		}
		rundelay--;
		move_towards_point(points[choice][0],points[choice][1],22*(1-(sqr(sqr(midpoint[0]-x)+sqr(midpoint[1]-y)-10)/sqr(sqr(midpoint[0]-points[choice][0])+sqr(midpoint[1]-points[choice][1])))));
	}
#endregion
