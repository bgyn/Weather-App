import 'dart:convert';

import 'package:weather_app/confedential/apikey.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/current_weather_model.dart';

class WeatherService {
  final _apikey = ApiKey().apiKey;
  Future<CurrentWeatherModel> fetchCurrentWeather() async {
    final url =
        "https://api.openweathermap.org/data/2.5/weather?lat=27.70&lon=84.44&appid=$_apikey&units=metric";
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        return CurrentWeatherModel.fromJson(result);
      }
    } catch (e) {
      throw Exception('Error');
    }
    throw Exception('Error');
  }
}
