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

    longitude = weatherItem.longitude ?? 0;
    latitude = weatherItem.latitude ?? 0;
    weatherCode = weatherItem.hourly?.weathercode![23] as int;
    temperature = weatherItem.hourly?.temperature2m![23] ?? 0;

    // final dateStr = DateFormat('yyyy-MM-ddTHH:00').format(DateTime.now());



    notifyListeners();

  }
}