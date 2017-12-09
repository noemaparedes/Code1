void scenePath(){
    ///////////////// change width and height of buttons to variables
  if(sceneNumber == 0){
    //for your correct answer 
    if(clickingButton(x, y, 400, 100)){
      println("this happened"); 
      //the correct screen 
      sceneNumber = 1; 
      //put in other parameters based on where the other buttons are located 
    }else{
      //the incorrect screen 
      sceneNumber = 3; 
    }
      
  }else if (sceneNumber == 1 || sceneNumber == 3){
    
  }
}