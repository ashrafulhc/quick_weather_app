// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/services/weather/source/remote/weather_remote_data_source.dart'
    as _i4;
import '../data/services/weather/weather_service_impl.dart' as _i6;
import '../domain/services/weather/weather_service.dart' as _i5;
import '../domain/use_cases/weather/get_current_weather_use_case.dart' as _i7;
import '../presentation/feature/home/cubit/home_cubit.dart' as _i8;
import 'network_module.dart' as _i9;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final networkModule = _$NetworkModule();
  gh.singleton<_i3.Dio>(
    () => networkModule.getForAuthenticationDio(),
    instanceName: 'DIOCLIENT',
  );
  gh.lazySingleton<_i4.WeatherRemoteDataSource>(() =>
      _i4.WeatherRemoteDataSource(gh<_i3.Dio>(instanceName: 'DIOCLIENT')));
  gh.factory<_i5.WeatherService>(
      () => _i6.WeatherServiceImpl(gh<_i4.WeatherRemoteDataSource>()));
  gh.factory<_i7.GetCurrentWeatherUseCase>(
      () => _i7.GetCurrentWeatherUseCase(gh<_i5.WeatherService>()));
  gh.factory<_i8.HomeCubit>(
      () => _i8.HomeCubit(gh<_i7.GetCurrentWeatherUseCase>()));
  return getIt;
}

class _$NetworkModule extends _i9.NetworkModule {}
