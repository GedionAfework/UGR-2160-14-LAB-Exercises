import 'dart:io';
void main() {
  try {
    print('Enter a number: ');
    String userInput = stdin.readLineSync()!;
    int number = int.parse(userInput);
    print('The number entered is: $number');
  } catch (e) {
    print('Invalid input. Please enter a valid number.');
  }
}
