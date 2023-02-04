/// @description Insert description here
// You can write your code in this editor
side = 40
initialX = x;
initialY = y;


l = (side/2)*(5 + 2*(sqrt(5)));

p1Y = initialY + l;
p1X = initialX + (side/2);

p2Y = p1Y;
p2X = initialX - (side/2);

p3Y = initialY + (l/2);
p3X = sqrt((side^2) - (l/2)^2);

p4Y = initialY + (l/2);
p4X = sqrt((side^2) + (l/2)^2);