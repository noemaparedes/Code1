PVector position;
int r = 100;

void setup(){
  size(500, 500);
  background(0);
  
  position = new PVector(0,0);
}

void draw(){
  position.x = r*cos(frameCount) + width/2;
  position.y = r*sin(frameCount) + height/2;
  
  ellipse(position.x, position.y, 10, 10);
  r += 1;
  if(r > width/2){
   background(0);
   r=0;
  }
}