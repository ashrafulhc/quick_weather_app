part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    WeatherEntity? weatherEntity,
    @Default([]) List<String> favCities,
    @Default('') String cityName,
    @Default(BaseStatus.initial()) BaseStatus initStatus,
  }) = _HomeState;
}
