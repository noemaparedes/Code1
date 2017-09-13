color c;
int xPos, yPos;
int xVel;

void setup(){
 size(600, 600);
 smooth();
 background(255);
}

void draw(){
  if(mousePressed){
  c = color(random(255), random(255), random(255));
  int s = int(random(20, 200));
  drawShip(c, mouseX, mouseY, s);
  
  }
}

//void mousePressed(){
//  c = color(random(255), random(255), random(255));
//  int s = int(random(20, 200));
//  drawShip(c, mouseX, mouseY, s); 
//}

void drawShip(color col, int x, int y, int size){
  noStroke();
  fill(col);
  ellipse(x,y, size*2, size);
  ellipse(x, y-(size/2), size, size);
}