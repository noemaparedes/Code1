int x; 
int y; 
int x2, y2; 
int size; 
float dist; 
boolean buttonClicked; 
boolean buttonClicked2; 

//set up a second button 
//do something else when that button is clicked
void setup(){
  size(700, 700); 
  x = width/2; 
  y = height/2; 
  x2= 100; 
  y2= 100; 
  size = 100; 
  noStroke();
}

void draw(){
    
  if(buttonClicked){
    background(255);
  for (int i = 0; i <= width; i += width/35) {
    for (int j = 0; j <= height; j += height/35) {
      
      //get the distance from the index to the mouse
      float d = dist(mouseX, mouseY, i, j);
      
      //fill a color based on the distance
      fill(map(d, 0, 500, 255, 0));
      
      //create a variable for size and map it to a value based on distance
      float s = map(d, 0, 500, 10, 50);
      
      //draw an ellipse at the index positions with size s
      ellipse(i, j, s, s);
    }
  }
  }else{
    background(255); 
    fill(0, 255, 0); 
  }
  
  
  ellipse(x, y, size, size);  
  ellipse(x2, y2, size, size);
  
  if(buttonClicked2){
  //background(255); 
  fill(0,0,255);
  rectMode(CENTER);
  rect(x, y, size, size);
  rect(x2, y2, size, size);
  }else{ 
      //call nested loop function 
  }
  
  println(calcDistance(x, y)); 
}

void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked; 
  }
  if(calcDistance(x2, y2) <=size/2){
    buttonClicked2 =!buttonClicked2; 
  }
  //calculating distance between second button 
  //hint set up a second boolean 
}

//function that draws circles

//function that draws squares

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}