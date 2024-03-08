import 'dart:io';
void main() {
  print("Enter mark: ");
  double grade = double.parse(stdin.readLineSync()!);
  String letterGrade;
  switch (grade) {
    case 90.0:
    case 91.0:
    case 92.0:
    case 93.0:
    case 94.0:
    case 95.0:
    case 96.0:
    case 97.0:
    case 98.0:
    case 99.0:
    case 100.0:
      letterGrade = "A+";
      break;
    case 83.0:
    case 84.0:
    case 85.0:
    case 86.0:
    case 87.0:
    case 88.0:
    case 89.0:
      letterGrade = "A";  
      break;
    case 80.0:
    case 81.0:
    case 82.0:
      letterGrade = "A-";  
      break;  
    case 75.0:
    case 76.0:
    case 77.0:
    case 78.0:
    case 79.0:
      letterGrade = "B+";
      break;
    case 68.0:
    case 69.0:
    case 70.0:
    case 71.0:
    case 72.0:
    case 73.0:
    case 74.0:
      letterGrade = "B";
      break;
    case 65.0:
    case 66.0:
    case 67.0:
      letterGrade = "B-";
      break;
    case 60.0:
    case 61.0:
    case 62.0:
    case 63.0:
    case 64.0:
      letterGrade = "C+";
      break;  
    case 50.0:
    case 51.0:
    case 52.0:
    case 53.0:
    case 54.0:
    case 55.0:
    case 56.0:
    case 57.0:
    case 58.0:
    case 59.0:
      letterGrade = "C";
      break;  
    case 40.0:
    case 41.0:
    case 42.0:
    case 43.0:
    case 44.0:
    case 45.0:
    case 46.0:
    case 47.0:
    case 48.0:
    case 49.0:
      letterGrade = "C";
      break;    
    default:
      letterGrade = 'F';
      break;
  }

  print('Letter Grade: $letterGrade');
}