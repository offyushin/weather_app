import 'package:weather_app/data/model/weather_item.dart';
import 'package:weather_app/data/repository/weather_repository_impl.dart';
import 'package:weather_app/domain/use_case/get_weather_item_by_location_use_case.dart';

class GetWeatherItemByLocationUseCaseImpl implements GetWeatherItemByLocationUseCase {
  @override
   Future<WeatherItem> execute(num latitude, num longitude) async {
    final repository = WeatherRepositoryImpl();
    final weatherItem = await repository.getWeatherItem(37.55, 127);

    return weatherItem;
  }
}