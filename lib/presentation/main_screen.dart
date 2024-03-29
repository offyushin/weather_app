
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/presentation/main_screen_view_model.dart';
import 'package:weather_app/presentation/widgets/current_temp_text_widget.dart';
import 'package:weather_app/presentation/widgets/lat_lng_text_widget.dart';

import 'widgets/weather_icon_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE3FDFD),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Consumer<MainScreenViewModel>(
            builder: (context, viewmodel, child) {
              viewmodel.getWeatherInfo();
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LatLngTextWidget(longitude: viewmodel.longitude, latitude: viewmodel.latitude),
                  WeatherIconWidget(weatherCode: viewmodel.weatherCode),
                  CurrentTempTextWidget(temperature: viewmodel.temperature),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
