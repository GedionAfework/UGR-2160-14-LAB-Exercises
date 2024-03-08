import 'dart:io';
void main() {
  print("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);
  print('Enter the operation (+, -, *, /):');
  String operation = stdin.readLineSync()!;
  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);
  double result;
  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      result = num1 / num2;
      break;
    default:
      print("Invalid operation");
      return;
  }
  print("$num1 $operation $num2 = $result");
}