void main() {
  print('---------- Parent Class ----------');
  Idol apink = Idol(name: '에이핑크', membersCount: 5);

  apink.sayName();
  apink.sayMembersCount();

  print('---------- Child Class ----------');
  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayName();
  bts.sayMembersCount();
  bts.sayMale();

  print('---------- Child Class ----------');
  GirlGroup redVelvet = GirlGroup('Red Velvet', 5);
  redVelvet.sayName();
  redVelvet.sayMembersCount();
  redVelvet.sayFemale();

  print('---------- Type Comparison1 - Parent Class ----------');
  print(apink is Idol);
  print(apink is BoyGroup);
  print(apink is GirlGroup);

  print('---------- Type Comparison2 - Child Class ----------');
  print(bts is Idol);
  print(bts is BoyGroup);
  print(bts is GirlGroup);

  print('---------- Type Comparison3 - Child Class ----------');
  print(redVelvet is Idol);
  print(redVelvet is BoyGroup);
  print(redVelvet is GirlGroup);
}

// inheritance
// 부모 클래스의 모든 속성을 자식 클래스가 부여받는다.
class Idol {
  // 이름
  String name;
  // 멤버 숫자
  int membersCount;

  // constructor (named parameter)
  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName(){
    print('저는 ${this.name}입니다.');
  }

  void sayMembersCount(){
    print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
  }
}

class BoyGroup extends Idol {
  BoyGroup(
    String name,
    int membersCount,
  ) : super (
      name: name,
      membersCount: membersCount,
    );
  
  // 자식 클래스의 함수는 부모 클래스에서 사용할 수 없다.
  void sayMale(){
    print('저는 남자 아이돌입니다.');
  }
}

// 자시 클래스 간 속성을 공유하지 않는다.
class GirlGroup extends Idol {
  GirlGroup(
    String name,
    int membersCount,
  ): super (
      name: name,
      membersCount: membersCount,
    );

  void sayFemale(){
    print('저는 여자 아이돌입니다.');
  }
}