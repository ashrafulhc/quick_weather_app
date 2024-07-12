import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('City Name: Dhaka'),
        Text('Temperature: 36'),
        Icon(Icons.sunny),
      ],
    );
  }
}
