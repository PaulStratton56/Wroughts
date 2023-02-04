/// @description Insert description here
// You can write your code in this editor
up = keyboard_check(ord("W"))
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
right= keyboard_check(ord("D"));

vertical = down-up; //y axis inverted
horizontal = right-left;


image_angle=point_direction(x,y,mouse_x,mouse_y);

x+=horizontal*Sp;
y+=vertical*Sp;
//x-=vertical*lengthdir_x(Sp,image_angle)+horizontal*lengthdir_x(Sp,image_angle+90);
//y-=vertical*lengthdir_y(Sp,image_angle)+horizontal*lengthdir_y(Sp,image_angle+90);