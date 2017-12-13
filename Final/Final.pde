//number of screens
  int num = 17; 
  
  PImage scenes[] = new PImage[num];
  //For buttons
  int x,y, a,b, c,d, e,f, g,h, k,l, m,n, o,p, q,r, s,t, u,v, w,z;
  boolean buttonClicked; 
  float dist;
  int sceneNumber = 0;
  
void setup(){
  size(800,700);
  
  for(int i = 0; i<num; i++){
    scenes[i] = loadImage("Screen" + (i) + ".png"); 
    scenes[i].resize(800, 700); 
  }
  
  
//BUTTONS
 //CLOUD
 x = 337;
 y = 400;
 a = 337;
 b = 200;
 c = 337;
 d = 600;
 e = 550;
 f = 630;
 //FRUITS
 g = 337;
 h = 195;
 k = 337;
 l = 325;
 m = 337;
 n = 500;
 //CIRCLES
 o = 185;
 p = 360;
 q = 475;
 r = 360;
 //DOTS
 s = 180;
 t = 675;
 u = 337;
 v = 678;
 w = 573;
 z = 653;

}

void draw() {
  displayScene(sceneNumber);
}

void mousePressed(){
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