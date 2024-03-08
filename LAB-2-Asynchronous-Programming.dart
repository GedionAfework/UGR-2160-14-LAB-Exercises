import 'dart:io';
import 'package:http/http.dart' as http;
Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    File file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
    print('File downloaded successfully!');
  } else {
    print('Failed to download file. Error code: ${response.statusCode}');
  }
}
void main() async {
  String url = "https://www.youtube.com/watch?v=RQ2Zl0af8a4";
  String savePath = 'path/to/save/file.txt';
  await downloadFile(url, savePath);
}