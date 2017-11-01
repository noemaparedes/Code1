int x; 
int y; 
int x2, y2;
int x3, y3;
int x4, y4;
int x5, y5;
int size; 
float dist;
float l, h;

boolean buttonClicked; 
boolean buttonClicked2; 
boolean buttonClicked3;
boolean buttonClicked4;

int numE = 100;
int eSize[] = new int[numE];
int[] eSpeedX = new int[numE];
int[] eSpeedY = new int[numE];
int[] ePosX = new int[numE];
int[] ePosY = new int[numE];
color[] baseColor = new int[numE];


void setup(){
  size(800, 700); 
  x = width/2; 
  y = height/2;
  x2 = 500;
  y2 = 600;
  x3 = 221;
  y3 = 378;
  x4 = 410;
  y4 = 300;
  x5 = 300;
  y5 = 450;
  l = 35;
  h = 35; 
  size = 100; 
  smooth();

  
    for(int i = 0; i<numE; i++){
    ePosX[i] = int(random(0, width));
    ePosY[i] = int(random(0, width));
    
    eSpeedX[i] = int(random(-5,5));
    eSpeedY[i] = int(random(-5,5));
    
    eSize[i] = int(random(10, 100));
    
    baseColor[i] = color(int(random(100, 255)), 0, 0);
   
    if(eSpeedX[i] ==0){
      eSpeedX[i] = 1;
    }
    if(eSpeedY[i] ==0){
      eSpeedY[i] = 1;
    }
  }
}

void draw(){
  
   //textFont(font);
    
  if(buttonClicked){
    background(0); 
    textSize(32);
    String s = "Click the                  .";
    fill(0, 150, 0);
    text(s, 25, 50, 70);
    String z = "red square";
    fill(0, 0, 255);
    text(z, 171, 50, 70);
 
 //set speed of ellipses
  for(int i= 0; i<numE; i++){
    ePosX[i] = ePosX[i] + eSpeedX[i];
    ePosY[i] = ePosY[i] + eSpeedY[i];
  }
  
  //setup boundaries for all ellipses
   for(int i= 0; i<numE; i++){
     if(ePosX[i] <= 0 || ePosX[i] >= width){
       eSpeedX[i] = eSpeedX[i]*-1;
     }
     if(ePosY[i] <= 0 || ePosY[i] >= height){
       eSpeedY[i] = eSpeedY[i]*-1;
     }
     
     fill(0, 0, 255);
     rect(x5, y5, 35, 35);
     
     fill(150, 0, 0);
     rect(x2, y2, 35, 35);
     
     
   }
  
  for(int i= 0; i<numE; i++){
    fill(baseColor[i]);
    ellipse(ePosX[i], ePosY[i], eSize[i], eSize[i]); 
  }
  
  }else{
    background(255); 
    String s = "Click the button to get started.";
    fill(50);
    text(s, 320, 250, 70);
  }
     
       ellipse(x, y, size, size);  
     
  if(buttonClicked2){
    background(255);
    String s = "Great! Now click the circle.";
    fill(50);
    text(s, 25, 40, 70);
  
    for (int i=23; i<850; i+=60){
    for (int j=60; j<width; j+=60){
      fill(255, 242, 0);
      rect(i,j,l,h); 
    }
   }
   
   ellipse(x3, y3, 12, 12);
   stroke(255);

  }else{
  }
  
  if (buttonClicked3){
    background(255);
    textSize(24);
    String s = "Yay you found it!";
    fill(50);
    text(s, 300, 215, 50);
    String a = "Now can you find       the mistake?";
    fill(50);
    text(a, 200, 300, 50);
    String b = "0 1 2 3 4 5 6 7 8 9";
    fill(50);
    text(b, 290, 400, 50);

    String t = "the";
    fill (50);
    text(t, x4, y4, 70);
  }else{
    
  }
   if (buttonClicked4){
    background(255);
    textSize(32);
    String a = "Congrats! YOU WON!";
    fill(50);
    text(a, 225,375, 50);
  }else{
    
  }
}

void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked; 
  }
  if(calcDistance(x2, y2) <=size/2){
    buttonClicked2 =!buttonClicked2; 
  } 
   if(calcDistance(x3, y3) <=size/2){
    buttonClicked3 =!buttonClicked3; 
  } 
   if(calcDistance(x4, y4) <=size/2){
    buttonClicked4 =!buttonClicked4; 
  }
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}