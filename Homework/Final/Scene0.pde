PImage cloud1, cloud2;
int x,y;
boolean buttonClicked; 
float dist;

void scene0(){
  size(800, 700);
  cloud1 = loadImage("Cloud-01.png");
  cloud2 = loadImage("Cloud-02.png");
  
 x=337;
 y= height/2;
}

void display() {
    if(buttonClicked){
        image(cloud2, 0, 0);
  cloud2.resize(800, 700);
      }else{
  image(cloud1, 0, 0);
  cloud1.resize(800, 700);
      }
  
  
  rect(x, y, 100, 100); 
  noStroke();
  noFill();
}

void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked; 
  }
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}