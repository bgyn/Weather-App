import 'dart:convert';

import 'package:weather_app/confedential/apikey.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';

class WeatherService {
  String apiKey = Key().apiKey;

  Future<WeatherModel> fetchWeatherDetail(String location) async {
    final url =
        "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/$location?unitGroup=metric&key=$apiKey&contentType=json";
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        return weatherModelFromJson(result);
      }
    } catch (e) {
      throw Exception('Error');
    }
    throw Exception('Error');
  }
}
