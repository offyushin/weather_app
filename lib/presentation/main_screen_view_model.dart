import 'package:flutter/material.dart';
import 'package:weather_app/domain/use_case/get_weather_item_by_location_use_case.dart';

class MainScreenViewModel extends ChangeNotifier{
  GetWeatherItemByLocationUseCase getWeatherItemByLocationUseCase;

  num longitude = 0;
  num latitude = 0;
  int weatherCode = 0;
  num temperature = 0;

  MainScreenViewModel({
    required this.getWeatherItemByLocationUseCase,
  });

  Future<void> getWeatherInfo() async {
    final weatherItem = await getWeatherItemByLocationUseCase.execute();
    print(weatherItem.hourly?.weathercode![81]);
    longitude = weatherItem.longitude ?? 0;
    latitude = weatherItem.latitude ?? 0;
    weatherCode = weatherItem.hourly?.weathercode![81] as int;
    temperature = weatherItem.hourly?.temperature2m![81] ?? 0;

    // final dateStr = DateFormat('yyyy-MM-ddTHH:00').format(DateTime.now());
    notifyListeners();

  }
}




























String weatherIconUrlBy(num weathercode) {
  switch (weathercode) {
    case >= 0 && <= 3:
      return 'https://openweathermap.org/img/wn/01d@2x.png';

    case >= 4 && <= 12:
      return 'https://openweathermap.org/img/wn/03d@2x.png';

    case == 13:
      return 'https://openweathermap.org/img/wn/11d@2x.png';

    case >= 14 && <= 19:
      return 'https://openweathermap.org/img/wn/04d@2x.png';

    case (>= 20 && <= 29) || (>= 50 && <= 59):
      return 'https://openweathermap.org/img/wn/10d@2x.png';

    case >= 30 && <= 39:
      return 'https://openweathermap.org/img/wn/03d@2x.png';

    case >= 40 && <= 49:
      return 'https://openweathermap.org/img/wn/50d@2x.png';

    case >= 60 && <= 69:
      return 'https://openweathermap.org/img/wn/09d@2x.png';

    case >= 70 && <= 79:
      return 'https://openweathermap.org/img/wn/13d@2x.png';

    case >= 80 && <= 89:
      return 'https://openweathermap.org/img/wn/09d@2x.png';

    default:
      return 'https://openweathermap.org/img/wn/11d@2x.png';
  }
}
