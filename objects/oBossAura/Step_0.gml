/// @description Insert description here
// You can write your code in this editor
image_angle-=1;
if(image_index<10){
	size*=.998
}
else if(image_index>10){
	size=min(4,size/.998);
}
image_xscale=size;
image_yscale=size;
if(image_index<14){
	if(animationdelay<0){
		animationdelay=25;
		image_index+=1;
		//image_angle-=2;
	}
	animationdelay--;
}
else{
	finalwait--;
}
if(finalwait<0){
	instance_destroy();
}