void main() {
  // Set
  // List <-> Set : List는 중복값이 들어갈 수 있고, Set은 중복을 자동으로 처리한다.
  final Set<String> names = {
    'antonio',
    'kim',
    'antonio', // 중복값을 제외한다.
  };

  print(names);

  names.add('manki');

  print(names);

  names.remove('manki');

  print(names);

  print(names.contains('antonio'));
}