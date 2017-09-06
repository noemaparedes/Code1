void setup(){
  size(600, 600);
  background(0);
  
}

void draw(){
  //line(x point1, y point1, x point2, y pint2)
  //background(0);
  
  fill(0, 10);
  rect(0, 0, width, height);
  
  stroke(random(0, 255), random(0, 255), random(0, 255));
  line(width/2, height/2, mouseX, mouseY);
  
  println(mouseX);
  println(mouseY);
}