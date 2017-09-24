int x; 
int y; 
int x2, y2;
int size; 
float dist; 
boolean buttonClicked;

//set up a second button 
//do something else when that button is clicked
void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  size = 100; 
}

void draw(){
    
  if(buttonClicked){
    fill(0,40);
    rect(0,0, width, height);
    fill(255);
    noStroke();
    ellipse(random(width), random(height), 2, 2);
  }else{
    background(25, 130, 158); 
    fill(255, 201, 0); 
  }
  
  ellipse(x, y, size, size);

}


void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked; 
  }
  //calculating distance between second button 
  //hint set up a second boolean 
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}