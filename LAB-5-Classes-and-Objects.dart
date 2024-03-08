import 'dart:math';
abstract class Shape {
  double calculateArea();
}
class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}
class Square extends Shape {
  double side;
  Square(this.side);
  @override
  double calculateArea() {
    return side * side;
  }
}
void main() {
  Shape circle = Circle(5);
  print("Area of Circle: ${circle.calculateArea()}");
  Shape square = Square(4);
  print("Area of Square: ${square.calculateArea()}");
}
