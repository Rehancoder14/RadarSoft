// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:radarsoft/core/core/constants/api_constants.dart';

import '../../domain/interface/api_repository.dart';
import '../interceptors/network_interceptor.dart';
import '../interceptors/retry_interceptor.dart';

class ApiRepositoryImpl implements ApiRepository {
  Dio? dio;
  Connectivity? connectivity;

  ApiRepositoryImpl._() {
    dio = Dio();
    connectivity = Connectivity();
    dio?.interceptors.add(NetworkInterceptors(
      retryInterceptor: RetryInterceptor(dio: dio, connectivity: connectivity),
    ));
    if (kDebugMode) {
      dio?.interceptors.add(
          LogInterceptor(requestBody: true, responseBody: true, error: true));
    }
  }

  static final ApiRepositoryImpl apiService = ApiRepositoryImpl._();

  factory ApiRepositoryImpl() {
    return apiService;
  }

  @override
  Future post(String methodName, Map<String, dynamic> data) async {
    var response =
        await dio?.post(ApiConstants.baseUrl + methodName, data: data);
    return response;
  }

  @override
  Future get(String methodName, {Map<String, dynamic>? data}) async {
    var response;
    if (data != null) {
      response = await dio?.get(ApiConstants.baseUrl + methodName,
          queryParameters: data);
    } else {
      response = await dio?.get(
        ApiConstants.baseUrl + methodName,
      );
    }

    return response;
  }
}
