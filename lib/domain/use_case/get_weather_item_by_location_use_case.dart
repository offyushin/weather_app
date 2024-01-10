import 'package:weather_app/data/model/weather_item.dart';

abstract interface class GetWeatherItemByLocationUseCase {
  WeatherItem execute(num latitude, num longitude);
}