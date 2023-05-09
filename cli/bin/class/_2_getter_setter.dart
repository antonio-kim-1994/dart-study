void main(){
  // blackpink 인스턴스 생성
  Idol blackPink = Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제']
  );

  print(blackPink.firstMember);

  // bts 인스턴스 생성
  // private class 사용
  _Idol2 bts = _Idol2(
    'BTS',
    ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']
  );

  print(bts.firstMember);

  print('------------------');

  blackPink.firstMember = 'antonio';
  bts.firstMember = 'Iron man';

  print(blackPink.firstMember);
  print(bts.firstMember);
}

// getter / setter
// 데이터를 가져올 때 / 데이터를 설정할 때
class Idol {
  final String name;
  final List<String> members;

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

  // getter
  // return값의 타입을 getter 앞에 위치시킨다.
  // 함수와 기능상의 차이가 없음
  // getter의 경우 데이터 가공을 위해 조회하기 위해 사용
  // 함수는 로직처리를 위해 사용
  String get firstMember {
    return this.members[0];
  }

  // setter : 무조건 한 개의 파라미터가 들어간다. 2, 3개 불가.
  // 현대 프로그래밍에서는 거의 사용하지 않는다.
  set firstMember (String name) {
    this.members[0] = name;
  }
}

// Private class : private class는 class 앞에 '_' 를 붙여서 선언한다.
class _Idol2 {
  final String name;
  final List<String> members;

  // Basic Constructor
  _Idol2(this.name, this.members);

  // Named Constructor
  _Idol2.fromList(List values)
    : members = values[0],
      name = values[1];

  void sayHello(){
    print('안녕하세요 $name입니다.');
  }

  void introduce(){
    print('저희 멤버는 $members가 있습니다.');
  }

  String get firstMember {
    return this.members[0];
  }

  set firstMember (String name) {
    this.members[0] = name;
  }
}