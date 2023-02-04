/// @description Insert description here
// You can write your code in this editor
up = keyboard_check(vk_up)
down = keyboard_check(vk_down);
right= keyboard_check(vk_right);
left = keyboard_check(vk_left);

vertical = down-up; //y axis inverted
horizontal = right-left;

x+=horizontal*xSp;
y+=vertical*ySp;