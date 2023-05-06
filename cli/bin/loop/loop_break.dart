void main() {
  // while loop
  int total = 0;

  while(total < 10){
    total += 1;

    if(total == 5){
      break;
    }
  }

  print(total);

  total = 0;
  for(int i = 0; i < 10; i++){
    total += 1;
    if(total == 5){
      break;
    }
  }

  print(total);
}