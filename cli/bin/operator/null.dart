void main() {
  // null
  double? number = 4.0;

  print(number);

  number = 2.0;

  print(number);

  number = null;

  print(number);

  number ??= 3.0; // 변수의 값이 null일 경우에만 값을 저장. null이 아닐 경우에는 저장하지 않는다.

  print(number);
}