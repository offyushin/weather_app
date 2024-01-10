import 'package:flutter/material.dart';

class WeatherIconWidget extends StatelessWidget {
  const WeatherIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Image.network('https://openweathermap.org/img/wn/01d@2x.png')
    );
  }
}
