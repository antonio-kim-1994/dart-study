void main(){
  // Reduce
  List<int> numbers = [
    1,
    3,
    5,
    7,
    9,
  ];

  // prev : 처음 호출할 때만 리스트의 첫 번쨰 값을 호출하고, 이후에는 함수가 리턴한 값을 가져온다.
  final result = numbers.reduce((prev, next) => prev + next);
  // 위 함수와 동일
  // final result = numbers.reduce((prev, next){
  //   print('-----------------------');
  //   print('previous : $prev');
  //   print('next : $next');
  //   print('total : ${prev + next}');

  //   return prev + next;
  // });

  print(result);

  List<String> words = [
    '안녕하세요 ',
    '저는 ',
    '코드팩토리입니다.',
  ];

  final sentence = words.reduce((prev, next) => prev + next);
  print(sentence);

  // Reduce가 실행될 수 없는 경우의 수
  // List member와 return의 타입이 동일해야 한다.
  // words.reduce((prev, next) => prev.length + next.length); 실행 불가 / List member - String, Return - Int
}