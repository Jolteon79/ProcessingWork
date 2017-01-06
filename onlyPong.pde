PFont pongFont;
float ballPosX = 500;
float ballXAdd = -1;
float ballPosY = 350;
float ballYAdd = 1;
float ballChange = 1;
float ballSpeed = 3;
float p1y = mouseY;
float p2y = 400;
float target;
float easing = 0.05;
int pScore = 0;
int comScore = 0;
int timer = 0;
int s;
boolean run = true;
void setup()
{
  size(1000,700); 
  fill(0);
  rect(0,100,width,height);
  pongFont = createFont("PressStart2P.ttf",15);
  textFont(pongFont);
  textSize(5);
  fill(255);
  background( 0 );
  s = second();
  timer = 0;
}
void draw()
{
  if(mousePressed) 
  {
    run = false;
  }
  else
  {
    run = true;
  }
            
  
  if(run)
  {
    //CODE START *********
  background(0);
  fill(255);
  textSize(50);
  text("PONG",400,60);
  
  if(s != second())
  {
    timer++;
    s = second();
  }
  textSize(20);
  text("TIMER: " + timer,401,80);
  
  textSize(50);
  
  line(0,100,width,150);
  for(int i = 125; i < height-50; i += 50)
  {
    rect(width/2 -2.5,i,5,30);
  }
  rectMode(CENTER);
  rect(width/2,90,width,10);
  
  //left paddle ------------------------
  p1y = mouseY;
  if(p1y > height-50)
  {
    p1y = height - 50;
  }
  else if(p1y < 150)
  {
    p1y = 150;
  }
  rect(50,p1y,15,100); 
 
  //right paddle - AI ------------------------
  if(ballXAdd > 0)
  {
    target = ballPosY;
    float dy = target - p2y;
    p2y += dy *( (2/ballSpeed) - 0.01);
    
    if(p2y > height-50)
    {
      p2y = height-50;
    }
    else if(p2y <= 150)
    {
      p2y = 150;
    }
  }
  else
  {
    target = 400;
    float dy = target - p2y;
    p2y += dy * easing;
  }
  rect(950,p2y,15,100);
  
  //BALL ------------------------
  if(ballPosX >= 930 && ballPosX <= 960) 
  {
    if(ballPosY <= p2y + 50 && ballPosY >= p2y + 30 || ballPosY <= p2y-30 && ballPosY >= p2y - 50)
    { ballXAdd = -1.5; }
    else if(ballPosY < p2y + 30 && ballPosY > p2y + 10 || ballPosY < p2y-10 && ballPosY > p2y - 30)
    { ballXAdd = -1; }
    else if(ballPosY <= p2y + 10 && ballPosY >= p2y - 10)
    { ballXAdd = -0.5; }
  }
  else if(ballPosX <= 70 && ballPosX >= 40)
  {
    if(ballPosY <= p1y + 50 && ballPosY >= p1y + 30 || ballPosY <= p1y-30 && ballPosY >= p1y - 50)
    { ballXAdd = 1.5; }
    else if(ballPosY < p1y + 30 && ballPosY > p1y + 10 || ballPosY < p1y-10 && ballPosY > p1y - 30)
    { ballXAdd = 1; }
    else if(ballPosY <= p1y + 10 && ballPosY >= p1y - 10)
    { ballXAdd = 0.5; }
  }
  
  ballSpeed += 0.01;
  if(ballSpeed >= 5)
  {
    ballSpeed += 0.01;
  }
  if(ballSpeed > 12)
  {
    ballSpeed = 12;
  }
  ballPosX = ballPosX + (ballXAdd * ballSpeed);
  
  if(ballPosY > height-10)
  {
    ballYAdd = -1;
    
  }
  else if(ballPosY < 110)
  {
    ballYAdd = 1;
  }
  ballPosY = ballPosY + (ballYAdd * ballSpeed);
  rect(ballPosX,ballPosY,20,20);
  
  if(ballPosX < 0 || ballPosX > width)
  {
    //SCORE ------------------------
    if(ballPosX < 0)
    {
      comScore++;
    }
    else if(ballPosX > width)
    {
      pScore++;
    }
    ballPosX = width/2;
    ballPosY = 400;
    ballSpeed = 3;
    easing = 0.1;
  }
  text(pScore,100,70);
  text(comScore,850,70);
  
  if(easing > 0.01)
  {
    easing -= 0.01;
  }
  else
  {
    easing = 0.01;
  }
  
  textSize(12);
  text("Click and hold the mouse to pause" , 300,690);
  
  //EXIT  ------------------------
  if(comScore >= 11 || pScore >= 11)
  {
    fill(255);
    textSize(50);
    if(comScore >= 11)
    {
      text("COM Wins",340,200);
    }
    else if(pScore >= 11)
    {
      text("PLAYER Wins",320,200);
    }
    
    noLoop();
  }
  
  }
//CODE END ********
}