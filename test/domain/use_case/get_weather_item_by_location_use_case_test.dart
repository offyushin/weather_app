import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/domain/use_case/get_weather_item_by_location_use_case_impl.dart';

import 'weather_repository_stub.dart';

void main() {
  test('위치 정보 맞냐??', () async {
    final repo = WeatherRepositoryStub();
    final sut = GetWeatherItemByLocationUseCaseImpl(repo);
    final weatherItem = await sut.execute();

    expect(weatherItem.longitude, 0.0);
    expect(weatherItem.latitude, 0.0);
  });
}