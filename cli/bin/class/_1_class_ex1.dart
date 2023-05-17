void main(){
  // blackpink 인스턴스 생성
  Idol blackPink = Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제']
  );
  
  print('--------------------------');
  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();

  // bts 인스턴스 생성
  Idol bts = Idol(
    'BTS',
    ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']
  );

  print('--------------------------');
  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();

  // Named Constructor test
  Idol test = Idol.fromList(
    [
      ['kim', 'park', 'choi'],
      'test',
    ]
  );
  
  print('--------------------------');
  print(test.name);
  print(test.members);
  test.sayHello();
  test.introduce();
}

// Idol class
/// name (이름) - 변수
/// members (멤버) - 변수
/// sayHello (인사) - 함수
/// introduce (멤버) - 함수
class Idol {
  // Class에서 선언하는 변수들은 가급적 final로 선언하여 인스턴스의 값이 선언 후 변경되지 않게 하는 것을 권장
  final String name;
  final List<String> members;

  // constructor
  // Idol(String name, List<String> members)
  //   : this.name = name,
  //     this.members = members;
  // Basic Constructor
  // const Constructor로도 선언 가능하다 : const Idol(this.name, this.members);
  Idol(this.name, this.members);

  // Named Constructor
  // constructor.<String>(List values)
  Idol.fromList(List values)
    : members = values[0],
      name = values[1];

  void sayHello(){
    print('안녕하세요 $name입니다.');
  }

  void introduce(){
    print('저희 멤버는 $members가 있습니다.');
  }
}