void main() {
  // while loop

  int total = 0;
  // while loop 실행 시 조건을 먼저 검사한 후  +1 을 실행한다.
  while(total < 10){
    total += 1;
  }

  print(total);

  // 먼저 +1 한 후 조건을 검사한다.
  // do .. while 을 거의 사용하지 않는다.
  do {
    total += 1;
  } while(total < 10);

  print(total);
}