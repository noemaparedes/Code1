void scenePath(){
  
    PVector position; 
  PVector velocity; 
  PVector acceleration; 
  //CLOUD
  if(sceneNumber == 0){
    if(clickingButton(x, y, 400, 100)){
      sceneNumber = 1; 
    }else if(clickingButton(a, b, 400, 100)){
          sceneNumber = 1;
        }else if(clickingButton(c, d, 400, 100)){
          sceneNumber = 2;
        }else{
          sceneNumber = 0;
        }
        
  }else if (sceneNumber == 1 || sceneNumber == 2){
    sceneNumber = 3;
  }else{
      if(clickingButton(e, f, 250, 80)){
//////////FRUITS INTRO
  sceneNumber = 4;
  }

  //FRUITS
  if(sceneNumber == 4){
    if(clickingButton(k, l, 400, 100)){
      sceneNumber = 5;
    }else if(clickingButton(m, n, 400, 100)){
      sceneNumber = 5;
    }
    if(clickingButton(g,h, 400, 100)){
      sceneNumber = 6;
       if(clickingButton(m, n, 400, 100)){
        sceneNumber = 8;
    }
    }
  }else if (sceneNumber == 5 || sceneNumber == 6){
    sceneNumber = 8;
    }else{
      if(clickingButton(585, 540, 125, 45)){
//////////CIRCLES INTRO
  sceneNumber = 10;
  }
  
  //CIRCLES
  if(sceneNumber == 10){
     if(clickingButton(o, p, 400, 100)){
       sceneNumber = 11;
    }else if(clickingButton(q, r, 400, 100)){
      sceneNumber = 11;
  }
  }else if(sceneNumber == 11){
    sceneNumber = 12;
  }else{
    if(clickingButton(337, 75, 400, 100)){
//////////DOTS INTRO
  sceneNumber = 13;
  }
  
  //DOTS
  if(sceneNumber == 13){
    if(clickingButton(s, t, 280, 100)){
       sceneNumber = 14;
    }else if(clickingButton(u, v, 280, 100)){
      sceneNumber = 15;
  }else if(clickingButton(w, z, 280, 100)){
      sceneNumber = 14;
  }
  }else if(sceneNumber == 14){
    sceneNumber = 15;
  }else{
    if(clickingButton(550, 625, 280, 100)){
  sceneNumber = 16; 
     }
    }
   }
  }
 }
}