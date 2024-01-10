import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/model/weather_item.dart';
import 'package:weather_app/data/repository/weather_repository_impl.dart';

void main() {
  test('통신 되냐?', () async {
    final repo = WeatherRepositoryImpl();
    final weatherItem = await repo.getWeatherItem(37.565638640481254, 26.97483247607147);
    // weatherItem.longitude == 26.97483247607147;
    // print(weatherItem);
    expect(weatherItem is WeatherItem, true);
  });
}