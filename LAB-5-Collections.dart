class Student {
  String name;
  List<double> marks;
  Student(this.name, this.marks);
  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }
    double total = marks.reduce((value, element) => value + element);
    return total / marks.length;
  }
}
void main() {
  Student student = Student("Gedion Mekbeb", [85.0, 90.5, 92.0, 88.5, 91.0]);
  double averageMark = student.calculateAverageMark();
  print('Average Mark: ${averageMark.toStringAsFixed(2)}');
}