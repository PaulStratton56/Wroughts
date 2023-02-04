/// @description Insert description here
// You can write your code in this editor

image_xscale = size;
image_yscale = size;
if(size <= 0.75){ image_index = 1; }


frame++;
if(frame > 120){
	xSp *= -1;
	frame = 0;
}
x+=xSp;
