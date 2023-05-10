void main() {
  List<String> blackPink = ['로제', '지수', '리사', '제니'];

  // Map 함수를 사용하면 새로운 리스트가 생성된다.
  final newBlackPink = blackPink.map((x) {
    return '블랙핑크 $x';
  },);

  print(blackPink);
  print(newBlackPink.toList());

  final newBlackPink2 = blackPink.map((e) => '블랙핑크 $e',);

  print(newBlackPink2);

  print(blackPink == blackPink); // true
  print(newBlackPink == blackPink); // true
  print(newBlackPink == newBlackPink2); // true

  // List Mapping
  // [1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg]
  String number = '13579';

  final parsed = number.split('').map((e) => '$e.jpg',).toList();

  print(parsed);
}