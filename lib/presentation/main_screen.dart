import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_app/presentation/widgets/current_temp_text_widget.dart';
import 'package:weather_app/presentation/widgets/lat_lng_text_widget.dart';

import 'widgets/weather_icon_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LatLngTextWidget(),
              WeatherIconWidget(),
              CurrentTempTextWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
