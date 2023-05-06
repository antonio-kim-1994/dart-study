void main(){
  // blackpink 인스턴스 생성
  Idol blackPink = Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제']
  );

  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();

  // bts 인스턴스 생성
  Idol bts = Idol(
    'BTS',
    ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']
  );

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
  String name;
  List<String> members;

  // constructor
  // Idol(String name, List<String> members)
  //   : this.name = name,
  //     this.members = members;
  // Basic Constructor
  Idol(this.name, this.members);

  // Named Constructor
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