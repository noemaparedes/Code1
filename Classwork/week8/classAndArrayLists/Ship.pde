class Ship{
  color col;
  int velX, velY;
  int posX, posY;
  
  //constructor
  Ship(){
    col = color(random(255), random(255), random(255));
    velX = int(random(1, 10));
    posX = int(random(0, width));
    posY = int(random(0, height)); 
  }
  
  void drawShip(){
    fill(col);
    
    ellipse(posX, posY, 50, 20);
    ellipse(posX, posY-10, 20, 20);
  }
  
  void floatShip(){
    posX += velX;
   if (posX > width && velX > 0){
     posX= -20;
   }
  }
}