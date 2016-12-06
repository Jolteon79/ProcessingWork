//Ethan Wang - 12/6/16

int radius = 40;
float x = 110;
float speed = 1;
boolean direction = true;

void setup()
{
 size(240,120);
 smooth();
 ellipseMode(RADIUS);
}

void draw()
{
 background(0);
 if(x>width && direction==true)
 {
   direction = false;
 }
 else if(x<0 && direction == false)
 {
  direction = true;
 }
 
if(direction)
{
 x += speed; 
 arc(x,60,radius,radius,0.52,5.67);
}
else
{
 x += speed * -1;
 arc(x,60,radius,radius,3.67,8.9); 
}

}
