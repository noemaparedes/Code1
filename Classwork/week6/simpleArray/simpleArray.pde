int myInterArray[] = {1,2,3,4,5};
int[] number = new int[5];
String myStringArray[] = {"whatever", "we", "want"};

void setup(){
  //print(myInterArray[2]);
  
  //assign value 4 to the first index of number array;
  //number[1] = 4;
  //println(number[1]);
  for(int i = 0; i<myStringArray.length; i++){
    print(myStringArray[i] + " ");
  }
  
  for(int i=0; i<myInterArray.length; i++){
    print(myInterArray[i]);
  }
  
  for(int i = 0; i<number.length; i++){
    number [i] = i+1;
    println(number[i]);
  }
}