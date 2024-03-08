void main() {
  String input = "Gedion";
  String reversed = reverse(input);
  print('Original string: $input');
  print('Reversed string: $reversed');
}
String reverse(String input) {
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }
  return reversed;
}