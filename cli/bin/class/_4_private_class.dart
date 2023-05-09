void main(){
  // blackpink 인스턴스 생성
  _Idol2 blackPink = _Idol2(
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