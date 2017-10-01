void setup(){
  size(700, 700); 
  noStroke(); 
}

void draw(){
  background(255); 
  
  for (int i = 0; i <=width; i += width/35){
    for (int j = 0; j <= height; j += height/35){
      //figure out distance b/w mouseX and mouseY
      //and our ellipses
      float dist = dist(mouseX, mouseY, i, j);
      
      float c = int(map(dist, 0, 400, 255, 0));
      float s = int(map(dist, 0, width, 15, 50));
      fill(c, 0, 0, 50); 
      ellipse(i, j, s, s);   
    }
  }
}