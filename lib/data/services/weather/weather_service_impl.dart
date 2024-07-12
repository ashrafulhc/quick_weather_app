import 'package:injectable/injectable.dart';
import 'package:quick_weather_app/data/services/weather/source/remote/weather_remote_data_source.dart';
import 'package:quick_weather_app/domain/entities/weather_entity.dart';
import 'package:quick_weather_app/domain/services/weather/weather_service.dart';

@Injectable(as: WeatherService)
final class WeatherServiceImpl implements WeatherService {
  WeatherServiceImpl(this._weatherRemoteDataSource);

  final WeatherRemoteDataSource _weatherRemoteDataSource;

  @override
  Future<WeatherEntity> getCurrentWeather({required String cityName}) async {
    final response = await _weatherRemoteDataSource.getCurrentWeather(
      cityName,
      'd719864e996c31de59da5d5bb5aad7ce',
      'metric',
    );

    return response;
  }
}
