import 'package:weather_app/data/model/weather_item.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';

WeatherItem dummyItem = WeatherItem(
  latitude: 0.0,
  longitude: 0.0,
);

class WeatherRepositoryStub implements WeatherRepository {
  @override
  Future<WeatherItem> getWeatherItem(num latitude, num longitude) async {
    return dummyItem;
  }
}
