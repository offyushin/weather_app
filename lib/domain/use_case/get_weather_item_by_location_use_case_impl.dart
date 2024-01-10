import 'package:weather_app/data/model/weather_item.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';
import 'package:weather_app/domain/use_case/get_weather_item_by_location_use_case.dart';

class GetWeatherItemByLocationUseCaseImpl
    implements GetWeatherItemByLocationUseCase {
  WeatherRepository repository;

  GetWeatherItemByLocationUseCaseImpl(this.repository);

  @override
  Future<WeatherItem> execute() async {
    final weatherItem = await repository.getWeatherItem(37.55, 127);

    return weatherItem;
  }
}
