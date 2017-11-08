class Gravity{

float size; 
float hue; 

char c; 

PVector pos; 
PVector velocity; 
PVector gravity; 

Boolean isMoving;

Gravity(){
  //size(600, 600); 
  

  size = 80; 
  pos = new PVector(random(width), random(height-100)); 
  velocity = new PVector(0, 0); 
  gravity = new PVector(0, 0.1); 
  hue = random(255); 
 
  gravity = new PVector(0, 0.1); 
  hue = random(255);
}

void display(){

  float distance = dist(mouseX, mouseY, pos.x, pos.y); 
  
  noStroke();
  if(distance < size/2){
    fill(hue, 150, 255); 
    isMoving = true; 
  }else {
    fill(hue, 255, 255); 
  }
  
  ellipse( pos.x, pos.y, size, size); 
  
  if(isMoving){
     pos.add(velocity); 
     velocity.add(gravity); 
     
     //bouncing
     if (pos.y > height- size/2){
       velocity.y = velocity.y * -0.9; 
     if(abs(velocity.y) < 3){
       velocity.y = 0; 
     }  
   }
  }
}

}