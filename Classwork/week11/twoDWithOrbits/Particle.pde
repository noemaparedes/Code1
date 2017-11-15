//we want to setup a particle that has its own orbital movement 
//need to first define what kind of data we'll need 
class Particle{
  //PVectors allow us to store components of type x and y
  //this is helpful for storing things like position, acceleration, and velocity
  
  //data
  PVector position; 
  PVector translate; 
  int size; 
  
  //constructor. (sets up parameters)
  Particle(int _xPos, int _yPos){
    position = new PVector(0, 0); 
    translate = new PVector (_xPos, _yPos); //how much the ellipses are shifting over
    size = 15; 
  }
  
  //we can add a parameter to control fill color
  void display(color c){
    fill(c); 
    ellipse(position.x, position.y, size, size); 
  }
  
  //orbit direction here controls if orbit clockwise or counter-clockwise 
  void orbit(int orbitDirection){
    //the translate moves the orbit
    position.x = cos(frameCount*.1)*size + translate.x; 
    position.y = orbitDirection*sin(frameCount*.1)*size + translate.y; 
  }
}