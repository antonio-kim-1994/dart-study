void main() {
  // List
  List<String> member = ['antonio', 'kim'];
  List<int> numbers = [1, 2, 3];

  print('$member $numbers');
  
  // indexing
  print(member[0]);

  print(member.length);
  
  member.add('manki');
  print(member);

  member.remove('manki');
  print(member);

  print(member.indexOf('antonio'));
}