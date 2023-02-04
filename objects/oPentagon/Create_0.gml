side = 10;
k = 1 //Speed coefficient


//l = (side/2) * sqrt(5 + 2*(sqrt(5)));

p1Y = ystart + lengthdir_y(side,-36);
p1X = xstart + lengthdir_x(side,-36);

p2Y = p1Y + lengthdir_y(side,-72);
p2X = p1X + lengthdir_x(side,-72);

p3Y = p2Y + lengthdir_y(side,-108);
p3X = p2X + lengthdir_x(side,-108);

p4Y = p3Y + lengthdir_y(side,-144);
p4X = p3X + lengthdir_x(side,-144);