//width = May 30 --> 5 * 30 = 150
//height = 2000 --> 2000 / 3 - (9 - 10) = 666.667 - 9 - 10 = 647.667 --round-> 648
size(150, 648);
smooth();
line(0, 0, width, height); 
line(width, 0, 0, height); 
ellipse(width/2, height/2, 60, 60);

strokeWeight(3);
point(75,324);