void main(){
    int number1 = 2;
    int number2 = 4;
    double number3 = 1.5;

    print(number1 + number2);
    print(number1 + number3);
    print(number1 - number2);
    print(number1 / number2);
    print(number1 * number2);

    bool isTrue = true;
    bool isFalse = false;

    print(isTrue);
    print(isFalse);

    String name = 'antonio';
    String name3 = 'kim';
    print(name);

    // var String
    var varName = 'antonio kim';
    print(varName.runtimeType); // 추론된 타입이다. ==> 직접 명시하기에 타입이 너무 긴 경우에 var 타입을 사용한다.

    print('$name $name3');
    print('$name - $name3');

    // var 타입을 사용하는 경우
    Map<String, Map<int, List<double>>> testType = {};
    print(testType.runtimeType);

    // dynamic
    dynamic dynamicName = 'coding basic';
    print(dynamicName);

    dynamic number = 1;
    print(number);

    var singer = '블랙핑크';

    print(singer);

    print(dynamicName.runtimeType);
    print(singer.runtimeType);

    dynamicName = 2; // dynamic 타입은 런타임 중간에 타입을 변경할 수 있다. <--> var 타입은 한 번 추론되어 타입이 정해지고 나면 변경할 수 없다.
}