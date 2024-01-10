import 'dart:convert';

import 'package:weather_app/data/model/weather_item.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';

import 'package:http/http.dart' as http;

class WeatherRepositoryImpl implements WeatherRepository {


  @override
  Future<WeatherItem> getWeatherItem(num latitude, num longitude) async {
    final response = await http.get(Uri.parse('https://api.open-meteo.com/v1/forecast?hourly=temperature_2m,weathercode,relativehumidity_2m,windspeed_10m,pressure_msl&latitude=$latitude&longitude=$longitude'));

    return WeatherItem.fromJson(jsonDecode(response.body));
  }
}