//number of screens
  int num = 2; 
  
  PImage scenes[] = new PImage[num]; 
  int x,y;
  boolean buttonClicked; 
  float dist;
  int sceneNumber = 0; 
void setup(){
  size(800,700);
  
  //cloud1 = loadImage("Scene0.png");
  //cloud2 = loadImage("Scene1.png");
  for(int i = 0; i<num; i++){
    scenes[i] = loadImage("Screen" + (i) + ".png"); 
    scenes[i].resize(800, 700); 
  }
  
 x=337;
 y= 400;
}

void draw() {
    //if(buttonClicked){
    //    image(scenes[1], 0, 0);
    //    cloud2.resize(800, 700);
    //  }else{
    //    image(scenes[0], 0, 0);
    //    cloud1.resize(800, 700);
    //  }
  displayScene(sceneNumber); 
  
  //fill(255, 0, 0); 
  //rect(x, y, 400, 100); 
  //noStroke();
  //noFill();
}

void mousePressed(){
  //if(calcDistance(x,y) <= 100){
  //  buttonClicked = !buttonClicked; 
  //}
  
  scenePath(); 
}

void displayScene(int s){
  image(scenes[s], 0,0); 
}

boolean clickingButton(int xPos,int yPos, int w, int h){
  if(mouseX>= xPos-w/2 && mouseX <= xPos+w/2 && mouseY>= yPos-h/2 && mouseY<=yPos+h/2){
    return true; 
  }else{
    return false; 
  }
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}