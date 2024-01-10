import 'package:flutter/material.dart';

class LatLngTextWidget extends StatelessWidget {
  const LatLngTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '위도 : 36.5',
          style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.w800),
        ),
        Text('경도 : 127.5',
          style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}
