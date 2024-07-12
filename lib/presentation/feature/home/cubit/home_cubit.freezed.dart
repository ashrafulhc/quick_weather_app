// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  WeatherEntity? get weatherEntity => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  BaseStatus<dynamic> get initStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {WeatherEntity? weatherEntity,
      String cityName,
      BaseStatus<dynamic> initStatus});

  $WeatherEntityCopyWith<$Res>? get weatherEntity;
  $BaseStatusCopyWith<dynamic, $Res> get initStatus;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherEntity = freezed,
    Object? cityName = null,
    Object? initStatus = null,
  }) {
    return _then(_value.copyWith(
      weatherEntity: freezed == weatherEntity
          ? _value.weatherEntity
          : weatherEntity // ignore: cast_nullable_to_non_nullable
              as WeatherEntity?,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      initStatus: null == initStatus
          ? _value.initStatus
          : initStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherEntityCopyWith<$Res>? get weatherEntity {
    if (_value.weatherEntity == null) {
      return null;
    }

    return $WeatherEntityCopyWith<$Res>(_value.weatherEntity!, (value) {
      return _then(_value.copyWith(weatherEntity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get initStatus {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.initStatus, (value) {
      return _then(_value.copyWith(initStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeatherEntity? weatherEntity,
      String cityName,
      BaseStatus<dynamic> initStatus});

  @override
  $WeatherEntityCopyWith<$Res>? get weatherEntity;
  @override
  $BaseStatusCopyWith<dynamic, $Res> get initStatus;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherEntity = freezed,
    Object? cityName = null,
    Object? initStatus = null,
  }) {
    return _then(_$HomeStateImpl(
      weatherEntity: freezed == weatherEntity
          ? _value.weatherEntity
          : weatherEntity // ignore: cast_nullable_to_non_nullable
              as WeatherEntity?,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      initStatus: null == initStatus
          ? _value.initStatus
          : initStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.weatherEntity,
      this.cityName = '',
      this.initStatus = const BaseStatus.initial()});

  @override
  final WeatherEntity? weatherEntity;
  @override
  @JsonKey()
  final String cityName;
  @override
  @JsonKey()
  final BaseStatus<dynamic> initStatus;

  @override
  String toString() {
    return 'HomeState(weatherEntity: $weatherEntity, cityName: $cityName, initStatus: $initStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.weatherEntity, weatherEntity) ||
                other.weatherEntity == weatherEntity) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.initStatus, initStatus) ||
                other.initStatus == initStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, weatherEntity, cityName, initStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final WeatherEntity? weatherEntity,
      final String cityName,
      final BaseStatus<dynamic> initStatus}) = _$HomeStateImpl;

  @override
  WeatherEntity? get weatherEntity;
  @override
  String get cityName;
  @override
  BaseStatus<dynamic> get initStatus;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
