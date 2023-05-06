/// void : return 타입으로 아무것도 반환하지 않는다.
void main(){
  addNumbers(10, 20, 30);
  addNumbers(20, 30, 40);
  addOptionalParameter(10); // y, z가 기본값으로 계산된다.
  addOptionalParameter(10,30,50); // optional parameter의 값이 대체된다.
  addNamedParameter(x: 11, y: 22, z: 33);
  addNamedParameter(y: 15, x: 16, z: 17); // 파라미터의 순서가 중요하지 않다.
  addNamedParameter(x: 20, y: 30); // optional 파라미터 사용
  
  arrowFunction(x: 10, y: 15);

  int result = returnFucntion(x: 20, y: 35);
  int arrowResult = arrowFunction(x: 10, y: 15);
  print('result: $result');
  print('Arrow Function Result: $arrowResult');
  
}

// 세개의 숫자(x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
// parameter / argument - 매개변수
// positional parameter - 순서가 중요한 파라미터
// optional parameter - 있어도 되고 없어도 되는 파라미터
// named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.)
addNumbers(int x, int y, int z){

  int sum = x + y + z;

  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (sum % 2 == 0){
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

// Optional parameter example
addOptionalParameter(int x, [int y = 0, int z = 0]){
  int sum = x + y + z;

  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (sum % 2 == 0){
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

// Named parameter example
addNamedParameter({
  required int x,
  required int y,
  int z = 30, // optional parameter
}){
  int sum = x + y + z;

  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (sum % 2 == 0){
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

int returnFucntion({
  required int x,
  required int y,
  int z = 30, // optional parameter
}){
  int sum = x + y + z;

  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (sum % 2 == 0){
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
  return sum;
}

// Arrow Function
int arrowFunction ({
  required int x,
  required int y,
  int z = 30, // optional parameter
}) => x + y + z; // return
