void main() {
  Map<String, int> studentMarks = {};
  studentMarks.putIfAbsent('Alice', () => 85);
  studentMarks.putIfAbsent('Bob', () => 90);
  studentMarks.putIfAbsent('Charlie', () => 78);
  print('Student Names and Marks:');
  studentMarks.forEach((name, mark) {
    print('$name: $mark');
  });
  String searchName = 'Alice';
  if (studentMarks.containsKey(searchName)) {
    print('$searchName\'s mark: ${studentMarks[searchName]}');
  } else {
    print('$searchName not found in the map.');
  }
}
