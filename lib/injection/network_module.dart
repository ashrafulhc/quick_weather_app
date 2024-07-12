import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// For network call
const dioClient = 'DIOCLIENT';

Dio _createBaseDio() {
  final dio = Dio()
    ..httpClientAdapter = HttpClientAdapter()
    ..options.baseUrl = 'base url' // TODO(ashrafulhc): Update the base url
    ..options.contentType = 'application/json';

  return dio;
}

final logger = PrettyDioLogger(
  requestHeader: true,
  requestBody: true,
);

@module
abstract class NetworkModule {
  @singleton
  @Named(dioClient)
  Dio getForAuthenticationDio() {
    final dio = _createBaseDio()
      ..interceptors.addAll(
        [
          logger,
        ],
      );
    return dio;
  }
}
