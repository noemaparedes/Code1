class Cloud {
  
  PImage photo;

Cloud() {
  size(800, 700);
  photo = loadImage("Cloud-01.png");
}

void display() {
  image(photo, 0, 0);
}
  //PVector position; 
  //PVector velocity; 
  //PVector acceleration; 
  
  
  //Cloud(){
  //  acceleration = new PVector(0, 0.05); 
  //  velocity = new PVector(random(-1, 1), random(-2, 0)); 
  //  position = new PVector(CENTER, CENTER); 
  //}
  //  void update(){
  //  velocity.add(acceleration); 
  //  position.add(velocity); 
  //}
  
  //void display(){
  //  fill(255); 
  //  ellipse(position.x, position.y, 8, 8); 

  //}
  
  
  ////add a bounce if touching the edges 
  //void checkEdges() {
  //  if (position.x > width) {
  //    position.x = width;
  //    velocity.x *= -1;
  //  } else if (position.x < 0) {
  //    velocity.x *= -1;
  //    position.x = 0;
  //  }
 
  //  if (position.y > height) {
  //    velocity.y *= -1;
  //    position.y = height;
  //  }
  //}
  
  //  void applyForce(PVector force) {
  //    PVector f = PVector.div(force, 9);
  //    acceleration.add(f);
  //}
}