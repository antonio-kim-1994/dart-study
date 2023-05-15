import 'dart:async';

void main() {
  playAllStream().listen((event) {
    print(event);
  });
}

Stream<int> playAllStream() async* {
  yield* calculate(1);
  yield* calculate(1000);
}

Stream<int> calculate(int number) async* {
  for(int i = 0; i < 5; i++){
    yield i * number;

    await Future.delayed(Duration(seconds: 1)); // async* 이어도 async 함수처럼 사용할 수 있다.
  }
}