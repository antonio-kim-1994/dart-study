void main(){
  TimesTwo tt = TimesTwo(2);
  TimesFour tf = TimesFour(2);

  print('---------------- Parent Class ----------------');
  print(tt.calculate());

  print('---------------- Child Class ----------------');
  print(tf.calculate());

}

// method - 클래스 내부 함수
// override - 덮어쓰다 (우선시하다)
class TimesTwo {
  final int number;

  TimesTwo(
    this.number,
  );

  // method
  int calculate(){
    return number * 2;
    // return this.number * 2; 도 무방
  }
}

// override는 상속한 경우에만 가능
class TimesFour extends TimesTwo {
  TimesFour(
    int number,
  ): super(number);

  @override
  int calculate(){
    return super.number * 4;
    // return number * 4; 도 무방
    // return super.calculate() * 2; 로도 사용 할 수 있다.
    // return this.calculate()로 실행할 경우 자식 클래스의 calculate()를 무한히 호출해서 프로그램을 끝낼 수 없게 된다.
  }
}