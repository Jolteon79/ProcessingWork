//Picture for inspiration
//https://s-media-cache-ak0.pinimg.com/564x/95/b5/b4/95b5b46cbc78f88f01743971e058fad3.jpg
size(400,300);

//mane - uses custom shape
fill(255);
beginShape();
vertex(130,115);
vertex(140,130);
vertex(110,120);
vertex(130,150);
vertex(100,150);
vertex(140,170);
vertex(120,190);
vertex(150,190);
vertex(140,220);
vertex(170,200);
vertex(180,230);
vertex(190,210);
vertex(200,240);//bottommost point
vertex(210,210);
vertex(220,230);
vertex(230,200);
vertex(260,220);
vertex(250,190);
vertex(280,190);
vertex(260,170);
vertex(300,150);
vertex(270,150);
vertex(290,120);
vertex(260,130);
vertex(270,115);
endShape(CLOSE);

//------------------------
//yellow body - uses custom shape and arc
fill(#FFFF00);
beginShape();
vertex(160,160);
vertex(155,145);
vertex(160,150);
vertex(155,135);
vertex(160,140);
vertex(155,125);
vertex(160,130);
vertex(160,120);
vertex(120,110);
vertex(130,110);
vertex(95,75);
vertex(110,80);
vertex(80,40);
vertex(150,70);
vertex(170,105);
vertex(180,95);
vertex(180,100);
vertex(190,90);
vertex(190,100);
vertex(200,80);
vertex(210,100);
vertex(210,90);
vertex(220,100);
vertex(220,95);
vertex(230,105);
vertex(250,70);
vertex(320,40);
vertex(290,80);
vertex(310,75);
vertex(270,110);
vertex(280,110);
vertex(240,120);
vertex(240,130);
vertex(245,125);
vertex(240,140);
vertex(245,135);
vertex(240,150);
vertex(245,145);
vertex(240,160);
endShape(CLOSE);

arc(200,160,80,40,0,PI);

//mouth...
arc(194,162,12,7,0,PI);
arc(206,162,12,7,0,PI);

//------------------------
//black highlights - uses custom shape, triangle and arc
fill(0);
//left ear
triangle(95,52,145,75,135,105);
beginShape();
vertex(145,75);
vertex(165,110);
vertex(155,105);
vertex(160,115);
vertex(135,105);
endShape(CLOSE);

//right ear
triangle(305,52,255,75,265,105);
beginShape();
vertex(255,75);
vertex(235,110);
vertex(245,105);
vertex(240,115);
vertex(265,105);
endShape(CLOSE);

//nose
line(196,149,204,149);
triangle(195,150,205,150,200,155);

//left eye
arc(175,140,30,20,PI + HALF_PI,TWO_PI);
line(175,140,190,140);
triangle(175,130,170,130,175,140);
triangle(175,141,190,141,190,142);

//right eye
arc(225,140,30,20,PI,PI + HALF_PI);
line(225,140,210,140);
triangle(225,130,230,130,225,140);
triangle(225,141,210,141,210,142);

//------------------------
//white eye-dots
fill(255);
ellipse(183,135,3,3);
ellipse(225,135,3,3);