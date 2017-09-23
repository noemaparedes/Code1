//ball
//position
//size of ball, speed
//color
float xPos, yPos;
float xVel, yVel;
int radius;
int r, g, b;

void setup(){
  size (600,600);
  background (0);
  
  xVel=random(-5, 5);
  yVel=6;
  
  xPos = width/2;
  yPos = height/2;
  
  radius = 100;
  
}

void draw(){
  fill(r-100, g, b+50);
  rect(0,0, width, height);
  
  r = int(map(xPos, 0, width, 0, 255));
  g = int(map(xPos, 0, width, 0, 255));
  b = int(map(xPos, 0, width, 0, 255));
  fill(255);
  noStroke();
  ellipse (xPos, yPos, radius, radius);
  
  xPos = xPos + xVel;
  yPos = yPos + yVel;
  
  if(xPos > width - radius/2 || xPos < 0 + radius/2){
    xVel = xVel * -1;

  }
  
  if (yPos > height + radius/2 || yPos < 0 + radius/2){
    yVel = yVel *-1;
  }

  }
  
  
void mousePressed(){
    xPos = mouseX;
    yPos = mouseY;
    
    xVel = random(-5, 5);
    yVel = random(-5, 5);
  }
  