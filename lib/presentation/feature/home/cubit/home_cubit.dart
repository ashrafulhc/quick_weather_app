import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quick_weather_app/data/response_error/response_error.dart';
import 'package:quick_weather_app/domain/entities/weather_entity.dart';
import 'package:quick_weather_app/domain/use_cases/weather/get_current_weather_use_case.dart';
import 'package:quick_weather_app/presentation/common/base_status/base_status.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._getCurrentWeatherUseCase,
  ) : super(const HomeState());

  final GetCurrentWeatherUseCase _getCurrentWeatherUseCase;

  Future<void> setCityName(String cityName) async {
    emit(state.copyWith(cityName: cityName));
  }

  Future<void> getCurrentWeather() async {
    if (state.initStatus.isLoading) {
      return;
    }

    try {
      emit(state.copyWith(initStatus: const BaseStatus.loading()));

      // if (state.passwordValidationErrors.isNotEmpty || newPassword.isEmpty) {
      //   emit(
      //     state.copyWith(
      //       initStatus: const BaseStatus.failure(
      //         ResponseError.invalidPassword(),
      //       ),
      //     ),
      //   );
      //   return;
      // }

      // if (!state.confirmPasswordStatus.isValid || confirmNewPassword.isEmpty) {
      //   emit(
      //     state.copyWith(
      //       initStatus: const BaseStatus.failure(
      //         ResponseError.invalidConfirmPassword(),
      //       ),
      //     ),
      //   );
      //   return;
      // }

      log('fetching weather ...');

      final cityName = 'Los Angeles';

      final response = await _getCurrentWeatherUseCase.run(cityName: cityName);

      if (isClosed) {
        return;
      }

      emit(
        state.copyWith(
          weatherEntity: response,
          initStatus: const BaseStatus.success(),
        ),
      );

      log('Weather fetched successfully!');
    } catch (e) {
      if (isClosed) {
        return;
      }

      debugPrint('Unable fetch weather $e');
      final error = ResponseError.from(e);
      emit(state.copyWith(initStatus: BaseStatus.failure(error)));
    }
  }
}
