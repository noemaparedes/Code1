class Particle{
  //set up our data for our particles
  float xPos, yPos;
  float xSpeed, ySpeed;
  float size;
  color c;
  int r, g, b;
  
  
  
  Particle(){
    xPos= mouseX;
    yPos = mouseY;
    
    xSpeed = random(-5,5);
    ySpeed = random(1, 5);
  }
}

void move(){
  xPos = xPos + xSpeed;
  zPos = yPos + ySpeed;
}

void gravity(){
  ySpeed += 0.09;
}

void bounceY(){
  ySpeed = -ySpeed;
}

void bounceX(){
  xSpeed = -xSpeed;
}

void display(){
  c = (int) (abs(xSpeed) + abs(ySpeed))* 10 + 30;
  r = c+40;
  g= c;
  b = 250-c;
  
  size = 50;
  noStroke();
  fill(r, g, b);
  
  ellipse(xPos, yPos, size, size);
}