void main() {
  Lecture<String> lecture1 = Lecture('123', 'lecture1');

  lecture1.printIdType();

  Lecture<int> lecture2 = Lecture(123, 'lecture2');

  lecture2.printIdType();
}

// generic : 타입을 외부에서 받을 때 사용
// <string> 을 통해서 외부에서 타입을 받아와서 사용할 수 있다.
// 주로 사용하지 않지만 반드시 사용해야 하는 경우가 생긴다.
// List<String>도 제네릭이다.
// 제네릭 타입에 대해 무한히 추가할 수 있다. ex) Lecture<T, X, Z> 등
class Lecture<T> {
  final T id;
  final String name;

  Lecture(this.id, this.name);

  void printIdType(){
    print(id.runtimeType);
  }
}