PImage myImage;

void setup(){
  size(800, 100);
  img = loadImage("blurs.jpg");
  background(255);
  smooth();
}

void draw(){
  loadPixels();
  int x = int(random(img.width));
  int y = int(random(img.height));
  //picks x & y position based on the image width
  int loc = x + y*img.width;
  
  float r= red(img.pixels[loc]);
  float g= green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  
  //drawing circles
  fill(r,g,b,255);
  ellipse(x, y, 10, 10);
}