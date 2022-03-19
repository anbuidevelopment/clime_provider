import 'dart:convert';

import 'package:clime_provider/entity/weather_response.dart';
import 'package:clime_provider/utilities/constants.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final String _apiKey = 'bb2ae77060a4492ec10a026def1fb513';

  Future getWeatherByCity(String city) async {
    http.Response response = await http
        .get(Uri.parse('$baseUrlWeather/weather?q=$city&appid=$_apiKey&units=metric'));
    if (response.statusCode == 200) {
      print(response.body);
      return WeatherResponse.fromJson(jsonDecode(response.body));
    }
  }

  Future getWeather({lat, lng}) async {
    http.Response response = await http.get(Uri.parse(
        '$baseUrlWeather/weather?lat=$lat&lon=$lng&appid=$_apiKey&units=metric'));
    if (response.statusCode == 200) {
      return WeatherResponse.fromJson(jsonDecode(response.body));
    }
  }
}
