double divideNumbers(double a, double b) {
  try {
    return a / b;
  } catch (e) {
    if (e is DivisionByZeroError) {
      print("Error: Division by zero is not allowed.");
    } else {
      print("Error: An unexpected error occurred.");
    }
    rethrow;
  }
}
void main() {
  double a = 10;
  double b = 0;
  try {
    double result = divideNumbers(a, b);
    print("Result: $result");
  } catch (e) {
    print("Error: $e");
  }
}