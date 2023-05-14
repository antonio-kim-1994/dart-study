void main(){
  // Map의 자유도가 높다.
  final List<Map<String, String>> people = [
    {
      'name': '로제',
      'group': '블랙핑크',
    },
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': 'RM',
      'group': 'BTS',
    },
    {
      'name': '뷔',
      'group': 'BTS',
    }
  ];
  print(people);

  final parsedPeople = people.map(
    (x) => Person(
      name: x['name']!, // ! : 무조건 값이 있다는 것을 표시
      group: x['group']!,
    )
  ).toList();

  print(parsedPeople);

  for(Person person in parsedPeople){
    print(person.name);
    print(person.group);
  }

  final bts = parsedPeople.where(
    (x) => x.group == 'BTS',
  );
  print(bts);

  final result = people.map(
    (x) => Person(
      name: x['name']!,
      group: x['group']!,
    )
  ).where((x) => x.group == 'BTS');

  print(result);
}

class Person {
  final String name;
  final String group;

  // Constructor
  Person({
    required this.name,
    required this.group,
  });

  @override
  String toString(){
    return 'Person(name:$name, group:$group)';
  }
}