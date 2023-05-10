void main() {
  // Functional Programming 기본 : 형변환
  List<String> blackPink = ['로제', '지수', '리사', '제니'];

  print(blackPink);

  // List -> Map
  print(blackPink.asMap());

  // List -> Set
  print(blackPink.toSet());

  Map blackPinkMap = blackPink.asMap();

  print(blackPinkMap.keys);
  print(blackPinkMap.values);

  // Tuple -> List
  print(blackPinkMap.keys.toList());
  print(blackPinkMap.values.toList());

  Set blackPinkSet = Set.from(blackPink);
  // Set -> List
  print(blackPinkSet.toList());
}