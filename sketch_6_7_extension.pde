//Ethan Wang - 11/18/16
PFont font;
PFont font2;

void setup()
{
 size(480,120);
 smooth();
 font = loadFont("DialogInput.bolditalic-20.vlw");
 font2 = loadFont("NIVision-20.vlw");
 
}

void draw()
{
 background(102);
 textSize(50);
 textFont(font);
 fill(#1EF514);
 text("Ethan Wang",50,40);
 textFont(font2);
 fill(#F5C414);
 text("Ethan Wang",100,80,240,110);
}