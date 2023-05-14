void main() {
  List<int> numbers = [1, 3, 5, 7, 9];

  // fold(initNum, (prev, next))
  // initNum : 처음 시작 할 값
  // fold의 장점 : 아무 타입이나 return 할 수 있다.
  final sum = numbers.fold<int>(0, (prev, next) {
    print('-------------');
    print('prev : $prev');
    print('next : $next');
    print('total : ${prev + next}');

    return prev + next;
  });

  print(sum);

  List<String> words = [
    '안녕하세요 ',
    '저는 ',
    '코드팩토리입니다.',
  ];

  final sentence = words.fold<String>('', (prev, next) => prev + next);
  print(sentence);

  // Reduce 함수와 달리 List member가 String이어도 int 타입 리턴이 가능하다.
  final count = words.fold<int>(0, (prev, next) => prev + next.length);
  print(count);
}