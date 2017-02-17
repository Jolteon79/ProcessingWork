//Ethan Wang --- 2/17/17

JitterBug bug; 
JitterBug jit;
void setup() 
{
  size(480, 120);
  smooth();
  bug = new JitterBug(width*0.66, height/2, 10);
  jit = new JitterBug(width*0.33, height/2, 50);
}

void draw() 
{
  bug.move();
  bug.display();
  jit.move();
  jit.display();
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
void move() 
{
  x += random(-speed, speed);
  y += random(-speed, speed);
}
void display() 
{
  ellipse(x, y, diameter, diameter);
}

}