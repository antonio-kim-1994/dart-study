void main() {
  // cascading : 여러 개의 List를 하나로 합칠 때 많이 사용한다.
  List<int> even = [
    2, 4, 6, 8,
  ];

  List<int> odd = [
    1, 3, 5, 7
  ];

  //cascading operator : ...
  print([even, odd]); // [[2, 4, 6, 8], [1, 3, 5, 7]]

  // cascading operator를 사용하여 새로운 리스트를 생성한다.
  print([...even, ...odd]); // [2, 4, 6, 8, 1, 3, 5, 7]
  print(even == [...even]); // false
}