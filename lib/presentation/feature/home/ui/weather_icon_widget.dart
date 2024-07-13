import 'package:flutter/material.dart';
import 'package:quick_weather_app/domain/entities/weather_entity.dart';

class WeatherIconWidget extends StatelessWidget {
  const WeatherIconWidget({
    required this.weatherEntity,
    super.key,
  });

  final WeatherEntity? weatherEntity;

  String _getAssetName(int weatherIdCode) {
    print(weatherIdCode);
    // the codes are collected from the following docs
    // https://openweathermap.org/weather-conditions

    switch (weatherIdCode) {
      case >= 200 && < 233:
        return 'assets/thunderstorm.png';
      case >= 300 && < 322:
        return 'assets/drizzle.png';
      case >= 500 && < 532:
        return 'assets/rain.png';
      case >= 600 && < 623:
        return 'assets/snow.png';
      case > 700 && < 782:
        return 'assets/haze.png';
      case 800:
        return 'assets/clear.png';
      case >= 800 && < 805:
        return 'assets/cloud.png';
      default:
        return 'assets/cloud.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (weatherEntity?.weather?.first.id == null) {
      return const SizedBox.shrink();
    }

    final assetName = _getAssetName(weatherEntity?.weather?.first.id ?? 0);

    return Image.asset(assetName);
  }
}
