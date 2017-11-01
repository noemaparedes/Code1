class Plant{
  //data for plants
  float plantHeight;
  float x;
  float plantColor;
  int leaves;
  
  //constructor
  Plant(float _x){
    x = _x;
  }
  
  //methods
  void display(color _color, int _leaves, float _plantHeight){
    plantHeight = _plantHeight;
    fill(_color);
    rect(x, plantHeight, 10, 500);
    
    leaves = _leaves;
    
    for(int i =0; i< leaves; i++){
      float lHeight = plantHeight + 30*i;
      ellipse(x, lHeight, 50+(i*5), 20);
    }
  }
}