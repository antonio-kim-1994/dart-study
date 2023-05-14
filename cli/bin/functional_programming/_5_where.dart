void main(){
  List<Map<String, String>> people = [
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

  // where : Filtering에서 사용한다.
  // 많이 사용하는 기능
  final blackPink = people.where((e) => e['group'] == '블랙핑크');
  print(blackPink);

  final bts = people.where((e) => e['group'] == 'BTS').toList();
  print(bts);
}