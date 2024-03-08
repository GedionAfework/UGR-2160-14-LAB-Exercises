class Rectangle {
  int width;
  int height;
  Rectangle(this.width, this.height);
  int Area() {
    return width * height;
  }
  int Perimeter() {
    return 2 * (width + height);
  }
}
void main() {
  Rectangle rectangle = Rectangle(5, 3);
  print("Width: ${rectangle.width}");
  print("Height: ${rectangle.height}");
  int area = rectangle.Area();
  int perimeter = rectangle.Perimeter();
  print("The area of the rectangle is $area");
  print("The perimeter of the rectangle is $perimeter");
}