import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_error.freezed.dart';

/// A representation of all possible errors while connecting with the
/// backend.
///
/// We return those errors to get localized messages to display to the user.
@freezed
class ResponseError<T> with _$ResponseError<T> implements Exception {
  const ResponseError._();

  const factory ResponseError.noInternetConnection() = _NoInternetConnection;
  const factory ResponseError.apiKeyNotFound() = _ApiKeyNotFound;
  const factory ResponseError.sendTimeout() = _SendTimeout;
  const factory ResponseError.connectTimeout() = _ConnectTimeout;
  const factory ResponseError.receiveTimeout() = _ReceiveTimeout;
  const factory ResponseError.badRequest() = _BadRequest;
  const factory ResponseError.notFound() = _NotFound;
  const factory ResponseError.tooManyRequests() = _TooManyRequests;
  const factory ResponseError.unprocessableEntity() = _UnprocessableEntity;
  const factory ResponseError.internalServerError() = _InternalServerError;
  const factory ResponseError.unexpectedError() = _UnexpectedError;
  const factory ResponseError.requestCancelled() = _RequestCancelled;
  const factory ResponseError.badCertificate() = _BedCertificate;
  const factory ResponseError.connectionError() = _ConnectionError;
  const factory ResponseError.conflict() = _Conflict;
  const factory ResponseError.unauthorized() = _Unauthorized;
  const factory ResponseError.invalidPassword() = _InvalidPasswordError;
  const factory ResponseError.invalidConfirmPassword() =
      _InvalidConfirmPasswordError;
  const factory ResponseError.invalidCityName() = _InvalidCityNameError;
  const factory ResponseError.invalidLoginCredentials() =
      _InvalidLoginCredentials;
  const factory ResponseError.invalidSearhTerm() = _InvalidSearchTermError;

  static ResponseError<void> from(Object error) {
    if (error is ResponseError) {
      return error;
    } else if (error is SocketException) {
      return const ResponseError.noInternetConnection();
    } else if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.sendTimeout:
          return const ResponseError.sendTimeout();
        case DioExceptionType.connectionTimeout:
          return const ResponseError.connectTimeout();
        case DioExceptionType.receiveTimeout:
          return const ResponseError.receiveTimeout();
        case DioExceptionType.unknown:
          return const ResponseError.unexpectedError();
        case DioExceptionType.cancel:
          return const ResponseError.requestCancelled();
        case DioExceptionType.badCertificate:
          return const ResponseError.badCertificate();
        case DioExceptionType.connectionError:
          return const ResponseError.connectionError();
        case DioExceptionType.badResponse:
          switch (error.response!.statusCode) {
            case 400:
              return const ResponseError.badRequest();
            // Returned when login credentials are invalid.
            case 401:
              return const ResponseError.unauthorized();
            case 404:
              return const ResponseError.notFound();
            case 409:
              return const ResponseError.conflict();
            case 422:
              return const ResponseError.unprocessableEntity();
            case 429:
              return const ResponseError.tooManyRequests();
            case 500:
            case 502:
              return const ResponseError.internalServerError();
            default:
              // If we receive a unexpected status code, we throw an exception.
              final statusCode = error.response!.statusCode;
              throw Exception('Received invalid status code: $statusCode');
          }
      }
    } else if (error is TypeError) {
      // TODO: Log it
    }
    return const ResponseError.unexpectedError();
  }
}

extension ResponseErrorExtensions on ResponseError<void> {
  String getErrorMessage() {
    return when<String>(
      noInternetConnection: () =>
          'No internet connection. Please check your connection and try again.',
      apiKeyNotFound: () => 'Api key is not set',
      sendTimeout: () => 'Request timed out. Please try again later.',
      connectTimeout: () =>
          'Connection timed out. Please check your connection and try again.',
      receiveTimeout: () =>
          'Failed to receive response from server. Please try again later.',
      badRequest: () =>
          'Invalid request. Please check your input and try again.',
      notFound: () =>
          'Resource not found. Please try again with a valid city name.',
      tooManyRequests: () =>
          "You've made too many requests in a short period. Please try again later.",
      unprocessableEntity: () =>
          'Server encountered an error while processing your request. Please try again later.',
      internalServerError: () =>
          'Internal server error occurred. Please try again later.',
      unexpectedError: () =>
          'An unexpected error occurred. Please try again later or contact support.',
      requestCancelled: () => 'You cancelled the request.',
      conflict: () =>
          'There was a conflict with your request. Please check your input and try again.',
      unauthorized: () =>
          'You are not authorized to perform this action. Please login or contact support.',
      invalidPassword: () =>
          'The password you entered is invalid. Please check your password and try again.',
      invalidConfirmPassword: () =>
          'Password confirmation is invalid. Please check your confirmation password and try again.',
      invalidCityName: () => 'Please enter a valid City Name.',
      invalidSearhTerm: () =>
          'The search term you entered is invalid. Please try a different search term.',
      invalidLoginCredentials: () =>
          'The login credentials you entered are invalid. Please check your username and password and try again.',
      badCertificate: () =>
          'There is a security issue with the website\'s certificate. Please contact support.',
      connectionError: () =>
          'There was a network connection error. Please check your internet connection and try again.',
    );
  }
}
