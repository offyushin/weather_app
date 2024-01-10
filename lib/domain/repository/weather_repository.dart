import 'package:weather_app/data/model/weather_item.dart';

abstract interface class WeatherRepository {
  Future<WeatherItem> getWeatherItem(num latitude, num longitude);
}