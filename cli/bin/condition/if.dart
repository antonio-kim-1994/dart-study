void main(){
  // if 문
  int number = 2;

  if(number % 2 == 0){
    print('Even Number');
  } else {
    print('Odd Number');
  }

  print('-------------------------');

  int number2 = 5;

  if (number2 % 3 == 0) {
    print('Rest Value is 0');
  } else if (number2 % 3 == 1) {
    print('Rest Value is 1');
  } else {
    print('Rest Value is 2');
  }

  print('--------------------------');
  
  switch(number2 % 3){
    case 0:
      print('Rest Value is 0');
      break;
    
    case 1:
      print('Rest Value is 1');
      break;
    
    default:
      print('Rest Value is 2');
      break;
  }
}