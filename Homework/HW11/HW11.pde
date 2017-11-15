int num = 61;
boolean [] [] clicked = new boolean[num] [num];
color [] [] c = new color[num][num];

int size = 20;

ArrayList<Particle> particles;
PVector origin;
PVector gravity;

void setup(){
  size (600,600);
  background(0);
  noStroke();
  smooth();
  
  particles = new ArrayList<Particle>();
  gravity = new PVector (0, .09);
  //translate = new PVector (1, 1);

  
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
        c[i][j]= color(random(100, 255), random(100,255), random(100,255));
        clicked[i][j] = true;
        }
       }
      }
      fill(c[i][j]);
      ellipse(i*size, j*size, size, size);
    }
   }
   
     particles.add(new Particle(width/2, height/2)); 
  
  for (int i = 0; i< particles.size(); i++){
    Particle p = particles.get(i); 
    p.update(); 
    p.display(); 
    p.checkEdges(); 
    p.applyForce(gravity); 
    //p.orbit(-1);
    if(p.acceleration.y > 1.8){
      particles.remove(i); 
    }
  }
  
    //myParticle.orbit(-1); 
  
//for(int i = 0; i<num; i++){
    //for(int j = 0; j<num; j++){
    //  particles[i][j].display(color(255));
    //  particles[i][j].orbit(1); 
    //}
   

}