import 'package:flutter/material.dart';

class CurrentTempTextWidget extends StatelessWidget {
  const CurrentTempTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '현재 온도',
          style: TextStyle(
              color: Colors.black, fontSize: 35.0, fontWeight: FontWeight.w800),
        ),
        Text(
          '-2',
          style: TextStyle(
              color: Colors.black, fontSize: 40.0, fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}
