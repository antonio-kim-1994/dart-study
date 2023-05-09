void main() {
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redVelvet = GirlGroup('레드벨벳');

  bts.sayName();
  redVelvet.sayName();

  print(bts is IdolInterface); // true
  print(bts is BoyGroup); // true
  print(bts is GirlGroup); // false

  print(redVelvet is IdolInterface); // true
  print(redVelvet is BoyGroup); // false
  print(redVelvet is GirlGroup); // true
}

// interface : 특수한 구조를 강제하기 위해서 사용한다.
// interface로 instance를 선언하는 것을 방지하기 위해 'abstract'를 사용하고, method의 바디를 지울 수 있다.
abstract class IdolInterface {
  String name;

  IdolInterface(this.name);

  void sayName();
}

// implements : interface 상속 시 사용
class BoyGroup implements IdolInterface {
  String name;

  BoyGroup(this.name);

  void sayName(){
    print('제 이름은 $name입니다.');
  }
}

class GirlGroup implements IdolInterface {
  String name;

  GirlGroup(this.name);

  void sayName(){
    print('제 이름은 $name입니다.');
  }
}