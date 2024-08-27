// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseStatus<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<void> error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<void> error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<void> error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStatusCopyWith<T, $Res> {
  factory $BaseStatusCopyWith(
          BaseStatus<T> value, $Res Function(BaseStatus<T>) then) =
      _$BaseStatusCopyWithImpl<T, $Res, BaseStatus<T>>;
}

/// @nodoc
class _$BaseStatusCopyWithImpl<T, $Res, $Val extends BaseStatus<T>>
    implements $BaseStatusCopyWith<T, $Res> {
  _$BaseStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> extends Initial<T> {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'BaseStatus<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<void> error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<void> error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<void> error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<T> extends BaseStatus<T> {
  const factory Initial() = _$InitialImpl<T>;
  const Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl<T> extends Loading<T> {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'BaseStatus<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<void> error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<void> error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<void> error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> extends BaseStatus<T> {
  const factory Loading() = _$LoadingImpl<T>;
  const Loading._() : super._();
}

/// @nodoc
abstract class _$$LazyLoadingImplCopyWith<T, $Res> {
  factory _$$LazyLoadingImplCopyWith(_$LazyLoadingImpl<T> value,
          $Res Function(_$LazyLoadingImpl<T>) then) =
      __$$LazyLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LazyLoadingImplCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$LazyLoadingImpl<T>>
    implements _$$LazyLoadingImplCopyWith<T, $Res> {
  __$$LazyLoadingImplCopyWithImpl(
      _$LazyLoadingImpl<T> _value, $Res Function(_$LazyLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LazyLoadingImpl<T> extends LazyLoading<T> {
  const _$LazyLoadingImpl() : super._();

  @override
  String toString() {
    return 'BaseStatus<$T>.lazyLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LazyLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<void> error) failure,
  }) {
    return lazyLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<void> error)? failure,
  }) {
    return lazyLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<void> error)? failure,
    required TResult orElse(),
  }) {
    if (lazyLoading != null) {
      return lazyLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return lazyLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return lazyLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (lazyLoading != null) {
      return lazyLoading(this);
    }
    return orElse();
  }
}

abstract class LazyLoading<T> extends BaseStatus<T> {
  const factory LazyLoading() = _$LazyLoadingImpl<T>;
  const LazyLoading._() : super._();
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl<T> extends Success<T> {
  const _$SuccessImpl() : super._();

  @override
  String toString() {
    return 'BaseStatus<$T>.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<void> error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<void> error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<void> error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> extends BaseStatus<T> {
  const factory Success() = _$SuccessImpl<T>;
  const Success._() : super._();
}

/// @nodoc
abstract class _$$ValidImplCopyWith<T, $Res> {
  factory _$$ValidImplCopyWith(
          _$ValidImpl<T> value, $Res Function(_$ValidImpl<T>) then) =
      __$$ValidImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ValidImplCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$ValidImpl<T>>
    implements _$$ValidImplCopyWith<T, $Res> {
  __$$ValidImplCopyWithImpl(
      _$ValidImpl<T> _value, $Res Function(_$ValidImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidImpl<T> extends Valid<T> {
  const _$ValidImpl() : super._();

  @override
  String toString() {
    return 'BaseStatus<$T>.valid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<void> error) failure,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<void> error)? failure,
  }) {
    return valid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<void> error)? failure,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class Valid<T> extends BaseStatus<T> {
  const factory Valid() = _$ValidImpl<T>;
  const Valid._() : super._();
}

/// @nodoc
abstract class _$$InvalidImplCopyWith<T, $Res> {
  factory _$$InvalidImplCopyWith(
          _$InvalidImpl<T> value, $Res Function(_$InvalidImpl<T>) then) =
      __$$InvalidImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InvalidImplCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$InvalidImpl<T>>
    implements _$$InvalidImplCopyWith<T, $Res> {
  __$$InvalidImplCopyWithImpl(
      _$InvalidImpl<T> _value, $Res Function(_$InvalidImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvalidImpl<T> extends Invalid<T> {
  const _$InvalidImpl() : super._();

  @override
  String toString() {
    return 'BaseStatus<$T>.invalid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<void> error) failure,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<void> error)? failure,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<void> error)? failure,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class Invalid<T> extends BaseStatus<T> {
  const factory Invalid() = _$InvalidImpl<T>;
  const Invalid._() : super._();
}

/// @nodoc
abstract class _$$FailureImplCopyWith<T, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<T> value, $Res Function(_$FailureImpl<T>) then) =
      __$$FailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ResponseError<void> error});

  $ResponseErrorCopyWith<void, $Res> get error;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<T, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$FailureImpl<T>>
    implements _$$FailureImplCopyWith<T, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<T> _value, $Res Function(_$FailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ResponseError<void>,
    ));
  }

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseErrorCopyWith<void, $Res> get error {
    return $ResponseErrorCopyWith<void, $Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$FailureImpl<T> extends Failure<T> {
  const _$FailureImpl(this.error) : super._();

  @override
  final ResponseError<void> error;

  @override
  String toString() {
    return 'BaseStatus<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      __$$FailureImplCopyWithImpl<T, _$FailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() lazyLoading,
    required TResult Function() success,
    required TResult Function() valid,
    required TResult Function() invalid,
    required TResult Function(ResponseError<void> error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? lazyLoading,
    TResult? Function()? success,
    TResult? Function()? valid,
    TResult? Function()? invalid,
    TResult? Function(ResponseError<void> error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? lazyLoading,
    TResult Function()? success,
    TResult Function()? valid,
    TResult Function()? invalid,
    TResult Function(ResponseError<void> error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T> extends BaseStatus<T> {
  const factory Failure(final ResponseError<void> error) = _$FailureImpl<T>;
  const Failure._() : super._();

  ResponseError<void> get error;

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
