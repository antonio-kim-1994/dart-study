void main() async {
  // async / await
  final result1 = await addNumbers(1, 1);
  final result2 = await addNumbers(2, 2);

  print('result1 : $result1');
  print('result2 : $result2');
  print('result1 + result2 : ${result1 + result2}');
}

Future<int> addNumbers(int number1, int number2) async {
  print('계산 시작 : $number1 + $number2');

  // await을 통해 async 작업을 기다릴 수 있다.
  await Future.delayed(Duration(seconds: 2), (){
    print('계산 완료 : $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료');

  return number1 + number2;
}