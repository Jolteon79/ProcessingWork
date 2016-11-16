//Picture for inspiration
//https://s-media-cache-ak0.pinimg.com/564x/95/b5/b4/95b5b46cbc78f88f01743971e058fad3.jpg
//----------------------
//Ethan Wang - 11/16/2016

int x = 0;
int y = 0;

void setup()
{
size(400,300);
}

void draw()
{
background(204);
stroke(0);
textAlign(LEFT,TOP);
textSize(9);
fill(0);
text("Jolteon program: arrow keys to move, eyes follow mouse, keyboard to change color",15,5);
text("If this program is not working, re-run it or just wait and see until it responds",30,290);
  
//------------------------
//arrow key movement
if (keyPressed && (key == CODED)) 
{ 
  if (keyCode == LEFT) 
  { 
    x--;
  } 
  else if (keyCode == RIGHT) 
  { 
    x++;
  }
  else if (keyCode == UP) 
  { 
    y--;
  }
  else if (keyCode == DOWN) 
  { 
    y++;
  }
}

//------------------------
//mane - uses custom shape
fill(255);
beginShape();
vertex(130+x,115+y);
vertex(140+x,130+y);
vertex(110+x,120+y);
vertex(130+x,150+y);
vertex(100+x,150+y);
vertex(140+x,170+y);
vertex(120+x,190+y);
vertex(150+x,190+y);
vertex(140+x,220+y);
vertex(170+x,200+y);
vertex(180+x,230+y);
vertex(190+x,210+y);
vertex(200+x,240+y);//bottommost point
vertex(210+x,210+y);
vertex(220+x,230+y);
vertex(230+x,200+y);
vertex(260+x,220+y);
vertex(250+x,190+y);
vertex(280+x,190+y);
vertex(260+x,170+y);
vertex(300+x,150+y);
vertex(270+x,150+y);
vertex(290+x,120+y);
vertex(260+x,130+y);
vertex(270+x,115+y);
endShape(CLOSE);

//------------------------
//yellow body - uses custom shape and arc

//modify color
if(keyPressed  && (key != CODED))
{
  fill(#CEFF31); //turns green for shiny pokemon thing
}
else
{
  fill(#FFFF00);
}    

beginShape();
vertex(160+x,160+y);
vertex(155+x,145+y);
vertex(160+x,150+y);
vertex(155+x,135+y);
vertex(160+x,140+y);
vertex(155+x,125+y);
vertex(160+x,130+y);
vertex(160+x,120+y);
vertex(120+x,110+y);
vertex(130+x,110+y);
vertex(95+x,75+y);
vertex(110+x,80+y);
vertex(80+x,40+y);
vertex(150+x,70+y);
vertex(170+x,105+y);
vertex(180+x,95+y);
vertex(180+x,100+y);
vertex(190+x,90+y);
vertex(190+x,100+y);
vertex(200+x,80+y);
vertex(210+x,100+y);
vertex(210+x,90+y);
vertex(220+x,100+y);
vertex(220+x,95+y);
vertex(230+x,105+y);
vertex(250+x,70+y);
vertex(320+x,40+y);
vertex(290+x,80+y);
vertex(310+x,75+y);
vertex(270+x,110+y);
vertex(280+x,110+y);
vertex(240+x,120+y);
vertex(240+x,130+y);
vertex(245+x,125+y);
vertex(240+x,140+y);
vertex(245+x,135+y);
vertex(240+x,150+y);
vertex(245+x,145+y);
vertex(240+x,160+y);
endShape(CLOSE);

arc(200+x,160+y,80,40,0,PI);

//mouth...
arc(194+x,162+y,12,7,0,PI);
arc(206+x,162+y,12,7,0,PI);

//------------------------
//black highlights - uses custom shape, triangle and arc
    
//modify color
if(keyPressed  && (key != CODED))
{
  fill(#56069D);
  stroke(#56069D);//turns purple for shiny pokemon thing
}
else
{
  fill(0);
  stroke(0);
}    

//left ear
triangle(95+x,52+y,145+x,75+y,135+x,105+y);
beginShape();
vertex(145+x,75+y);
vertex(165+x,110+y);
vertex(155+x,105+y);
vertex(160+x,115+y);
vertex(135+x,105+y);
endShape(CLOSE);

//right ear
triangle(305+x,52+y,255+x,75+y,265+x,105+y);
beginShape();
vertex(255+x,75+y);
vertex(235+x,110+y);
vertex(245+x,105+y);
vertex(240+x,115+y);
vertex(265+x,105+y);
endShape(CLOSE);

//nose
line(196+x,149+y,204+x,149+y);
triangle(195+x,150+y,205+x,150+y,200+x,155+y);

//left eye
arc(175+x,140+y,30,20,PI + HALF_PI,TWO_PI);
line(175+x,140+y,190+x,140+y);
triangle(175+x,130+y,170+x,130+y,175+x,140+y);
triangle(175+x,141+y,190+x,141+y,190+x,142+y);

//right eye
arc(225+x,140+y,30,20,PI,PI + HALF_PI);
line(225+x,140+y,210+x,140+y);
triangle(225+x,130+y,230+x,130+y,225+x,140+y);
triangle(225+x,141+y,210+x,141+y,210+x,142+y);

//------------------------
//white eye-dots
fill(255);

float eyeX = map(mouseX,0,width,175,185);
float eyeY = map(mouseY,0,height,134,140);
ellipse(eyeX+x,eyeY+y,3,3);
ellipse(eyeX+40+x,eyeY+y,3,3);

}