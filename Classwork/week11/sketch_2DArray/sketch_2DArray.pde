//need to define size of array
//we need two dimensions for our array
//color arrays
//boolean array to keep track of when ellipse is clicked, 2 [] because it's 2D
//number needs to b defined before everything, it's like the number of slots in an ice tray

int num = 61;
boolean [] [] clicked = new boolean[num] [num];
color [] [] c = new color[num][num];

int size = 10;

void setup(){
  size (600,600);
  background(0);
  noStroke();
  smooth();
  
  for (int i=0; i<num; i++){
    for (int j=0; j<num; j++){
      clicked[i][j] = false;
      c[i][j] = color(255); //this is setting the default color to white;
    }
  }
}

void draw(){
     for (int i=0; i<num; i++){
    for (int j=0; j<num; j++){
      
      if (clicked[i][j] == false){
      if(mousePressed){
        if(dist(mouseX, mouseY, i*size, j*size)<= size/2){
        c[i][j]= color(random(0,255), random(0,255), random(0,255));
        clicked[i][j] = true;
        }
       }
      }
      fill(c[i][j]);
      ellipse(i*size, j*size, size, size);
    }
   }
}