class Person {
  String name;
  int age;
  String address;
  Person(this.name, this.age, this.address);
  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }
}
class Student extends Person {
  int rollNumber;
  Map<String, double> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);
  double calculateTotalMarks() {
    double total = 0;
    marks.forEach((subject, mark) {
      total += mark;
    });
    return total;
  }
  double calculateAverageMarks() {
    double total = calculateTotalMarks();
    return total / marks.length;
  }
}
void main() {
  var student1 = Student("Gedion", 20, "Bethel", 2160, {
    "WEB DEVT" : 74,
    "COMP ARC" : 79,
    "SOFT ENG" : 69,
    "CIRCUITS" : 87,
    "HCI" : 83
  });
  student1.displayInfo();
  print('Roll Number: ${student1.rollNumber}');
  print('Marks: ${student1.marks}');
  print('Total Marks: ${student1.calculateTotalMarks()}');
  print('Average Marks: ${student1.calculateAverageMarks()}');
}
