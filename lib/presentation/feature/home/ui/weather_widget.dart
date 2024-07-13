import 'package:flutter/material.dart';
import 'package:quick_weather_app/domain/entities/weather_entity.dart';
import 'package:quick_weather_app/presentation/feature/home/ui/weather_icon_widget.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({
    required this.weatherEntity,
    required this.isLoading,
    super.key,
  });

  final WeatherEntity? weatherEntity;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Text('Loading...Please wait')
        : weatherEntity == null
            ? const Padding(
                padding: EdgeInsets.all(50),
                child: Text('Please Enter a valid city name'),
              )
            : Column(
                children: [
                  WeatherIconWidget(
                    weatherEntity: weatherEntity,
                  ),
                  Text(
                    '${weatherEntity?.name}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '${weatherEntity?.main?.temp}\u2103',
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${weatherEntity?.weather?.first.main}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              );
  }
}
