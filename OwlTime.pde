//Ethan Wang - 1/10/17
void setup() 
{
size(480, 120);
smooth();
}

void draw() 
{
//noLoop(); //uncomment if you don't want a psychedelic owl dance party
background(204);
for (int x = 30; x < width + 70; x += 70) 
 {
  owl(x, 110, (int)random(255), (int)random(255), (int)random(255), random(.25,1));
 }
}

void owl(int x, int y, int r, int g, int b, float sz) 
{
pushMatrix();
translate(x, y);
scale(sz); // Set the size
stroke(r,g,b); // Set the color value
strokeWeight(70);
line(0, -35, 0, -65); // Body
noStroke();
fill(255);
ellipse(-17.5, -65, 35, 35); // Left eye dome
ellipse(17.5, -65, 35, 35); // Right eye dome
arc(0, -65, 70, 70, 0, PI); // Chin
fill(r,g,b);
ellipse(-14, -65, 8, 8); // Left eye
ellipse(14, -65, 8, 8); // Right eye
quad(0, -58, 4, -51, 0, -44, -4, -51); // Beak
popMatrix();
}