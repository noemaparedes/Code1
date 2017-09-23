int brushSize;

void setup(){
  size(600,600);
  background(255);
  brushSize = 10;
}

void draw(){
  //to have the trail fade. in fill the second # controls the frequency of the fade
  //fill(color, opacity);
  fill(255, 30);
  rect(0, 0, width, height);
  
  if(mousePressed){
    fill(0, 255, 100);
    noStroke();
    ellipse(mouseX, mouseY, brushSize, brushSize);
  }
  
  //when you press a key and press the mouse
  //if(keyPressed){
  //  brushSize +=10;
  //}
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

//only when you press on the mouse, it doesn't leave a trail
//void mousePressed(){
//   fill(0, 255, 100);
//    noStroke();
//    ellipse(mouseX, mouseY, brushSize, brushSize);
//}