PVector position;
PVector velocity;
PVector acceleration;
int radius;

void setup(){
  size (500, 500);
  background (0);
  
  position = new PVector(width/2, height/2);
  velocity = new PVector(1,5);
  acceleration = new PVector(0, -0.9);
  
  
}

void draw(){
  background(0);
  position.add(velocity);
  velocity.add(acceleration);
  
  if(position.x >= (width- radius/2) || position.x <= radius/2){
    //this reverses the acceleration to keep it in its boundaries
    velocity.x = velocity.x *-1;
  }
 
  if(position.y >= (height- radius/2) || position.y <= radius/2){
    velocity.y = velocity.y *-1; 
  }
  
  ellipse(position.x, position.y, 100, 100);
}