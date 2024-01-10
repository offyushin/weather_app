import 'package:weather_app/data/model/weather_item.dart';

abstract interface class GetWeatherItemByLocationUseCase {
  Future<WeatherItem> execute();

}