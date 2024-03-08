import 'dart:async';
Future<List<String>> fetchDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2));
  List<String> data = ['Data 1', 'Data 2', 'Data 3'];
  return data;
}
void main() {
  print('Loading data from the database...'); 
  fetchDataFromDatabase().then((data) {
    print('Data loaded successfully:');
    print(data);
  }).catchError((error) {
    print('Error loading data: $error');
  });
}
