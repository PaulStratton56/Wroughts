if(distance_to_point(points[choice][0],points[choice][1])<1){
	waitTime--;
	speed=0;
	if(waitTime<0){
		choice = floor(random(4.99));
		waitTime=game_get_speed(gamespeed_fps)*1;
	}
}
else{
	move_towards_point(points[choice][0],points[choice][1],3);
}