float x1, y1;
float x2, y2;
float r, b;
int brushSize;

void setup(){
  size(600, 600);
  noStroke();
  brushSize = 24;
}

void draw(){
  r = map(mouseX, 0, width, 0, 255);
  b = map(mouseY, 0, height, 0, 255);
  background(r, 0, b);
  
  fill(255, 60);
  x1 = map(mouseX, 0, width, 0, 300);
  y1 = map(mouseY, 0, height, 100, 400);

    if(mousePressed){
    fill(255);
    noStroke();
    rect(mouseX, mouseY, brushSize, brushSize);
    }

  if(mouseX<width/2){
  x2 = mouseX;
  y2 = mouseY;
  }else{
    x2 = mouseX;
    y2 = mouseY;  
  }
}
    
void keyPressed(){
  if(key == CODED){
    if(keyCode == UP && brushSize <= 500){
    brushSize += 10;
    }else if(keyCode == DOWN && brushSize > 10){
      brushSize -= 10;
    }
  }
}