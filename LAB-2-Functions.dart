void main() {
  int start = 1;
  int end = 2000;
  print("Prime numbers between $start and $end are: ");
  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      print(number);
    }
  }
}
bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}