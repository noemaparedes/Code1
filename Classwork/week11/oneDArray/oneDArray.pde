int num = 60;

int [] xPos = new int[num];

int size = 10;

void setup(){
  size(600, 600);
  background(0);

//filling my xPos array with data;
  for (int i = 0; i<num; i++){
    xPos[i] = i*size;
  }
}

void draw(){
  for (int i=0; i<num; i++){
   ellipse(xPos[i], 100, size, size); 
  }
  
  //increases the size of the ellipses
    //for (int i=0; i<num; i++){
   //ellipse(xPos[i], 100, size*i, size*i); 
  //}
}