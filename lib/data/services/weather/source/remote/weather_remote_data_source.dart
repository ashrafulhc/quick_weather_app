import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:quick_weather_app/domain/entities/weather_entity.dart';
import 'package:quick_weather_app/injection/network_module.dart';
import 'package:retrofit/retrofit.dart';

part 'weather_remote_data_source.g.dart';

@RestApi()
@lazySingleton
abstract class WeatherRemoteDataSource {
  @factoryMethod
  factory WeatherRemoteDataSource(
    @Named(dioClient) Dio dio,
  ) = _WeatherRemoteDataSource;

  @GET('/weather')
  Future<WeatherEntity> getCurrentWeather(
    @Query('q') String cityName,
    @Query('appid') String apiKey,
    @Query('units') String units,
  );
}
