import 'dart:math';
void main() {
  List<int> randomNumbers = generateRandomNumbers(20);
  print('Generated random numbers: $randomNumbers');
  Set<int> uniqueNumbers = removeDuplicates(randomNumbers);
  print('Unique numbers: $uniqueNumbers');
}
List<int> generateRandomNumbers(int count) {
  Random random = Random();
  List<int> numbers = [];
  for (int i = 0; i < count; i++) {
    numbers.add(random.nextInt(100)); 
  }
  return numbers;
}
Set<int> removeDuplicates(List<int> numbers) {
  return numbers.toSet();
}
