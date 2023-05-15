import 'dart:async';

void main(){
  // stream
  final controller = StreamController();
  final stream = controller.stream.asBroadcastStream(); // 여러번 스트림 리스닝을 위해서 .asBroadcastStream() 이 필요하다.

  final streamListener1 = stream.where((x) => x % 2 == 0).listen((event){
    print('Listener 1 : $event');
  });

  final streamListener2 = stream.where((x) => x % 2 == 1).listen((event) {
    print('Listener 2 : $event');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.add(6);
}