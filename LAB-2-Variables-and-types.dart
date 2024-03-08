import 'dart:io';
void main() {
  int speed = 299792458;
  print("Enter distancs: ");
  String userInput = stdin.readLineSync()!;
  double distance = double.parse(userInput);
  double time = distance / speed;
  print("Time taken for light to travel $distance meters is $time seconds");
}