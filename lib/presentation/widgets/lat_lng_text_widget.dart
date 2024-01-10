import 'package:flutter/material.dart';

class LatLngTextWidget extends StatelessWidget {
  final num latitude;
  final num longitude;
  const LatLngTextWidget({super.key, required this.latitude, required this.longitude});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(
          '위도 : $latitude',
          style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.w800),
        ),
        Text('경도 : $longitude',
          style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}
