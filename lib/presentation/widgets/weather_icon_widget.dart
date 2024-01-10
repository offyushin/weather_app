import 'package:flutter/material.dart';

class WeatherIconWidget extends StatelessWidget {
  const WeatherIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffAEE1E1),
        borderRadius: BorderRadius.circular(30)
      ),
        child: Image.network(
      'https://openweathermap.org/img/wn/02d@2x.png',
          width: 200,
          height: 200,
          fit: BoxFit.cover,
      )
    );
  }
}
