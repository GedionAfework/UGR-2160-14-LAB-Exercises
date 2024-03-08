import 'dart:io';
void main() {
  readFile('example.txt');
}
void readFile(String filePath) {
  try {
    File file = File(filePath);
    String contents = file.readAsStringSync();
    print('File contents:\n$contents');
  } on FileSystemException catch (e) {
    print('Error reading file: $e');
  } on IOException catch (e) {
    print('IO error: $e');
  } catch (e) {
    print('Unexpected error: $e');
  }
}
