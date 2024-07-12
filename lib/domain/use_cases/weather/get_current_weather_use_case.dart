import 'package:injectable/injectable.dart';
import 'package:quick_weather_app/domain/entities/weather_entity.dart';
import 'package:quick_weather_app/domain/services/weather/weather_service.dart';

@injectable
final class GetCurrentWeatherUseCase {
  GetCurrentWeatherUseCase(this._weatherService);

  final WeatherService _weatherService;

  Future<WeatherEntity> run({required String cityName}) async {
    return _weatherService.getCurrentWeather(cityName: cityName);
  }
}
