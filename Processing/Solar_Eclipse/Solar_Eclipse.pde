int w;
int h;
String myString;

void setup(){
  myString = "Solar Eclipse";
  //println(myString);
  
  w = 200;
  h = 200;
  
  size (500, 500);
  
  background (65, 83, 93);
  noStroke();
  textSize(24);
  
}

void draw(){
  println("Solar Eclipse");
  fill(250, 219, 93);
  
  fill(250, 219, 93);
  ellipse(width*.25, height*.25, w, h);
  
  fill(0, 0, 0);
  ellipse(width*.3, height*.25, w, h);
  
  text(myString, width/2, height/2);
  
}
  