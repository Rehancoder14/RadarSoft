// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:dio/dio.dart';

import 'retry_interceptor.dart';

class NetworkInterceptors extends Interceptor {
  final RetryInterceptor retryInterceptor;

  NetworkInterceptors({required this.retryInterceptor});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options = RequestOptions(
        path: options.path,
        headers: _headers(),
        method: options.method,
        data: options.data,
        receiveTimeout: const Duration(milliseconds: 15000));
    handler.next(options);
  }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.unknown /*other*/ &&
        err.error is SocketException;
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (_shouldRetry(err)) {
      handler.resolve(
          await retryInterceptor.scheduleRetryRequest(err.requestOptions));
    } else {
      if (err.response != null) {
        handler.resolve(err.response!);
      } else {
        handler.resolve(Response(
            requestOptions: err.requestOptions,
            statusCode: 500,
            statusMessage: err.message ?? ""));
      }
    }
  }

  Map<String, String> _headers() {
    return {
      'Content-type': 'application/json',
      /*'Accept': 'application/json',
      'X-localization': Platform.localeName.substring(0, 2),
      'Authorization': 'Bearer '*/
    };
  }
}
