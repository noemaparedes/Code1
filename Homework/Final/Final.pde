int sceneNumber; 


void setup(){
  size(800, 700);  
}

void draw(){
  switch(sceneNumber){
    case 0 :
      scene0(); 
      break; 
    case 1: 
      scene1(); 
      break; 
    case 2: 
      scene2(); 
      break; 
    case 3: 
      scene3(); 
      break; 
    case 4:
      sceneNumber = 0; 
      break; 
  }
  
  fill(255); 
  rect(width/2, height/2, 100, 100); 
  rectMode(CENTER); 
  
}

void mousePressed(){
  if(mouseX> (width/2 -50) && mouseX<(width/2+50)
     && mouseY > (height/2 - 50) && mouseY <(height/2 +50)){
      sceneNumber ++;   
      println("this worked"); 
  }
}