//Ethan Wang --- 2/21/17

JitterBug bug; 
JitterBug jit;
JitterBug beetle;
void setup() 
{
  size(480, 120);
  smooth();
  bug = new JitterBug(width*0.8, height/2, 10);
  jit = new JitterBug(width*0.5, height/2, 50);
  beetle = new JitterBug(width*0.2, height/2, 30);
}

void draw() 
{
  bug.setColor(0,0,255);
  bug.move();
  bug.display(false);
  
  jit.setColor(0,255,0);
  jit.move();
  jit.display(false);
  
  beetle.setColor(255,0,0);
  beetle.move();
  beetle.display(true);
}

class JitterBug 
{
float x;
float y;
int diameter;
float speed = 2.5;

JitterBug(float tempX, float tempY, int tempDiameter) 
{
  x = tempX;
  y = tempY;
  diameter = tempDiameter;
}

void setColor(int r, int g, int b)
{
  fill(r,g,b);
}
void setSize(int s)
{
 diameter = s; 
}

void move() 
{
  x += random(-speed, speed);
  y += random(-speed, speed);
}
void display(boolean o) 
{
  if(o)
  {
    triangle(x,y,x-(diameter/2),y+diameter,x+(diameter/2),y+diameter );
  }
  else
  {
    ellipse(x, y, diameter, diameter);
  }
  
}

}