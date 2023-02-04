r = 0
if((x == p1X && y == p1Y)||(x == p2X && y == p2Y)||(x == p3X && y == p3Y)||(x == p4X && y == p4Y)||(x == xstart && y == ystart)){
while(true){
	r = random_range(1,5.99);
	r = floor(r);
	if(r == 1){
		if(x != p1X){
			direction = point_direction(x,y,p1X,p1Y);
			speed = k;
			break;
		}
	}
	if(r == 2){
		if(x != p2X){
			direction = point_direction(x,y,p2X,p2Y);
			speed = k;
			break;
		}
	}
	if(r == 3){
		if(x != p3X){
			direction = point_direction(x,y,p3X,p3Y);
			speed = k;
			break;
		}
	}
	if(r == 4){
		if(x != p4X){
			direction = point_direction(x,y,p4X,p4Y);
			speed = k;
			break;
		}
	}
	if(r == 5){
		if(x != xstart){
			direction = point_direction(x,y,xstart,ystart);
			speed = k;
			break;
		}
	}
}
}
