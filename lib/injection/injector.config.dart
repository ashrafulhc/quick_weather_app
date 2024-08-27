// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/services/weather/source/remote/weather_remote_data_source.dart'
    as _i194;
import '../data/services/weather/weather_service_impl.dart' as _i494;
import '../domain/services/weather/weather_service.dart' as _i818;
import '../domain/use_cases/weather/get_current_weather_use_case.dart' as _i88;
import '../presentation/feature/home/cubit/home_cubit.dart' as _i302;
import 'network_module.dart' as _i567;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final networkModule = _$NetworkModule();
  gh.singleton<_i361.Dio>(
    () => networkModule.getForAuthenticationDio(),
    instanceName: 'DIOCLIENT',
  );
  gh.lazySingleton<_i194.WeatherRemoteDataSource>(() =>
      _i194.WeatherRemoteDataSource(gh<_i361.Dio>(instanceName: 'DIOCLIENT')));
  gh.factory<_i818.WeatherService>(
      () => _i494.WeatherServiceImpl(gh<_i194.WeatherRemoteDataSource>()));
  gh.factory<_i88.GetCurrentWeatherUseCase>(
      () => _i88.GetCurrentWeatherUseCase(gh<_i818.WeatherService>()));
  gh.factory<_i302.HomeCubit>(
      () => _i302.HomeCubit(gh<_i88.GetCurrentWeatherUseCase>()));
  return getIt;
}

class _$NetworkModule extends _i567.NetworkModule {}
