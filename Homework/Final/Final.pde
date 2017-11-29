ArrayList<Cloud> clouds;
PImage photo;

void setup(){
  size(800, 700);
  clouds = new ArrayList<Cloud>();
  
  
}

void draw(){
  clouds.add(new Cloud());
}