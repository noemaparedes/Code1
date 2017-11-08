class Attractor{
  float mass;
  float G; 
  PVector position; 
  PVector dragOffset; 
  

  boolean rollover = false; 
  boolean dragging = false; 
  Attractor(){
    position = new PVector(width/2, height/2);
    
    mass = 30; 
    G = .98; 
    dragOffset = new PVector(0.0, 0.0); 
  }
  

  PVector attract(Mover m){
     PVector force = PVector.sub(position, m.position); 
     
     float d = force.mag(); 
     
     d = constrain(d, 5.0, 25.0); 
     force.normalize();
     float strength = (G* mass * m.mass) / (d*d);
     force.mult(strength); 
     return force;
  }

  void display() {
    ellipseMode(CENTER);
    fill(0, 100, 100); 
    if (dragging){
      fill (255, 255, 0);
    }
    else if (rollover){
      fill(100);
      fill(255, 150, 0); 
    }
    else{
      fill(0, 255, 255); 
    }
    ellipse(position.x,position.y,mass*2,mass*2);
  }
  
  void clicked(int mX, int mY){
    float d = dist(mX, mY, position.x, position.y); 
    if(d < mass){ 
      dragging = true; 
      dragOffset.x = position.x - mX; 
      dragOffset.y = position.y - mY; 
    } 
  }
  
void hover(int mx, int my) {
    float d = dist(mx,my,position.x,position.y);
    if (d < mass) {
      rollover = true;
    } 
    else {
      rollover = false;
    }
  }

  void stopDragging() {
    dragging = false;
  }

  void drag() {
    if (dragging) {
      position.x = mouseX + dragOffset.x;
      position.y = mouseY + dragOffset.y;
    }
  }

}