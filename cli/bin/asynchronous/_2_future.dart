void main(){
  // Future
  // 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리'); // async
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  
  addNumbers(1, 1);
  addNumbers(2, 2);
}

void addNumbers(int number1, int number2){
  print('계산 시작 : $number1 + $number2');

  // 서버 시뮬레이션
  // Future.delayed() : 2개의 파라미터
  // 1번 파라미터 - 지연할 기간 (언제 지연할건지) Duration
  // 2번 파라미터 - 지연 시간이 지난 후 실행할 함수.
  Future.delayed(Duration(seconds: 2), (){
    print('계산 완료 : $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료');
}