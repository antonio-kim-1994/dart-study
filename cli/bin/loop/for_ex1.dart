void main(){
  // for loop
  int total = 0;

  List<int> numbers = [1, 2, 3, 4, 5, 6];

  for (int i = 0; i < numbers.length; i++){
    total += numbers[i];
  }

  print(total);

  // new method
  total = 0;

  for(int number in numbers){
    // print(number);
    total += number;
  }
  print(total);
}