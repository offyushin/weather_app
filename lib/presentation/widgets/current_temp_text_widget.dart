import 'package:flutter/material.dart';

class CurrentTempTextWidget extends StatelessWidget {
  final num temperature;

  const CurrentTempTextWidget({super.key, required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '현재 온도',
          style: TextStyle(
              color: Colors.black, fontSize: 35.0, fontWeight: FontWeight.w500),
        ),
        Text(
          '$temperature',
          style: TextStyle(
              color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}
