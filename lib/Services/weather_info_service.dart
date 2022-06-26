import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/Model/weather_info.dart';

class WeatherInfoService {
  static var client = http.Client();
  static Future<WeatherInfo?> fetchWeatherInfoService(cityName) async {
    var url = "http://api.weatherapi.com/v1/forecast.json?q=$cityName";
    final response = await client.get(Uri.parse(url), headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Key': 'c0dbb6f1794640eeabf103014222805'
    });
    if (response.statusCode == 200) {
      return weatherInfoFromJson(response.body);
      // JsonDecoder decoder = const JsonDecoder();

      // return decoder.convert(response.body);
    } else {
      print('no response');
      return null;
    }
  }
}
