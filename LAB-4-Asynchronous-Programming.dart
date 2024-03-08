import 'dart:convert';
import 'package:http/http.dart' as http;
Future<void> fetchWeatherData(String city) async {
  String apiKey = 'YOUR_API_KEY';
  String apiUrl = 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';
  try {
    var response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      double temperature = data['main']['temp'];
      String weatherCondition = data['weather'][0]['main'];
      print('Temperature: $temperature');
      print('Weather Condition: $weatherCondition');
    } else {
      print('Failed to fetch weather data. Error code: ${response.statusCode}');
    }
  } catch (e) {
    print('Failed to fetch weather data: $e');
  }
}
void main() async {
  String city = 'London'; 
  await fetchWeatherData(city);
}