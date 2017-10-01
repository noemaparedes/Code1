float x,y,l,h,z,w;

 
void setup(){
 
  size(510,510);

  noFill();
  smooth();

  stroke(255);
  strokeWeight(2);

  l = 20 ;
  h = 20 ;
  z = 40 ;
  w = 40 ;
  
}
 
 
void draw(){
  if (mousePressed == true) {
    
    background (255); // allows the rectanlges to change into circles
    
    // small rectangles
    for (int i=10; i<height; i+=60){
    for (int j=10; j<width; j+=60){
      fill(random(0, 200),random(0, 200), random(0, 200));
      rect(i,j,l,h);
    }
   }
    
    // bigger rectangles 
    for (int x=30; x<600; x+=60){
    for (int y=30; y<600; y+=60){
      fill(random(0, 200),random(0, 200), random(0, 200));
      rect(x,y,z,w);
    }
   }
  } 
  else {
   background (255);
    
    // yellow circles
    for (int i=23; i<height; i+=60){
    for (int j=23; j<width; j+=60){
      fill(255, 242, 0);
      ellipse(i,j,l,h); 
    }
   }
      
    // magenta circles
    for (int x=50; x<height; x+=60){
    for (int y=50; y<width; y+=60){
     fill(236, 0, 140);
     ellipse(x,y,z,w);
    }
   }
  } 
 
}