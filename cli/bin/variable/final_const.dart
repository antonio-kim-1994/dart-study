void main(){
  // final은 컴파일 시 값을 가지고 있지 않아도 된다.
  final String name1 = 'antonio'; // final로 선언 시 값을 변경할 수 없다.
  print(name1);

  // const는 컴파일 시 값을 가지고 있어야 한다.
  const String name2 = 'kim'; // const로 선언 시 값을 변경할 수 없다.
  print(name2);

  final DateTime now = DateTime.now(); // now의 값이 DateTime.now()가 실행될 때 결정된다.
  // const DateTime now = DateTime.now();는 컴파일 시 값이 정해지지 않아 사용할 수 없다.
  print(now);
}