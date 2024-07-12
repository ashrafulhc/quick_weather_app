import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_entity.freezed.dart';
part 'weather_entity.g.dart';

@freezed
class WeatherEntity with _$WeatherEntity {
  const factory WeatherEntity({
    Coord? coord,
    List<Weather>? weather,
    String? base,
    Main? main,
    int? visibility,
    Wind? wind,
    Clouds? clouds,
    int? dt,
    Sys? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) = _WeatherEntity;

  factory WeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$WeatherEntityFromJson(json);
}

@freezed
class Clouds with _$Clouds {
  const factory Clouds({
    int? all,
  }) = _Clouds;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}

@freezed
class Coord with _$Coord {
  const factory Coord({
    double? lon,
    double? lat,
  }) = _Coord;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}

@freezed
class Main with _$Main {
  const factory Main({
    double? temp,
    double? feelsLike,
    double? tempMin,
    double? tempMax,
    int? pressure,
    int? humidity,
    int? seaLevel,
    int? grndLevel,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
class Sys with _$Sys {
  const factory Sys({
    int? type,
    int? id,
    String? country,
    int? sunrise,
    int? sunset,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}

@freezed
class Weather with _$Weather {
  const factory Weather({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
class Wind with _$Wind {
  const factory Wind({
    double? speed,
    int? deg,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
