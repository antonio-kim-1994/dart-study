void main(){
  // nullable - null이 될 수 있다.
  // non-nullable - null이 될 수 없다.
  // null - 아무런 값도 있지 않다.
  String? name1 = 'antonio'; // 어떤 타입이든 끝에 '?' 를 붙이면 null까지 들어갈 수 있는 타입이다.
  name1 = null;
  print(name1);

  
  print(name1!); // 변수 호출 시 끝에 '!' 를 붙이면 null 이 아님을 나타낸다.
}