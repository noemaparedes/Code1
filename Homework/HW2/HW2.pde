int x, y; 
int size; 

void setup(){
  size(600, 600); 
  background(76, 119, 33);
  smooth();
  frameRate(8);
  
  x = 200; 
  y = 200; 
}

void draw(){
  translate(mouseX, mouseY);
  
  //first petal
  fill(176, 129, 165);
  rotate(radians(frameCount + mouseX));
  ellipse(0, -40, 50, 50);
  
  //second petal
  rotate(radians(72));
  ellipse(0,-40, 50, 50);
  
  //third petal
  rotate(radians(72));
  ellipse(0, -40, 50, 50);
  
  //fourth petal
  rotate(radians(72));
  ellipse(0, -40, 50, 50);
  
  //fifth petal
  rotate(radians(72));
  ellipse(0, -40, 50, 50);
  
  //center circle
  fill(255, 234, 163);
  ellipse(0, 0, 50, 50);
  
  
  pushMatrix(); 
  translate(-200, -100); 
  scale(2.0);
  //first petal
  fill(176, 129, 165);
  ellipse(0, -40, 50, 50);
  //second petal
  rotate(radians(frameCount + mouseX));
  ellipse(0,-40, 50, 50);
  //third petal
  rotate(radians(frameCount + mouseX));
  ellipse(0, -40, 50, 50);
  //fourth petal
  rotate(radians(frameCount + mouseX));
  ellipse(0, -40, 50, 50);
  //fifth petal
  rotate(radians(frameCount + mouseX));
  ellipse(0, -40, 50, 50);
  //center circle
  fill(255, 234, 163);
  ellipse(0, 0, 50, 50);
  popMatrix();   
}