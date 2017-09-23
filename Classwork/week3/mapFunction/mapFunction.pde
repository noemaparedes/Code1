float x1, y1;
float x2, y2;
float g, b;

void setup(){
  size(600, 600);
  noStroke();
}

void draw(){
  //this makes the background change color b/w blue and green as you move the mouse
  g = map(mouseX, 0, width, 0, 255);
  b = map(mouseY, 0, height, 0, 255);
  background(0, g, b);
  
  //mapping to 0, 300 width and 100, 400 height
  fill(255);
  x1 = map(mouseX, 0, width, 0, 300);
  y1 = map(mouseY, 0, height, 100, 400);
  ellipse(x1, y1, 100, 100);
  
  //follow mouse until mouse is outside of an area
  //ellipse follow mouse
  //set up some boundaries for our ellipse
  ellipse(x2, y2, 100, 100);
  if(mouseX<width/2){
  x2 = mouseX;
  y2 = mouseY;
  }else{
    x2 = width/2;
    //if you uncomment the y2, it will not follow the mouse when it goes up and down
    y2 = mouseY;
    
  }

}