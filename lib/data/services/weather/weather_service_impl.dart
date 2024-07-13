import 'package:injectable/injectable.dart';
import 'package:quick_weather_app/data/response_error/response_error.dart';
import 'package:quick_weather_app/data/services/weather/source/remote/weather_remote_data_source.dart';
import 'package:quick_weather_app/domain/entities/weather_entity.dart';
import 'package:quick_weather_app/domain/services/weather/weather_service.dart';

@Injectable(as: WeatherService)
final class WeatherServiceImpl implements WeatherService {
  WeatherServiceImpl(this._weatherRemoteDataSource);

  final WeatherRemoteDataSource _weatherRemoteDataSource;

  @override
  Future<WeatherEntity> getCurrentWeather({required String cityName}) async {
    const apiKey = String.fromEnvironment('API_KEY');

    if (apiKey.isEmpty) {
      // throw error('API_KEY is not set');
      throw const ResponseError.apiKeyNotFound();
    }

    final response = await _weatherRemoteDataSource.getCurrentWeather(
      cityName,
      apiKey,
      'metric',
    );

    return response;
  }
}
