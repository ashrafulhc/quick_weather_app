import 'package:quick_weather_app/domain/entities/weather_entity.dart';

abstract interface class WeatherService {
  Future<WeatherEntity> getCurrentWeather({required String cityName});
}
